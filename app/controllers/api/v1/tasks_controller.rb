class Api::V1::TasksController < ApplicationController

    # before_action :find_task, only: [:show, :edit, :update, :destroy]

    def index
        tasks = Task.all.sort_by {|task| task.subject}

        render json: tasks, except: [:created_at, :updated_at, :user_id, :category_id]     
    

    end


    def create
        task = Task.create!(task_params)

        render json: task 
    end

    def update
        task = Task.find(params[:id])
        
        task.update!(task_params)

        render json:{}
    end 

    def destroy

        task = Task.find(params[:id])

        task.destroy

        render json: {}

    end

    private
    def task_params
        params.require(:task).permit(:subject, :content, :user_id, :category_id)
    end 
    

end
