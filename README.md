
This repository contains the HYPER-FORD for Fast Operation-optimized Robust Design of run-of-river HYdroPowER plants. 

The methodology presented in this repository originates from the paper "Robust and computationally efficient Design for Run-of-River Hydropower" authored by V. Yildiz, S.F. Brown, and C. Rouge, which was submitted to Environmental Modelling & Software.

## HYPER_FORD_run
main file to run for each case study listed below:

Case Study 1: Besik RoR
Case Study 2: Tepe RoR
Case Study 3: Karacay RoR
Case Study 4: Kaplan RoR
Case Study 5: Buyukdere RoR


## MO_optimization
For each case study, users can leverage the MO_optimization module to generate design alternatives based on site and flow characteristics. HYPER_OP is coupled with  multi-objective evolutionary algorithm (AMALGAM)  to solve multi-objective design problems.  Users have the flexibility to run each case study using either long-term records or sampled points, providing versatility in analysis.

##Robustness_analysis
The Robustness_analysis module enables users to assess the robustness of design alternatives generated with either long-term records or sampled points. It evaluates the performance of designs under future states, considering both long-term flows and sampled future flows. This analysis aids in ensuring the reliability and resilience of the proposed designs.



## License

This project is licensed under the MIT License. See the LICENSE file for more details.

## Contact

If you have any questions or need further assistance, please feel free to contact us at [vyildiz1@sheffield.ac.uk].

Happy robustness analysis and post-processing!
