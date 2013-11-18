class Conversion::Parser
  attr_reader :checksum, :errors

  
  def initialize(filepath)
    @filepath = filepath
    @source_file = filepath # should contain parsed/extracted content
    @errors = []

    # Example parsing    
    # begin
    #   @source_file = Excel.new(filepath)

    #   if set_default_sheet_name      
    #     @xml = Builder::XmlMarkup.new(:target => "", :indent => 2)
    #     @xml.instruct!
      
    #     @xml_md5 = nil
    #     @excel_md5 = Digest::MD5.hexdigest(File.read(filepath))
    #   else
    #     @errors << 'ExcelParser::MissingTemplateTabError'
    #   end
    # rescue OLE::UnknownFormatError
    #   @errors << 'OLE::UnknownFormatError'
    # end
  end
  
  
  def parsable?()
    raise "Must be implemented by subclasses"
  end

  def extract()
    raise "Must be implemented by subclasses"
  end
  
  def md5
    #Digest::MD5.hexdigest(@source_file.target!)
    #@source_file.md5
  end
end