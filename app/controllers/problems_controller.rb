class ProblemsController < ApplicationController
  include Concerns::Votes
  def index
    @problems = Problem.all
  end

  def show
    @problem = find_problem
  end

  def new
    @problem = Problem.new
  end

  def edit
    @problem = find_problem
  end

  def create
     @problem = current_user.problems.new(problem_params)
     @problem.save
     flash[:notice] = "Problem Added!"
     redirect_to @problem
  end

  def update
    @problem = find_problem
      if @problem.update_attributes(problem_params)
        flash[:notice] = "Problem Updated!"
        redirect_to @problem
      else
        redirect_to @problem
      end
  end

  private

  def find_problem
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(:name, :description, :url)
  end
end
