import "./App.css";
import { Outlet } from "react-router-dom";

import NavBar from "./components/NavBar";
import TestBack from "./components/test_com_back";
import Footer from "./components/Footer";

function App() {
  return (
    <>
      <div>
        <NavBar />
        <Outlet />
        <TestBack />
        <Footer />
      </div>
    </>
  );
}

export default App;
