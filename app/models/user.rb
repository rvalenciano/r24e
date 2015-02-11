class User < ActiveRecord::Base
  acts_as_authentic
  include Humanizer
  require_human_on :create

  def active?
    active rescue false
  end

  def admin?
    admin rescue false
  end
end
