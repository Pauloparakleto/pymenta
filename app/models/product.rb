class Product < ActiveRecord::Base
  set_primary_key "id"
  include UUIDHelper
  attr_accessible :code, :domain, :description, :id, :price, :units, :username, :version

  belongs_to :company, :foreign_key => 'domain'

  UNIT_TYPES = ["UND","MTS","HRS"]
  validates :units, inclusion: UNIT_TYPES
end
