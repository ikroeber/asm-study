                section     .text
                
                global      leap_year

leap_year:      mov         edx, 0
                mov         eax, edi
                mov         ecx, 400
                div         ecx
                cmp         edx, 0
                je          .is_leap
                mov         edx, 0
                mov         eax, edi
                mov         ecx, 100
                div         ecx
                cmp         edx, 0
                je          .is_not_leap
                mov         edx, 0
                mov         eax, edi
                mov         ecx, 4
                div         ecx
                cmp         edx, 0
                jne          .is_not_leap
.is_leap:       
                mov         eax, 1
                ret
.is_not_leap:   mov         eax, 0
                ret