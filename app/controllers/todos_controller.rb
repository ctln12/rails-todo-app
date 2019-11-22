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

    redirect_to todos_path
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)

    redirect_to "/todos/#{params[:id]}"
  end

  def delete
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todos_path
  end

  private

  def completed_message(todo)
    todo.completed ? 'This task is completed' : 'This task is not completed yet'
  end

  def todo_params
    params.require(:todo).permit(:title, :details, :completed)
  end
end
