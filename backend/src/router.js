const express = require("express");

const router = express.Router();

// route test
router.get("/testBackend", (req, res) => {
  res.send("Bienvenue sur le backend de mon projet Fragment :)");
});

module.exports = router;
