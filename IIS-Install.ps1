Install-WindowsFeature -name Web-Server -IncludeManagementTools

Add-WindowsFeature Web-Http-Redirect, Web-DAV-Publishing, Web-Custom-Logging, Web-Log-Libraries, Web-ODBC-Logging, Web-Request-Monitor, Web-Http-Tracing, Web-Dyn-Compression, Web-Basic-Auth, Web-CertProvider, Web-Client-Auth, Web-Digest-Auth, Web-Cert-Auth, Web-Url-Auth, Web-Windows-Auth, Web-App-Dev, Web-Net-Ext45, Web-Asp-Net45, NET-WCF-HTTP-Activation45, NET-WCF-Pipe-Activation45, NET-WCF-TCP-Activation45, RSAT, RSAT-Feature-Tools, RSAT-SNMP, SNMP-Service, WAS, WAS-Process-Model, WAS-Config-APIs,Telnet-Client -IncludeManagementTools

Get-windowsFeature
