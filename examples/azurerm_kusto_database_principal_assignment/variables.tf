########################
####     Intel      ####
########################

#ADX SKU
#The E-v5, and Lsv3-series run on the 3rd Generation Intel® Xeon® Platinum 8370C (Ice Lake), the Intel® Xeon® Platinum 8272CL (Cascade Lake) processors, or the Intel® Xeon® Platinum 8168 (Skylake) processors.
# We recommend Compute Optimized instances - Standard_E80ids_v4, Standard_E2d_v5, Standard_E4d_v5, Standard_E16d_v5 
# For Storage Optimized instances, we recommend - Standard_L8s_v3, Standard_L16s_v3, Standard_L32s_v3
# Ex.: Standard_E8d_v5 -> 8 stands for vCPU count
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/data-analytics-azure-lsv3-vs-lsv1-benchmark.html
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/azure-dv4-vms-outperform-dv3-benchmark.html
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-analysis-127-faster-on-azure-benchmark.html
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/msft-sql-server-snapshot.html
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-server-oltp-azure-esv5-benchmark.html

variable "adx_sku" {
  description = "Instance SKU, see comments above for guidance"
  type        = string
  default     = "Standard_E2d_v5"
}

########################
####    Required    ####
########################

#Resource group name
variable "resource_group_name" {
  description = "Resource Group where resource will be created. It should already exist"
  type        = string
}

########################
####     Other      ####
########################
