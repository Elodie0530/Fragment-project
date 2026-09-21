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

  return {
    visitLog,
    visitChapter,
    visitChapterIds,
    visitChapterCount,
  };
}

export default useReadingProgress;
