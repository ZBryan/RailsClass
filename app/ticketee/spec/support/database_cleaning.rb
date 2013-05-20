RSpec.configure do |config|
	
	d = DatabaseCleaner
	
	config.before(:suite) do
		d.strategy = :truncation
		d.clean_with :truncation
	end

	config.before(:each) do
		d.start
	end

	config.after(:each) do
		d.clean
	end
end