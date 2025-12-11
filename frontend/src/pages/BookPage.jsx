import "./Book.css";
import { useParams } from "react-router-dom";
import { useEffect, useState } from "react";

function BookPage() {
  const { id } = useParams();
  const [chapters, setChapters] = useState([]);
  const [currentChapter, setCurrentChapter] = useState(null);

  useEffect(() => {
    fetch(
      `${
        import.meta.env.VITE_BACKEND_URL ?? "http://localhost:8000"
      }/api/histories/${id}/chapters`
    )
      .then((response) => response.json())
      .then((data) => {
        setChapters(data);
        setCurrentChapter(
          data.find((dataElement) => Boolean(dataElement.is_first) === true)
        );
      })
      .catch((err) => {
        console.error(err);
      });
  }, [id]);

  return (
    <>
      <div className="book">
        <h3>Hello Livre dont vous êtes le héros {id}</h3>
        <div className="text_test">
          Cette page sera consacrée à la partie livre dont vous êtes le héros
          qui est le coeur du projet.
        </div>
      </div>
      {currentChapter != null && (
        <section>
          <h2>{currentChapter.title}</h2>
          <p>{currentChapter.text_normal}</p>
          {currentChapter.actions.map(({ end_id, action }) => (
            /*this key unique it's necessairy but is a array map*/
            <button
              type="button"
              key={end_id}
              onClick={() => {
                setCurrentChapter(
                  chapters.find((oneChapter) => oneChapter.id === end_id)
                );
              }}
            >
              {action}
            </button>
          ))}
        </section>
      )}
    </>
  );
}

export default BookPage;
