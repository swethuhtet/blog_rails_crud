class Comment < ApplicationRecord
  # include Visible

  belongs_to :blog
  belongs_to :user
end
