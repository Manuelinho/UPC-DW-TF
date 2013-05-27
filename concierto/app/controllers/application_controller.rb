class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def verificar_login
  	if !session[:user_id]
  		flash[:estado] = FALSE
  		flash[:alerta] = 'Necesita estar logueado'

  		redirect_to login_path
  	else
  		@usuario = Usuario.find(session[:user_id])
  		$nombre_usuario = @usuario.nombres
  	end
  end
end
