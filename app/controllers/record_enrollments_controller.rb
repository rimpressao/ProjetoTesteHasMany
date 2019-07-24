class RecordEnrollmentsController < ApplicationController
  before_action :set_record_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /record_enrollments
  # GET /record_enrollments.json
  def index
    @record_enrollments = RecordEnrollment.all
  end

  # GET /record_enrollments/1
  # GET /record_enrollments/1.json
  def show
  end

  # GET /record_enrollments/new
  def new
    @disciplinas = PreEnrollment.first.disciplines_enrollments
    @record_enrollment = RecordEnrollment.new
  end

  # GET /record_enrollments/1/edit
  def edit
    @disciplinas = PreEnrollment.first.disciplines_enrollments
  end

  # POST /record_enrollments
  # POST /record_enrollments.json
  def create
    @record_enrollment = RecordEnrollment.new(record_enrollment_params)

    respond_to do |format|
      if @record_enrollment.save
        format.html { redirect_to @record_enrollment, notice: 'Record enrollment was successfully created.' }
        format.json { render :show, status: :created, location: @record_enrollment }
      else
        format.html { render :new }
        format.json { render json: @record_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_enrollments/1
  # PATCH/PUT /record_enrollments/1.json
  def update
    respond_to do |format|
      if @record_enrollment.update(record_enrollment_params)
        format.html { redirect_to @record_enrollment, notice: 'Record enrollment was successfully updated.' }
        format.json { render :show, status: :ok, location: @record_enrollment }
      else
        format.html { render :edit }
        format.json { render json: @record_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_enrollments/1
  # DELETE /record_enrollments/1.json
  def destroy
    @record_enrollment.destroy
    respond_to do |format|
      format.html { redirect_to record_enrollments_url, notice: 'Record enrollment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_enrollment
      @record_enrollment = RecordEnrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_enrollment_params
      params.require(:record_enrollment).permit(:pre_enrollment_id, :student_id, disciplines_enrollment_ids: [])
    end
end
