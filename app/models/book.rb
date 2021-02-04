class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :author
    validates :genre_id
    validates :summary
    validates :impressions
    validates :image
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :genre_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ""
      Book.where('title LIKE(?)', "%#{search}%")
    else
      Book.all
    end
  end
end
