require 'rubygems'
gem 'rubyzip'
require 'zip/zip'
require 'zip/zipfilesystem'

module ZipUtility
     def ZipUtility.compress(path)     
       begin
          puts "About to create zip archive at #{path}"
          path.sub!(%r[/$],'')
          #archive = File.join(File.dirname(path),File.basename(path))+'.zip'
          archive = File.dirname(path) + '\\' + File.basename(path) + '.zip'
          FileUtils.rm archive, :force=>true

          puts "Adding files to archive..."
          Zip::ZipFile.open(archive, 'w') do |zipfile|
             Dir["#{path}\\**\\**"].reject{|f|f==archive}.each do |file|
               zipfile.add(file.sub(path+'\\',''),file)
             end
          end
        rescue Exception => e
          logger.info("Encountered exception #{e.message}")         
          puts e.message
       end
       puts "Done creating #{path}"
       puts archive
     end
end