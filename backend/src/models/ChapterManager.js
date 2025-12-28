const AbstractManager = require("./AbstractManager");

class ChapterManager extends AbstractManager {
  constructor() {
    super({ table: "chapter" });
  }

  findByHistory(historyId) {
    return this.database.query(
      `select
      chapter.*,
      JSON_ARRAYAGG(
      JSON_OBJECT(
      "action", lead_to.action,
      "end_id", lead_to.end_id,
      "position", lead_to.position
      ) 
    ) as actions
     from ${this.table}
     left join lead_to on chapter.id=lead_to.start_id
     where history_id = ?
     group by chapter.id`,
      [historyId]
    );
  }
}

module.exports = ChapterManager;
