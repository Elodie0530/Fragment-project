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

  const visitChapter = (chapterId, version) => {
    setVisitLog((currentVisitLog) => {
      /*step 3 : add all chapters to visitLog and test compare in the inspector*/
      /*alreadyVisited prevents saving the same chapter twice*/

      /*const alreadyVisited = currentVisitLog.some(
        (visit) => visit.chapterId === chapterId && visit.version === version,
      );

      if (alreadyVisited) {
        return currentVisitLog;
      }*/

      return [
        ...currentVisitLog,
        {
          chapterId,
          version,
        },
      ];
    });
  };

  /*step 4 : add count of unique chapters visited, test in the inspector*/
  const visitChapterIds = new Set(visitLog.map((visit) => visit.chapterId));

  const visitChapterCount = visitChapterIds.size;
  console.log("comptage 1x des chapitres", visitChapterCount);

  /*step 5 : add count of unique chapters visited version normal and insane, test in the inspector*/
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
  console.log("comptage 1x des chapitres normal", normalVersionCount);

  const insaneVersionCount = insaneVersionIds.size;
  console.log("comptage 1x des chapitres folie", insaneVersionCount);

  return {
    visitLog,
    visitChapter,
    visitChapterIds,
    visitChapterCount,
    normalVersionCount,
    insaneVersionCount,
  };
}

export default useReadingProgress;
