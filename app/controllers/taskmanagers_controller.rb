class TaskmanagersController < ApplicationController

  def index
    tasks = Taskmanager.all
    respond_to do |f|
      f.html do
        render template: "layouts/index.html.erb", locals: { tasks: tasks }
      end
      f. json do
        render json: tasks.to_json, status: 200
      end
    end
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

  def destroy
    Taskmanager.find(params[:id]).destroy
    render json: { msg: "Congratulations you have deleted the entire database!" }.to_json, status: 200
  end

  def create
    new_task = Taskmanager.create({ task: params[:body]})
    render json: new_task, status: 200
  end

  def update
    update_task_status = Taskmanager.update(params[:id], completed: params[:completed])
    render json: update_task_status, status: 200
  end

end
