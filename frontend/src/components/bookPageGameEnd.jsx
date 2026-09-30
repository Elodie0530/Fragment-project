function PageGameEnd({
  game_statistics,
  totalChapters,
  totalChaptersTextNormal,
  totalChaptersTextInsane,
  totalFragments,
}) {
  return (
    <div>
      <p>Les statistiques de la partie</p>
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
    </div>
  );
}

export default PageGameEnd;
