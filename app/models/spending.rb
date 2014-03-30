class Spending < ActiveRecord::Base
  belongs_to :category, class_name: 'SpendingCategory'
end
