class Mzgb < Formula
  include Language::Python::Virtualenv

  desc "Fast CLI for filtering very large log files by level, pattern, and time range"
  homepage "https://github.com/mukesudo/mzgb"
  url "https://files.pythonhosted.org/packages/source/m/mzgb/mzgb-0.2.0.tar.gz"
  sha256 "173288de0cf7d1ab6c2bb8e8901d54247455eae0d9820f67135e92361a736448"
  license "MIT"

  depends_on "python@3.11"

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/source/p/python-dateutil/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/source/s/six/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "mzgb v#{version}", shell_output("#{bin}/mzgb --version")
  end
end
