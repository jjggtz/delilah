const mysql = require('mysql');
const { promisify } = require('util');
const { database } = require('./keys');

const pool = mysql.createPool(database);

pool.getConnection((err, connection) => {
    if (err) {
        if (err.code === 'PROTOCOL_CONNECTION_LOST'){
            console.error ('LA CONEXION CON LA BASE DE DATOS FUE CERRADA');
        }
        if (err.code === 'ER_CON_COUNT_ERROR') {
            console.error('LA BASE DE DATOS TIENE DEMASIADAS CONEXIONES');
        }
        if (err.code === 'ECONNREFUSED') {
            console.error('LA CONEXION A LA BASE DE DATOS FUE RECHAZADA');
        }
    } else {
        console.log('Conectado a la base de datos');
        return;
    }});

pool.query = promisify(pool.query)

module.exports = pool; 