require 'test_helper'

class PreEnrollmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre_enrollment = pre_enrollments(:one)
  end

  test "should get index" do
    get pre_enrollments_url
    assert_response :success
  end

  test "should get new" do
    get new_pre_enrollment_url
    assert_response :success
  end

  test "should create pre_enrollment" do
    assert_difference('PreEnrollment.count') do
      post pre_enrollments_url, params: { pre_enrollment: { date_final: @pre_enrollment.date_final, date_initial: @pre_enrollment.date_initial, semester: @pre_enrollment.semester } }
    end

    assert_redirected_to pre_enrollment_url(PreEnrollment.last)
  end

  test "should show pre_enrollment" do
    get pre_enrollment_url(@pre_enrollment)
    assert_response :success
  end

  test "should get edit" do
    get edit_pre_enrollment_url(@pre_enrollment)
    assert_response :success
  end

  test "should update pre_enrollment" do
    patch pre_enrollment_url(@pre_enrollment), params: { pre_enrollment: { date_final: @pre_enrollment.date_final, date_initial: @pre_enrollment.date_initial, semester: @pre_enrollment.semester } }
    assert_redirected_to pre_enrollment_url(@pre_enrollment)
  end

  test "should destroy pre_enrollment" do
    assert_difference('PreEnrollment.count', -1) do
      delete pre_enrollment_url(@pre_enrollment)
    end

    assert_redirected_to pre_enrollments_url
  end
end
