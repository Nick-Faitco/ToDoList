class HomeController < ApplicationController
  before_action :set_task, only: [ :edit, :update, :destroy ]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end
  def create
    @task = Task.new(task_params)
    if @task.saveredirect_to @task, notice: "Task was successfully created."
    else
      render :new
    end
  end
  def edit
  end

  def update
    byebug
    puts @task
    if @task.update(task_params)
      redirect_to home_index_path, notice: "Task was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to home_index_path, notice: "Taske was successfully destroyed."
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :completed_status)
    end
end
