class User < ApplicationRecord
  has_many :created_posts, class_name: "Post", foreign_key: :user_id, dependent: :destroy
end
