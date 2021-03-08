const cron = require('node-cron');
const express = require('express');
const mysql = require('mysql');
const fetch = require('node-fetch');
const fc = require('./funciones');

var lastID;
// ...

app = express();

cron.schedule('10 * * * * *', function () {
  insertar();

});
app.listen(4000, () => {
  fc.setupJugadores();


});



function insertar() {
  var numJugadores = Math.floor(Math.random() * 10 + 1);
  var score = Math.floor(Math.random() * 100 + 1);
  var nickname, dataname;
  var profileImage, dataimage;


  for (var i = 0; i < numJugadores; i++) {

    fetch('https://randomuser.me/api')
      .then(res => res.json())
      .then(data => {

        for (var i = 0; i < 1; i++) {
          var resultado = data.results[i];

          for (var detalle in resultado) {
            if (detalle == 'name') {
              dataname = resultado.name;
            }
            if (detalle == 'picture') {
              dataimage = resultado.picture;
            }
          }
        }

        nickname = dataname.first + " " + dataname.last;
        profileImage = dataimage.medium;

        insertPlayer(score, nickname, profileImage);


      }).catch(function() {
        console.log("error");
    });
  }

}

function insertPlayer(score, nickname, profileImage) {

  const con = mysql.createConnection({
    host: "localhost",
    user: "gary",
    password: "]]z+DRBgV,d&as4",
    database: "psh_dev_exam"
  });

  var query = "INSERT INTO players VALUES (null, " + score + ", '" + nickname + "','" + profileImage + "', CURRENT_TIMESTAMP)";

  con.connect(function (err) {
    if (err) throw err;
    con.query(query, function (err, result) {

      if (err) throw err;
      console.log(result);


      obtenerUltimoId();

    });
  });
}

function obtenerUltimoId() {
  const con = mysql.createConnection({
    host: "localhost",
    user: "gary",
    password: "]]z+DRBgV,d&as4",
    database: "psh_dev_exam"
  });

  var query = "SELECT players.idPlayer FROM players ORDER BY players.idPlayer DESC LIMIT 1";

  con.connect(function (err) {
    if (err) throw err;
    con.query(query, function (err, result) {

      if (err) throw err;

      lastID = result[0].idPlayer;


      insertStat(lastID);

    });
  });
}

function insertStat(idplayer) {

  const con = mysql.createConnection({
    host: "localhost",
    user: "gary",
    password: "]]z+DRBgV,d&as4",
    database: "psh_dev_exam"
  });

  var query = "INSERT INTO stats VALUES ( null, " + idplayer + ")";

  con.connect(function (err) {
    if (err) throw err;
    con.query(query, function (err, result) {

      if (err) throw err;
      console.log(result);

    });
  });
}