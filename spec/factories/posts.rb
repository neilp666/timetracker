FactoryGirl.define do
 factory :post do
    date Date.today
    description "Description"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    user
  end
end
