require 'rails_helper'

RSpec.feature "Launches", type: :feature do
  before do
    stub_request(
      :get, "https://api.spacexdata.com/v4/launches/next"
    ).to_return(
      status: 200, body: file_fixture('launches/next.json')
    )

    stub_request(
      :get, "https://api.spacexdata.com/v4/launches/latest"
    ).to_return(
      status: 200, body: file_fixture('launches/latest.json')
    )

    stub_request(
      :get, "https://api.spacexdata.com/v4/launches/past"
    ).to_return(
      status: 200, body: file_fixture('launches/past.json')
    )

    stub_request(
      :get, "https://api.spacexdata.com/v4/launches/upcoming"
    ).to_return(
      status: 200, body: file_fixture('launches/upcoming.json')
    )
  end

  context 'Ao acessar a listagem de lançamentos' do
    scenario 'Deve encontrar uma tabela' do
      visit root_path

      expect(page).to have_css('.container')
    end
  end
end
