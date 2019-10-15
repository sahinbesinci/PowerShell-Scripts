Install-WindowsFeature -name Web-Server -IncludeManagementTools
Install-WindowsFeature -name Web-Http-Redirect -IncludeManagementTools
Install-WindowsFeature -name Web-DAV-Publishing -IncludeManagementTools
Install-WindowsFeature -name Web-Custom-Logging -IncludeManagementTools
Install-WindowsFeature -name Web-Log-Libraries -IncludeManagementTools
Install-WindowsFeature -name Web-ODBC-Logging -IncludeManagementTools
Install-WindowsFeature -name Web-Request-Monitor -IncludeManagementTools
Install-WindowsFeature -name Web-Http-Tracing -IncludeManagementTools
Install-WindowsFeature -name Web-Dyn-Compression -IncludeManagementTools
Install-WindowsFeature -name Web-Basic-Auth -IncludeManagementTools
Install-WindowsFeature -name Web-CertProvider -IncludeManagementTools
Install-WindowsFeature -name Web-Client-Auth -IncludeManagementTools
Install-WindowsFeature -name Web-Digest-Auth -IncludeManagementTools
Install-WindowsFeature -name Web-Cert-Auth -IncludeManagementTools
Install-WindowsFeature -name Web-Url-Auth -IncludeManagementTools
Install-WindowsFeature -name Web-Windows-Auth -IncludeManagementTools
Install-WindowsFeature -name Web-App-Dev -IncludeManagementTools

Get-windowsFeature web-*
