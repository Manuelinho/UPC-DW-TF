class HomeController < ApplicationController
  before_filter :verificar_login, :only => [:index]

  def index
  end
end
