class User < ApplicationRecord
  has_many :posts
  has_many :readers, class_name: "Post", foreign_key: "reader_id"
  validates :name, presence: true
  validates :name, uniqueness: true
end
