====================[ Build | testodbcomposite | Debug ]========================
/root/clion-2018.2.6/bin/cmake/linux/bin/cmake --build /root/CLionProjects/testodbcomposite/cmake-build-debug --target testodbcomposite -- -j 1
Scanning dependencies of target testodbcomposite
[ 50%] Building CXX object CMakeFiles/testodbcomposite.dir/driver.cxx.o
In file included from /root/CLionProjects/testodbcomposite/driver.cxx:10:0:
/root/CLionProjects/testodbcomposite/database.hxx:35:13: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
 inline std::auto_ptr<odb::database>
             ^
In file included from /opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/memory:81:0,
                 from /root/CLionProjects/testodbcomposite/driver.cxx:4:
/opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
In file included from /root/CLionProjects/testodbcomposite/driver.cxx:10:0:
/root/CLionProjects/testodbcomposite/database.hxx: In function ‘std::auto_ptr<odb::database> create_database(int&, char**)’:
/root/CLionProjects/testodbcomposite/database.hxx:62:3: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
   auto_ptr<database> db (new odb::mysql::database (argc, argv));
   ^
In file included from /opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/memory:81:0,
                 from /root/CLionProjects/testodbcomposite/driver.cxx:4:
/opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
/root/CLionProjects/testodbcomposite/driver.cxx: In function ‘int main(int, char**)’:
/root/CLionProjects/testodbcomposite/driver.cxx:23:5: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
     auto_ptr<database> db (create_database (argc, argv));
     ^
In file included from /opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/memory:81:0,
                 from /root/CLionProjects/testodbcomposite/driver.cxx:4:
/opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
/root/CLionProjects/testodbcomposite/driver.cxx:45:7: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
       auto_ptr<person> joe (db->load<person> (id));
       ^
In file included from /opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/memory:81:0,
                 from /root/CLionProjects/testodbcomposite/driver.cxx:4:
/opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
/root/CLionProjects/testodbcomposite/driver.cxx:59:7: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
       auto_ptr<person> joe (db->load<person> (id));
       ^
In file included from /opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/memory:81:0,
                 from /root/CLionProjects/testodbcomposite/driver.cxx:4:
/opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
/root/CLionProjects/testodbcomposite/driver.cxx:90:7: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
       auto_ptr<person> p (
       ^
In file included from /opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/memory:81:0,
                 from /root/CLionProjects/testodbcomposite/driver.cxx:4:
/opt/rh/devtoolset-4/root/usr/include/c++/5.2.1/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
[100%] Linking CXX executable testodbcomposite
CMakeFiles/testodbcomposite.dir/driver.cxx.o：在函数‘__static_initialization_and_destruction_0(int, int)’中：
/root/CLionProjects/testodbcomposite/person-odb.hxx:578：对‘odb::access::object_traits_impl<person, (odb::database_id)0>::table_name’未定义的引用
CMakeFiles/testodbcomposite.dir/driver.cxx.o：在函数‘odb::object_traits<person>::id_type odb::database::persist_<person, (odb::database_id)5>(person&)’中：
/usr/local/include/odb/database.txx:38：对‘odb::access::object_traits_impl<person, (odb::database_id)0>::persist(odb::database&, person const&)’未定义的引用
CMakeFiles/testodbcomposite.dir/driver.cxx.o：在函数‘void odb::database::update_<person, (odb::database_id)5>(person&)’中：
/usr/local/include/odb/database.ixx:776：对‘odb::access::object_traits_impl<person, (odb::database_id)0>::update(odb::database&, person const&)’未定义的引用
CMakeFiles/testodbcomposite.dir/driver.cxx.o：在函数‘odb::object_traits<person>::pointer_type odb::database::find_<person, (odb::database_id)5>(odb::object_traits<person>::id_type const&)’中：
/usr/local/include/odb/database.ixx:753：对‘odb::access::object_traits_impl<person, (odb::database_id)0>::find(odb::database&, email_address const&)’未定义的引用
CMakeFiles/testodbcomposite.dir/driver.cxx.o：在函数‘odb::result<person> odb::database::query_<person, (odb::database_id)5, (odb::class_kind)0>::call<odb::query<person, odb::mysql::query_base> >(odb::database&, odb::query<person, odb::mysql::query_base> const&)’中：
/usr/local/include/odb/database.txx:478：对‘odb::access::object_traits_impl<person, (odb::database_id)0>::query(odb::database&, odb::mysql::query_base const&)’未定义的引用
collect2: error: ld returned 1 exit status
gmake[3]: *** [testodbcomposite] 错误 1
gmake[2]: *** [CMakeFiles/testodbcomposite.dir/all] 错误 2
gmake[1]: *** [CMakeFiles/testodbcomposite.dir/rule] 错误 2
gmake: *** [testodbcomposite] 错误 2
