class TaskmanagersController < ApplicationController
  def index
    tasks = Taskmanager.all
    render json: tasks.to_json, status: 200
  end
end
