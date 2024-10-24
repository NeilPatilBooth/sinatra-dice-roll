# /dice.rb

require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:elephant)
end

get ("/zebra") do
  "We must add a route for each path we want to support"
end

get ("/giraffe") do
  "Hopefully this shows up without having to restart the server :P"
end

get ("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  @outcome= "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  erb(:two_six)
end 

get("/dice/2/10") do
  first_die = rand(1..10)
	second_die = rand(1..10)
  sum = first_die + second_die
	
	@outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	erb(:two_ten)
end

get("/dice/1/20") do
  @die = rand(1..20)
	
	@outcome = "You rolled a #{die}."
	erb(:one_twenty)
end

get("/dice/5/4") do
  first_die = rand(1..4)
	second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die

  @outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, and a #{fourth_die} for a total of #{sum}."
	erb(:fourd_five)
end

get ("/dice/100/6") do
  @rolls = [] #Create a blank array

  100.times do #100 times
    die = rand(1..6) # Generate random number

    @rolls.push(die) #Add the random number to the array
  end
  
  erb(:one_hundred_six)
end 
