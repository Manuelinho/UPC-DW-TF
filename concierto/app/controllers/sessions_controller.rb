# encoding: UTF-8
class SessionsController < ApplicationController
  def new
  end

  def create
  	usuario = Usuario.validar_login(
  		params[:usuario][:correo],
  		params[:usuario][:contrasena]
  	)

  	if usuario
  		session[:user_id] = usuario.id
  		redirect_to :controller => 'home'
  	else
  		flash[:estado] = FALSE
  		flash[:alerta] = 'Credenciales inválidas'
  		redirect_to login_path
  	end
  end

  def destroy
  		session[:user_id] = nil
  		redirect_to login_path  		
  end    

end
