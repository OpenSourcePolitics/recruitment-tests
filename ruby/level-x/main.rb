# frozen_string_literal: true

require 'json'
require 'date'

class Test
  def input
    {
      "cars": [
        {
          "id": 1,
          "price_per_day": 2000,
          "price_per_km": 10
        },
        {
          "id": 2,
          "price_per_day": 3000,
          "price_per_km": 15
        },
        {
          "id": 3,
          "price_per_day": 1700,
          "price_per_km": 8
        }
      ],
      "rentals": [
        {
          "id": 1,
          "car_id": 1,
          "start_date": '2017-12-8',
          "end_date": '2017-12-10',
          "distance": 100
        },
        {
          "id": 2,
          "car_id": 1,
          "start_date": '2017-12-14',
          "end_date": '2017-12-18',
          "distance": 550
        },
        {
          "id": 3,
          "car_id": 2,
          "start_date": '2017-12-8',
          "end_date": '2017-12-10',
          "distance": 150
        }
      ]
    }
  end

  def output
    result = rentals.map do |rental|
      current_car = cars.select { |car| car[:id] == rental[:car_id] }.first
      next unless current_car

      duration = (Date.parse(rental[:end_date]) - Date.parse(rental[:start_date]) + 1)
      price_per_days = duration * current_car[:price_per_day]
      price_per_km = rental[:distance] * current_car[:price_per_km]

      {
        id: rental[:id],
        price: price_per_days + price_per_km
      }
    end

    { rentals: result.compact }
  end

  private

  def rentals
    input[:rentals]
  end

  def cars
    input[:cars]
  end
end
