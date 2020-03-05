create or replace type t_record as object (
  i number,
  n varchar2(100)
);
/
create or replace type t_table as table of t_record;
