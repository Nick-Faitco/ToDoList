class HomeController < ApplicationController
 
  def index
    @tasks = Task.order(created_at: :desc)
  end

  def show
  end
end
