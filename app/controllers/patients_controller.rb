class PatientsController < ApplicationController	

	def translate
		patient = Patient.find(params[:patients][:patient])
		split_text = params[:patients][:text_to_translate].split(' ')		
		replaced = replace_text(split_text, patient).join(' ')
		redirect_to root_path(translated: replaced)
	end
	
	private

	def replace_text(split_text, patient)
		split_text.map do |t| 
			if t[0] === '@' 
				non_letters = ['']
				until t[-1] =~ /[A-Za-z]/
					non_letters.push(t[-1])
					t = t.chomp(t[-1])
				end
					db_value = t[1..-1] === 'phone_number' ?
						ActionController::Base.helpers.number_to_phone(patient[t[1..-1]], area_code: true) :
						patient[t[1..-1]]
					db_value + non_letters.reverse.join('')
			else 
				t 
			end
		end		
	end

end