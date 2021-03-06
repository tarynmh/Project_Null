// followed from tutorial:
// https://medium.com/@timtamimi/getting-started-with-authentication-in-node-js-with-passport-and-postgresql-2219664b568c

//define variables and prerequisites
var express = require('express');
require(?dotenv?).config();
const PORT = process.env.PORT || 5000; //for webapp
var flash = require(?connect - flash?);
var passport = require(?passport?);
var request = require(?request?);
var session = require(?express - session?);
var app = express();
var bodyParser = require(?body - parser?);
var path = require(?path?);


//initialize the components the app is going to use
app.use(require(?cookie - parser?)());
app.use(require(?body - parser?).urlencoded({ extended: true }));
const expressSession = require(?express - session?);
app.use(expressSession({ secret: ?mySecretKey? }));
app.use(passport.initialize());
app.use(passport.session());
app.use(?/public?, express.static(__dirname + ?/public?));
app.use(flash());
app.use(session({ secret: ?keyboard cat? }))
app.use(bodyParser());
app.set(?view engine?, ?pug?);
app.set(?view options?, { layout: false });
require(?./lib/routes.js?)(app);