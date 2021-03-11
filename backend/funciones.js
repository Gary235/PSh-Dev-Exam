const mysql = require('mysql');
const http = require('http');
const fs = require('fs');
const json2csv = require('json2csv').parse;



function setupJugadores() {
    const con = mysql.createConnection({
        host: "localhost",
        user: "gary",
        password: "]]z+DRBgV,d&as4",
        database: "psh_dev_exam"
    });


    var query = "SELECT players.score, players.profileImage, players.nickname, players.creationDate, players.idPlayer, stats.idStat " +
        "FROM players " +
        "INNER JOIN stats " +
        "ON stats.idPlayer = players.idPlayer " +
        "ORDER BY players.score DESC " +
        "LIMIT 10 ";


    con.connect(function (err) {
        if (err) throw err;
        con.query(query, function (err, result) {

            if (err) throw err;
            console.log(result);


            subirServer(result);


        });
    });



}


function subirServer(result) {


    const handleServer = function (request, response) {
        response.writeHead(200, {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
            'X-Powered-By': 'nodejs'
        });

        if (fs.existsSync('./jugadores.json')) {
            fs.unlinkSync('./jugadores.json')
        }

        fs.writeFile('./jugadores.json', JSON.stringify(result), function (e) {
            if (e) {
                console.log(e);
            } else {

                fs.readFile('./jugadores.json', function (err, content) {

                    response.write(content);
                    response.end();
                });
            }
        });

        const csv = json2csv( result , { fields: ['score','profileImage','nickname','creationDate','idPlayer','idStat'] } );
        fs.writeFileSync('./jugadores.csv', csv);

    };

    const server = http.createServer(handleServer);

    server.listen(3000, function () {
        console.log('Server on port 3000');
    });
}


exports.setupJugadores = setupJugadores;