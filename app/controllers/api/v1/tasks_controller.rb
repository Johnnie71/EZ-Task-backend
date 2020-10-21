class Api::V1::TasksController < ApplicationController

    # before_action :find_task, only: [:show, :edit, :update, :destroy]

    def index
        tasks = Task.all 

        render json: tasks, except: [:created_at, :updated_at]

    end

    # def show
    #     @task = Task.find_by(task_params)
    # end
    
    # def new

    # end

    def create
        task = Task.create(task_params)

        render json: task 

    end

    def destroy

        task = Task.find(params[:id])

        task.destroy

        render json: {}

    end

    private
    def task_params
        params.require(:task).permit(:subject, :content)
    end 
    
    # def update

    # end 

    # private

    # def task_params
    #     params.require(:task).permit(:subject, :content, :date, :group, :user_id, :category_id)
    # end

    # def find_task
    #     @task = Task.find(params[:id])
    # end
end
