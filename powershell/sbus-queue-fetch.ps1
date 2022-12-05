$namespaces = Get-AzServiceBusNamespace
foreach ($namespace in $namespaces) {
    $queues = Get-AzServiceBusQueue -ResourceGroup $namespace.ResourceGroupName -NamespaceName $namespace.Name
    foreach ($queue in $queues) {
        Write-Host -NoNewline "Service-Bus : "
        $namespace.Name
        Write-Host -NoNewline "Queue : "
        $queue.name
        Write-Host -NoNewline "Max-Threshold : "
        $queue.MaxSizeInMegabytes
        Write-Host -NoNewline "Messages Count : "
        $queue.CountDetails
        Write-Host " `r` "
    }             
  }
