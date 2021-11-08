Install-WindowsFeature -name Web-Server -IncludeManagementTools

Add-WindowsFeature Web-Default-Doc, Web-Http-Errors, Web-Static-Content, Web-Http-Logging, Web-Request-Monitor, Web-Http-Tracing, Web-Stat-Compression, Web-Dyn-Compression, Web-Filtering, Web-Net-Ext45, Web-Asp-Net45, Web-AppInit, Web-ISAPI-Ext, Web-ISAPI-Filter, Web-Mgmt-Console, NET-WCF-HTTP-Activation45, NET-WCF-Pipe-Activation45, NET-WCF-TCP-Activation45, NET-WCF-TCP-PortSharing45, Web-Mgmt-Compat, Telnet-Client -IncludeManagementTools

Remove-WindowsFeature Web-Dir-Browsing, XPS-Viewer -IncludeManagementTools

Get-windowsFeature
