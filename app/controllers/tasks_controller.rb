class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :edit, :destroy]
  # before any action call the set_task method to define an id

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path # you need the Prefix, in other words the index page
  end

  def edit
  end

  def update
    @task.update(task_params)
    @task.save
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :status)
    # you say that the params of your task model
    # should only allowed attributes name and status
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
