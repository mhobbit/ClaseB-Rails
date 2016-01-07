class DashboardController < ApplicationController
  def index
  	@estadisticasTotales = Estadistica.all.count
  	@alumnosTotales = Alumno.all.count
  	@usuariosTotales = User.all.count
  	@keysTotales = ApiKey.all.count
  end
end
