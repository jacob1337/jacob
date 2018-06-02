var request = require('request');
var headers = {
  "Content-Type": "application/json"
}

var options = {
  url: "WEBHOOK_URL",
  method:  "POST",
  headers: headers,
  form: {"content": "@everyone lol",
         "username": "lol",
         "avatar_url": "https://roblox.com/jpg"}
}

var interval = 10 * 35; //
for (var x = 0; x < 100; x+=1) {
  setTimeout( function (x) {
    request(options, function(error, body){
      if (error) console.log("Webhook is invalid");
    })
  }, interval * x, x);
}
