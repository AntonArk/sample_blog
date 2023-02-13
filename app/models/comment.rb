class Comment < ApplicationRecord
  validates :body, length: {maximum: 400}
  belongs_to :article
end
