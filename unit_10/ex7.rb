# define the class Honda so it runs out of gas with a second call to .vroom( )

class Honda < Car

  def initialize( model )
    super( :Honda, model )
    @outofgas = false
  end

  def vroom( )
    raise OutOfGas.new if @outofgas
     
    @outofgas = true
    super
  end

end