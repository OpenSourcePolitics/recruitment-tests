require 'time'

class Test
  def input
    {
      "cars": [
        { "id": 1, "price_per_day": 2000, "price_per_km": 10 },
        { "id": 2, "price_per_day": 3000, "price_per_km": 15 },
        { "id": 3, "price_per_day": 1700, "price_per_km": 8 }
      ],
      "rentals": [
        { "id": 1, "car_id": 1, "start_date": '2017-12-8', "end_date": '2017-12-10', "distance": 100 },
        { "id": 2, "car_id": 1, "start_date": '2017-12-14', "end_date": '2017-12-18', "distance": 550 },
        { "id": 3, "car_id": 2, "start_date": '2017-12-8', "end_date": '2017-12-10', "distance": 150 }
      ]
    }
  end

  def output
    cars = input[:cars]
    rentals = input[:rentals]

    #  Assert that cars are ordered
    cars.sort_by { |car| car[:id] }

    results = []
    rentals.each do |rental|
      car_id = rental[:car_id]
      car_rented = cars[car_id - 1]
      rented_duration_price = ((Time.parse(rental[:end_date]) - Time.parse(rental[:start_date])) / 86400 + 1) * car_rented[:price_per_day]
      distance_price = rental[:distance] * car_rented[:price_per_km]
      total_price =  rented_duration_price + distance_price
      results << { "id": rental[:id],  "price": total_price }
    end
    return {"rentals": results}
  end
end

puts Test.new.output