rem flyctl proxy 5432 -a reach6-db
rem flyctl proxy 15432:5433 -a reach6-db
rem set PGPASSWORD=mb6bhPx2LJxhnRJ
rem pg_dump -p 15432 -h localhost -U postgres -c -f flyback2.bak -d reach4

echo on
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%

set SUBFILENAME=backup_%CUR_YYYY%%CUR_MM%%CUR_DD%

copy copy \pro\aq1\%SUBFILENAME%

