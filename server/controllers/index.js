var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      models.messages.get(function(err, data) {
        if (err) {
        // res.writeHead(404, headers);
          console.log('error did not GET from db'); 
        }
        console.log('data from db on GET', data);
        // res.JSON(data);

        res.end();     
      }); 
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      
       
  
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};


// var headers = {
  
// }