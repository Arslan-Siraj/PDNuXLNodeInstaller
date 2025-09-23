## Build PDNuXLNodeInstallers
Automating the integration of the NuXL node into Thermo Fisher’s **Proteome Discoverer**.

## Proteome Discoverer 3.0
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

## Proteome Discoverer 3.1
Support in progress.


## Citation  
  Welp, L. M., Wulf, A., Chernev, A., Horokhovskyi, Y., Moshkovskii, S., Dybkov, O., Neumann, P., Pašen, M., Siraj, A., Raabe, M.,...., Kohlbacher, O., Liepe, J., Sachsenberg, T., Urlaub, H. (2025). *Chemical crosslinking extends and complements UV crosslinking in analysis of RNA/DNA nucleic acid–protein interaction sites by mass spectrometry*. Nucleic Acids Research, 53(15), gkaf727. [https://doi.org/10.1093/nar/gkaf727](https://doi.org/10.1093/nar/gkaf727)