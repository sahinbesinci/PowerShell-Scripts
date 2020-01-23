PS C:\Windows\system32> Get-WindowsFeature *web*


Display Name                                            Name                       Install State
------------                                            ----                       -------------
    [ ] Certificate Enrollment Policy Web Service       ADCS-Enroll-Web-Pol            Available
    [ ] Certificate Enrollment Web Service              ADCS-Enroll-Web-Svc            Available
    [ ] Certification Authority Web Enrollment          ADCS-Web-Enrollment            Available
    [ ] Web Application Proxy                           Web-Application-Proxy          Available
    [ ] Remote Desktop Web Access                       RDS-Web-Access                 Available
[X] Web Server (IIS)                                    Web-Server                     Installed
    [X] Web Server                                      Web-WebServer                  Installed
        [X] Common HTTP Features                        Web-Common-Http                Installed
            [X] Default Document                        Web-Default-Doc                Installed
            [X] Directory Browsing                      Web-Dir-Browsing               Installed
            [X] HTTP Errors                             Web-Http-Errors                Installed
            [X] Static Content                          Web-Static-Content             Installed
            [ ] HTTP Redirection                        Web-Http-Redirect              Available
            [ ] WebDAV Publishing                       Web-DAV-Publishing             Available
        [X] Health and Diagnostics                      Web-Health                     Installed
            [X] HTTP Logging                            Web-Http-Logging               Installed
            [ ] Custom Logging                          Web-Custom-Logging             Available
            [ ] Logging Tools                           Web-Log-Libraries              Available
            [ ] ODBC Logging                            Web-ODBC-Logging               Available
            [X] Request Monitor                         Web-Request-Monitor            Installed
            [X] Tracing                                 Web-Http-Tracing               Installed
        [X] Performance                                 Web-Performance                Installed
            [X] Static Content Compression              Web-Stat-Compression           Installed
            [ ] Dynamic Content Compression             Web-Dyn-Compression            Available
        [X] Security                                    Web-Security                   Installed
            [X] Request Filtering                       Web-Filtering                  Installed
            [ ] Basic Authentication                    Web-Basic-Auth                 Available
            [ ] Centralized SSL Certificate Support     Web-CertProvider               Available
            [ ] Client Certificate Mapping Authentic... Web-Client-Auth                Available
            [ ] Digest Authentication                   Web-Digest-Auth                Available
            [ ] IIS Client Certificate Mapping Authe... Web-Cert-Auth                  Available
            [ ] IP and Domain Restrictions              Web-IP-Security                Available
            [ ] URL Authorization                       Web-Url-Auth                   Available
            [ ] Windows Authentication                  Web-Windows-Auth               Available
        [X] Application Development                     Web-App-Dev                    Installed
            [ ] .NET Extensibility 3.5                  Web-Net-Ext                    Available
            [X] .NET Extensibility 4.6                  Web-Net-Ext45                  Installed
            [X] Application Initialization              Web-AppInit                    Installed
            [X] ASP                                     Web-ASP                        Installed
            [ ] ASP.NET 3.5                             Web-Asp-Net                    Available
            [X] ASP.NET 4.6                             Web-Asp-Net45                  Installed
            [ ] CGI                                     Web-CGI                        Available
            [X] ISAPI Extensions                        Web-ISAPI-Ext                  Installed
            [X] ISAPI Filters                           Web-ISAPI-Filter               Installed
            [X] Server Side Includes                    Web-Includes                   Installed
            [X] WebSocket Protocol                      Web-WebSockets                 Installed
    [ ] FTP Server                                      Web-Ftp-Server                 Available
        [ ] FTP Service                                 Web-Ftp-Service                Available
        [ ] FTP Extensibility                           Web-Ftp-Ext                    Available
    [X] Management Tools                                Web-Mgmt-Tools                 Installed
        [X] IIS Management Console                      Web-Mgmt-Console               Installed
        [X] IIS 6 Management Compatibility              Web-Mgmt-Compat                Installed
            [X] IIS 6 Metabase Compatibility            Web-Metabase                   Installed
            [X] IIS 6 Management Console                Web-Lgcy-Mgmt-Console          Installed
            [X] IIS 6 Scripting Tools                   Web-Lgcy-Scripting             Installed
            [X] IIS 6 WMI Compatibility                 Web-WMI                        Installed
        [X] IIS Management Scripts and Tools            Web-Scripting-Tools            Installed
        [X] Management Service                          Web-Mgmt-Service               Installed
[X] IIS Hostable Web Core                               Web-WHC                        Installed
[ ] WebDAV Redirector                                   WebDAV-Redirector              Available
    [ ] Windows PowerShell Web Access                   WindowsPowerShellWeb...        Available
