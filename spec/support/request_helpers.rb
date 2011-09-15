module RequestHelpers
  module Helpers
    def click_sign_in
      visit "/"
      click_link "Sign In"
    end
  end
end
RSpec.configure do |config|
  config.include RequestHelpers::Helpers, :type => :acceptance, :example_group => {
    :file_path => config.escaped_path(%w[spec acceptance])
  }
end
