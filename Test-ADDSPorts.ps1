function Test-ADDSPorts
{
    Param($ComputerName)
    $PortArray = "25","53","67","88","123","135","137","138","139","389","445","464","636","2535","3268","3269","5722","9389"
        ForEach ($Port in $portArray)
        {
            Write-Host -NoNewline "$Port Enabled: "
            Test-NetConnection -ComputerName $Computername -Port $port -InformationLevel Quiet -WarningAction SilentlyContinue
        }
}