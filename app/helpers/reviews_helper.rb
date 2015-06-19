module ReviewsHelper
  def star_rating(rating)
    return rating unless rating.respond_to?(:round)
    '★' * rating.ceil.to_i + '☆'* (5 - rating.ceil.to_i)
  end
end
