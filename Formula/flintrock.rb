class Flintrock < Formula
  include Language::Python::Virtualenv

  desc "Tool for launching Apache Spark clusters"
  homepage "https://github.com/nchammas/flintrock"
  url "https://files.pythonhosted.org/packages/dc/ad/6e3871a510f0d053aa49caee2140a2f64f2d3fa584d3b70408043295fa57/Flintrock-2.0.0.tar.gz"
  sha256 "ccbbc912823772ea733802ca3f9751c98dacda8c67518683a3dc4ec8b1de38dd"
  license "Apache-2.0"
  revision 7

  bottle do
    sha256 cellar: :any,                 arm64_ventura:  "c5c6d50b0bedbddcb24e48e4ca8b796c2ca4474de1c6b59508d16e59d681505d"
    sha256 cellar: :any,                 arm64_monterey: "046825bd8111f25045d9c688a67b32175e0985876f98cc972914d9576ac7a3c2"
    sha256 cellar: :any,                 arm64_big_sur:  "05fdf7b601ac3569dbed0f45cd6f3eeeae92347e74ca0a1fd5c3ebe539abc5de"
    sha256 cellar: :any,                 ventura:        "32239131614366ac744ddd5a0afde672c806e3c9645904bc857ca3df7df6a1ea"
    sha256 cellar: :any,                 monterey:       "20180446da949b541bec4a03a5907be18a022134d716d8b9a65368a6f0a75866"
    sha256 cellar: :any,                 big_sur:        "3a5e288a561d1daad0f8d40484a383e0b72d5f133f738239cb830083e28c95dc"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "123a93b08b0ac6c89dc4d4693c5c8d5a0ba045e667db3fba85e0e81cb163c798"
  end

  # `pkg-config`, `rust`, and `openssl@3` are for cryptography.
  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "cffi"
  depends_on "openssl@3"
  depends_on "python@3.11"
  depends_on "six"

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/8c/ae/3af7d006aacf513975fd1948a6b4d6f8b4a307f8a244e1a3d3774b297aad/bcrypt-4.0.1.tar.gz"
    sha256 "27d375903ac8261cfe4047f6709d16f7d18d39b1ec92aaf72af989552a650ebd"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/d3/61/3b325524005f8d89e5ab62ac71d697ae26f8a546402917b4f759ee707b00/boto3-1.17.90.tar.gz"
    sha256 "bbf727d770a9844834bfbf3f811db1d3438320897f67cfb21cdca5bb8fc23c13"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/d4/a4/ef715db7192535688fae0130714fde5dce91ce2ed8e521aad55a213a5820/botocore-1.20.90.tar.gz"
    sha256 "b301810c4bd6cab1b6eaf6bfd9f25abb27959b586c2e1689bbce035b3fb8ae66"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/f8/5c/f60e9d8a1e77005f664b76ff8aeaee5bc05d0a91798afd7f53fc998dbc47/Click-7.0.tar.gz"
    sha256 "5b94b49521f6456670fdb30cd82a4eca9412788a93fa6dd6df72c94d5a8ff2d7"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/93/b7/b6b3420a2f027c1067f712eb3aea8653f8ca7490f183f9917879c447139b/cryptography-41.0.2.tar.gz"
    sha256 "7d230bf856164de164ecb615ccc14c7fc6de6906ddd5b491f3af90d3514c925c"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "paramiko" do
    url "https://files.pythonhosted.org/packages/cf/a1/20d00ce559a692911f11cadb7f94737aca3ede1c51de16e002c7d3a888e0/paramiko-2.7.2.tar.gz"
    sha256 "7f36f4ba2c0d81d219f4595e35f70d56cc94f9ac40a6acdf51d6ca210ce65035"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
    sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/27/90/f467e516a845cf378d85f0a51913c642e31e2570eb64b352c4dc4c6cbfc7/s3transfer-0.4.2.tar.gz"
    sha256 "cb022f4b16551edebbb31a377d3f09600dbada7363d8c5db7976e7f47732e1b2"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e2/7d/539e6f0cf9f0b95b71dd701a56dae89f768cd39fd8ce0096af3546aeb5a3/urllib3-1.26.16.tar.gz"
    sha256 "8f135f6502756bde6b2a9b28989df5fbe87c9970cecaa69041edcce7f0589b14"
  end

  def install
    ENV["OPENSSL_NO_VENDOR"] = "1"
    ENV["OPENSSL_DIR"] = Formula["openssl@3"].opt_prefix
    virtualenv_install_with_resources
  end

  test do
    ENV["LC_ALL"] = "en_US.UTF-8"
    system bin/"flintrock"
    msg = shell_output("#{bin}/flintrock destroy fascism 2>&1", 1)
    assert_match "could not find your AWS credentials", msg
  end
end
