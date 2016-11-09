module Votes
  class Clicker < Vote
    after_create :update_vote_counts!
    after_destroy :update_vote_counts!

    private

    def update_vote_counts!
      motion.update(yes_votes_count: motion.unique_votes.count) if motion&.discussion
    end
  end
end
