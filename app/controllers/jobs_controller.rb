class JobsController < ApplicationController

    def index
        @jobs = Job.where user_id: current_user.id
    end

    def new
    end

    def create
        #render plain: params[:job].inspect
        #@job = Job.new job_params

        @job = current_user.jobs.new job_params

        @job.save

        redirect_to @job
    end

    def show
        @job = Job.find params[:id]
    end

    private
    def job_params
        params.require(:job).permit :name, :description, :paymentAmount, :ubication
    
    end

end
