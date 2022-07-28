require "rails_helper"

RSpec.describe "pages/home.html.erb", type: :view do
  before do
    without_partial_double_verification do
      allow(view).to receive(:user_signed_in?).and_return(false)
    end
  end

  it "displays the gov banner" do
    render template: "pages/home", layout: "layouts/application"
    expect(rendered).to match "An official website of the United States government"
  end
end
