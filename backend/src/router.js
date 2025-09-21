const express = require("express");

const router = express.Router();

// route test
router.get("/testBackend", (req, res) => {
  res.send("Bienvenue sur le backend de mon projet Fragment :)");
});

// test appel controllers and models view
const testControllers = require("./controllers/testControllers");
router.get("/test", testControllers.browse);
router.get("/test/:id", testControllers.read);

module.exports = router;
