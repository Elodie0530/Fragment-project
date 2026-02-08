import { Link } from "react-router-dom";
import "./NavBar.css";

function Navbar() {
  return (
    <nav className="nav_bar">
      <ul>
        <Link to="/" className="page">
          Accueil
        </Link>

        <Link to="/books" className="page">
          Les livres dont vous êtes le héros
        </Link>

        <Link to="/jdr" className="page">
          Jeu de Rôle
        </Link>

        <Link to="/gn" className="page">
          Mini-Grandeur Nature
        </Link>

        <Link to="/formulaire" className="page">
          Formulaire - Avis
        </Link>

        <Link to="/credits" className="page">
          Crédits
        </Link>
      </ul>
    </nav>
  );
}

export default Navbar;
