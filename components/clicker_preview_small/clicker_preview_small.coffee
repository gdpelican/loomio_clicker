angular.module('loomioApp').directive 'clickerPreviewSmall', ->
  scope: {proposal: '='}
  restrict: 'E'
  templateUrl: 'generated/components/clicker_preview_small/clicker_preview_small.html'
  replace: true
  controller: ($scope) ->
