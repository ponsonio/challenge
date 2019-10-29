require 'swagger_helper'

describe 'Employee API' do

  path '/employee/' do

    post 'Creates an Employee' do
      tags 'Employee'
      consumes 'application/json', 'application/xml'
      parameter name: :employee, in: :body, schema: {
          type: :object,
          properties: {
              employee_id: {type: :integer},
              checkin: {type: :datetime},
              checkout: {type: :datetime}
          },
          required: ['eployee_id']
      }

      response '201', 'employee created' do
        let(:assistance) { {employee_id: 1, checkin: Time.now,
                            checkout: Time.now + 3600} }
        run_test!
      end

      response '422', 'invalid request' do
        let(:assistance) { {employee_id: '1'} }
        run_test!
      end
    end
  end

  path '/employees/{id}' do

    get 'Retrieves an employee' do
      tags 'Assistance'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer

      response '200', 'not found' do
        schema type: :object,
               properties: {
                   names: {type: :string},
                   last_name: {type: :string},
                   email: {type: :string},
                   gender: {type: :boolean}
               },
               required: ['id']

        let(:id) { Employee.create(names: 'Employee1', last_name: 'Last Name',
                                   email: 'email@email.com', gender: true).id }
        run_test!
      end

      response '404', 'employee not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
