class TaskmanagersController < ApplicationController

  def index
    tasks = Taskmanager.all
    render json: tasks.to_json, status: 200
  end

  def show
    if Taskmanager.exists?(params[:id])
      task = Taskmanager.find(params[:id])
      render json: task.to_json, status: 200
    else
      render json: { error_msg: "Record not found!", id: params[:id] }.to_json, status: 404
    end
  end

  def new
    render json: Taskmanager.new(task: "").to_json, status: 200
  end
end
