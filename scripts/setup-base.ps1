iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y git.install
choco install -y --execution-timeout=3600 visualstudio2015community
