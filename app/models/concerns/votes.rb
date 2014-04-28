module Concerns
  module Votes
    def up_vote
      @problem = find_problem
      @problem.liked_by current_user
      flash[:notice] = "Thanks for voting #{current_user.name}"
      redirect_to @problem
    end

    def down_vote
      @problem = find_problem
      @problem.downvote_from current_user
      flash[:notice] = "Thanks for voting #{current_user.name}"
      redirect_to @problem
    end
  end
end
