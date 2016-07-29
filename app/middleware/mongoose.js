'use strict';

const mongoose = require('mongoose');
const uri = process.env.MONGOLAB_URI || 'mongodb://localhost/matt-capstone-project';
mongoose.Promise = global.Promise;
mongoose.connect(uri);

module.exports = mongoose;
