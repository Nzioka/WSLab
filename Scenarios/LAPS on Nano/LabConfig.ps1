﻿#################
### Labconfig ###
#################
$LabConfig=@{ DomainAdminName='LabAdmin'; AdminPassword='LS1setup!'; Prefix = 'WSLab-'; SwitchName = 'LabSwitch'; DCEdition='ServerDataCenter'; AdditionalNetworksConfig=@(); VMs=@()}

1..2 | % {"Nano$_"} | % { $LABConfig.VMs += @{ VMName = $_ ; Configuration = 'Simple'; ParentVHD = 'Win2016NanoHV_G2.vhdx'; MemoryStartupBytes= 128MB ; DSCMode='Pull'; DSCConfig=@('LAPS_Nano_Install','LAPSConfig1')} }
3..4 | % {"Nano$_"} | % { $LABConfig.VMs += @{ VMName = $_ ; Configuration = 'Simple'; ParentVHD = 'Win2016NanoHV_G2.vhdx'; MemoryStartupBytes= 128MB ; DSCMode='Pull'; DSCConfig=@('LAPS_Nano_Install','LAPSConfig2')} }
