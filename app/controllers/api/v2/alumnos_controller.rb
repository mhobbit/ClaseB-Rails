module Api
  module V2
    class AlumnosController < ActionController::Base
      before_filter :restrict_access
      respond_to :json

      # POST /alumnos
      # POST /alumnos.json
      def create
        @alumno = Alumno.search(params[:rut])

        if @alumno
          respond_with @alumno

        else
          @alumno = Alumno.new(alumno_params)

          if @alumno.save
            respond_with @alumno
          else
            render json: @alumno.errors, status: :unprocessable_entity
          end
        end

      end

      private
        # Never trust parameters from the scary internet, only allow the white list through.
        def alumno_params
          params.require(:alumno).permit(:rut, :nombre, :apellido)
        end
        def restrict_access
          authenticate_or_request_with_http_token do |token, options|
            ApiKey.exists?(key: token)
          end
        end
    end
  end
end