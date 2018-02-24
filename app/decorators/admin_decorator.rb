class AdminDecorator < ApplicationDecorator
  delegate :id, :email, :first_name, :second_name

end
