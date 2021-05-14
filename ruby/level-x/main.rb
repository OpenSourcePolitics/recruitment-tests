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

  def output
    a=Hash.new
    a[:rentals]=[]
    input[:rentals].each{ |rental|
       a[:rentals].append({"id": rental[:id], "price": rental[:distance]*input[:cars][rental[:car_id]-1][:price_per_km]+(Date.parse(rental[:end_date]).mday-Date.parse(rental[:start_date]).mday+1)*input[:cars][rental[:car_id]-1][:price_per_day]}) 
    }
    return a
  end
end
