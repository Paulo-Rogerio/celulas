require 'test_helper'

class LideresControllerTest < ActionController::TestCase
  setup do
    @lider = lideres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lideres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lider" do
    assert_difference('Lider.count') do
      post :create, lider: { Bairro: @lider.Bairro, Cidade: @lider.Cidade, Endereco: @lider.Endereco, Estado: @lider.Estado, celular: @lider.celular, cpf: @lider.cpf, discipulador: @lider.discipulador, nome: @lider.nome, residencial: @lider.residencial, telefone: @lider.telefone }
    end

    assert_redirected_to lider_path(assigns(:lider))
  end

  test "should show lider" do
    get :show, id: @lider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lider
    assert_response :success
  end

  test "should update lider" do
    patch :update, id: @lider, lider: { Bairro: @lider.Bairro, Cidade: @lider.Cidade, Endereco: @lider.Endereco, Estado: @lider.Estado, celular: @lider.celular, cpf: @lider.cpf, discipulador: @lider.discipulador, nome: @lider.nome, residencial: @lider.residencial, telefone: @lider.telefone }
    assert_redirected_to lider_path(assigns(:lider))
  end

  test "should destroy lider" do
    assert_difference('Lider.count', -1) do
      delete :destroy, id: @lider
    end

    assert_redirected_to lideres_path
  end
end
