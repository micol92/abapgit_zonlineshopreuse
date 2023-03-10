CLASS zcl_data_generator_util DEFINITION
  PUBLIC
  INHERITING FROM cl_xco_cp_adt_simple_classrun
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    METHODS: main REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_data_generator_util IMPLEMENTATION.
  METHOD main.
    DATA: itab TYPE TABLE OF zos_prepitem.

    DELETE FROM zonlineshop_xxx.
    DELETE FROM zshop_as_xxx.

*   read current timestamp
*   GET TIME STAMP FIELD DATA(zv_tsl).

*   fill internal package table (itab)
    itab = VALUE #(
  ( pkgid = '1' pkgname = 'IT Developer Package' pkgdescr = 'Notebook + Docking Station, 2x Monitor' werks = '1710' txz01 = 'Created by Online Shop' knttp = 'U' menge =  '1' meins = 'EA'
    preis = '4000' waers = 'EUR' matkl = 'A001' ekgrp = '001' ekorg = '1710'  )
  ( pkgid = '2' pkgname = 'IT Consultant Package' pkgdescr = 'Notebook, Headset, iPhone' werks = '1710' txz01 = 'Created by Online Shop' knttp = 'U' menge =  '1' meins = 'EA'
    preis = '2000' waers = 'EUR' matkl = 'A001' ekgrp = '001' ekorg = '1710'  )
  ( pkgid = '3' pkgname = 'IT Sales Package' pkgdescr = 'Notebook, Headset, iPhone + Airpods + Charger, Spinne' werks = '1710' txz01 = 'Created by Online Shop' knttp = 'U' menge =  '1' meins = 'EA'
    preis = '3000' waers = 'EUR' matkl = 'A001' ekgrp = '001' ekorg = '1710'  )
  ( pkgid = '4' pkgname = 'IT General Package' pkgdescr = 'Notebook, Headset, Monitor' werks = '1710' txz01 = 'Created by Online Shop' knttp = 'U' menge =  '1' meins = 'EA'
    preis = '1500' waers = 'EUR' matkl = 'A001' ekgrp = '001' ekorg = '1710'  )
 ).

*   delete existing entries in the database table
    DELETE FROM zos_prepitem.

*   insert the new table entries
    INSERT zos_prepitem FROM TABLE @itab.

*   check the result
    SELECT * FROM zos_prepitem INTO TABLE @itab.
    out->write( sy-dbcnt ).
    out->write( 'Package data inserted successfully!').
  ENDMETHOD.

ENDCLASS.
