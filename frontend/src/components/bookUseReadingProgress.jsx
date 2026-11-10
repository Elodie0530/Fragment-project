import { useCallback, useEffect, useState } from "react";

function useReadingProgress(historyId) {
  /*Log visits chapter for statistics game end*/
  const storageKey = `fragment-reading-progress-${historyId}`;

  const [visitLog, setVisitLog] = useState(() => {
    const savedProgress = localStorage.getItem(storageKey);

    if (savedProgress) {
      return JSON.parse(savedProgress);
    }

    return [];
  });

  useEffect(() => {
    localStorage.setItem(storageKey, JSON.stringify(visitLog));
  }, [storageKey, visitLog]);

  /*Log transitions player progress map end*/
  const mapPassageStorageKey = `fragment-map-passage-${historyId}`;

  const [mapPassageLog, setMapPassageLog] = useState(() => {
    const savedMapPassages = localStorage.getItem(mapPassageStorageKey);
    if (savedMapPassages) {
      return JSON.parse(savedMapPassages);
    }
    return [];
  });

  useEffect(() => {
    localStorage.setItem(mapPassageStorageKey, JSON.stringify(mapPassageLog));
  }, [mapPassageStorageKey, mapPassageLog]);

  const visitChapter = (chapterId, version, gives_fragment) => {
    if (
      !visitLog.find(
        (visit) =>
          visit.chapterId === chapterId &&
          visit.version === version &&
          visit.gives_fragment === gives_fragment,
      )
    ) {
      setVisitLog((currentVisitLog) => {
        return [
          ...currentVisitLog,
          {
            chapterId,
            version,
            gives_fragment,
          },
        ];
      });
    }
  };

  const visitChapterIds = new Set(visitLog.map((visit) => visit.chapterId));
  const visitChapterCount = visitChapterIds.size;
  const normalVersionIds = new Set();
  const insaneVersionIds = new Set();

  visitLog.map((visit) => {
    if (visit.version === "normal") {
      normalVersionIds.add(visit.chapterId);
    } else {
      insaneVersionIds.add(visit.chapterId);
    }
  });

  const normalVersionCount = normalVersionIds.size;
  const insaneVersionCount = insaneVersionIds.size;
  const fragmentIds = new Set();

  visitLog.map((visit) => {
    if (visit.gives_fragment === 1) {
      fragmentIds.add(visit.chapterId);
    }
  });

  const fragmentCount = fragmentIds.size;

  /*regroup game statistics for bookPage.jsx*/
  const game_statistics = {
    visitChapterCount,
    normalVersionCount,
    insaneVersionCount,
    fragmentCount,
  };

  /*regroup links map game end*/
  const initializeMapPassageLog = useCallback((chapterNumber) => {
    setMapPassageLog((currentMapPassageLog) => {
      if (currentMapPassageLog.length === 0) {
        return [chapterNumber];
      }
      return currentMapPassageLog;
    });
  }, []);

  const recordMapPassage = (chapterNumber) => {
    setMapPassageLog((currentMapPassageLog) => [
      ...currentMapPassageLog,
      chapterNumber,
    ]);
  };

  const resetGameProgress = (firstChapterNumber) => {
    setVisitLog([]);
    setMapPassageLog([firstChapterNumber]);
  };

  return {
    visitLog,
    visitChapter,
    visitChapterIds,
    game_statistics,
    resetGameProgress,
    mapPassageLog,
    initializeMapPassageLog,
    recordMapPassage,
  };
}

export default useReadingProgress;
