echo on
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%

set SUBFILENAME=backup_%CUR_YYYY%%CUR_MM%%CUR_DD%

<<<<<<< HEAD
rem pg_dump -U postgres -c db_active > backup_20230301

copy \Users\jz204\OneDrive\reach\aq2\%SUBFILENAME%

set PGPASSWORD=11Danielzez
psql -U postgres db_active < %SUBFILENAME%
=======
copy \pro\aq1\%SUBFILENAME%
>>>>>>> d8e6c2bc36b4fe738a7b80ebe6657d4df4f2a284
