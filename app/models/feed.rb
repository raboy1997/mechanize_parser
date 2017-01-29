class Feed < ApplicationRecord
  validates_uniqueness_of :title

  def as_json(options={})
    { :autor => self.autor ,
     :url => self.url,
     :title => self.title }
  end
end
