
class Train	
	def initialize(number, type, wagons, speed = 0)
		@number = number
		@type = type
		@wagons = wagons
		@speed = speed
	end	
	attr_accessor :speed
	def current_speed
		current_speed = speed
        puts "Ту-туT, speed is #{speed}"
		
	end

	def accelerate
		@speed +=10 if speed < 110
	end

	def deaccelerate
		@speed -=10 if speed > 0
	end

	def increase_wagon
		@wagons +=1 if speed == 0
	end

	def decrease_wagon
		@wagons -=1 if  speed == 0 && wagons > 0
	end

	def wagons_value
		wagons_value = wagons
		puts "Количество вагонов #{wagons}"
	end

	def current_stop
		@current_stop		
	end

	def increment_index
		@index += 1		
	end

	def decrement_index 
		@index -= 1 if @index > 0
		
	end

    def foward_move
    	@current_stop = @train_route.route_list[increment_index].name if @index <= (@train_route.route_list.size -1)
    end

	def reverse_move
        @current_stop = @train_route.route_list[decrement_index].name if index >= 0		
	end

	def show_next
		@train_route.route_list[@index + 1].name
		
	end

	def show_previouse
		@train_route.route_list[@index -1].name
	end
end
class PassengerTrain < Train

end

class PassengerWagon
	def initialize
		@seats = 36
		@occuped_seats = 0
	end

	def add_pass
		@seats -= 1 if @seats > 0
	end

	def delete_pass
		@seats += 1 if @seats < 36
	end	

	def free_seats
		@seats - 0
	end

	def occuped_seats
		36 - @seats
	end 

class CargoWagon
	def initialize
		@max_load = 8600
		@used_load = 0
	end

	def used_load
		@used_load += 100 
	end

	def max_load
		@max_load - @used_load
	end

	def add_cargo
		@max_load -= 100 if @max_load > 0
	end

	def delete_cargo
		@max_load += 100 if @max_load < 8600
	end

		
	end

class Station
	def initialize(name)
	 @name = name
	 @list = []
	end

	def add_list(train)
		@list << train		
	end

	def delete_list(train)
		@list.delete		
	end

	def type_list
		type_list = Hash.new(0)
		@list.map { |train| type_list[train.type] += 1 }
		type_list
		
	end
end

class Route

	def initialize(start, finish)
		@route_list = []
		@route_list << start << finish
	end

	def add_station(station)
		@route_list.insert(-2, station)		
	end

	def delete_station(station)
		@route_list.delete		
	end

	def route_list
		@route_list
	end
end
end