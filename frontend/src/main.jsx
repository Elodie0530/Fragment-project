import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

import App from "./App.jsx";
import BookList from "./pages/BookList.jsx";
import BookPage from "./pages/BookPage.jsx";
import Home from "./pages/Home.jsx";
import JdrPage from "./pages/Jdr.jsx";
import GnPage from "./pages/GN.jsx";
import FormPage from "./pages/Form.jsx";
import CreditsPage from "./pages/Credits.jsx";

const router = createBrowserRouter([
  {
    element: <App />,
    children: [
      { path: "/", element: <Home /> },
      { path: "jdr", element: <JdrPage /> },
      { path: "books", element: <BookList /> },
      { path: "books/:id", element: <BookPage /> },
      { path: "gn", element: <GnPage /> },
      { path: "formulaire", element: <FormPage /> },
      { path: "credits", element: <CreditsPage /> },
    ],
  },
]);

createRoot(document.getElementById("root")).render(
  <StrictMode>
    <RouterProvider router={router} />
  </StrictMode>,
);
