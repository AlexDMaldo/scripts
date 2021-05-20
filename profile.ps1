$NTIdentity = [Security.Principal.WindowsIdentity]::GetCurrent()
$NTPrincipal = new-object Security.Principal.WindowsPrincipal $NTIdentity
$IsAdmin = $NTPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

$hostversion="v$($Host.Version.Major).$($Host.Version.Minor)"
$hostname = $host.Name

IF ($IsAdmin)
{
        $host.ui.RawUI.WindowTitle = "ADMINISTRATOR: $hostname $hostversion"
}
Else
{
        $host.ui.RawUI.WindowTitle = "$hostname $hostversion"
}