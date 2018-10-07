<<<<<<< HEAD
﻿


$cert = New-SelfSignedCertificate -Type Custom -KeySpec Signature -Subject "CN=wingovLabP2SRootCert" -KeyExportPolicy Exportable -HashAlgorithm sha256 -KeyLength 2048 -CertStoreLocation "Cert:\CurrentUser\My" -KeyUsageProperty Sign -KeyUsage CertSign



=======
﻿


$cert = New-SelfSignedCertificate -Type Custom -KeySpec Signature -Subject "CN=wingovLabP2SRootCert" -KeyExportPolicy Exportable -HashAlgorithm sha256 -KeyLength 2048 -CertStoreLocation "Cert:\CurrentUser\My" -KeyUsageProperty Sign -KeyUsage CertSign



>>>>>>> d8789ae7c187dd6c3edf9ca262ac2c9aa511245c
New-SelfSignedCertificate -Type Custom -KeySpec Signature -Subject "CN=wingovLabP2SChildCert" -KeyExportPolicy Exportable 	-HashAlgorithm sha256 -KeyLength 2048 -CertStoreLocation "Cert:\CurrentUser\My" -Signer $cert -TextExtension @("2.5.29.37={text}1.3.6.1.5.5.7.3.2")