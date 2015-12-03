module Api
	module V1
		class EstadisticasController < ActionController::Base
		  before_action :set_estadistica, only: [:show, :edit, :update, :destroy]
		  respond_to :json

		  # GET /estadisticas.json
		  def index
		  	respond_with Estadistica.all
		  end

		  # GET /estadisticas/1.json
		  def show
		  	respond_with @estadistica
		  end

		  # POST /estadisticas.json
		  def create
			  @estadistica = Estadistica.new(estadistica_params)

				@estadistica.velocidad = params[:velocidad]
				@estadistica.tiempoVelocidad = params[:tiempoVelocidad]
				@estadistica.velocidadMedia = params[:velocidadMedia]
				@estadistica.velocidadMaxima = params[:velocidadMaxima]
				@estadistica.velocidadMinima = params[:velocidadMinima]
				@estadistica.ruta = params[:ruta]
				@estadistica.cambiosVelocidad = params[:cambiosVelocidad]
				@estadistica.cambiosRpm = params[:cambiosRpm]
				@estadistica.alumno_id = params[:alumno_id]
				@estadistica.tiempoCarril = params[:tiempoCarril]
				@estadistica.tiempoFueraCarril = params[:tiempoFueraCarril]


		    if @estadistica.save
			    respond_with @estadistica
			  else
			  	render json: @estadistica.errors, status: :unprocessable_entity
		    end
		    
		  end

		    # Never trust parameters from the scary internet, only allow the white list through.
		    def estadistica_params
		      params.require(:estadistica).permit(:velocidad, :tiempoVelocidad, :velocidadMedia, :velocidadMaxima, :velocidadMinima, :ruta, :cambiosVelocidad, :cambiosRpm, :alumno_id, :tiempoCarril, :tiempoFueraCarril)
		    end
		end
	end
end
