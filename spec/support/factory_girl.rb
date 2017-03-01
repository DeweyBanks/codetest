RSpec.configure do |config|
  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.DatabaseCleaner
    end
  end
end
