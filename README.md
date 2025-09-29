## PDNuXLInstaller

This repository created for Windows (.msi) installer for the NuXL node used in Thermo Fisher’s **Proteome Discoverer**.

- [Proteome Discoverer 3.0 Installer](#proteome-discoverer-30-installer)
- [Proteome Discoverer 3.1 Installer](#proteome-discoverer-31-installer) 
- [Proteome Discoverer 3.0 and 3.1 manual installation](#proteome-discoverer-30-and-31-manual-installation)
- [Citation](#citation)

---

## Proteome Discoverer 3.0 Installer
- **Packaging and configuration (.wxs):**  
  Repository path: <https://github.com/Arslan-Siraj/PDNuXLNodeInstaller/tree/main/PD_3.0>  
  Contains the WiX source defining file shipment and installer configuration.
- **Continuous integration (GitHub Actions):**  
  Workflow: <https://github.com/Arslan-Siraj/PDNuXLNodeInstaller/blob/main/.github/workflows/build_installer_PD_3_0.yaml>  
  Automatically compiles additional resources into `.wixobj` files and produces the `.msi` installer.
- **Prerequisite:**  
  Thermo Fisher **Proteome Discoverer 3.0** must be installed prior to running the PDNuXL installer.
- **Download (.msi):**  
  Use the released installer **v0.0.2** to run NuXL within Proteome Discoverer 3.0:  
  <https://github.com/Arslan-Siraj/PDNuXLNodeInstaller/releases/tag/v0.0.2>
- **Usage:**  
  After installing the above `.msi`, launch Proteome Discoverer 3.0 and configure workflows including the NuXL node as needed.
- **Using NuXL within Proteome Discoverer 3.0**  
  Detailed setup and workflow guidance is available in the OpenMS documentation: <https://openms.de/RNPxl>

## Proteome Discoverer 3.1 Installer
- **Packaging and configuration (.wxs):**  
  Repository path: <https://github.com/Arslan-Siraj/PDNuXLNodeInstaller/tree/main/PD_3_1>  
  Contains the WiX source defining file shipment and installer configuration.
- **Continuous integration (GitHub Actions):**  
  Workflow: <https://github.com/Arslan-Siraj/PDNuXLNodeInstaller/blob/main/.github/workflows/build_installer_PD_3_1.yaml>  
  Automatically compiles additional resources into `.wixobj` files and produces the `.msi` installer.
- **Prerequisite:**  
  Thermo Fisher **Proteome Discoverer 3.1** must be installed prior to running the PDNuXL installer.
- **Download (.msi):**  
  Use the released installer **v0.0.3** to run NuXL within Proteome Discoverer 3.1:  
  <https://github.com/Arslan-Siraj/PDNuXLNodeInstaller/releases/tag/v0.0.3>
- **Usage:**  
  After installing the above `.msi`, launch Proteome Discoverer 3.1 and configure workflows including the NuXL node as needed.
- **Using NuXL within Proteome Discoverer 3.1**  
  Detailed setup and workflow guidance is available in the OpenMS documentation: <https://openms.de/RNPxl>

## Proteome Discoverer 3.0 and 3.1 manual installation

1. **Before Installation:** Download the PD archive from https://github.com/timosachsenberg/OpenMS/releases/tag/NuXLPublication
> **Note:** Please ensure that Proteome Discoverer is closed before running the NuXL installer.
2. **Manual Installation:** To register the NuXL nodes in ProteomeDiscoverer, files must be copied manually to the correct folder.

**For PD 3.0 you need to:**
1.	Copy `PD.OpenMS.AdapterNodes.dll` to `C:\Program Files\Thermo\Proteome Discoverer 3.0\Proteome Discoverer 3.0\System\Release`
2.	Copy `ZedGraph_OpenMS.dll` to `C:\Program Files\Thermo\Proteome Discoverer 3.0\Proteome Discoverer 3.0\System\Release`
3.	Go to `C:\Program Files\Thermo\Proteome Discoverer 3.0\Proteome Discoverer 3.0\Tools` and replace the folder `NuXL` with the one found in the .zip
4.	Open PD, go to `Administration -> Manage Licenses`. Click `Scan for Missing Features` on top of the list of available licenses on the right side of the PD window.

**For PD 3.1 you need to:**
- Copy `PD.OpenMS.NuXLNode.dll` to `C:\Program Files\Thermo\Proteome Discoverer 3.1\Proteome Discoverer 3.1\Thermo.Magellan.Server`
- Copy `PD.OpenMS.NuXLViewer.dll` to `C:\Program Files\Thermo\Proteome Discoverer 3.1\Proteome Discoverer 3.1\Thermo.Discoverer`
- Copy `ZedGraph_OpenMS.dll` to `C:\Program Files\Thermo\Proteome Discoverer 3.1\Proteome Discoverer 3.1\Thermo.Discoverer`
- Go to `C:\Program Files\Thermo\Proteome Discoverer 3.1\Proteome Discoverer 3.1\Tools` and copy the folder `NuXL` from the .zip.
- Open PD, go to `Administration -> Manage Licenses`. Click `Scan for Missing Features` on top of the list of available licenses on the right side of the PD window.

## Citation  
  Welp, L. M., Wulf, A., Chernev, A., Horokhovskyi, Y., Moshkovskii, S., Dybkov, O., Neumann, P., Pašen, M., Siraj, A., Raabe, M.,...., Kohlbacher, O., Liepe, J., Sachsenberg, T., Urlaub, H. (2025). *Chemical crosslinking extends and complements UV crosslinking in analysis of RNA/DNA nucleic acid–protein interaction sites by mass spectrometry*. Nucleic Acids Research, 53(15), gkaf727. [https://doi.org/10.1093/nar/gkaf727](https://doi.org/10.1093/nar/gkaf727)
