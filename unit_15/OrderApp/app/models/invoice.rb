class Invoice < ActiveRecord::Base
  belongs_to :customer
  belongs_to :item_number,  class_name: Inventory
end
