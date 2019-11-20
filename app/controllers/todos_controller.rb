class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
    @message = completed_message(@todo)
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save

    redirect_to todo_path(@todo)
  end

  private

  def completed_message(todo)
    todo.completed ? 'This task is completed' : 'This task is not completed yet'
  end

  def todo_params
    params.require(:todo).permit(:title, :details)
  end
end
