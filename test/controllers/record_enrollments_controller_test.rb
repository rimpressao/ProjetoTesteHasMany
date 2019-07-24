require 'test_helper'

class RecordEnrollmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record_enrollment = record_enrollments(:one)
  end

  test "should get index" do
    get record_enrollments_url
    assert_response :success
  end

  test "should get new" do
    get new_record_enrollment_url
    assert_response :success
  end

  test "should create record_enrollment" do
    assert_difference('RecordEnrollment.count') do
      post record_enrollments_url, params: { record_enrollment: { pre_enrollment_id: @record_enrollment.pre_enrollment_id, student_id: @record_enrollment.student_id } }
    end

    assert_redirected_to record_enrollment_url(RecordEnrollment.last)
  end

  test "should show record_enrollment" do
    get record_enrollment_url(@record_enrollment)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_enrollment_url(@record_enrollment)
    assert_response :success
  end

  test "should update record_enrollment" do
    patch record_enrollment_url(@record_enrollment), params: { record_enrollment: { pre_enrollment_id: @record_enrollment.pre_enrollment_id, student_id: @record_enrollment.student_id } }
    assert_redirected_to record_enrollment_url(@record_enrollment)
  end

  test "should destroy record_enrollment" do
    assert_difference('RecordEnrollment.count', -1) do
      delete record_enrollment_url(@record_enrollment)
    end

    assert_redirected_to record_enrollments_url
  end
end
