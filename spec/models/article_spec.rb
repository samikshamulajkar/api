    require 'rails_helper'

    RSpec.describe Article, type: :model do
      it 'should test that factory is valid' do
      expect(FactoryBot.build :article).to be_valid
      end

        it 'should validates the presence of the title' do
          article = FactoryBot.build :article, title: ''
          expect(article).not_to be_valid
          expect(article.errors.messages[:title]).to include("can't be blank")
        end
        it 'should validate the presence of content' do
          article = FactoryBot.build :article, content: ''
          expect(article).not_to be_valid
          expect(article.errors.messages[:content]).to include("can't be blank")
        end

        it 'should validate the presence of slug' do
          article = FactoryBot.build :article, slug: ''
          expect(article).not_to be_valid 
          expect(article.errors.messages[:slug]).to include("can't be blank")
        end
        
      
    end
