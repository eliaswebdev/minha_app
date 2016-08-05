json.array!(@students) do |student|
  json.extract! student, :id, :name, :registration, :birth_date, :status, :age
  json.url student_url(student, format: :json)
end
