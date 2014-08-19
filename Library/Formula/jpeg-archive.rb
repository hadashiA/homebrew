require 'formula'

class JpegArchive < Formula
  homepage 'https://github.com/danielgtaylor/jpeg-archive'
  url "https://github.com/danielgtaylor/jpeg-archive/archive/1.1.0.tar.gz"
  # url "https://github.com/danielgtaylor/jpeg-archive/archive/2.0.1.tar.gz"
  # sha1 "9f133b4d394b326e72abf49c7ddafff2ca53c86f"

  depends_on 'jpeg-turbo'

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/jpeg-recompress", "--help"
  end
end
