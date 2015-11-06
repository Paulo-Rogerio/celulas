require 'test_helper'

class DiscipuladoresControllerTest < ActionController::TestCase
  setup do
    @discipulador = discipuladores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipuladores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipulador" do
    assert_difference('Discipulador.count') do
      post :create, discipulador: { bairro: @discipulador.bairro, cidade: @discipulador.cidade, cpf: @discipulador.cpf, endereco: @discipulador.endereco, estado: @discipulador.estado, fone_celular: @discipulador.fone_celular, fone_residencial: @discipulador.fone_residencial, nome: @discipulador.nome }
    end

    assert_redirected_to discipulador_path(assigns(:discipulador))
  end

  test "should show discipulador" do
    get :show, id: @discipulador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discipulador
    assert_response :success
  end

  test "should update discipulador" do
    patch :update, id: @discipulador, discipulador: { bairro: @discipulador.bairro, cidade: @discipulador.cidade, cpf: @discipulador.cpf, endereco: @discipulador.endereco, estado: @discipulador.estado, fone_celular: @discipulador.fone_celular, fone_residencial: @discipulador.fone_residencial, nome: @discipulador.nome }
    assert_redirected_to discipulador_path(assigns(:discipulador))
  end

  test "should destroy discipulador" do
    assert_difference('Discipulador.count', -1) do
      delete :destroy, id: @discipulador
    end

    assert_redirected_to discipuladores_path
  end
end
