class ProjectPhasesController < ApplicationController
  before_action :set_project_phase, only: [:show, :edit, :update, :destroy]

  # GET /project_phases
  # GET /project_phases.json
  def index
    @project_phases = ProjectPhase.all
  end

  # GET /project_phases/1
  # GET /project_phases/1.json
  def show
  end

  # GET /project_phases/new
  def new
    @project_phase = ProjectPhase.new
  end

  # GET /project_phases/1/edit
  def edit
  end

  # POST /project_phases
  # POST /project_phases.json
  def create
    @project_phase = ProjectPhase.new(project_phase_params)

    respond_to do |format|
      if @project_phase.save
        format.html { redirect_to action: "index", notice: 'Project phase was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /project_phases/1
  # PATCH/PUT /project_phases/1.json
  def update
    respond_to do |format|
      if @project_phase.update(project_phase_params)
        format.html { redirect_to action: "index", notice: 'Project phase was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /project_phases/1
  # DELETE /project_phases/1.json
  def destroy
    @project_phase.destroy
    respond_to do |format|
      format.html { redirect_to action: "index", notice: 'Project phase was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_phase
      @project_phase = ProjectPhase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_phase_params
      params.require(:project_phase).permit(:name,
                                            :description,
                                            :project_id)
    end
end
