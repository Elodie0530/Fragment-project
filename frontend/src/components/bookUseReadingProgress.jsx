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

  return {
    visitLog,
    visitChapter,
  };
}

export default useReadingProgress;
