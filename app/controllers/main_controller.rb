class MainController < ApplicationController
  def index
    count = ChecklistMessage.where("starts_at <= ?", DateTime.now).count
    render :text => "count: #{count}"
  end
end
