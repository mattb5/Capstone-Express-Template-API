'use strict';

module.exports = require('lib/wiring/routes')

// create routes

// what to run for `GET /`
.root('root#root')

// standards RESTful routes
.resources('examples')
.resources('matches')

//
.get('/owner_matches/:owner', 'matches#showUserMatches')
.get('/opponent_matches/:opponentID', 'matches#showOpponentUserMatches')
.patch('/matches-update/:id', 'matches#updateOpponentMatch')
// users of the app have special requirements
.post('/sign-up', 'users#signup')
.post('/sign-in', 'users#signin')
.delete('/sign-out/:id', 'users#signout')
.patch('/change-password/:id', 'users#changepw')
.resources('users', { only: ['index', 'show'] })

// all routes created
;
