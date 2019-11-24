json.extract! course, :id, :image, :video, :title, :star, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
