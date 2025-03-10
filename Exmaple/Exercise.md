## Exercise: Running the Script  

1. **Download** the script file (`queue_jobs.sh`) and the four test files. *(Note: The 4th test file is modified to trigger an error.)*  
2. **Place** all `.gjf` files and the script in the same folder.  
3. **Open a terminal** and run:  
   ```bash
   bash queue_jobs.sh



## If execution fails, grant execution permission:
```
chmod +x queue_jobs.sh
bash queue_jobs.sh
```
## The script will process the Gaussian input files and classify them:

- **Normal_Termination/** → Successfully completed jobs  
- **Error/** → Jobs that encountered errors (only if errors occur)  

 
 ## Further jobs will be automatically stored in these directories.

 ## Check the output folder for results.


