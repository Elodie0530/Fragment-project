import { useEffect, useRef, useState } from "react";

function TreeProgressChapters({
  chapters = [],
  visitLog = [],
  mapPassageLog = [],
}) {
  const [selectedPassage, setSelectedPassage] = useState(null);

  const endGamePathPlayedRef = useRef(null);

  useEffect(() => {
    if (selectedPassage === null) return;

    const handleClickOutside = (event) => {
      if (!endGamePathPlayedRef.current?.contains(event.target)) {
        setSelectedPassage(null);
      }
    };

    document.addEventListener("pointerdown", handleClickOutside);

    return () => {
      document.removeEventListener("pointerdown", handleClickOutside);
    };
  }, [selectedPassage]);

  if (chapters.length === 0) {
    return <p>Aucun chapitre à afficher.</p>;
  }

  // références des chapitres par identifiant technique et numéro visible
  const chaptersById = new Map(
    chapters.map((chapter) => [chapter.id, chapter]),
  );

  const chaptersByNumber = new Map(
    chapters.map((chapter) => [chapter.number, chapter]),
  );

  // construction textuel des passages, titres et versions y attenantes
  let haveFragment = false;

  const passages = mapPassageLog.map((chapterNumber) => {
    const chapter = chaptersByNumber.get(chapterNumber);

    if (chapter.is_first) haveFragment = false;
    else if (chapter.gives_fragment) haveFragment = true;

    return {
      title: chapter.title,
      state: haveFragment ? "insane" : "normal",
      version: haveFragment && chapter.text_insane ? "insane" : "normal",
      gives_fragment: chapter.gives_fragment,
    };
  });

  // versions déjà lues par le joueur
  const readVersionsByChapter = new Map();

  visitLog.forEach(({ chapterId: chapterNumber, version }) => {
    if (!readVersionsByChapter.has(chapterNumber)) {
      readVersionsByChapter.set(chapterNumber, new Set());
    }

    readVersionsByChapter.get(chapterNumber).add(version);
  });

  // construction des passages possibles entre les chapitres sur la carte
  const chapterConnections = [];
  const chapterConnectionIds = new Set();
  const nextChapterIdsByChapter = new Map();
  const previousChapterIdsByChapter = new Map();

  chapters.forEach((chapter) => {
    const next = [];

    (chapter.actions ?? []).forEach(({ end_id }) => {
      const target = chaptersById.get(end_id);

      // l'identifiant 1 signale la fin de partie
      if (!target || end_id === 1) return;

      const edgeId = `${chapter.id}-${target.id}`;

      if (!chapterConnectionIds.has(edgeId)) {
        chapterConnections.push({
          id: edgeId,
          from: chapter.id,
          to: target.id,
        });

        chapterConnectionIds.add(edgeId);
      }

      next.push(target.id);

      if (!previousChapterIdsByChapter.has(target.id)) {
        previousChapterIdsByChapter.set(target.id, []);
      }

      previousChapterIdsByChapter.get(target.id).push(chapter.id);
    });

    nextChapterIdsByChapter.set(chapter.id, next);
  });

  // calcul des niveaux à partir du chapitre de départ
  const start = chapters.find((chapter) => chapter.is_first);
  const chapterLevels = new Map();
  const queue = [];

  if (start) {
    chapterLevels.set(start.id, 0);
    queue.push(start.id);
  }

  let queueIndex = 0;

  while (queueIndex < queue.length) {
    const chapterId = queue[queueIndex];
    queueIndex += 1;

    const level = chapterLevels.get(chapterId);

    (nextChapterIdsByChapter.get(chapterId) ?? []).forEach((nextId) => {
      if (chapterLevels.has(nextId)) return;

      chapterLevels.set(nextId, level + 1);
      queue.push(nextId);
    });
  }

  const maxLevel = Math.max(0, ...chapterLevels.values());

  // les chapitres non accessibles depuis le départ sont placés à la fin
  chapters.forEach((chapter) => {
    if (!chapterLevels.has(chapter.id)) {
      chapterLevels.set(chapter.id, maxLevel + 1);
    }
  });

  // regroupement des chapitres par niveau
  const chapterLayers = new Map();

  chapters.forEach((chapter) => {
    const level = chapterLevels.get(chapter.id);

    if (!chapterLayers.has(level)) {
      chapterLayers.set(level, []);
    }

    chapterLayers.get(level).push(chapter);
  });

  // rapprochement des chapitres liés pour limiter les croisements
  for (let level = 1; level <= maxLevel + 1; level += 1) {
    const previous = chapterLayers.get(level - 1) ?? [];
    const current = chapterLayers.get(level) ?? [];

    const previousOrder = new Map(
      previous.map((chapter, index) => [chapter.id, index]),
    );

    const averageParentPosition = (chapter) => {
      const parentPositions = (
        previousChapterIdsByChapter.get(chapter.id) ?? []
      )
        .map((parentId) => previousOrder.get(parentId))
        .filter((index) => index !== undefined);

      if (parentPositions.length === 0) return Infinity;

      const total = parentPositions.reduce((sum, index) => sum + index, 0);

      return total / parentPositions.length;
    };

    current.sort((a, b) => {
      return (
        averageParentPosition(a) - averageParentPosition(b) ||
        a.number - b.number
      );
    });
  }

  // dimensions de la carte
  const nodeWidth = 112;
  const nodeHeight = 58;
  const gapX = 65;
  const gapY = 30;
  const padding = 30;

  // positionnement des chapitres
  const chapterNodes = [];
  const chapterNodesById = new Map();

  [...chapterLayers.keys()]
    .sort((a, b) => a - b)
    .forEach((level) => {
      chapterLayers.get(level).forEach((chapter, index) => {
        const node = {
          chapter,
          x: padding + level * (nodeWidth + gapX),
          y: padding + index * (nodeHeight + gapY),
        };

        chapterNodes.push(node);
        chapterNodesById.set(chapter.id, node);
      });
    });

  const layerLevels = [...chapterLayers.keys()];

  const width =
    padding * 2 + (Math.max(...layerLevels) + 1) * (nodeWidth + gapX);

  const height =
    padding * 2 +
    Math.max(...[...chapterLayers.values()].map((layer) => layer.length)) *
      (nodeHeight + gapY);

  // identification des passages réellement parcourus
  const playedConnections = new Map();

  for (let index = 1; index < mapPassageLog.length; index += 1) {
    const previousChapterNumber = mapPassageLog[index - 1];
    const currentChapterNumber = mapPassageLog[index];

    const previousChapter = chaptersByNumber.get(previousChapterNumber);
    const currentChapter = chaptersByNumber.get(currentChapterNumber);

    if (!previousChapter || !currentChapter) continue;

    const edgeId = `${previousChapter.id}-${currentChapter.id}`;

    if (!chapterConnectionIds.has(edgeId)) continue;

    playedConnections.set(edgeId, true);
  }

  // les passages parcourus sont dessinés au-dessus des autres
  const orderedConnections = [...chapterConnections].sort(
    (a, b) =>
      Number(playedConnections.has(a.id)) - Number(playedConnections.has(b.id)),
  );

  return (
    <section className="bookTreeProgressChapters">
      <h3>Carte du récit</h3>

      <p>
        {readVersionsByChapter.size} chapitres découverts sur {chapters.length}.
      </p>

      <div className="endGame_log">
        <h4>Votre progression dans l'histoire</h4>
        <p className="introProgress_text">
          Vous pouvez cliquer sur les numéros des chapitres pour afficher leur
          titre et l'état dans lequel ils ont été parcourus. <br /> Les
          chapitres portant une étoile ★ indiquent que vous avez trouvé un
          fragment.
        </p>

        <div ref={endGamePathPlayedRef} className="endGame_pathPlayed_log">
          {mapPassageLog.map((chapterNumber, index) => (
            <span key={index}>
              <button
                type="button"
                className={`endGame_pathPlayed_button ${
                  selectedPassage === index ? "selected" : ""
                } ${passages[index].gives_fragment ? "hasFragment" : ""}`}
                onClick={() => setSelectedPassage(index)}
              >
                {chapterNumber}
              </button>
              {index < mapPassageLog.length - 1 && " → "}
            </span>
          ))}
        </div>

        {selectedPassage !== null && (
          <p className="endGame_pathPlayed_describ">
            Chapitre {mapPassageLog[selectedPassage]} :{" "}
            {passages[selectedPassage].title} {" - État : "}
            {passages[selectedPassage].state === "normal"
              ? "Lucide"
              : passages[selectedPassage].version === "normal"
                ? "Folie (texte normal par défaut)"
                : "Folie"}
          </p>
        )}
      </div>

      <p className="introProgress_text" id="tree-progress-intro">
        Faites défiler la carte horizontalement et verticalement pour
        l'explorer.
      </p>

      <div
        className="graph"
        role="region"
        aria-label="Carte des chapitres"
        aria-describedby="tree-progress-intro"
        tabIndex={0}
      >
        <svg
          className="graph-svg"
          width={width}
          height={height}
          role="img"
          aria-label="Chapitres, passages possibles et progression de lecture"
        >
          <defs>
            <marker
              id="tree-arrow"
              viewBox="0 0 10 10"
              refX="9"
              refY="5"
              markerWidth="9"
              markerHeight="9"
              markerUnits="userSpaceOnUse"
              orient="auto"
            >
              <path d="M 0 0 L 10 5 L 0 10 Z" fill="context-stroke" />
            </marker>
          </defs>

          {orderedConnections.map((edge) => {
            const from = chapterNodesById.get(edge.from);
            const to = chapterNodesById.get(edge.to);

            const isPlayed = playedConnections.has(edge.id);

            // départ à droite du chapitre source
            const startX = from.x + nodeWidth + 1;
            const startY = from.y + nodeHeight / 2;

            // arrivée à gauche du chapitre cible
            const endX = to.x - 1;
            const endY = to.y + nodeHeight / 2;

            const curve = Math.max(115, Math.abs(endX - startX) * 0.45);

            const path =
              endX >= startX
                ? `M ${startX} ${startY}
                   C ${startX + curve} ${startY},
                     ${endX - curve} ${endY},
                     ${endX} ${endY}`
                : `M ${startX} ${startY}
                   C ${startX + curve} ${startY + 65},
                     ${endX - curve} ${endY + 65},
                     ${endX} ${endY}`;

            return (
              <path
                key={edge.id}
                d={path}
                className={isPlayed ? "edge edge-normal" : "edge"}
                markerEnd={isPlayed ? "url(#tree-arrow)" : undefined}
              />
            );
          })}

          {chapterNodes.map(({ chapter, x, y }) => {
            const versions = readVersionsByChapter.get(chapter.number);

            const normalRead = versions?.has("normal") ?? false;
            const insaneRead = versions?.has("insane") ?? false;

            const normalAvailable = Boolean(chapter.text_normal?.trim());
            const insaneAvailable = Boolean(chapter.text_insane?.trim());
            const chapterVisited = versions !== undefined;

            let nodeClass = "";

            if (normalRead && insaneRead) {
              nodeClass = "chapterCard-both";
            } else if (normalRead) {
              nodeClass = "chapterCard-normal";
            } else if (insaneRead) {
              nodeClass = "chapterCard-insane";
            }

            return (
              <g key={chapter.id}>
                <rect
                  x={x}
                  y={y}
                  width={nodeWidth}
                  height={nodeHeight}
                  rx="7"
                  className={`chapterCard ${nodeClass}`}
                />

                <text
                  x={x + nodeWidth / 2}
                  y={y + 19}
                  textAnchor="middle"
                  className="number"
                >
                  {`Chapitre ${chapter.number}${chapterVisited && chapter.gives_fragment ? " ★ " : ""}`}
                </text>

                {chapterVisited && normalAvailable && (
                  <text
                    x={insaneAvailable ? x + 8 : x + nodeWidth / 2}
                    y={y + 40}
                    textAnchor={insaneAvailable ? "start" : "middle"}
                    className={
                      normalRead ? "version version-normal" : "version"
                    }
                  >
                    {normalRead ? "✓" : "○"} Lucide
                  </text>
                )}

                {chapterVisited && insaneAvailable && (
                  <text
                    x={normalAvailable ? x + 65 : x + nodeWidth / 2}
                    y={y + 40}
                    textAnchor={normalAvailable ? "start" : "middle"}
                    className={
                      insaneRead ? "version version-insane" : "version"
                    }
                  >
                    {insaneRead ? "✓" : "○"} Folie
                  </text>
                )}

                <title>
                  {`Chapitre ${chapter.number}. Lucide : ${
                    normalAvailable
                      ? normalRead
                        ? "lue"
                        : "non lue"
                      : "indisponible"
                  }. Folie : ${
                    insaneAvailable
                      ? insaneRead
                        ? "lue"
                        : "non lue"
                      : "indisponible"
                  }. ${
                    chapter.gives_fragment
                      ? "Ce chapitre donne un fragment."
                      : ""
                  }`}
                </title>
              </g>
            );
          })}
        </svg>
      </div>

      <div className="legend">
        <p>Légende :</p>
        <ul>
          <li>Gris : chapitre non parcouru</li>
          <li>Vert : version Lucide lue</li>
          <li>Violet : version Folie lue</li>
          <li>Deux couleurs : les deux versions lues</li>
          <li>Trait gris : passage possible</li>
          <li>Trait coloré avec flèche : passage parcouru</li>
          <li>★ : chapitre donnant un fragment</li>
        </ul>
      </div>
    </section>
  );
}

export default TreeProgressChapters;
