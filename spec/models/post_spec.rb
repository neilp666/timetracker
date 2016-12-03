require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      @post = Post.create(date: Date.today, description: "Anything")
    end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without a date and description' do
      @post.date = nil
      @post.description = nil
      expect(@post).to_not be_valid
    end
  end
end