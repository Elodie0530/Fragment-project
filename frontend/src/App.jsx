import "./App.css";
import { Outlet } from "react-router-dom";

import NavBar from "./components/NavBar";
import Footer from "./components/Footer";

function App() {
  return (
    <div className="app_global_page">
      <NavBar />

      <main className="app_main">
        <Outlet />
      </main>

      <Footer />
    </div>
  );
}

export default App;
