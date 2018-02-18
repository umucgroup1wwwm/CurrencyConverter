/* 
 * Requires Node JS and npm library 'table-scraper'
 * Using Node JS version 8.9.4
 * npm install table-scraper

 */
const scraper = require('table-scraper');


// Default error
const err = "Error downloading current exchange rates. Check connection and try again";
// Using Table Scraper library go to page with current exchange rates and download the table
scraper
        .get('http://www.x-rates.com/table/?from=USD&amount=1')
        .then(function (tableData) {
            var table = tableData[1];
            var countryList = [];
            var exchangeRate = [];

            // Iterate through the table and retrieve all values 
            for (var i = 0; i < table.length; ++i) {

                countryList.push(table[i]["US Dollar"]);
                exchangeRate.push(parseFloat(table[i]["1.00 USD"]));
            }
            // Verify that all the information has been scraped successfully
                console.log('Data received from Db:\n');

                console.log(countryList);
                console.log(exchangeRate);
                
             /* 
             * TO DO:
             *          ADD SOME VARIABLE ERROR CHECKING
             *          CURRENTLY OUTPUTS BLANKET ERROR STATEMENT
             */
        }, function () {
            console.log(err);
        });
