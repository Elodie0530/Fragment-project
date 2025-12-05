const AbstractManager = require("./AbstractManager");

class HistoryManager extends AbstractManager {
  constructor() {
    super({ table: "history" });
  }
}

module.exports = HistoryManager;
