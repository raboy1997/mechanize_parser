#
class Feed < ApplicationRecord
  validates_uniqueness_of :title

  def as_json(_options = {})
    { autor: autor,
      url: url,
      title: title }
  end
end
