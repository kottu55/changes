require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '新規投稿ページ' do
    context "データが正しく保存される" do
          before do
              @post = Post.new
              @post.time_unit = "年"
              @post.caption = "最高の一日"
              @post.category_id = "17"
              @post.title = "yes!"
              @post.status = 1
              @post.time_quantity = "3"
              @post.user_id = "2"
              @post.save
          end
          it "画像以外は入力してあるので保存される" do
              expect(@post).to be_valid
          end
      end
    end
end



