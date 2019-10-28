# controller for search
class SearchController < ApplicationController

    def new
    end

    def search
        if params[:nombre]
            @employees = Employee.name_like(params[:nombre])
        else
            @employees = Employee.all
        end
    end

    def search_params
        params.permit(:nombre)
      end

  end