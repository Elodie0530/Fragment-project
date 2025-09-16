require("dotenv").config();

const fs = require("fs");
const mysql = require("mysql2/promise");

const migrate = async () => {
  const { DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME } = process.env;

  const connection = await mysql.createConnection({
    host: DB_HOST,
    port: DB_PORT,
    user: DB_USER,
    password: DB_PASSWORD,
    multipleStatements: true,
  });
  console.log("connexion mysql");
  await connection.query(`drop database if exists ${DB_NAME}`);
  console.log("base supprimée");
  await connection.query(`create database ${DB_NAME}`);
  console.log("base créer");
  await connection.query(`use ${DB_NAME}`);
  console.log("utilisation base");
  const sql = fs.readFileSync("./sql/tables.sql", "utf8");
  console.log("sql lu");
  await connection.query(sql);
  console.log("tables créer");
  connection.end();
  console.log("connexion terminée");
};

try {
  migrate();
} catch (err) {
  console.error(err);
}
