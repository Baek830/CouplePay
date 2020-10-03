class Income < ApplicationRecord
  
  ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
end
