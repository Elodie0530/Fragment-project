const models = require("./src/models");
// connexion with bdd verify if ok

const testBdd = async () => {
  try {
    const [rows] = await models.test.findAll();
    console.log("Résultats de la table SQL de test_fonctionnement", rows);
  } catch (err) {
    console.error("Erreur lors de la communication", err);
  } finally {
    // this line a exit script test console database connection
    process.exit();
  }
};

testBdd();
