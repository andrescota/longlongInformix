# longlongInformix  
  
https://www.ibm.com/docs/en/informix-servers/12.10?topic=types-integer-data  
  
on 64bits:

$ ./demo1  
t size: [8] [9223372036854775803]  
w size: [8] [9223372036854775804]  
x size: [8] [9223372036854775805]  
y size: [8] [9223372036854775806]  
  
Hi [9223372036854775803]!  
Hi [9223372036854775804]!  
Hi [9223372036854775805]!  
Hi [9223372036854775806]!  
  
after f() t size: [8] [9223372036854775807]  
after f() w size: [8] [9223372036854775807]  
after f() x size: [8] [9223372036854775807]  
after f() y size: [8] [9223372036854775807]  
