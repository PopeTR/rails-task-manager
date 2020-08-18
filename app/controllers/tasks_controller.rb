class TasksController < ApplicationController

   before_action :set_task, only: [:details, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def details
  end

  def new
    @task = Task.new # needed to instantiate the form_for
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to list_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to list_path(@task)
  end

  def destroy
    @task.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to list_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
