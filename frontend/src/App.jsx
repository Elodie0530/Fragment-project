import "./App.css";
import TestBack from "./components/test_com_back";
import NavBar from "./components/NavBar";
import Home from "./pages/Home";
import Footer from "./components/Footer";

function App() {
  return (
    <>
      <NavBar />
      <div>
        <h2>Test communication entre front et back</h2>
        <TestBack />
        <Home />
      </div>
      <Footer />
    </>
  );
}

export default App;
