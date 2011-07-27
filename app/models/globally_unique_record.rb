class GloballyUniqueRecord < ActiveRecord::Base
  @abstract_class = true
  before_create :create_id
  
  
  protected
  
  def create_id
    self[:id] = UUIDTools::UUID.random_create.to_s
  end
  
end