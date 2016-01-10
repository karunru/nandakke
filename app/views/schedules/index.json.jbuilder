json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :schedule_type, :deadline_date, :deadline_time, :subject, :title, :submit_method
  json.url schedule_url(schedule, format: :json)
end
