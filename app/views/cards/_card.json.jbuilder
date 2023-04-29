json.extract! card, :id, :title, :description, :variety, :num, :created_at, :updated_at
json.url card_url(card, format: :json)
