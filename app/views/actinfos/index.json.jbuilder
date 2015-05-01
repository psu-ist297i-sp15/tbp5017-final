json.array!(@actinfos) do |actinfo|
  json.extract! actinfo, :id, :time, :money, :info
  json.url actinfo_url(actinfo, format: :json)
end
