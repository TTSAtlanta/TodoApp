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

  def create
    @task = Task.new(task_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to task_path(@task) }
      end
    end
  end

  	private
  def task_params
    params.require(:task).permit(:name, :priority, :due_date, :user_id)
  end
  
  def set_task 
    @task = Task.find(params[:id])
  end

end
