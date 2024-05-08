class Blog < ApplicationRecord
    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
    validates :status, presence: true
end
