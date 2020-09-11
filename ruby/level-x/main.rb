require 'json'
require 'date'

class Test
  def input
    {
        "cars": [
            {"id": 1, "price_per_day": 2000, "price_per_km": 10},
            {"id": 2, "price_per_day": 3000, "price_per_km": 15},
            {"id": 3, "price_per_day": 1700, "price_per_km": 8}
        ],
        "rentals": [
            {"id": 1, "car_id": 1, "start_date": '2017-12-8', "end_date": '2017-12-10', "distance": 100},
            {"id": 2, "car_id": 1, "start_date": '2017-12-14', "end_date": '2017-12-18', "distance": 550},
            {"id": 3, "car_id": 2, "start_date": '2017-12-8', "end_date": '2017-12-10', "distance": 150}
        ]
    }
  end

  def output
    # on boucle sur les locations
    r = input[:rentals].each do |data|
      # on retouve la voiture correspondante, TODO test d'existence, ici on part du principe qu'il y en a une (première du tableau select)
      current_car = input[:cars].select { |car| car[:id] == data[:car_id] }[0]

      # calculs intermédiaires
      price_days = (Date.parse(data[:end_date]) - Date.parse(data[:start_date]) + 1).to_i * current_car[:price_per_day].to_i
      price_km = data[:distance].to_i * current_car[:price_per_km].to_i

      # on note le résultat
      data[:price] = price_days + price_km

      # et on retire les autres éléments
      data.delete(:car_id)
      data.delete(:end_date)
      data.delete(:start_date)
      data.delete(:price_per_day)
      data.delete(:distance)
    end

    # on renvoie la structure attendue
    {:rentals => r}
  end
end
