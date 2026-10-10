import { useNavigate } from "react-router-dom";

function PageGameEnd({
  game_statistics,
  totalChapters,
  totalChaptersTextNormal,
  totalChaptersTextInsane,
  totalFragments,
  resetGame,
}) {
  const navigate = useNavigate();

  return (
    <div className="bookPageGameEnd">
      <h3>Les statistiques de la partie</h3>
      <p>
        Nombre total de chapitres visités : {game_statistics.visitChapterCount}{" "}
        / {totalChapters}
      </p>
      <p>
        Chapitres avec un texte « normal » visités :{" "}
        {game_statistics.normalVersionCount} / {totalChaptersTextNormal}
      </p>
      <p>
        Chapitres avec un texte « folie » visités :{" "}
        {game_statistics.insaneVersionCount} / {totalChaptersTextInsane}
      </p>
      <p>
        Fragments récoltés : {game_statistics.fragmentCount} / {totalFragments}
      </p>
      <div className="buttons_end_adventure">
        <button
          className="button_end_adventure_home"
          onClick={() => {
            resetGame();
            navigate("/");
          }}
        >
          Retour à l'accueil
        </button>

        <button className="button_end_adventure_replay" onClick={resetGame}>
          Recommencer l'aventure
        </button>
      </div>
    </div>
  );
}

export default PageGameEnd;
