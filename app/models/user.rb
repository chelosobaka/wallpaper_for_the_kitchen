class User < ApplicationRecord
  def to_param
    "#{id}#{url}"
  end
end
