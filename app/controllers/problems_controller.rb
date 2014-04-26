class ProblemsController < ApplicationController
  def index
    @problem = Problem.all
  end

  def show
    @problem = Problem.find(params[:id])
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

  def problem_params
    params.require(:problem).permit(:name, :description, :url)
  end
end
