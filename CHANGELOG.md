# CHANGELOG

## 0.4.1

* Added support for 19c RAC O RHEL8

## 0.4.0

* config rework to base the settings on the SGA size in GB
* **INCOMPATIBLE CHANGES**:
  - Variable renaming for configurable settings

## 0.3.0

* updated to **eyp-chronyd v0.2**

## 0.2.8

* bugfix tuned

## 0.2.7

* removed add_stage flag

## 0.2.6

* added more variables to be able to customize default limits for oracle and grid users
* added more variables to be able to customize default sysctl settings

## 0.2.5

* added configurable limits:
  - limit_soft_nofile_grid
  - limit_soft_nofile_oracle
  - limit_soft_nproc_oracle

## 0.2.4

* rework class variables
* added **oracledb::fs_aio_max_nr** variable

## 0.2.3

* bugfix tmpfs
* metadata lint

## 0.2.2

* added a flag to disable grub management
* added variables:
  * kernel_shmall
  * kernel_shmmax

## 0.2.1

* changed subtask to inherit from **oracledb** instead of **oracledb::params**

## 0.1.37

* adding specific stage for oracledb

## 0.1.34

* permanent bufix for shm

## 0.1.33

* temporal bugfix for shm

## 0.1.31

* eyp-limits to eyp-pam

## 0.1.30

* updated **eyp-grub2** minimum version
