json.array!(@items) do |item|
  json.extract! item, :id, :list_id, :text, :priority, :is_complete
  json.url item_url(item, format: :json)
end
