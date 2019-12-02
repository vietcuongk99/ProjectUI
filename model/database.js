
var mysql = require('mysql');

var connection = mysql.createConnection({
	multipleStatements: true,
	host: "localhost",
	user: "root",
	password: "",
	database: "cookyvn"
});
connection.connect();

function getConnection() {
	if (!connection) {
		connection.connect();
	}
	return connection;
}

module.exports = {
	getConnection: getConnection,
}