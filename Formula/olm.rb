class Olm < Formula
  desc "Implementation of the Double Ratchet cryptographic ratchet in C++"
  homepage "https://git.matrix.org/git/olm/about/docs/olm.rst"
  url "https://git.matrix.org/git/olm/snapshot/olm-3.0.0.tar.gz"
  sha256 "4c54f93e4f426a9d5c8e66e63113d42fd2afca240cdcff30a469a342a6ec3bc6"
  depends_on "cmake" => :build

  def install
    system "cmake", "-Bbuild", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--build", "build", "--target", "install"
  end

  test do
    system "make", "test"
  end
end
