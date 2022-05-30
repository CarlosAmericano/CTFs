## DESCRIPTION
How well do you know assembly? Do you know of any tools that can help you? (Hint, they both start with the letter G)




## NOTES

  std::allocator<char>::~allocator((allocator<char> *)&local_f9);
  if (param_1 == 0x121) {
                    /* try { // try from 0010240d to 00102535 has its CatchHandler @ 00102766 */
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator=
              (local_128,"ctf");
    std::operator+((char *)local_f8,(basic_string *)&DAT_0010300d);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator=
              (local_128,local_f8);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::~basic_string
              ((basic_string<char,std::char_traits<char>,std::allocator<char>> *)local_f8);
    std::operator+((basic_string.conflict *)local_d8,(char *)local_128);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator=
              (local_128,local_d8);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::~basic_string
              ((basic_string<char,std::char_traits<char>,std::allocator<char>> *)local_d8);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,"t3");
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,'5');
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,'t');
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,'_');
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,"fl");
    std::__cxx11::to_string((__cxx11 *)local_b8,4);
                    /* try { // try from 0010254a to 0010254e has its CatchHandler @ 00102752 */
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,local_b8);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::~basic_string
              ((basic_string<char,std::char_traits<char>,std::allocator<char>> *)local_b8);
                    /* try { // try from 00102572 to 00102723 has its CatchHandler @ 00102766 */
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,"g");
    std::operator+((basic_string.conflict *)local_98,(char *)local_128);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator=
              (local_128,local_98);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::~basic_string
              ((basic_string<char,std::char_traits<char>,std::allocator<char>> *)local_98);
    std::operator+((basic_string.conflict *)local_78,(char *)local_128);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator=
              (local_128,local_78);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::~basic_string
              ((basic_string<char,std::char_traits<char>,std::allocator<char>> *)local_78);
    std::operator+((basic_string.conflict *)local_58,(char *)local_128);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator=
              (local_128,local_58);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::~basic_string
              ((basic_string<char,std::char_traits<char>,std::allocator<char>> *)local_58);
    std::operator+((basic_string.conflict *)local_38,(char *)local_128);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator=
              (local_128,local_38);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::~basic_string
              ((basic_string<char,std::char_traits<char>,std::allocator<char>> *)local_38);
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,"n0");
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,'r');
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,"3");
    std::__cxx11::basic_string<char,std::char_traits<char>,std::allocator<char>>::operator+=
              (local_128,"}");
    pbVar1 = std::operator<<((basic_ostream *)std::cout,"Finished processing flag!");
    std::operator<<(pbVar1,"\n");


## FLAG
something like this

byuctf{t35t_fl4g_pl353_ign0r3}