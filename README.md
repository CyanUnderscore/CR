# CR (Compile and Run) //only work in linux
 a simple bash script tu compile and run assembly code
 
 for it to work you need to put the CR file in your directory and run :  
 ```Shell
 ./CR theFileToCompile.s 
 ```  
 if you want to try there is a simple script printing Hello World (main.s):  
 ```Shell
 ./CR main.s
 ```  
 it will create a executable file  
 
 ## Warning CR require nasm  
 
 if it fail to compile check if you have nasm install if you don't, run :  
 for ubuntu :  
 ```Shell
  sudo apt-get install nasm
 ```  
 for fedora :  
 
 ```Shell
  sudo dnf install nasm
 ```  
 
 
 ## ERRORS ?  
 if it says that there is a permission problem run :  
 ```Shell
 chmod -x CR 
 ```  
