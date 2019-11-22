class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
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

  def edit; end

  def update
    @todo.update(todo_params)

    redirect_to "/todos/#{params[:id]}"
  end

  def destroy
    @todo.destroy

    redirect_to todos_path
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def completed_message(todo)
    todo.completed ? 'This task is completed' : 'This task is not completed yet'
  end

  def todo_params
    params.require(:todo).permit(:title, :details, :completed)
  end
end
