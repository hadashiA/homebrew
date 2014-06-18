require 'formula'

class JpegArchive < Formula
  homepage 'https://github.com/danielgtaylor/jpeg-archive'
  url 'https://github.com/f-kubotar/jpeg-archive/archive/1.0.1.1.tar.gz'
  sha1 'ccdf3d0ccbafbd197bc09122f8cc7f35a80e7304'

  depends_on 'jpeg-turbo'

  def install
    system "make"
    mkdir_p "#{prefix}/bin"
    %w(jpeg-recompress jpeg-hash jpeg-compare).each do |bin_file|
      cp bin_file, "#{prefix}/bin/#{bin_file}"
    end
  end

  test do
    system "#{bin}/jpeg-recompress", "--help"
  end
end
