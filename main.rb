require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'

get '/' do

   @operator = params[:operator]

    if @operator
    @first = params[:first].to_f
    @second = params[:second].to_f
    
    @result = case @operator
      when '+' then @first + @second
      when '-' then @first - @second
      when '*' then @first * @second
      when '/' then @first / @second
  end
end
 
  erb :home
end

get '/basic_calc' do
  erb :basic_calc
end

get '/power' do
    @first = params[:first].to_f
  if @first
    @second = params[:second].to_f
    # @result = @first
    @result = @first**@second 
 end
 erb :power
end
 



get '/sq_root' do
  @first = params[:first].to_f
  if @first
    @result = Math.sqrt(@first)
end
  erb :sq_root
end

get '/trip' do

  @distance = params[:distance].to_f
    @mpg = params[:mpg].to_f
    @cost = params[:cost].to_f
    if @speed =params[:speed].to_f
      @distance = (@distance/@speed)
      @trip_cost = (@distance/@mpg)*@cost
    end
  erb :trip
end

get '/bmi' do

  erb :bmi
end

  
