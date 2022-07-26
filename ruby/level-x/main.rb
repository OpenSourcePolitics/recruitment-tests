require 'date'
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

  def calculate_price(rental_id)
    rental = input[:rentals].find { | rental| rental[:id] == rental_id}
    cars = input[:cars]
    car = cars.find { |car| car[:id] == rental[:car_id] }
    days = (Date.parse(rental[:end_date]) - Date.parse(rental[:start_date])).to_i + 1
    days * car[:price_per_day] + rental[:distance] * car[:price_per_km]
  end

  def output
    {
      "rentals":
        input[:rentals].map do |rental|
          {
            id: rental[:id],
            price: calculate_price(rental[:id])
          }
        end
    }
  end
end
