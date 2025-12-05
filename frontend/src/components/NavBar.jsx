import { Link } from "react-router-dom";
import "./NavBar.css";

function Navbar() {
  return (
    <nav className="nav_bar">
      <ul>
        <li>
          <Link to="/" className="page">
            Accueil
          </Link>
        </li>
        <li>
          <Link to="/books" className="page">
            Les livres dont vous êtes le héros
          </Link>
        </li>
        <li>
          <Link to="/jdr" className="page">
            Jeu de Rôle
          </Link>
        </li>
        <li>
          <Link to="/gn" className="page">
            Mini-Grandeur Nature
          </Link>
        </li>
        <li>
          <Link to="/formulaire" className="page">
            Formulaire - Avis
          </Link>
        </li>
        <li>
          <Link to="/credits" className="page">
            Crédits
          </Link>
        </li>
      </ul>
    </nav>
  );
}

export default Navbar;
