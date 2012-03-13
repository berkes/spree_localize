require 'spec_helper'
describe "admin products" do
  before do
    sign_in_as!(Factory(:admin_user))
  end

  let!(:product) { Factory(:product) }

  it "displays price in correct format" do
    visit spree.edit_admin_product_path(product)
    fill_in "product_price", :with => "9,99"
    click_button I18n.t("update")
    save_and_open_page
    Nokogiri::HTML(page.body).css("input#product_price")[0]["value"].should == "9,99"
  end

end
