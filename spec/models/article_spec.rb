require 'rails_helper'

describe Article do
# split to logical parts
    describe "validations" do
      it { should validate_presence_of :title }
      it { should validate_presence_of :text }
    end
  
    describe "assotiations" do
      it { should have_many :comments }
    end
    
    describe "#subject" do
      it "returns the article title" do
        #создаем объект article хитрым способом
        #
        article = create(:article, title: 'Lorem Ipsum')

        #assert, проверка
        expect(article.subject).to eq 'Lorem Ipsum'
      end
    end
end
