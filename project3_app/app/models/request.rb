class Request < ApplicationRecord
    # belongs_to :caredom, class_name: :User
    belongs_to :caredom, class_name: "User"
    belongs_to :caregiver, class_name: "User"
end

