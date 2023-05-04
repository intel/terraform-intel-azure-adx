########################
####     Intel      ####
########################

#Intel Recommended ADX SKU
#The E-v5, and Lsv3-series run on the 3rd Generation Intel® Xeon® Platinum 8370C (Ice Lake), the Intel® Xeon® Platinum 8272CL (Cascade Lake) processors, or the Intel® Xeon® Platinum 8168 (Skylake) processors.
# For Compute Optimized instances, we recommend  - Standard_Ed_v5 (2,4,8,16 vcpu example: Standard_E16d_v5)  
# For Storage Optimized instances, we recommend - Standard_Lsv3 (8,16, 32 vcpu - example: Standard_L32s_v3), or Standard_Esv5 (2,4,8,16 vcpu- example: Standard_E16s_v5) 
# For Isolated: Eidsv4 (80 vcpu)
# Ex.: Standard_E8d_v5 -> 8 stands for vCPU count
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/data-analytics-azure-lsv3-vs-lsv1-benchmark.html
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/azure-dv4-vms-outperform-dv3-benchmark.html
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-analysis-127-faster-on-azure-benchmark.html
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/msft-sql-server-snapshot.html
# Azure Docs:  https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-server-oltp-azure-esv5-benchmark.html

# For SKU recommendation see above for Intel Recommended ADX SKU
variable "adx_sku" {
  description = "Instance SKU, see comments above for guidance"
  type        = string
  default     = "Standard_E8d_v5"
}

########################
####    Required    ####
########################

variable "resource_group_name" {
  description = "Existing Resource Group where databricks reosurce will be created."
  type        = string
}

#Principal ID
variable "principal_id" {
  description = "The User or Principal ID to grant access to the cluster and database. The prinicpal id should already exist"
  type        = string
}
#Autoscale minimum_instances
variable "minimum_instances" {
  description = "The User or Principal ID to grant access to the cluster and database. The prinicpal id should already exist"
  type        = string
  default     = "2"
}
#Autoscale maximum_instances
variable "maximum_instances" {
  description = "The User or Principal ID to grant access to the cluster and database. The prinicpal id should already exist"
  type        = string
  default     = "4"
}

########################
####     Other      ####
########################
