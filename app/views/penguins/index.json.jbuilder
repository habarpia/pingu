json.array!(@penguins) do |penguin|
  json.extract! penguin, :id, :name, :gender, :personality, :colour_mum, :colour_dad, :colour_own, :belly_colour_mum, :belly_colour_dad, :belly_colour_own, :beak_mum, :beak_dad, :beak_own, :eyes_mum, :eyes_dad, :eyes_own, :belly_mum, :belly_dad, :belly_own, :body_mum, :body_dad, :body_own
  json.url penguin_url(penguin, format: :json)
end
