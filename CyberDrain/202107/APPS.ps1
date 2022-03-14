[CmdletBinding()]
    param (
        [parameter(Mandatory)]
         [ValidateSet('AdobeReader','Chrome','Firefox','Slack')]
        [String]
        $Application)

Write-Host "Starting..."

switch ($application) {
        AdobeReader {
            Write-host "Installing Adobe Reader"
            # Download Newest Version Adobe Reader DC
            $web = Invoke-WebRequest -Uri 'https://get.adobe.com/reader/' -UseBasicParsing
            $version = [regex]::match($web.Content,'Version ([\d\.]+)').Groups[1].Value.Substring(2).replace('.','')
            $downloadfile="c:\windows\temp\AdobeReader.exe"
            $installer = "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/$Version/AcroRdrDC$($Version)_en_US.exe"
            Invoke-WebRequest -Uri $installer -OutFile $downloadfile
            $process=Start-Process $downloadfile -ArgumentList "/sAll /rs /msi EULA_ACCEPT=YES" -Wait -PassThru
       }
        Chrome {
            Write-host "Installing Chrome"
            $installer="https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise64.msi"
            $downloadfile="c:\windows\temp\googlechromestandaloneenterprise.msi"
            Invoke-WebRequest -Uri $installer -OutFile $downloadfile
            $command = "/I " + $installer + " /qn /norestart"
            $process=Start-Process "msiexec.exe" -ArgumentList $command -Wait -PassThru
        }
        Slack {
            Write-host "Installing Slack"
            $installer=" https://slack.com/ssb/download-win64-msi"
            $downloadfile="c:\windows\temp\slack.msi"
            Invoke-WebRequest -Uri $installer -OutFile $downloadfile
            $command = "/I " + $installer + " /qn /norestart"
            $process=Start-Process "msiexec.exe" -ArgumentList $command -Wait -PassThru
        }
        Firefox {
            Write-Host "Installing Firefox"
            $installer="https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US"
            $downloadfile="c:\windows\temp\Firefox.exe"
            Invoke-WebRequest -Uri $installer -OutFile $downloadfile
            $process=Start-Process $downloadfile -ArgumentList " /S" -Wait -PassThru
        }
}

Write-Host "Finished with exit code: " $process.exitcode

Exit $process.ExitCode
