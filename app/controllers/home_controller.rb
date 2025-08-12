class HomeController < ApplicationController
  def index
    @tasks = [ { "name" => "Alice", "task" => "Pick up dog from groomer" }, { "name" => "Tom", "task" => "fold laundry" } ]
  end
end
