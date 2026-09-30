function PageGameEnd({ game_statistics }) {
  return (
    <div>
      <p>Les statistiques de la partie</p>
      <p>
        Nombre total de chapitres visités : {game_statistics.visitChapterCount}
      </p>
      <p>
        Chapitres avec un texte « normal » visités :{" "}
        {game_statistics.normalVersionCount}
      </p>
      <p>
        Chapitres avec un texte « folie » visités :{" "}
        {game_statistics.insaneVersionCount}
      </p>
      <p>Fragments récoltés : {game_statistics.fragmentCount}</p>
    </div>
  );
}

export default PageGameEnd;
