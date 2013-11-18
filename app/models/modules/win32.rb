# Encapsulate Windows-specific actions.
# Found at http://www.justskins.com/forums/how-to-open-a-file-in-windows-52873.html
class Win32

  ## Begin Standardized OS-generalized interface
  def Win32.open(file, *args)
    Win32.start(file, args)
  end

  ## End Standardized OS-generalized interface

  # Open file in native application
  def Win32.start(file, *args)
    cmd = "\"#{file}\" " + (args.collect {|x| "\"#{x}\""}.join ' ')
    system('start "" ' + cmd)
  end

  # Console apps which return values.
  def Win32.run(file, *args)
    cmd = "\"#{file}\" " + (args.collect {|x| "\"#{x}\""}.join ' ')
    system(cmd)
  end

end