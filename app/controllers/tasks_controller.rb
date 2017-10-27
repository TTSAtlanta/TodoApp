class TasksController < ApplicationController
	before_action :set_task, only: [:show, :edit, :update, :destroy]

	def index
		@tasks = Task.all
	end

	def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
  	@task = Task.find(params[:id])
  end

  	private
  
  def set_task 
    @task = Task.find(params[:id])
  end

end
