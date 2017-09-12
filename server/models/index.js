var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      var query = 'SELECT * FROM messages'; 
      db.query(query, function(err, data) {
        if (err) {
          callback(err);
        } else {
          callback(null, data);
        }
      });   
    }, // a function which produces all the messages
    post: function (callback) {
    //   var insert = "INSERT INTO chats (users, messages, rooms) VALUES (?, ?, ?)";// a function which can be used to insert a message into the database
    //   db.query(insert, function(err, results) {
    //   if (err)  {
    //     callback(err);
    //   } else {
    //     callback(null, results);  
    //   }
    // });
    }
  },
  users: {
    // Ditto as above.
    get: function (callback) {
      // var query = 'SELECT '
    },
    post: function () {}
  }
};