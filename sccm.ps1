WMIC /namespace:\\root\ccm path SMS_LookupMP
WMIC /namespace:\\root\ccm path SMS_Client CALL GetAssignedSite
$([WmiClass]"\\%COMPUTERNAME%\ROOT\ccm:SMS_Client").getassignedsite() | select sSiteCode