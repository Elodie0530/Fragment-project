import "./Book.css";
import TestBack from "../components/test_com_back";
import TestControllers from "../components/fetchController";

function BookPage() {
  return (
    <>
      <div className="book">
        <h3>Hello Livre dont vous êtes le héros</h3>
        <div className="text_test">
          Cette page sera consacrée à la partie livre dont vous êtes le héros
          qui est le coeur du projet.
        </div>

        <div className="return_backend">
          <TestBack />
          <TestControllers />
        </div>
      </div>
    </>
  );
}

export default BookPage;
