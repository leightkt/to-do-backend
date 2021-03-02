class TodosController < ApplicationController
    before_action :find_todo, only: [:update, :destroy]

    def index
        @todos = Todo.all
        render json: @todos
    end

    def create
        @todo = Todo.create(todo_params)
        render json: @todo, status: :created
    end

    def update
        @todo.update(todo_params)
        render json: @todo, status: :ok
    end

    def destroy
        @todo.destroy
        render status: :no_content
    end

    private

    def find_todo
        @todo = Todo.find(params[:id])
    end

    def todo_params
        params.require(:todo).permit(:title, :content, :urgent, :done, :user_id)
    end
end
