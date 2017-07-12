class FileReader

  def reader(filename)
  filename = ARGV[0]
  File.read(filename)
  end
end
