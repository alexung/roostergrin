require 'csv'

csv = CSV.read('db/patients.csv', headers: true)

csv.map do |p|
	Patient.create(
		first_name: p['first_name'],
		last_name: p['last_name'],
		phone_number: p['phone_number'],
		email: p['email'],
		street_address: p['street_address'],
		city: p['city'],
		state: p['state'],
		zip: p['zip']
	)
end
