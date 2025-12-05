import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

function BookList() {
  const [books, setBooks] = useState([]);

  useEffect(() => {
    fetch(
      `${
        import.meta.env.VITE_BACKEND_URL ?? "http://localhost:8000"
      }/api/histories`
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
    <ul>
      {books.map((book) => (
        /*this key unique it's necessairy but is a array map*/
        <li key={book.id}>
          <Link to={`${book.id}`}>{book.title}</Link>
        </li>
      ))}
    </ul>
  );
}

export default BookList;
