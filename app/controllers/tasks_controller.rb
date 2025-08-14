class TasksController < ApplicationController
  before_action :set_task, only: [ :edit, :update, :destroy ]
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to home_index_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
        redirect_to home_index_path
    else
      render :edit, notice: "Task failed."
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to home_index_path
  end

  private
  def set_task
    @task = Task.find_by("id" => params[:id])
  end

  def task_params
    params.require(:task).permit(:id, :title, :description, :completion_status, :completed_date)
  end
end
