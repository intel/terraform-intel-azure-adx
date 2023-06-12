<p align="center">
  <img src="./images/logo-classicblue-800px.png" alt="Intel Logo" width="250"/>
</p>

# Intel® Cloud Optimization Modules for Terraform  

© Copyright 2022, Intel Corporation

## HashiCorp Sentinel Policies

This file documents the HashiCorp Sentinel policies that apply to this module

## Policy 1

Description: 
Edv5-series virtual machines run on the 3rd Generation Intel® Xeon® Platinum 8370C (Ice Lake) processor reaching an all core turbo clock speed of up to 3.5 GHz. These virtual machines offer up to 104 vCPU and 672 GiB of RAM and fast, local SSD storage up to 3800 GiB. Edv5-series virtual machines are ideal for memory-intensive enterprise applications and applications that benefit from low latency, high-speed local storage.

Esv5-series virtual machines run on the 3rd Generation Intel® Xeon® Platinum 8370C (Ice Lake) processor reaching an all core turbo clock speed of up to 3.5 GHz. These virtual machines offer up to 104 vCPU and 672 GiB of RAM. Esv5-series virtual machines don't have temporary storage thus lowering the price of entry.

The Lsv3-series of Azure Virtual Machines (Azure VMs) features high-throughput, low latency, directly mapped local NVMe storage. These VMs run on the 3rd Generation Intel® Xeon® Platinum 8370C (Ice Lake) processor in a hyper-threaded configuration. This new processor features an all-core turbo clock speed of 3.5 GHz with Intel® Turbo Boost Technology, Intel® Advanced-Vector Extensions 512 (Intel® AVX-512) and Intel® Deep Learning Boost.

Resource type: azurerm_kusto_cluster
# For Compute Optimized instances, we recommend:
Standard_E2d_v5
Standard_E4d_v5 
Standard_E8d_v5 
Standard_E16d_v5 

# For Storage Optimized instances, we recommend:
Standard_L8sv3 
Standard_L16sv3 
Standard_L32sv3 
Standard_E2sv5 
Standard_E4sv5
Standard_E8sv5
Standard_E16sv5

# For Isolated instances, we recommend:
E80idsv4 