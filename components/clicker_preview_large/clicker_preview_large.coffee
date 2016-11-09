angular.module('loomioApp').directive 'clickerPreviewLarge', ->
  scope: {proposal: '='}
  restrict: 'E'
  templateUrl: 'generated/components/clicker_preview_large/clicker_preview_large.html'
  replace: true
  controller: ($scope) ->
