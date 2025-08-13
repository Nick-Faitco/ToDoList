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
      redirect_to @task, notice: "Task was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    # byebug
    @task = Task.find(params[:id])
    if @task.update(task_params)
      byebug
      redirect_to home_index_path, notice: "Task was successfully updated."
    else
      byepug
      render :edit, notice: "Task failed."
    end
  end

  def destroy
    @task.destroy
    redirect_to home_index_path, notice: "Taske was successfully destroyed."
  end

  private
  def set_task
    @task = Task.find_by("id" => params[:id])
  end

  def task_params
    params.require(:task).permit(:id, :title, :description, :completion_status)
  end
end
