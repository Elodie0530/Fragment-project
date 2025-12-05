import { useEffect, useState } from "react";

function TestCom() {
  /*useState stok in the array the object returned a controllers, because no .find logic implemant yet */
  const [testControllers, setTestControllers] = useState([]);

  useEffect(() => {
    fetch(
      `${
        import.meta.env.VITE_BACKEND_URL ?? "http://localhost:8000"
      }/api/histories`
    )
      .then((response) => response.json())
      .then((data) => {
        setTestControllers(data);
      })

      .catch((err) => {
        setTestControllers("Erreur : " + err.TestControllers);
        console.error(err);
      });
  }, []);

  return (
    <>
      {testControllers.map((testBdd) => (
        /*this key unique it's necessairy but is a array map*/
        <div key={testBdd.id}>
          <p>Titre : {testBdd.title} </p>
          <p>Date : {testBdd.created_at} </p>
          {/* <p>Numéro chapitre : {testBdd.chapter_number} </p>
          <p>Texte du chapitre : {testBdd.chapter_text} </p> */}
        </div>
      ))}
    </>
  );
}

export default TestCom;
