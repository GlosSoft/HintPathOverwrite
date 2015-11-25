param($installPath, $toolsPath, $package, $project)

Write-Host "You need to remove the target from the project!"
<#
$project = Get-Project
$projectPath = $project.FullName;
$projectContent = [IO.File]::ReadAllText($projectPath)
$projectContent = $projectContent.Replace('<Import Project="HintPathOverwrite.targets" />', '');

$Project.Save()
$projectContent = [IO.File]::WriteAllText($projectPath, $projectContent)
#>