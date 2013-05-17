require 'test_helper'

class LivrosControllerTest < ActionController::TestCase
  setup do
    @livro = livros(:one)
    @livro.autore_id = autores(:one).id
    @livro.disciplina_id = disciplinas(:one).id
    @livro.editora_id = editoras(:one).id
    @livro.user_id = users(:one).id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livros)
  end

  test "should get new" do
    sign_in users(:one)
    get :new
    assert_response :success
  end

  test "should create livro" do
    sign_in users(:one)
    assert_difference('Livro.count') do
      post :create, livro: { ano_escolaridade: @livro.ano_escolaridade, autore_id: @livro.autore_id, disciplina_id: @livro.disciplina_id, user_id: @livro.user_id, editora_id: @livro.editora_id, nome: @livro.nome, preco: @livro.preco }
    end

    assert_redirected_to livro_path(assigns(:livro))
  end

  test "should show livro" do
    get :show, id: @livro
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get :edit, id: @livro
    assert_response :success
  end

  test "should update livro" do
    sign_in users(:one)
    put :update, id: @livro, livro: { ano_escolaridade: @livro.ano_escolaridade, autore_id: @livro.autore_id, editora_id: @livro.editora_id, nome: @livro.nome, preco: @livro.preco }
    assert_redirected_to livro_path(assigns(:livro))
  end

  test "should destroy livro" do
    sign_in users(:one)
    assert_difference('Livro.count', -1) do
      delete :destroy, id: @livro
    end

    assert_redirected_to livros_path
  end
end
