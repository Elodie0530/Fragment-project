import { useEffect, useState } from "react";

function TestBack() {
  const [message, setmessage] = useState("");

  useEffect(() => {
    fetch(`${import.meta.env.VITE_BACKEND_URL ?? "http://localhost:8000"}/api`)
      .then((response) => response.text())
      .then((data) => {
        setmessage(data);
      })

      .catch((err) => {
        setmessage("Erreur : " + err.message);
        console.error(err);
      });
  }, []);

  return <div>{message}</div>;
}

export default TestBack;
