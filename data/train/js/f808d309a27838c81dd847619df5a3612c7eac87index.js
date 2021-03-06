angular.module('voteApp')
    .controller('changeCardController', require('./changeCardCtrl'))
    .controller('createElectionController', require('./createElectionCtrl'))
    .controller('createUserController', require('./createUserCtrl'))
    .controller('deactivateUsersController', require('./deactivateUsersCtrl'))
    .controller('editElectionController', require('./editElectionCtrl'))
    .controller('electionController', require('./electionCtrl'))
    .controller('electionsController', require('./electionsCtrl'))
    .controller('logoutController', require('./logoutCtrl'))
    .controller('retrieveVoteController', require('./retrieveVoteCtrl'))
    .controller('toggleUserController', require('./toggleUserController'));
