import "./Book.css";
import { useParams } from "react-router-dom";
import { useEffect, useState } from "react";

function BookPage() {
  const { id } = useParams();
  const [chapters, setChapters] = useState([]);
  const [currentChapter, setCurrentChapter] = useState(null);
  const [haveFragment, setHaveFragment] = useState(false);
  const [showImagesChapters, setShowImagesChapters] = useState(true);

  useEffect(() => {
    fetch(
      `${
        import.meta.env.VITE_BACKEND_URL ?? "http://localhost:8000"
      }/api/histories/${id}/chapters`,
    )
      .then((response) => response.json())
      .then((data) => {
        setChapters(data);
        setCurrentChapter(
          data.find((dataElement) => Boolean(dataElement.is_first) === true),
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
      <div className="page_book">
        <div className="title_book">
          <h3>
            Fragment <br /> <span>Livre dont vous êtes le héros</span>
          </h3>

          <div className="show_images">
            <p className="text_info_show_images">
              Vous pouvez choisir d'afficher ou non les images du livre à l'aide
              du bouton ci-dessous :
            </p>
            <button
              className="button_show_images"
              type="button"
              onClick={() => setShowImagesChapters(!showImagesChapters)}
            >
              {showImagesChapters ? "Cacher les images" : "Montrer les images"}
            </button>
          </div>
        </div>
        {currentChapter != null && (
          <section>
            <h2>{currentChapter.title}</h2>

            {showImagesChapters ? (
              <img
                className="images"
                src={`${import.meta.env.VITE_BACKEND_URL}${
                  currentChapter.image_path
                }`}
                alt={currentChapter.image_alt}
              />
            ) : (
              <p className="image_alt_if_choice_no_display">
                <span className="image_alt_intro">
                  Texte alternatif à l'image :
                </span>
                <br />
                {currentChapter.image_alt}
              </p>
            )}

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
                        (oneChapter) => oneChapter.id === end_id,
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
      </div>
    </>
  );
}

export default BookPage;
