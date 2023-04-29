require "rails_helper"


describe "Card Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating card" do
      card = Card.new(description: "Content of the description")
      expect(card.valid?).to eq(false)
    end
    it "ensures the description is present when creating card" do
        card = Card.new(title: "Content of the title")
        expect(card.valid?).to eq(false)
    end
    it "should not be able to save card when title missing" do
      card = Card.new(description: "Some description content goes here")
      expect(card.save).to eq(false)
    end
    it "should be able to save card when have description and title" do
      card = Card.new(title: "Title", description: "Content of the description")
      expect(card.save).to eq(true)
    end
  end
end


describe "Card Attribute Requirements on Edit", :type => :model do
  context "Edit card" do  
    before (:each) do
      @card = Card.create(title: "Title", description: "Content of the description")
 
      end
    it "ensures the title is present when editing card" do
      @card.update(:title => "New Title")
      expect(@card.title == "New Title")
    end
    it "ensures the description is present when editing card" do
        @card.update(:description => "New Description")
        expect(@card.description == "New Description")
    end
  end
end
