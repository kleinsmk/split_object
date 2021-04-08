<#
.SYNOPSIS
    Splits and object into a multi-dimenional obect
.EXAMPLE
    Split-Object -inputObject $obj -delimiter ":"

#>
function Split-Object {
    param (

        [Parameter(ValueFromPipeline,ValueFromPipelineByPropertyName)]
        $inputObject,

        [string]$delimiter
    )
    process { 
        #split object into multidensional object
        foreach ( $item in $inputObject ) { 
            $split = $item.split($delimiter)
            [PSCustomObject]@{
                                        string0 = $split[0]
                                        string1 = $split[1]
                    }
        }
    }
}   



