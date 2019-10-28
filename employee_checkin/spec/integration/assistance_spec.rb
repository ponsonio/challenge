require 'swagger_helper'

describe 'Assistance API' do

    path '/assistances/' do

    post 'Creates an Assistance' do
        tags 'Assistance'
        consumes 'application/json', 'application/xml'
        parameter name: :assistance, in: :body, schema: {
        type: :object,
        properties: {
            employee_id: { type: :integer },
            checkin: { type: :datetime },
            checkout: { type: :datetime }
        },
        required: [ 'eployee_id']
        }

    response '201', 'assistance created' do
        let(:assistance) { { employee_id: 1, checkin: Time.now, 
            checkout: Time.now + 3600} }
        run_test!
    end

    response '422', 'invalid request' do
        let(:assistance) { { employee_id: '1' } }
        run_test!
    end
    end
end

    path '/assistances/{id}' do

        get 'Retrieves an assistance' do
            tags 'Assistance'
            produces 'application/json', 'application/xml'
            parameter name: :id, :in => :path, :type => :integer

            response '200', 'name found' do
            schema type: :object,
            properties: {
                employee_id: { type: :integer },
                checkin: { type: :datetime },
                checkout: { type: :datetime }
            },
            required: [ 'id']

            let(:id) { Assistance.create(employee_id: 1, checkin: Time.now, checkout:Time.now ).id }
            run_test!
        end

        response '404', 'assistance not found' do
            let(:id) { 'invalid' }
            run_test!
        end
    end
    end
end
