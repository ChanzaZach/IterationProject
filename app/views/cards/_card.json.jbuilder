json.extract! card, :id, :title, :description, :type, :created_at, :updated_at
json.url card_url(card, format: :json)
