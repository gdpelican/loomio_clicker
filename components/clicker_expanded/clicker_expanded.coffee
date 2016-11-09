angular.module('loomioApp').directive 'clickerExpanded', ->
  scope: {proposal: '='}
  restrict: 'E'
  templateUrl: 'generated/components/clicker_expanded/clicker_expanded.html'
  replace: true
  controller: ($scope) ->
