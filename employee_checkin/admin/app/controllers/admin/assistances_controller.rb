require_dependency "admin/application_controller"

module Admin
  class AssistancesController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end
