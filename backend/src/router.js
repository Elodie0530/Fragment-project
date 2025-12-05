const express = require("express");

const router = express.Router();

// route test
router.get("/api", (req, res) => {
  res.send("Bienvenue sur le backend de mon projet Fragment :)");
});

// test appel controllers and models view
const testControllers = require("./controllers/testControllers");
router.get("/api/test", testControllers.browse);
router.get("/api/test/:id", testControllers.read);

const historyControllers = require("./controllers/historyControllers");
router.get("/api/histories", historyControllers.browse);
router.get("/api/histories/:id", historyControllers.read);

const chapterControllers = require("./controllers/chapterControllers");
router.get("/api/histories/:historyId/chapters", chapterControllers.browse);

module.exports = router;
