# Build PDNuXLNodeInstallers
Automating the integration of the NuXL node into Thermo Fisher’s **Proteome Discoverer**.

## Currently Supported
### Proteome Discoverer 3.0
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

### Proteome Discoverer 3.1
Support in progress.