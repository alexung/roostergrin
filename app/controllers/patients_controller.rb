class PatientsController < ApplicationController
	
	def translate
		text_to_translate = params[:patients][:text_to_translate]
		patient = Patient.find(params[:patients][:patient])
		split_text = params[:patients][:text_to_translate].split(' ')
		
		replaced = split_text.map { |t| t[0] === '@' ? patient[t[1..-1]] : t }
		redirect_to root_path(translated: replaced.join(' '))
	end
	
	private

end