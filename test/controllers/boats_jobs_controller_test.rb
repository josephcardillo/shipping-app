require 'test_helper'

class BoatsJobsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get boats_jobs_new_url
    assert_response :success
  end

  test "should get create" do
    get boats_jobs_create_url
    assert_response :success
  end

  test "should get edit" do
    get boats_jobs_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get boats_jobs_destroy_url
    assert_response :success
  end

  test "should get show" do
    get boats_jobs_show_url
    assert_response :success
  end

  test "should get update" do
    get boats_jobs_update_url
    assert_response :success
  end

end
