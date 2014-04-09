class Item < ActiveRecord::Base
  belongs_to :list
  validates :list_id, :text, :presence => true
  validate :list_exists



  private
  def list_exists
    if !(List.exists?(self.list_id))
      self.errors.add(:list, "doesn't exist.")
    end
  end

end
 
