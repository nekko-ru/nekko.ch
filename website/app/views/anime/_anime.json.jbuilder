# frozen_string_literal: true

json.extract! anime, :id, :created_at, :updated_at
json.url anime_url(anime, format: :json)
