class PagesController < ApplicationController

	def index
		agora = Time.new(2016, 7, 25, 0, 0, 0, "-03:00")
		@saudacao_teste = saudacao()
	end

	def helpers
		
	end


	private
		def saudacao(tempo=Time.now)
			hora = tempo.hour
			minuto = tempo.min
			segundo = tempo.sec
			case hora
				when 0...6   then "Boa madrugada, agora são #{hora} horas, #{minuto} minutos e #{segundo} segundos."
				when 6...12  then "Bom dia, agora são #{hora} horas, #{minuto} minutos e #{segundo} segundos."
				when 12...18 then "Boa tarde, agora são #{hora} horas, #{minuto} minutos e #{segundo} segundos."
				when 18..23  then "Boa noite, agora são #{hora} horas, #{minuto} minutos e #{segundo} segundos."
			end

			
		end

end