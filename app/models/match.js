'use strict';

const mongoose = require('mongoose');

const matchSchema = new mongoose.Schema({
  time: {
    type: String,
    required: true,
  },
  opponent: {
    type: String,
    required: true,
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
  // toJSON: { virtuals: true },
});

// matchSchema.virtual('length').get(function length() {
//   return this.text.length;
// });

const Match = mongoose.model('Match', matchSchema);

module.exports = Match;
