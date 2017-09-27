class TasksController < ApplicationController
  layout "application"
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @ascending = params[:ascending]
    @sort_direction =  "ASC"
    if @ascending == false
       @sort_direction = "DESC"
    end
    @tasks = Task.sorted(direction: @sort_direction)
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new(:user_id => current_user.id)
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    if @task.save!
      flash.now[:notice] = 'Task was successfully created.'
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        flash.now[:notice] = 'Task was successfully updated.'
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to action: "index", notice: 'Task was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name,
                                  :description,
                                  :due_date,
                                  :link,
                                  :attachment,
                                  :context_id,
                                  :review_period_id,
                                  :priority_id,
                                  :project_phase_id,
                                  :status_id,
                                  :user_id)
    end
end
