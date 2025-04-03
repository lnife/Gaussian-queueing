# Gaussian Job Queueing  

A lightweight script for efficiently managing Gaussian job submissions in a Linux terminal.  

## Usage  

1. Place the script (`queue_jobs.sh`) in the same directory as your Gaussian input file (`xyz.gjf`).  
2. Run the script:  
   ```bash
   bash queue_jobs.sh

   #or

   bash fchk_queue_jobs.sh   #this converts .chk files to .fchk file

   #or

   bash xqueue_jobs.sh  #This creats separate folder inside normal termination and error (named after the file .gjf file) 


If execution fails, grant execution permission:
```
chmod +x queue_jobs.sh
bash queue_jobs.sh
```
## Functionality  

- Organizes jobs into two directories:  
  - **Normal_Termination/** → Stores successfully completed jobs  
  - **Error/** → Stores jobs that encountered errors  


## Upcoming Features

 A script for automatic conversion of .chk files to .fchk alongside queueing


## License

This project is open-source. Feel free to modify and improve it.

