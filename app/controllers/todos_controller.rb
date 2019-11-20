class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
    @message = completed_message(@todo)
  end

  private

  def completed_message(todo)
    todo.completed ? 'This task is completed' : 'This task is not completed yet'
  end
end
