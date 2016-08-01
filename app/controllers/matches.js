'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Match = models.match;

const authenticate = require('./concerns/authenticate');
//this one shows all matches
const index = (req, res, next) => {
  Match.find()
    .then(matches => res.json({ matches }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  Match.findById(req.params.id)
    .then(match => match ? res.json({ match }) : next())
    .catch(err => next(err));
};

const showUserMatches = (req, res, next) => {
 Match.find({
   _owner: req.params.owner,
 })
   .then(matches => res.json({ matches }))
   .catch(err => next(err));
};

const showOpponentUserMatches = (req, res, next) => {
 Match.find({
   opponentID: req.params.opponentID,
 })
   .then(matches => res.json({ matches }))
   .catch(err => next(err));
};

const create = (req, res, next) => {
  let match = Object.assign(req.body.match, {
    _owner: req.currentUser._id,
  });
  Match.create(match)
    .then(match => res.json({ match }))
    .catch(err => next(err));
};

const update = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Match.findOne(search)
    .then(match => {
      if (!match) {
        return next();
      }

      delete req.body._owner;  // disallow owner reassignment.
      return match.update(req.body.match)
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

const updateOpponentMatch = (req, res, next) => {
  // let search = { _id: req.params.id, _owner: req.currentUser._id };
  let search = { _id: req.params.id };

  Match.findOne(search)
    .then(match => {
      if (!match || match.opponent !== "") {
      // if (!match) {
        return next();
      }

      delete req.body._owner;  // disallow owner reassignment.
      return match.update(req.body.match)
        .then(() => res.sendStatus(200));
    })

    .catch(err => next(err));
};

// const opponentUpdateCancelsMatch = (req, res, next) => {
//   let search = { _id: req.params.id, _owner: req.currentUser._id };
//   Match.findOne(search)
//     .then(match => {
//       if (!match) {
//         return next();
//       }
//
//       delete req.body._owner;  // disallow owner reassignment.
//       return match.update(req.body.match)
//         .then(() => res.sendStatus(200));
//     })
//     .catch(err => next(err));
// };


const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Match.findOne(search)
    .then(match => {
      if (!match) {
        return next();
      }

      return match.remove()
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy,
  showUserMatches,
  showOpponentUserMatches,
  updateOpponentMatch,
}, { before: [
  { method: authenticate, except: ['index', 'show', ] },
], });
