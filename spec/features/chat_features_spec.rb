require 'spec_helper'

describe 'chat buttons' do   

  describe 'set appointment button' do 
  
    it "should generate uid upon click " do
      visit '/chats'
      expect(page).not_to have_content('go to lesson')
      click_button 'make room id'
      sleep(5)
      expect(page).to have_content('go to lesson')
    end

    it "uid should expire after set time" do 
      visit '/chats'
      click_button 'make room id'
      sleep(5)
      expect(page).to have_content('go to lesson')
      sleep(10)
      expect(page).not_to have_content('go to lesson')
    end  

  end

end