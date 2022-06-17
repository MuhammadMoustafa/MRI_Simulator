# MRI_Simulator

### Cairo university
### Faculty of Engineering
### Systems and Biomedical Engineering Department


#### MRI Pulse Sequence Simulator GUI using MATLAB 2018
Medical Equipment (MRI) class project created by:
- Mahmoud Fathy
- Mohsen Ahmed
- Muhammad Moustafa
- Omar Mahmoud

### Submitted to:
- Dr. Tamer Basha

Applying the different pulse sequence algorithms on the Shepp-Logan phantom.

#### Sequences used are:
- GRE 
- SE
- FSE
- SSFP

#### With preparation procedures:
- T1 preparation
- T2 preparation
- Tagging

Each Seuquence can be modified form its xml file.
The slow parts of the code has been accelerated by converting it to C code using matlab mex "same as Coder in Matlab 2022"

#### Samples
- None+GRE
![None+GRE](samples/none_gre.png?raw=true)
- T2Prep+SSFP
![T2Prep+SSFP](samples/t2prep_ssfp.png?raw=true)
- Tagging
![Tagging](samples/tagging.png?raw=true)
