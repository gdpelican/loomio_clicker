module Plugins
  module LoomioClicker
    class Plugin < Plugins::Base
      setup! :loomio_clicker do |plugin|
        plugin.enabled = true
        plugin.use_class 'app/models/votes/clicker'
        plugin.use_view_path 'app/views', controller: ThreadMailer
        plugin.register_proposal_kind :clicker,
          proposal:        :clicker_expanded,
          vote_form:       :clicker_vote_field,
          preview_large:   :clicker_preview_large,
          preview_small:   :clicker_preview_small
        plugin.use_component :proposal_positions_panel
        plugin.use_component :position_buttons_panel
      end
    end
  end
end
