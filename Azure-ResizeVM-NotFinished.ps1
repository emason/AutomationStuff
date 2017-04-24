﻿Param
    (   
        [Parameter(Mandatory=$true)]
        [String]
        $VMName

    )

$ResourceGroup = Get-AutomationVariable -Name "ResourceGroupRWEUS2"

# Import Minimum Required Module Version(s)

    Import-Module `
        -Name AzureRM.Compute `
        -MinimumVersion 2.8.0

# Select Azure Cloud Environment
    $AzureEnv = (Get-AzureRmEnvironment).Name

            -Title "Select a new VM Size ..." `
            -PassThru