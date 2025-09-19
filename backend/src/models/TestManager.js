const AbstractManager = require("./AbstractManager");

class TestManager extends AbstractManager {
  constructor() {
    super({ table: "test_fonctionnement" });
  }
}

module.exports = TestManager;
