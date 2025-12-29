import "./Book.css";
import { useParams } from "react-router-dom";
import { useEffect, useState } from "react";

function BookPage() {
  const { id } = useParams();
  const [chapters, setChapters] = useState([]);
  const [currentChapter, setCurrentChapter] = useState(null);
  const [haveFragment, setHaveFragment] = useState(false);

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

  let displayTextCurrentChapter = "";
  if (currentChapter) {
    if (haveFragment && currentChapter.text_insane) {
      displayTextCurrentChapter = currentChapter.text_insane;
    } else {
      displayTextCurrentChapter = currentChapter.text_normal;
    }
  }

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

          <img
            className="images"
            src={`${import.meta.env.VITE_BACKEND_URL}${
              currentChapter.image_path
            }`}
            alt={currentChapter.image_alt}
          />

          <p className="display_text_current">{displayTextCurrentChapter}</p>

          <div className="chapter_choice">
            {currentChapter.actions
              .sort((a, b) => a.position - b.position)
              .map(({ id, end_id, action }) => (
                /*this key unique it's necessairy but is a array map*/
                <button
                  className="button_chapter_choice"
                  type="button"
                  key={id}
                  onClick={() => {
                    const newStartCurrentChapter = chapters.find(
                      (oneChapter) => oneChapter.id === end_id
                    );

                    setCurrentChapter(newStartCurrentChapter);

                    if (Boolean(newStartCurrentChapter?.is_first) === true) {
                      setHaveFragment(false);
                    } else if (
                      Boolean(newStartCurrentChapter?.gives_fragment) === true
                    ) {
                      setHaveFragment(true);
                    }
                  }}
                >
                  {action}
                </button>
              ))}
          </div>
        </section>
      )}
    </>
  );
}

export default BookPage;
