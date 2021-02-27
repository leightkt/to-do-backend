class TodosController < ApplicationController

    def index
        @todos = Todo.all
        render json: @todos
    end

    def create
        @todo = Todo.create(
            title: params[:title],
            content: params[:content],
            urgent: params[:urgent],
            done: params[:done]
        )
        render json: @todo, status: :created
    end

    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        render status: :no_content
    end
end
