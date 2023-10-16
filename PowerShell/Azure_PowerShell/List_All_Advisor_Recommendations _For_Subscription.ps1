# This part of the script is for advisor recommendations
Connect-AzAccount -TenantId 7988742d-c543-4b9a-87a9-10a7b354d289
# Sets scope as subscription where omseprd1 stuff is
Set-AzContext -subscription 'OS Enterprise Prod1'
$omseprd1AdvisorRecommendations = Get-AzAdvisorRecommendation 
$omseprd1AdvisorRecommendations | Export-Csv -Path ".\Advisor_Recommendations_For_omseprd1.csv" -Force
Set-AzContext -subscription 'OS Enterprise PSGA UK_PROD1'
$omseprd3AdvisorRecommendations = Get-AzAdvisorRecommendation
$omseprd3AdvisorRecommendations | Export-Csv -Path ".\Advisor_Recommendations_For_omseprd3.csv" -Force
