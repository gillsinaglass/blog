class Post < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :reader, class_name: "User"
  validates :title, presence: true
  validates :title, length: {maximum: 60}
  validates :description, presence: true
  validates :description, length: {maximum: 200}
  validates :content, presence: true
  validates :content, length: {minimum: 100}
  validate :author_check

  def author_check
    if !(self.author.id == self.author_id)
      errors.add(:author, "You are not the Author")
    end
  end
end
