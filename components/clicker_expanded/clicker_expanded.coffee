angular.module('loomioApp').directive 'clickerExpanded', ->
  scope: {proposal: '='}
  restrict: 'E'
  templateUrl: 'generated/components/clicker_expanded/clicker_expanded.html'
  replace: true
  controller: ($scope, Records, Session, FormService) ->
    $scope.vote = Records.votes.build(
      proposalId: $scope.proposal.id,
      userId: Session.user().id,
      kind: $scope.proposal.kind
    )

    $scope.submit = FormService.submit $scope, $scope.vote,
      flashSuccess: 'vote_form.messages.created'

    $scope.yourVote = ->
      $scope.proposal.lastVoteByUser(Session.user())
