angular.module('loomioApp').directive 'clickerVoteField', ->
  scope: {vote: '='}
  restrict: 'E'
  templateUrl: 'generated/components/clicker_vote_field/clicker_vote_field.html'
  replace: true
