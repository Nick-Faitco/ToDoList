class HomeController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @tasks = Task.all
  end
end
