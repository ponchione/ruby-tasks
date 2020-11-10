class TaskItemsController < ApplicationController
  before_action :set_task_list

  def create
    @task_item = @task_list.task_items.create(task_item_params)
    redirect_to @task_list
  end

  private

  def set_task_list
    @task_list = TaskList.find(params[:task_list_id])
  end

  def task_item_params
    params[:task_item].permit(:title)
  end

end
