require 'test_helper'

class InfectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infection = infections(:one)
  end

  test "should get index" do
    get infections_url
    assert_response :success
  end

  test "should get new" do
    get new_infection_url
    assert_response :success
  end

  test "should create infection" do
    assert_difference('Infection.count') do
      post infections_url, params: { infection: { name: @infection.name, patient_id: @infection.patient_id } }
    end

    assert_redirected_to infection_url(Infection.last)
  end

  test "should show infection" do
    get infection_url(@infection)
    assert_response :success
  end

  test "should get edit" do
    get edit_infection_url(@infection)
    assert_response :success
  end

  test "should update infection" do
    patch infection_url(@infection), params: { infection: { name: @infection.name, patient_id: @infection.patient_id } }
    assert_redirected_to infection_url(@infection)
  end

  test "should destroy infection" do
    assert_difference('Infection.count', -1) do
      delete infection_url(@infection)
    end

    assert_redirected_to infections_url
  end

  test "shouldn't update infection without an name" do
    patch infection_url(@infection), params: {infection: {name: nil, patient_id: @infection.patient_id}}
    assert_response :success
    assert_select "#error_explanation > h2", "1 error prohibited this infection from being saved:"
    assert_select "li", "Name can't be blank"
  end

  test "shouldn't create a infection without a name" do
    post infections_url, params: {infection: {patient_id: @infection.patient_id}}
    assert_response :success
    assert_select "#error_explanation > h2", "1 error prohibited this infection from being saved:"
    assert_select "li", "Name can't be blank"
  end
end
