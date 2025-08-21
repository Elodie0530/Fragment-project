import { useEffect, useState } from "react";

export default function TestBack() {
  const [message, setmessage] = useState("");

  useEffect(() => {
    fetch(
      `${
        import.meta.env.VITE_BACKEND_URL ?? "http://localhost:8000"
      }/testBackend`
    )
      .then((response) => response.text())
      .then((data) => setmessage(data))
      .catch((err) => setmessage("Erreur : " + err.message));
  }, []);

  return <div>{message}</div>;
}
