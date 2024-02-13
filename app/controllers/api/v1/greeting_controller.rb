class Api::V1::GreetingController < ApplicationController
  def random_greeting
    @greeting = Greeting.order('random()').first
    render json: { greeting: @greeting.greeting }
  end
end
