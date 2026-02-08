import "./Book.css";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

function BookList() {
  const [books, setBooks] = useState([]);

  useEffect(() => {
    fetch(
      `${
        import.meta.env.VITE_BACKEND_URL ?? "http://localhost:8000"
      }/api/histories`,
    )
      .then((response) => response.json())
      .then((data) => {
        setBooks(data);
      })
      .catch((err) => {
        console.error(err);
      });
  }, []);

  return (
    <>
      <div className="book">
        <h3>Les Livres dont vous êtes le héros</h3>
        <div>
          Cette page est consacrée à la partie livre dont vous êtes le héros qui
          est le coeur du projet. <br />À terme, plusieurs histoires seront
          disponibles : il vous suffira de cliquer sur celle que vous souhaitez
          parcourir.
        </div>
      </div>

      <ul className="select_story">
        {books.map((book) => (
          /*this key unique it's necessairy but is a array map*/
          <li key={book.id}>
            <Link to={`${book.id}`}>{book.title}</Link>
          </li>
        ))}
      </ul>
    </>
  );
}

export default BookList;
