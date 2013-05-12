class HomeController < ApplicationController
  def index
    @chann = Cadena.all

  end
end
