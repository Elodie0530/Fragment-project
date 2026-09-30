import { useEffect, useState } from "react";

function useReadingProgress(historyId) {
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

  const visitChapter = (chapterId, version, gives_fragment) => {
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

  return {
    visitLog,
    visitChapter,
    visitChapterIds,
    game_statistics,
  };
}

export default useReadingProgress;
