class Comment < ApplicationRecord
  include Visible

  belongs_to :blogs
end
