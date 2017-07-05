class Garden
  #attr_accesor :alice
  def initialize(garden, name = "Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry")
    @garden = garden
    @name = name
    @name = names_sorted(@name)
    @diagram = Hash.new
    @front_arr = []
    @back_arr = []
    @garden = convert_to_s(@garden)
    #@alice =

  end
  #
  # def lookup(name)
  #   #check hash for name
  #   #return value
  # end

  def convert_to_s(str)
    #"VCVD/nRRTR"
    arr = str.split('')
    arr.each_with_index.map do |char, i|
      if char == 'V'
        arr[i] = :violets
      elsif char == "G"
        arr[i] = :grass
      elsif char == "C"
        arr[i] = :clover
      elsif char == "R"
        arr[i] = :radishes
      end
    end
    arr
    if arr.include? "\n"
      @front_arr << arr.slice(0, arr.index("\n"))
      @half = @front_arr.flatten.length/2
      @back_arr << arr.slice((arr.index("\n")+1)..-1)#, (@front_arr.length+4))
      @back_arr.flatten
    end
  end

  def names_sorted(names)
    @name_arr = names.split(' ').sort
  end

  def update_hash

    nm_array = @name_arr[0..(@half -1)]#(@front_arr.length/2.0)]
    p @garden
    for n in nm_array
      nm_array.each do |name|
        new_arr = []
         @diagram[name] = [@front_arr.shift, @front_arr.shift, @back_arr.shift, @back_arr.shift]#.flatten
      end
    end

  end

  def alice()
    @diagram["Alice"]
  end

  def bob()
    @diagram["Bob"]
  end
end


testGarden = Garden.new("RCGGGG\nGGRCGG")
p testGarden.update_hash
p testGarden.alice
#p testGarden.bob
#names_sorted("alice, charlie, bob")

#convert_to_s("VGCR/nGCRV")
