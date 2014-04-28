class SolutionsController < ApplicationController
  def new
    @solution = Solution.new
  end
  def create
     @problem = Problem.find(params[:id])
     @solution = @problem.solutions.create!(solution_params)
     redirect_to @problem
  end

  def solution_params
    params.require(:solution).permit(:body, :user_id)
  end
end
