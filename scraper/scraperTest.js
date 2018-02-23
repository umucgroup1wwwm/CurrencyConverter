/* 
 * Requires Node JS and npm library 'table-scraper'
 * Using Node JS version 8.9.4
 * npm install table-scraper
 * npm install mysql
 */
const scraper = require('table-scraper');
const mysql = require('mysql');


// Default error
const err = "Error downloading current exchange rates. Check connection and try again";
// Using Table Scraper library go to page with current exchange rates and download the table
scraper
        .get('http://www.x-rates.com/table/?from=USD&amount=1')
        .then(function (tableData) {
            var table = tableData[1];
    
            // Establish SQL Connection to local DB
            // Ensure these values are correct prior to running
            const con = mysql.createConnection({
                host: 'localhost',
                user: 'admin',
                password: 'admin',
                database: 'currencydb'
            });
            
            // Make sure table exists and is empty to prevent redundant entries
            con.query('CREATE TABLE IF NOT EXISTS curRates (country VARCHAR(30), rate FLOAT)');
            con.query('TRUNCATE TABLE curRates');
            
            // Iterate through the table and retrieve all values 
            for (var i = 0; i < table.length; ++i) {
                // Push Currency and exchange rates to table
                var result = {country: table[i]["US Dollar"], rate: parseFloat(table[i]["1.00 USD"])};
                con.query('INSERT INTO curRates SET ?', result, err => {
                    if (err)
                        throw err;
                });
            }
            con.query('SELECT * FROM curRates', (err, rows) => {
                if (err)
                    throw err;
                
                console.log('Data received from Db:\n');
                console.log(rows);
                // Ensure Process doesn't just hang
                process.exit(-1);
            });
                

        }, function () {
            console.log(err);
        });
/* 
*          Check into creating EXE
*/