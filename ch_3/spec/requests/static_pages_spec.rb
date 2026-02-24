require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe 'GET /home' do
    before { get root_path }

    it 'HTTPステータス200を返すこと' do
      expect(response).to have_http_status(:ok)
    end

    it '適切なタイトルが表示されること' do
      expect(response.body).to include("<title>#{base_title}</title>")
    end
  end

  describe 'GET /help' do
    before { get help_path }

    it 'HTTPステータス200を返すこと' do
      expect(response).to have_http_status(:ok)
    end

    it '適切なタイトルが表示されること' do
      expect(response.body).to include("<title>Help | #{base_title}</title>")
    end
  end

  describe 'GET /about' do
    before { get about_path }

    it 'HTTPステータス200を返すこと' do
      expect(response).to have_http_status(:ok)
    end

    it '適切なタイトルが表示されること' do
      expect(response.body).to include("<title>About | #{base_title}</title>")
    end
  end
end
