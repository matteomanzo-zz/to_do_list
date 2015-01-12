require 'list'

describe List do

  let(:list){List.new}

  it 'should be empty by default' do
  expect(list.container).to be_empty
  end 

  context 'include items' do

    before do
      list.add_item('go to swim')
      list.add_item('get some sleep')
    end

    it 'can store items' do
      expect{list.add_item('study databases')}.to change{list.container.length}.by 1
    end

    it 'can show items' do
      expect(list.show_items).to include("go to swim", "get some sleep")
    end
  end

end