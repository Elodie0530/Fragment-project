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

  await connection.query(`drop database if exists ${DB_NAME}`);

  await connection.query(`create database ${DB_NAME}`);

  await connection.query(`use ${DB_NAME}`);

  const tables = fs.readFileSync("./sql/tables.sql", "utf8");
  await connection.query(tables);

  const insert_book = fs.readFileSync("./sql/insert_book.sql", "utf8");
  await connection.query(insert_book);

  connection.end();
};

try {
  migrate();
} catch (err) {
  console.error(err);
}
