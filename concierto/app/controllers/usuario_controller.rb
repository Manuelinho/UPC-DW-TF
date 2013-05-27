class UsuarioController < ApplicationController
  before_filter :verificar_login, :only => [:registro]

  def login
  end

  def registro
    @usuario = Usuario.new

    respond_to do |format|
      format.html # new.html.erb
    end    
  end

  def create
    @usuario = Usuario.new(params[:usuario])

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: 'Usuario was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

end
