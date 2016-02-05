# build some arrays to treat as sets

primeArray = Array[ 1, 3, 5, 7, 11, 13, 17, 19, 23 ]
evenArray = (0..23).select { |item| item%2 == 0 }
oddArray = (0..23).select{ |item| item%2 == 1}