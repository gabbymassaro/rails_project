# RSpec.describe "reviews/form", type: :view do
#   let(:review) { FactoryBot.create(:review) }

#   before(:each) do
#     assign(:review, review)
#   end

#   it "renders the review post form" do
#     render

#     assert_select "form[action=?][method=?]", review_path(review), "post" do
#       assert_select "input[name=?]", "review[rating]"
#       assert_select "textarea[name=?]", "review[content]"
#     end
#   end
# end