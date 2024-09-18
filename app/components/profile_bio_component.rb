# frozen_string_literal: true

class ProfileBioComponent < ViewComponent::Base
  attr_reader :user

  def initialize(user:)
    super
    @user = user
  end

  def member_since_date
    @user.created_at.strftime("%B %Y")
  end
end
