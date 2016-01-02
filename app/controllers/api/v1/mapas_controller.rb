module Api
	module V1
		class MapasController < ActionController::Base
		  respond_to :json

		  # GET /mapas/1.json
		  def show
		  	@currentMap = Mapa.find_by_currentMap(true)
		  	if @currentMap
		  		respond_with @currentMap.mapa
		  	else
		  		respond_with @currentMap
		  	end
		  end
		end
	end
end
