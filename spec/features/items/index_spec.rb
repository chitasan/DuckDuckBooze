require 'rails_helper'

RSpec.describe 'Item Index Page', type: :feature do
  describe 'any visitor who visits the items index page' do
    before :each do
      @merchant_1 = User.create(role: 2, enabled: true, name: "Mike Merchant", street: "1 Old Street", city: "Golden", state: "CO", zip: "80403", email: "mike@gmail.com", password_digest: "password")
      @merchant_2 = User.create(role: 2, enabled: true, name: "Pam Pusher", street: "2 Cole Ave", city: "Lakewood", state: "CO", zip: "80228", email: "pam@gmail.com", password_digest: "yolo1234")

      @beer_1 = @merchant_1.items.create(name: "Heineken", description: "Pale lager, 5%", item_price: 4.00, stock: 56, enabled: true, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Heineken.jpg/156px-Heineken.jpg")
      @beer_2 = @merchant_1.items.create(name: "Guiness", description: "Dry stout, 4.2%", item_price: 6.50, stock: 68, enabled: true, image: "https://upload.wikimedia.org/wikipedia/en/thumb/f/fe/Guinness-original-logo.svg/440px-Guinness-original-logo.svg.png")
      @beer_3 = @merchant_2.items.create(name: "Samuel Adams", description: "Lager, 4.9%", item_price: 4.25, stock: 38, enabled: true, image: "https://media3.webcollage.net/ba5aa7c6e5fdf1a927cf12d2cc841b1face3d275?response-content-type=image%2Fpng&AWSAccessKeyId=AKIAIIE5CHZ4PRWSLYKQ&Expires=1893538567&Signature=gw9LNzoG4tgto7t%2FmRRJKpKB0PY%3D")
      @beer_4 = @merchant_2.items.create(name: "Corona", description: "Pale lager, 4.6%", item_price: 3.00, stock: 77, enabled: true, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Corona-6Pack.JPG/440px-Corona-6Pack.JPG")
      @beer_5 = @merchant_2.items.create(name: "Budweiser", description: "Pale lager, 5%", item_price: 3.75, stock: 123, enabled: false, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Bud_and_Budvar.jpg/440px-Bud_and_Budvar.jpg")
      #changed price to item_price
      #need to validate that users and items are being created
    end

    it 'shows all items in the system except for disabled items' do

      visit items_path

      #expect to see all but @beer_5 (disabled)
    end

    it 'shows the following information for each item (name, thumbnail, merchant, merchants stock, current price)' do

    end

    it 'the item name and item thumbnail are links to the show page of the item' do

    end
  end
end
