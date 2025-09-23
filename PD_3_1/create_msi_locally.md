# Build PDNuXLNodes MSI (Proteome Discoverer 3.1, WiX 3.11)

This document describes how to harvest NuXL files, compile WiX sources, and link the final `.msi`.

## Prerequisites
- **WiX Toolset v3.11** installed.
- NuXL files located at:  
  `C:\Program Files\Thermo\Proteome Discoverer 3.1\Proteome Discoverer 3.1\Tools\NuXL`  
  (contains `bin` and `share`).

---

## 1) Harvest all files from `Tools\NuXL`
Harvest everything under `Tools\NuXL` (both `share` and `bin`) and automatically generate Components and GUIDs, avoiding manual authoring for hundreds of files:

``` cmd
"C:\Program Files (x86)\WiX Toolset v3.11\bin\heat" dir "C:\Program Files\Thermo\Proteome Discoverer 3.1\Proteome Discoverer 3.1\Tools\NuXL" -gg -sfrag -sreg -template component -cg OpenMSShareComponents -dr NuXLShareOpenMS -o D:\PD_NUXL_package\nuxl_3_1_msi\package_3_1\OpenMSShareComponents.wxs 
```

## 2. make SourceDir
	placed the ShowSuccessMessage.vbs and others dlls. (if calling this in .wxs)
	The bin and share folders from "C:\Program Files\Thermo\Proteome Discoverer 3.1\Proteome Discoverer 3.1\Tools\NuXL"
	
## 3. Compile for wixobj
Compile the harvested .wxs and your main WiX source file using candle.exe:
``` cmd
"C:\Program Files (x86)\WiX Toolset v3.11\bin\candle" OpenMSShareComponents.wxs NuXLMain_3_1.wxs
```
This will generate `OpenMSShareComponents.wixobj` and `NuXLMain_3_1.wixobj`.

## 4. Link all for .msi
Use light.exe to link the object files into a final MSI installer:
``` cmd
"C:\Program Files (x86)\WiX Toolset v3.11\bin\light" -o PDNuXLNodes_3_1.msi NuXLMain_3_1.wixobj OpenMSShareComponents.wixobj
```
✅ After successful linking, you should get PDNuXLNodes_3_1.msi in your output directory.


