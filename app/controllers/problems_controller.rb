class ProblemsController < ApplicationController
  include Concerns::Votes

  def index
    @problem = Problem.all
  end

  def show
    @problem = find_problem
  end

  def new
    @problem = Problem.new
  end

  def create
     @problem = current_user.problems.new(problem_params)
     @problem.save
     redirect_to @problem
  end

  private

  def find_problem
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(:name, :description, :url)
  end
end
