json.array!(@summonses) do |summons|
  json.extract! summons, :id, :student, :teacher, :reason, :place
  json.url summons_url(summons, format: :json)
end
