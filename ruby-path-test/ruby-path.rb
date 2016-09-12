class Path
  def initialize(path)
    @current_path = path
  end

  def current_path
    @current_path
  end

  def cd(new_path)
    up_count = 0
    new_path_array = new_path.split("/")
    new_path_array.each do |x|
      if(x == "..")
        up_count = up_count + 1
      end
    end

    current_path_array = @current_path.split("/")
    original_path = current_path_array.take((current_path_array.length) - up_count)
    i = ((new_path_array.length + 1) - up_count)
    while i < new_path_array.length
      original_path.push(new_path_array[i])
      i = i + 1
    end
    @current_path = original_path.join("/")
  end

end

path = Path.new('/a/b/c/d')
puts path && path.current_path
puts path.cd('../../x')
puts path.cd('../x')
puts path.cd('../x/e/f')
puts path.current_path
