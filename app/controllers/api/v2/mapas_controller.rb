module Api
	module V2
		class MapasController < ActionController::Base
		  before_filter :restrict_access
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
		  private
		  	def restrict_access
		  	  authenticate_or_request_with_http_token do |token, options|
		  	    ApiKey.exists?(key: token)
		  	  end
		  	end

		end
	end
end
