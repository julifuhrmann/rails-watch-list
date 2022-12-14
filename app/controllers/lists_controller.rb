class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show; end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end



# before_action :set_task, only: [:show, :edit, :update, :destroy]

#   def new
#     @task = Task.new
#   end

#   def create
#     @task = Task.new(task_params)
#     @task.save

#     redirect_to task_path(@task)
#   end

#   def edit; end

#   def update
#     @task.update(task_params)
#     redirect_to task_path(@task)
#   end

#   def destroy
#     @task.destroy
#     redirect_to task_path, status: :see_other
#   end

#   private

#   def set_task
#     @task = Task.find(params[:id])
#   end

#   def task_params
#     params.require(:task).permit(:title, :details, :completed)
#   end
# end
