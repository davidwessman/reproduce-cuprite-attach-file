require "test_helper"
require "capybara/cuprite"

Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(
    app,
    **{
      browser_options: {},
      process_timeout: 10,
      inspector: true,
      headless: !ENV["HEADLESS"].in?(%w[n 0 no false]),
    }
  )
end

# Configure Capybara to use :cuprite driver by default
Capybara.default_driver = Capybara.javascript_driver = :cuprite

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by(Capybara.javascript_driver)
end
