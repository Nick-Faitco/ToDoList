class HomeController < ApplicationController
  def index
    @tasks = Task.order(created_at: :desc)

    if params[:query].present?
      query = "%#{params[:query].downcase}%"
      @tasks = Task.where("LOWER(title) LIKE ? OR LOWER(description) LIKE ?", query, query)
    end

    if params[:status].present?
      status_value = AppConstants::STATUS[params[:status].to_sym]
      @tasks = @tasks.where(completion_status: status_value) if status_value
    end
  end

  def show
  end
end
