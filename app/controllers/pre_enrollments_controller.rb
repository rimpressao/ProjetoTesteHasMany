class PreEnrollmentsController < ApplicationController
  before_action :set_pre_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /pre_enrollments
  # GET /pre_enrollments.json
  def index
    @pre_enrollments = PreEnrollment.all
  end

  # GET /pre_enrollments/1
  # GET /pre_enrollments/1.json
  def show
  end

  # GET /pre_enrollments/new
  def new
    @pre_enrollment = PreEnrollment.new
    @pre_enrollment.disciplines_enrollments.build
  end

  # GET /pre_enrollments/1/edit
  def edit
  end

  # POST /pre_enrollments
  # POST /pre_enrollments.json
  def create
    @pre_enrollment = PreEnrollment.new(pre_enrollment_params)

    respond_to do |format|
      if @pre_enrollment.save
        format.html { redirect_to @pre_enrollment, notice: 'Pre enrollment was successfully created.' }
        format.json { render :show, status: :created, location: @pre_enrollment }
      else
        format.html { render :new }
        format.json { render json: @pre_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_enrollments/1
  # PATCH/PUT /pre_enrollments/1.json
  def update
    respond_to do |format|
      if @pre_enrollment.update(pre_enrollment_params)
        format.html { redirect_to @pre_enrollment, notice: 'Pre enrollment was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre_enrollment }
      else
        format.html { render :edit }
        format.json { render json: @pre_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_enrollments/1
  # DELETE /pre_enrollments/1.json
  def destroy
    @pre_enrollment.destroy
    respond_to do |format|
      format.html { redirect_to pre_enrollments_url, notice: 'Pre enrollment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_enrollment
      @pre_enrollment = PreEnrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_enrollment_params   
      params.require(:pre_enrollment).permit(:semester, :date_initial, :date_final, disciplines_enrollments_attributes: [:id, :name, :code, :category, :_destroy])
    end
end
