require 'simplecov'
SimpleCov.start

#require '../lib/bubbleSort'
require 'bubbleSort'
RSpec.describe 'bubbleSort.rb' do

  describe '#bubble' do

    it 'should be defined method bubbleSort' do
      expect { bubbleSort([7,6,5,9,2]) }.not_to raise_error
    end
    it 'swap empty array' do
      expect(swap([], 0, 0)).to match([nil])
    end
    it 'swap elements in array' do
      expect(swap([1, 2], 0, 1)).to match([2,1])
    end
    it 'get correct result' do
      expect(bubbleSort([1, 2, 1])).to match([1,1,2])
    end
    it 'sort empty list' do
      expect(bubbleSort([])).to match([])
    end
    it 'sort one element' do
      expect(bubbleSort([1])).to match([1])
    end
    it 'sort two elements in correct order' do
      expect(bubbleSort([1,2])).to match([1,2])
    end
    it 'sort two elements in reverse order' do
      expect(bubbleSort([2,1])).to match([1,2])
    end
    it 'sort number random' do
      expect(bubbleSort([6, 7, 2, 4, 1, 5, 8, 3])).to match([1,2,3,4,5,6,7,8])
    end
    it 'sorting a list with duplicate elements' do
      expect(bubbleSort([1,2,1])).to match([1,1,2])
    end
    it 'sort one letter' do
      expect(bubbleSort(['a'])).to match(['a'])
    end
    it 'sort one negativ number' do
      expect(bubbleSort([-1])).to match([-1])
    end
    it 'sort few negativ number' do
      expect(bubbleSort([-1,-2,-1])).to match([-2,-1,-1])
    end
    it 'sort mix number' do
      expect(bubbleSort([6, -7, 2, 4, -1, -5, 8, 3])).to match([-7,-5,-1,2,3,4,6,8])
    end
    it 'sort two letter in correct order' do
      expect(bubbleSort(['a','b'])).to match(['a', 'b'])
    end
    it 'sort two lettter in reverse order' do
      expect(bubbleSort(['b', 'a'])).to match(['a','b'])
    end
    it 'sort letter random' do
      expect(bubbleSort(['f','g','b','d','a','e','h','c'])).to match(['a','b','c','d','e','f','g','h'])
    end
    it 'sort letter and number as string' do
      expect(bubbleSort(['a','1','-7','2'])).to match(['-7','1','2','a'])
    end
    it 'sort nil array' do
      expect(bubbleSort([nil])).to match([nil])
    end


  end

end
