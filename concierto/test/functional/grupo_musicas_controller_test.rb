require 'test_helper'

class GrupoMusicasControllerTest < ActionController::TestCase
  setup do
    @grupo_musica = grupo_musicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupo_musicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo_musica" do
    assert_difference('GrupoMusica.count') do
      post :create, grupo_musica: { alumno: @grupo_musica.alumno, estilo_musica_id: @grupo_musica.estilo_musica_id, nombre: @grupo_musica.nombre }
    end

    assert_redirected_to grupo_musica_path(assigns(:grupo_musica))
  end

  test "should show grupo_musica" do
    get :show, id: @grupo_musica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupo_musica
    assert_response :success
  end

  test "should update grupo_musica" do
    put :update, id: @grupo_musica, grupo_musica: { alumno: @grupo_musica.alumno, estilo_musica_id: @grupo_musica.estilo_musica_id, nombre: @grupo_musica.nombre }
    assert_redirected_to grupo_musica_path(assigns(:grupo_musica))
  end

  test "should destroy grupo_musica" do
    assert_difference('GrupoMusica.count', -1) do
      delete :destroy, id: @grupo_musica
    end

    assert_redirected_to grupo_musicas_path
  end
end
