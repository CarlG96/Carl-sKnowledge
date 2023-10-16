# This part of the script is for advisor recommendations
Connect-AzAccount -TenantId 7988742d-c543-4b9a-87a9-10a7b354d289
# Sets scope as subscription where omseprd1 stuff is
Set-AzContext -subscription 'OS Enterprise Prod1'
# Gets all the advisor recommendations for the omseprd1 virtual machines
$omseprd1VMsAdvisorRecommendations = Get-AzAdvisorRecommendation  | Where-Object {$_.ResourceGroupName -like '*omseprd*'} | Where-Object {$_.ImpactedField -eq "Microsoft.Web/sites"} 
# Gets all the advisor recommendations for the omseprd1 app services
$omseprd1AppServicesAdvisorRecommendations = Get-AzAdvisorRecommendation  | Where-Object {$_.ResourceGroupName -like '*OMSEPRD*'} | Where-Object {$_.ImpactedField -eq "Microsoft.Compute/virtualMachines"}
# Sets scope as subscription where omseprd3 stuff is
Set-AzContext -subscription 'OS Enterprise PSGA UK_PROD1'
# Gets all the advisor recommendations for the omseprd3 virtual machines
$omseprd3VMsAdvisorRecommendations = Get-AzAdvisorRecommendation  | Where-Object {$_.ResourceGroupName -like '*OMSEPRD*'} | Where-Object {$_.ImpactedField -eq "Microsoft.Compute/virtualMachines"}
# Gets all the advisor recommendations for the omseprd3 app services
$omseprd3AppServicesAdvisorRecommendations = Get-AzAdvisorRecommendation  | Where-Object {$_.ResourceGroupName -like '*omseprd*'} | Where-Object {$_.ImpactedField -eq "Microsoft.Web/sites"}

# Add all the advisor recommendations together
$allomseprdAppServicesAndVMsAdvisorRecommendations = $omseprd1VMsAdvisorRecommendations + $omseprd1AppServicesAdvisorRecommendations + $omseprd3VMsAdvisorRecommendations + $omseprd3AppServicesAdvisorRecommendations

$allomseprdAppServicesAndVMsAdvisorRecommendations | Export-Csv -Path ".\Advisor_Recommendations.csv" -Force
$allomseprdAppServicesAndVMsAdvisorRecommendations | Format-Table