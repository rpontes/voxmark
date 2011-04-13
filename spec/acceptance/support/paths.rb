module NavigationHelpers
  # Put helper methods related to the paths in your application here.

  def homepage
    "/"
  end
  
  def contact_page
    "/contact/new"
  end
end

RSpec.configuration.include NavigationHelpers, :type => :acceptance
