# frozen_string_literal: true

class UserAnimeStatus < ApplicationRecord
  belongs_to :anime
  belongs_to :user

  enum status: %i[not_set inprogress planed completed favorite throw]
end
