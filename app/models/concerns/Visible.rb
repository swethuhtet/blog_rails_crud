module Visible
    extend ActiveSupport::Concern

    VALID_STATUSES = ['New', 'Old','Archived']

    included do
        validates :status,inclusion: {in: VALID_STATUSES}
    end
    
    class_methods do
        def new_count
          where(status: 'New').count 
        end
    end

    def archived?
        status == 'Archived'
    end
end
