describe Reminder do

    describe "#on" do
      before(:each) do
	        @estates = []
	        @estates << Estate.new("0066S", "Quarterly", "1st Feb,  3rd May,  1st Aug,  5th Nov")
	        @estates << Estate.new("0123S", "Quarterly", "28th Feb, 31st May, 31st Aug, 30th Nov")
	        @estates << Estate.new("0250S", "Twice a year", "23rd Jan, 22nd Jun")
	    end
	end	
	it "returns correct due dates for 1st Jan 2009 " do
	
	end
	it "returns correct due dates for 1st Feb 2009" do
	end
end