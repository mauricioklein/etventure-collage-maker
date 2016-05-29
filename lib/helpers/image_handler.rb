require 'securerandom'
require 'open-uri'

module ImageHandler
  def self.download(image_url)
    temp_file = "/tmp/#{SecureRandom.hex}.jpg"

    open(temp_file, 'wb') do |file|
      file << open(image_url).read
    end

    return temp_file
  end

  def self.clean(file_path)
    if File.exist?(file_path)
      File.delete(file_path)
      return true
    end

    return false
  end
end
