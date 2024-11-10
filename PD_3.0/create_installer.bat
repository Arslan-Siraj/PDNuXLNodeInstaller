REM harvest all files from share/OpenMS folder and automatically generate components, GUIDs so we don't need to do this manually for hundreds of files.
heat dir "C:\Program Files\Thermo\Proteome Discoverer 3.0\Proteome Discoverer 3.0\Tools\NuXL\share\OpenMS" -gg -sfrag -sreg -template component -cg OpenMSShareComponents -dr NuXLShareOpenMS -o D:\NUXL_3.0\THERMO\OpenMSShareComponents.wxs
REM compile to wixobj
candle D:\NuXL_3.0\THERMO\OpenMSShareComponents.wxs D:\NuXL_3.0\THERMO\NuXLMain.wxs
REM link into msi installer
light -o PDNuXLNodes.msi NuXLMain.wixobj OpenMSShareComponents.wixobj