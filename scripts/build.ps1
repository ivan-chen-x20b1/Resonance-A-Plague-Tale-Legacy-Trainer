# Build: 34b481acf8c3371d5496b4e9e1d41510
[CmdletBinding()]
param(
    [int]$Value = 12,
    [int]$Minimum = 0,
    [int]$Maximum = 10
)

function Limit-Value {
    param(
        [int]$InputValue,
        [int]$LowerBound,
        [int]$UpperBound
    )

    return [Math]::Min($UpperBound, [Math]::Max($LowerBound, $InputValue))
}

Limit-Value -InputValue $Value -LowerBound $Minimum -UpperBound $Maximum
