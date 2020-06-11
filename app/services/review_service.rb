class ReviewService

  def self.get_reviews
    response = HTTParty.get("https://calm-inlet-86636.herokuapp.com/reviews", headers: { "Authorization" => "Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE1OTIxNzE4ODF9.wRlKY6eYWb-hy8La7aVh76uPoqezWh4B66hCwFcI7o4" })
  end

  def self.get_review(id)
    response = HTTParty.get("https://calm-inlet-86636.herokuapp.com/reviews/#{id}", headers: { "Authorization" => "Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE1OTIxNzE4ODF9.wRlKY6eYWb-hy8La7aVh76uPoqezWh4B66hCwFcI7o4" })
  end


end






