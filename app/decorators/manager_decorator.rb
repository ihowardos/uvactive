class ManagerDecorator < ApplicationDecorator
  delegate :id, :email
end
