PROC SQL;
   CREATE TABLE WORK.BAS_AOM_ACTIE AS
   SELECT t1.Actie_cd,
          t1.Actie_oms,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.AOM_ACTIE_TCMG t1;
QUIT;

data WORK.BAS_AOM_ACTIE;
  set WORK.BAS_AOM_ACTIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_AOM_ACTIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Actie_cd" 
       ','
          "Actie_oms" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_AOM_ACTIE   end=EFIEOD; 
       format Actie_cd  ;
       format Actie_oms  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Actie_cd)
         then put "," @;
         else do;
                 if find(Actie_cd,'0A'x) > 0 and 2+klength(Actie_cd) = klength(quote(trim(Actie_cd)))
                   then put '22'x Actie_cd +(-1) '22'x "," @;
                   else put Actie_cd @;
              end;
       if missing(Actie_oms)
         then put "," @;
         else do;
                 if find(Actie_oms,'0A'x) > 0 and 2+klength(Actie_oms) = klength(quote(trim(Actie_oms)))
                   then put '22'x Actie_oms +(-1) '22'x "," @;
                   else put Actie_oms @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_AOM_TRA_ACTIE AS
   SELECT t1.Actie_cd,
          t1.Bgt_cd,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Tra_cd
     FROM DATAQASG.AOM_TRA_ACTIE_TCMG t1;
QUIT;

data WORK.BAS_AOM_TRA_ACTIE;
  set WORK.BAS_AOM_TRA_ACTIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_AOM_TRA_ACTIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Actie_cd" 
       ','
          "Bgt_cd" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Tra_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_AOM_TRA_ACTIE   end=EFIEOD; 
       format Actie_cd  ;
       format Bgt_cd  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Tra_cd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Actie_cd)
         then put "," @;
         else do;
                 if find(Actie_cd,'0A'x) > 0 and 2+klength(Actie_cd) = klength(quote(trim(Actie_cd)))
                   then put '22'x Actie_cd +(-1) '22'x "," @;
                   else put Actie_cd @;
              end;
       if missing(Bgt_cd)
         then put "," @;
         else do;
                 if find(Bgt_cd,'0A'x) > 0 and 2+klength(Bgt_cd) = klength(quote(trim(Bgt_cd)))
                   then put '22'x Bgt_cd +(-1) '22'x "," @;
                   else put Bgt_cd @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Tra_cd)
         then put "," @;
         else do;
                 if find(Tra_cd,'0A'x) > 0 and 2+klength(Tra_cd) = klength(quote(trim(Tra_cd)))
                   then put '22'x Tra_cd +(-1) '22'x "," @;
                   else put Tra_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_AOM_TRANSACTIETYPE AS
   SELECT t1.Beleidsadministratie_jn,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Geldstroom_jn,
          t1.Mdw_mandaat_jn,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Tra_cd,
          t1.Tra_oms,
          t1.Tra_stop
     FROM DATAQASG.AOM_TRANSACTIETYPE_TCMG t1;
QUIT;

data WORK.BAS_AOM_TRANSACTIETYPE;
  set WORK.BAS_AOM_TRANSACTIETYPE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_AOM_TRANSACTIETYPE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Beleidsadministratie_jn" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Geldstroom_jn" 
       ','
          "Mdw_mandaat_jn" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Tra_cd" 
       ','
          "Tra_oms" 
       ','
          "Tra_stop" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_AOM_TRANSACTIETYPE   end=EFIEOD; 
       format Beleidsadministratie_jn  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Geldstroom_jn  ;
       format Mdw_mandaat_jn  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Tra_cd  ;
       format Tra_oms  ;
       format Tra_stop  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Beleidsadministratie_jn)
         then put "," @;
         else do;
                 if find(Beleidsadministratie_jn,'0A'x) > 0 and 2+klength(Beleidsadministratie_jn) = klength(quote(trim(Beleidsadministratie_jn)))
                   then put '22'x Beleidsadministratie_jn +(-1) '22'x "," @;
                   else put Beleidsadministratie_jn @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Geldstroom_jn)
         then put "," @;
         else do;
                 if find(Geldstroom_jn,'0A'x) > 0 and 2+klength(Geldstroom_jn) = klength(quote(trim(Geldstroom_jn)))
                   then put '22'x Geldstroom_jn +(-1) '22'x "," @;
                   else put Geldstroom_jn @;
              end;
       if missing(Mdw_mandaat_jn)
         then put "," @;
         else do;
                 if find(Mdw_mandaat_jn,'0A'x) > 0 and 2+klength(Mdw_mandaat_jn) = klength(quote(trim(Mdw_mandaat_jn)))
                   then put '22'x Mdw_mandaat_jn +(-1) '22'x "," @;
                   else put Mdw_mandaat_jn @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Tra_cd)
         then put "," @;
         else do;
                 if find(Tra_cd,'0A'x) > 0 and 2+klength(Tra_cd) = klength(quote(trim(Tra_cd)))
                   then put '22'x Tra_cd +(-1) '22'x "," @;
                   else put Tra_cd @;
              end;
       if missing(Tra_oms)
         then put "," @;
         else do;
                 if find(Tra_oms,'0A'x) > 0 and 2+klength(Tra_oms) = klength(quote(trim(Tra_oms)))
                   then put '22'x Tra_oms +(-1) '22'x "," @;
                   else put Tra_oms @;
              end;
       if missing(Tra_stop)
         then put "," @;
         else do;
                 if find(Tra_stop,'0A'x) > 0 and 2+klength(Tra_stop) = klength(quote(trim(Tra_stop)))
                   then put '22'x Tra_stop +(-1) '22'x "," @;
                   else put Tra_stop @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_BTM_BETALING AS
   SELECT t1.Rel_id,
          t1.Tra_id,
          t1.Reg_cd,
          t1.Dos_cd,
          t1.Bedrag,
          t1.Bedrag_nlg,
          t1.Omschrijving,
          t1.Naam_begunstigde,
          t1.Betalingskenmerk,
          t1.Plaats,
          t1.Aanleverdatum FORMAT=B8601DT19. AS Aanleverdatum,
          t1.Status,
          t1.Betaalrun_id,
          t1.Bron,
          t1.Invoerdatum FORMAT=B8601DT19. AS Invoerdatum,
          t1.Mdw_id,
          t1.Betaling_id,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Iban,
          t1.Bic,
          t1.Beg_bic,
          t1.Beg_iban,
          t1.Sepa_betaling_indicatie,
          t1.Parkeer_valutadatum FORMAT=B8601DT19. AS Parkeer_valutadatum,
          t1.Betalingsverzoeknummer,
          t1.Betaal_datum FORMAT=B8601DT19. AS Betaal_datum,
          t1.On_hold_jn,
          t1.Sepa_xsd_bevinding
     FROM DATAQASG.BTM_BETALING_TCMG t1;
QUIT;

data WORK.BAS_BTM_BETALING;
  set WORK.BAS_BTM_BETALING;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_BTM_BETALING.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Rel_id" 
       ','
          "Tra_id" 
       ','
          "Reg_cd" 
       ','
          "Dos_cd" 
       ','
          "Bedrag" 
       ','
          "Bedrag_nlg" 
       ','
          "Omschrijving" 
       ','
          "Naam_begunstigde" 
       ','
          "Betalingskenmerk" 
       ','
          "Plaats" 
       ','
          "Aanleverdatum" 
       ','
          "Status" 
       ','
          "Betaalrun_id" 
       ','
          "Bron" 
       ','
          "Invoerdatum" 
       ','
          "Mdw_id" 
       ','
          "Betaling_id" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Iban" 
       ','
          "Bic" 
       ','
          "Beg_bic" 
       ','
          "Beg_iban" 
       ','
          "Sepa_betaling_indicatie" 
       ','
          "Parkeer_valutadatum" 
       ','
          "Betalingsverzoeknummer" 
       ','
          "Betaal_datum" 
       ','
          "On_hold_jn" 
       ','
          "Sepa_xsd_bevinding" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_BTM_BETALING   end=EFIEOD; 
       format Rel_id best12. ;
       format Tra_id best12. ;
       format Reg_cd  ;
       format Dos_cd  ;
       format Bedrag best12. ;
       format Bedrag_nlg best12. ;
       format Omschrijving  ;
       format Naam_begunstigde  ;
       format Betalingskenmerk  ;
       format Plaats  ;
       format Aanleverdatum B8601DT19. ;
       format Status  ;
       format Betaalrun_id best12. ;
       format Bron  ;
       format Invoerdatum B8601DT19. ;
       format Mdw_id best12. ;
       format Betaling_id best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Iban  ;
       format Bic  ;
       format Beg_bic  ;
       format Beg_iban  ;
       format Sepa_betaling_indicatie  ;
       format Parkeer_valutadatum B8601DT19. ;
       format Betalingsverzoeknummer  ;
       format Betaal_datum B8601DT19. ;
       format On_hold_jn  ;
       format Sepa_xsd_bevinding  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Tra_id)
         then put "," @;
         else do;
                 if find(Tra_id,'0A'x) > 0 and 2+klength(Tra_id) = klength(quote(trim(Tra_id)))
                   then put '22'x Tra_id +(-1) '22'x "," @;
                   else put Tra_id @;
              end;
       if missing(Reg_cd)
         then put "," @;
         else do;
                 if find(Reg_cd,'0A'x) > 0 and 2+klength(Reg_cd) = klength(quote(trim(Reg_cd)))
                   then put '22'x Reg_cd +(-1) '22'x "," @;
                   else put Reg_cd @;
              end;
       if missing(Dos_cd)
         then put "," @;
         else do;
                 if find(Dos_cd,'0A'x) > 0 and 2+klength(Dos_cd) = klength(quote(trim(Dos_cd)))
                   then put '22'x Dos_cd +(-1) '22'x "," @;
                   else put Dos_cd @;
              end;
       if missing(Bedrag)
         then put "," @;
         else do;
                 if find(Bedrag,'0A'x) > 0 and 2+klength(Bedrag) = klength(quote(trim(Bedrag)))
                   then put '22'x Bedrag +(-1) '22'x "," @;
                   else put Bedrag @;
              end;
       if missing(Bedrag_nlg)
         then put "," @;
         else do;
                 if find(Bedrag_nlg,'0A'x) > 0 and 2+klength(Bedrag_nlg) = klength(quote(trim(Bedrag_nlg)))
                   then put '22'x Bedrag_nlg +(-1) '22'x "," @;
                   else put Bedrag_nlg @;
              end;
       if missing(Omschrijving)
         then put "," @;
         else do;
                 if find(Omschrijving,'0A'x) > 0 and 2+klength(Omschrijving) = klength(quote(trim(Omschrijving)))
                   then put '22'x Omschrijving +(-1) '22'x "," @;
                   else put Omschrijving @;
              end;
       if missing(Naam_begunstigde)
         then put "," @;
         else do;
                 if find(Naam_begunstigde,'0A'x) > 0 and 2+klength(Naam_begunstigde) = klength(quote(trim(Naam_begunstigde)))
                   then put '22'x Naam_begunstigde +(-1) '22'x "," @;
                   else put Naam_begunstigde @;
              end;
       if missing(Betalingskenmerk)
         then put "," @;
         else do;
                 if find(Betalingskenmerk,'0A'x) > 0 and 2+klength(Betalingskenmerk) = klength(quote(trim(Betalingskenmerk)))
                   then put '22'x Betalingskenmerk +(-1) '22'x "," @;
                   else put Betalingskenmerk @;
              end;
       if missing(Plaats)
         then put "," @;
         else do;
                 if find(Plaats,'0A'x) > 0 and 2+klength(Plaats) = klength(quote(trim(Plaats)))
                   then put '22'x Plaats +(-1) '22'x "," @;
                   else put Plaats @;
              end;
       if missing(Aanleverdatum)
         then put "," @;
         else do;
                 if find(Aanleverdatum,'0A'x) > 0 and 2+klength(Aanleverdatum) = klength(quote(trim(Aanleverdatum)))
                   then put '22'x Aanleverdatum +(-1) '22'x "," @;
                   else put Aanleverdatum @;
              end;
       if missing(Status)
         then put "," @;
         else do;
                 if find(Status,'0A'x) > 0 and 2+klength(Status) = klength(quote(trim(Status)))
                   then put '22'x Status +(-1) '22'x "," @;
                   else put Status @;
              end;
       if missing(Betaalrun_id)
         then put "," @;
         else do;
                 if find(Betaalrun_id,'0A'x) > 0 and 2+klength(Betaalrun_id) = klength(quote(trim(Betaalrun_id)))
                   then put '22'x Betaalrun_id +(-1) '22'x "," @;
                   else put Betaalrun_id @;
              end;
       if missing(Bron)
         then put "," @;
         else do;
                 if find(Bron,'0A'x) > 0 and 2+klength(Bron) = klength(quote(trim(Bron)))
                   then put '22'x Bron +(-1) '22'x "," @;
                   else put Bron @;
              end;
       if missing(Invoerdatum)
         then put "," @;
         else do;
                 if find(Invoerdatum,'0A'x) > 0 and 2+klength(Invoerdatum) = klength(quote(trim(Invoerdatum)))
                   then put '22'x Invoerdatum +(-1) '22'x "," @;
                   else put Invoerdatum @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Betaling_id)
         then put "," @;
         else do;
                 if find(Betaling_id,'0A'x) > 0 and 2+klength(Betaling_id) = klength(quote(trim(Betaling_id)))
                   then put '22'x Betaling_id +(-1) '22'x "," @;
                   else put Betaling_id @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Iban)
         then put "," @;
         else do;
                 if find(Iban,'0A'x) > 0 and 2+klength(Iban) = klength(quote(trim(Iban)))
                   then put '22'x Iban +(-1) '22'x "," @;
                   else put Iban @;
              end;
       if missing(Bic)
         then put "," @;
         else do;
                 if find(Bic,'0A'x) > 0 and 2+klength(Bic) = klength(quote(trim(Bic)))
                   then put '22'x Bic +(-1) '22'x "," @;
                   else put Bic @;
              end;
       if missing(Beg_bic)
         then put "," @;
         else do;
                 if find(Beg_bic,'0A'x) > 0 and 2+klength(Beg_bic) = klength(quote(trim(Beg_bic)))
                   then put '22'x Beg_bic +(-1) '22'x "," @;
                   else put Beg_bic @;
              end;
       if missing(Beg_iban)
         then put "," @;
         else do;
                 if find(Beg_iban,'0A'x) > 0 and 2+klength(Beg_iban) = klength(quote(trim(Beg_iban)))
                   then put '22'x Beg_iban +(-1) '22'x "," @;
                   else put Beg_iban @;
              end;
       if missing(Sepa_betaling_indicatie)
         then put "," @;
         else do;
                 if find(Sepa_betaling_indicatie,'0A'x) > 0 and 2+klength(Sepa_betaling_indicatie) = klength(quote(trim(Sepa_betaling_indicatie)))
                   then put '22'x Sepa_betaling_indicatie +(-1) '22'x "," @;
                   else put Sepa_betaling_indicatie @;
              end;
       if missing(Parkeer_valutadatum)
         then put "," @;
         else do;
                 if find(Parkeer_valutadatum,'0A'x) > 0 and 2+klength(Parkeer_valutadatum) = klength(quote(trim(Parkeer_valutadatum)))
                   then put '22'x Parkeer_valutadatum +(-1) '22'x "," @;
                   else put Parkeer_valutadatum @;
              end;
       if missing(Betalingsverzoeknummer)
         then put "," @;
         else do;
                 if find(Betalingsverzoeknummer,'0A'x) > 0 and 2+klength(Betalingsverzoeknummer) = klength(quote(trim(Betalingsverzoeknummer)))
                   then put '22'x Betalingsverzoeknummer +(-1) '22'x "," @;
                   else put Betalingsverzoeknummer @;
              end;
       if missing(Betaal_datum)
         then put "," @;
         else do;
                 if find(Betaal_datum,'0A'x) > 0 and 2+klength(Betaal_datum) = klength(quote(trim(Betaal_datum)))
                   then put '22'x Betaal_datum +(-1) '22'x "," @;
                   else put Betaal_datum @;
              end;
       if missing(On_hold_jn)
         then put "," @;
         else do;
                 if find(On_hold_jn,'0A'x) > 0 and 2+klength(On_hold_jn) = klength(quote(trim(On_hold_jn)))
                   then put '22'x On_hold_jn +(-1) '22'x "," @;
                   else put On_hold_jn @;
              end;
       if missing(Sepa_xsd_bevinding)
         then put "," @;
         else do;
                 if find(Sepa_xsd_bevinding,'0A'x) > 0 and 2+klength(Sepa_xsd_bevinding) = klength(quote(trim(Sepa_xsd_bevinding)))
                   then put '22'x Sepa_xsd_bevinding +(-1) '22'x "," @;
                   else put Sepa_xsd_bevinding @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_BTM_HIST_BETALING AS
   SELECT t1.Rel_id,
          t1.Tra_id,
          t1.Reg_cd,
          t1.Dos_cd,
          t1.Bedrag,
          t1.Bedrag_nlg,
          t1.Omschrijving,
          t1.Naam_begunstigde,
          t1.Plaats,
          t1.Rekeningnummer,
          t1.Senterrekening,
          t1.Aanleverdatum FORMAT=B8601DT19. AS Aanleverdatum,
          t1.Betaalrun_id,
          t1.Bron,
          t1.Valutadatum FORMAT=B8601DT19. AS Valutadatum,
          t1.Invoerdatum FORMAT=B8601DT19. AS Invoerdatum,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mdw_id,
          t1.Betalingskenmerk,
          t1.Iban,
          t1.Bic,
          t1.Beg_bic,
          t1.Beg_iban,
          t1.Sepa_betaling_indicatie,
          t1.Parkeer_valutadatum FORMAT=B8601DT19. AS Parkeer_valutadatum,
          t1.Betalingsverzoeknummer
     FROM DATAQASG.BTM_HIST_BETALING_TCMG t1;
QUIT;

data WORK.BAS_BTM_HIST_BETALING;
  set WORK.BAS_BTM_HIST_BETALING;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_BTM_HIST_BETALING.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Rel_id" 
       ','
          "Tra_id" 
       ','
          "Reg_cd" 
       ','
          "Dos_cd" 
       ','
          "Bedrag" 
       ','
          "Bedrag_nlg" 
       ','
          "Omschrijving" 
       ','
          "Naam_begunstigde" 
       ','
          "Plaats" 
       ','
          "Rekeningnummer" 
       ','
          "Senterrekening" 
       ','
          "Aanleverdatum" 
       ','
          "Betaalrun_id" 
       ','
          "Bron" 
       ','
          "Valutadatum" 
       ','
          "Invoerdatum" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mdw_id" 
       ','
          "Betalingskenmerk" 
       ','
          "Iban" 
       ','
          "Bic" 
       ','
          "Beg_bic" 
       ','
          "Beg_iban" 
       ','
          "Sepa_betaling_indicatie" 
       ','
          "Parkeer_valutadatum" 
       ','
          "Betalingsverzoeknummer" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_BTM_HIST_BETALING   end=EFIEOD; 
       format Rel_id best12. ;
       format Tra_id best12. ;
       format Reg_cd  ;
       format Dos_cd  ;
       format Bedrag best12. ;
       format Bedrag_nlg best12. ;
       format Omschrijving  ;
       format Naam_begunstigde  ;
       format Plaats  ;
       format Rekeningnummer best12. ;
       format Senterrekening best12. ;
       format Aanleverdatum B8601DT19. ;
       format Betaalrun_id best12. ;
       format Bron  ;
       format Valutadatum B8601DT19. ;
       format Invoerdatum B8601DT19. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mdw_id best12. ;
       format Betalingskenmerk  ;
       format Iban  ;
       format Bic  ;
       format Beg_bic  ;
       format Beg_iban  ;
       format Sepa_betaling_indicatie  ;
       format Parkeer_valutadatum B8601DT19. ;
       format Betalingsverzoeknummer  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Tra_id)
         then put "," @;
         else do;
                 if find(Tra_id,'0A'x) > 0 and 2+klength(Tra_id) = klength(quote(trim(Tra_id)))
                   then put '22'x Tra_id +(-1) '22'x "," @;
                   else put Tra_id @;
              end;
       if missing(Reg_cd)
         then put "," @;
         else do;
                 if find(Reg_cd,'0A'x) > 0 and 2+klength(Reg_cd) = klength(quote(trim(Reg_cd)))
                   then put '22'x Reg_cd +(-1) '22'x "," @;
                   else put Reg_cd @;
              end;
       if missing(Dos_cd)
         then put "," @;
         else do;
                 if find(Dos_cd,'0A'x) > 0 and 2+klength(Dos_cd) = klength(quote(trim(Dos_cd)))
                   then put '22'x Dos_cd +(-1) '22'x "," @;
                   else put Dos_cd @;
              end;
       if missing(Bedrag)
         then put "," @;
         else do;
                 if find(Bedrag,'0A'x) > 0 and 2+klength(Bedrag) = klength(quote(trim(Bedrag)))
                   then put '22'x Bedrag +(-1) '22'x "," @;
                   else put Bedrag @;
              end;
       if missing(Bedrag_nlg)
         then put "," @;
         else do;
                 if find(Bedrag_nlg,'0A'x) > 0 and 2+klength(Bedrag_nlg) = klength(quote(trim(Bedrag_nlg)))
                   then put '22'x Bedrag_nlg +(-1) '22'x "," @;
                   else put Bedrag_nlg @;
              end;
       if missing(Omschrijving)
         then put "," @;
         else do;
                 if find(Omschrijving,'0A'x) > 0 and 2+klength(Omschrijving) = klength(quote(trim(Omschrijving)))
                   then put '22'x Omschrijving +(-1) '22'x "," @;
                   else put Omschrijving @;
              end;
       if missing(Naam_begunstigde)
         then put "," @;
         else do;
                 if find(Naam_begunstigde,'0A'x) > 0 and 2+klength(Naam_begunstigde) = klength(quote(trim(Naam_begunstigde)))
                   then put '22'x Naam_begunstigde +(-1) '22'x "," @;
                   else put Naam_begunstigde @;
              end;
       if missing(Plaats)
         then put "," @;
         else do;
                 if find(Plaats,'0A'x) > 0 and 2+klength(Plaats) = klength(quote(trim(Plaats)))
                   then put '22'x Plaats +(-1) '22'x "," @;
                   else put Plaats @;
              end;
       if missing(Rekeningnummer)
         then put "," @;
         else do;
                 if find(Rekeningnummer,'0A'x) > 0 and 2+klength(Rekeningnummer) = klength(quote(trim(Rekeningnummer)))
                   then put '22'x Rekeningnummer +(-1) '22'x "," @;
                   else put Rekeningnummer @;
              end;
       if missing(Senterrekening)
         then put "," @;
         else do;
                 if find(Senterrekening,'0A'x) > 0 and 2+klength(Senterrekening) = klength(quote(trim(Senterrekening)))
                   then put '22'x Senterrekening +(-1) '22'x "," @;
                   else put Senterrekening @;
              end;
       if missing(Aanleverdatum)
         then put "," @;
         else do;
                 if find(Aanleverdatum,'0A'x) > 0 and 2+klength(Aanleverdatum) = klength(quote(trim(Aanleverdatum)))
                   then put '22'x Aanleverdatum +(-1) '22'x "," @;
                   else put Aanleverdatum @;
              end;
       if missing(Betaalrun_id)
         then put "," @;
         else do;
                 if find(Betaalrun_id,'0A'x) > 0 and 2+klength(Betaalrun_id) = klength(quote(trim(Betaalrun_id)))
                   then put '22'x Betaalrun_id +(-1) '22'x "," @;
                   else put Betaalrun_id @;
              end;
       if missing(Bron)
         then put "," @;
         else do;
                 if find(Bron,'0A'x) > 0 and 2+klength(Bron) = klength(quote(trim(Bron)))
                   then put '22'x Bron +(-1) '22'x "," @;
                   else put Bron @;
              end;
       if missing(Valutadatum)
         then put "," @;
         else do;
                 if find(Valutadatum,'0A'x) > 0 and 2+klength(Valutadatum) = klength(quote(trim(Valutadatum)))
                   then put '22'x Valutadatum +(-1) '22'x "," @;
                   else put Valutadatum @;
              end;
       if missing(Invoerdatum)
         then put "," @;
         else do;
                 if find(Invoerdatum,'0A'x) > 0 and 2+klength(Invoerdatum) = klength(quote(trim(Invoerdatum)))
                   then put '22'x Invoerdatum +(-1) '22'x "," @;
                   else put Invoerdatum @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Betalingskenmerk)
         then put "," @;
         else do;
                 if find(Betalingskenmerk,'0A'x) > 0 and 2+klength(Betalingskenmerk) = klength(quote(trim(Betalingskenmerk)))
                   then put '22'x Betalingskenmerk +(-1) '22'x "," @;
                   else put Betalingskenmerk @;
              end;
       if missing(Iban)
         then put "," @;
         else do;
                 if find(Iban,'0A'x) > 0 and 2+klength(Iban) = klength(quote(trim(Iban)))
                   then put '22'x Iban +(-1) '22'x "," @;
                   else put Iban @;
              end;
       if missing(Bic)
         then put "," @;
         else do;
                 if find(Bic,'0A'x) > 0 and 2+klength(Bic) = klength(quote(trim(Bic)))
                   then put '22'x Bic +(-1) '22'x "," @;
                   else put Bic @;
              end;
       if missing(Beg_bic)
         then put "," @;
         else do;
                 if find(Beg_bic,'0A'x) > 0 and 2+klength(Beg_bic) = klength(quote(trim(Beg_bic)))
                   then put '22'x Beg_bic +(-1) '22'x "," @;
                   else put Beg_bic @;
              end;
       if missing(Beg_iban)
         then put "," @;
         else do;
                 if find(Beg_iban,'0A'x) > 0 and 2+klength(Beg_iban) = klength(quote(trim(Beg_iban)))
                   then put '22'x Beg_iban +(-1) '22'x "," @;
                   else put Beg_iban @;
              end;
       if missing(Sepa_betaling_indicatie)
         then put "," @;
         else do;
                 if find(Sepa_betaling_indicatie,'0A'x) > 0 and 2+klength(Sepa_betaling_indicatie) = klength(quote(trim(Sepa_betaling_indicatie)))
                   then put '22'x Sepa_betaling_indicatie +(-1) '22'x "," @;
                   else put Sepa_betaling_indicatie @;
              end;
       if missing(Parkeer_valutadatum)
         then put "," @;
         else do;
                 if find(Parkeer_valutadatum,'0A'x) > 0 and 2+klength(Parkeer_valutadatum) = klength(quote(trim(Parkeer_valutadatum)))
                   then put '22'x Parkeer_valutadatum +(-1) '22'x "," @;
                   else put Parkeer_valutadatum @;
              end;
       if missing(Betalingsverzoeknummer)
         then put "," @;
         else do;
                 if find(Betalingsverzoeknummer,'0A'x) > 0 and 2+klength(Betalingsverzoeknummer) = klength(quote(trim(Betalingsverzoeknummer)))
                   then put '22'x Betalingsverzoeknummer +(-1) '22'x "," @;
                   else put Betalingsverzoeknummer @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_BERICHT AS
   SELECT t1.Cor_id,
          t1.Ed_bericht_id,
          t1.Afzender_id,
          t1.Ontvanger_id,
          t1.Inkomend,
          t1.Handtekening_ok,
          t1.Ondertekenaar_id,
          t1.Onderwerp,
          t1.Inhoud,
          t1.Certserienummer,
          t1.Batch_status,
          t1.Status_overzetten_bericht,
          t1.Ingezien,
          t1.Plattetekst,
          t1.Status_verzending,
          t1.Archief_cor_id,
          t1.Bron,
          t1.Org_cor_id
     FROM DATAQASG.COR_BERICHT_TCMG t1;
QUIT;

data WORK.BAS_COR_BERICHT;
  set WORK.BAS_COR_BERICHT;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_BERICHT.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Cor_id" 
       ','
          "Ed_bericht_id" 
       ','
          "Afzender_id" 
       ','
          "Ontvanger_id" 
       ','
          "Inkomend" 
       ','
          "Handtekening_ok" 
       ','
          "Ondertekenaar_id" 
       ','
          "Onderwerp" 
       ','
          "Inhoud" 
       ','
          "Certserienummer" 
       ','
          "Batch_status" 
       ','
          "Status_overzetten_bericht" 
       ','
          "Ingezien" 
       ','
          "Plattetekst" 
       ','
          "Status_verzending" 
       ','
          "Archief_cor_id" 
       ','
          "Bron" 
       ','
          "Org_cor_id" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_BERICHT   end=EFIEOD; 
       format Cor_id best12. ;
       format Ed_bericht_id best12. ;
       format Afzender_id best12. ;
       format Ontvanger_id best12. ;
       format Inkomend  ;
       format Handtekening_ok  ;
       format Ondertekenaar_id best12. ;
       format Onderwerp  ;
       format Inhoud  ;
       format Certserienummer  ;
       format Batch_status best12. ;
       format Status_overzetten_bericht best12. ;
       format Ingezien  ;
       format Plattetekst  ;
       format Status_verzending  ;
       format Archief_cor_id best12. ;
       format Bron  ;
       format Org_cor_id best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Ed_bericht_id)
         then put "," @;
         else do;
                 if find(Ed_bericht_id,'0A'x) > 0 and 2+klength(Ed_bericht_id) = klength(quote(trim(Ed_bericht_id)))
                   then put '22'x Ed_bericht_id +(-1) '22'x "," @;
                   else put Ed_bericht_id @;
              end;
       if missing(Afzender_id)
         then put "," @;
         else do;
                 if find(Afzender_id,'0A'x) > 0 and 2+klength(Afzender_id) = klength(quote(trim(Afzender_id)))
                   then put '22'x Afzender_id +(-1) '22'x "," @;
                   else put Afzender_id @;
              end;
       if missing(Ontvanger_id)
         then put "," @;
         else do;
                 if find(Ontvanger_id,'0A'x) > 0 and 2+klength(Ontvanger_id) = klength(quote(trim(Ontvanger_id)))
                   then put '22'x Ontvanger_id +(-1) '22'x "," @;
                   else put Ontvanger_id @;
              end;
       if missing(Inkomend)
         then put "," @;
         else do;
                 if find(Inkomend,'0A'x) > 0 and 2+klength(Inkomend) = klength(quote(trim(Inkomend)))
                   then put '22'x Inkomend +(-1) '22'x "," @;
                   else put Inkomend @;
              end;
       if missing(Handtekening_ok)
         then put "," @;
         else do;
                 if find(Handtekening_ok,'0A'x) > 0 and 2+klength(Handtekening_ok) = klength(quote(trim(Handtekening_ok)))
                   then put '22'x Handtekening_ok +(-1) '22'x "," @;
                   else put Handtekening_ok @;
              end;
       if missing(Ondertekenaar_id)
         then put "," @;
         else do;
                 if find(Ondertekenaar_id,'0A'x) > 0 and 2+klength(Ondertekenaar_id) = klength(quote(trim(Ondertekenaar_id)))
                   then put '22'x Ondertekenaar_id +(-1) '22'x "," @;
                   else put Ondertekenaar_id @;
              end;
       if missing(Onderwerp)
         then put "," @;
         else do;
                 if find(Onderwerp,'0A'x) > 0 and 2+klength(Onderwerp) = klength(quote(trim(Onderwerp)))
                   then put '22'x Onderwerp +(-1) '22'x "," @;
                   else put Onderwerp @;
              end;
       if missing(Inhoud)
         then put "," @;
         else do;
                 if find(Inhoud,'0A'x) > 0 and 2+klength(Inhoud) = klength(quote(trim(Inhoud)))
                   then put '22'x Inhoud +(-1) '22'x "," @;
                   else put Inhoud @;
              end;
       if missing(Certserienummer)
         then put "," @;
         else do;
                 if find(Certserienummer,'0A'x) > 0 and 2+klength(Certserienummer) = klength(quote(trim(Certserienummer)))
                   then put '22'x Certserienummer +(-1) '22'x "," @;
                   else put Certserienummer @;
              end;
       if missing(Batch_status)
         then put "," @;
         else do;
                 if find(Batch_status,'0A'x) > 0 and 2+klength(Batch_status) = klength(quote(trim(Batch_status)))
                   then put '22'x Batch_status +(-1) '22'x "," @;
                   else put Batch_status @;
              end;
       if missing(Status_overzetten_bericht)
         then put "," @;
         else do;
                 if find(Status_overzetten_bericht,'0A'x) > 0 and 2+klength(Status_overzetten_bericht) = klength(quote(trim(Status_overzetten_bericht)))
                   then put '22'x Status_overzetten_bericht +(-1) '22'x "," @;
                   else put Status_overzetten_bericht @;
              end;
       if missing(Ingezien)
         then put "," @;
         else do;
                 if find(Ingezien,'0A'x) > 0 and 2+klength(Ingezien) = klength(quote(trim(Ingezien)))
                   then put '22'x Ingezien +(-1) '22'x "," @;
                   else put Ingezien @;
              end;
       if missing(Plattetekst)
         then put "," @;
         else do;
                 if find(Plattetekst,'0A'x) > 0 and 2+klength(Plattetekst) = klength(quote(trim(Plattetekst)))
                   then put '22'x Plattetekst +(-1) '22'x "," @;
                   else put Plattetekst @;
              end;
       if missing(Status_verzending)
         then put "," @;
         else do;
                 if find(Status_verzending,'0A'x) > 0 and 2+klength(Status_verzending) = klength(quote(trim(Status_verzending)))
                   then put '22'x Status_verzending +(-1) '22'x "," @;
                   else put Status_verzending @;
              end;
       if missing(Archief_cor_id)
         then put "," @;
         else do;
                 if find(Archief_cor_id,'0A'x) > 0 and 2+klength(Archief_cor_id) = klength(quote(trim(Archief_cor_id)))
                   then put '22'x Archief_cor_id +(-1) '22'x "," @;
                   else put Archief_cor_id @;
              end;
       if missing(Bron)
         then put "," @;
         else do;
                 if find(Bron,'0A'x) > 0 and 2+klength(Bron) = klength(quote(trim(Bron)))
                   then put '22'x Bron +(-1) '22'x "," @;
                   else put Bron @;
              end;
       if missing(Org_cor_id)
         then put "," @;
         else do;
                 if find(Org_cor_id,'0A'x) > 0 and 2+klength(Org_cor_id) = klength(quote(trim(Org_cor_id)))
                   then put '22'x Org_cor_id +(-1) '22'x "," @;
                   else put Org_cor_id @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_COR_PARAAF AS
   SELECT t1.Acc_id,
          t1.Acc_rol_cd,
          t1.Acc_vaste_paraaf_jn,
          t1.Afgehandeld_JN,
          t1.Akkoord,
          t1.Cor_bedrag,
          t1.Cor_id,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_ok_JN,
          t1.Creatie_user,
          t1.Datum_Akkoord FORMAT=B8601DT19. AS Datum_Akkoord,
          t1.Email_JN,
          t1.Mandaat_ok_JN,
          t1.Max_bedrag,
          t1.Mdw_id,
          t1.Mdw_id_doorvoerder,
          t1.Mdw_id_oorspronkelijk,
          t1.Mdw_mandaat_JN,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rol_cd,
          t1.Rol_ok_JN,
          t1.Rol_volg_cd,
          t1.Toelichting,
          t1.Type_paraaf,
          t1.Vaste_paraaf,
          t1.Volgorde
     FROM DATAQASG.COR_COR_PARAAF_TCMG t1;
QUIT;

data WORK.BAS_COR_COR_PARAAF;
  set WORK.BAS_COR_COR_PARAAF;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_COR_PARAAF.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Acc_id" 
       ','
          "Acc_rol_cd" 
       ','
          "Acc_vaste_paraaf_jn" 
       ','
          "Afgehandeld_JN" 
       ','
          "Akkoord" 
       ','
          "Cor_bedrag" 
       ','
          "Cor_id" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_ok_JN" 
       ','
          "Creatie_user" 
       ','
          "Datum_Akkoord" 
       ','
          "Email_JN" 
       ','
          "Mandaat_ok_JN" 
       ','
          "Max_bedrag" 
       ','
          "Mdw_id" 
       ','
          "Mdw_id_doorvoerder" 
       ','
          "Mdw_id_oorspronkelijk" 
       ','
          "Mdw_mandaat_JN" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rol_cd" 
       ','
          "Rol_ok_JN" 
       ','
          "Rol_volg_cd" 
       ','
          "Toelichting" 
       ','
          "Type_paraaf" 
       ','
          "Vaste_paraaf" 
       ','
          "Volgorde" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_COR_PARAAF   end=EFIEOD; 
       format Acc_id best12. ;
       format Acc_rol_cd  ;
       format Acc_vaste_paraaf_jn  ;
       format Afgehandeld_JN  ;
       format Akkoord  ;
       format Cor_bedrag best12. ;
       format Cor_id best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_ok_JN  ;
       format Creatie_user  ;
       format Datum_Akkoord B8601DT19. ;
       format Email_JN  ;
       format Mandaat_ok_JN  ;
       format Max_bedrag best12. ;
       format Mdw_id best12. ;
       format Mdw_id_doorvoerder best12. ;
       format Mdw_id_oorspronkelijk best12. ;
       format Mdw_mandaat_JN  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rol_cd  ;
       format Rol_ok_JN  ;
       format Rol_volg_cd  ;
       format Toelichting  ;
       format Type_paraaf  ;
       format Vaste_paraaf  ;
       format Volgorde best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Acc_id)
         then put "," @;
         else do;
                 if find(Acc_id,'0A'x) > 0 and 2+klength(Acc_id) = klength(quote(trim(Acc_id)))
                   then put '22'x Acc_id +(-1) '22'x "," @;
                   else put Acc_id @;
              end;
       if missing(Acc_rol_cd)
         then put "," @;
         else do;
                 if find(Acc_rol_cd,'0A'x) > 0 and 2+klength(Acc_rol_cd) = klength(quote(trim(Acc_rol_cd)))
                   then put '22'x Acc_rol_cd +(-1) '22'x "," @;
                   else put Acc_rol_cd @;
              end;
       if missing(Acc_vaste_paraaf_jn)
         then put "," @;
         else do;
                 if find(Acc_vaste_paraaf_jn,'0A'x) > 0 and 2+klength(Acc_vaste_paraaf_jn) = klength(quote(trim(Acc_vaste_paraaf_jn)))
                   then put '22'x Acc_vaste_paraaf_jn +(-1) '22'x "," @;
                   else put Acc_vaste_paraaf_jn @;
              end;
       if missing(Afgehandeld_JN)
         then put "," @;
         else do;
                 if find(Afgehandeld_JN,'0A'x) > 0 and 2+klength(Afgehandeld_JN) = klength(quote(trim(Afgehandeld_JN)))
                   then put '22'x Afgehandeld_JN +(-1) '22'x "," @;
                   else put Afgehandeld_JN @;
              end;
       if missing(Akkoord)
         then put "," @;
         else do;
                 if find(Akkoord,'0A'x) > 0 and 2+klength(Akkoord) = klength(quote(trim(Akkoord)))
                   then put '22'x Akkoord +(-1) '22'x "," @;
                   else put Akkoord @;
              end;
       if missing(Cor_bedrag)
         then put "," @;
         else do;
                 if find(Cor_bedrag,'0A'x) > 0 and 2+klength(Cor_bedrag) = klength(quote(trim(Cor_bedrag)))
                   then put '22'x Cor_bedrag +(-1) '22'x "," @;
                   else put Cor_bedrag @;
              end;
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_ok_JN)
         then put "," @;
         else do;
                 if find(Creatie_ok_JN,'0A'x) > 0 and 2+klength(Creatie_ok_JN) = klength(quote(trim(Creatie_ok_JN)))
                   then put '22'x Creatie_ok_JN +(-1) '22'x "," @;
                   else put Creatie_ok_JN @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Datum_Akkoord)
         then put "," @;
         else do;
                 if find(Datum_Akkoord,'0A'x) > 0 and 2+klength(Datum_Akkoord) = klength(quote(trim(Datum_Akkoord)))
                   then put '22'x Datum_Akkoord +(-1) '22'x "," @;
                   else put Datum_Akkoord @;
              end;
       if missing(Email_JN)
         then put "," @;
         else do;
                 if find(Email_JN,'0A'x) > 0 and 2+klength(Email_JN) = klength(quote(trim(Email_JN)))
                   then put '22'x Email_JN +(-1) '22'x "," @;
                   else put Email_JN @;
              end;
       if missing(Mandaat_ok_JN)
         then put "," @;
         else do;
                 if find(Mandaat_ok_JN,'0A'x) > 0 and 2+klength(Mandaat_ok_JN) = klength(quote(trim(Mandaat_ok_JN)))
                   then put '22'x Mandaat_ok_JN +(-1) '22'x "," @;
                   else put Mandaat_ok_JN @;
              end;
       if missing(Max_bedrag)
         then put "," @;
         else do;
                 if find(Max_bedrag,'0A'x) > 0 and 2+klength(Max_bedrag) = klength(quote(trim(Max_bedrag)))
                   then put '22'x Max_bedrag +(-1) '22'x "," @;
                   else put Max_bedrag @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Mdw_id_doorvoerder)
         then put "," @;
         else do;
                 if find(Mdw_id_doorvoerder,'0A'x) > 0 and 2+klength(Mdw_id_doorvoerder) = klength(quote(trim(Mdw_id_doorvoerder)))
                   then put '22'x Mdw_id_doorvoerder +(-1) '22'x "," @;
                   else put Mdw_id_doorvoerder @;
              end;
       if missing(Mdw_id_oorspronkelijk)
         then put "," @;
         else do;
                 if find(Mdw_id_oorspronkelijk,'0A'x) > 0 and 2+klength(Mdw_id_oorspronkelijk) = klength(quote(trim(Mdw_id_oorspronkelijk)))
                   then put '22'x Mdw_id_oorspronkelijk +(-1) '22'x "," @;
                   else put Mdw_id_oorspronkelijk @;
              end;
       if missing(Mdw_mandaat_JN)
         then put "," @;
         else do;
                 if find(Mdw_mandaat_JN,'0A'x) > 0 and 2+klength(Mdw_mandaat_JN) = klength(quote(trim(Mdw_mandaat_JN)))
                   then put '22'x Mdw_mandaat_JN +(-1) '22'x "," @;
                   else put Mdw_mandaat_JN @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Rol_ok_JN)
         then put "," @;
         else do;
                 if find(Rol_ok_JN,'0A'x) > 0 and 2+klength(Rol_ok_JN) = klength(quote(trim(Rol_ok_JN)))
                   then put '22'x Rol_ok_JN +(-1) '22'x "," @;
                   else put Rol_ok_JN @;
              end;
       if missing(Rol_volg_cd)
         then put "," @;
         else do;
                 if find(Rol_volg_cd,'0A'x) > 0 and 2+klength(Rol_volg_cd) = klength(quote(trim(Rol_volg_cd)))
                   then put '22'x Rol_volg_cd +(-1) '22'x "," @;
                   else put Rol_volg_cd @;
              end;
       if missing(Toelichting)
         then put "," @;
         else do;
                 if find(Toelichting,'0A'x) > 0 and 2+klength(Toelichting) = klength(quote(trim(Toelichting)))
                   then put '22'x Toelichting +(-1) '22'x "," @;
                   else put Toelichting @;
              end;
       if missing(Type_paraaf)
         then put "," @;
         else do;
                 if find(Type_paraaf,'0A'x) > 0 and 2+klength(Type_paraaf) = klength(quote(trim(Type_paraaf)))
                   then put '22'x Type_paraaf +(-1) '22'x "," @;
                   else put Type_paraaf @;
              end;
       if missing(Vaste_paraaf)
         then put "," @;
         else do;
                 if find(Vaste_paraaf,'0A'x) > 0 and 2+klength(Vaste_paraaf) = klength(quote(trim(Vaste_paraaf)))
                   then put '22'x Vaste_paraaf +(-1) '22'x "," @;
                   else put Vaste_paraaf @;
              end;
       if missing(Volgorde)
         then put "," @;
         else do;
                 if find(Volgorde,'0A'x) > 0 and 2+klength(Volgorde) = klength(quote(trim(Volgorde)))
                   then put '22'x Volgorde +(-1) '22'x "," @;
                   else put Volgorde @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_COR_SRT AS
   SELECT t1.Cst_cd,
          t1.Cst_oms,
          t1.Cst_template,
          t1.Regeling,
          t1.Thema,
          t1.Dossier,
          t1.Project,
          t1.Organisatie,
          t1.Bezoek,
          t1.Transactie,
          t1.Uitgaand_inkomend,
          t1.Juridisch,
          t1.Stempel_sj,
          t1.Bob_brief,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Vorderingbeheer,
          t1.Externe_naam,
          t1.Correctie_jn,
          t1.Intern_jn
     FROM DATAQASG.COR_COR_SRT_TCMG t1;
QUIT;

data WORK.BAS_COR_COR_SRT;
  set WORK.BAS_COR_COR_SRT;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_COR_SRT.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Cst_cd" 
       ','
          "Cst_oms" 
       ','
          "Cst_template" 
       ','
          "Regeling" 
       ','
          "Thema" 
       ','
          "Dossier" 
       ','
          "Project" 
       ','
          "Organisatie" 
       ','
          "Bezoek" 
       ','
          "Transactie" 
       ','
          "Uitgaand_inkomend" 
       ','
          "Juridisch" 
       ','
          "Stempel_sj" 
       ','
          "Bob_brief" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Vorderingbeheer" 
       ','
          "Externe_naam" 
       ','
          "Correctie_jn" 
       ','
          "Intern_jn" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_COR_SRT   end=EFIEOD; 
       format Cst_cd  ;
       format Cst_oms  ;
       format Cst_template  ;
       format Regeling  ;
       format Thema  ;
       format Dossier  ;
       format Project  ;
       format Organisatie  ;
       format Bezoek  ;
       format Transactie  ;
       format Uitgaand_inkomend  ;
       format Juridisch  ;
       format Stempel_sj  ;
       format Bob_brief  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Vorderingbeheer  ;
       format Externe_naam  ;
       format Correctie_jn  ;
       format Intern_jn  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Cst_oms)
         then put "," @;
         else do;
                 if find(Cst_oms,'0A'x) > 0 and 2+klength(Cst_oms) = klength(quote(trim(Cst_oms)))
                   then put '22'x Cst_oms +(-1) '22'x "," @;
                   else put Cst_oms @;
              end;
       if missing(Cst_template)
         then put "," @;
         else do;
                 if find(Cst_template,'0A'x) > 0 and 2+klength(Cst_template) = klength(quote(trim(Cst_template)))
                   then put '22'x Cst_template +(-1) '22'x "," @;
                   else put Cst_template @;
              end;
       if missing(Regeling)
         then put "," @;
         else do;
                 if find(Regeling,'0A'x) > 0 and 2+klength(Regeling) = klength(quote(trim(Regeling)))
                   then put '22'x Regeling +(-1) '22'x "," @;
                   else put Regeling @;
              end;
       if missing(Thema)
         then put "," @;
         else do;
                 if find(Thema,'0A'x) > 0 and 2+klength(Thema) = klength(quote(trim(Thema)))
                   then put '22'x Thema +(-1) '22'x "," @;
                   else put Thema @;
              end;
       if missing(Dossier)
         then put "," @;
         else do;
                 if find(Dossier,'0A'x) > 0 and 2+klength(Dossier) = klength(quote(trim(Dossier)))
                   then put '22'x Dossier +(-1) '22'x "," @;
                   else put Dossier @;
              end;
       if missing(Project)
         then put "," @;
         else do;
                 if find(Project,'0A'x) > 0 and 2+klength(Project) = klength(quote(trim(Project)))
                   then put '22'x Project +(-1) '22'x "," @;
                   else put Project @;
              end;
       if missing(Organisatie)
         then put "," @;
         else do;
                 if find(Organisatie,'0A'x) > 0 and 2+klength(Organisatie) = klength(quote(trim(Organisatie)))
                   then put '22'x Organisatie +(-1) '22'x "," @;
                   else put Organisatie @;
              end;
       if missing(Bezoek)
         then put "," @;
         else do;
                 if find(Bezoek,'0A'x) > 0 and 2+klength(Bezoek) = klength(quote(trim(Bezoek)))
                   then put '22'x Bezoek +(-1) '22'x "," @;
                   else put Bezoek @;
              end;
       if missing(Transactie)
         then put "," @;
         else do;
                 if find(Transactie,'0A'x) > 0 and 2+klength(Transactie) = klength(quote(trim(Transactie)))
                   then put '22'x Transactie +(-1) '22'x "," @;
                   else put Transactie @;
              end;
       if missing(Uitgaand_inkomend)
         then put "," @;
         else do;
                 if find(Uitgaand_inkomend,'0A'x) > 0 and 2+klength(Uitgaand_inkomend) = klength(quote(trim(Uitgaand_inkomend)))
                   then put '22'x Uitgaand_inkomend +(-1) '22'x "," @;
                   else put Uitgaand_inkomend @;
              end;
       if missing(Juridisch)
         then put "," @;
         else do;
                 if find(Juridisch,'0A'x) > 0 and 2+klength(Juridisch) = klength(quote(trim(Juridisch)))
                   then put '22'x Juridisch +(-1) '22'x "," @;
                   else put Juridisch @;
              end;
       if missing(Stempel_sj)
         then put "," @;
         else do;
                 if find(Stempel_sj,'0A'x) > 0 and 2+klength(Stempel_sj) = klength(quote(trim(Stempel_sj)))
                   then put '22'x Stempel_sj +(-1) '22'x "," @;
                   else put Stempel_sj @;
              end;
       if missing(Bob_brief)
         then put "," @;
         else do;
                 if find(Bob_brief,'0A'x) > 0 and 2+klength(Bob_brief) = klength(quote(trim(Bob_brief)))
                   then put '22'x Bob_brief +(-1) '22'x "," @;
                   else put Bob_brief @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Vorderingbeheer)
         then put "," @;
         else do;
                 if find(Vorderingbeheer,'0A'x) > 0 and 2+klength(Vorderingbeheer) = klength(quote(trim(Vorderingbeheer)))
                   then put '22'x Vorderingbeheer +(-1) '22'x "," @;
                   else put Vorderingbeheer @;
              end;
       if missing(Externe_naam)
         then put "," @;
         else do;
                 if find(Externe_naam,'0A'x) > 0 and 2+klength(Externe_naam) = klength(quote(trim(Externe_naam)))
                   then put '22'x Externe_naam +(-1) '22'x "," @;
                   else put Externe_naam @;
              end;
       if missing(Correctie_jn)
         then put "," @;
         else do;
                 if find(Correctie_jn,'0A'x) > 0 and 2+klength(Correctie_jn) = klength(quote(trim(Correctie_jn)))
                   then put '22'x Correctie_jn +(-1) '22'x "," @;
                   else put Correctie_jn @;
              end;
       if missing(Intern_jn)
         then put "," @;
         else do;
                 if find(Intern_jn,'0A'x) > 0 and 2+klength(Intern_jn) = klength(quote(trim(Intern_jn)))
                   then put '22'x Intern_jn +(-1) '22'x "," @;
                   else put Intern_jn @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_CORRESPONDENTIE_HIST AS
   SELECT t1.Cor_id,
          t1.Volg_nr,
          t1.Correctie_code,
          t1.Oude_verzenddatum FORMAT=B8601DT19. AS Oude_verzenddatum,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.COR_CORRESPONDENTIE_HIST_TCMG t1;
QUIT;

data WORK.BAS_COR_CORRESPONDENTIE_HIST;
  set WORK.BAS_COR_CORRESPONDENTIE_HIST;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_CORRESPONDENTIE_HIST.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Cor_id" 
       ','
          "Volg_nr" 
       ','
          "Correctie_code" 
       ','
          "Oude_verzenddatum" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_CORRESPONDENTIE_HIST   end=EFIEOD; 
       format Cor_id best12. ;
       format Volg_nr best12. ;
       format Correctie_code  ;
       format Oude_verzenddatum B8601DT19. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Volg_nr)
         then put "," @;
         else do;
                 if find(Volg_nr,'0A'x) > 0 and 2+klength(Volg_nr) = klength(quote(trim(Volg_nr)))
                   then put '22'x Volg_nr +(-1) '22'x "," @;
                   else put Volg_nr @;
              end;
       if missing(Correctie_code)
         then put "," @;
         else do;
                 if find(Correctie_code,'0A'x) > 0 and 2+klength(Correctie_code) = klength(quote(trim(Correctie_code)))
                   then put '22'x Correctie_code +(-1) '22'x "," @;
                   else put Correctie_code @;
              end;
       if missing(Oude_verzenddatum)
         then put "," @;
         else do;
                 if find(Oude_verzenddatum,'0A'x) > 0 and 2+klength(Oude_verzenddatum) = klength(quote(trim(Oude_verzenddatum)))
                   then put '22'x Oude_verzenddatum +(-1) '22'x "," @;
                   else put Oude_verzenddatum @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_CORRESPONDENTIE AS
   SELECT t1.Actie_datum FORMAT=B8601DT19. AS Actie_datum,
          t1.Afgedrukt_JN,
          t1.Afgehandeld,
          t1.Archiveren,
          t1.Bas_da_melding,
          t1.Behandelingsronde,
          t1.Bezoeknr,
          t1.Bos_status,
          t1.Cbi_id,
          t1.Certhoud_contpers_intern,
          t1.Cor_bericht,
          t1.Cor_id,
          t1.Cor_id_van,
          t1.Cor_volgnr_ids,
          t1.Crd_id,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Cst_cd,
          t1.Datum FORMAT=B8601DT19. AS Datum,
          t1.Datum_ok,
          t1.Datum_stempel_sj FORMAT=B8601DT19. AS Datum_stempel_sj,
          t1.Digitaal_archiveren,
          t1.Doc_directory,
          t1.Doc_naam,
          t1.Dos_id,
          t1.Dossiergroep_cor_id,
          t1.Email_JN,
          t1.Genereer_JN,
          t1.Html,
          t1.Ids_id,
          t1.Indieningsdatum FORMAT=B8601DT19. AS Indieningsdatum,
          t1.Ingetrokken,
          t1.Jz_id,
          t1.Kenmerk,
          t1.Lijst_cd,
          t1.Mandaat_rol_cd,
          t1.Mdw_cd_email,
          t1.Mdw_id_contpers_intern,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.'n,aam_organisatie'n AS naam_organisatie,
          t1.Ok_JN,
          t1.Omschrijving,
          t1.Open_brief,
          t1.Org_id,
          t1.Pcs_id,
          t1.Plandatum FORMAT=B8601DT19. AS Plandatum,
          t1.Prioriteit,
          t1.Reg_id,
          t1.Rel_id,
          t1.Rol_cd,
          t1.Run_id,
          t1.Select_export,
          t1.Senterkenmerk,
          t1.Text_inhoud,
          t1.Vernieuw_paraaf,
          t1.Verzenddatum FORMAT=B8601DT19. AS Verzenddatum,
          t1.Verzonden_elektronisch_JN,
          t1.Verzonden_per_post_JN,
          t1.Vst_volgnr,
          t1.Wordbrief_akkoord,
          t1.Xml_inhoud,
          t1.Xsl
     FROM DATAQASG.COR_CORRESPONDENTIE_TCMG t1;
QUIT;

data WORK.BAS_COR_CORRESPONDENTIE;
  set WORK.BAS_COR_CORRESPONDENTIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_CORRESPONDENTIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Actie_datum" 
       ','
          "Afgedrukt_JN" 
       ','
          "Afgehandeld" 
       ','
          "Archiveren" 
       ','
          "Bas_da_melding" 
       ','
          "Behandelingsronde" 
       ','
          "Bezoeknr" 
       ','
          "Bos_status" 
       ','
          "Cbi_id" 
       ','
          "Certhoud_contpers_intern" 
       ','
          "Cor_bericht" 
       ','
          "Cor_id" 
       ','
          "Cor_id_van" 
       ','
          "Cor_volgnr_ids" 
       ','
          "Crd_id" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Cst_cd" 
       ','
          "Datum" 
       ','
          "Datum_ok" 
       ','
          "Datum_stempel_sj" 
       ','
          "Digitaal_archiveren" 
       ','
          "Doc_directory" 
       ','
          "Doc_naam" 
       ','
          "Dos_id" 
       ','
          "Dossiergroep_cor_id" 
       ','
          "Email_JN" 
       ','
          "Genereer_JN" 
       ','
          "Html" 
       ','
          "Ids_id" 
       ','
          "Indieningsdatum" 
       ','
          "Ingetrokken" 
       ','
          "Jz_id" 
       ','
          "Kenmerk" 
       ','
          "Lijst_cd" 
       ','
          "Mandaat_rol_cd" 
       ','
          "Mdw_cd_email" 
       ','
          "Mdw_id_contpers_intern" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "naam_organisatie" 
       ','
          "Ok_JN" 
       ','
          "Omschrijving" 
       ','
          "Open_brief" 
       ','
          "Org_id" 
       ','
          "Pcs_id" 
       ','
          "Plandatum" 
       ','
          "Prioriteit" 
       ','
          "Reg_id" 
       ','
          "Rel_id" 
       ','
          "Rol_cd" 
       ','
          "Run_id" 
       ','
          "Select_export" 
       ','
          "Senterkenmerk" 
       ','
          "Text_inhoud" 
       ','
          "Vernieuw_paraaf" 
       ','
          "Verzenddatum" 
       ','
          "Verzonden_elektronisch_JN" 
       ','
          "Verzonden_per_post_JN" 
       ','
          "Vst_volgnr" 
       ','
          "Wordbrief_akkoord" 
       ','
          "Xml_inhoud" 
       ','
          "Xsl" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_CORRESPONDENTIE   end=EFIEOD; 
       format Actie_datum B8601DT19. ;
       format Afgedrukt_JN  ;
       format Afgehandeld  ;
       format Archiveren  ;
       format Bas_da_melding  ;
       format Behandelingsronde best12. ;
       format Bezoeknr best12. ;
       format Bos_status  ;
       format Cbi_id best12. ;
       format Certhoud_contpers_intern best12. ;
       format Cor_bericht  ;
       format Cor_id best12. ;
       format Cor_id_van best12. ;
       format Cor_volgnr_ids best12. ;
       format Crd_id best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Cst_cd  ;
       format Datum B8601DT19. ;
       format Datum_ok  ;
       format Datum_stempel_sj B8601DT19. ;
       format Digitaal_archiveren  ;
       format Doc_directory  ;
       format Doc_naam  ;
       format Dos_id best12. ;
       format Dossiergroep_cor_id best12. ;
       format Email_JN  ;
       format Genereer_JN  ;
       format Html  ;
       format Ids_id best12. ;
       format Indieningsdatum B8601DT19. ;
       format Ingetrokken  ;
       format Jz_id best12. ;
       format Kenmerk  ;
       format Lijst_cd  ;
       format Mandaat_rol_cd  ;
       format Mdw_cd_email  ;
       format Mdw_id_contpers_intern best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format naam_organisatie  ;
       format Ok_JN  ;
       format Omschrijving  ;
       format Open_brief  ;
       format Org_id best12. ;
       format Pcs_id best12. ;
       format Plandatum B8601DT19. ;
       format Prioriteit best12. ;
       format Reg_id best12. ;
       format Rel_id best12. ;
       format Rol_cd  ;
       format Run_id best12. ;
       format Select_export  ;
       format Senterkenmerk  ;
       format Text_inhoud  ;
       format Vernieuw_paraaf  ;
       format Verzenddatum B8601DT19. ;
       format Verzonden_elektronisch_JN  ;
       format Verzonden_per_post_JN  ;
       format Vst_volgnr best12. ;
       format Wordbrief_akkoord  ;
       format Xml_inhoud  ;
       format Xsl  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Actie_datum)
         then put "," @;
         else do;
                 if find(Actie_datum,'0A'x) > 0 and 2+klength(Actie_datum) = klength(quote(trim(Actie_datum)))
                   then put '22'x Actie_datum +(-1) '22'x "," @;
                   else put Actie_datum @;
              end;
       if missing(Afgedrukt_JN)
         then put "," @;
         else do;
                 if find(Afgedrukt_JN,'0A'x) > 0 and 2+klength(Afgedrukt_JN) = klength(quote(trim(Afgedrukt_JN)))
                   then put '22'x Afgedrukt_JN +(-1) '22'x "," @;
                   else put Afgedrukt_JN @;
              end;
       if missing(Afgehandeld)
         then put "," @;
         else do;
                 if find(Afgehandeld,'0A'x) > 0 and 2+klength(Afgehandeld) = klength(quote(trim(Afgehandeld)))
                   then put '22'x Afgehandeld +(-1) '22'x "," @;
                   else put Afgehandeld @;
              end;
       if missing(Archiveren)
         then put "," @;
         else do;
                 if find(Archiveren,'0A'x) > 0 and 2+klength(Archiveren) = klength(quote(trim(Archiveren)))
                   then put '22'x Archiveren +(-1) '22'x "," @;
                   else put Archiveren @;
              end;
       if missing(Bas_da_melding)
         then put "," @;
         else do;
                 if find(Bas_da_melding,'0A'x) > 0 and 2+klength(Bas_da_melding) = klength(quote(trim(Bas_da_melding)))
                   then put '22'x Bas_da_melding +(-1) '22'x "," @;
                   else put Bas_da_melding @;
              end;
       if missing(Behandelingsronde)
         then put "," @;
         else do;
                 if find(Behandelingsronde,'0A'x) > 0 and 2+klength(Behandelingsronde) = klength(quote(trim(Behandelingsronde)))
                   then put '22'x Behandelingsronde +(-1) '22'x "," @;
                   else put Behandelingsronde @;
              end;
       if missing(Bezoeknr)
         then put "," @;
         else do;
                 if find(Bezoeknr,'0A'x) > 0 and 2+klength(Bezoeknr) = klength(quote(trim(Bezoeknr)))
                   then put '22'x Bezoeknr +(-1) '22'x "," @;
                   else put Bezoeknr @;
              end;
       if missing(Bos_status)
         then put "," @;
         else do;
                 if find(Bos_status,'0A'x) > 0 and 2+klength(Bos_status) = klength(quote(trim(Bos_status)))
                   then put '22'x Bos_status +(-1) '22'x "," @;
                   else put Bos_status @;
              end;
       if missing(Cbi_id)
         then put "," @;
         else do;
                 if find(Cbi_id,'0A'x) > 0 and 2+klength(Cbi_id) = klength(quote(trim(Cbi_id)))
                   then put '22'x Cbi_id +(-1) '22'x "," @;
                   else put Cbi_id @;
              end;
       if missing(Certhoud_contpers_intern)
         then put "," @;
         else do;
                 if find(Certhoud_contpers_intern,'0A'x) > 0 and 2+klength(Certhoud_contpers_intern) = klength(quote(trim(Certhoud_contpers_intern)))
                   then put '22'x Certhoud_contpers_intern +(-1) '22'x "," @;
                   else put Certhoud_contpers_intern @;
              end;
       if missing(Cor_bericht)
         then put "," @;
         else do;
                 if find(Cor_bericht,'0A'x) > 0 and 2+klength(Cor_bericht) = klength(quote(trim(Cor_bericht)))
                   then put '22'x Cor_bericht +(-1) '22'x "," @;
                   else put Cor_bericht @;
              end;
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Cor_id_van)
         then put "," @;
         else do;
                 if find(Cor_id_van,'0A'x) > 0 and 2+klength(Cor_id_van) = klength(quote(trim(Cor_id_van)))
                   then put '22'x Cor_id_van +(-1) '22'x "," @;
                   else put Cor_id_van @;
              end;
       if missing(Cor_volgnr_ids)
         then put "," @;
         else do;
                 if find(Cor_volgnr_ids,'0A'x) > 0 and 2+klength(Cor_volgnr_ids) = klength(quote(trim(Cor_volgnr_ids)))
                   then put '22'x Cor_volgnr_ids +(-1) '22'x "," @;
                   else put Cor_volgnr_ids @;
              end;
       if missing(Crd_id)
         then put "," @;
         else do;
                 if find(Crd_id,'0A'x) > 0 and 2+klength(Crd_id) = klength(quote(trim(Crd_id)))
                   then put '22'x Crd_id +(-1) '22'x "," @;
                   else put Crd_id @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Datum)
         then put "," @;
         else do;
                 if find(Datum,'0A'x) > 0 and 2+klength(Datum) = klength(quote(trim(Datum)))
                   then put '22'x Datum +(-1) '22'x "," @;
                   else put Datum @;
              end;
       if missing(Datum_ok)
         then put "," @;
         else do;
                 if find(Datum_ok,'0A'x) > 0 and 2+klength(Datum_ok) = klength(quote(trim(Datum_ok)))
                   then put '22'x Datum_ok +(-1) '22'x "," @;
                   else put Datum_ok @;
              end;
       if missing(Datum_stempel_sj)
         then put "," @;
         else do;
                 if find(Datum_stempel_sj,'0A'x) > 0 and 2+klength(Datum_stempel_sj) = klength(quote(trim(Datum_stempel_sj)))
                   then put '22'x Datum_stempel_sj +(-1) '22'x "," @;
                   else put Datum_stempel_sj @;
              end;
       if missing(Digitaal_archiveren)
         then put "," @;
         else do;
                 if find(Digitaal_archiveren,'0A'x) > 0 and 2+klength(Digitaal_archiveren) = klength(quote(trim(Digitaal_archiveren)))
                   then put '22'x Digitaal_archiveren +(-1) '22'x "," @;
                   else put Digitaal_archiveren @;
              end;
       if missing(Doc_directory)
         then put "," @;
         else do;
                 if find(Doc_directory,'0A'x) > 0 and 2+klength(Doc_directory) = klength(quote(trim(Doc_directory)))
                   then put '22'x Doc_directory +(-1) '22'x "," @;
                   else put Doc_directory @;
              end;
       if missing(Doc_naam)
         then put "," @;
         else do;
                 if find(Doc_naam,'0A'x) > 0 and 2+klength(Doc_naam) = klength(quote(trim(Doc_naam)))
                   then put '22'x Doc_naam +(-1) '22'x "," @;
                   else put Doc_naam @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Dossiergroep_cor_id)
         then put "," @;
         else do;
                 if find(Dossiergroep_cor_id,'0A'x) > 0 and 2+klength(Dossiergroep_cor_id) = klength(quote(trim(Dossiergroep_cor_id)))
                   then put '22'x Dossiergroep_cor_id +(-1) '22'x "," @;
                   else put Dossiergroep_cor_id @;
              end;
       if missing(Email_JN)
         then put "," @;
         else do;
                 if find(Email_JN,'0A'x) > 0 and 2+klength(Email_JN) = klength(quote(trim(Email_JN)))
                   then put '22'x Email_JN +(-1) '22'x "," @;
                   else put Email_JN @;
              end;
       if missing(Genereer_JN)
         then put "," @;
         else do;
                 if find(Genereer_JN,'0A'x) > 0 and 2+klength(Genereer_JN) = klength(quote(trim(Genereer_JN)))
                   then put '22'x Genereer_JN +(-1) '22'x "," @;
                   else put Genereer_JN @;
              end;
       if missing(Html)
         then put "," @;
         else do;
                 if find(Html,'0A'x) > 0 and 2+klength(Html) = klength(quote(trim(Html)))
                   then put '22'x Html +(-1) '22'x "," @;
                   else put Html @;
              end;
       if missing(Ids_id)
         then put "," @;
         else do;
                 if find(Ids_id,'0A'x) > 0 and 2+klength(Ids_id) = klength(quote(trim(Ids_id)))
                   then put '22'x Ids_id +(-1) '22'x "," @;
                   else put Ids_id @;
              end;
       if missing(Indieningsdatum)
         then put "," @;
         else do;
                 if find(Indieningsdatum,'0A'x) > 0 and 2+klength(Indieningsdatum) = klength(quote(trim(Indieningsdatum)))
                   then put '22'x Indieningsdatum +(-1) '22'x "," @;
                   else put Indieningsdatum @;
              end;
       if missing(Ingetrokken)
         then put "," @;
         else do;
                 if find(Ingetrokken,'0A'x) > 0 and 2+klength(Ingetrokken) = klength(quote(trim(Ingetrokken)))
                   then put '22'x Ingetrokken +(-1) '22'x "," @;
                   else put Ingetrokken @;
              end;
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Kenmerk)
         then put "," @;
         else do;
                 if find(Kenmerk,'0A'x) > 0 and 2+klength(Kenmerk) = klength(quote(trim(Kenmerk)))
                   then put '22'x Kenmerk +(-1) '22'x "," @;
                   else put Kenmerk @;
              end;
       if missing(Lijst_cd)
         then put "," @;
         else do;
                 if find(Lijst_cd,'0A'x) > 0 and 2+klength(Lijst_cd) = klength(quote(trim(Lijst_cd)))
                   then put '22'x Lijst_cd +(-1) '22'x "," @;
                   else put Lijst_cd @;
              end;
       if missing(Mandaat_rol_cd)
         then put "," @;
         else do;
                 if find(Mandaat_rol_cd,'0A'x) > 0 and 2+klength(Mandaat_rol_cd) = klength(quote(trim(Mandaat_rol_cd)))
                   then put '22'x Mandaat_rol_cd +(-1) '22'x "," @;
                   else put Mandaat_rol_cd @;
              end;
       if missing(Mdw_cd_email)
         then put "," @;
         else do;
                 if find(Mdw_cd_email,'0A'x) > 0 and 2+klength(Mdw_cd_email) = klength(quote(trim(Mdw_cd_email)))
                   then put '22'x Mdw_cd_email +(-1) '22'x "," @;
                   else put Mdw_cd_email @;
              end;
       if missing(Mdw_id_contpers_intern)
         then put "," @;
         else do;
                 if find(Mdw_id_contpers_intern,'0A'x) > 0 and 2+klength(Mdw_id_contpers_intern) = klength(quote(trim(Mdw_id_contpers_intern)))
                   then put '22'x Mdw_id_contpers_intern +(-1) '22'x "," @;
                   else put Mdw_id_contpers_intern @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(naam_organisatie)
         then put "," @;
         else do;
                 if find(naam_organisatie,'0A'x) > 0 and 2+klength(naam_organisatie) = klength(quote(trim(naam_organisatie)))
                   then put '22'x naam_organisatie +(-1) '22'x "," @;
                   else put naam_organisatie @;
              end;
       if missing(Ok_JN)
         then put "," @;
         else do;
                 if find(Ok_JN,'0A'x) > 0 and 2+klength(Ok_JN) = klength(quote(trim(Ok_JN)))
                   then put '22'x Ok_JN +(-1) '22'x "," @;
                   else put Ok_JN @;
              end;
       /* OPGELET: Omschrijving WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       if missing(Open_brief)
         then put "," @;
         else do;
                 if find(Open_brief,'0A'x) > 0 and 2+klength(Open_brief) = klength(quote(trim(Open_brief)))
                   then put '22'x Open_brief +(-1) '22'x "," @;
                   else put Open_brief @;
              end;
       if missing(Org_id)
         then put "," @;
         else do;
                 if find(Org_id,'0A'x) > 0 and 2+klength(Org_id) = klength(quote(trim(Org_id)))
                   then put '22'x Org_id +(-1) '22'x "," @;
                   else put Org_id @;
              end;
       if missing(Pcs_id)
         then put "," @;
         else do;
                 if find(Pcs_id,'0A'x) > 0 and 2+klength(Pcs_id) = klength(quote(trim(Pcs_id)))
                   then put '22'x Pcs_id +(-1) '22'x "," @;
                   else put Pcs_id @;
              end;
       if missing(Plandatum)
         then put "," @;
         else do;
                 if find(Plandatum,'0A'x) > 0 and 2+klength(Plandatum) = klength(quote(trim(Plandatum)))
                   then put '22'x Plandatum +(-1) '22'x "," @;
                   else put Plandatum @;
              end;
       if missing(Prioriteit)
         then put "," @;
         else do;
                 if find(Prioriteit,'0A'x) > 0 and 2+klength(Prioriteit) = klength(quote(trim(Prioriteit)))
                   then put '22'x Prioriteit +(-1) '22'x "," @;
                   else put Prioriteit @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Run_id)
         then put "," @;
         else do;
                 if find(Run_id,'0A'x) > 0 and 2+klength(Run_id) = klength(quote(trim(Run_id)))
                   then put '22'x Run_id +(-1) '22'x "," @;
                   else put Run_id @;
              end;
       if missing(Select_export)
         then put "," @;
         else do;
                 if find(Select_export,'0A'x) > 0 and 2+klength(Select_export) = klength(quote(trim(Select_export)))
                   then put '22'x Select_export +(-1) '22'x "," @;
                   else put Select_export @;
              end;
       if missing(Senterkenmerk)
         then put "," @;
         else do;
                 if find(Senterkenmerk,'0A'x) > 0 and 2+klength(Senterkenmerk) = klength(quote(trim(Senterkenmerk)))
                   then put '22'x Senterkenmerk +(-1) '22'x "," @;
                   else put Senterkenmerk @;
              end;
       if missing(Text_inhoud)
         then put "," @;
         else do;
                 if find(Text_inhoud,'0A'x) > 0 and 2+klength(Text_inhoud) = klength(quote(trim(Text_inhoud)))
                   then put '22'x Text_inhoud +(-1) '22'x "," @;
                   else put Text_inhoud @;
              end;
       if missing(Vernieuw_paraaf)
         then put "," @;
         else do;
                 if find(Vernieuw_paraaf,'0A'x) > 0 and 2+klength(Vernieuw_paraaf) = klength(quote(trim(Vernieuw_paraaf)))
                   then put '22'x Vernieuw_paraaf +(-1) '22'x "," @;
                   else put Vernieuw_paraaf @;
              end;
       if missing(Verzenddatum)
         then put "," @;
         else do;
                 if find(Verzenddatum,'0A'x) > 0 and 2+klength(Verzenddatum) = klength(quote(trim(Verzenddatum)))
                   then put '22'x Verzenddatum +(-1) '22'x "," @;
                   else put Verzenddatum @;
              end;
       if missing(Verzonden_elektronisch_JN)
         then put "," @;
         else do;
                 if find(Verzonden_elektronisch_JN,'0A'x) > 0 and 2+klength(Verzonden_elektronisch_JN) = klength(quote(trim(Verzonden_elektronisch_JN)))
                   then put '22'x Verzonden_elektronisch_JN +(-1) '22'x "," @;
                   else put Verzonden_elektronisch_JN @;
              end;
       if missing(Verzonden_per_post_JN)
         then put "," @;
         else do;
                 if find(Verzonden_per_post_JN,'0A'x) > 0 and 2+klength(Verzonden_per_post_JN) = klength(quote(trim(Verzonden_per_post_JN)))
                   then put '22'x Verzonden_per_post_JN +(-1) '22'x "," @;
                   else put Verzonden_per_post_JN @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       if missing(Wordbrief_akkoord)
         then put "," @;
         else do;
                 if find(Wordbrief_akkoord,'0A'x) > 0 and 2+klength(Wordbrief_akkoord) = klength(quote(trim(Wordbrief_akkoord)))
                   then put '22'x Wordbrief_akkoord +(-1) '22'x "," @;
                   else put Wordbrief_akkoord @;
              end;
       if missing(Xml_inhoud)
         then put "," @;
         else do;
                 if find(Xml_inhoud,'0A'x) > 0 and 2+klength(Xml_inhoud) = klength(quote(trim(Xml_inhoud)))
                   then put '22'x Xml_inhoud +(-1) '22'x "," @;
                   else put Xml_inhoud @;
              end;
       if missing(Xsl)
         then put "," @;
         else do;
                 if find(Xsl,'0A'x) > 0 and 2+klength(Xsl) = klength(quote(trim(Xsl)))
                   then put '22'x Xsl +(-1) '22'x "," @;
                   else put Xsl @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_CST_SET_CST AS
   SELECT t1.Reg_id,
          t1.Cst_cd,
          t1.Cst_cd_2,
          t1.Verzenddatum_jn,
          t1.Afgehandeld_jn,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Genereer_jn
     FROM DATAQASG.COR_CST_SET_CST_TCMG t1;
QUIT;

data WORK.BAS_COR_CST_SET_CST;
  set WORK.BAS_COR_CST_SET_CST;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_CST_SET_CST.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Reg_id" 
       ','
          "Cst_cd" 
       ','
          "Cst_cd_2" 
       ','
          "Verzenddatum_jn" 
       ','
          "Afgehandeld_jn" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Genereer_jn" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_CST_SET_CST   end=EFIEOD; 
       format Reg_id best12. ;
       format Cst_cd  ;
       format Cst_cd_2  ;
       format Verzenddatum_jn  ;
       format Afgehandeld_jn  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Genereer_jn  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Cst_cd_2)
         then put "," @;
         else do;
                 if find(Cst_cd_2,'0A'x) > 0 and 2+klength(Cst_cd_2) = klength(quote(trim(Cst_cd_2)))
                   then put '22'x Cst_cd_2 +(-1) '22'x "," @;
                   else put Cst_cd_2 @;
              end;
       if missing(Verzenddatum_jn)
         then put "," @;
         else do;
                 if find(Verzenddatum_jn,'0A'x) > 0 and 2+klength(Verzenddatum_jn) = klength(quote(trim(Verzenddatum_jn)))
                   then put '22'x Verzenddatum_jn +(-1) '22'x "," @;
                   else put Verzenddatum_jn @;
              end;
       if missing(Afgehandeld_jn)
         then put "," @;
         else do;
                 if find(Afgehandeld_jn,'0A'x) > 0 and 2+klength(Afgehandeld_jn) = klength(quote(trim(Afgehandeld_jn)))
                   then put '22'x Afgehandeld_jn +(-1) '22'x "," @;
                   else put Afgehandeld_jn @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Genereer_jn)
         then put "," @;
         else do;
                 if find(Genereer_jn,'0A'x) > 0 and 2+klength(Genereer_jn) = klength(quote(trim(Genereer_jn)))
                   then put '22'x Genereer_jn +(-1) '22'x "," @;
                   else put Genereer_jn @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_PARAAF AS
   SELECT t1.Reg_id,
          t1.Cst_cd,
          t1.Type_paraaf,
          t1.Rol_cd,
          t1.Mdw_rol_niveau,
          t1.Volgorde,
          t1.Vaste_paraaf_jn,
          t1.Rol_volg_cd
     FROM DATAQASG.COR_PARAAF_TCMG t1;
QUIT;

data WORK.BAS_COR_PARAAF;
  set WORK.BAS_COR_PARAAF;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_PARAAF.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Reg_id" 
       ','
          "Cst_cd" 
       ','
          "Type_paraaf" 
       ','
          "Rol_cd" 
       ','
          "Mdw_rol_niveau" 
       ','
          "Volgorde" 
       ','
          "Vaste_paraaf_jn" 
       ','
          "Rol_volg_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_PARAAF   end=EFIEOD; 
       format Reg_id best12. ;
       format Cst_cd  ;
       format Type_paraaf  ;
       format Rol_cd  ;
       format Mdw_rol_niveau  ;
       format Volgorde best12. ;
       format Vaste_paraaf_jn  ;
       format Rol_volg_cd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Type_paraaf)
         then put "," @;
         else do;
                 if find(Type_paraaf,'0A'x) > 0 and 2+klength(Type_paraaf) = klength(quote(trim(Type_paraaf)))
                   then put '22'x Type_paraaf +(-1) '22'x "," @;
                   else put Type_paraaf @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Mdw_rol_niveau)
         then put "," @;
         else do;
                 if find(Mdw_rol_niveau,'0A'x) > 0 and 2+klength(Mdw_rol_niveau) = klength(quote(trim(Mdw_rol_niveau)))
                   then put '22'x Mdw_rol_niveau +(-1) '22'x "," @;
                   else put Mdw_rol_niveau @;
              end;
       if missing(Volgorde)
         then put "," @;
         else do;
                 if find(Volgorde,'0A'x) > 0 and 2+klength(Volgorde) = klength(quote(trim(Volgorde)))
                   then put '22'x Volgorde +(-1) '22'x "," @;
                   else put Volgorde @;
              end;
       if missing(Vaste_paraaf_jn)
         then put "," @;
         else do;
                 if find(Vaste_paraaf_jn,'0A'x) > 0 and 2+klength(Vaste_paraaf_jn) = klength(quote(trim(Vaste_paraaf_jn)))
                   then put '22'x Vaste_paraaf_jn +(-1) '22'x "," @;
                   else put Vaste_paraaf_jn @;
              end;
       if missing(Rol_volg_cd)
         then put "," @;
         else do;
                 if find(Rol_volg_cd,'0A'x) > 0 and 2+klength(Rol_volg_cd) = klength(quote(trim(Rol_volg_cd)))
                   then put '22'x Rol_volg_cd +(-1) '22'x "," @;
                   else put Rol_volg_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_REACTIE_BIJ_COR_SRT AS
   SELECT t1.Cluster_nr,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Cst_cd,
          t1.Mdw_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Per_cluster,
          t1.Prg_id,
          t1.Prioriteit,
          t1.Reactie_cd,
          t1.Reg_id,
          t1.Rol_cd,
          t1.Sts_cd,
          t1.Termijn,
          t1.Termijn_weken
     FROM DATAQASG.COR_REACTIE_BIJ_COR_SRT_TCMG t1;
QUIT;

data WORK.BAS_COR_REACTIE_BIJ_COR_SRT;
  set WORK.BAS_COR_REACTIE_BIJ_COR_SRT;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_REACTIE_BIJ_COR_SRT.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Cluster_nr" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Cst_cd" 
       ','
          "Mdw_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Per_cluster" 
       ','
          "Prg_id" 
       ','
          "Prioriteit" 
       ','
          "Reactie_cd" 
       ','
          "Reg_id" 
       ','
          "Rol_cd" 
       ','
          "Sts_cd" 
       ','
          "Termijn" 
       ','
          "Termijn_weken" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_REACTIE_BIJ_COR_SRT   end=EFIEOD; 
       format Cluster_nr best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Cst_cd  ;
       format Mdw_id  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Per_cluster  ;
       format Prg_id best12. ;
       format Prioriteit best12. ;
       format Reactie_cd  ;
       format Reg_id best12. ;
       format Rol_cd  ;
       format Sts_cd  ;
       format Termijn best12. ;
       format Termijn_weken best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Cluster_nr)
         then put "," @;
         else do;
                 if find(Cluster_nr,'0A'x) > 0 and 2+klength(Cluster_nr) = klength(quote(trim(Cluster_nr)))
                   then put '22'x Cluster_nr +(-1) '22'x "," @;
                   else put Cluster_nr @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Per_cluster)
         then put "," @;
         else do;
                 if find(Per_cluster,'0A'x) > 0 and 2+klength(Per_cluster) = klength(quote(trim(Per_cluster)))
                   then put '22'x Per_cluster +(-1) '22'x "," @;
                   else put Per_cluster @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Prioriteit)
         then put "," @;
         else do;
                 if find(Prioriteit,'0A'x) > 0 and 2+klength(Prioriteit) = klength(quote(trim(Prioriteit)))
                   then put '22'x Prioriteit +(-1) '22'x "," @;
                   else put Prioriteit @;
              end;
       if missing(Reactie_cd)
         then put "," @;
         else do;
                 if find(Reactie_cd,'0A'x) > 0 and 2+klength(Reactie_cd) = klength(quote(trim(Reactie_cd)))
                   then put '22'x Reactie_cd +(-1) '22'x "," @;
                   else put Reactie_cd @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Sts_cd)
         then put "," @;
         else do;
                 if find(Sts_cd,'0A'x) > 0 and 2+klength(Sts_cd) = klength(quote(trim(Sts_cd)))
                   then put '22'x Sts_cd +(-1) '22'x "," @;
                   else put Sts_cd @;
              end;
       if missing(Termijn)
         then put "," @;
         else do;
                 if find(Termijn,'0A'x) > 0 and 2+klength(Termijn) = klength(quote(trim(Termijn)))
                   then put '22'x Termijn +(-1) '22'x "," @;
                   else put Termijn @;
              end;
       if missing(Termijn_weken)
         then put "," @;
         else do;
                 if find(Termijn_weken,'0A'x) > 0 and 2+klength(Termijn_weken) = klength(quote(trim(Termijn_weken)))
                   then put '22'x Termijn_weken +(-1) '22'x "," @;
                   else put Termijn_weken @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_REGLSPEC_COR AS
   SELECT t1.Bos_bezorging,
          t1.Crea_back,
          t1.Create_merge_jn,
          t1.Create_merge_single,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Cst_cd,
          t1.Doc_template,
          t1.Externe_naam,
          t1.Geblokkeerd_jn,
          t1.Ic_controle,
          t1.Job,
          t1.Lijst_cd,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Prf_cd,
          t1.Print_jn,
          t1.Prioriteit,
          t1.Reg_id,
          t1.Verzenddatum_vullen
     FROM DATAQASG.COR_REGLSPEC_COR_TCMG t1;
QUIT;

data WORK.BAS_COR_REGLSPEC_COR;
  set WORK.BAS_COR_REGLSPEC_COR;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_REGLSPEC_COR.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Bos_bezorging" 
       ','
          "Crea_back" 
       ','
          "Create_merge_jn" 
       ','
          "Create_merge_single" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Cst_cd" 
       ','
          "Doc_template" 
       ','
          "Externe_naam" 
       ','
          "Geblokkeerd_jn" 
       ','
          "Ic_controle" 
       ','
          "Job" 
       ','
          "Lijst_cd" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Prf_cd" 
       ','
          "Print_jn" 
       ','
          "Prioriteit" 
       ','
          "Reg_id" 
       ','
          "Verzenddatum_vullen" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_REGLSPEC_COR   end=EFIEOD; 
       format Bos_bezorging  ;
       format Crea_back  ;
       format Create_merge_jn  ;
       format Create_merge_single  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Cst_cd  ;
       format Doc_template  ;
       format Externe_naam  ;
       format Geblokkeerd_jn  ;
       format Ic_controle  ;
       format Job  ;
       format Lijst_cd  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Prf_cd  ;
       format Print_jn  ;
       format Prioriteit best12. ;
       format Reg_id best12. ;
       format Verzenddatum_vullen  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Bos_bezorging)
         then put "," @;
         else do;
                 if find(Bos_bezorging,'0A'x) > 0 and 2+klength(Bos_bezorging) = klength(quote(trim(Bos_bezorging)))
                   then put '22'x Bos_bezorging +(-1) '22'x "," @;
                   else put Bos_bezorging @;
              end;
       if missing(Crea_back)
         then put "," @;
         else do;
                 if find(Crea_back,'0A'x) > 0 and 2+klength(Crea_back) = klength(quote(trim(Crea_back)))
                   then put '22'x Crea_back +(-1) '22'x "," @;
                   else put Crea_back @;
              end;
       if missing(Create_merge_jn)
         then put "," @;
         else do;
                 if find(Create_merge_jn,'0A'x) > 0 and 2+klength(Create_merge_jn) = klength(quote(trim(Create_merge_jn)))
                   then put '22'x Create_merge_jn +(-1) '22'x "," @;
                   else put Create_merge_jn @;
              end;
       if missing(Create_merge_single)
         then put "," @;
         else do;
                 if find(Create_merge_single,'0A'x) > 0 and 2+klength(Create_merge_single) = klength(quote(trim(Create_merge_single)))
                   then put '22'x Create_merge_single +(-1) '22'x "," @;
                   else put Create_merge_single @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Doc_template)
         then put "," @;
         else do;
                 if find(Doc_template,'0A'x) > 0 and 2+klength(Doc_template) = klength(quote(trim(Doc_template)))
                   then put '22'x Doc_template +(-1) '22'x "," @;
                   else put Doc_template @;
              end;
       if missing(Externe_naam)
         then put "," @;
         else do;
                 if find(Externe_naam,'0A'x) > 0 and 2+klength(Externe_naam) = klength(quote(trim(Externe_naam)))
                   then put '22'x Externe_naam +(-1) '22'x "," @;
                   else put Externe_naam @;
              end;
       if missing(Geblokkeerd_jn)
         then put "," @;
         else do;
                 if find(Geblokkeerd_jn,'0A'x) > 0 and 2+klength(Geblokkeerd_jn) = klength(quote(trim(Geblokkeerd_jn)))
                   then put '22'x Geblokkeerd_jn +(-1) '22'x "," @;
                   else put Geblokkeerd_jn @;
              end;
       if missing(Ic_controle)
         then put "," @;
         else do;
                 if find(Ic_controle,'0A'x) > 0 and 2+klength(Ic_controle) = klength(quote(trim(Ic_controle)))
                   then put '22'x Ic_controle +(-1) '22'x "," @;
                   else put Ic_controle @;
              end;
       if missing(Job)
         then put "," @;
         else do;
                 if find(Job,'0A'x) > 0 and 2+klength(Job) = klength(quote(trim(Job)))
                   then put '22'x Job +(-1) '22'x "," @;
                   else put Job @;
              end;
       if missing(Lijst_cd)
         then put "," @;
         else do;
                 if find(Lijst_cd,'0A'x) > 0 and 2+klength(Lijst_cd) = klength(quote(trim(Lijst_cd)))
                   then put '22'x Lijst_cd +(-1) '22'x "," @;
                   else put Lijst_cd @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Prf_cd)
         then put "," @;
         else do;
                 if find(Prf_cd,'0A'x) > 0 and 2+klength(Prf_cd) = klength(quote(trim(Prf_cd)))
                   then put '22'x Prf_cd +(-1) '22'x "," @;
                   else put Prf_cd @;
              end;
       if missing(Print_jn)
         then put "," @;
         else do;
                 if find(Print_jn,'0A'x) > 0 and 2+klength(Print_jn) = klength(quote(trim(Print_jn)))
                   then put '22'x Print_jn +(-1) '22'x "," @;
                   else put Print_jn @;
              end;
       if missing(Prioriteit)
         then put "," @;
         else do;
                 if find(Prioriteit,'0A'x) > 0 and 2+klength(Prioriteit) = klength(quote(trim(Prioriteit)))
                   then put '22'x Prioriteit +(-1) '22'x "," @;
                   else put Prioriteit @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Verzenddatum_vullen)
         then put "," @;
         else do;
                 if find(Verzenddatum_vullen,'0A'x) > 0 and 2+klength(Verzenddatum_vullen) = klength(quote(trim(Verzenddatum_vullen)))
                   then put '22'x Verzenddatum_vullen +(-1) '22'x "," @;
                   else put Verzenddatum_vullen @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_COR_TRANSACTIEGROEP_BIJ_BRF AS
   SELECT t1.Cor_id,
          t1.Tra_id,
          t1.Dos_id,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.COR_TRANSACTIEGROEP_BIJ_BRF_TCMG t1;
QUIT;

data WORK.BAS_COR_TRANSACTIEGROEP_BIJ_BRF;
  set WORK.BAS_COR_TRANSACTIEGROEP_BIJ_BRF;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_TRANSACTIEGROEP_BIJ_BRF.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Cor_id" 
       ','
          "Tra_id" 
       ','
          "Dos_id" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_COR_TRANSACTIEGROEP_BIJ_BRF   end=EFIEOD; 
       format Cor_id best12. ;
       format Tra_id best12. ;
       format Dos_id best12. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Tra_id)
         then put "," @;
         else do;
                 if find(Tra_id,'0A'x) > 0 and 2+klength(Tra_id) = klength(quote(trim(Tra_id)))
                   then put '22'x Tra_id +(-1) '22'x "," @;
                   else put Tra_id @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_CONT_BIJ_DLN_COM_ADR AS
   SELECT t1.creatie_dat FORMAT=B8601DT19. AS creatie_dat,
          t1.Creatie_user,
          t1.Dcs_id,
          t1.Dos_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Per_id,
          t1.Rav_id,
          t1.Rca_id,
          t1.Rel_id,
          t1.Rol_cd,
          t1.Rol_cd_van,
          t1.Vst_volgnr
     FROM DATAQASG.DAM_CONT_BIJ_DLN_COM_ADR_TCMG t1;
QUIT;

data WORK.BAS_DAM_CONT_BIJ_DLN_COM_ADR;
  set WORK.BAS_DAM_CONT_BIJ_DLN_COM_ADR;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_CONT_BIJ_DLN_COM_ADR.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dcs_id" 
       ','
          "Dos_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Per_id" 
       ','
          "Rav_id" 
       ','
          "Rca_id" 
       ','
          "Rel_id" 
       ','
          "Rol_cd" 
       ','
          "Rol_cd_van" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_CONT_BIJ_DLN_COM_ADR   end=EFIEOD; 
       format creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dcs_id best12. ;
       format Dos_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Per_id best12. ;
       format Rav_id best12. ;
       format Rca_id best12. ;
       format Rel_id best12. ;
       format Rol_cd  ;
       format Rol_cd_van  ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(creatie_dat)
         then put "," @;
         else do;
                 if find(creatie_dat,'0A'x) > 0 and 2+klength(creatie_dat) = klength(quote(trim(creatie_dat)))
                   then put '22'x creatie_dat +(-1) '22'x "," @;
                   else put creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dcs_id)
         then put "," @;
         else do;
                 if find(Dcs_id,'0A'x) > 0 and 2+klength(Dcs_id) = klength(quote(trim(Dcs_id)))
                   then put '22'x Dcs_id +(-1) '22'x "," @;
                   else put Dcs_id @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Per_id)
         then put "," @;
         else do;
                 if find(Per_id,'0A'x) > 0 and 2+klength(Per_id) = klength(quote(trim(Per_id)))
                   then put '22'x Per_id +(-1) '22'x "," @;
                   else put Per_id @;
              end;
       if missing(Rav_id)
         then put "," @;
         else do;
                 if find(Rav_id,'0A'x) > 0 and 2+klength(Rav_id) = klength(quote(trim(Rav_id)))
                   then put '22'x Rav_id +(-1) '22'x "," @;
                   else put Rav_id @;
              end;
       if missing(Rca_id)
         then put "," @;
         else do;
                 if find(Rca_id,'0A'x) > 0 and 2+klength(Rca_id) = klength(quote(trim(Rca_id)))
                   then put '22'x Rca_id +(-1) '22'x "," @;
                   else put Rca_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Rol_cd_van)
         then put "," @;
         else do;
                 if find(Rol_cd_van,'0A'x) > 0 and 2+klength(Rol_cd_van) = klength(quote(trim(Rol_cd_van)))
                   then put '22'x Rol_cd_van +(-1) '22'x "," @;
                   else put Rol_cd_van @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_CONTACT_BIJ_DEELNAME AS
   SELECT t1.Certhoud_id,
          t1.Correspondent,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dos_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Per_id,
          t1.Rechten_id,
          t1.Rel_id,
          t1.Rol_cd,
          t1.Rol_cd_van,
          t1.Vst_volgnr
     FROM DATAQASG.DAM_CONTACT_BIJ_DEELNAME_TCMG t1;
QUIT;

data WORK.BAS_DAM_CONTACT_BIJ_DEELNAME;
  set WORK.BAS_DAM_CONTACT_BIJ_DEELNAME;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_CONTACT_BIJ_DEELNAME.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Certhoud_id" 
       ','
          "Correspondent" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dos_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Per_id" 
       ','
          "Rechten_id" 
       ','
          "Rel_id" 
       ','
          "Rol_cd" 
       ','
          "Rol_cd_van" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_CONTACT_BIJ_DEELNAME   end=EFIEOD; 
       format Certhoud_id best12. ;
       format Correspondent  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dos_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Per_id best12. ;
       format Rechten_id  ;
       format Rel_id best12. ;
       format Rol_cd  ;
       format Rol_cd_van  ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Certhoud_id)
         then put "," @;
         else do;
                 if find(Certhoud_id,'0A'x) > 0 and 2+klength(Certhoud_id) = klength(quote(trim(Certhoud_id)))
                   then put '22'x Certhoud_id +(-1) '22'x "," @;
                   else put Certhoud_id @;
              end;
       if missing(Correspondent)
         then put "," @;
         else do;
                 if find(Correspondent,'0A'x) > 0 and 2+klength(Correspondent) = klength(quote(trim(Correspondent)))
                   then put '22'x Correspondent +(-1) '22'x "," @;
                   else put Correspondent @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Per_id)
         then put "," @;
         else do;
                 if find(Per_id,'0A'x) > 0 and 2+klength(Per_id) = klength(quote(trim(Per_id)))
                   then put '22'x Per_id +(-1) '22'x "," @;
                   else put Per_id @;
              end;
       if missing(Rechten_id)
         then put "," @;
         else do;
                 if find(Rechten_id,'0A'x) > 0 and 2+klength(Rechten_id) = klength(quote(trim(Rechten_id)))
                   then put '22'x Rechten_id +(-1) '22'x "," @;
                   else put Rechten_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Rol_cd_van)
         then put "," @;
         else do;
                 if find(Rol_cd_van,'0A'x) > 0 and 2+klength(Rol_cd_van) = klength(quote(trim(Rol_cd_van)))
                   then put '22'x Rol_cd_van +(-1) '22'x "," @;
                   else put Rol_cd_van @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DECLARATIE AS
   SELECT t1.Adviesaangevraagd,
          t1.Adviesaantaluren,
          t1.Advieshandtoegekend,
          t1.Adviesrente,
          t1.Adviesrentedatum FORMAT=B8601DT19. AS Adviesrentedatum,
          t1.Adviestoegekend,
          t1.Besluit_cor_id,
          t1.Cor_id,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Datumberekening FORMAT=B8601DT19. AS Datumberekening,
          t1.Dos_id,
          t1.Herstel,
          t1.Inboedeltuinaangevraagd,
          t1.Inboedeltuinhandtoegekend,
          t1.Inboedeltuinrente,
          t1.inboedeltuinrentedatum FORMAT=B8601DT19. AS inboedeltuinrentedatum,
          t1.Inboedeltuintoegekend,
          t1.Inkomstendervingaangevraagd,
          t1.Inkomstendervinghandtoegekend,
          t1.Inkomstendervingrente,
          t1.Inkomstendervingrentedatum FORMAT=B8601DT19. AS Inkomstendervingrentedatum,
          t1.Inkomstendervingtoegekend,
          t1.Juridischaangevraagd,
          t1.Juridischaantaluren,
          t1.Juridischhandtoegekend,
          t1.Juridischrente,
          t1.Juridischrentedatum FORMAT=B8601DT19. AS Juridischrentedatum,
          t1.Juridischtarief,
          t1.Juridischtoegekend,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Notitie,
          t1.Oorzaak,
          t1.Opslagaangevraagd,
          t1.Opslagaantalweken,
          t1.Opslaghandtoegekend,
          t1.opslagrente,
          t1.Opslagrentedatum FORMAT=B8601DT19. AS Opslagrentedatum,
          t1.Opslagtoegekend,
          t1.Overlastaangevraagd,
          t1.Overlasthandtoegekend,
          t1.Overlastrente,
          t1.Overlasttoegekend,
          t1.Overlastvergoeding,
          t1.Overnachtenaangevraagd,
          t1.Overnachtenaantalnachten,
          t1.Overnachtenaantalpersonen,
          t1.Overnachtenhandtoegekend,
          t1.Overnachtenrente,
          t1.Overnachtenrentedatum FORMAT=B8601DT19. AS Overnachtenrentedatum,
          t1.Overnachtentoegekend,
          t1.Reisaangevraagd,
          t1.Reisaantalkm,
          t1.Reishandtoegekend,
          t1.Reisov,
          t1.Reisrente,
          t1.Reisrentedatum FORMAT=B8601DT19. AS Reisrentedatum,
          t1.Reistoegekend,
          t1.Schoonmaakaangevraagd,
          t1.Schoonmaakhandtoegekend,
          t1.Schoonmaakrente,
          t1.Schoonmaaktoegekend,
          t1.Schoonmaakvergoeding,
          t1.Thuisblijfherstelaangevraagd,
          t1.Thuisblijfherstelaantaldagdeel,
          t1.Thuisblijfherstelhandtoegekend,
          t1.Thuisblijfherstelrente,
          t1.Thuisblijfhersteltoegekend,
          t1.Thuisblijfherstelvergoeding,
          t1.Thuisblijfopnameaangevraagd,
          t1.Thuisblijfopnamehandtoegekend,
          t1.Thuisblijfopnamerente,
          t1.Thuisblijfopnametoegekend,
          t1.Thuisblijfopnamevergoeding,
          t1.Totaalrente,
          t1.Totaaltoegekend,
          t1.Verhuisaangevraagd,
          t1.Verhuishandtoegekend,
          t1.Verhuisrente,
          t1.Verhuisrentedatum FORMAT=B8601DT19. AS Verhuisrentedatum,
          t1.Verhuistoegekend,
          t1.Zorgaangevraagd,
          t1.Zorghandtoegekend,
          t1.Zorgrente,
          t1.Zorgrentedatum FORMAT=B8601DT19. AS Zorgrentedatum,
          t1.Zorgtoegekend
     FROM DATAQASG.DAM_DECLARATIE_TCMG t1;
QUIT;

data WORK.BAS_DAM_DECLARATIE;
  set WORK.BAS_DAM_DECLARATIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DECLARATIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Adviesaangevraagd" 
       ','
          "Adviesaantaluren" 
       ','
          "Advieshandtoegekend" 
       ','
          "Adviesrente" 
       ','
          "Adviesrentedatum" 
       ','
          "Adviestoegekend" 
       ','
          "Besluit_cor_id" 
       ','
          "Cor_id" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Datumberekening" 
       ','
          "Dos_id" 
       ','
          "Herstel" 
       ','
          "Inboedeltuinaangevraagd" 
       ','
          "Inboedeltuinhandtoegekend" 
       ','
          "Inboedeltuinrente" 
       ','
          "inboedeltuinrentedatum" 
       ','
          "Inboedeltuintoegekend" 
       ','
          "Inkomstendervingaangevraagd" 
       ','
          "Inkomstendervinghandtoegekend" 
       ','
          "Inkomstendervingrente" 
       ','
          "Inkomstendervingrentedatum" 
       ','
          "Inkomstendervingtoegekend" 
       ','
          "Juridischaangevraagd" 
       ','
          "Juridischaantaluren" 
       ','
          "Juridischhandtoegekend" 
       ','
          "Juridischrente" 
       ','
          "Juridischrentedatum" 
       ','
          "Juridischtarief" 
       ','
          "Juridischtoegekend" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Notitie" 
       ','
          "Oorzaak" 
       ','
          "Opslagaangevraagd" 
       ','
          "Opslagaantalweken" 
       ','
          "Opslaghandtoegekend" 
       ','
          "opslagrente" 
       ','
          "Opslagrentedatum" 
       ','
          "Opslagtoegekend" 
       ','
          "Overlastaangevraagd" 
       ','
          "Overlasthandtoegekend" 
       ','
          "Overlastrente" 
       ','
          "Overlasttoegekend" 
       ','
          "Overlastvergoeding" 
       ','
          "Overnachtenaangevraagd" 
       ','
          "Overnachtenaantalnachten" 
       ','
          "Overnachtenaantalpersonen" 
       ','
          "Overnachtenhandtoegekend" 
       ','
          "Overnachtenrente" 
       ','
          "Overnachtenrentedatum" 
       ','
          "Overnachtentoegekend" 
       ','
          "Reisaangevraagd" 
       ','
          "Reisaantalkm" 
       ','
          "Reishandtoegekend" 
       ','
          "Reisov" 
       ','
          "Reisrente" 
       ','
          "Reisrentedatum" 
       ','
          "Reistoegekend" 
       ','
          "Schoonmaakaangevraagd" 
       ','
          "Schoonmaakhandtoegekend" 
       ','
          "Schoonmaakrente" 
       ','
          "Schoonmaaktoegekend" 
       ','
          "Schoonmaakvergoeding" 
       ','
          "Thuisblijfherstelaangevraagd" 
       ','
          "Thuisblijfherstelaantaldagdeel" 
       ','
          "Thuisblijfherstelhandtoegekend" 
       ','
          "Thuisblijfherstelrente" 
       ','
          "Thuisblijfhersteltoegekend" 
       ','
          "Thuisblijfherstelvergoeding" 
       ','
          "Thuisblijfopnameaangevraagd" 
       ','
          "Thuisblijfopnamehandtoegekend" 
       ','
          "Thuisblijfopnamerente" 
       ','
          "Thuisblijfopnametoegekend" 
       ','
          "Thuisblijfopnamevergoeding" 
       ','
          "Totaalrente" 
       ','
          "Totaaltoegekend" 
       ','
          "Verhuisaangevraagd" 
       ','
          "Verhuishandtoegekend" 
       ','
          "Verhuisrente" 
       ','
          "Verhuisrentedatum" 
       ','
          "Verhuistoegekend" 
       ','
          "Zorgaangevraagd" 
       ','
          "Zorghandtoegekend" 
       ','
          "Zorgrente" 
       ','
          "Zorgrentedatum" 
       ','
          "Zorgtoegekend" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DECLARATIE   end=EFIEOD; 
       format Adviesaangevraagd best12. ;
       format Adviesaantaluren best12. ;
       format Advieshandtoegekend best12. ;
       format Adviesrente best12. ;
       format Adviesrentedatum B8601DT19. ;
       format Adviestoegekend best12. ;
       format Besluit_cor_id best12. ;
       format Cor_id best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Datumberekening B8601DT19. ;
       format Dos_id best12. ;
       format Herstel  ;
       format Inboedeltuinaangevraagd best12. ;
       format Inboedeltuinhandtoegekend best12. ;
       format Inboedeltuinrente best12. ;
       format inboedeltuinrentedatum B8601DT19. ;
       format Inboedeltuintoegekend best12. ;
       format Inkomstendervingaangevraagd best12. ;
       format Inkomstendervinghandtoegekend best12. ;
       format Inkomstendervingrente best12. ;
       format Inkomstendervingrentedatum B8601DT19. ;
       format Inkomstendervingtoegekend best12. ;
       format Juridischaangevraagd best12. ;
       format Juridischaantaluren best12. ;
       format Juridischhandtoegekend best12. ;
       format Juridischrente best12. ;
       format Juridischrentedatum B8601DT19. ;
       format Juridischtarief best12. ;
       format Juridischtoegekend best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Notitie  ;
       format Oorzaak  ;
       format Opslagaangevraagd best12. ;
       format Opslagaantalweken best12. ;
       format Opslaghandtoegekend best12. ;
       format opslagrente best12. ;
       format Opslagrentedatum B8601DT19. ;
       format Opslagtoegekend best12. ;
       format Overlastaangevraagd best12. ;
       format Overlasthandtoegekend best12. ;
       format Overlastrente best12. ;
       format Overlasttoegekend best12. ;
       format Overlastvergoeding  ;
       format Overnachtenaangevraagd best12. ;
       format Overnachtenaantalnachten best12. ;
       format Overnachtenaantalpersonen  ;
       format Overnachtenhandtoegekend best12. ;
       format Overnachtenrente best12. ;
       format Overnachtenrentedatum B8601DT19. ;
       format Overnachtentoegekend best12. ;
       format Reisaangevraagd best12. ;
       format Reisaantalkm best12. ;
       format Reishandtoegekend best12. ;
       format Reisov best12. ;
       format Reisrente best12. ;
       format Reisrentedatum B8601DT19. ;
       format Reistoegekend best12. ;
       format Schoonmaakaangevraagd best12. ;
       format Schoonmaakhandtoegekend best12. ;
       format Schoonmaakrente best12. ;
       format Schoonmaaktoegekend best12. ;
       format Schoonmaakvergoeding  ;
       format Thuisblijfherstelaangevraagd best12. ;
       format Thuisblijfherstelaantaldagdeel best12. ;
       format Thuisblijfherstelhandtoegekend best12. ;
       format Thuisblijfherstelrente best12. ;
       format Thuisblijfhersteltoegekend best12. ;
       format Thuisblijfherstelvergoeding  ;
       format Thuisblijfopnameaangevraagd best12. ;
       format Thuisblijfopnamehandtoegekend best12. ;
       format Thuisblijfopnamerente best12. ;
       format Thuisblijfopnametoegekend best12. ;
       format Thuisblijfopnamevergoeding  ;
       format Totaalrente best12. ;
       format Totaaltoegekend best12. ;
       format Verhuisaangevraagd best12. ;
       format Verhuishandtoegekend best12. ;
       format Verhuisrente best12. ;
       format Verhuisrentedatum B8601DT19. ;
       format Verhuistoegekend best12. ;
       format Zorgaangevraagd best12. ;
       format Zorghandtoegekend best12. ;
       format Zorgrente best12. ;
       format Zorgrentedatum B8601DT19. ;
       format Zorgtoegekend best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Adviesaangevraagd)
         then put "," @;
         else do;
                 if find(Adviesaangevraagd,'0A'x) > 0 and 2+klength(Adviesaangevraagd) = klength(quote(trim(Adviesaangevraagd)))
                   then put '22'x Adviesaangevraagd +(-1) '22'x "," @;
                   else put Adviesaangevraagd @;
              end;
       if missing(Adviesaantaluren)
         then put "," @;
         else do;
                 if find(Adviesaantaluren,'0A'x) > 0 and 2+klength(Adviesaantaluren) = klength(quote(trim(Adviesaantaluren)))
                   then put '22'x Adviesaantaluren +(-1) '22'x "," @;
                   else put Adviesaantaluren @;
              end;
       if missing(Advieshandtoegekend)
         then put "," @;
         else do;
                 if find(Advieshandtoegekend,'0A'x) > 0 and 2+klength(Advieshandtoegekend) = klength(quote(trim(Advieshandtoegekend)))
                   then put '22'x Advieshandtoegekend +(-1) '22'x "," @;
                   else put Advieshandtoegekend @;
              end;
       if missing(Adviesrente)
         then put "," @;
         else do;
                 if find(Adviesrente,'0A'x) > 0 and 2+klength(Adviesrente) = klength(quote(trim(Adviesrente)))
                   then put '22'x Adviesrente +(-1) '22'x "," @;
                   else put Adviesrente @;
              end;
       if missing(Adviesrentedatum)
         then put "," @;
         else do;
                 if find(Adviesrentedatum,'0A'x) > 0 and 2+klength(Adviesrentedatum) = klength(quote(trim(Adviesrentedatum)))
                   then put '22'x Adviesrentedatum +(-1) '22'x "," @;
                   else put Adviesrentedatum @;
              end;
       if missing(Adviestoegekend)
         then put "," @;
         else do;
                 if find(Adviestoegekend,'0A'x) > 0 and 2+klength(Adviestoegekend) = klength(quote(trim(Adviestoegekend)))
                   then put '22'x Adviestoegekend +(-1) '22'x "," @;
                   else put Adviestoegekend @;
              end;
       if missing(Besluit_cor_id)
         then put "," @;
         else do;
                 if find(Besluit_cor_id,'0A'x) > 0 and 2+klength(Besluit_cor_id) = klength(quote(trim(Besluit_cor_id)))
                   then put '22'x Besluit_cor_id +(-1) '22'x "," @;
                   else put Besluit_cor_id @;
              end;
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Datumberekening)
         then put "," @;
         else do;
                 if find(Datumberekening,'0A'x) > 0 and 2+klength(Datumberekening) = klength(quote(trim(Datumberekening)))
                   then put '22'x Datumberekening +(-1) '22'x "," @;
                   else put Datumberekening @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Herstel)
         then put "," @;
         else do;
                 if find(Herstel,'0A'x) > 0 and 2+klength(Herstel) = klength(quote(trim(Herstel)))
                   then put '22'x Herstel +(-1) '22'x "," @;
                   else put Herstel @;
              end;
       if missing(Inboedeltuinaangevraagd)
         then put "," @;
         else do;
                 if find(Inboedeltuinaangevraagd,'0A'x) > 0 and 2+klength(Inboedeltuinaangevraagd) = klength(quote(trim(Inboedeltuinaangevraagd)))
                   then put '22'x Inboedeltuinaangevraagd +(-1) '22'x "," @;
                   else put Inboedeltuinaangevraagd @;
              end;
       if missing(Inboedeltuinhandtoegekend)
         then put "," @;
         else do;
                 if find(Inboedeltuinhandtoegekend,'0A'x) > 0 and 2+klength(Inboedeltuinhandtoegekend) = klength(quote(trim(Inboedeltuinhandtoegekend)))
                   then put '22'x Inboedeltuinhandtoegekend +(-1) '22'x "," @;
                   else put Inboedeltuinhandtoegekend @;
              end;
       if missing(Inboedeltuinrente)
         then put "," @;
         else do;
                 if find(Inboedeltuinrente,'0A'x) > 0 and 2+klength(Inboedeltuinrente) = klength(quote(trim(Inboedeltuinrente)))
                   then put '22'x Inboedeltuinrente +(-1) '22'x "," @;
                   else put Inboedeltuinrente @;
              end;
       if missing(inboedeltuinrentedatum)
         then put "," @;
         else do;
                 if find(inboedeltuinrentedatum,'0A'x) > 0 and 2+klength(inboedeltuinrentedatum) = klength(quote(trim(inboedeltuinrentedatum)))
                   then put '22'x inboedeltuinrentedatum +(-1) '22'x "," @;
                   else put inboedeltuinrentedatum @;
              end;
       if missing(Inboedeltuintoegekend)
         then put "," @;
         else do;
                 if find(Inboedeltuintoegekend,'0A'x) > 0 and 2+klength(Inboedeltuintoegekend) = klength(quote(trim(Inboedeltuintoegekend)))
                   then put '22'x Inboedeltuintoegekend +(-1) '22'x "," @;
                   else put Inboedeltuintoegekend @;
              end;
       if missing(Inkomstendervingaangevraagd)
         then put "," @;
         else do;
                 if find(Inkomstendervingaangevraagd,'0A'x) > 0 and 2+klength(Inkomstendervingaangevraagd) = klength(quote(trim(Inkomstendervingaangevraagd)))
                   then put '22'x Inkomstendervingaangevraagd +(-1) '22'x "," @;
                   else put Inkomstendervingaangevraagd @;
              end;
       if missing(Inkomstendervinghandtoegekend)
         then put "," @;
         else do;
                 if find(Inkomstendervinghandtoegekend,'0A'x) > 0 and 2+klength(Inkomstendervinghandtoegekend) = klength(quote(trim(Inkomstendervinghandtoegekend)))
                   then put '22'x Inkomstendervinghandtoegekend +(-1) '22'x "," @;
                   else put Inkomstendervinghandtoegekend @;
              end;
       if missing(Inkomstendervingrente)
         then put "," @;
         else do;
                 if find(Inkomstendervingrente,'0A'x) > 0 and 2+klength(Inkomstendervingrente) = klength(quote(trim(Inkomstendervingrente)))
                   then put '22'x Inkomstendervingrente +(-1) '22'x "," @;
                   else put Inkomstendervingrente @;
              end;
       if missing(Inkomstendervingrentedatum)
         then put "," @;
         else do;
                 if find(Inkomstendervingrentedatum,'0A'x) > 0 and 2+klength(Inkomstendervingrentedatum) = klength(quote(trim(Inkomstendervingrentedatum)))
                   then put '22'x Inkomstendervingrentedatum +(-1) '22'x "," @;
                   else put Inkomstendervingrentedatum @;
              end;
       if missing(Inkomstendervingtoegekend)
         then put "," @;
         else do;
                 if find(Inkomstendervingtoegekend,'0A'x) > 0 and 2+klength(Inkomstendervingtoegekend) = klength(quote(trim(Inkomstendervingtoegekend)))
                   then put '22'x Inkomstendervingtoegekend +(-1) '22'x "," @;
                   else put Inkomstendervingtoegekend @;
              end;
       if missing(Juridischaangevraagd)
         then put "," @;
         else do;
                 if find(Juridischaangevraagd,'0A'x) > 0 and 2+klength(Juridischaangevraagd) = klength(quote(trim(Juridischaangevraagd)))
                   then put '22'x Juridischaangevraagd +(-1) '22'x "," @;
                   else put Juridischaangevraagd @;
              end;
       if missing(Juridischaantaluren)
         then put "," @;
         else do;
                 if find(Juridischaantaluren,'0A'x) > 0 and 2+klength(Juridischaantaluren) = klength(quote(trim(Juridischaantaluren)))
                   then put '22'x Juridischaantaluren +(-1) '22'x "," @;
                   else put Juridischaantaluren @;
              end;
       if missing(Juridischhandtoegekend)
         then put "," @;
         else do;
                 if find(Juridischhandtoegekend,'0A'x) > 0 and 2+klength(Juridischhandtoegekend) = klength(quote(trim(Juridischhandtoegekend)))
                   then put '22'x Juridischhandtoegekend +(-1) '22'x "," @;
                   else put Juridischhandtoegekend @;
              end;
       if missing(Juridischrente)
         then put "," @;
         else do;
                 if find(Juridischrente,'0A'x) > 0 and 2+klength(Juridischrente) = klength(quote(trim(Juridischrente)))
                   then put '22'x Juridischrente +(-1) '22'x "," @;
                   else put Juridischrente @;
              end;
       if missing(Juridischrentedatum)
         then put "," @;
         else do;
                 if find(Juridischrentedatum,'0A'x) > 0 and 2+klength(Juridischrentedatum) = klength(quote(trim(Juridischrentedatum)))
                   then put '22'x Juridischrentedatum +(-1) '22'x "," @;
                   else put Juridischrentedatum @;
              end;
       if missing(Juridischtarief)
         then put "," @;
         else do;
                 if find(Juridischtarief,'0A'x) > 0 and 2+klength(Juridischtarief) = klength(quote(trim(Juridischtarief)))
                   then put '22'x Juridischtarief +(-1) '22'x "," @;
                   else put Juridischtarief @;
              end;
       if missing(Juridischtoegekend)
         then put "," @;
         else do;
                 if find(Juridischtoegekend,'0A'x) > 0 and 2+klength(Juridischtoegekend) = klength(quote(trim(Juridischtoegekend)))
                   then put '22'x Juridischtoegekend +(-1) '22'x "," @;
                   else put Juridischtoegekend @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       /* OPGELET: Notitie WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       if missing(Oorzaak)
         then put "," @;
         else do;
                 if find(Oorzaak,'0A'x) > 0 and 2+klength(Oorzaak) = klength(quote(trim(Oorzaak)))
                   then put '22'x Oorzaak +(-1) '22'x "," @;
                   else put Oorzaak @;
              end;
       if missing(Opslagaangevraagd)
         then put "," @;
         else do;
                 if find(Opslagaangevraagd,'0A'x) > 0 and 2+klength(Opslagaangevraagd) = klength(quote(trim(Opslagaangevraagd)))
                   then put '22'x Opslagaangevraagd +(-1) '22'x "," @;
                   else put Opslagaangevraagd @;
              end;
       if missing(Opslagaantalweken)
         then put "," @;
         else do;
                 if find(Opslagaantalweken,'0A'x) > 0 and 2+klength(Opslagaantalweken) = klength(quote(trim(Opslagaantalweken)))
                   then put '22'x Opslagaantalweken +(-1) '22'x "," @;
                   else put Opslagaantalweken @;
              end;
       if missing(Opslaghandtoegekend)
         then put "," @;
         else do;
                 if find(Opslaghandtoegekend,'0A'x) > 0 and 2+klength(Opslaghandtoegekend) = klength(quote(trim(Opslaghandtoegekend)))
                   then put '22'x Opslaghandtoegekend +(-1) '22'x "," @;
                   else put Opslaghandtoegekend @;
              end;
       if missing(opslagrente)
         then put "," @;
         else do;
                 if find(opslagrente,'0A'x) > 0 and 2+klength(opslagrente) = klength(quote(trim(opslagrente)))
                   then put '22'x opslagrente +(-1) '22'x "," @;
                   else put opslagrente @;
              end;
       if missing(Opslagrentedatum)
         then put "," @;
         else do;
                 if find(Opslagrentedatum,'0A'x) > 0 and 2+klength(Opslagrentedatum) = klength(quote(trim(Opslagrentedatum)))
                   then put '22'x Opslagrentedatum +(-1) '22'x "," @;
                   else put Opslagrentedatum @;
              end;
       if missing(Opslagtoegekend)
         then put "," @;
         else do;
                 if find(Opslagtoegekend,'0A'x) > 0 and 2+klength(Opslagtoegekend) = klength(quote(trim(Opslagtoegekend)))
                   then put '22'x Opslagtoegekend +(-1) '22'x "," @;
                   else put Opslagtoegekend @;
              end;
       if missing(Overlastaangevraagd)
         then put "," @;
         else do;
                 if find(Overlastaangevraagd,'0A'x) > 0 and 2+klength(Overlastaangevraagd) = klength(quote(trim(Overlastaangevraagd)))
                   then put '22'x Overlastaangevraagd +(-1) '22'x "," @;
                   else put Overlastaangevraagd @;
              end;
       if missing(Overlasthandtoegekend)
         then put "," @;
         else do;
                 if find(Overlasthandtoegekend,'0A'x) > 0 and 2+klength(Overlasthandtoegekend) = klength(quote(trim(Overlasthandtoegekend)))
                   then put '22'x Overlasthandtoegekend +(-1) '22'x "," @;
                   else put Overlasthandtoegekend @;
              end;
       if missing(Overlastrente)
         then put "," @;
         else do;
                 if find(Overlastrente,'0A'x) > 0 and 2+klength(Overlastrente) = klength(quote(trim(Overlastrente)))
                   then put '22'x Overlastrente +(-1) '22'x "," @;
                   else put Overlastrente @;
              end;
       if missing(Overlasttoegekend)
         then put "," @;
         else do;
                 if find(Overlasttoegekend,'0A'x) > 0 and 2+klength(Overlasttoegekend) = klength(quote(trim(Overlasttoegekend)))
                   then put '22'x Overlasttoegekend +(-1) '22'x "," @;
                   else put Overlasttoegekend @;
              end;
       if missing(Overlastvergoeding)
         then put "," @;
         else do;
                 if find(Overlastvergoeding,'0A'x) > 0 and 2+klength(Overlastvergoeding) = klength(quote(trim(Overlastvergoeding)))
                   then put '22'x Overlastvergoeding +(-1) '22'x "," @;
                   else put Overlastvergoeding @;
              end;
       if missing(Overnachtenaangevraagd)
         then put "," @;
         else do;
                 if find(Overnachtenaangevraagd,'0A'x) > 0 and 2+klength(Overnachtenaangevraagd) = klength(quote(trim(Overnachtenaangevraagd)))
                   then put '22'x Overnachtenaangevraagd +(-1) '22'x "," @;
                   else put Overnachtenaangevraagd @;
              end;
       if missing(Overnachtenaantalnachten)
         then put "," @;
         else do;
                 if find(Overnachtenaantalnachten,'0A'x) > 0 and 2+klength(Overnachtenaantalnachten) = klength(quote(trim(Overnachtenaantalnachten)))
                   then put '22'x Overnachtenaantalnachten +(-1) '22'x "," @;
                   else put Overnachtenaantalnachten @;
              end;
       if missing(Overnachtenaantalpersonen)
         then put "," @;
         else do;
                 if find(Overnachtenaantalpersonen,'0A'x) > 0 and 2+klength(Overnachtenaantalpersonen) = klength(quote(trim(Overnachtenaantalpersonen)))
                   then put '22'x Overnachtenaantalpersonen +(-1) '22'x "," @;
                   else put Overnachtenaantalpersonen @;
              end;
       if missing(Overnachtenhandtoegekend)
         then put "," @;
         else do;
                 if find(Overnachtenhandtoegekend,'0A'x) > 0 and 2+klength(Overnachtenhandtoegekend) = klength(quote(trim(Overnachtenhandtoegekend)))
                   then put '22'x Overnachtenhandtoegekend +(-1) '22'x "," @;
                   else put Overnachtenhandtoegekend @;
              end;
       if missing(Overnachtenrente)
         then put "," @;
         else do;
                 if find(Overnachtenrente,'0A'x) > 0 and 2+klength(Overnachtenrente) = klength(quote(trim(Overnachtenrente)))
                   then put '22'x Overnachtenrente +(-1) '22'x "," @;
                   else put Overnachtenrente @;
              end;
       if missing(Overnachtenrentedatum)
         then put "," @;
         else do;
                 if find(Overnachtenrentedatum,'0A'x) > 0 and 2+klength(Overnachtenrentedatum) = klength(quote(trim(Overnachtenrentedatum)))
                   then put '22'x Overnachtenrentedatum +(-1) '22'x "," @;
                   else put Overnachtenrentedatum @;
              end;
       if missing(Overnachtentoegekend)
         then put "," @;
         else do;
                 if find(Overnachtentoegekend,'0A'x) > 0 and 2+klength(Overnachtentoegekend) = klength(quote(trim(Overnachtentoegekend)))
                   then put '22'x Overnachtentoegekend +(-1) '22'x "," @;
                   else put Overnachtentoegekend @;
              end;
       if missing(Reisaangevraagd)
         then put "," @;
         else do;
                 if find(Reisaangevraagd,'0A'x) > 0 and 2+klength(Reisaangevraagd) = klength(quote(trim(Reisaangevraagd)))
                   then put '22'x Reisaangevraagd +(-1) '22'x "," @;
                   else put Reisaangevraagd @;
              end;
       if missing(Reisaantalkm)
         then put "," @;
         else do;
                 if find(Reisaantalkm,'0A'x) > 0 and 2+klength(Reisaantalkm) = klength(quote(trim(Reisaantalkm)))
                   then put '22'x Reisaantalkm +(-1) '22'x "," @;
                   else put Reisaantalkm @;
              end;
       if missing(Reishandtoegekend)
         then put "," @;
         else do;
                 if find(Reishandtoegekend,'0A'x) > 0 and 2+klength(Reishandtoegekend) = klength(quote(trim(Reishandtoegekend)))
                   then put '22'x Reishandtoegekend +(-1) '22'x "," @;
                   else put Reishandtoegekend @;
              end;
       if missing(Reisov)
         then put "," @;
         else do;
                 if find(Reisov,'0A'x) > 0 and 2+klength(Reisov) = klength(quote(trim(Reisov)))
                   then put '22'x Reisov +(-1) '22'x "," @;
                   else put Reisov @;
              end;
       if missing(Reisrente)
         then put "," @;
         else do;
                 if find(Reisrente,'0A'x) > 0 and 2+klength(Reisrente) = klength(quote(trim(Reisrente)))
                   then put '22'x Reisrente +(-1) '22'x "," @;
                   else put Reisrente @;
              end;
       if missing(Reisrentedatum)
         then put "," @;
         else do;
                 if find(Reisrentedatum,'0A'x) > 0 and 2+klength(Reisrentedatum) = klength(quote(trim(Reisrentedatum)))
                   then put '22'x Reisrentedatum +(-1) '22'x "," @;
                   else put Reisrentedatum @;
              end;
       if missing(Reistoegekend)
         then put "," @;
         else do;
                 if find(Reistoegekend,'0A'x) > 0 and 2+klength(Reistoegekend) = klength(quote(trim(Reistoegekend)))
                   then put '22'x Reistoegekend +(-1) '22'x "," @;
                   else put Reistoegekend @;
              end;
       if missing(Schoonmaakaangevraagd)
         then put "," @;
         else do;
                 if find(Schoonmaakaangevraagd,'0A'x) > 0 and 2+klength(Schoonmaakaangevraagd) = klength(quote(trim(Schoonmaakaangevraagd)))
                   then put '22'x Schoonmaakaangevraagd +(-1) '22'x "," @;
                   else put Schoonmaakaangevraagd @;
              end;
       if missing(Schoonmaakhandtoegekend)
         then put "," @;
         else do;
                 if find(Schoonmaakhandtoegekend,'0A'x) > 0 and 2+klength(Schoonmaakhandtoegekend) = klength(quote(trim(Schoonmaakhandtoegekend)))
                   then put '22'x Schoonmaakhandtoegekend +(-1) '22'x "," @;
                   else put Schoonmaakhandtoegekend @;
              end;
       if missing(Schoonmaakrente)
         then put "," @;
         else do;
                 if find(Schoonmaakrente,'0A'x) > 0 and 2+klength(Schoonmaakrente) = klength(quote(trim(Schoonmaakrente)))
                   then put '22'x Schoonmaakrente +(-1) '22'x "," @;
                   else put Schoonmaakrente @;
              end;
       if missing(Schoonmaaktoegekend)
         then put "," @;
         else do;
                 if find(Schoonmaaktoegekend,'0A'x) > 0 and 2+klength(Schoonmaaktoegekend) = klength(quote(trim(Schoonmaaktoegekend)))
                   then put '22'x Schoonmaaktoegekend +(-1) '22'x "," @;
                   else put Schoonmaaktoegekend @;
              end;
       if missing(Schoonmaakvergoeding)
         then put "," @;
         else do;
                 if find(Schoonmaakvergoeding,'0A'x) > 0 and 2+klength(Schoonmaakvergoeding) = klength(quote(trim(Schoonmaakvergoeding)))
                   then put '22'x Schoonmaakvergoeding +(-1) '22'x "," @;
                   else put Schoonmaakvergoeding @;
              end;
       if missing(Thuisblijfherstelaangevraagd)
         then put "," @;
         else do;
                 if find(Thuisblijfherstelaangevraagd,'0A'x) > 0 and 2+klength(Thuisblijfherstelaangevraagd) = klength(quote(trim(Thuisblijfherstelaangevraagd)))
                   then put '22'x Thuisblijfherstelaangevraagd +(-1) '22'x "," @;
                   else put Thuisblijfherstelaangevraagd @;
              end;
       if missing(Thuisblijfherstelaantaldagdeel)
         then put "," @;
         else do;
                 if find(Thuisblijfherstelaantaldagdeel,'0A'x) > 0 and 2+klength(Thuisblijfherstelaantaldagdeel) = klength(quote(trim(Thuisblijfherstelaantaldagdeel)))
                   then put '22'x Thuisblijfherstelaantaldagdeel +(-1) '22'x "," @;
                   else put Thuisblijfherstelaantaldagdeel @;
              end;
       if missing(Thuisblijfherstelhandtoegekend)
         then put "," @;
         else do;
                 if find(Thuisblijfherstelhandtoegekend,'0A'x) > 0 and 2+klength(Thuisblijfherstelhandtoegekend) = klength(quote(trim(Thuisblijfherstelhandtoegekend)))
                   then put '22'x Thuisblijfherstelhandtoegekend +(-1) '22'x "," @;
                   else put Thuisblijfherstelhandtoegekend @;
              end;
       if missing(Thuisblijfherstelrente)
         then put "," @;
         else do;
                 if find(Thuisblijfherstelrente,'0A'x) > 0 and 2+klength(Thuisblijfherstelrente) = klength(quote(trim(Thuisblijfherstelrente)))
                   then put '22'x Thuisblijfherstelrente +(-1) '22'x "," @;
                   else put Thuisblijfherstelrente @;
              end;
       if missing(Thuisblijfhersteltoegekend)
         then put "," @;
         else do;
                 if find(Thuisblijfhersteltoegekend,'0A'x) > 0 and 2+klength(Thuisblijfhersteltoegekend) = klength(quote(trim(Thuisblijfhersteltoegekend)))
                   then put '22'x Thuisblijfhersteltoegekend +(-1) '22'x "," @;
                   else put Thuisblijfhersteltoegekend @;
              end;
       if missing(Thuisblijfherstelvergoeding)
         then put "," @;
         else do;
                 if find(Thuisblijfherstelvergoeding,'0A'x) > 0 and 2+klength(Thuisblijfherstelvergoeding) = klength(quote(trim(Thuisblijfherstelvergoeding)))
                   then put '22'x Thuisblijfherstelvergoeding +(-1) '22'x "," @;
                   else put Thuisblijfherstelvergoeding @;
              end;
       if missing(Thuisblijfopnameaangevraagd)
         then put "," @;
         else do;
                 if find(Thuisblijfopnameaangevraagd,'0A'x) > 0 and 2+klength(Thuisblijfopnameaangevraagd) = klength(quote(trim(Thuisblijfopnameaangevraagd)))
                   then put '22'x Thuisblijfopnameaangevraagd +(-1) '22'x "," @;
                   else put Thuisblijfopnameaangevraagd @;
              end;
       if missing(Thuisblijfopnamehandtoegekend)
         then put "," @;
         else do;
                 if find(Thuisblijfopnamehandtoegekend,'0A'x) > 0 and 2+klength(Thuisblijfopnamehandtoegekend) = klength(quote(trim(Thuisblijfopnamehandtoegekend)))
                   then put '22'x Thuisblijfopnamehandtoegekend +(-1) '22'x "," @;
                   else put Thuisblijfopnamehandtoegekend @;
              end;
       if missing(Thuisblijfopnamerente)
         then put "," @;
         else do;
                 if find(Thuisblijfopnamerente,'0A'x) > 0 and 2+klength(Thuisblijfopnamerente) = klength(quote(trim(Thuisblijfopnamerente)))
                   then put '22'x Thuisblijfopnamerente +(-1) '22'x "," @;
                   else put Thuisblijfopnamerente @;
              end;
       if missing(Thuisblijfopnametoegekend)
         then put "," @;
         else do;
                 if find(Thuisblijfopnametoegekend,'0A'x) > 0 and 2+klength(Thuisblijfopnametoegekend) = klength(quote(trim(Thuisblijfopnametoegekend)))
                   then put '22'x Thuisblijfopnametoegekend +(-1) '22'x "," @;
                   else put Thuisblijfopnametoegekend @;
              end;
       if missing(Thuisblijfopnamevergoeding)
         then put "," @;
         else do;
                 if find(Thuisblijfopnamevergoeding,'0A'x) > 0 and 2+klength(Thuisblijfopnamevergoeding) = klength(quote(trim(Thuisblijfopnamevergoeding)))
                   then put '22'x Thuisblijfopnamevergoeding +(-1) '22'x "," @;
                   else put Thuisblijfopnamevergoeding @;
              end;
       if missing(Totaalrente)
         then put "," @;
         else do;
                 if find(Totaalrente,'0A'x) > 0 and 2+klength(Totaalrente) = klength(quote(trim(Totaalrente)))
                   then put '22'x Totaalrente +(-1) '22'x "," @;
                   else put Totaalrente @;
              end;
       if missing(Totaaltoegekend)
         then put "," @;
         else do;
                 if find(Totaaltoegekend,'0A'x) > 0 and 2+klength(Totaaltoegekend) = klength(quote(trim(Totaaltoegekend)))
                   then put '22'x Totaaltoegekend +(-1) '22'x "," @;
                   else put Totaaltoegekend @;
              end;
       if missing(Verhuisaangevraagd)
         then put "," @;
         else do;
                 if find(Verhuisaangevraagd,'0A'x) > 0 and 2+klength(Verhuisaangevraagd) = klength(quote(trim(Verhuisaangevraagd)))
                   then put '22'x Verhuisaangevraagd +(-1) '22'x "," @;
                   else put Verhuisaangevraagd @;
              end;
       if missing(Verhuishandtoegekend)
         then put "," @;
         else do;
                 if find(Verhuishandtoegekend,'0A'x) > 0 and 2+klength(Verhuishandtoegekend) = klength(quote(trim(Verhuishandtoegekend)))
                   then put '22'x Verhuishandtoegekend +(-1) '22'x "," @;
                   else put Verhuishandtoegekend @;
              end;
       if missing(Verhuisrente)
         then put "," @;
         else do;
                 if find(Verhuisrente,'0A'x) > 0 and 2+klength(Verhuisrente) = klength(quote(trim(Verhuisrente)))
                   then put '22'x Verhuisrente +(-1) '22'x "," @;
                   else put Verhuisrente @;
              end;
       if missing(Verhuisrentedatum)
         then put "," @;
         else do;
                 if find(Verhuisrentedatum,'0A'x) > 0 and 2+klength(Verhuisrentedatum) = klength(quote(trim(Verhuisrentedatum)))
                   then put '22'x Verhuisrentedatum +(-1) '22'x "," @;
                   else put Verhuisrentedatum @;
              end;
       if missing(Verhuistoegekend)
         then put "," @;
         else do;
                 if find(Verhuistoegekend,'0A'x) > 0 and 2+klength(Verhuistoegekend) = klength(quote(trim(Verhuistoegekend)))
                   then put '22'x Verhuistoegekend +(-1) '22'x "," @;
                   else put Verhuistoegekend @;
              end;
       if missing(Zorgaangevraagd)
         then put "," @;
         else do;
                 if find(Zorgaangevraagd,'0A'x) > 0 and 2+klength(Zorgaangevraagd) = klength(quote(trim(Zorgaangevraagd)))
                   then put '22'x Zorgaangevraagd +(-1) '22'x "," @;
                   else put Zorgaangevraagd @;
              end;
       if missing(Zorghandtoegekend)
         then put "," @;
         else do;
                 if find(Zorghandtoegekend,'0A'x) > 0 and 2+klength(Zorghandtoegekend) = klength(quote(trim(Zorghandtoegekend)))
                   then put '22'x Zorghandtoegekend +(-1) '22'x "," @;
                   else put Zorghandtoegekend @;
              end;
       if missing(Zorgrente)
         then put "," @;
         else do;
                 if find(Zorgrente,'0A'x) > 0 and 2+klength(Zorgrente) = klength(quote(trim(Zorgrente)))
                   then put '22'x Zorgrente +(-1) '22'x "," @;
                   else put Zorgrente @;
              end;
       if missing(Zorgrentedatum)
         then put "," @;
         else do;
                 if find(Zorgrentedatum,'0A'x) > 0 and 2+klength(Zorgrentedatum) = klength(quote(trim(Zorgrentedatum)))
                   then put '22'x Zorgrentedatum +(-1) '22'x "," @;
                   else put Zorgrentedatum @;
              end;
       if missing(Zorgtoegekend)
         then put "," @;
         else do;
                 if find(Zorgtoegekend,'0A'x) > 0 and 2+klength(Zorgtoegekend) = klength(quote(trim(Zorgtoegekend)))
                   then put '22'x Zorgtoegekend +(-1) '22'x "," @;
                   else put Zorgtoegekend @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DEELNAME_ADRES AS
   SELECT t1.Adressoort,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dda_id,
          t1.Dos_id,
          t1.Kkr_afwijkend,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rae_id,
          t1.Ras_id,
          t1.Rel_id,
          t1.Rol_cd,
          t1.Vst_volgnr
     FROM DATAQASG.DAM_DEELNAME_ADRES_TCMG t1;
QUIT;

data WORK.BAS_DAM_DEELNAME_ADRES;
  set WORK.BAS_DAM_DEELNAME_ADRES;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DEELNAME_ADRES.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Adressoort" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dda_id" 
       ','
          "Dos_id" 
       ','
          "Kkr_afwijkend" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rae_id" 
       ','
          "Ras_id" 
       ','
          "Rel_id" 
       ','
          "Rol_cd" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DEELNAME_ADRES   end=EFIEOD; 
       format Adressoort  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dda_id best12. ;
       format Dos_id best12. ;
       format Kkr_afwijkend  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rae_id best12. ;
       format Ras_id best12. ;
       format Rel_id best12. ;
       format Rol_cd  ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Adressoort)
         then put "," @;
         else do;
                 if find(Adressoort,'0A'x) > 0 and 2+klength(Adressoort) = klength(quote(trim(Adressoort)))
                   then put '22'x Adressoort +(-1) '22'x "," @;
                   else put Adressoort @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dda_id)
         then put "," @;
         else do;
                 if find(Dda_id,'0A'x) > 0 and 2+klength(Dda_id) = klength(quote(trim(Dda_id)))
                   then put '22'x Dda_id +(-1) '22'x "," @;
                   else put Dda_id @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Kkr_afwijkend)
         then put "," @;
         else do;
                 if find(Kkr_afwijkend,'0A'x) > 0 and 2+klength(Kkr_afwijkend) = klength(quote(trim(Kkr_afwijkend)))
                   then put '22'x Kkr_afwijkend +(-1) '22'x "," @;
                   else put Kkr_afwijkend @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rae_id)
         then put "," @;
         else do;
                 if find(Rae_id,'0A'x) > 0 and 2+klength(Rae_id) = klength(quote(trim(Rae_id)))
                   then put '22'x Rae_id +(-1) '22'x "," @;
                   else put Rae_id @;
              end;
       if missing(Ras_id)
         then put "," @;
         else do;
                 if find(Ras_id,'0A'x) > 0 and 2+klength(Ras_id) = klength(quote(trim(Ras_id)))
                   then put '22'x Ras_id +(-1) '22'x "," @;
                   else put Ras_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DEELNAME_COM_ADRES AS
   SELECT t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dda_id,
          t1.Dos_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rae_id,
          t1.Rca_id,
          t1.Rel_id,
          t1.Rol_cd,
          t1.Vst_volgnr
     FROM DATAQASG.DAM_DEELNAME_COM_ADRES_TCMG t1;
QUIT;

data WORK.BAS_DAM_DEELNAME_COM_ADRES;
  set WORK.BAS_DAM_DEELNAME_COM_ADRES;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DEELNAME_COM_ADRES.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dda_id" 
       ','
          "Dos_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rae_id" 
       ','
          "Rca_id" 
       ','
          "Rel_id" 
       ','
          "Rol_cd" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DEELNAME_COM_ADRES   end=EFIEOD; 
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dda_id best12. ;
       format Dos_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rae_id best12. ;
       format Rca_id best12. ;
       format Rel_id best12. ;
       format Rol_cd  ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dda_id)
         then put "," @;
         else do;
                 if find(Dda_id,'0A'x) > 0 and 2+klength(Dda_id) = klength(quote(trim(Dda_id)))
                   then put '22'x Dda_id +(-1) '22'x "," @;
                   else put Dda_id @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rae_id)
         then put "," @;
         else do;
                 if find(Rae_id,'0A'x) > 0 and 2+klength(Rae_id) = klength(quote(trim(Rae_id)))
                   then put '22'x Rae_id +(-1) '22'x "," @;
                   else put Rae_id @;
              end;
       if missing(Rca_id)
         then put "," @;
         else do;
                 if find(Rca_id,'0A'x) > 0 and 2+klength(Rca_id) = klength(quote(trim(Rca_id)))
                   then put '22'x Rca_id +(-1) '22'x "," @;
                   else put Rca_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DEELNAME AS
   SELECT t1.Afwijking_cd,
          t1.Bic,
          t1.Bic_cd,
          t1.Contract_cd,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dam_project_deelname,
          t1.Deelnamenaam,
          t1.Dos_id,
          t1.Ed_deelnemer_id,
          t1.Edeelnemer_id,
          t1.Einddatum FORMAT=B8601DT19. AS Einddatum,
          t1.Elektronisch_corresponderen_JN,
          t1.Fisc_eenheid,
          t1.Geclaimd,
          t1.Geclaimd_NLG,
          t1.Gedeclareerd,
          t1.Gedeclareerd_NLG,
          t1.Gerealiseerd,
          t1.Gerealiseerd_NLG,
          t1.Geschoond,
          t1.Geschoond_NLG,
          t1.IBAN,
          t1.Ingediend,
          t1.Ingediend_NLG,
          t1.Kkr_statutair,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Niet_sepa_betalen,
          t1.Org_id,
          t1.Org_naam,
          t1.Pom_ranking,
          t1.Rel_id,
          t1.Rel_id_rekening,
          t1.Rol_cd,
          t1.Startdatum FORMAT=B8601DT19. AS Startdatum,
          t1.Totaal_decl_deelname,
          t1.Totaal_uitb_deelname,
          t1.Verklaring_gewenst_JN,
          t1.Vst_volgnr
     FROM DATAQASG.DAM_DEELNAME_TCMG t1;
QUIT;

data WORK.BAS_DAM_DEELNAME;
  set WORK.BAS_DAM_DEELNAME;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DEELNAME.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Afwijking_cd" 
       ','
          "Bic" 
       ','
          "Bic_cd" 
       ','
          "Contract_cd" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dam_project_deelname" 
       ','
          "Deelnamenaam" 
       ','
          "Dos_id" 
       ','
          "Ed_deelnemer_id" 
       ','
          "Edeelnemer_id" 
       ','
          "Einddatum" 
       ','
          "Elektronisch_corresponderen_JN" 
       ','
          "Fisc_eenheid" 
       ','
          "Geclaimd" 
       ','
          "Geclaimd_NLG" 
       ','
          "Gedeclareerd" 
       ','
          "Gedeclareerd_NLG" 
       ','
          "Gerealiseerd" 
       ','
          "Gerealiseerd_NLG" 
       ','
          "Geschoond" 
       ','
          "Geschoond_NLG" 
       ','
          "IBAN" 
       ','
          "Ingediend" 
       ','
          "Ingediend_NLG" 
       ','
          "Kkr_statutair" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Niet_sepa_betalen" 
       ','
          "Org_id" 
       ','
          "Org_naam" 
       ','
          "Pom_ranking" 
       ','
          "Rel_id" 
       ','
          "Rel_id_rekening" 
       ','
          "Rol_cd" 
       ','
          "Startdatum" 
       ','
          "Totaal_decl_deelname" 
       ','
          "Totaal_uitb_deelname" 
       ','
          "Verklaring_gewenst_JN" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DEELNAME   end=EFIEOD; 
       format Afwijking_cd  ;
       format Bic  ;
       format Bic_cd  ;
       format Contract_cd  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dam_project_deelname  ;
       format Deelnamenaam  ;
       format Dos_id best12. ;
       format Ed_deelnemer_id best12. ;
       format Edeelnemer_id best12. ;
       format Einddatum B8601DT19. ;
       format Elektronisch_corresponderen_JN  ;
       format Fisc_eenheid  ;
       format Geclaimd best12. ;
       format Geclaimd_NLG best12. ;
       format Gedeclareerd best12. ;
       format Gedeclareerd_NLG best12. ;
       format Gerealiseerd best12. ;
       format Gerealiseerd_NLG best12. ;
       format Geschoond best12. ;
       format Geschoond_NLG best12. ;
       format IBAN  ;
       format Ingediend best12. ;
       format Ingediend_NLG best12. ;
       format Kkr_statutair  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Niet_sepa_betalen  ;
       format Org_id best12. ;
       format Org_naam  ;
       format Pom_ranking  ;
       format Rel_id best12. ;
       format Rel_id_rekening best12. ;
       format Rol_cd  ;
       format Startdatum B8601DT19. ;
       format Totaal_decl_deelname best12. ;
       format Totaal_uitb_deelname best12. ;
       format Verklaring_gewenst_JN  ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Afwijking_cd)
         then put "," @;
         else do;
                 if find(Afwijking_cd,'0A'x) > 0 and 2+klength(Afwijking_cd) = klength(quote(trim(Afwijking_cd)))
                   then put '22'x Afwijking_cd +(-1) '22'x "," @;
                   else put Afwijking_cd @;
              end;
       if missing(Bic)
         then put "," @;
         else do;
                 if find(Bic,'0A'x) > 0 and 2+klength(Bic) = klength(quote(trim(Bic)))
                   then put '22'x Bic +(-1) '22'x "," @;
                   else put Bic @;
              end;
       if missing(Bic_cd)
         then put "," @;
         else do;
                 if find(Bic_cd,'0A'x) > 0 and 2+klength(Bic_cd) = klength(quote(trim(Bic_cd)))
                   then put '22'x Bic_cd +(-1) '22'x "," @;
                   else put Bic_cd @;
              end;
       if missing(Contract_cd)
         then put "," @;
         else do;
                 if find(Contract_cd,'0A'x) > 0 and 2+klength(Contract_cd) = klength(quote(trim(Contract_cd)))
                   then put '22'x Contract_cd +(-1) '22'x "," @;
                   else put Contract_cd @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dam_project_deelname)
         then put "," @;
         else do;
                 if find(Dam_project_deelname,'0A'x) > 0 and 2+klength(Dam_project_deelname) = klength(quote(trim(Dam_project_deelname)))
                   then put '22'x Dam_project_deelname +(-1) '22'x "," @;
                   else put Dam_project_deelname @;
              end;
       if missing(Deelnamenaam)
         then put "," @;
         else do;
                 if find(Deelnamenaam,'0A'x) > 0 and 2+klength(Deelnamenaam) = klength(quote(trim(Deelnamenaam)))
                   then put '22'x Deelnamenaam +(-1) '22'x "," @;
                   else put Deelnamenaam @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Ed_deelnemer_id)
         then put "," @;
         else do;
                 if find(Ed_deelnemer_id,'0A'x) > 0 and 2+klength(Ed_deelnemer_id) = klength(quote(trim(Ed_deelnemer_id)))
                   then put '22'x Ed_deelnemer_id +(-1) '22'x "," @;
                   else put Ed_deelnemer_id @;
              end;
       if missing(Edeelnemer_id)
         then put "," @;
         else do;
                 if find(Edeelnemer_id,'0A'x) > 0 and 2+klength(Edeelnemer_id) = klength(quote(trim(Edeelnemer_id)))
                   then put '22'x Edeelnemer_id +(-1) '22'x "," @;
                   else put Edeelnemer_id @;
              end;
       if missing(Einddatum)
         then put "," @;
         else do;
                 if find(Einddatum,'0A'x) > 0 and 2+klength(Einddatum) = klength(quote(trim(Einddatum)))
                   then put '22'x Einddatum +(-1) '22'x "," @;
                   else put Einddatum @;
              end;
       if missing(Elektronisch_corresponderen_JN)
         then put "," @;
         else do;
                 if find(Elektronisch_corresponderen_JN,'0A'x) > 0 and 2+klength(Elektronisch_corresponderen_JN) = klength(quote(trim(Elektronisch_corresponderen_JN)))
                   then put '22'x Elektronisch_corresponderen_JN +(-1) '22'x "," @;
                   else put Elektronisch_corresponderen_JN @;
              end;
       if missing(Fisc_eenheid)
         then put "," @;
         else do;
                 if find(Fisc_eenheid,'0A'x) > 0 and 2+klength(Fisc_eenheid) = klength(quote(trim(Fisc_eenheid)))
                   then put '22'x Fisc_eenheid +(-1) '22'x "," @;
                   else put Fisc_eenheid @;
              end;
       if missing(Geclaimd)
         then put "," @;
         else do;
                 if find(Geclaimd,'0A'x) > 0 and 2+klength(Geclaimd) = klength(quote(trim(Geclaimd)))
                   then put '22'x Geclaimd +(-1) '22'x "," @;
                   else put Geclaimd @;
              end;
       if missing(Geclaimd_NLG)
         then put "," @;
         else do;
                 if find(Geclaimd_NLG,'0A'x) > 0 and 2+klength(Geclaimd_NLG) = klength(quote(trim(Geclaimd_NLG)))
                   then put '22'x Geclaimd_NLG +(-1) '22'x "," @;
                   else put Geclaimd_NLG @;
              end;
       if missing(Gedeclareerd)
         then put "," @;
         else do;
                 if find(Gedeclareerd,'0A'x) > 0 and 2+klength(Gedeclareerd) = klength(quote(trim(Gedeclareerd)))
                   then put '22'x Gedeclareerd +(-1) '22'x "," @;
                   else put Gedeclareerd @;
              end;
       if missing(Gedeclareerd_NLG)
         then put "," @;
         else do;
                 if find(Gedeclareerd_NLG,'0A'x) > 0 and 2+klength(Gedeclareerd_NLG) = klength(quote(trim(Gedeclareerd_NLG)))
                   then put '22'x Gedeclareerd_NLG +(-1) '22'x "," @;
                   else put Gedeclareerd_NLG @;
              end;
       if missing(Gerealiseerd)
         then put "," @;
         else do;
                 if find(Gerealiseerd,'0A'x) > 0 and 2+klength(Gerealiseerd) = klength(quote(trim(Gerealiseerd)))
                   then put '22'x Gerealiseerd +(-1) '22'x "," @;
                   else put Gerealiseerd @;
              end;
       if missing(Gerealiseerd_NLG)
         then put "," @;
         else do;
                 if find(Gerealiseerd_NLG,'0A'x) > 0 and 2+klength(Gerealiseerd_NLG) = klength(quote(trim(Gerealiseerd_NLG)))
                   then put '22'x Gerealiseerd_NLG +(-1) '22'x "," @;
                   else put Gerealiseerd_NLG @;
              end;
       if missing(Geschoond)
         then put "," @;
         else do;
                 if find(Geschoond,'0A'x) > 0 and 2+klength(Geschoond) = klength(quote(trim(Geschoond)))
                   then put '22'x Geschoond +(-1) '22'x "," @;
                   else put Geschoond @;
              end;
       if missing(Geschoond_NLG)
         then put "," @;
         else do;
                 if find(Geschoond_NLG,'0A'x) > 0 and 2+klength(Geschoond_NLG) = klength(quote(trim(Geschoond_NLG)))
                   then put '22'x Geschoond_NLG +(-1) '22'x "," @;
                   else put Geschoond_NLG @;
              end;
       if missing(IBAN)
         then put "," @;
         else do;
                 if find(IBAN,'0A'x) > 0 and 2+klength(IBAN) = klength(quote(trim(IBAN)))
                   then put '22'x IBAN +(-1) '22'x "," @;
                   else put IBAN @;
              end;
       if missing(Ingediend)
         then put "," @;
         else do;
                 if find(Ingediend,'0A'x) > 0 and 2+klength(Ingediend) = klength(quote(trim(Ingediend)))
                   then put '22'x Ingediend +(-1) '22'x "," @;
                   else put Ingediend @;
              end;
       if missing(Ingediend_NLG)
         then put "," @;
         else do;
                 if find(Ingediend_NLG,'0A'x) > 0 and 2+klength(Ingediend_NLG) = klength(quote(trim(Ingediend_NLG)))
                   then put '22'x Ingediend_NLG +(-1) '22'x "," @;
                   else put Ingediend_NLG @;
              end;
       if missing(Kkr_statutair)
         then put "," @;
         else do;
                 if find(Kkr_statutair,'0A'x) > 0 and 2+klength(Kkr_statutair) = klength(quote(trim(Kkr_statutair)))
                   then put '22'x Kkr_statutair +(-1) '22'x "," @;
                   else put Kkr_statutair @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Niet_sepa_betalen)
         then put "," @;
         else do;
                 if find(Niet_sepa_betalen,'0A'x) > 0 and 2+klength(Niet_sepa_betalen) = klength(quote(trim(Niet_sepa_betalen)))
                   then put '22'x Niet_sepa_betalen +(-1) '22'x "," @;
                   else put Niet_sepa_betalen @;
              end;
       if missing(Org_id)
         then put "," @;
         else do;
                 if find(Org_id,'0A'x) > 0 and 2+klength(Org_id) = klength(quote(trim(Org_id)))
                   then put '22'x Org_id +(-1) '22'x "," @;
                   else put Org_id @;
              end;
       if missing(Org_naam)
         then put "," @;
         else do;
                 if find(Org_naam,'0A'x) > 0 and 2+klength(Org_naam) = klength(quote(trim(Org_naam)))
                   then put '22'x Org_naam +(-1) '22'x "," @;
                   else put Org_naam @;
              end;
       if missing(Pom_ranking)
         then put "," @;
         else do;
                 if find(Pom_ranking,'0A'x) > 0 and 2+klength(Pom_ranking) = klength(quote(trim(Pom_ranking)))
                   then put '22'x Pom_ranking +(-1) '22'x "," @;
                   else put Pom_ranking @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Rel_id_rekening)
         then put "," @;
         else do;
                 if find(Rel_id_rekening,'0A'x) > 0 and 2+klength(Rel_id_rekening) = klength(quote(trim(Rel_id_rekening)))
                   then put '22'x Rel_id_rekening +(-1) '22'x "," @;
                   else put Rel_id_rekening @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Startdatum)
         then put "," @;
         else do;
                 if find(Startdatum,'0A'x) > 0 and 2+klength(Startdatum) = klength(quote(trim(Startdatum)))
                   then put '22'x Startdatum +(-1) '22'x "," @;
                   else put Startdatum @;
              end;
       if missing(Totaal_decl_deelname)
         then put "," @;
         else do;
                 if find(Totaal_decl_deelname,'0A'x) > 0 and 2+klength(Totaal_decl_deelname) = klength(quote(trim(Totaal_decl_deelname)))
                   then put '22'x Totaal_decl_deelname +(-1) '22'x "," @;
                   else put Totaal_decl_deelname @;
              end;
       if missing(Totaal_uitb_deelname)
         then put "," @;
         else do;
                 if find(Totaal_uitb_deelname,'0A'x) > 0 and 2+klength(Totaal_uitb_deelname) = klength(quote(trim(Totaal_uitb_deelname)))
                   then put '22'x Totaal_uitb_deelname +(-1) '22'x "," @;
                   else put Totaal_uitb_deelname @;
              end;
       if missing(Verklaring_gewenst_JN)
         then put "," @;
         else do;
                 if find(Verklaring_gewenst_JN,'0A'x) > 0 and 2+klength(Verklaring_gewenst_JN) = klength(quote(trim(Verklaring_gewenst_JN)))
                   then put '22'x Verklaring_gewenst_JN +(-1) '22'x "," @;
                   else put Verklaring_gewenst_JN @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DOS_BUDGETREGEL AS
   SELECT t1.Dos_id,
          t1.Tra_id,
          t1.Volgnummer,
          t1.Ovk_nr,
          t1.Rpt_nr,
          t1.Bgt_cd,
          t1.Verleend,
          t1.Ingetrokken,
          t1.Gedeclareerd,
          t1.Betaald,
          t1.Vastgesteld,
          t1.Openstaand,
          t1.Opeisbaar,
          t1.Def_verleend,
          t1.Def_ingetrokken,
          t1.Def_gedeclareerd,
          t1.Def_openstaand,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rpe_datum_van FORMAT=B8601DT19. AS Rpe_datum_van,
          t1.Neg_einddeclaratie,
          t1.Prg_id,
          t1.Reg_id,
          t1.Reg_nr,
          t1.Afl_neg_einddeclaratie,
          t1.Def_neg_einddeclaratie,
          t1.Cvk_id,
          t1.Vpl_volgnummer,
          t1.Rpt_nr_oud,
          t1.Per_Deelnemer
     FROM DATAQASG.DAM_DOS_BUDGETREGEL_TCMG t1;
QUIT;

data WORK.BAS_DAM_DOS_BUDGETREGEL;
  set WORK.BAS_DAM_DOS_BUDGETREGEL;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOS_BUDGETREGEL.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Dos_id" 
       ','
          "Tra_id" 
       ','
          "Volgnummer" 
       ','
          "Ovk_nr" 
       ','
          "Rpt_nr" 
       ','
          "Bgt_cd" 
       ','
          "Verleend" 
       ','
          "Ingetrokken" 
       ','
          "Gedeclareerd" 
       ','
          "Betaald" 
       ','
          "Vastgesteld" 
       ','
          "Openstaand" 
       ','
          "Opeisbaar" 
       ','
          "Def_verleend" 
       ','
          "Def_ingetrokken" 
       ','
          "Def_gedeclareerd" 
       ','
          "Def_openstaand" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rpe_datum_van" 
       ','
          "Neg_einddeclaratie" 
       ','
          "Prg_id" 
       ','
          "Reg_id" 
       ','
          "Reg_nr" 
       ','
          "Afl_neg_einddeclaratie" 
       ','
          "Def_neg_einddeclaratie" 
       ','
          "Cvk_id" 
       ','
          "Vpl_volgnummer" 
       ','
          "Rpt_nr_oud" 
       ','
          "Per_Deelnemer" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DOS_BUDGETREGEL   end=EFIEOD; 
       format Dos_id best12. ;
       format Tra_id best12. ;
       format Volgnummer best12. ;
       format Ovk_nr  ;
       format Rpt_nr best12. ;
       format Bgt_cd  ;
       format Verleend best12. ;
       format Ingetrokken best12. ;
       format Gedeclareerd best12. ;
       format Betaald best12. ;
       format Vastgesteld best12. ;
       format Openstaand best12. ;
       format Opeisbaar best12. ;
       format Def_verleend best12. ;
       format Def_ingetrokken best12. ;
       format Def_gedeclareerd best12. ;
       format Def_openstaand best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rpe_datum_van B8601DT19. ;
       format Neg_einddeclaratie best12. ;
       format Prg_id best12. ;
       format Reg_id best12. ;
       format Reg_nr best12. ;
       format Afl_neg_einddeclaratie best12. ;
       format Def_neg_einddeclaratie best12. ;
       format Cvk_id best12. ;
       format Vpl_volgnummer best12. ;
       format Rpt_nr_oud  ;
       format Per_Deelnemer  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Tra_id)
         then put "," @;
         else do;
                 if find(Tra_id,'0A'x) > 0 and 2+klength(Tra_id) = klength(quote(trim(Tra_id)))
                   then put '22'x Tra_id +(-1) '22'x "," @;
                   else put Tra_id @;
              end;
       if missing(Volgnummer)
         then put "," @;
         else do;
                 if find(Volgnummer,'0A'x) > 0 and 2+klength(Volgnummer) = klength(quote(trim(Volgnummer)))
                   then put '22'x Volgnummer +(-1) '22'x "," @;
                   else put Volgnummer @;
              end;
       if missing(Ovk_nr)
         then put "," @;
         else do;
                 if find(Ovk_nr,'0A'x) > 0 and 2+klength(Ovk_nr) = klength(quote(trim(Ovk_nr)))
                   then put '22'x Ovk_nr +(-1) '22'x "," @;
                   else put Ovk_nr @;
              end;
       if missing(Rpt_nr)
         then put "," @;
         else do;
                 if find(Rpt_nr,'0A'x) > 0 and 2+klength(Rpt_nr) = klength(quote(trim(Rpt_nr)))
                   then put '22'x Rpt_nr +(-1) '22'x "," @;
                   else put Rpt_nr @;
              end;
       if missing(Bgt_cd)
         then put "," @;
         else do;
                 if find(Bgt_cd,'0A'x) > 0 and 2+klength(Bgt_cd) = klength(quote(trim(Bgt_cd)))
                   then put '22'x Bgt_cd +(-1) '22'x "," @;
                   else put Bgt_cd @;
              end;
       if missing(Verleend)
         then put "," @;
         else do;
                 if find(Verleend,'0A'x) > 0 and 2+klength(Verleend) = klength(quote(trim(Verleend)))
                   then put '22'x Verleend +(-1) '22'x "," @;
                   else put Verleend @;
              end;
       if missing(Ingetrokken)
         then put "," @;
         else do;
                 if find(Ingetrokken,'0A'x) > 0 and 2+klength(Ingetrokken) = klength(quote(trim(Ingetrokken)))
                   then put '22'x Ingetrokken +(-1) '22'x "," @;
                   else put Ingetrokken @;
              end;
       if missing(Gedeclareerd)
         then put "," @;
         else do;
                 if find(Gedeclareerd,'0A'x) > 0 and 2+klength(Gedeclareerd) = klength(quote(trim(Gedeclareerd)))
                   then put '22'x Gedeclareerd +(-1) '22'x "," @;
                   else put Gedeclareerd @;
              end;
       if missing(Betaald)
         then put "," @;
         else do;
                 if find(Betaald,'0A'x) > 0 and 2+klength(Betaald) = klength(quote(trim(Betaald)))
                   then put '22'x Betaald +(-1) '22'x "," @;
                   else put Betaald @;
              end;
       if missing(Vastgesteld)
         then put "," @;
         else do;
                 if find(Vastgesteld,'0A'x) > 0 and 2+klength(Vastgesteld) = klength(quote(trim(Vastgesteld)))
                   then put '22'x Vastgesteld +(-1) '22'x "," @;
                   else put Vastgesteld @;
              end;
       if missing(Openstaand)
         then put "," @;
         else do;
                 if find(Openstaand,'0A'x) > 0 and 2+klength(Openstaand) = klength(quote(trim(Openstaand)))
                   then put '22'x Openstaand +(-1) '22'x "," @;
                   else put Openstaand @;
              end;
       if missing(Opeisbaar)
         then put "," @;
         else do;
                 if find(Opeisbaar,'0A'x) > 0 and 2+klength(Opeisbaar) = klength(quote(trim(Opeisbaar)))
                   then put '22'x Opeisbaar +(-1) '22'x "," @;
                   else put Opeisbaar @;
              end;
       if missing(Def_verleend)
         then put "," @;
         else do;
                 if find(Def_verleend,'0A'x) > 0 and 2+klength(Def_verleend) = klength(quote(trim(Def_verleend)))
                   then put '22'x Def_verleend +(-1) '22'x "," @;
                   else put Def_verleend @;
              end;
       if missing(Def_ingetrokken)
         then put "," @;
         else do;
                 if find(Def_ingetrokken,'0A'x) > 0 and 2+klength(Def_ingetrokken) = klength(quote(trim(Def_ingetrokken)))
                   then put '22'x Def_ingetrokken +(-1) '22'x "," @;
                   else put Def_ingetrokken @;
              end;
       if missing(Def_gedeclareerd)
         then put "," @;
         else do;
                 if find(Def_gedeclareerd,'0A'x) > 0 and 2+klength(Def_gedeclareerd) = klength(quote(trim(Def_gedeclareerd)))
                   then put '22'x Def_gedeclareerd +(-1) '22'x "," @;
                   else put Def_gedeclareerd @;
              end;
       if missing(Def_openstaand)
         then put "," @;
         else do;
                 if find(Def_openstaand,'0A'x) > 0 and 2+klength(Def_openstaand) = klength(quote(trim(Def_openstaand)))
                   then put '22'x Def_openstaand +(-1) '22'x "," @;
                   else put Def_openstaand @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rpe_datum_van)
         then put "," @;
         else do;
                 if find(Rpe_datum_van,'0A'x) > 0 and 2+klength(Rpe_datum_van) = klength(quote(trim(Rpe_datum_van)))
                   then put '22'x Rpe_datum_van +(-1) '22'x "," @;
                   else put Rpe_datum_van @;
              end;
       if missing(Neg_einddeclaratie)
         then put "," @;
         else do;
                 if find(Neg_einddeclaratie,'0A'x) > 0 and 2+klength(Neg_einddeclaratie) = klength(quote(trim(Neg_einddeclaratie)))
                   then put '22'x Neg_einddeclaratie +(-1) '22'x "," @;
                   else put Neg_einddeclaratie @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Reg_nr)
         then put "," @;
         else do;
                 if find(Reg_nr,'0A'x) > 0 and 2+klength(Reg_nr) = klength(quote(trim(Reg_nr)))
                   then put '22'x Reg_nr +(-1) '22'x "," @;
                   else put Reg_nr @;
              end;
       if missing(Afl_neg_einddeclaratie)
         then put "," @;
         else do;
                 if find(Afl_neg_einddeclaratie,'0A'x) > 0 and 2+klength(Afl_neg_einddeclaratie) = klength(quote(trim(Afl_neg_einddeclaratie)))
                   then put '22'x Afl_neg_einddeclaratie +(-1) '22'x "," @;
                   else put Afl_neg_einddeclaratie @;
              end;
       if missing(Def_neg_einddeclaratie)
         then put "," @;
         else do;
                 if find(Def_neg_einddeclaratie,'0A'x) > 0 and 2+klength(Def_neg_einddeclaratie) = klength(quote(trim(Def_neg_einddeclaratie)))
                   then put '22'x Def_neg_einddeclaratie +(-1) '22'x "," @;
                   else put Def_neg_einddeclaratie @;
              end;
       if missing(Cvk_id)
         then put "," @;
         else do;
                 if find(Cvk_id,'0A'x) > 0 and 2+klength(Cvk_id) = klength(quote(trim(Cvk_id)))
                   then put '22'x Cvk_id +(-1) '22'x "," @;
                   else put Cvk_id @;
              end;
       if missing(Vpl_volgnummer)
         then put "," @;
         else do;
                 if find(Vpl_volgnummer,'0A'x) > 0 and 2+klength(Vpl_volgnummer) = klength(quote(trim(Vpl_volgnummer)))
                   then put '22'x Vpl_volgnummer +(-1) '22'x "," @;
                   else put Vpl_volgnummer @;
              end;
       if missing(Rpt_nr_oud)
         then put "," @;
         else do;
                 if find(Rpt_nr_oud,'0A'x) > 0 and 2+klength(Rpt_nr_oud) = klength(quote(trim(Rpt_nr_oud)))
                   then put '22'x Rpt_nr_oud +(-1) '22'x "," @;
                   else put Rpt_nr_oud @;
              end;
       if missing(Per_Deelnemer)
         then put "," @;
         else do;
                 if find(Per_Deelnemer,'0A'x) > 0 and 2+klength(Per_Deelnemer) = klength(quote(trim(Per_Deelnemer)))
                   then put '22'x Per_Deelnemer +(-1) '22'x "," @;
                   else put Per_Deelnemer @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DOSSIER_IN_GROEP AS
   SELECT t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Ddg_id,
          t1.Dds_id,
          t1.Dos_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.DAM_DOSSIER_IN_GROEP_TCMG t1;
QUIT;

data WORK.BAS_DAM_DOSSIER_IN_GROEP;
  set WORK.BAS_DAM_DOSSIER_IN_GROEP;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIER_IN_GROEP.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Ddg_id" 
       ','
          "Dds_id" 
       ','
          "Dos_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DOSSIER_IN_GROEP   end=EFIEOD; 
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Ddg_id best12. ;
       format Dds_id best12. ;
       format Dos_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Ddg_id)
         then put "," @;
         else do;
                 if find(Ddg_id,'0A'x) > 0 and 2+klength(Ddg_id) = klength(quote(trim(Ddg_id)))
                   then put '22'x Ddg_id +(-1) '22'x "," @;
                   else put Ddg_id @;
              end;
       if missing(Dds_id)
         then put "," @;
         else do;
                 if find(Dds_id,'0A'x) > 0 and 2+klength(Dds_id) = klength(quote(trim(Dds_id)))
                   then put '22'x Dds_id +(-1) '22'x "," @;
                   else put Dds_id @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DOSSIER_NOTITIE AS
   SELECT t1.Afgehandeld,
          t1.Bezoeknr,
          t1.Cor_id_no,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dos_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Notitie,
          t1.Notitietype_naam,
          t1.Rel_id
     FROM DATAQASG.DAM_DOSSIER_NOTITIE_TCMG t1;
QUIT;

data WORK.BAS_DAM_DOSSIER_NOTITIE;
  set WORK.BAS_DAM_DOSSIER_NOTITIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIER_NOTITIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Afgehandeld" 
       ','
          "Bezoeknr" 
       ','
          "Cor_id_no" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dos_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Notitie" 
       ','
          "Notitietype_naam" 
       ','
          "Rel_id" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DOSSIER_NOTITIE   end=EFIEOD; 
       format Afgehandeld  ;
       format Bezoeknr best12. ;
       format Cor_id_no best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dos_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Notitie  ;
       format Notitietype_naam  ;
       format Rel_id best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Afgehandeld)
         then put "," @;
         else do;
                 if find(Afgehandeld,'0A'x) > 0 and 2+klength(Afgehandeld) = klength(quote(trim(Afgehandeld)))
                   then put '22'x Afgehandeld +(-1) '22'x "," @;
                   else put Afgehandeld @;
              end;
       if missing(Bezoeknr)
         then put "," @;
         else do;
                 if find(Bezoeknr,'0A'x) > 0 and 2+klength(Bezoeknr) = klength(quote(trim(Bezoeknr)))
                   then put '22'x Bezoeknr +(-1) '22'x "," @;
                   else put Bezoeknr @;
              end;
       if missing(Cor_id_no)
         then put "," @;
         else do;
                 if find(Cor_id_no,'0A'x) > 0 and 2+klength(Cor_id_no) = klength(quote(trim(Cor_id_no)))
                   then put '22'x Cor_id_no +(-1) '22'x "," @;
                   else put Cor_id_no @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       /* OPGELET: Notitie WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       if missing(Notitietype_naam)
         then put "," @;
         else do;
                 if find(Notitietype_naam,'0A'x) > 0 and 2+klength(Notitietype_naam) = klength(quote(trim(Notitietype_naam)))
                   then put '22'x Notitietype_naam +(-1) '22'x "," @;
                   else put Notitietype_naam @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DOSSIER AS
   SELECT t1.Aangevraagd_bedrag,
          t1.Aantal_dagenopschorting,
          t1.Aantal_ICT_projecten,
          t1.Aantal_SO_projecten,
          t1.Aantal_SO_werknemers,
          t1.Aantal_SO_zlf,
          t1.Aanvang_dat FORMAT=B8601DT19. AS Aanvang_dat,
          t1.Aanvraag_volgnr,
          t1.Aanvraagsoort,
          t1.Acceptatie_sts,
          t1.Afdrachtsvermindering,
          t1.Afhandeldatum FORMAT=B8601DT19. AS Afhandeldatum,
          t1.Afhandelwijze,
          t1.Afl_neg_einddeclaratie,
          t1.Akkoord_verlenen,
          t1.aut_verwerkt_imp,
          t1.Auth_id_indiener,
          t1.Auth_id_ondertekenaar,
          t1.Auth_prg_id,
          t1.BAS_advies,
          t1.Batchstatuscert,
          t1.Batchstatusref,
          t1.Batchstatusstat,
          t1.Behandelingsronde,
          t1.Beoordelingswijze,
          t1.Berekende_rente,
          t1.Beslissing_cd,
          t1.Checksum,
          t1.Classificatie,
          t1.Cluster_nr,
          t1.Controle_activiteit,
          t1.Commercieel_perspectief,
          t1.Contractjaar,
          t1.Conversiedossier,
          t1.Correspondentie_via_email,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Jaardossier_WBSO,
          t1.Datum_in FORMAT=B8601DT19. AS Datum_in,
          t1.Datum_renteberekening FORMAT=B8601DT19. AS Datum_renteberekening,
          t1.Datum_status FORMAT=B8601DT19. AS Datum_status,
          t1.Volgnr_diskette,
          t1.Volgnr_diskette_na_import,
          t1.Dos_cd,
          t1.Dos_id,
          t1.Dos_id_aanvulling,
          t1.Dosprio,
          t1.ED_Aanvraag_id,
          t1.Eerste_jr_aflossing,
          t1.Eind_dat FORMAT=B8601DT19. AS Eind_dat,
          t1.Eindmaand,
          t1.Extern_aanvraag_id,
          t1.Extern_dossier_id,
          t1.Extrene_bron_cd,
          t1.Gecommitteerd_zegge,
          t1.Gem_uurloon,
          t1.Hand_bewerkt_imp,
          t1.Handtekening_ok,
          t1.Hoofd_dos_id,
          t1.Id_van_de_doos,
          t1.Id_van_de_doos_na_de_import,
          t1.Importlijst,
          t1.Indienings_dat FORMAT=B8601DT19. AS Indienings_dat,
          t1.Indienings_tijd FORMAT=B8601DT19. AS Indienings_tijd,
          t1.Indienkanaal,
          t1.Ingezien,
          t1.Inkoopcat_cd,
          t1.Inleen_binnen_Fiscale_eenheid,
          t1.Meldingnummer_IRWA,
          t1.Jaar,
          t1.Jaardossier_bron_dos_id,
          t1.Jaardossier_dos_id,
          t1.Korte_titel,
          t1.Krat_nr,
          t1.Laatste_jr_aflossing,
          t1.Laatste_pcs_id,
          t1.Landnaam,
          t1.'LB-nummer_komt_overeen'n AS LB_nummer_komt_overeen,
          t1.Machtiging_JN,
          t1.Mdw_cd,
          t1.Mentorterugkoppeling,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_dat_vst FORMAT=B8601DT19. AS Mutatie_dat_vst,
          t1.Mutatie_user,
          t1.Mutatie_user_vst,
          t1.Naar_batchrun,
          t1.Neg_einddeclaratie,
          t1.Notities,
          t1.Octrooien,
          t1.Offertebedrag,
          t1.Cerhoud_id_Ondertekenaar,
          t1.Ontvangstdatum FORMAT=B8601DT19. AS Ontvangstdatum,
          t1.Oorspr_einddatum FORMAT=B8601DT19. AS Oorspr_einddatum,
          t1.Overige_subsidie,
          t1.Opdrachtvorm_cd,
          t1.Perc_verrekenen,
          t1.Periode_nr,
          t1.Prioriteit,
          t1.Prioriteitsdatum FORMAT=B8601DT19. AS Prioriteitsdatum,
          t1.Projectomschrijving,
          t1.Ranking,
          t1.RDA_Afhandeling_forfaitair,
          t1.RDA_aangevraagd,
          t1.Referentie,
          t1.Reg_id,
          t1.Reg_nr,
          t1.Rel_id_Aanvrager,
          t1.Rente_perc,
          t1.Samenwerkingsverband1,
          t1.Samenwerkingsverband2,
          t1.SO_loon,
          t1.Begrote_SO_loonsom,
          t1.SO_uren,
          t1.Startmaand,
          t1.Statuscode,
          t1.Status_cert,
          t1.Status_oud,
          t1.status_SO_uurloon,
          t1.Status_TT,
          t1.Statusgroep,
          t1.Statustermijn FORMAT=B8601DT19. AS Statustermijn,
          t1.'Status_E-Diensten'n AS Status_E_Diensten,
          t1.'Status_E-Loket'n AS Status_E_Loket,
          t1.Technisch_succes,
          t1.Technisch_Cor_id,
          t1.Titel,
          t1.'Afgelost_op_onvoorw._hoofdsom'n AS Afgelost_op_onvoorw_hoofdsom,
          t1.'Afgelost_op_onvoorw._rente'n AS Afgelost_op_onvoorw_rente,
          t1.Totaal_afgelost_op_hoofdsom,
          t1.Totaal_ontvangen_rente,
          t1.Totaal_bijgeschreven_rente,
          t1.Direct_opeisbare_vordering,
          t1.Direct_opeisbare_hoofdsom,
          t1.Direct_opeisbare_rente,
          t1.Totaal_gecommitteerd_bedrag,
          t1.Zegge_Totaal_gecommitteerd,
          t1.Totaal_gedeclareerd_bedrag,
          t1.Totaal_geschoonde_kosten,
          t1.Totale_hoofdsom,
          t1.Totaal_ingetrokken_bedrag,
          t1.'Kwijtsch._onvoorw._hoofdsom'n AS Kwijtsch_onvoorw_hoofdsom,
          t1.'Kwijtsch._onvoorw._rente'n AS Kwijtsch_onvoorw_rente,
          t1.'Kwijtsch._direct_opeisbaar'n AS Kwijtsch_direct_opeisbaar,
          t1.'Kwijtsch._voorw._hoofdsom'n AS Kwijtsch_voorw_hoofdsom,
          t1.'Kwijtsch.-voorw._rente'n AS Kwijtsch_voorw_rente,
          t1.Totaal_kwijtgescholden_bedrag,
          t1.Totaal_openstaand_bedrag,
          t1.Direct_opeisbaar_gesteld,
          t1.Totaal_uitbetaald,
          t1.Totaal_verleend_bedrag,
          t1.'Uitlening_binnen_Fisc._eenheid'n AS Uitlening_binnen_Fisc_eenheid,
          t1.Uurloon_jaar,
          t1.Vaststellen_batch,
          t1.Vergoedingsperc,
          t1.Volgnr_LB,
          t1.Voorlopig_gecommitteerd,
          t1.Voorlopig_gedeclareerd,
          t1.Vorig_aanvraag_bedrijf_nr,
          t1.Vorig_aanvraagjaar,
          t1.Vorig_aanvraagnummer,
          t1.Vorie_aanvraagperiode,
          t1.Vorig_aanvraag_volgnr,
          t1.Vaststelling_conform_aanvraag,
          t1.VV_Aanvraagnummer,
          t1.Wel_akkoord_niet_verlenen,
          t1.Aangeboden_aan_ZER
     FROM DATAQASG.DAM_DOSSIER_TCMG t1;
QUIT;

data WORK.BAS_DAM_DOSSIER;
  set WORK.BAS_DAM_DOSSIER;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIER.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Aangevraagd_bedrag" 
       ','
          "Aantal_dagenopschorting" 
       ','
          "Aantal_ICT_projecten" 
       ','
          "Aantal_SO_projecten" 
       ','
          "Aantal_SO_werknemers" 
       ','
          "Aantal_SO_zlf" 
       ','
          "Aanvang_dat" 
       ','
          "Aanvraag_volgnr" 
       ','
          "Aanvraagsoort" 
       ','
          "Acceptatie_sts" 
       ','
          "Afdrachtsvermindering" 
       ','
          "Afhandeldatum" 
       ','
          "Afhandelwijze" 
       ','
          "Afl_neg_einddeclaratie" 
       ','
          "Akkoord_verlenen" 
       ','
          "aut_verwerkt_imp" 
       ','
          "Auth_id_indiener" 
       ','
          "Auth_id_ondertekenaar" 
       ','
          "Auth_prg_id" 
       ','
          "BAS_advies" 
       ','
          "Batchstatuscert" 
       ','
          "Batchstatusref" 
       ','
          "Batchstatusstat" 
       ','
          "Behandelingsronde" 
       ','
          "Beoordelingswijze" 
       ','
          "Berekende_rente" 
       ','
          "Beslissing_cd" 
       ','
          "Checksum" 
       ','
          "Classificatie" 
       ','
          "Cluster_nr" 
       ','
          "Controle_activiteit" 
       ','
          "Commercieel_perspectief" 
       ','
          "Contractjaar" 
       ','
          "Conversiedossier" 
       ','
          "Correspondentie_via_email" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Jaardossier_WBSO" 
       ','
          "Datum_in" 
       ','
          "Datum_renteberekening" 
       ','
          "Datum_status" 
       ','
          "Volgnr_diskette" 
       ','
          "Volgnr_diskette_na_import" 
       ','
          "Dos_cd" 
       ','
          "Dos_id" 
       ','
          "Dos_id_aanvulling" 
       ','
          "Dosprio" 
       ','
          "ED_Aanvraag_id" 
       ','
          "Eerste_jr_aflossing" 
       ','
          "Eind_dat" 
       ','
          "Eindmaand" 
       ','
          "Extern_aanvraag_id" 
       ','
          "Extern_dossier_id" 
       ','
          "Extrene_bron_cd" 
       ','
          "Gecommitteerd_zegge" 
       ','
          "Gem_uurloon" 
       ','
          "Hand_bewerkt_imp" 
       ','
          "Handtekening_ok" 
       ','
          "Hoofd_dos_id" 
       ','
          "Id_van_de_doos" 
       ','
          "Id_van_de_doos_na_de_import" 
       ','
          "Importlijst" 
       ','
          "Indienings_dat" 
       ','
          "Indienings_tijd" 
       ','
          "Indienkanaal" 
       ','
          "Ingezien" 
       ','
          "Inkoopcat_cd" 
       ','
          "Inleen_binnen_Fiscale_eenheid" 
       ','
          "Meldingnummer_IRWA" 
       ','
          "Jaar" 
       ','
          "Jaardossier_bron_dos_id" 
       ','
          "Jaardossier_dos_id" 
       ','
          "Korte_titel" 
       ','
          "Krat_nr" 
       ','
          "Laatste_jr_aflossing" 
       ','
          "Laatste_pcs_id" 
       ','
          "Landnaam" 
       ','
          "LB_nummer_komt_overeen" 
       ','
          "Machtiging_JN" 
       ','
          "Mdw_cd" 
       ','
          "Mentorterugkoppeling" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_dat_vst" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_user_vst" 
       ','
          "Naar_batchrun" 
       ','
          "Neg_einddeclaratie" 
       ','
          "Notities" 
       ','
          "Octrooien" 
       ','
          "Offertebedrag" 
       ','
          "Cerhoud_id_Ondertekenaar" 
       ','
          "Ontvangstdatum" 
       ','
          "Oorspr_einddatum" 
       ','
          "Overige_subsidie" 
       ','
          "Opdrachtvorm_cd" 
       ','
          "Perc_verrekenen" 
       ','
          "Periode_nr" 
       ','
          "Prioriteit" 
       ','
          "Prioriteitsdatum" 
       ','
          "Projectomschrijving" 
       ','
          "Ranking" 
       ','
          "RDA_Afhandeling_forfaitair" 
       ','
          "RDA_aangevraagd" 
       ','
          "Referentie" 
       ','
          "Reg_id" 
       ','
          "Reg_nr" 
       ','
          "Rel_id_Aanvrager" 
       ','
          "Rente_perc" 
       ','
          "Samenwerkingsverband1" 
       ','
          "Samenwerkingsverband2" 
       ','
          "SO_loon" 
       ','
          "Begrote_SO_loonsom" 
       ','
          "SO_uren" 
       ','
          "Startmaand" 
       ','
          "Statuscode" 
       ','
          "Status_cert" 
       ','
          "Status_oud" 
       ','
          "status_SO_uurloon" 
       ','
          "Status_TT" 
       ','
          "Statusgroep" 
       ','
          "Statustermijn" 
       ','
          "Status_E_Diensten" 
       ','
          "Status_E_Loket" 
       ','
          "Technisch_succes" 
       ','
          "Technisch_Cor_id" 
       ','
          "Titel" 
       ','
          "Afgelost_op_onvoorw_hoofdsom" 
       ','
          "Afgelost_op_onvoorw_rente" 
       ','
          "Totaal_afgelost_op_hoofdsom" 
       ','
          "Totaal_ontvangen_rente" 
       ','
          "Totaal_bijgeschreven_rente" 
       ','
          "Direct_opeisbare_vordering" 
       ','
          "Direct_opeisbare_hoofdsom" 
       ','
          "Direct_opeisbare_rente" 
       ','
          "Totaal_gecommitteerd_bedrag" 
       ','
          "Zegge_Totaal_gecommitteerd" 
       ','
          "Totaal_gedeclareerd_bedrag" 
       ','
          "Totaal_geschoonde_kosten" 
       ','
          "Totale_hoofdsom" 
       ','
          "Totaal_ingetrokken_bedrag" 
       ','
          "Kwijtsch_onvoorw_hoofdsom" 
       ','
          "Kwijtsch_onvoorw_rente" 
       ','
          "Kwijtsch_direct_opeisbaar" 
       ','
          "Kwijtsch_voorw_hoofdsom" 
       ','
          "Kwijtsch_voorw_rente" 
       ','
          "Totaal_kwijtgescholden_bedrag" 
       ','
          "Totaal_openstaand_bedrag" 
       ','
          "Direct_opeisbaar_gesteld" 
       ','
          "Totaal_uitbetaald" 
       ','
          "Totaal_verleend_bedrag" 
       ','
          "Uitlening_binnen_Fisc_eenheid" 
       ','
          "Uurloon_jaar" 
       ','
          "Vaststellen_batch" 
       ','
          "Vergoedingsperc" 
       ','
          "Volgnr_LB" 
       ','
          "Voorlopig_gecommitteerd" 
       ','
          "Voorlopig_gedeclareerd" 
       ','
          "Vorig_aanvraag_bedrijf_nr" 
       ','
          "Vorig_aanvraagjaar" 
       ','
          "Vorig_aanvraagnummer" 
       ','
          "Vorie_aanvraagperiode" 
       ','
          "Vorig_aanvraag_volgnr" 
       ','
          "Vaststelling_conform_aanvraag" 
       ','
          "VV_Aanvraagnummer" 
       ','
          "Wel_akkoord_niet_verlenen" 
       ','
          "Aangeboden_aan_ZER" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DOSSIER   end=EFIEOD; 
       format Aangevraagd_bedrag best12. ;
       format Aantal_dagenopschorting best12. ;
       format Aantal_ICT_projecten best12. ;
       format Aantal_SO_projecten best12. ;
       format Aantal_SO_werknemers best12. ;
       format Aantal_SO_zlf best12. ;
       format Aanvang_dat B8601DT19. ;
       format Aanvraag_volgnr best12. ;
       format Aanvraagsoort  ;
       format Acceptatie_sts  ;
       format Afdrachtsvermindering  ;
       format Afhandeldatum B8601DT19. ;
       format Afhandelwijze  ;
       format Afl_neg_einddeclaratie best12. ;
       format Akkoord_verlenen  ;
       format aut_verwerkt_imp  ;
       format Auth_id_indiener best12. ;
       format Auth_id_ondertekenaar best12. ;
       format Auth_prg_id best12. ;
       format BAS_advies  ;
       format Batchstatuscert  ;
       format Batchstatusref  ;
       format Batchstatusstat  ;
       format Behandelingsronde best12. ;
       format Beoordelingswijze  ;
       format Berekende_rente best12. ;
       format Beslissing_cd  ;
       format Checksum best12. ;
       format Classificatie  ;
       format Cluster_nr best12. ;
       format Controle_activiteit  ;
       format Commercieel_perspectief  ;
       format Contractjaar best12. ;
       format Conversiedossier  ;
       format Correspondentie_via_email  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Jaardossier_WBSO  ;
       format Datum_in B8601DT19. ;
       format Datum_renteberekening B8601DT19. ;
       format Datum_status B8601DT19. ;
       format Volgnr_diskette best12. ;
       format Volgnr_diskette_na_import best12. ;
       format Dos_cd  ;
       format Dos_id best12. ;
       format Dos_id_aanvulling best12. ;
       format Dosprio best12. ;
       format ED_Aanvraag_id best12. ;
       format Eerste_jr_aflossing best12. ;
       format Eind_dat B8601DT19. ;
       format Eindmaand best12. ;
       format Extern_aanvraag_id best12. ;
       format Extern_dossier_id best12. ;
       format Extrene_bron_cd  ;
       format Gecommitteerd_zegge  ;
       format Gem_uurloon best12. ;
       format Hand_bewerkt_imp  ;
       format Handtekening_ok  ;
       format Hoofd_dos_id best12. ;
       format Id_van_de_doos best12. ;
       format Id_van_de_doos_na_de_import best12. ;
       format Importlijst  ;
       format Indienings_dat B8601DT19. ;
       format Indienings_tijd B8601DT19. ;
       format Indienkanaal  ;
       format Ingezien  ;
       format Inkoopcat_cd  ;
       format Inleen_binnen_Fiscale_eenheid  ;
       format Meldingnummer_IRWA  ;
       format Jaar best12. ;
       format Jaardossier_bron_dos_id best12. ;
       format Jaardossier_dos_id best12. ;
       format Korte_titel  ;
       format Krat_nr best12. ;
       format Laatste_jr_aflossing best12. ;
       format Laatste_pcs_id best12. ;
       format Landnaam  ;
       format LB_nummer_komt_overeen  ;
       format Machtiging_JN  ;
       format Mdw_cd  ;
       format Mentorterugkoppeling  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_dat_vst B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_user_vst  ;
       format Naar_batchrun best12. ;
       format Neg_einddeclaratie best12. ;
       format Notities  ;
       format Octrooien best12. ;
       format Offertebedrag best12. ;
       format Cerhoud_id_Ondertekenaar best12. ;
       format Ontvangstdatum B8601DT19. ;
       format Oorspr_einddatum B8601DT19. ;
       format Overige_subsidie  ;
       format Opdrachtvorm_cd  ;
       format Perc_verrekenen best12. ;
       format Periode_nr best12. ;
       format Prioriteit best12. ;
       format Prioriteitsdatum B8601DT19. ;
       format Projectomschrijving  ;
       format Ranking best12. ;
       format RDA_Afhandeling_forfaitair  ;
       format RDA_aangevraagd  ;
       format Referentie  ;
       format Reg_id best12. ;
       format Reg_nr best12. ;
       format Rel_id_Aanvrager best12. ;
       format Rente_perc best12. ;
       format Samenwerkingsverband1  ;
       format Samenwerkingsverband2  ;
       format SO_loon best12. ;
       format Begrote_SO_loonsom best12. ;
       format SO_uren best12. ;
       format Startmaand best12. ;
       format Statuscode  ;
       format Status_cert  ;
       format Status_oud  ;
       format status_SO_uurloon  ;
       format Status_TT  ;
       format Statusgroep  ;
       format Statustermijn B8601DT19. ;
       format Status_E_Diensten  ;
       format Status_E_Loket  ;
       format Technisch_succes best12. ;
       format Technisch_Cor_id best12. ;
       format Titel  ;
       format Afgelost_op_onvoorw_hoofdsom best12. ;
       format Afgelost_op_onvoorw_rente best12. ;
       format Totaal_afgelost_op_hoofdsom best12. ;
       format Totaal_ontvangen_rente best12. ;
       format Totaal_bijgeschreven_rente best12. ;
       format Direct_opeisbare_vordering best12. ;
       format Direct_opeisbare_hoofdsom best12. ;
       format Direct_opeisbare_rente best12. ;
       format Totaal_gecommitteerd_bedrag best12. ;
       format Zegge_Totaal_gecommitteerd  ;
       format Totaal_gedeclareerd_bedrag best12. ;
       format Totaal_geschoonde_kosten best12. ;
       format Totale_hoofdsom best12. ;
       format Totaal_ingetrokken_bedrag best12. ;
       format Kwijtsch_onvoorw_hoofdsom best12. ;
       format Kwijtsch_onvoorw_rente best12. ;
       format Kwijtsch_direct_opeisbaar best12. ;
       format Kwijtsch_voorw_hoofdsom best12. ;
       format Kwijtsch_voorw_rente best12. ;
       format Totaal_kwijtgescholden_bedrag best12. ;
       format Totaal_openstaand_bedrag best12. ;
       format Direct_opeisbaar_gesteld best12. ;
       format Totaal_uitbetaald best12. ;
       format Totaal_verleend_bedrag best12. ;
       format Uitlening_binnen_Fisc_eenheid  ;
       format Uurloon_jaar best12. ;
       format Vaststellen_batch  ;
       format Vergoedingsperc best12. ;
       format Volgnr_LB best12. ;
       format Voorlopig_gecommitteerd best12. ;
       format Voorlopig_gedeclareerd best12. ;
       format Vorig_aanvraag_bedrijf_nr best12. ;
       format Vorig_aanvraagjaar best12. ;
       format Vorig_aanvraagnummer  ;
       format Vorie_aanvraagperiode best12. ;
       format Vorig_aanvraag_volgnr best12. ;
       format Vaststelling_conform_aanvraag  ;
       format VV_Aanvraagnummer  ;
       format Wel_akkoord_niet_verlenen  ;
       format Aangeboden_aan_ZER  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Aangevraagd_bedrag)
         then put "," @;
         else do;
                 if find(Aangevraagd_bedrag,'0A'x) > 0 and 2+klength(Aangevraagd_bedrag) = klength(quote(trim(Aangevraagd_bedrag)))
                   then put '22'x Aangevraagd_bedrag +(-1) '22'x "," @;
                   else put Aangevraagd_bedrag @;
              end;
       if missing(Aantal_dagenopschorting)
         then put "," @;
         else do;
                 if find(Aantal_dagenopschorting,'0A'x) > 0 and 2+klength(Aantal_dagenopschorting) = klength(quote(trim(Aantal_dagenopschorting)))
                   then put '22'x Aantal_dagenopschorting +(-1) '22'x "," @;
                   else put Aantal_dagenopschorting @;
              end;
       if missing(Aantal_ICT_projecten)
         then put "," @;
         else do;
                 if find(Aantal_ICT_projecten,'0A'x) > 0 and 2+klength(Aantal_ICT_projecten) = klength(quote(trim(Aantal_ICT_projecten)))
                   then put '22'x Aantal_ICT_projecten +(-1) '22'x "," @;
                   else put Aantal_ICT_projecten @;
              end;
       if missing(Aantal_SO_projecten)
         then put "," @;
         else do;
                 if find(Aantal_SO_projecten,'0A'x) > 0 and 2+klength(Aantal_SO_projecten) = klength(quote(trim(Aantal_SO_projecten)))
                   then put '22'x Aantal_SO_projecten +(-1) '22'x "," @;
                   else put Aantal_SO_projecten @;
              end;
       if missing(Aantal_SO_werknemers)
         then put "," @;
         else do;
                 if find(Aantal_SO_werknemers,'0A'x) > 0 and 2+klength(Aantal_SO_werknemers) = klength(quote(trim(Aantal_SO_werknemers)))
                   then put '22'x Aantal_SO_werknemers +(-1) '22'x "," @;
                   else put Aantal_SO_werknemers @;
              end;
       if missing(Aantal_SO_zlf)
         then put "," @;
         else do;
                 if find(Aantal_SO_zlf,'0A'x) > 0 and 2+klength(Aantal_SO_zlf) = klength(quote(trim(Aantal_SO_zlf)))
                   then put '22'x Aantal_SO_zlf +(-1) '22'x "," @;
                   else put Aantal_SO_zlf @;
              end;
       if missing(Aanvang_dat)
         then put "," @;
         else do;
                 if find(Aanvang_dat,'0A'x) > 0 and 2+klength(Aanvang_dat) = klength(quote(trim(Aanvang_dat)))
                   then put '22'x Aanvang_dat +(-1) '22'x "," @;
                   else put Aanvang_dat @;
              end;
       if missing(Aanvraag_volgnr)
         then put "," @;
         else do;
                 if find(Aanvraag_volgnr,'0A'x) > 0 and 2+klength(Aanvraag_volgnr) = klength(quote(trim(Aanvraag_volgnr)))
                   then put '22'x Aanvraag_volgnr +(-1) '22'x "," @;
                   else put Aanvraag_volgnr @;
              end;
       if missing(Aanvraagsoort)
         then put "," @;
         else do;
                 if find(Aanvraagsoort,'0A'x) > 0 and 2+klength(Aanvraagsoort) = klength(quote(trim(Aanvraagsoort)))
                   then put '22'x Aanvraagsoort +(-1) '22'x "," @;
                   else put Aanvraagsoort @;
              end;
       if missing(Acceptatie_sts)
         then put "," @;
         else do;
                 if find(Acceptatie_sts,'0A'x) > 0 and 2+klength(Acceptatie_sts) = klength(quote(trim(Acceptatie_sts)))
                   then put '22'x Acceptatie_sts +(-1) '22'x "," @;
                   else put Acceptatie_sts @;
              end;
       if missing(Afdrachtsvermindering)
         then put "," @;
         else do;
                 if find(Afdrachtsvermindering,'0A'x) > 0 and 2+klength(Afdrachtsvermindering) = klength(quote(trim(Afdrachtsvermindering)))
                   then put '22'x Afdrachtsvermindering +(-1) '22'x "," @;
                   else put Afdrachtsvermindering @;
              end;
       if missing(Afhandeldatum)
         then put "," @;
         else do;
                 if find(Afhandeldatum,'0A'x) > 0 and 2+klength(Afhandeldatum) = klength(quote(trim(Afhandeldatum)))
                   then put '22'x Afhandeldatum +(-1) '22'x "," @;
                   else put Afhandeldatum @;
              end;
       if missing(Afhandelwijze)
         then put "," @;
         else do;
                 if find(Afhandelwijze,'0A'x) > 0 and 2+klength(Afhandelwijze) = klength(quote(trim(Afhandelwijze)))
                   then put '22'x Afhandelwijze +(-1) '22'x "," @;
                   else put Afhandelwijze @;
              end;
       if missing(Afl_neg_einddeclaratie)
         then put "," @;
         else do;
                 if find(Afl_neg_einddeclaratie,'0A'x) > 0 and 2+klength(Afl_neg_einddeclaratie) = klength(quote(trim(Afl_neg_einddeclaratie)))
                   then put '22'x Afl_neg_einddeclaratie +(-1) '22'x "," @;
                   else put Afl_neg_einddeclaratie @;
              end;
       if missing(Akkoord_verlenen)
         then put "," @;
         else do;
                 if find(Akkoord_verlenen,'0A'x) > 0 and 2+klength(Akkoord_verlenen) = klength(quote(trim(Akkoord_verlenen)))
                   then put '22'x Akkoord_verlenen +(-1) '22'x "," @;
                   else put Akkoord_verlenen @;
              end;
       if missing(aut_verwerkt_imp)
         then put "," @;
         else do;
                 if find(aut_verwerkt_imp,'0A'x) > 0 and 2+klength(aut_verwerkt_imp) = klength(quote(trim(aut_verwerkt_imp)))
                   then put '22'x aut_verwerkt_imp +(-1) '22'x "," @;
                   else put aut_verwerkt_imp @;
              end;
       if missing(Auth_id_indiener)
         then put "," @;
         else do;
                 if find(Auth_id_indiener,'0A'x) > 0 and 2+klength(Auth_id_indiener) = klength(quote(trim(Auth_id_indiener)))
                   then put '22'x Auth_id_indiener +(-1) '22'x "," @;
                   else put Auth_id_indiener @;
              end;
       if missing(Auth_id_ondertekenaar)
         then put "," @;
         else do;
                 if find(Auth_id_ondertekenaar,'0A'x) > 0 and 2+klength(Auth_id_ondertekenaar) = klength(quote(trim(Auth_id_ondertekenaar)))
                   then put '22'x Auth_id_ondertekenaar +(-1) '22'x "," @;
                   else put Auth_id_ondertekenaar @;
              end;
       if missing(Auth_prg_id)
         then put "," @;
         else do;
                 if find(Auth_prg_id,'0A'x) > 0 and 2+klength(Auth_prg_id) = klength(quote(trim(Auth_prg_id)))
                   then put '22'x Auth_prg_id +(-1) '22'x "," @;
                   else put Auth_prg_id @;
              end;
       if missing(BAS_advies)
         then put "," @;
         else do;
                 if find(BAS_advies,'0A'x) > 0 and 2+klength(BAS_advies) = klength(quote(trim(BAS_advies)))
                   then put '22'x BAS_advies +(-1) '22'x "," @;
                   else put BAS_advies @;
              end;
       if missing(Batchstatuscert)
         then put "," @;
         else do;
                 if find(Batchstatuscert,'0A'x) > 0 and 2+klength(Batchstatuscert) = klength(quote(trim(Batchstatuscert)))
                   then put '22'x Batchstatuscert +(-1) '22'x "," @;
                   else put Batchstatuscert @;
              end;
       if missing(Batchstatusref)
         then put "," @;
         else do;
                 if find(Batchstatusref,'0A'x) > 0 and 2+klength(Batchstatusref) = klength(quote(trim(Batchstatusref)))
                   then put '22'x Batchstatusref +(-1) '22'x "," @;
                   else put Batchstatusref @;
              end;
       if missing(Batchstatusstat)
         then put "," @;
         else do;
                 if find(Batchstatusstat,'0A'x) > 0 and 2+klength(Batchstatusstat) = klength(quote(trim(Batchstatusstat)))
                   then put '22'x Batchstatusstat +(-1) '22'x "," @;
                   else put Batchstatusstat @;
              end;
       if missing(Behandelingsronde)
         then put "," @;
         else do;
                 if find(Behandelingsronde,'0A'x) > 0 and 2+klength(Behandelingsronde) = klength(quote(trim(Behandelingsronde)))
                   then put '22'x Behandelingsronde +(-1) '22'x "," @;
                   else put Behandelingsronde @;
              end;
       if missing(Beoordelingswijze)
         then put "," @;
         else do;
                 if find(Beoordelingswijze,'0A'x) > 0 and 2+klength(Beoordelingswijze) = klength(quote(trim(Beoordelingswijze)))
                   then put '22'x Beoordelingswijze +(-1) '22'x "," @;
                   else put Beoordelingswijze @;
              end;
       if missing(Berekende_rente)
         then put "," @;
         else do;
                 if find(Berekende_rente,'0A'x) > 0 and 2+klength(Berekende_rente) = klength(quote(trim(Berekende_rente)))
                   then put '22'x Berekende_rente +(-1) '22'x "," @;
                   else put Berekende_rente @;
              end;
       if missing(Beslissing_cd)
         then put "," @;
         else do;
                 if find(Beslissing_cd,'0A'x) > 0 and 2+klength(Beslissing_cd) = klength(quote(trim(Beslissing_cd)))
                   then put '22'x Beslissing_cd +(-1) '22'x "," @;
                   else put Beslissing_cd @;
              end;
       if missing(Checksum)
         then put "," @;
         else do;
                 if find(Checksum,'0A'x) > 0 and 2+klength(Checksum) = klength(quote(trim(Checksum)))
                   then put '22'x Checksum +(-1) '22'x "," @;
                   else put Checksum @;
              end;
       if missing(Classificatie)
         then put "," @;
         else do;
                 if find(Classificatie,'0A'x) > 0 and 2+klength(Classificatie) = klength(quote(trim(Classificatie)))
                   then put '22'x Classificatie +(-1) '22'x "," @;
                   else put Classificatie @;
              end;
       if missing(Cluster_nr)
         then put "," @;
         else do;
                 if find(Cluster_nr,'0A'x) > 0 and 2+klength(Cluster_nr) = klength(quote(trim(Cluster_nr)))
                   then put '22'x Cluster_nr +(-1) '22'x "," @;
                   else put Cluster_nr @;
              end;
       if missing(Controle_activiteit)
         then put "," @;
         else do;
                 if find(Controle_activiteit,'0A'x) > 0 and 2+klength(Controle_activiteit) = klength(quote(trim(Controle_activiteit)))
                   then put '22'x Controle_activiteit +(-1) '22'x "," @;
                   else put Controle_activiteit @;
              end;
       if missing(Commercieel_perspectief)
         then put "," @;
         else do;
                 if find(Commercieel_perspectief,'0A'x) > 0 and 2+klength(Commercieel_perspectief) = klength(quote(trim(Commercieel_perspectief)))
                   then put '22'x Commercieel_perspectief +(-1) '22'x "," @;
                   else put Commercieel_perspectief @;
              end;
       if missing(Contractjaar)
         then put "," @;
         else do;
                 if find(Contractjaar,'0A'x) > 0 and 2+klength(Contractjaar) = klength(quote(trim(Contractjaar)))
                   then put '22'x Contractjaar +(-1) '22'x "," @;
                   else put Contractjaar @;
              end;
       if missing(Conversiedossier)
         then put "," @;
         else do;
                 if find(Conversiedossier,'0A'x) > 0 and 2+klength(Conversiedossier) = klength(quote(trim(Conversiedossier)))
                   then put '22'x Conversiedossier +(-1) '22'x "," @;
                   else put Conversiedossier @;
              end;
       if missing(Correspondentie_via_email)
         then put "," @;
         else do;
                 if find(Correspondentie_via_email,'0A'x) > 0 and 2+klength(Correspondentie_via_email) = klength(quote(trim(Correspondentie_via_email)))
                   then put '22'x Correspondentie_via_email +(-1) '22'x "," @;
                   else put Correspondentie_via_email @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Jaardossier_WBSO)
         then put "," @;
         else do;
                 if find(Jaardossier_WBSO,'0A'x) > 0 and 2+klength(Jaardossier_WBSO) = klength(quote(trim(Jaardossier_WBSO)))
                   then put '22'x Jaardossier_WBSO +(-1) '22'x "," @;
                   else put Jaardossier_WBSO @;
              end;
       if missing(Datum_in)
         then put "," @;
         else do;
                 if find(Datum_in,'0A'x) > 0 and 2+klength(Datum_in) = klength(quote(trim(Datum_in)))
                   then put '22'x Datum_in +(-1) '22'x "," @;
                   else put Datum_in @;
              end;
       if missing(Datum_renteberekening)
         then put "," @;
         else do;
                 if find(Datum_renteberekening,'0A'x) > 0 and 2+klength(Datum_renteberekening) = klength(quote(trim(Datum_renteberekening)))
                   then put '22'x Datum_renteberekening +(-1) '22'x "," @;
                   else put Datum_renteberekening @;
              end;
       if missing(Datum_status)
         then put "," @;
         else do;
                 if find(Datum_status,'0A'x) > 0 and 2+klength(Datum_status) = klength(quote(trim(Datum_status)))
                   then put '22'x Datum_status +(-1) '22'x "," @;
                   else put Datum_status @;
              end;
       if missing(Volgnr_diskette)
         then put "," @;
         else do;
                 if find(Volgnr_diskette,'0A'x) > 0 and 2+klength(Volgnr_diskette) = klength(quote(trim(Volgnr_diskette)))
                   then put '22'x Volgnr_diskette +(-1) '22'x "," @;
                   else put Volgnr_diskette @;
              end;
       if missing(Volgnr_diskette_na_import)
         then put "," @;
         else do;
                 if find(Volgnr_diskette_na_import,'0A'x) > 0 and 2+klength(Volgnr_diskette_na_import) = klength(quote(trim(Volgnr_diskette_na_import)))
                   then put '22'x Volgnr_diskette_na_import +(-1) '22'x "," @;
                   else put Volgnr_diskette_na_import @;
              end;
       if missing(Dos_cd)
         then put "," @;
         else do;
                 if find(Dos_cd,'0A'x) > 0 and 2+klength(Dos_cd) = klength(quote(trim(Dos_cd)))
                   then put '22'x Dos_cd +(-1) '22'x "," @;
                   else put Dos_cd @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Dos_id_aanvulling)
         then put "," @;
         else do;
                 if find(Dos_id_aanvulling,'0A'x) > 0 and 2+klength(Dos_id_aanvulling) = klength(quote(trim(Dos_id_aanvulling)))
                   then put '22'x Dos_id_aanvulling +(-1) '22'x "," @;
                   else put Dos_id_aanvulling @;
              end;
       if missing(Dosprio)
         then put "," @;
         else do;
                 if find(Dosprio,'0A'x) > 0 and 2+klength(Dosprio) = klength(quote(trim(Dosprio)))
                   then put '22'x Dosprio +(-1) '22'x "," @;
                   else put Dosprio @;
              end;
       if missing(ED_Aanvraag_id)
         then put "," @;
         else do;
                 if find(ED_Aanvraag_id,'0A'x) > 0 and 2+klength(ED_Aanvraag_id) = klength(quote(trim(ED_Aanvraag_id)))
                   then put '22'x ED_Aanvraag_id +(-1) '22'x "," @;
                   else put ED_Aanvraag_id @;
              end;
       if missing(Eerste_jr_aflossing)
         then put "," @;
         else do;
                 if find(Eerste_jr_aflossing,'0A'x) > 0 and 2+klength(Eerste_jr_aflossing) = klength(quote(trim(Eerste_jr_aflossing)))
                   then put '22'x Eerste_jr_aflossing +(-1) '22'x "," @;
                   else put Eerste_jr_aflossing @;
              end;
       if missing(Eind_dat)
         then put "," @;
         else do;
                 if find(Eind_dat,'0A'x) > 0 and 2+klength(Eind_dat) = klength(quote(trim(Eind_dat)))
                   then put '22'x Eind_dat +(-1) '22'x "," @;
                   else put Eind_dat @;
              end;
       if missing(Eindmaand)
         then put "," @;
         else do;
                 if find(Eindmaand,'0A'x) > 0 and 2+klength(Eindmaand) = klength(quote(trim(Eindmaand)))
                   then put '22'x Eindmaand +(-1) '22'x "," @;
                   else put Eindmaand @;
              end;
       if missing(Extern_aanvraag_id)
         then put "," @;
         else do;
                 if find(Extern_aanvraag_id,'0A'x) > 0 and 2+klength(Extern_aanvraag_id) = klength(quote(trim(Extern_aanvraag_id)))
                   then put '22'x Extern_aanvraag_id +(-1) '22'x "," @;
                   else put Extern_aanvraag_id @;
              end;
       if missing(Extern_dossier_id)
         then put "," @;
         else do;
                 if find(Extern_dossier_id,'0A'x) > 0 and 2+klength(Extern_dossier_id) = klength(quote(trim(Extern_dossier_id)))
                   then put '22'x Extern_dossier_id +(-1) '22'x "," @;
                   else put Extern_dossier_id @;
              end;
       if missing(Extrene_bron_cd)
         then put "," @;
         else do;
                 if find(Extrene_bron_cd,'0A'x) > 0 and 2+klength(Extrene_bron_cd) = klength(quote(trim(Extrene_bron_cd)))
                   then put '22'x Extrene_bron_cd +(-1) '22'x "," @;
                   else put Extrene_bron_cd @;
              end;
       if missing(Gecommitteerd_zegge)
         then put "," @;
         else do;
                 if find(Gecommitteerd_zegge,'0A'x) > 0 and 2+klength(Gecommitteerd_zegge) = klength(quote(trim(Gecommitteerd_zegge)))
                   then put '22'x Gecommitteerd_zegge +(-1) '22'x "," @;
                   else put Gecommitteerd_zegge @;
              end;
       if missing(Gem_uurloon)
         then put "," @;
         else do;
                 if find(Gem_uurloon,'0A'x) > 0 and 2+klength(Gem_uurloon) = klength(quote(trim(Gem_uurloon)))
                   then put '22'x Gem_uurloon +(-1) '22'x "," @;
                   else put Gem_uurloon @;
              end;
       if missing(Hand_bewerkt_imp)
         then put "," @;
         else do;
                 if find(Hand_bewerkt_imp,'0A'x) > 0 and 2+klength(Hand_bewerkt_imp) = klength(quote(trim(Hand_bewerkt_imp)))
                   then put '22'x Hand_bewerkt_imp +(-1) '22'x "," @;
                   else put Hand_bewerkt_imp @;
              end;
       if missing(Handtekening_ok)
         then put "," @;
         else do;
                 if find(Handtekening_ok,'0A'x) > 0 and 2+klength(Handtekening_ok) = klength(quote(trim(Handtekening_ok)))
                   then put '22'x Handtekening_ok +(-1) '22'x "," @;
                   else put Handtekening_ok @;
              end;
       if missing(Hoofd_dos_id)
         then put "," @;
         else do;
                 if find(Hoofd_dos_id,'0A'x) > 0 and 2+klength(Hoofd_dos_id) = klength(quote(trim(Hoofd_dos_id)))
                   then put '22'x Hoofd_dos_id +(-1) '22'x "," @;
                   else put Hoofd_dos_id @;
              end;
       if missing(Id_van_de_doos)
         then put "," @;
         else do;
                 if find(Id_van_de_doos,'0A'x) > 0 and 2+klength(Id_van_de_doos) = klength(quote(trim(Id_van_de_doos)))
                   then put '22'x Id_van_de_doos +(-1) '22'x "," @;
                   else put Id_van_de_doos @;
              end;
       if missing(Id_van_de_doos_na_de_import)
         then put "," @;
         else do;
                 if find(Id_van_de_doos_na_de_import,'0A'x) > 0 and 2+klength(Id_van_de_doos_na_de_import) = klength(quote(trim(Id_van_de_doos_na_de_import)))
                   then put '22'x Id_van_de_doos_na_de_import +(-1) '22'x "," @;
                   else put Id_van_de_doos_na_de_import @;
              end;
       if missing(Importlijst)
         then put "," @;
         else do;
                 if find(Importlijst,'0A'x) > 0 and 2+klength(Importlijst) = klength(quote(trim(Importlijst)))
                   then put '22'x Importlijst +(-1) '22'x "," @;
                   else put Importlijst @;
              end;
       if missing(Indienings_dat)
         then put "," @;
         else do;
                 if find(Indienings_dat,'0A'x) > 0 and 2+klength(Indienings_dat) = klength(quote(trim(Indienings_dat)))
                   then put '22'x Indienings_dat +(-1) '22'x "," @;
                   else put Indienings_dat @;
              end;
       if missing(Indienings_tijd)
         then put "," @;
         else do;
                 if find(Indienings_tijd,'0A'x) > 0 and 2+klength(Indienings_tijd) = klength(quote(trim(Indienings_tijd)))
                   then put '22'x Indienings_tijd +(-1) '22'x "," @;
                   else put Indienings_tijd @;
              end;
       if missing(Indienkanaal)
         then put "," @;
         else do;
                 if find(Indienkanaal,'0A'x) > 0 and 2+klength(Indienkanaal) = klength(quote(trim(Indienkanaal)))
                   then put '22'x Indienkanaal +(-1) '22'x "," @;
                   else put Indienkanaal @;
              end;
       if missing(Ingezien)
         then put "," @;
         else do;
                 if find(Ingezien,'0A'x) > 0 and 2+klength(Ingezien) = klength(quote(trim(Ingezien)))
                   then put '22'x Ingezien +(-1) '22'x "," @;
                   else put Ingezien @;
              end;
       if missing(Inkoopcat_cd)
         then put "," @;
         else do;
                 if find(Inkoopcat_cd,'0A'x) > 0 and 2+klength(Inkoopcat_cd) = klength(quote(trim(Inkoopcat_cd)))
                   then put '22'x Inkoopcat_cd +(-1) '22'x "," @;
                   else put Inkoopcat_cd @;
              end;
       if missing(Inleen_binnen_Fiscale_eenheid)
         then put "," @;
         else do;
                 if find(Inleen_binnen_Fiscale_eenheid,'0A'x) > 0 and 2+klength(Inleen_binnen_Fiscale_eenheid) = klength(quote(trim(Inleen_binnen_Fiscale_eenheid)))
                   then put '22'x Inleen_binnen_Fiscale_eenheid +(-1) '22'x "," @;
                   else put Inleen_binnen_Fiscale_eenheid @;
              end;
       if missing(Meldingnummer_IRWA)
         then put "," @;
         else do;
                 if find(Meldingnummer_IRWA,'0A'x) > 0 and 2+klength(Meldingnummer_IRWA) = klength(quote(trim(Meldingnummer_IRWA)))
                   then put '22'x Meldingnummer_IRWA +(-1) '22'x "," @;
                   else put Meldingnummer_IRWA @;
              end;
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Jaardossier_bron_dos_id)
         then put "," @;
         else do;
                 if find(Jaardossier_bron_dos_id,'0A'x) > 0 and 2+klength(Jaardossier_bron_dos_id) = klength(quote(trim(Jaardossier_bron_dos_id)))
                   then put '22'x Jaardossier_bron_dos_id +(-1) '22'x "," @;
                   else put Jaardossier_bron_dos_id @;
              end;
       if missing(Jaardossier_dos_id)
         then put "," @;
         else do;
                 if find(Jaardossier_dos_id,'0A'x) > 0 and 2+klength(Jaardossier_dos_id) = klength(quote(trim(Jaardossier_dos_id)))
                   then put '22'x Jaardossier_dos_id +(-1) '22'x "," @;
                   else put Jaardossier_dos_id @;
              end;
       if missing(Korte_titel)
         then put "," @;
         else do;
                 if find(Korte_titel,'0A'x) > 0 and 2+klength(Korte_titel) = klength(quote(trim(Korte_titel)))
                   then put '22'x Korte_titel +(-1) '22'x "," @;
                   else put Korte_titel @;
              end;
       if missing(Krat_nr)
         then put "," @;
         else do;
                 if find(Krat_nr,'0A'x) > 0 and 2+klength(Krat_nr) = klength(quote(trim(Krat_nr)))
                   then put '22'x Krat_nr +(-1) '22'x "," @;
                   else put Krat_nr @;
              end;
       if missing(Laatste_jr_aflossing)
         then put "," @;
         else do;
                 if find(Laatste_jr_aflossing,'0A'x) > 0 and 2+klength(Laatste_jr_aflossing) = klength(quote(trim(Laatste_jr_aflossing)))
                   then put '22'x Laatste_jr_aflossing +(-1) '22'x "," @;
                   else put Laatste_jr_aflossing @;
              end;
       if missing(Laatste_pcs_id)
         then put "," @;
         else do;
                 if find(Laatste_pcs_id,'0A'x) > 0 and 2+klength(Laatste_pcs_id) = klength(quote(trim(Laatste_pcs_id)))
                   then put '22'x Laatste_pcs_id +(-1) '22'x "," @;
                   else put Laatste_pcs_id @;
              end;
       if missing(Landnaam)
         then put "," @;
         else do;
                 if find(Landnaam,'0A'x) > 0 and 2+klength(Landnaam) = klength(quote(trim(Landnaam)))
                   then put '22'x Landnaam +(-1) '22'x "," @;
                   else put Landnaam @;
              end;
       if missing(LB_nummer_komt_overeen)
         then put "," @;
         else do;
                 if find(LB_nummer_komt_overeen,'0A'x) > 0 and 2+klength(LB_nummer_komt_overeen) = klength(quote(trim(LB_nummer_komt_overeen)))
                   then put '22'x LB_nummer_komt_overeen +(-1) '22'x "," @;
                   else put LB_nummer_komt_overeen @;
              end;
       if missing(Machtiging_JN)
         then put "," @;
         else do;
                 if find(Machtiging_JN,'0A'x) > 0 and 2+klength(Machtiging_JN) = klength(quote(trim(Machtiging_JN)))
                   then put '22'x Machtiging_JN +(-1) '22'x "," @;
                   else put Machtiging_JN @;
              end;
       if missing(Mdw_cd)
         then put "," @;
         else do;
                 if find(Mdw_cd,'0A'x) > 0 and 2+klength(Mdw_cd) = klength(quote(trim(Mdw_cd)))
                   then put '22'x Mdw_cd +(-1) '22'x "," @;
                   else put Mdw_cd @;
              end;
       if missing(Mentorterugkoppeling)
         then put "," @;
         else do;
                 if find(Mentorterugkoppeling,'0A'x) > 0 and 2+klength(Mentorterugkoppeling) = klength(quote(trim(Mentorterugkoppeling)))
                   then put '22'x Mentorterugkoppeling +(-1) '22'x "," @;
                   else put Mentorterugkoppeling @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_dat_vst)
         then put "," @;
         else do;
                 if find(Mutatie_dat_vst,'0A'x) > 0 and 2+klength(Mutatie_dat_vst) = klength(quote(trim(Mutatie_dat_vst)))
                   then put '22'x Mutatie_dat_vst +(-1) '22'x "," @;
                   else put Mutatie_dat_vst @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_user_vst)
         then put "," @;
         else do;
                 if find(Mutatie_user_vst,'0A'x) > 0 and 2+klength(Mutatie_user_vst) = klength(quote(trim(Mutatie_user_vst)))
                   then put '22'x Mutatie_user_vst +(-1) '22'x "," @;
                   else put Mutatie_user_vst @;
              end;
       if missing(Naar_batchrun)
         then put "," @;
         else do;
                 if find(Naar_batchrun,'0A'x) > 0 and 2+klength(Naar_batchrun) = klength(quote(trim(Naar_batchrun)))
                   then put '22'x Naar_batchrun +(-1) '22'x "," @;
                   else put Naar_batchrun @;
              end;
       if missing(Neg_einddeclaratie)
         then put "," @;
         else do;
                 if find(Neg_einddeclaratie,'0A'x) > 0 and 2+klength(Neg_einddeclaratie) = klength(quote(trim(Neg_einddeclaratie)))
                   then put '22'x Neg_einddeclaratie +(-1) '22'x "," @;
                   else put Neg_einddeclaratie @;
              end;
       if missing(Notities)
         then put "," @;
         else do;
                 if find(Notities,'0A'x) > 0 and 2+klength(Notities) = klength(quote(trim(Notities)))
                   then put '22'x Notities +(-1) '22'x "," @;
                   else put Notities @;
              end;
       if missing(Octrooien)
         then put "," @;
         else do;
                 if find(Octrooien,'0A'x) > 0 and 2+klength(Octrooien) = klength(quote(trim(Octrooien)))
                   then put '22'x Octrooien +(-1) '22'x "," @;
                   else put Octrooien @;
              end;
       if missing(Offertebedrag)
         then put "," @;
         else do;
                 if find(Offertebedrag,'0A'x) > 0 and 2+klength(Offertebedrag) = klength(quote(trim(Offertebedrag)))
                   then put '22'x Offertebedrag +(-1) '22'x "," @;
                   else put Offertebedrag @;
              end;
       if missing(Cerhoud_id_Ondertekenaar)
         then put "," @;
         else do;
                 if find(Cerhoud_id_Ondertekenaar,'0A'x) > 0 and 2+klength(Cerhoud_id_Ondertekenaar) = klength(quote(trim(Cerhoud_id_Ondertekenaar)))
                   then put '22'x Cerhoud_id_Ondertekenaar +(-1) '22'x "," @;
                   else put Cerhoud_id_Ondertekenaar @;
              end;
       if missing(Ontvangstdatum)
         then put "," @;
         else do;
                 if find(Ontvangstdatum,'0A'x) > 0 and 2+klength(Ontvangstdatum) = klength(quote(trim(Ontvangstdatum)))
                   then put '22'x Ontvangstdatum +(-1) '22'x "," @;
                   else put Ontvangstdatum @;
              end;
       if missing(Oorspr_einddatum)
         then put "," @;
         else do;
                 if find(Oorspr_einddatum,'0A'x) > 0 and 2+klength(Oorspr_einddatum) = klength(quote(trim(Oorspr_einddatum)))
                   then put '22'x Oorspr_einddatum +(-1) '22'x "," @;
                   else put Oorspr_einddatum @;
              end;
       if missing(Overige_subsidie)
         then put "," @;
         else do;
                 if find(Overige_subsidie,'0A'x) > 0 and 2+klength(Overige_subsidie) = klength(quote(trim(Overige_subsidie)))
                   then put '22'x Overige_subsidie +(-1) '22'x "," @;
                   else put Overige_subsidie @;
              end;
       if missing(Opdrachtvorm_cd)
         then put "," @;
         else do;
                 if find(Opdrachtvorm_cd,'0A'x) > 0 and 2+klength(Opdrachtvorm_cd) = klength(quote(trim(Opdrachtvorm_cd)))
                   then put '22'x Opdrachtvorm_cd +(-1) '22'x "," @;
                   else put Opdrachtvorm_cd @;
              end;
       if missing(Perc_verrekenen)
         then put "," @;
         else do;
                 if find(Perc_verrekenen,'0A'x) > 0 and 2+klength(Perc_verrekenen) = klength(quote(trim(Perc_verrekenen)))
                   then put '22'x Perc_verrekenen +(-1) '22'x "," @;
                   else put Perc_verrekenen @;
              end;
       if missing(Periode_nr)
         then put "," @;
         else do;
                 if find(Periode_nr,'0A'x) > 0 and 2+klength(Periode_nr) = klength(quote(trim(Periode_nr)))
                   then put '22'x Periode_nr +(-1) '22'x "," @;
                   else put Periode_nr @;
              end;
       if missing(Prioriteit)
         then put "," @;
         else do;
                 if find(Prioriteit,'0A'x) > 0 and 2+klength(Prioriteit) = klength(quote(trim(Prioriteit)))
                   then put '22'x Prioriteit +(-1) '22'x "," @;
                   else put Prioriteit @;
              end;
       if missing(Prioriteitsdatum)
         then put "," @;
         else do;
                 if find(Prioriteitsdatum,'0A'x) > 0 and 2+klength(Prioriteitsdatum) = klength(quote(trim(Prioriteitsdatum)))
                   then put '22'x Prioriteitsdatum +(-1) '22'x "," @;
                   else put Prioriteitsdatum @;
              end;
       if missing(Projectomschrijving)
         then put "," @;
         else do;
                 if find(Projectomschrijving,'0A'x) > 0 and 2+klength(Projectomschrijving) = klength(quote(trim(Projectomschrijving)))
                   then put '22'x Projectomschrijving +(-1) '22'x "," @;
                   else put Projectomschrijving @;
              end;
       if missing(Ranking)
         then put "," @;
         else do;
                 if find(Ranking,'0A'x) > 0 and 2+klength(Ranking) = klength(quote(trim(Ranking)))
                   then put '22'x Ranking +(-1) '22'x "," @;
                   else put Ranking @;
              end;
       if missing(RDA_Afhandeling_forfaitair)
         then put "," @;
         else do;
                 if find(RDA_Afhandeling_forfaitair,'0A'x) > 0 and 2+klength(RDA_Afhandeling_forfaitair) = klength(quote(trim(RDA_Afhandeling_forfaitair)))
                   then put '22'x RDA_Afhandeling_forfaitair +(-1) '22'x "," @;
                   else put RDA_Afhandeling_forfaitair @;
              end;
       if missing(RDA_aangevraagd)
         then put "," @;
         else do;
                 if find(RDA_aangevraagd,'0A'x) > 0 and 2+klength(RDA_aangevraagd) = klength(quote(trim(RDA_aangevraagd)))
                   then put '22'x RDA_aangevraagd +(-1) '22'x "," @;
                   else put RDA_aangevraagd @;
              end;
       if missing(Referentie)
         then put "," @;
         else do;
                 if find(Referentie,'0A'x) > 0 and 2+klength(Referentie) = klength(quote(trim(Referentie)))
                   then put '22'x Referentie +(-1) '22'x "," @;
                   else put Referentie @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Reg_nr)
         then put "," @;
         else do;
                 if find(Reg_nr,'0A'x) > 0 and 2+klength(Reg_nr) = klength(quote(trim(Reg_nr)))
                   then put '22'x Reg_nr +(-1) '22'x "," @;
                   else put Reg_nr @;
              end;
       if missing(Rel_id_Aanvrager)
         then put "," @;
         else do;
                 if find(Rel_id_Aanvrager,'0A'x) > 0 and 2+klength(Rel_id_Aanvrager) = klength(quote(trim(Rel_id_Aanvrager)))
                   then put '22'x Rel_id_Aanvrager +(-1) '22'x "," @;
                   else put Rel_id_Aanvrager @;
              end;
       if missing(Rente_perc)
         then put "," @;
         else do;
                 if find(Rente_perc,'0A'x) > 0 and 2+klength(Rente_perc) = klength(quote(trim(Rente_perc)))
                   then put '22'x Rente_perc +(-1) '22'x "," @;
                   else put Rente_perc @;
              end;
       if missing(Samenwerkingsverband1)
         then put "," @;
         else do;
                 if find(Samenwerkingsverband1,'0A'x) > 0 and 2+klength(Samenwerkingsverband1) = klength(quote(trim(Samenwerkingsverband1)))
                   then put '22'x Samenwerkingsverband1 +(-1) '22'x "," @;
                   else put Samenwerkingsverband1 @;
              end;
       if missing(Samenwerkingsverband2)
         then put "," @;
         else do;
                 if find(Samenwerkingsverband2,'0A'x) > 0 and 2+klength(Samenwerkingsverband2) = klength(quote(trim(Samenwerkingsverband2)))
                   then put '22'x Samenwerkingsverband2 +(-1) '22'x "," @;
                   else put Samenwerkingsverband2 @;
              end;
       if missing(SO_loon)
         then put "," @;
         else do;
                 if find(SO_loon,'0A'x) > 0 and 2+klength(SO_loon) = klength(quote(trim(SO_loon)))
                   then put '22'x SO_loon +(-1) '22'x "," @;
                   else put SO_loon @;
              end;
       if missing(Begrote_SO_loonsom)
         then put "," @;
         else do;
                 if find(Begrote_SO_loonsom,'0A'x) > 0 and 2+klength(Begrote_SO_loonsom) = klength(quote(trim(Begrote_SO_loonsom)))
                   then put '22'x Begrote_SO_loonsom +(-1) '22'x "," @;
                   else put Begrote_SO_loonsom @;
              end;
       if missing(SO_uren)
         then put "," @;
         else do;
                 if find(SO_uren,'0A'x) > 0 and 2+klength(SO_uren) = klength(quote(trim(SO_uren)))
                   then put '22'x SO_uren +(-1) '22'x "," @;
                   else put SO_uren @;
              end;
       if missing(Startmaand)
         then put "," @;
         else do;
                 if find(Startmaand,'0A'x) > 0 and 2+klength(Startmaand) = klength(quote(trim(Startmaand)))
                   then put '22'x Startmaand +(-1) '22'x "," @;
                   else put Startmaand @;
              end;
       if missing(Statuscode)
         then put "," @;
         else do;
                 if find(Statuscode,'0A'x) > 0 and 2+klength(Statuscode) = klength(quote(trim(Statuscode)))
                   then put '22'x Statuscode +(-1) '22'x "," @;
                   else put Statuscode @;
              end;
       if missing(Status_cert)
         then put "," @;
         else do;
                 if find(Status_cert,'0A'x) > 0 and 2+klength(Status_cert) = klength(quote(trim(Status_cert)))
                   then put '22'x Status_cert +(-1) '22'x "," @;
                   else put Status_cert @;
              end;
       if missing(Status_oud)
         then put "," @;
         else do;
                 if find(Status_oud,'0A'x) > 0 and 2+klength(Status_oud) = klength(quote(trim(Status_oud)))
                   then put '22'x Status_oud +(-1) '22'x "," @;
                   else put Status_oud @;
              end;
       if missing(status_SO_uurloon)
         then put "," @;
         else do;
                 if find(status_SO_uurloon,'0A'x) > 0 and 2+klength(status_SO_uurloon) = klength(quote(trim(status_SO_uurloon)))
                   then put '22'x status_SO_uurloon +(-1) '22'x "," @;
                   else put status_SO_uurloon @;
              end;
       if missing(Status_TT)
         then put "," @;
         else do;
                 if find(Status_TT,'0A'x) > 0 and 2+klength(Status_TT) = klength(quote(trim(Status_TT)))
                   then put '22'x Status_TT +(-1) '22'x "," @;
                   else put Status_TT @;
              end;
       if missing(Statusgroep)
         then put "," @;
         else do;
                 if find(Statusgroep,'0A'x) > 0 and 2+klength(Statusgroep) = klength(quote(trim(Statusgroep)))
                   then put '22'x Statusgroep +(-1) '22'x "," @;
                   else put Statusgroep @;
              end;
       if missing(Statustermijn)
         then put "," @;
         else do;
                 if find(Statustermijn,'0A'x) > 0 and 2+klength(Statustermijn) = klength(quote(trim(Statustermijn)))
                   then put '22'x Statustermijn +(-1) '22'x "," @;
                   else put Statustermijn @;
              end;
       if missing(Status_E_Diensten)
         then put "," @;
         else do;
                 if find(Status_E_Diensten,'0A'x) > 0 and 2+klength(Status_E_Diensten) = klength(quote(trim(Status_E_Diensten)))
                   then put '22'x Status_E_Diensten +(-1) '22'x "," @;
                   else put Status_E_Diensten @;
              end;
       if missing(Status_E_Loket)
         then put "," @;
         else do;
                 if find(Status_E_Loket,'0A'x) > 0 and 2+klength(Status_E_Loket) = klength(quote(trim(Status_E_Loket)))
                   then put '22'x Status_E_Loket +(-1) '22'x "," @;
                   else put Status_E_Loket @;
              end;
       if missing(Technisch_succes)
         then put "," @;
         else do;
                 if find(Technisch_succes,'0A'x) > 0 and 2+klength(Technisch_succes) = klength(quote(trim(Technisch_succes)))
                   then put '22'x Technisch_succes +(-1) '22'x "," @;
                   else put Technisch_succes @;
              end;
       if missing(Technisch_Cor_id)
         then put "," @;
         else do;
                 if find(Technisch_Cor_id,'0A'x) > 0 and 2+klength(Technisch_Cor_id) = klength(quote(trim(Technisch_Cor_id)))
                   then put '22'x Technisch_Cor_id +(-1) '22'x "," @;
                   else put Technisch_Cor_id @;
              end;
       if missing(Titel)
         then put "," @;
         else do;
                 if find(Titel,'0A'x) > 0 and 2+klength(Titel) = klength(quote(trim(Titel)))
                   then put '22'x Titel +(-1) '22'x "," @;
                   else put Titel @;
              end;
       if missing(Afgelost_op_onvoorw_hoofdsom)
         then put "," @;
         else do;
                 if find(Afgelost_op_onvoorw_hoofdsom,'0A'x) > 0 and 2+klength(Afgelost_op_onvoorw_hoofdsom) = klength(quote(trim(Afgelost_op_onvoorw_hoofdsom)))
                   then put '22'x Afgelost_op_onvoorw_hoofdsom +(-1) '22'x "," @;
                   else put Afgelost_op_onvoorw_hoofdsom @;
              end;
       if missing(Afgelost_op_onvoorw_rente)
         then put "," @;
         else do;
                 if find(Afgelost_op_onvoorw_rente,'0A'x) > 0 and 2+klength(Afgelost_op_onvoorw_rente) = klength(quote(trim(Afgelost_op_onvoorw_rente)))
                   then put '22'x Afgelost_op_onvoorw_rente +(-1) '22'x "," @;
                   else put Afgelost_op_onvoorw_rente @;
              end;
       if missing(Totaal_afgelost_op_hoofdsom)
         then put "," @;
         else do;
                 if find(Totaal_afgelost_op_hoofdsom,'0A'x) > 0 and 2+klength(Totaal_afgelost_op_hoofdsom) = klength(quote(trim(Totaal_afgelost_op_hoofdsom)))
                   then put '22'x Totaal_afgelost_op_hoofdsom +(-1) '22'x "," @;
                   else put Totaal_afgelost_op_hoofdsom @;
              end;
       if missing(Totaal_ontvangen_rente)
         then put "," @;
         else do;
                 if find(Totaal_ontvangen_rente,'0A'x) > 0 and 2+klength(Totaal_ontvangen_rente) = klength(quote(trim(Totaal_ontvangen_rente)))
                   then put '22'x Totaal_ontvangen_rente +(-1) '22'x "," @;
                   else put Totaal_ontvangen_rente @;
              end;
       if missing(Totaal_bijgeschreven_rente)
         then put "," @;
         else do;
                 if find(Totaal_bijgeschreven_rente,'0A'x) > 0 and 2+klength(Totaal_bijgeschreven_rente) = klength(quote(trim(Totaal_bijgeschreven_rente)))
                   then put '22'x Totaal_bijgeschreven_rente +(-1) '22'x "," @;
                   else put Totaal_bijgeschreven_rente @;
              end;
       if missing(Direct_opeisbare_vordering)
         then put "," @;
         else do;
                 if find(Direct_opeisbare_vordering,'0A'x) > 0 and 2+klength(Direct_opeisbare_vordering) = klength(quote(trim(Direct_opeisbare_vordering)))
                   then put '22'x Direct_opeisbare_vordering +(-1) '22'x "," @;
                   else put Direct_opeisbare_vordering @;
              end;
       if missing(Direct_opeisbare_hoofdsom)
         then put "," @;
         else do;
                 if find(Direct_opeisbare_hoofdsom,'0A'x) > 0 and 2+klength(Direct_opeisbare_hoofdsom) = klength(quote(trim(Direct_opeisbare_hoofdsom)))
                   then put '22'x Direct_opeisbare_hoofdsom +(-1) '22'x "," @;
                   else put Direct_opeisbare_hoofdsom @;
              end;
       if missing(Direct_opeisbare_rente)
         then put "," @;
         else do;
                 if find(Direct_opeisbare_rente,'0A'x) > 0 and 2+klength(Direct_opeisbare_rente) = klength(quote(trim(Direct_opeisbare_rente)))
                   then put '22'x Direct_opeisbare_rente +(-1) '22'x "," @;
                   else put Direct_opeisbare_rente @;
              end;
       if missing(Totaal_gecommitteerd_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_gecommitteerd_bedrag,'0A'x) > 0 and 2+klength(Totaal_gecommitteerd_bedrag) = klength(quote(trim(Totaal_gecommitteerd_bedrag)))
                   then put '22'x Totaal_gecommitteerd_bedrag +(-1) '22'x "," @;
                   else put Totaal_gecommitteerd_bedrag @;
              end;
       if missing(Zegge_Totaal_gecommitteerd)
         then put "," @;
         else do;
                 if find(Zegge_Totaal_gecommitteerd,'0A'x) > 0 and 2+klength(Zegge_Totaal_gecommitteerd) = klength(quote(trim(Zegge_Totaal_gecommitteerd)))
                   then put '22'x Zegge_Totaal_gecommitteerd +(-1) '22'x "," @;
                   else put Zegge_Totaal_gecommitteerd @;
              end;
       if missing(Totaal_gedeclareerd_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_gedeclareerd_bedrag,'0A'x) > 0 and 2+klength(Totaal_gedeclareerd_bedrag) = klength(quote(trim(Totaal_gedeclareerd_bedrag)))
                   then put '22'x Totaal_gedeclareerd_bedrag +(-1) '22'x "," @;
                   else put Totaal_gedeclareerd_bedrag @;
              end;
       if missing(Totaal_geschoonde_kosten)
         then put "," @;
         else do;
                 if find(Totaal_geschoonde_kosten,'0A'x) > 0 and 2+klength(Totaal_geschoonde_kosten) = klength(quote(trim(Totaal_geschoonde_kosten)))
                   then put '22'x Totaal_geschoonde_kosten +(-1) '22'x "," @;
                   else put Totaal_geschoonde_kosten @;
              end;
       if missing(Totale_hoofdsom)
         then put "," @;
         else do;
                 if find(Totale_hoofdsom,'0A'x) > 0 and 2+klength(Totale_hoofdsom) = klength(quote(trim(Totale_hoofdsom)))
                   then put '22'x Totale_hoofdsom +(-1) '22'x "," @;
                   else put Totale_hoofdsom @;
              end;
       if missing(Totaal_ingetrokken_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_ingetrokken_bedrag,'0A'x) > 0 and 2+klength(Totaal_ingetrokken_bedrag) = klength(quote(trim(Totaal_ingetrokken_bedrag)))
                   then put '22'x Totaal_ingetrokken_bedrag +(-1) '22'x "," @;
                   else put Totaal_ingetrokken_bedrag @;
              end;
       if missing(Kwijtsch_onvoorw_hoofdsom)
         then put "," @;
         else do;
                 if find(Kwijtsch_onvoorw_hoofdsom,'0A'x) > 0 and 2+klength(Kwijtsch_onvoorw_hoofdsom) = klength(quote(trim(Kwijtsch_onvoorw_hoofdsom)))
                   then put '22'x Kwijtsch_onvoorw_hoofdsom +(-1) '22'x "," @;
                   else put Kwijtsch_onvoorw_hoofdsom @;
              end;
       if missing(Kwijtsch_onvoorw_rente)
         then put "," @;
         else do;
                 if find(Kwijtsch_onvoorw_rente,'0A'x) > 0 and 2+klength(Kwijtsch_onvoorw_rente) = klength(quote(trim(Kwijtsch_onvoorw_rente)))
                   then put '22'x Kwijtsch_onvoorw_rente +(-1) '22'x "," @;
                   else put Kwijtsch_onvoorw_rente @;
              end;
       if missing(Kwijtsch_direct_opeisbaar)
         then put "," @;
         else do;
                 if find(Kwijtsch_direct_opeisbaar,'0A'x) > 0 and 2+klength(Kwijtsch_direct_opeisbaar) = klength(quote(trim(Kwijtsch_direct_opeisbaar)))
                   then put '22'x Kwijtsch_direct_opeisbaar +(-1) '22'x "," @;
                   else put Kwijtsch_direct_opeisbaar @;
              end;
       if missing(Kwijtsch_voorw_hoofdsom)
         then put "," @;
         else do;
                 if find(Kwijtsch_voorw_hoofdsom,'0A'x) > 0 and 2+klength(Kwijtsch_voorw_hoofdsom) = klength(quote(trim(Kwijtsch_voorw_hoofdsom)))
                   then put '22'x Kwijtsch_voorw_hoofdsom +(-1) '22'x "," @;
                   else put Kwijtsch_voorw_hoofdsom @;
              end;
       if missing(Kwijtsch_voorw_rente)
         then put "," @;
         else do;
                 if find(Kwijtsch_voorw_rente,'0A'x) > 0 and 2+klength(Kwijtsch_voorw_rente) = klength(quote(trim(Kwijtsch_voorw_rente)))
                   then put '22'x Kwijtsch_voorw_rente +(-1) '22'x "," @;
                   else put Kwijtsch_voorw_rente @;
              end;
       if missing(Totaal_kwijtgescholden_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_kwijtgescholden_bedrag,'0A'x) > 0 and 2+klength(Totaal_kwijtgescholden_bedrag) = klength(quote(trim(Totaal_kwijtgescholden_bedrag)))
                   then put '22'x Totaal_kwijtgescholden_bedrag +(-1) '22'x "," @;
                   else put Totaal_kwijtgescholden_bedrag @;
              end;
       if missing(Totaal_openstaand_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_openstaand_bedrag,'0A'x) > 0 and 2+klength(Totaal_openstaand_bedrag) = klength(quote(trim(Totaal_openstaand_bedrag)))
                   then put '22'x Totaal_openstaand_bedrag +(-1) '22'x "," @;
                   else put Totaal_openstaand_bedrag @;
              end;
       if missing(Direct_opeisbaar_gesteld)
         then put "," @;
         else do;
                 if find(Direct_opeisbaar_gesteld,'0A'x) > 0 and 2+klength(Direct_opeisbaar_gesteld) = klength(quote(trim(Direct_opeisbaar_gesteld)))
                   then put '22'x Direct_opeisbaar_gesteld +(-1) '22'x "," @;
                   else put Direct_opeisbaar_gesteld @;
              end;
       if missing(Totaal_uitbetaald)
         then put "," @;
         else do;
                 if find(Totaal_uitbetaald,'0A'x) > 0 and 2+klength(Totaal_uitbetaald) = klength(quote(trim(Totaal_uitbetaald)))
                   then put '22'x Totaal_uitbetaald +(-1) '22'x "," @;
                   else put Totaal_uitbetaald @;
              end;
       if missing(Totaal_verleend_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_verleend_bedrag,'0A'x) > 0 and 2+klength(Totaal_verleend_bedrag) = klength(quote(trim(Totaal_verleend_bedrag)))
                   then put '22'x Totaal_verleend_bedrag +(-1) '22'x "," @;
                   else put Totaal_verleend_bedrag @;
              end;
       if missing(Uitlening_binnen_Fisc_eenheid)
         then put "," @;
         else do;
                 if find(Uitlening_binnen_Fisc_eenheid,'0A'x) > 0 and 2+klength(Uitlening_binnen_Fisc_eenheid) = klength(quote(trim(Uitlening_binnen_Fisc_eenheid)))
                   then put '22'x Uitlening_binnen_Fisc_eenheid +(-1) '22'x "," @;
                   else put Uitlening_binnen_Fisc_eenheid @;
              end;
       if missing(Uurloon_jaar)
         then put "," @;
         else do;
                 if find(Uurloon_jaar,'0A'x) > 0 and 2+klength(Uurloon_jaar) = klength(quote(trim(Uurloon_jaar)))
                   then put '22'x Uurloon_jaar +(-1) '22'x "," @;
                   else put Uurloon_jaar @;
              end;
       if missing(Vaststellen_batch)
         then put "," @;
         else do;
                 if find(Vaststellen_batch,'0A'x) > 0 and 2+klength(Vaststellen_batch) = klength(quote(trim(Vaststellen_batch)))
                   then put '22'x Vaststellen_batch +(-1) '22'x "," @;
                   else put Vaststellen_batch @;
              end;
       if missing(Vergoedingsperc)
         then put "," @;
         else do;
                 if find(Vergoedingsperc,'0A'x) > 0 and 2+klength(Vergoedingsperc) = klength(quote(trim(Vergoedingsperc)))
                   then put '22'x Vergoedingsperc +(-1) '22'x "," @;
                   else put Vergoedingsperc @;
              end;
       if missing(Volgnr_LB)
         then put "," @;
         else do;
                 if find(Volgnr_LB,'0A'x) > 0 and 2+klength(Volgnr_LB) = klength(quote(trim(Volgnr_LB)))
                   then put '22'x Volgnr_LB +(-1) '22'x "," @;
                   else put Volgnr_LB @;
              end;
       if missing(Voorlopig_gecommitteerd)
         then put "," @;
         else do;
                 if find(Voorlopig_gecommitteerd,'0A'x) > 0 and 2+klength(Voorlopig_gecommitteerd) = klength(quote(trim(Voorlopig_gecommitteerd)))
                   then put '22'x Voorlopig_gecommitteerd +(-1) '22'x "," @;
                   else put Voorlopig_gecommitteerd @;
              end;
       if missing(Voorlopig_gedeclareerd)
         then put "," @;
         else do;
                 if find(Voorlopig_gedeclareerd,'0A'x) > 0 and 2+klength(Voorlopig_gedeclareerd) = klength(quote(trim(Voorlopig_gedeclareerd)))
                   then put '22'x Voorlopig_gedeclareerd +(-1) '22'x "," @;
                   else put Voorlopig_gedeclareerd @;
              end;
       if missing(Vorig_aanvraag_bedrijf_nr)
         then put "," @;
         else do;
                 if find(Vorig_aanvraag_bedrijf_nr,'0A'x) > 0 and 2+klength(Vorig_aanvraag_bedrijf_nr) = klength(quote(trim(Vorig_aanvraag_bedrijf_nr)))
                   then put '22'x Vorig_aanvraag_bedrijf_nr +(-1) '22'x "," @;
                   else put Vorig_aanvraag_bedrijf_nr @;
              end;
       if missing(Vorig_aanvraagjaar)
         then put "," @;
         else do;
                 if find(Vorig_aanvraagjaar,'0A'x) > 0 and 2+klength(Vorig_aanvraagjaar) = klength(quote(trim(Vorig_aanvraagjaar)))
                   then put '22'x Vorig_aanvraagjaar +(-1) '22'x "," @;
                   else put Vorig_aanvraagjaar @;
              end;
       if missing(Vorig_aanvraagnummer)
         then put "," @;
         else do;
                 if find(Vorig_aanvraagnummer,'0A'x) > 0 and 2+klength(Vorig_aanvraagnummer) = klength(quote(trim(Vorig_aanvraagnummer)))
                   then put '22'x Vorig_aanvraagnummer +(-1) '22'x "," @;
                   else put Vorig_aanvraagnummer @;
              end;
       if missing(Vorie_aanvraagperiode)
         then put "," @;
         else do;
                 if find(Vorie_aanvraagperiode,'0A'x) > 0 and 2+klength(Vorie_aanvraagperiode) = klength(quote(trim(Vorie_aanvraagperiode)))
                   then put '22'x Vorie_aanvraagperiode +(-1) '22'x "," @;
                   else put Vorie_aanvraagperiode @;
              end;
       if missing(Vorig_aanvraag_volgnr)
         then put "," @;
         else do;
                 if find(Vorig_aanvraag_volgnr,'0A'x) > 0 and 2+klength(Vorig_aanvraag_volgnr) = klength(quote(trim(Vorig_aanvraag_volgnr)))
                   then put '22'x Vorig_aanvraag_volgnr +(-1) '22'x "," @;
                   else put Vorig_aanvraag_volgnr @;
              end;
       if missing(Vaststelling_conform_aanvraag)
         then put "," @;
         else do;
                 if find(Vaststelling_conform_aanvraag,'0A'x) > 0 and 2+klength(Vaststelling_conform_aanvraag) = klength(quote(trim(Vaststelling_conform_aanvraag)))
                   then put '22'x Vaststelling_conform_aanvraag +(-1) '22'x "," @;
                   else put Vaststelling_conform_aanvraag @;
              end;
       if missing(VV_Aanvraagnummer)
         then put "," @;
         else do;
                 if find(VV_Aanvraagnummer,'0A'x) > 0 and 2+klength(VV_Aanvraagnummer) = klength(quote(trim(VV_Aanvraagnummer)))
                   then put '22'x VV_Aanvraagnummer +(-1) '22'x "," @;
                   else put VV_Aanvraagnummer @;
              end;
       if missing(Wel_akkoord_niet_verlenen)
         then put "," @;
         else do;
                 if find(Wel_akkoord_niet_verlenen,'0A'x) > 0 and 2+klength(Wel_akkoord_niet_verlenen) = klength(quote(trim(Wel_akkoord_niet_verlenen)))
                   then put '22'x Wel_akkoord_niet_verlenen +(-1) '22'x "," @;
                   else put Wel_akkoord_niet_verlenen @;
              end;
       if missing(Aangeboden_aan_ZER)
         then put "," @;
         else do;
                 if find(Aangeboden_aan_ZER,'0A'x) > 0 and 2+klength(Aangeboden_aan_ZER) = klength(quote(trim(Aangeboden_aan_ZER)))
                   then put '22'x Aangeboden_aan_ZER +(-1) '22'x "," @;
                   else put Aangeboden_aan_ZER @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DOSSIERGROEP AS
   SELECT t1.Ddg_id,
          t1.Age_id,
          t1.Naam,
          t1.Toelichting,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.DAM_DOSSIERGROEP_TCMG t1;
QUIT;

data WORK.BAS_DAM_DOSSIERGROEP;
  set WORK.BAS_DAM_DOSSIERGROEP;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIERGROEP.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Ddg_id" 
       ','
          "Age_id" 
       ','
          "Naam" 
       ','
          "Toelichting" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DOSSIERGROEP   end=EFIEOD; 
       format Ddg_id best12. ;
       format Age_id best12. ;
       format Naam  ;
       format Toelichting  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Ddg_id)
         then put "," @;
         else do;
                 if find(Ddg_id,'0A'x) > 0 and 2+klength(Ddg_id) = klength(quote(trim(Ddg_id)))
                   then put '22'x Ddg_id +(-1) '22'x "," @;
                   else put Ddg_id @;
              end;
       if missing(Age_id)
         then put "," @;
         else do;
                 if find(Age_id,'0A'x) > 0 and 2+klength(Age_id) = klength(quote(trim(Age_id)))
                   then put '22'x Age_id +(-1) '22'x "," @;
                   else put Age_id @;
              end;
       if missing(Naam)
         then put "," @;
         else do;
                 if find(Naam,'0A'x) > 0 and 2+klength(Naam) = klength(quote(trim(Naam)))
                   then put '22'x Naam +(-1) '22'x "," @;
                   else put Naam @;
              end;
       if missing(Toelichting)
         then put "," @;
         else do;
                 if find(Toelichting,'0A'x) > 0 and 2+klength(Toelichting) = klength(quote(trim(Toelichting)))
                   then put '22'x Toelichting +(-1) '22'x "," @;
                   else put Toelichting @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_LOKATIEADRES AS
   SELECT t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.DLS_id,
          t1.Lok_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.RAE_id,
          t1.RAS_id
     FROM DATAQASG.DAM_LOKATIEADRES_TCMG t1;
QUIT;

data WORK.BAS_DAM_LOKATIEADRES;
  set WORK.BAS_DAM_LOKATIEADRES;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_LOKATIEADRES.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "DLS_id" 
       ','
          "Lok_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "RAE_id" 
       ','
          "RAS_id" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_LOKATIEADRES   end=EFIEOD; 
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format DLS_id best12. ;
       format Lok_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format RAE_id best12. ;
       format RAS_id best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(DLS_id)
         then put "," @;
         else do;
                 if find(DLS_id,'0A'x) > 0 and 2+klength(DLS_id) = klength(quote(trim(DLS_id)))
                   then put '22'x DLS_id +(-1) '22'x "," @;
                   else put DLS_id @;
              end;
       if missing(Lok_id)
         then put "," @;
         else do;
                 if find(Lok_id,'0A'x) > 0 and 2+klength(Lok_id) = klength(quote(trim(Lok_id)))
                   then put '22'x Lok_id +(-1) '22'x "," @;
                   else put Lok_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(RAE_id)
         then put "," @;
         else do;
                 if find(RAE_id,'0A'x) > 0 and 2+klength(RAE_id) = klength(quote(trim(RAE_id)))
                   then put '22'x RAE_id +(-1) '22'x "," @;
                   else put RAE_id @;
              end;
       if missing(RAS_id)
         then put "," @;
         else do;
                 if find(RAS_id,'0A'x) > 0 and 2+klength(RAS_id) = klength(quote(trim(RAS_id)))
                   then put '22'x RAS_id +(-1) '22'x "," @;
                   else put RAS_id @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_MDW_INTERN_HIST AS
   SELECT t1.Dos_id,
          t1.Prg_id,
          t1.Mdw_id,
          t1.Rol_cd,
          t1.Datum_van FORMAT=B8601DT19. AS Datum_van,
          t1.Datum_tot FORMAT=B8601DT19. AS Datum_tot,
          t1.Behandelend,
          t1.Notitie,
          t1.Mdw_id_voorheen,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.DAM_MDW_INTERN_HIST_TCMG t1;
QUIT;

data WORK.BAS_DAM_MDW_INTERN_HIST;
  set WORK.BAS_DAM_MDW_INTERN_HIST;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_MDW_INTERN_HIST.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Dos_id" 
       ','
          "Prg_id" 
       ','
          "Mdw_id" 
       ','
          "Rol_cd" 
       ','
          "Datum_van" 
       ','
          "Datum_tot" 
       ','
          "Behandelend" 
       ','
          "Notitie" 
       ','
          "Mdw_id_voorheen" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_MDW_INTERN_HIST   end=EFIEOD; 
       format Dos_id best12. ;
       format Prg_id best12. ;
       format Mdw_id best12. ;
       format Rol_cd  ;
       format Datum_van B8601DT19. ;
       format Datum_tot B8601DT19. ;
       format Behandelend  ;
       format Notitie  ;
       format Mdw_id_voorheen best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Datum_van)
         then put "," @;
         else do;
                 if find(Datum_van,'0A'x) > 0 and 2+klength(Datum_van) = klength(quote(trim(Datum_van)))
                   then put '22'x Datum_van +(-1) '22'x "," @;
                   else put Datum_van @;
              end;
       if missing(Datum_tot)
         then put "," @;
         else do;
                 if find(Datum_tot,'0A'x) > 0 and 2+klength(Datum_tot) = klength(quote(trim(Datum_tot)))
                   then put '22'x Datum_tot +(-1) '22'x "," @;
                   else put Datum_tot @;
              end;
       if missing(Behandelend)
         then put "," @;
         else do;
                 if find(Behandelend,'0A'x) > 0 and 2+klength(Behandelend) = klength(quote(trim(Behandelend)))
                   then put '22'x Behandelend +(-1) '22'x "," @;
                   else put Behandelend @;
              end;
       if missing(Notitie)
         then put "," @;
         else do;
                 if find(Notitie,'0A'x) > 0 and 2+klength(Notitie) = klength(quote(trim(Notitie)))
                   then put '22'x Notitie +(-1) '22'x "," @;
                   else put Notitie @;
              end;
       if missing(Mdw_id_voorheen)
         then put "," @;
         else do;
                 if find(Mdw_id_voorheen,'0A'x) > 0 and 2+klength(Mdw_id_voorheen) = klength(quote(trim(Mdw_id_voorheen)))
                   then put '22'x Mdw_id_voorheen +(-1) '22'x "," @;
                   else put Mdw_id_voorheen @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_MDW_INTERN AS
   SELECT t1.Behandelend,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dos_id,
          t1.Mdw_id,
          t1.Mdw_id_voorheen,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Notitie,
          t1.Prg_id,
          t1.Rol_cd
     FROM DATAQASG.DAM_MDW_INTERN_TCMG t1;
QUIT;

data WORK.BAS_DAM_MDW_INTERN;
  set WORK.BAS_DAM_MDW_INTERN;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_MDW_INTERN.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Behandelend" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dos_id" 
       ','
          "Mdw_id" 
       ','
          "Mdw_id_voorheen" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Notitie" 
       ','
          "Prg_id" 
       ','
          "Rol_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_MDW_INTERN   end=EFIEOD; 
       format Behandelend  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dos_id best12. ;
       format Mdw_id best12. ;
       format Mdw_id_voorheen best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Notitie  ;
       format Prg_id best12. ;
       format Rol_cd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Behandelend)
         then put "," @;
         else do;
                 if find(Behandelend,'0A'x) > 0 and 2+klength(Behandelend) = klength(quote(trim(Behandelend)))
                   then put '22'x Behandelend +(-1) '22'x "," @;
                   else put Behandelend @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Mdw_id_voorheen)
         then put "," @;
         else do;
                 if find(Mdw_id_voorheen,'0A'x) > 0 and 2+klength(Mdw_id_voorheen) = klength(quote(trim(Mdw_id_voorheen)))
                   then put '22'x Mdw_id_voorheen +(-1) '22'x "," @;
                   else put Mdw_id_voorheen @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Notitie)
         then put "," @;
         else do;
                 if find(Notitie,'0A'x) > 0 and 2+klength(Notitie) = klength(quote(trim(Notitie)))
                   then put '22'x Notitie +(-1) '22'x "," @;
                   else put Notitie @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_STATUSHISTORIE AS
   SELECT t1.Commentaar,
          t1.Cor_id_tot,
          t1.Cor_id_van,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Datum_tot FORMAT=B8601DT19. AS Datum_tot,
          t1.Datum_van FORMAT=B8601DT19. AS Datum_van,
          t1.Dos_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Ssg_cd,
          t1.Sts_cd,
          t1.Volg_nr
     FROM DATAQASG.DAM_STATUSHISTORIE_TCMG t1;
QUIT;

data WORK.BAS_DAM_STATUSHISTORIE;
  set WORK.BAS_DAM_STATUSHISTORIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_STATUSHISTORIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Commentaar" 
       ','
          "Cor_id_tot" 
       ','
          "Cor_id_van" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Datum_tot" 
       ','
          "Datum_van" 
       ','
          "Dos_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Ssg_cd" 
       ','
          "Sts_cd" 
       ','
          "Volg_nr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_STATUSHISTORIE   end=EFIEOD; 
       format Commentaar  ;
       format Cor_id_tot best12. ;
       format Cor_id_van best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Datum_tot B8601DT19. ;
       format Datum_van B8601DT19. ;
       format Dos_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Ssg_cd  ;
       format Sts_cd  ;
       format Volg_nr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Commentaar)
         then put "," @;
         else do;
                 if find(Commentaar,'0A'x) > 0 and 2+klength(Commentaar) = klength(quote(trim(Commentaar)))
                   then put '22'x Commentaar +(-1) '22'x "," @;
                   else put Commentaar @;
              end;
       if missing(Cor_id_tot)
         then put "," @;
         else do;
                 if find(Cor_id_tot,'0A'x) > 0 and 2+klength(Cor_id_tot) = klength(quote(trim(Cor_id_tot)))
                   then put '22'x Cor_id_tot +(-1) '22'x "," @;
                   else put Cor_id_tot @;
              end;
       if missing(Cor_id_van)
         then put "," @;
         else do;
                 if find(Cor_id_van,'0A'x) > 0 and 2+klength(Cor_id_van) = klength(quote(trim(Cor_id_van)))
                   then put '22'x Cor_id_van +(-1) '22'x "," @;
                   else put Cor_id_van @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Datum_tot)
         then put "," @;
         else do;
                 if find(Datum_tot,'0A'x) > 0 and 2+klength(Datum_tot) = klength(quote(trim(Datum_tot)))
                   then put '22'x Datum_tot +(-1) '22'x "," @;
                   else put Datum_tot @;
              end;
       if missing(Datum_van)
         then put "," @;
         else do;
                 if find(Datum_van,'0A'x) > 0 and 2+klength(Datum_van) = klength(quote(trim(Datum_van)))
                   then put '22'x Datum_van +(-1) '22'x "," @;
                   else put Datum_van @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Ssg_cd)
         then put "," @;
         else do;
                 if find(Ssg_cd,'0A'x) > 0 and 2+klength(Ssg_cd) = klength(quote(trim(Ssg_cd)))
                   then put '22'x Ssg_cd +(-1) '22'x "," @;
                   else put Ssg_cd @;
              end;
       if missing(Sts_cd)
         then put "," @;
         else do;
                 if find(Sts_cd,'0A'x) > 0 and 2+klength(Sts_cd) = klength(quote(trim(Sts_cd)))
                   then put '22'x Sts_cd +(-1) '22'x "," @;
                   else put Sts_cd @;
              end;
       if missing(Volg_nr)
         then put "," @;
         else do;
                 if find(Volg_nr,'0A'x) > 0 and 2+klength(Volg_nr) = klength(quote(trim(Volg_nr)))
                   then put '22'x Volg_nr +(-1) '22'x "," @;
                   else put Volg_nr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_TERMIJN_PARAAF_NOTITIE AS
   SELECT t1.Cor_id,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dos_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Ter_id,
          t1.Toelichting
     FROM DATAQASG.DAM_TERMIJN_PARAAF_NOTITIE_TCMG t1;
QUIT;

data WORK.BAS_DAM_TERMIJN_PARAAF_NOTITIE;
  set WORK.BAS_DAM_TERMIJN_PARAAF_NOTITIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_TERMIJN_PARAAF_NOTITIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Cor_id" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dos_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Ter_id" 
       ','
          "Toelichting" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_TERMIJN_PARAAF_NOTITIE   end=EFIEOD; 
       format Cor_id best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dos_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Ter_id best12. ;
       format Toelichting  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Ter_id)
         then put "," @;
         else do;
                 if find(Ter_id,'0A'x) > 0 and 2+klength(Ter_id) = klength(quote(trim(Ter_id)))
                   then put '22'x Ter_id +(-1) '22'x "," @;
                   else put Ter_id @;
              end;
       /* OPGELET: Toelichting WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_DAM_TERMIJN AS
   SELECT t1.Aanvullende_voorwaarden,
          t1.Actie,
          t1.Actie_dat FORMAT=B8601DT19. AS Actie_dat,
          t1.Con_id,
          t1.Cor_id,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dos_id,
          t1.Dossiergroep_ter_id,
          t1.Mdw_id,
          t1.Mdw_id_afgemeld,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Notitie,
          t1.Opgevoerd_dat FORMAT=B8601DT19. AS Opgevoerd_dat,
          t1.Opschortend_jn,
          t1.Prg_id,
          t1.Reactie_cd,
          t1.Rol_cd,
          t1.Ter_id,
          t1.Voldaan_dat FORMAT=B8601DT19. AS Voldaan_dat,
          t1.Volgorde_paraaf
     FROM DATAQASG.DAM_TERMIJN_TCMG t1;
QUIT;

data WORK.BAS_DAM_TERMIJN;
  set WORK.BAS_DAM_TERMIJN;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_TERMIJN.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Aanvullende_voorwaarden" 
       ','
          "Actie" 
       ','
          "Actie_dat" 
       ','
          "Con_id" 
       ','
          "Cor_id" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dos_id" 
       ','
          "Dossiergroep_ter_id" 
       ','
          "Mdw_id" 
       ','
          "Mdw_id_afgemeld" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Notitie" 
       ','
          "Opgevoerd_dat" 
       ','
          "Opschortend_jn" 
       ','
          "Prg_id" 
       ','
          "Reactie_cd" 
       ','
          "Rol_cd" 
       ','
          "Ter_id" 
       ','
          "Voldaan_dat" 
       ','
          "Volgorde_paraaf" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_TERMIJN   end=EFIEOD; 
       format Aanvullende_voorwaarden  ;
       format Actie  ;
       format Actie_dat B8601DT19. ;
       format Con_id best12. ;
       format Cor_id best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dos_id best12. ;
       format Dossiergroep_ter_id best12. ;
       format Mdw_id  ;
       format Mdw_id_afgemeld best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Notitie  ;
       format Opgevoerd_dat B8601DT19. ;
       format Opschortend_jn  ;
       format Prg_id best12. ;
       format Reactie_cd  ;
       format Rol_cd  ;
       format Ter_id best12. ;
       format Voldaan_dat B8601DT19. ;
       format Volgorde_paraaf best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Aanvullende_voorwaarden)
         then put "," @;
         else do;
                 if find(Aanvullende_voorwaarden,'0A'x) > 0 and 2+klength(Aanvullende_voorwaarden) = klength(quote(trim(Aanvullende_voorwaarden)))
                   then put '22'x Aanvullende_voorwaarden +(-1) '22'x "," @;
                   else put Aanvullende_voorwaarden @;
              end;
       if missing(Actie)
         then put "," @;
         else do;
                 if find(Actie,'0A'x) > 0 and 2+klength(Actie) = klength(quote(trim(Actie)))
                   then put '22'x Actie +(-1) '22'x "," @;
                   else put Actie @;
              end;
       if missing(Actie_dat)
         then put "," @;
         else do;
                 if find(Actie_dat,'0A'x) > 0 and 2+klength(Actie_dat) = klength(quote(trim(Actie_dat)))
                   then put '22'x Actie_dat +(-1) '22'x "," @;
                   else put Actie_dat @;
              end;
       if missing(Con_id)
         then put "," @;
         else do;
                 if find(Con_id,'0A'x) > 0 and 2+klength(Con_id) = klength(quote(trim(Con_id)))
                   then put '22'x Con_id +(-1) '22'x "," @;
                   else put Con_id @;
              end;
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Dossiergroep_ter_id)
         then put "," @;
         else do;
                 if find(Dossiergroep_ter_id,'0A'x) > 0 and 2+klength(Dossiergroep_ter_id) = klength(quote(trim(Dossiergroep_ter_id)))
                   then put '22'x Dossiergroep_ter_id +(-1) '22'x "," @;
                   else put Dossiergroep_ter_id @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Mdw_id_afgemeld)
         then put "," @;
         else do;
                 if find(Mdw_id_afgemeld,'0A'x) > 0 and 2+klength(Mdw_id_afgemeld) = klength(quote(trim(Mdw_id_afgemeld)))
                   then put '22'x Mdw_id_afgemeld +(-1) '22'x "," @;
                   else put Mdw_id_afgemeld @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Notitie)
         then put "," @;
         else do;
                 if find(Notitie,'0A'x) > 0 and 2+klength(Notitie) = klength(quote(trim(Notitie)))
                   then put '22'x Notitie +(-1) '22'x "," @;
                   else put Notitie @;
              end;
       if missing(Opgevoerd_dat)
         then put "," @;
         else do;
                 if find(Opgevoerd_dat,'0A'x) > 0 and 2+klength(Opgevoerd_dat) = klength(quote(trim(Opgevoerd_dat)))
                   then put '22'x Opgevoerd_dat +(-1) '22'x "," @;
                   else put Opgevoerd_dat @;
              end;
       if missing(Opschortend_jn)
         then put "," @;
         else do;
                 if find(Opschortend_jn,'0A'x) > 0 and 2+klength(Opschortend_jn) = klength(quote(trim(Opschortend_jn)))
                   then put '22'x Opschortend_jn +(-1) '22'x "," @;
                   else put Opschortend_jn @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Reactie_cd)
         then put "," @;
         else do;
                 if find(Reactie_cd,'0A'x) > 0 and 2+klength(Reactie_cd) = klength(quote(trim(Reactie_cd)))
                   then put '22'x Reactie_cd +(-1) '22'x "," @;
                   else put Reactie_cd @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Ter_id)
         then put "," @;
         else do;
                 if find(Ter_id,'0A'x) > 0 and 2+klength(Ter_id) = klength(quote(trim(Ter_id)))
                   then put '22'x Ter_id +(-1) '22'x "," @;
                   else put Ter_id @;
              end;
       if missing(Voldaan_dat)
         then put "," @;
         else do;
                 if find(Voldaan_dat,'0A'x) > 0 and 2+klength(Voldaan_dat) = klength(quote(trim(Voldaan_dat)))
                   then put '22'x Voldaan_dat +(-1) '22'x "," @;
                   else put Voldaan_dat @;
              end;
       if missing(Volgorde_paraaf)
         then put "," @;
         else do;
                 if find(Volgorde_paraaf,'0A'x) > 0 and 2+klength(Volgorde_paraaf) = klength(quote(trim(Volgorde_paraaf)))
                   then put '22'x Volgorde_paraaf +(-1) '22'x "," @;
                   else put Volgorde_paraaf @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_FAM_STATUSHISTORIE AS
   SELECT t1.Commentaar,
          t1.Datum_van FORMAT=B8601DT19. AS Datum_van,
          t1.Datum_tot FORMAT=B8601DT19. AS Datum_tot,
          t1.Dos_id,
          t1.Ssg_cd,
          t1.Sts_cd,
          t1.Tra_id,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.FAM_STATUSHISTORIE_TCMG t1;
QUIT;

data WORK.BAS_FAM_STATUSHISTORIE;
  set WORK.BAS_FAM_STATUSHISTORIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_FAM_STATUSHISTORIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Commentaar" 
       ','
          "Datum_van" 
       ','
          "Datum_tot" 
       ','
          "Dos_id" 
       ','
          "Ssg_cd" 
       ','
          "Sts_cd" 
       ','
          "Tra_id" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_FAM_STATUSHISTORIE   end=EFIEOD; 
       format Commentaar  ;
       format Datum_van B8601DT19. ;
       format Datum_tot B8601DT19. ;
       format Dos_id best12. ;
       format Ssg_cd  ;
       format Sts_cd  ;
       format Tra_id best12. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Commentaar)
         then put "," @;
         else do;
                 if find(Commentaar,'0A'x) > 0 and 2+klength(Commentaar) = klength(quote(trim(Commentaar)))
                   then put '22'x Commentaar +(-1) '22'x "," @;
                   else put Commentaar @;
              end;
       if missing(Datum_van)
         then put "," @;
         else do;
                 if find(Datum_van,'0A'x) > 0 and 2+klength(Datum_van) = klength(quote(trim(Datum_van)))
                   then put '22'x Datum_van +(-1) '22'x "," @;
                   else put Datum_van @;
              end;
       if missing(Datum_tot)
         then put "," @;
         else do;
                 if find(Datum_tot,'0A'x) > 0 and 2+klength(Datum_tot) = klength(quote(trim(Datum_tot)))
                   then put '22'x Datum_tot +(-1) '22'x "," @;
                   else put Datum_tot @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Ssg_cd)
         then put "," @;
         else do;
                 if find(Ssg_cd,'0A'x) > 0 and 2+klength(Ssg_cd) = klength(quote(trim(Ssg_cd)))
                   then put '22'x Ssg_cd +(-1) '22'x "," @;
                   else put Ssg_cd @;
              end;
       if missing(Sts_cd)
         then put "," @;
         else do;
                 if find(Sts_cd,'0A'x) > 0 and 2+klength(Sts_cd) = klength(quote(trim(Sts_cd)))
                   then put '22'x Sts_cd +(-1) '22'x "," @;
                   else put Sts_cd @;
              end;
       if missing(Tra_id)
         then put "," @;
         else do;
                 if find(Tra_id,'0A'x) > 0 and 2+klength(Tra_id) = klength(quote(trim(Tra_id)))
                   then put '22'x Tra_id +(-1) '22'x "," @;
                   else put Tra_id @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_FAM_TRANSACTIE_REGEL AS
   SELECT t1.Tra_id,
          t1.Rpt_nr,
          t1.Ovk_nr,
          t1.Bgt_cd,
          t1.Rpe_datum_van FORMAT=B8601DT19. AS Rpe_datum_van,
          t1.Vpl_tra_id,
          t1.Prg_id,
          t1.Vpl_volgnummer,
          t1.Jaar,
          t1.Reg_id,
          t1.Reg_nr,
          t1.Bedrag,
          t1.Valutadatum FORMAT=B8601DT19. AS Valutadatum,
          t1.Iban,
          t1.Bic,
          t1.Omhang_jaar,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Cvk_id_geselecteerd,
          t1.Cvk_id_verwerkt,
          t1.Volgnummer,
          t1.Gecorrigeerd_jn,
          t1.Rpt_nr_oud,
          t1.Naar_oracle,
          t1.Boeking,
          t1.Imvb
     FROM DATAQASG.FAM_TRANSACTIE_REGEL_TCMG t1;
QUIT;

data WORK.BAS_FAM_TRANSACTIE_REGEL;
  set WORK.BAS_FAM_TRANSACTIE_REGEL;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_FAM_TRANSACTIE_REGEL.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Tra_id" 
       ','
          "Rpt_nr" 
       ','
          "Ovk_nr" 
       ','
          "Bgt_cd" 
       ','
          "Rpe_datum_van" 
       ','
          "Vpl_tra_id" 
       ','
          "Prg_id" 
       ','
          "Vpl_volgnummer" 
       ','
          "Jaar" 
       ','
          "Reg_id" 
       ','
          "Reg_nr" 
       ','
          "Bedrag" 
       ','
          "Valutadatum" 
       ','
          "Iban" 
       ','
          "Bic" 
       ','
          "Omhang_jaar" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Cvk_id_geselecteerd" 
       ','
          "Cvk_id_verwerkt" 
       ','
          "Volgnummer" 
       ','
          "Gecorrigeerd_jn" 
       ','
          "Rpt_nr_oud" 
       ','
          "Naar_oracle" 
       ','
          "Boeking" 
       ','
          "Imvb" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_FAM_TRANSACTIE_REGEL   end=EFIEOD; 
       format Tra_id best12. ;
       format Rpt_nr best12. ;
       format Ovk_nr  ;
       format Bgt_cd  ;
       format Rpe_datum_van B8601DT19. ;
       format Vpl_tra_id best12. ;
       format Prg_id best12. ;
       format Vpl_volgnummer best12. ;
       format Jaar best12. ;
       format Reg_id best12. ;
       format Reg_nr best12. ;
       format Bedrag best12. ;
       format Valutadatum B8601DT19. ;
       format Iban  ;
       format Bic  ;
       format Omhang_jaar best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Cvk_id_geselecteerd best12. ;
       format Cvk_id_verwerkt best12. ;
       format Volgnummer best12. ;
       format Gecorrigeerd_jn  ;
       format Rpt_nr_oud  ;
       format Naar_oracle  ;
       format Boeking  ;
       format Imvb  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Tra_id)
         then put "," @;
         else do;
                 if find(Tra_id,'0A'x) > 0 and 2+klength(Tra_id) = klength(quote(trim(Tra_id)))
                   then put '22'x Tra_id +(-1) '22'x "," @;
                   else put Tra_id @;
              end;
       if missing(Rpt_nr)
         then put "," @;
         else do;
                 if find(Rpt_nr,'0A'x) > 0 and 2+klength(Rpt_nr) = klength(quote(trim(Rpt_nr)))
                   then put '22'x Rpt_nr +(-1) '22'x "," @;
                   else put Rpt_nr @;
              end;
       if missing(Ovk_nr)
         then put "," @;
         else do;
                 if find(Ovk_nr,'0A'x) > 0 and 2+klength(Ovk_nr) = klength(quote(trim(Ovk_nr)))
                   then put '22'x Ovk_nr +(-1) '22'x "," @;
                   else put Ovk_nr @;
              end;
       if missing(Bgt_cd)
         then put "," @;
         else do;
                 if find(Bgt_cd,'0A'x) > 0 and 2+klength(Bgt_cd) = klength(quote(trim(Bgt_cd)))
                   then put '22'x Bgt_cd +(-1) '22'x "," @;
                   else put Bgt_cd @;
              end;
       if missing(Rpe_datum_van)
         then put "," @;
         else do;
                 if find(Rpe_datum_van,'0A'x) > 0 and 2+klength(Rpe_datum_van) = klength(quote(trim(Rpe_datum_van)))
                   then put '22'x Rpe_datum_van +(-1) '22'x "," @;
                   else put Rpe_datum_van @;
              end;
       if missing(Vpl_tra_id)
         then put "," @;
         else do;
                 if find(Vpl_tra_id,'0A'x) > 0 and 2+klength(Vpl_tra_id) = klength(quote(trim(Vpl_tra_id)))
                   then put '22'x Vpl_tra_id +(-1) '22'x "," @;
                   else put Vpl_tra_id @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Vpl_volgnummer)
         then put "," @;
         else do;
                 if find(Vpl_volgnummer,'0A'x) > 0 and 2+klength(Vpl_volgnummer) = klength(quote(trim(Vpl_volgnummer)))
                   then put '22'x Vpl_volgnummer +(-1) '22'x "," @;
                   else put Vpl_volgnummer @;
              end;
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Reg_nr)
         then put "," @;
         else do;
                 if find(Reg_nr,'0A'x) > 0 and 2+klength(Reg_nr) = klength(quote(trim(Reg_nr)))
                   then put '22'x Reg_nr +(-1) '22'x "," @;
                   else put Reg_nr @;
              end;
       if missing(Bedrag)
         then put "," @;
         else do;
                 if find(Bedrag,'0A'x) > 0 and 2+klength(Bedrag) = klength(quote(trim(Bedrag)))
                   then put '22'x Bedrag +(-1) '22'x "," @;
                   else put Bedrag @;
              end;
       if missing(Valutadatum)
         then put "," @;
         else do;
                 if find(Valutadatum,'0A'x) > 0 and 2+klength(Valutadatum) = klength(quote(trim(Valutadatum)))
                   then put '22'x Valutadatum +(-1) '22'x "," @;
                   else put Valutadatum @;
              end;
       if missing(Iban)
         then put "," @;
         else do;
                 if find(Iban,'0A'x) > 0 and 2+klength(Iban) = klength(quote(trim(Iban)))
                   then put '22'x Iban +(-1) '22'x "," @;
                   else put Iban @;
              end;
       if missing(Bic)
         then put "," @;
         else do;
                 if find(Bic,'0A'x) > 0 and 2+klength(Bic) = klength(quote(trim(Bic)))
                   then put '22'x Bic +(-1) '22'x "," @;
                   else put Bic @;
              end;
       if missing(Omhang_jaar)
         then put "," @;
         else do;
                 if find(Omhang_jaar,'0A'x) > 0 and 2+klength(Omhang_jaar) = klength(quote(trim(Omhang_jaar)))
                   then put '22'x Omhang_jaar +(-1) '22'x "," @;
                   else put Omhang_jaar @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Cvk_id_geselecteerd)
         then put "," @;
         else do;
                 if find(Cvk_id_geselecteerd,'0A'x) > 0 and 2+klength(Cvk_id_geselecteerd) = klength(quote(trim(Cvk_id_geselecteerd)))
                   then put '22'x Cvk_id_geselecteerd +(-1) '22'x "," @;
                   else put Cvk_id_geselecteerd @;
              end;
       if missing(Cvk_id_verwerkt)
         then put "," @;
         else do;
                 if find(Cvk_id_verwerkt,'0A'x) > 0 and 2+klength(Cvk_id_verwerkt) = klength(quote(trim(Cvk_id_verwerkt)))
                   then put '22'x Cvk_id_verwerkt +(-1) '22'x "," @;
                   else put Cvk_id_verwerkt @;
              end;
       if missing(Volgnummer)
         then put "," @;
         else do;
                 if find(Volgnummer,'0A'x) > 0 and 2+klength(Volgnummer) = klength(quote(trim(Volgnummer)))
                   then put '22'x Volgnummer +(-1) '22'x "," @;
                   else put Volgnummer @;
              end;
       if missing(Gecorrigeerd_jn)
         then put "," @;
         else do;
                 if find(Gecorrigeerd_jn,'0A'x) > 0 and 2+klength(Gecorrigeerd_jn) = klength(quote(trim(Gecorrigeerd_jn)))
                   then put '22'x Gecorrigeerd_jn +(-1) '22'x "," @;
                   else put Gecorrigeerd_jn @;
              end;
       if missing(Rpt_nr_oud)
         then put "," @;
         else do;
                 if find(Rpt_nr_oud,'0A'x) > 0 and 2+klength(Rpt_nr_oud) = klength(quote(trim(Rpt_nr_oud)))
                   then put '22'x Rpt_nr_oud +(-1) '22'x "," @;
                   else put Rpt_nr_oud @;
              end;
       if missing(Naar_oracle)
         then put "," @;
         else do;
                 if find(Naar_oracle,'0A'x) > 0 and 2+klength(Naar_oracle) = klength(quote(trim(Naar_oracle)))
                   then put '22'x Naar_oracle +(-1) '22'x "," @;
                   else put Naar_oracle @;
              end;
       if missing(Boeking)
         then put "," @;
         else do;
                 if find(Boeking,'0A'x) > 0 and 2+klength(Boeking) = klength(quote(trim(Boeking)))
                   then put '22'x Boeking +(-1) '22'x "," @;
                   else put Boeking @;
              end;
       if missing(Imvb)
         then put "," @;
         else do;
                 if find(Imvb,'0A'x) > 0 and 2+klength(Imvb) = klength(quote(trim(Imvb)))
                   then put '22'x Imvb +(-1) '22'x "," @;
                   else put Imvb @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_FAM_TRANSACTIE AS
   SELECT t1.Volgnummer,
          t1.Tra_id,
          t1.Prg_id,
          t1.Jaar,
          t1.Dos_id,
          t1.Tra_cd,
          t1.Reden,
          t1.bedrag,
          t1.Bedrag_nlg,
          t1.Datum FORMAT=B8601DT19. AS Datum,
          t1.Valutadatum FORMAT=B8601DT19. AS Valutadatum,
          t1.Fam_verplichting,
          t1.Fam_declaratie,
          t1.Fam_bij_rente,
          t1.Fam_kwijtschelding,
          t1.Fam_rest_voorschot,
          t1.Fam_overboeking,
          t1.Fam_aflossing,
          t1.Fam_budgetmutatie,
          t1.Fam_rest_aflossing,
          t1.Fam_betaalritme,
          t1.Sts_cd,
          t1.Ssg_cd,
          t1.Correctie,
          t1.Correctie_volgnr,
          t1.Tra_id_van,
          t1.Vst_id,
          t1.Rel_id,
          t1.Rol_cd,
          t1.Datum_acc_afd FORMAT=B8601DT19. AS Datum_acc_afd,
          t1.Referentie,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Bedrag_ex_btw,
          t1.Vst_volgnr,
          t1.Duurzaam_jn,
          t1.Run_id,
          t1.Fam_vordering,
          t1.Fam_vordering_afhandeling,
          t1.Vordering_tra_id,
          t1.Storneren,
          t1.Vordering_bedrag,
          t1.Afgelost,
          t1.Kwijtgescholden,
          t1.Tmp_vordering_id,
          t1.Omhang_jaar,
          t1.Omhang_jn,
          t1.Tra_id_rv,
          t1.Tra_id_dcv,
          t1.Jz_id,
          t1.Afreken_tra_id,
          t1.Correctie_bedrag_bob,
          t1.Vordering_status,
          t1.On_hold,
          t1.Termijn_uitstel FORMAT=B8601DT19. AS Termijn_uitstel,
          t1.Tra_id_ean_eap
     FROM DATAQASG.FAM_TRANSACTIE_TCMG t1;
QUIT;

data WORK.BAS_FAM_TRANSACTIE;
  set WORK.BAS_FAM_TRANSACTIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_FAM_TRANSACTIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Volgnummer" 
       ','
          "Tra_id" 
       ','
          "Prg_id" 
       ','
          "Jaar" 
       ','
          "Dos_id" 
       ','
          "Tra_cd" 
       ','
          "Reden" 
       ','
          "bedrag" 
       ','
          "Bedrag_nlg" 
       ','
          "Datum" 
       ','
          "Valutadatum" 
       ','
          "Fam_verplichting" 
       ','
          "Fam_declaratie" 
       ','
          "Fam_bij_rente" 
       ','
          "Fam_kwijtschelding" 
       ','
          "Fam_rest_voorschot" 
       ','
          "Fam_overboeking" 
       ','
          "Fam_aflossing" 
       ','
          "Fam_budgetmutatie" 
       ','
          "Fam_rest_aflossing" 
       ','
          "Fam_betaalritme" 
       ','
          "Sts_cd" 
       ','
          "Ssg_cd" 
       ','
          "Correctie" 
       ','
          "Correctie_volgnr" 
       ','
          "Tra_id_van" 
       ','
          "Vst_id" 
       ','
          "Rel_id" 
       ','
          "Rol_cd" 
       ','
          "Datum_acc_afd" 
       ','
          "Referentie" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Bedrag_ex_btw" 
       ','
          "Vst_volgnr" 
       ','
          "Duurzaam_jn" 
       ','
          "Run_id" 
       ','
          "Fam_vordering" 
       ','
          "Fam_vordering_afhandeling" 
       ','
          "Vordering_tra_id" 
       ','
          "Storneren" 
       ','
          "Vordering_bedrag" 
       ','
          "Afgelost" 
       ','
          "Kwijtgescholden" 
       ','
          "Tmp_vordering_id" 
       ','
          "Omhang_jaar" 
       ','
          "Omhang_jn" 
       ','
          "Tra_id_rv" 
       ','
          "Tra_id_dcv" 
       ','
          "Jz_id" 
       ','
          "Afreken_tra_id" 
       ','
          "Correctie_bedrag_bob" 
       ','
          "Vordering_status" 
       ','
          "On_hold" 
       ','
          "Termijn_uitstel" 
       ','
          "Tra_id_ean_eap" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_FAM_TRANSACTIE   end=EFIEOD; 
       format Volgnummer best12. ;
       format Tra_id best12. ;
       format Prg_id best12. ;
       format Jaar best12. ;
       format Dos_id best12. ;
       format Tra_cd  ;
       format Reden  ;
       format bedrag best12. ;
       format Bedrag_nlg best12. ;
       format Datum B8601DT19. ;
       format Valutadatum B8601DT19. ;
       format Fam_verplichting  ;
       format Fam_declaratie  ;
       format Fam_bij_rente  ;
       format Fam_kwijtschelding  ;
       format Fam_rest_voorschot  ;
       format Fam_overboeking  ;
       format Fam_aflossing  ;
       format Fam_budgetmutatie  ;
       format Fam_rest_aflossing  ;
       format Fam_betaalritme  ;
       format Sts_cd  ;
       format Ssg_cd  ;
       format Correctie  ;
       format Correctie_volgnr best12. ;
       format Tra_id_van best12. ;
       format Vst_id best12. ;
       format Rel_id best12. ;
       format Rol_cd  ;
       format Datum_acc_afd B8601DT19. ;
       format Referentie  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Bedrag_ex_btw best12. ;
       format Vst_volgnr best12. ;
       format Duurzaam_jn  ;
       format Run_id best12. ;
       format Fam_vordering  ;
       format Fam_vordering_afhandeling  ;
       format Vordering_tra_id best12. ;
       format Storneren  ;
       format Vordering_bedrag best12. ;
       format Afgelost best12. ;
       format Kwijtgescholden best12. ;
       format Tmp_vordering_id best12. ;
       format Omhang_jaar best12. ;
       format Omhang_jn  ;
       format Tra_id_rv best12. ;
       format Tra_id_dcv best12. ;
       format Jz_id best12. ;
       format Afreken_tra_id best12. ;
       format Correctie_bedrag_bob best12. ;
       format Vordering_status  ;
       format On_hold  ;
       format Termijn_uitstel B8601DT19. ;
       format Tra_id_ean_eap best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Volgnummer)
         then put "," @;
         else do;
                 if find(Volgnummer,'0A'x) > 0 and 2+klength(Volgnummer) = klength(quote(trim(Volgnummer)))
                   then put '22'x Volgnummer +(-1) '22'x "," @;
                   else put Volgnummer @;
              end;
       if missing(Tra_id)
         then put "," @;
         else do;
                 if find(Tra_id,'0A'x) > 0 and 2+klength(Tra_id) = klength(quote(trim(Tra_id)))
                   then put '22'x Tra_id +(-1) '22'x "," @;
                   else put Tra_id @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Tra_cd)
         then put "," @;
         else do;
                 if find(Tra_cd,'0A'x) > 0 and 2+klength(Tra_cd) = klength(quote(trim(Tra_cd)))
                   then put '22'x Tra_cd +(-1) '22'x "," @;
                   else put Tra_cd @;
              end;
       if missing(Reden)
         then put "," @;
         else do;
                 if find(Reden,'0A'x) > 0 and 2+klength(Reden) = klength(quote(trim(Reden)))
                   then put '22'x Reden +(-1) '22'x "," @;
                   else put Reden @;
              end;
       if missing(bedrag)
         then put "," @;
         else do;
                 if find(bedrag,'0A'x) > 0 and 2+klength(bedrag) = klength(quote(trim(bedrag)))
                   then put '22'x bedrag +(-1) '22'x "," @;
                   else put bedrag @;
              end;
       if missing(Bedrag_nlg)
         then put "," @;
         else do;
                 if find(Bedrag_nlg,'0A'x) > 0 and 2+klength(Bedrag_nlg) = klength(quote(trim(Bedrag_nlg)))
                   then put '22'x Bedrag_nlg +(-1) '22'x "," @;
                   else put Bedrag_nlg @;
              end;
       if missing(Datum)
         then put "," @;
         else do;
                 if find(Datum,'0A'x) > 0 and 2+klength(Datum) = klength(quote(trim(Datum)))
                   then put '22'x Datum +(-1) '22'x "," @;
                   else put Datum @;
              end;
       if missing(Valutadatum)
         then put "," @;
         else do;
                 if find(Valutadatum,'0A'x) > 0 and 2+klength(Valutadatum) = klength(quote(trim(Valutadatum)))
                   then put '22'x Valutadatum +(-1) '22'x "," @;
                   else put Valutadatum @;
              end;
       if missing(Fam_verplichting)
         then put "," @;
         else do;
                 if find(Fam_verplichting,'0A'x) > 0 and 2+klength(Fam_verplichting) = klength(quote(trim(Fam_verplichting)))
                   then put '22'x Fam_verplichting +(-1) '22'x "," @;
                   else put Fam_verplichting @;
              end;
       if missing(Fam_declaratie)
         then put "," @;
         else do;
                 if find(Fam_declaratie,'0A'x) > 0 and 2+klength(Fam_declaratie) = klength(quote(trim(Fam_declaratie)))
                   then put '22'x Fam_declaratie +(-1) '22'x "," @;
                   else put Fam_declaratie @;
              end;
       if missing(Fam_bij_rente)
         then put "," @;
         else do;
                 if find(Fam_bij_rente,'0A'x) > 0 and 2+klength(Fam_bij_rente) = klength(quote(trim(Fam_bij_rente)))
                   then put '22'x Fam_bij_rente +(-1) '22'x "," @;
                   else put Fam_bij_rente @;
              end;
       if missing(Fam_kwijtschelding)
         then put "," @;
         else do;
                 if find(Fam_kwijtschelding,'0A'x) > 0 and 2+klength(Fam_kwijtschelding) = klength(quote(trim(Fam_kwijtschelding)))
                   then put '22'x Fam_kwijtschelding +(-1) '22'x "," @;
                   else put Fam_kwijtschelding @;
              end;
       if missing(Fam_rest_voorschot)
         then put "," @;
         else do;
                 if find(Fam_rest_voorschot,'0A'x) > 0 and 2+klength(Fam_rest_voorschot) = klength(quote(trim(Fam_rest_voorschot)))
                   then put '22'x Fam_rest_voorschot +(-1) '22'x "," @;
                   else put Fam_rest_voorschot @;
              end;
       if missing(Fam_overboeking)
         then put "," @;
         else do;
                 if find(Fam_overboeking,'0A'x) > 0 and 2+klength(Fam_overboeking) = klength(quote(trim(Fam_overboeking)))
                   then put '22'x Fam_overboeking +(-1) '22'x "," @;
                   else put Fam_overboeking @;
              end;
       if missing(Fam_aflossing)
         then put "," @;
         else do;
                 if find(Fam_aflossing,'0A'x) > 0 and 2+klength(Fam_aflossing) = klength(quote(trim(Fam_aflossing)))
                   then put '22'x Fam_aflossing +(-1) '22'x "," @;
                   else put Fam_aflossing @;
              end;
       if missing(Fam_budgetmutatie)
         then put "," @;
         else do;
                 if find(Fam_budgetmutatie,'0A'x) > 0 and 2+klength(Fam_budgetmutatie) = klength(quote(trim(Fam_budgetmutatie)))
                   then put '22'x Fam_budgetmutatie +(-1) '22'x "," @;
                   else put Fam_budgetmutatie @;
              end;
       if missing(Fam_rest_aflossing)
         then put "," @;
         else do;
                 if find(Fam_rest_aflossing,'0A'x) > 0 and 2+klength(Fam_rest_aflossing) = klength(quote(trim(Fam_rest_aflossing)))
                   then put '22'x Fam_rest_aflossing +(-1) '22'x "," @;
                   else put Fam_rest_aflossing @;
              end;
       if missing(Fam_betaalritme)
         then put "," @;
         else do;
                 if find(Fam_betaalritme,'0A'x) > 0 and 2+klength(Fam_betaalritme) = klength(quote(trim(Fam_betaalritme)))
                   then put '22'x Fam_betaalritme +(-1) '22'x "," @;
                   else put Fam_betaalritme @;
              end;
       if missing(Sts_cd)
         then put "," @;
         else do;
                 if find(Sts_cd,'0A'x) > 0 and 2+klength(Sts_cd) = klength(quote(trim(Sts_cd)))
                   then put '22'x Sts_cd +(-1) '22'x "," @;
                   else put Sts_cd @;
              end;
       if missing(Ssg_cd)
         then put "," @;
         else do;
                 if find(Ssg_cd,'0A'x) > 0 and 2+klength(Ssg_cd) = klength(quote(trim(Ssg_cd)))
                   then put '22'x Ssg_cd +(-1) '22'x "," @;
                   else put Ssg_cd @;
              end;
       if missing(Correctie)
         then put "," @;
         else do;
                 if find(Correctie,'0A'x) > 0 and 2+klength(Correctie) = klength(quote(trim(Correctie)))
                   then put '22'x Correctie +(-1) '22'x "," @;
                   else put Correctie @;
              end;
       if missing(Correctie_volgnr)
         then put "," @;
         else do;
                 if find(Correctie_volgnr,'0A'x) > 0 and 2+klength(Correctie_volgnr) = klength(quote(trim(Correctie_volgnr)))
                   then put '22'x Correctie_volgnr +(-1) '22'x "," @;
                   else put Correctie_volgnr @;
              end;
       if missing(Tra_id_van)
         then put "," @;
         else do;
                 if find(Tra_id_van,'0A'x) > 0 and 2+klength(Tra_id_van) = klength(quote(trim(Tra_id_van)))
                   then put '22'x Tra_id_van +(-1) '22'x "," @;
                   else put Tra_id_van @;
              end;
       if missing(Vst_id)
         then put "," @;
         else do;
                 if find(Vst_id,'0A'x) > 0 and 2+klength(Vst_id) = klength(quote(trim(Vst_id)))
                   then put '22'x Vst_id +(-1) '22'x "," @;
                   else put Vst_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Datum_acc_afd)
         then put "," @;
         else do;
                 if find(Datum_acc_afd,'0A'x) > 0 and 2+klength(Datum_acc_afd) = klength(quote(trim(Datum_acc_afd)))
                   then put '22'x Datum_acc_afd +(-1) '22'x "," @;
                   else put Datum_acc_afd @;
              end;
       if missing(Referentie)
         then put "," @;
         else do;
                 if find(Referentie,'0A'x) > 0 and 2+klength(Referentie) = klength(quote(trim(Referentie)))
                   then put '22'x Referentie +(-1) '22'x "," @;
                   else put Referentie @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Bedrag_ex_btw)
         then put "," @;
         else do;
                 if find(Bedrag_ex_btw,'0A'x) > 0 and 2+klength(Bedrag_ex_btw) = klength(quote(trim(Bedrag_ex_btw)))
                   then put '22'x Bedrag_ex_btw +(-1) '22'x "," @;
                   else put Bedrag_ex_btw @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       if missing(Duurzaam_jn)
         then put "," @;
         else do;
                 if find(Duurzaam_jn,'0A'x) > 0 and 2+klength(Duurzaam_jn) = klength(quote(trim(Duurzaam_jn)))
                   then put '22'x Duurzaam_jn +(-1) '22'x "," @;
                   else put Duurzaam_jn @;
              end;
       if missing(Run_id)
         then put "," @;
         else do;
                 if find(Run_id,'0A'x) > 0 and 2+klength(Run_id) = klength(quote(trim(Run_id)))
                   then put '22'x Run_id +(-1) '22'x "," @;
                   else put Run_id @;
              end;
       if missing(Fam_vordering)
         then put "," @;
         else do;
                 if find(Fam_vordering,'0A'x) > 0 and 2+klength(Fam_vordering) = klength(quote(trim(Fam_vordering)))
                   then put '22'x Fam_vordering +(-1) '22'x "," @;
                   else put Fam_vordering @;
              end;
       if missing(Fam_vordering_afhandeling)
         then put "," @;
         else do;
                 if find(Fam_vordering_afhandeling,'0A'x) > 0 and 2+klength(Fam_vordering_afhandeling) = klength(quote(trim(Fam_vordering_afhandeling)))
                   then put '22'x Fam_vordering_afhandeling +(-1) '22'x "," @;
                   else put Fam_vordering_afhandeling @;
              end;
       if missing(Vordering_tra_id)
         then put "," @;
         else do;
                 if find(Vordering_tra_id,'0A'x) > 0 and 2+klength(Vordering_tra_id) = klength(quote(trim(Vordering_tra_id)))
                   then put '22'x Vordering_tra_id +(-1) '22'x "," @;
                   else put Vordering_tra_id @;
              end;
       if missing(Storneren)
         then put "," @;
         else do;
                 if find(Storneren,'0A'x) > 0 and 2+klength(Storneren) = klength(quote(trim(Storneren)))
                   then put '22'x Storneren +(-1) '22'x "," @;
                   else put Storneren @;
              end;
       if missing(Vordering_bedrag)
         then put "," @;
         else do;
                 if find(Vordering_bedrag,'0A'x) > 0 and 2+klength(Vordering_bedrag) = klength(quote(trim(Vordering_bedrag)))
                   then put '22'x Vordering_bedrag +(-1) '22'x "," @;
                   else put Vordering_bedrag @;
              end;
       if missing(Afgelost)
         then put "," @;
         else do;
                 if find(Afgelost,'0A'x) > 0 and 2+klength(Afgelost) = klength(quote(trim(Afgelost)))
                   then put '22'x Afgelost +(-1) '22'x "," @;
                   else put Afgelost @;
              end;
       if missing(Kwijtgescholden)
         then put "," @;
         else do;
                 if find(Kwijtgescholden,'0A'x) > 0 and 2+klength(Kwijtgescholden) = klength(quote(trim(Kwijtgescholden)))
                   then put '22'x Kwijtgescholden +(-1) '22'x "," @;
                   else put Kwijtgescholden @;
              end;
       if missing(Tmp_vordering_id)
         then put "," @;
         else do;
                 if find(Tmp_vordering_id,'0A'x) > 0 and 2+klength(Tmp_vordering_id) = klength(quote(trim(Tmp_vordering_id)))
                   then put '22'x Tmp_vordering_id +(-1) '22'x "," @;
                   else put Tmp_vordering_id @;
              end;
       if missing(Omhang_jaar)
         then put "," @;
         else do;
                 if find(Omhang_jaar,'0A'x) > 0 and 2+klength(Omhang_jaar) = klength(quote(trim(Omhang_jaar)))
                   then put '22'x Omhang_jaar +(-1) '22'x "," @;
                   else put Omhang_jaar @;
              end;
       if missing(Omhang_jn)
         then put "," @;
         else do;
                 if find(Omhang_jn,'0A'x) > 0 and 2+klength(Omhang_jn) = klength(quote(trim(Omhang_jn)))
                   then put '22'x Omhang_jn +(-1) '22'x "," @;
                   else put Omhang_jn @;
              end;
       if missing(Tra_id_rv)
         then put "," @;
         else do;
                 if find(Tra_id_rv,'0A'x) > 0 and 2+klength(Tra_id_rv) = klength(quote(trim(Tra_id_rv)))
                   then put '22'x Tra_id_rv +(-1) '22'x "," @;
                   else put Tra_id_rv @;
              end;
       if missing(Tra_id_dcv)
         then put "," @;
         else do;
                 if find(Tra_id_dcv,'0A'x) > 0 and 2+klength(Tra_id_dcv) = klength(quote(trim(Tra_id_dcv)))
                   then put '22'x Tra_id_dcv +(-1) '22'x "," @;
                   else put Tra_id_dcv @;
              end;
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Afreken_tra_id)
         then put "," @;
         else do;
                 if find(Afreken_tra_id,'0A'x) > 0 and 2+klength(Afreken_tra_id) = klength(quote(trim(Afreken_tra_id)))
                   then put '22'x Afreken_tra_id +(-1) '22'x "," @;
                   else put Afreken_tra_id @;
              end;
       if missing(Correctie_bedrag_bob)
         then put "," @;
         else do;
                 if find(Correctie_bedrag_bob,'0A'x) > 0 and 2+klength(Correctie_bedrag_bob) = klength(quote(trim(Correctie_bedrag_bob)))
                   then put '22'x Correctie_bedrag_bob +(-1) '22'x "," @;
                   else put Correctie_bedrag_bob @;
              end;
       if missing(Vordering_status)
         then put "," @;
         else do;
                 if find(Vordering_status,'0A'x) > 0 and 2+klength(Vordering_status) = klength(quote(trim(Vordering_status)))
                   then put '22'x Vordering_status +(-1) '22'x "," @;
                   else put Vordering_status @;
              end;
       if missing(On_hold)
         then put "," @;
         else do;
                 if find(On_hold,'0A'x) > 0 and 2+klength(On_hold) = klength(quote(trim(On_hold)))
                   then put '22'x On_hold +(-1) '22'x "," @;
                   else put On_hold @;
              end;
       if missing(Termijn_uitstel)
         then put "," @;
         else do;
                 if find(Termijn_uitstel,'0A'x) > 0 and 2+klength(Termijn_uitstel) = klength(quote(trim(Termijn_uitstel)))
                   then put '22'x Termijn_uitstel +(-1) '22'x "," @;
                   else put Termijn_uitstel @;
              end;
       if missing(Tra_id_ean_eap)
         then put "," @;
         else do;
                 if find(Tra_id_ean_eap,'0A'x) > 0 and 2+klength(Tra_id_ean_eap) = klength(quote(trim(Tra_id_ean_eap)))
                   then put '22'x Tra_id_ean_eap +(-1) '22'x "," @;
                   else put Tra_id_ean_eap @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_FAM_VERPLICHTING AS
   SELECT t1.Tra_id,
          t1.Reg_id,
          t1.Reg_nr,
          t1.Verplichtingssoort,
          t1.Omschrijving,
          t1.Totaal_ingediend,
          t1.Gevraagd,
          t1.Totaal_geschoond,
          t1.Vergoedings_pct,
          t1.Intake_datum FORMAT=B8601DT19. AS Intake_datum,
          t1.Nota_datum FORMAT=B8601DT19. AS Nota_datum,
          t1.Panel_datum FORMAT=B8601DT19. AS Panel_datum,
          t1.Overige_subsidie,
          t1.Ikb_naam,
          t1.Inkoopbevinding,
          t1.Inkoopbevinding_user,
          t1.Betalingsverzoeknummer
     FROM DATAQASG.FAM_VERPLICHTING_TCMG t1;
QUIT;

data WORK.BAS_FAM_VERPLICHTING;
  set WORK.BAS_FAM_VERPLICHTING;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_FAM_VERPLICHTING.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Tra_id" 
       ','
          "Reg_id" 
       ','
          "Reg_nr" 
       ','
          "Verplichtingssoort" 
       ','
          "Omschrijving" 
       ','
          "Totaal_ingediend" 
       ','
          "Gevraagd" 
       ','
          "Totaal_geschoond" 
       ','
          "Vergoedings_pct" 
       ','
          "Intake_datum" 
       ','
          "Nota_datum" 
       ','
          "Panel_datum" 
       ','
          "Overige_subsidie" 
       ','
          "Ikb_naam" 
       ','
          "Inkoopbevinding" 
       ','
          "Inkoopbevinding_user" 
       ','
          "Betalingsverzoeknummer" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_FAM_VERPLICHTING   end=EFIEOD; 
       format Tra_id best12. ;
       format Reg_id best12. ;
       format Reg_nr best12. ;
       format Verplichtingssoort  ;
       format Omschrijving  ;
       format Totaal_ingediend best12. ;
       format Gevraagd best12. ;
       format Totaal_geschoond best12. ;
       format Vergoedings_pct best12. ;
       format Intake_datum B8601DT19. ;
       format Nota_datum B8601DT19. ;
       format Panel_datum B8601DT19. ;
       format Overige_subsidie best12. ;
       format Ikb_naam  ;
       format Inkoopbevinding  ;
       format Inkoopbevinding_user  ;
       format Betalingsverzoeknummer  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Tra_id)
         then put "," @;
         else do;
                 if find(Tra_id,'0A'x) > 0 and 2+klength(Tra_id) = klength(quote(trim(Tra_id)))
                   then put '22'x Tra_id +(-1) '22'x "," @;
                   else put Tra_id @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Reg_nr)
         then put "," @;
         else do;
                 if find(Reg_nr,'0A'x) > 0 and 2+klength(Reg_nr) = klength(quote(trim(Reg_nr)))
                   then put '22'x Reg_nr +(-1) '22'x "," @;
                   else put Reg_nr @;
              end;
       if missing(Verplichtingssoort)
         then put "," @;
         else do;
                 if find(Verplichtingssoort,'0A'x) > 0 and 2+klength(Verplichtingssoort) = klength(quote(trim(Verplichtingssoort)))
                   then put '22'x Verplichtingssoort +(-1) '22'x "," @;
                   else put Verplichtingssoort @;
              end;
       if missing(Omschrijving)
         then put "," @;
         else do;
                 if find(Omschrijving,'0A'x) > 0 and 2+klength(Omschrijving) = klength(quote(trim(Omschrijving)))
                   then put '22'x Omschrijving +(-1) '22'x "," @;
                   else put Omschrijving @;
              end;
       if missing(Totaal_ingediend)
         then put "," @;
         else do;
                 if find(Totaal_ingediend,'0A'x) > 0 and 2+klength(Totaal_ingediend) = klength(quote(trim(Totaal_ingediend)))
                   then put '22'x Totaal_ingediend +(-1) '22'x "," @;
                   else put Totaal_ingediend @;
              end;
       if missing(Gevraagd)
         then put "," @;
         else do;
                 if find(Gevraagd,'0A'x) > 0 and 2+klength(Gevraagd) = klength(quote(trim(Gevraagd)))
                   then put '22'x Gevraagd +(-1) '22'x "," @;
                   else put Gevraagd @;
              end;
       if missing(Totaal_geschoond)
         then put "," @;
         else do;
                 if find(Totaal_geschoond,'0A'x) > 0 and 2+klength(Totaal_geschoond) = klength(quote(trim(Totaal_geschoond)))
                   then put '22'x Totaal_geschoond +(-1) '22'x "," @;
                   else put Totaal_geschoond @;
              end;
       if missing(Vergoedings_pct)
         then put "," @;
         else do;
                 if find(Vergoedings_pct,'0A'x) > 0 and 2+klength(Vergoedings_pct) = klength(quote(trim(Vergoedings_pct)))
                   then put '22'x Vergoedings_pct +(-1) '22'x "," @;
                   else put Vergoedings_pct @;
              end;
       if missing(Intake_datum)
         then put "," @;
         else do;
                 if find(Intake_datum,'0A'x) > 0 and 2+klength(Intake_datum) = klength(quote(trim(Intake_datum)))
                   then put '22'x Intake_datum +(-1) '22'x "," @;
                   else put Intake_datum @;
              end;
       if missing(Nota_datum)
         then put "," @;
         else do;
                 if find(Nota_datum,'0A'x) > 0 and 2+klength(Nota_datum) = klength(quote(trim(Nota_datum)))
                   then put '22'x Nota_datum +(-1) '22'x "," @;
                   else put Nota_datum @;
              end;
       if missing(Panel_datum)
         then put "," @;
         else do;
                 if find(Panel_datum,'0A'x) > 0 and 2+klength(Panel_datum) = klength(quote(trim(Panel_datum)))
                   then put '22'x Panel_datum +(-1) '22'x "," @;
                   else put Panel_datum @;
              end;
       if missing(Overige_subsidie)
         then put "," @;
         else do;
                 if find(Overige_subsidie,'0A'x) > 0 and 2+klength(Overige_subsidie) = klength(quote(trim(Overige_subsidie)))
                   then put '22'x Overige_subsidie +(-1) '22'x "," @;
                   else put Overige_subsidie @;
              end;
       if missing(Ikb_naam)
         then put "," @;
         else do;
                 if find(Ikb_naam,'0A'x) > 0 and 2+klength(Ikb_naam) = klength(quote(trim(Ikb_naam)))
                   then put '22'x Ikb_naam +(-1) '22'x "," @;
                   else put Ikb_naam @;
              end;
       if missing(Inkoopbevinding)
         then put "," @;
         else do;
                 if find(Inkoopbevinding,'0A'x) > 0 and 2+klength(Inkoopbevinding) = klength(quote(trim(Inkoopbevinding)))
                   then put '22'x Inkoopbevinding +(-1) '22'x "," @;
                   else put Inkoopbevinding @;
              end;
       if missing(Inkoopbevinding_user)
         then put "," @;
         else do;
                 if find(Inkoopbevinding_user,'0A'x) > 0 and 2+klength(Inkoopbevinding_user) = klength(quote(trim(Inkoopbevinding_user)))
                   then put '22'x Inkoopbevinding_user +(-1) '22'x "," @;
                   else put Inkoopbevinding_user @;
              end;
       if missing(Betalingsverzoeknummer)
         then put "," @;
         else do;
                 if find(Betalingsverzoeknummer,'0A'x) > 0 and 2+klength(Betalingsverzoeknummer) = klength(quote(trim(Betalingsverzoeknummer)))
                   then put '22'x Betalingsverzoeknummer +(-1) '22'x "," @;
                   else put Betalingsverzoeknummer @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_IOM_FUNCTIE AS
   SELECT t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Fun_cd,
          t1.Fun_oms,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.IOM_FUNCTIE_TCMG t1;
QUIT;

data WORK.BAS_IOM_FUNCTIE;
  set WORK.BAS_IOM_FUNCTIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_IOM_FUNCTIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Fun_cd" 
       ','
          "Fun_oms" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_IOM_FUNCTIE   end=EFIEOD; 
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Fun_cd  ;
       format Fun_oms  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Fun_cd)
         then put "," @;
         else do;
                 if find(Fun_cd,'0A'x) > 0 and 2+klength(Fun_cd) = klength(quote(trim(Fun_cd)))
                   then put '22'x Fun_cd +(-1) '22'x "," @;
                   else put Fun_cd @;
              end;
       if missing(Fun_oms)
         then put "," @;
         else do;
                 if find(Fun_oms,'0A'x) > 0 and 2+klength(Fun_oms) = klength(quote(trim(Fun_oms)))
                   then put '22'x Fun_oms +(-1) '22'x "," @;
                   else put Fun_oms @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_IOM_LOCATIE AS
   SELECT t1.Loc_cd,
          t1.Omschrijving,
          t1.Actief,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.IOM_LOCATIE_TCMG t1;
QUIT;

data WORK.BAS_IOM_LOCATIE;
  set WORK.BAS_IOM_LOCATIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_IOM_LOCATIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Loc_cd" 
       ','
          "Omschrijving" 
       ','
          "Actief" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_IOM_LOCATIE   end=EFIEOD; 
       format Loc_cd  ;
       format Omschrijving  ;
       format Actief  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Loc_cd)
         then put "," @;
         else do;
                 if find(Loc_cd,'0A'x) > 0 and 2+klength(Loc_cd) = klength(quote(trim(Loc_cd)))
                   then put '22'x Loc_cd +(-1) '22'x "," @;
                   else put Loc_cd @;
              end;
       if missing(Omschrijving)
         then put "," @;
         else do;
                 if find(Omschrijving,'0A'x) > 0 and 2+klength(Omschrijving) = klength(quote(trim(Omschrijving)))
                   then put '22'x Omschrijving +(-1) '22'x "," @;
                   else put Omschrijving @;
              end;
       if missing(Actief)
         then put "," @;
         else do;
                 if find(Actief,'0A'x) > 0 and 2+klength(Actief) = klength(quote(trim(Actief)))
                   then put '22'x Actief +(-1) '22'x "," @;
                   else put Actief @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_IOM_MEDEWERKER AS
   SELECT t1.Aanspreeknaam,
          t1.Achternaam,
          t1.Actief,
          t1.Banknaam,
          t1.Beveiligingspas,
          t1.Beveiligingspasnr,
          t1.Bic,
          t1.Certhoud_id,
          t1.Certserienummer,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Datum_inlog FORMAT=B8601DT19. AS Datum_inlog,
          t1.Datum_uit_dienst FORMAT=B8601DT19. AS Datum_uit_dienst,
          t1.Dienstverband,
          t1.Eigen_vervoer_jn,
          t1.Fun_cd,
          t1.Geslacht,
          t1.Iban,
          t1.Inleen_jn,
          t1.Loc_cd,
          t1.Mdw_cd,
          t1.Mdw_emailadres,
          t1.Mdw_handtekening,
          t1.Mdw_handtekening_image,
          t1.Mdw_id,
          t1.Mobiel,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Parkeerkaart,
          t1.Plaatsnaam,
          t1.Standplaats,
          t1.Telefoon,
          t1.Titel_na_cd,
          t1.Titel_voor_cd,
          t1.Toestel_dh,
          t1.Toestel_zw,
          t1.Tvs_cd_oud,
          t1.Voorletters,
          t1.Voornaam,
          t1.Voorvoegsel
     FROM DATAQASG.IOM_MEDEWERKER_TCMG t1;
QUIT;

data WORK.BAS_IOM_MEDEWERKER;
  set WORK.BAS_IOM_MEDEWERKER;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_IOM_MEDEWERKER.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Aanspreeknaam" 
       ','
          "Achternaam" 
       ','
          "Actief" 
       ','
          "Banknaam" 
       ','
          "Beveiligingspas" 
       ','
          "Beveiligingspasnr" 
       ','
          "Bic" 
       ','
          "Certhoud_id" 
       ','
          "Certserienummer" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Datum_inlog" 
       ','
          "Datum_uit_dienst" 
       ','
          "Dienstverband" 
       ','
          "Eigen_vervoer_jn" 
       ','
          "Fun_cd" 
       ','
          "Geslacht" 
       ','
          "Iban" 
       ','
          "Inleen_jn" 
       ','
          "Loc_cd" 
       ','
          "Mdw_cd" 
       ','
          "Mdw_emailadres" 
       ','
          "Mdw_handtekening" 
       ','
          "Mdw_handtekening_image" 
       ','
          "Mdw_id" 
       ','
          "Mobiel" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Parkeerkaart" 
       ','
          "Plaatsnaam" 
       ','
          "Standplaats" 
       ','
          "Telefoon" 
       ','
          "Titel_na_cd" 
       ','
          "Titel_voor_cd" 
       ','
          "Toestel_dh" 
       ','
          "Toestel_zw" 
       ','
          "Tvs_cd_oud" 
       ','
          "Voorletters" 
       ','
          "Voornaam" 
       ','
          "Voorvoegsel" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_IOM_MEDEWERKER   end=EFIEOD; 
       format Aanspreeknaam  ;
       format Achternaam  ;
       format Actief  ;
       format Banknaam  ;
       format Beveiligingspas  ;
       format Beveiligingspasnr  ;
       format Bic  ;
       format Certhoud_id best12. ;
       format Certserienummer  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Datum_inlog B8601DT19. ;
       format Datum_uit_dienst B8601DT19. ;
       format Dienstverband  ;
       format Eigen_vervoer_jn  ;
       format Fun_cd  ;
       format Geslacht  ;
       format Iban  ;
       format Inleen_jn  ;
       format Loc_cd  ;
       format Mdw_cd  ;
       format Mdw_emailadres  ;
       format Mdw_handtekening  ;
       format Mdw_handtekening_image  ;
       format Mdw_id best12. ;
       format Mobiel  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Parkeerkaart  ;
       format Plaatsnaam  ;
       format Standplaats  ;
       format Telefoon  ;
       format Titel_na_cd  ;
       format Titel_voor_cd  ;
       format Toestel_dh  ;
       format Toestel_zw  ;
       format Tvs_cd_oud  ;
       format Voorletters  ;
       format Voornaam  ;
       format Voorvoegsel  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Aanspreeknaam)
         then put "," @;
         else do;
                 if find(Aanspreeknaam,'0A'x) > 0 and 2+klength(Aanspreeknaam) = klength(quote(trim(Aanspreeknaam)))
                   then put '22'x Aanspreeknaam +(-1) '22'x "," @;
                   else put Aanspreeknaam @;
              end;
       if missing(Achternaam)
         then put "," @;
         else do;
                 if find(Achternaam,'0A'x) > 0 and 2+klength(Achternaam) = klength(quote(trim(Achternaam)))
                   then put '22'x Achternaam +(-1) '22'x "," @;
                   else put Achternaam @;
              end;
       if missing(Actief)
         then put "," @;
         else do;
                 if find(Actief,'0A'x) > 0 and 2+klength(Actief) = klength(quote(trim(Actief)))
                   then put '22'x Actief +(-1) '22'x "," @;
                   else put Actief @;
              end;
       if missing(Banknaam)
         then put "," @;
         else do;
                 if find(Banknaam,'0A'x) > 0 and 2+klength(Banknaam) = klength(quote(trim(Banknaam)))
                   then put '22'x Banknaam +(-1) '22'x "," @;
                   else put Banknaam @;
              end;
       if missing(Beveiligingspas)
         then put "," @;
         else do;
                 if find(Beveiligingspas,'0A'x) > 0 and 2+klength(Beveiligingspas) = klength(quote(trim(Beveiligingspas)))
                   then put '22'x Beveiligingspas +(-1) '22'x "," @;
                   else put Beveiligingspas @;
              end;
       if missing(Beveiligingspasnr)
         then put "," @;
         else do;
                 if find(Beveiligingspasnr,'0A'x) > 0 and 2+klength(Beveiligingspasnr) = klength(quote(trim(Beveiligingspasnr)))
                   then put '22'x Beveiligingspasnr +(-1) '22'x "," @;
                   else put Beveiligingspasnr @;
              end;
       if missing(Bic)
         then put "," @;
         else do;
                 if find(Bic,'0A'x) > 0 and 2+klength(Bic) = klength(quote(trim(Bic)))
                   then put '22'x Bic +(-1) '22'x "," @;
                   else put Bic @;
              end;
       if missing(Certhoud_id)
         then put "," @;
         else do;
                 if find(Certhoud_id,'0A'x) > 0 and 2+klength(Certhoud_id) = klength(quote(trim(Certhoud_id)))
                   then put '22'x Certhoud_id +(-1) '22'x "," @;
                   else put Certhoud_id @;
              end;
       if missing(Certserienummer)
         then put "," @;
         else do;
                 if find(Certserienummer,'0A'x) > 0 and 2+klength(Certserienummer) = klength(quote(trim(Certserienummer)))
                   then put '22'x Certserienummer +(-1) '22'x "," @;
                   else put Certserienummer @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Datum_inlog)
         then put "," @;
         else do;
                 if find(Datum_inlog,'0A'x) > 0 and 2+klength(Datum_inlog) = klength(quote(trim(Datum_inlog)))
                   then put '22'x Datum_inlog +(-1) '22'x "," @;
                   else put Datum_inlog @;
              end;
       if missing(Datum_uit_dienst)
         then put "," @;
         else do;
                 if find(Datum_uit_dienst,'0A'x) > 0 and 2+klength(Datum_uit_dienst) = klength(quote(trim(Datum_uit_dienst)))
                   then put '22'x Datum_uit_dienst +(-1) '22'x "," @;
                   else put Datum_uit_dienst @;
              end;
       if missing(Dienstverband)
         then put "," @;
         else do;
                 if find(Dienstverband,'0A'x) > 0 and 2+klength(Dienstverband) = klength(quote(trim(Dienstverband)))
                   then put '22'x Dienstverband +(-1) '22'x "," @;
                   else put Dienstverband @;
              end;
       if missing(Eigen_vervoer_jn)
         then put "," @;
         else do;
                 if find(Eigen_vervoer_jn,'0A'x) > 0 and 2+klength(Eigen_vervoer_jn) = klength(quote(trim(Eigen_vervoer_jn)))
                   then put '22'x Eigen_vervoer_jn +(-1) '22'x "," @;
                   else put Eigen_vervoer_jn @;
              end;
       if missing(Fun_cd)
         then put "," @;
         else do;
                 if find(Fun_cd,'0A'x) > 0 and 2+klength(Fun_cd) = klength(quote(trim(Fun_cd)))
                   then put '22'x Fun_cd +(-1) '22'x "," @;
                   else put Fun_cd @;
              end;
       if missing(Geslacht)
         then put "," @;
         else do;
                 if find(Geslacht,'0A'x) > 0 and 2+klength(Geslacht) = klength(quote(trim(Geslacht)))
                   then put '22'x Geslacht +(-1) '22'x "," @;
                   else put Geslacht @;
              end;
       if missing(Iban)
         then put "," @;
         else do;
                 if find(Iban,'0A'x) > 0 and 2+klength(Iban) = klength(quote(trim(Iban)))
                   then put '22'x Iban +(-1) '22'x "," @;
                   else put Iban @;
              end;
       if missing(Inleen_jn)
         then put "," @;
         else do;
                 if find(Inleen_jn,'0A'x) > 0 and 2+klength(Inleen_jn) = klength(quote(trim(Inleen_jn)))
                   then put '22'x Inleen_jn +(-1) '22'x "," @;
                   else put Inleen_jn @;
              end;
       if missing(Loc_cd)
         then put "," @;
         else do;
                 if find(Loc_cd,'0A'x) > 0 and 2+klength(Loc_cd) = klength(quote(trim(Loc_cd)))
                   then put '22'x Loc_cd +(-1) '22'x "," @;
                   else put Loc_cd @;
              end;
       if missing(Mdw_cd)
         then put "," @;
         else do;
                 if find(Mdw_cd,'0A'x) > 0 and 2+klength(Mdw_cd) = klength(quote(trim(Mdw_cd)))
                   then put '22'x Mdw_cd +(-1) '22'x "," @;
                   else put Mdw_cd @;
              end;
       if missing(Mdw_emailadres)
         then put "," @;
         else do;
                 if find(Mdw_emailadres,'0A'x) > 0 and 2+klength(Mdw_emailadres) = klength(quote(trim(Mdw_emailadres)))
                   then put '22'x Mdw_emailadres +(-1) '22'x "," @;
                   else put Mdw_emailadres @;
              end;
       if missing(Mdw_handtekening)
         then put "," @;
         else do;
                 if find(Mdw_handtekening,'0A'x) > 0 and 2+klength(Mdw_handtekening) = klength(quote(trim(Mdw_handtekening)))
                   then put '22'x Mdw_handtekening +(-1) '22'x "," @;
                   else put Mdw_handtekening @;
              end;
       if missing(Mdw_handtekening_image)
         then put "," @;
         else do;
                 if find(Mdw_handtekening_image,'0A'x) > 0 and 2+klength(Mdw_handtekening_image) = klength(quote(trim(Mdw_handtekening_image)))
                   then put '22'x Mdw_handtekening_image +(-1) '22'x "," @;
                   else put Mdw_handtekening_image @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Mobiel)
         then put "," @;
         else do;
                 if find(Mobiel,'0A'x) > 0 and 2+klength(Mobiel) = klength(quote(trim(Mobiel)))
                   then put '22'x Mobiel +(-1) '22'x "," @;
                   else put Mobiel @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Parkeerkaart)
         then put "," @;
         else do;
                 if find(Parkeerkaart,'0A'x) > 0 and 2+klength(Parkeerkaart) = klength(quote(trim(Parkeerkaart)))
                   then put '22'x Parkeerkaart +(-1) '22'x "," @;
                   else put Parkeerkaart @;
              end;
       if missing(Plaatsnaam)
         then put "," @;
         else do;
                 if find(Plaatsnaam,'0A'x) > 0 and 2+klength(Plaatsnaam) = klength(quote(trim(Plaatsnaam)))
                   then put '22'x Plaatsnaam +(-1) '22'x "," @;
                   else put Plaatsnaam @;
              end;
       if missing(Standplaats)
         then put "," @;
         else do;
                 if find(Standplaats,'0A'x) > 0 and 2+klength(Standplaats) = klength(quote(trim(Standplaats)))
                   then put '22'x Standplaats +(-1) '22'x "," @;
                   else put Standplaats @;
              end;
       if missing(Telefoon)
         then put "," @;
         else do;
                 if find(Telefoon,'0A'x) > 0 and 2+klength(Telefoon) = klength(quote(trim(Telefoon)))
                   then put '22'x Telefoon +(-1) '22'x "," @;
                   else put Telefoon @;
              end;
       if missing(Titel_na_cd)
         then put "," @;
         else do;
                 if find(Titel_na_cd,'0A'x) > 0 and 2+klength(Titel_na_cd) = klength(quote(trim(Titel_na_cd)))
                   then put '22'x Titel_na_cd +(-1) '22'x "," @;
                   else put Titel_na_cd @;
              end;
       if missing(Titel_voor_cd)
         then put "," @;
         else do;
                 if find(Titel_voor_cd,'0A'x) > 0 and 2+klength(Titel_voor_cd) = klength(quote(trim(Titel_voor_cd)))
                   then put '22'x Titel_voor_cd +(-1) '22'x "," @;
                   else put Titel_voor_cd @;
              end;
       if missing(Toestel_dh)
         then put "," @;
         else do;
                 if find(Toestel_dh,'0A'x) > 0 and 2+klength(Toestel_dh) = klength(quote(trim(Toestel_dh)))
                   then put '22'x Toestel_dh +(-1) '22'x "," @;
                   else put Toestel_dh @;
              end;
       if missing(Toestel_zw)
         then put "," @;
         else do;
                 if find(Toestel_zw,'0A'x) > 0 and 2+klength(Toestel_zw) = klength(quote(trim(Toestel_zw)))
                   then put '22'x Toestel_zw +(-1) '22'x "," @;
                   else put Toestel_zw @;
              end;
       if missing(Tvs_cd_oud)
         then put "," @;
         else do;
                 if find(Tvs_cd_oud,'0A'x) > 0 and 2+klength(Tvs_cd_oud) = klength(quote(trim(Tvs_cd_oud)))
                   then put '22'x Tvs_cd_oud +(-1) '22'x "," @;
                   else put Tvs_cd_oud @;
              end;
       if missing(Voorletters)
         then put "," @;
         else do;
                 if find(Voorletters,'0A'x) > 0 and 2+klength(Voorletters) = klength(quote(trim(Voorletters)))
                   then put '22'x Voorletters +(-1) '22'x "," @;
                   else put Voorletters @;
              end;
       if missing(Voornaam)
         then put "," @;
         else do;
                 if find(Voornaam,'0A'x) > 0 and 2+klength(Voornaam) = klength(quote(trim(Voornaam)))
                   then put '22'x Voornaam +(-1) '22'x "," @;
                   else put Voornaam @;
              end;
       if missing(Voorvoegsel)
         then put "," @;
         else do;
                 if find(Voorvoegsel,'0A'x) > 0 and 2+klength(Voorvoegsel) = klength(quote(trim(Voorvoegsel)))
                   then put '22'x Voorvoegsel +(-1) '22'x "," @;
                   else put Voorvoegsel @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_IOM_MEDEWERKERROL AS
   SELECT t1.Mdw_id,
          t1.Rol_cd,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Actief
     FROM DATAQASG.IOM_MEDEWERKERROL_TCMG t1;
QUIT;

data WORK.BAS_IOM_MEDEWERKERROL;
  set WORK.BAS_IOM_MEDEWERKERROL;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_IOM_MEDEWERKERROL.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Mdw_id" 
       ','
          "Rol_cd" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Actief" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_IOM_MEDEWERKERROL   end=EFIEOD; 
       format Mdw_id best12. ;
       format Rol_cd  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Actief  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Actief)
         then put "," @;
         else do;
                 if find(Actief,'0A'x) > 0 and 2+klength(Actief) = klength(quote(trim(Actief)))
                   then put '22'x Actief +(-1) '22'x "," @;
                   else put Actief @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_BEHANDELAAR AS
   SELECT t1.Mdw_id,
          t1.Jz_id,
          t1.Rol_cd,
          t1.Eigenaar,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.JZM_BEHANDELAAR_TCMG t1;
QUIT;

data WORK.BAS_JZM_BEHANDELAAR;
  set WORK.BAS_JZM_BEHANDELAAR;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BEHANDELAAR.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Mdw_id" 
       ','
          "Jz_id" 
       ','
          "Rol_cd" 
       ','
          "Eigenaar" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_BEHANDELAAR   end=EFIEOD; 
       format Mdw_id best12. ;
       format Jz_id best12. ;
       format Rol_cd  ;
       format Eigenaar  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Eigenaar)
         then put "," @;
         else do;
                 if find(Eigenaar,'0A'x) > 0 and 2+klength(Eigenaar) = klength(quote(trim(Eigenaar)))
                   then put '22'x Eigenaar +(-1) '22'x "," @;
                   else put Eigenaar @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_BEROEP AS
   SELECT t1.Jz_id,
          t1.Bzr_id,
          t1.Zaaknummer,
          t1.Datum_zitting FORMAT=B8601DT19. AS Datum_zitting,
          t1.Uitspraak,
          t1.Datum_uitspr FORMAT=B8601DT19. AS Datum_uitspr,
          t1.Bedrag_schade,
          t1.Bedrag_schade_nlg,
          t1.Datum_schade FORMAT=B8601DT19. AS Datum_schade
     FROM DATAQASG.JZM_BEROEP_TCMG t1;
QUIT;

data WORK.BAS_JZM_BEROEP;
  set WORK.BAS_JZM_BEROEP;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BEROEP.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Jz_id" 
       ','
          "Bzr_id" 
       ','
          "Zaaknummer" 
       ','
          "Datum_zitting" 
       ','
          "Uitspraak" 
       ','
          "Datum_uitspr" 
       ','
          "Bedrag_schade" 
       ','
          "Bedrag_schade_nlg" 
       ','
          "Datum_schade" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_BEROEP   end=EFIEOD; 
       format Jz_id best12. ;
       format Bzr_id best12. ;
       format Zaaknummer  ;
       format Datum_zitting B8601DT19. ;
       format Uitspraak  ;
       format Datum_uitspr B8601DT19. ;
       format Bedrag_schade best12. ;
       format Bedrag_schade_nlg best12. ;
       format Datum_schade B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Bzr_id)
         then put "," @;
         else do;
                 if find(Bzr_id,'0A'x) > 0 and 2+klength(Bzr_id) = klength(quote(trim(Bzr_id)))
                   then put '22'x Bzr_id +(-1) '22'x "," @;
                   else put Bzr_id @;
              end;
       if missing(Zaaknummer)
         then put "," @;
         else do;
                 if find(Zaaknummer,'0A'x) > 0 and 2+klength(Zaaknummer) = klength(quote(trim(Zaaknummer)))
                   then put '22'x Zaaknummer +(-1) '22'x "," @;
                   else put Zaaknummer @;
              end;
       if missing(Datum_zitting)
         then put "," @;
         else do;
                 if find(Datum_zitting,'0A'x) > 0 and 2+klength(Datum_zitting) = klength(quote(trim(Datum_zitting)))
                   then put '22'x Datum_zitting +(-1) '22'x "," @;
                   else put Datum_zitting @;
              end;
       if missing(Uitspraak)
         then put "," @;
         else do;
                 if find(Uitspraak,'0A'x) > 0 and 2+klength(Uitspraak) = klength(quote(trim(Uitspraak)))
                   then put '22'x Uitspraak +(-1) '22'x "," @;
                   else put Uitspraak @;
              end;
       if missing(Datum_uitspr)
         then put "," @;
         else do;
                 if find(Datum_uitspr,'0A'x) > 0 and 2+klength(Datum_uitspr) = klength(quote(trim(Datum_uitspr)))
                   then put '22'x Datum_uitspr +(-1) '22'x "," @;
                   else put Datum_uitspr @;
              end;
       if missing(Bedrag_schade)
         then put "," @;
         else do;
                 if find(Bedrag_schade,'0A'x) > 0 and 2+klength(Bedrag_schade) = klength(quote(trim(Bedrag_schade)))
                   then put '22'x Bedrag_schade +(-1) '22'x "," @;
                   else put Bedrag_schade @;
              end;
       if missing(Bedrag_schade_nlg)
         then put "," @;
         else do;
                 if find(Bedrag_schade_nlg,'0A'x) > 0 and 2+klength(Bedrag_schade_nlg) = klength(quote(trim(Bedrag_schade_nlg)))
                   then put '22'x Bedrag_schade_nlg +(-1) '22'x "," @;
                   else put Bedrag_schade_nlg @;
              end;
       if missing(Datum_schade)
         then put "," @;
         else do;
                 if find(Datum_schade,'0A'x) > 0 and 2+klength(Datum_schade) = klength(quote(trim(Datum_schade)))
                   then put '22'x Datum_schade +(-1) '22'x "," @;
                   else put Datum_schade @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_BEZWAAR AS
   SELECT t1.Jz_id,
          t1.Belasting_cd,
          t1.Datum_compleet FORMAT=B8601DT19. AS Datum_compleet,
          t1.Wachttijd,
          t1.Datum_hoorzitting_org FORMAT=B8601DT19. AS Datum_hoorzitting_org,
          t1.Tijd_hoorzitting_org FORMAT=B8601DT19. AS Tijd_hoorzitting_org,
          t1.Datum_hoorzitting FORMAT=B8601DT19. AS Datum_hoorzitting,
          t1.Tijd_hoorzitting FORMAT=B8601DT19. AS Tijd_hoorzitting,
          t1.App_verschenen,
          t1.Datum_ontvangst FORMAT=B8601DT19. AS Datum_ontvangst,
          t1.Datum_vragenbrief FORMAT=B8601DT19. AS Datum_vragenbrief,
          t1.Wett_termijn_7_1 FORMAT=B8601DT19. AS Wett_termijn_7_1,
          t1.Wett_termijn_7_3 FORMAT=B8601DT19. AS Wett_termijn_7_3,
          t1.Wett_termijn_datum FORMAT=B8601DT19. AS Wett_termijn_datum,
          t1.Uitstel_datum FORMAT=B8601DT19. AS Uitstel_datum,
          t1.Overschrijding_datum FORMAT=B8601DT19. AS Overschrijding_datum,
          t1.Primair_lid_3 FORMAT=B8601DT19. AS Primair_lid_3,
          t1.Reken_cor_id,
          t1.Reken_wett_termijn_7_1 FORMAT=B8601DT19. AS Reken_wett_termijn_7_1,
          t1.Adviescommissie,
          t1.Datum_1e_heropname_schade FORMAT=B8601DT19. AS Datum_1e_heropname_schade,
          t1.Tijd_1e_heropname_schade FORMAT=B8601DT19. AS Tijd_1e_heropname_schade,
          t1.Datum_2e_heropname_schade FORMAT=B8601DT19. AS Datum_2e_heropname_schade,
          t1.Tijd_2e_heropname_schade FORMAT=B8601DT19. AS Tijd_2e_heropname_schade,
          t1.Datum_orig_schouw FORMAT=B8601DT19. AS Datum_orig_schouw,
          t1.Tijd_orig_schouw FORMAT=B8601DT19. AS Tijd_orig_schouw,
          t1.Datum_def_schouw FORMAT=B8601DT19. AS Datum_def_schouw,
          t1.Tijd_def_schouw FORMAT=B8601DT19. AS Tijd_def_schouw
     FROM DATAQASG.JZM_BEZWAAR_TCMG t1;
QUIT;

data WORK.BAS_JZM_BEZWAAR;
  set WORK.BAS_JZM_BEZWAAR;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BEZWAAR.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Jz_id" 
       ','
          "Belasting_cd" 
       ','
          "Datum_compleet" 
       ','
          "Wachttijd" 
       ','
          "Datum_hoorzitting_org" 
       ','
          "Tijd_hoorzitting_org" 
       ','
          "Datum_hoorzitting" 
       ','
          "Tijd_hoorzitting" 
       ','
          "App_verschenen" 
       ','
          "Datum_ontvangst" 
       ','
          "Datum_vragenbrief" 
       ','
          "Wett_termijn_7_1" 
       ','
          "Wett_termijn_7_3" 
       ','
          "Wett_termijn_datum" 
       ','
          "Uitstel_datum" 
       ','
          "Overschrijding_datum" 
       ','
          "Primair_lid_3" 
       ','
          "Reken_cor_id" 
       ','
          "Reken_wett_termijn_7_1" 
       ','
          "Adviescommissie" 
       ','
          "Datum_1e_heropname_schade" 
       ','
          "Tijd_1e_heropname_schade" 
       ','
          "Datum_2e_heropname_schade" 
       ','
          "Tijd_2e_heropname_schade" 
       ','
          "Datum_orig_schouw" 
       ','
          "Tijd_orig_schouw" 
       ','
          "Datum_def_schouw" 
       ','
          "Tijd_def_schouw" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_BEZWAAR   end=EFIEOD; 
       format Jz_id best12. ;
       format Belasting_cd  ;
       format Datum_compleet B8601DT19. ;
       format Wachttijd best12. ;
       format Datum_hoorzitting_org B8601DT19. ;
       format Tijd_hoorzitting_org B8601DT19. ;
       format Datum_hoorzitting B8601DT19. ;
       format Tijd_hoorzitting B8601DT19. ;
       format App_verschenen  ;
       format Datum_ontvangst B8601DT19. ;
       format Datum_vragenbrief B8601DT19. ;
       format Wett_termijn_7_1 B8601DT19. ;
       format Wett_termijn_7_3 B8601DT19. ;
       format Wett_termijn_datum B8601DT19. ;
       format Uitstel_datum B8601DT19. ;
       format Overschrijding_datum B8601DT19. ;
       format Primair_lid_3 B8601DT19. ;
       format Reken_cor_id best12. ;
       format Reken_wett_termijn_7_1 B8601DT19. ;
       format Adviescommissie  ;
       format Datum_1e_heropname_schade B8601DT19. ;
       format Tijd_1e_heropname_schade B8601DT19. ;
       format Datum_2e_heropname_schade B8601DT19. ;
       format Tijd_2e_heropname_schade B8601DT19. ;
       format Datum_orig_schouw B8601DT19. ;
       format Tijd_orig_schouw B8601DT19. ;
       format Datum_def_schouw B8601DT19. ;
       format Tijd_def_schouw B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Belasting_cd)
         then put "," @;
         else do;
                 if find(Belasting_cd,'0A'x) > 0 and 2+klength(Belasting_cd) = klength(quote(trim(Belasting_cd)))
                   then put '22'x Belasting_cd +(-1) '22'x "," @;
                   else put Belasting_cd @;
              end;
       if missing(Datum_compleet)
         then put "," @;
         else do;
                 if find(Datum_compleet,'0A'x) > 0 and 2+klength(Datum_compleet) = klength(quote(trim(Datum_compleet)))
                   then put '22'x Datum_compleet +(-1) '22'x "," @;
                   else put Datum_compleet @;
              end;
       if missing(Wachttijd)
         then put "," @;
         else do;
                 if find(Wachttijd,'0A'x) > 0 and 2+klength(Wachttijd) = klength(quote(trim(Wachttijd)))
                   then put '22'x Wachttijd +(-1) '22'x "," @;
                   else put Wachttijd @;
              end;
       if missing(Datum_hoorzitting_org)
         then put "," @;
         else do;
                 if find(Datum_hoorzitting_org,'0A'x) > 0 and 2+klength(Datum_hoorzitting_org) = klength(quote(trim(Datum_hoorzitting_org)))
                   then put '22'x Datum_hoorzitting_org +(-1) '22'x "," @;
                   else put Datum_hoorzitting_org @;
              end;
       if missing(Tijd_hoorzitting_org)
         then put "," @;
         else do;
                 if find(Tijd_hoorzitting_org,'0A'x) > 0 and 2+klength(Tijd_hoorzitting_org) = klength(quote(trim(Tijd_hoorzitting_org)))
                   then put '22'x Tijd_hoorzitting_org +(-1) '22'x "," @;
                   else put Tijd_hoorzitting_org @;
              end;
       if missing(Datum_hoorzitting)
         then put "," @;
         else do;
                 if find(Datum_hoorzitting,'0A'x) > 0 and 2+klength(Datum_hoorzitting) = klength(quote(trim(Datum_hoorzitting)))
                   then put '22'x Datum_hoorzitting +(-1) '22'x "," @;
                   else put Datum_hoorzitting @;
              end;
       if missing(Tijd_hoorzitting)
         then put "," @;
         else do;
                 if find(Tijd_hoorzitting,'0A'x) > 0 and 2+klength(Tijd_hoorzitting) = klength(quote(trim(Tijd_hoorzitting)))
                   then put '22'x Tijd_hoorzitting +(-1) '22'x "," @;
                   else put Tijd_hoorzitting @;
              end;
       if missing(App_verschenen)
         then put "," @;
         else do;
                 if find(App_verschenen,'0A'x) > 0 and 2+klength(App_verschenen) = klength(quote(trim(App_verschenen)))
                   then put '22'x App_verschenen +(-1) '22'x "," @;
                   else put App_verschenen @;
              end;
       if missing(Datum_ontvangst)
         then put "," @;
         else do;
                 if find(Datum_ontvangst,'0A'x) > 0 and 2+klength(Datum_ontvangst) = klength(quote(trim(Datum_ontvangst)))
                   then put '22'x Datum_ontvangst +(-1) '22'x "," @;
                   else put Datum_ontvangst @;
              end;
       if missing(Datum_vragenbrief)
         then put "," @;
         else do;
                 if find(Datum_vragenbrief,'0A'x) > 0 and 2+klength(Datum_vragenbrief) = klength(quote(trim(Datum_vragenbrief)))
                   then put '22'x Datum_vragenbrief +(-1) '22'x "," @;
                   else put Datum_vragenbrief @;
              end;
       if missing(Wett_termijn_7_1)
         then put "," @;
         else do;
                 if find(Wett_termijn_7_1,'0A'x) > 0 and 2+klength(Wett_termijn_7_1) = klength(quote(trim(Wett_termijn_7_1)))
                   then put '22'x Wett_termijn_7_1 +(-1) '22'x "," @;
                   else put Wett_termijn_7_1 @;
              end;
       if missing(Wett_termijn_7_3)
         then put "," @;
         else do;
                 if find(Wett_termijn_7_3,'0A'x) > 0 and 2+klength(Wett_termijn_7_3) = klength(quote(trim(Wett_termijn_7_3)))
                   then put '22'x Wett_termijn_7_3 +(-1) '22'x "," @;
                   else put Wett_termijn_7_3 @;
              end;
       if missing(Wett_termijn_datum)
         then put "," @;
         else do;
                 if find(Wett_termijn_datum,'0A'x) > 0 and 2+klength(Wett_termijn_datum) = klength(quote(trim(Wett_termijn_datum)))
                   then put '22'x Wett_termijn_datum +(-1) '22'x "," @;
                   else put Wett_termijn_datum @;
              end;
       if missing(Uitstel_datum)
         then put "," @;
         else do;
                 if find(Uitstel_datum,'0A'x) > 0 and 2+klength(Uitstel_datum) = klength(quote(trim(Uitstel_datum)))
                   then put '22'x Uitstel_datum +(-1) '22'x "," @;
                   else put Uitstel_datum @;
              end;
       if missing(Overschrijding_datum)
         then put "," @;
         else do;
                 if find(Overschrijding_datum,'0A'x) > 0 and 2+klength(Overschrijding_datum) = klength(quote(trim(Overschrijding_datum)))
                   then put '22'x Overschrijding_datum +(-1) '22'x "," @;
                   else put Overschrijding_datum @;
              end;
       if missing(Primair_lid_3)
         then put "," @;
         else do;
                 if find(Primair_lid_3,'0A'x) > 0 and 2+klength(Primair_lid_3) = klength(quote(trim(Primair_lid_3)))
                   then put '22'x Primair_lid_3 +(-1) '22'x "," @;
                   else put Primair_lid_3 @;
              end;
       if missing(Reken_cor_id)
         then put "," @;
         else do;
                 if find(Reken_cor_id,'0A'x) > 0 and 2+klength(Reken_cor_id) = klength(quote(trim(Reken_cor_id)))
                   then put '22'x Reken_cor_id +(-1) '22'x "," @;
                   else put Reken_cor_id @;
              end;
       if missing(Reken_wett_termijn_7_1)
         then put "," @;
         else do;
                 if find(Reken_wett_termijn_7_1,'0A'x) > 0 and 2+klength(Reken_wett_termijn_7_1) = klength(quote(trim(Reken_wett_termijn_7_1)))
                   then put '22'x Reken_wett_termijn_7_1 +(-1) '22'x "," @;
                   else put Reken_wett_termijn_7_1 @;
              end;
       if missing(Adviescommissie)
         then put "," @;
         else do;
                 if find(Adviescommissie,'0A'x) > 0 and 2+klength(Adviescommissie) = klength(quote(trim(Adviescommissie)))
                   then put '22'x Adviescommissie +(-1) '22'x "," @;
                   else put Adviescommissie @;
              end;
       if missing(Datum_1e_heropname_schade)
         then put "," @;
         else do;
                 if find(Datum_1e_heropname_schade,'0A'x) > 0 and 2+klength(Datum_1e_heropname_schade) = klength(quote(trim(Datum_1e_heropname_schade)))
                   then put '22'x Datum_1e_heropname_schade +(-1) '22'x "," @;
                   else put Datum_1e_heropname_schade @;
              end;
       if missing(Tijd_1e_heropname_schade)
         then put "," @;
         else do;
                 if find(Tijd_1e_heropname_schade,'0A'x) > 0 and 2+klength(Tijd_1e_heropname_schade) = klength(quote(trim(Tijd_1e_heropname_schade)))
                   then put '22'x Tijd_1e_heropname_schade +(-1) '22'x "," @;
                   else put Tijd_1e_heropname_schade @;
              end;
       if missing(Datum_2e_heropname_schade)
         then put "," @;
         else do;
                 if find(Datum_2e_heropname_schade,'0A'x) > 0 and 2+klength(Datum_2e_heropname_schade) = klength(quote(trim(Datum_2e_heropname_schade)))
                   then put '22'x Datum_2e_heropname_schade +(-1) '22'x "," @;
                   else put Datum_2e_heropname_schade @;
              end;
       if missing(Tijd_2e_heropname_schade)
         then put "," @;
         else do;
                 if find(Tijd_2e_heropname_schade,'0A'x) > 0 and 2+klength(Tijd_2e_heropname_schade) = klength(quote(trim(Tijd_2e_heropname_schade)))
                   then put '22'x Tijd_2e_heropname_schade +(-1) '22'x "," @;
                   else put Tijd_2e_heropname_schade @;
              end;
       if missing(Datum_orig_schouw)
         then put "," @;
         else do;
                 if find(Datum_orig_schouw,'0A'x) > 0 and 2+klength(Datum_orig_schouw) = klength(quote(trim(Datum_orig_schouw)))
                   then put '22'x Datum_orig_schouw +(-1) '22'x "," @;
                   else put Datum_orig_schouw @;
              end;
       if missing(Tijd_orig_schouw)
         then put "," @;
         else do;
                 if find(Tijd_orig_schouw,'0A'x) > 0 and 2+klength(Tijd_orig_schouw) = klength(quote(trim(Tijd_orig_schouw)))
                   then put '22'x Tijd_orig_schouw +(-1) '22'x "," @;
                   else put Tijd_orig_schouw @;
              end;
       if missing(Datum_def_schouw)
         then put "," @;
         else do;
                 if find(Datum_def_schouw,'0A'x) > 0 and 2+klength(Datum_def_schouw) = klength(quote(trim(Datum_def_schouw)))
                   then put '22'x Datum_def_schouw +(-1) '22'x "," @;
                   else put Datum_def_schouw @;
              end;
       if missing(Tijd_def_schouw)
         then put "," @;
         else do;
                 if find(Tijd_def_schouw,'0A'x) > 0 and 2+klength(Tijd_def_schouw) = klength(quote(trim(Tijd_def_schouw)))
                   then put '22'x Tijd_def_schouw +(-1) '22'x "," @;
                   else put Tijd_def_schouw @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_BEZWAAR_TERMIJN_HIST AS
   SELECT t1.Jz_id,
          t1.Vanaf_datum FORMAT=B8601DT19. AS Vanaf_datum,
          t1.Volg_nr,
          t1.Jz_nr,
          t1.Cor_id,
          t1.Wijziging_in,
          t1.Sts_cd,
          t1.Wett_termijn_7_1 FORMAT=B8601DT19. AS Wett_termijn_7_1,
          t1.Wett_termijn_7_3 FORMAT=B8601DT19. AS Wett_termijn_7_3,
          t1.Uitstel_datum FORMAT=B8601DT19. AS Uitstel_datum,
          t1.Overschrijding_datum FORMAT=B8601DT19. AS Overschrijding_datum,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Adviescommissie
     FROM DATAQASG.JZM_BEZWAAR_TERMIJN_HIST_TCMG t1;
QUIT;

data WORK.BAS_JZM_BEZWAAR_TERMIJN_HIST;
  set WORK.BAS_JZM_BEZWAAR_TERMIJN_HIST;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BEZWAAR_TERMIJN_HIST.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Jz_id" 
       ','
          "Vanaf_datum" 
       ','
          "Volg_nr" 
       ','
          "Jz_nr" 
       ','
          "Cor_id" 
       ','
          "Wijziging_in" 
       ','
          "Sts_cd" 
       ','
          "Wett_termijn_7_1" 
       ','
          "Wett_termijn_7_3" 
       ','
          "Uitstel_datum" 
       ','
          "Overschrijding_datum" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Adviescommissie" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_BEZWAAR_TERMIJN_HIST   end=EFIEOD; 
       format Jz_id best12. ;
       format Vanaf_datum B8601DT19. ;
       format Volg_nr best12. ;
       format Jz_nr  ;
       format Cor_id best12. ;
       format Wijziging_in  ;
       format Sts_cd  ;
       format Wett_termijn_7_1 B8601DT19. ;
       format Wett_termijn_7_3 B8601DT19. ;
       format Uitstel_datum B8601DT19. ;
       format Overschrijding_datum B8601DT19. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Adviescommissie  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Vanaf_datum)
         then put "," @;
         else do;
                 if find(Vanaf_datum,'0A'x) > 0 and 2+klength(Vanaf_datum) = klength(quote(trim(Vanaf_datum)))
                   then put '22'x Vanaf_datum +(-1) '22'x "," @;
                   else put Vanaf_datum @;
              end;
       if missing(Volg_nr)
         then put "," @;
         else do;
                 if find(Volg_nr,'0A'x) > 0 and 2+klength(Volg_nr) = klength(quote(trim(Volg_nr)))
                   then put '22'x Volg_nr +(-1) '22'x "," @;
                   else put Volg_nr @;
              end;
       if missing(Jz_nr)
         then put "," @;
         else do;
                 if find(Jz_nr,'0A'x) > 0 and 2+klength(Jz_nr) = klength(quote(trim(Jz_nr)))
                   then put '22'x Jz_nr +(-1) '22'x "," @;
                   else put Jz_nr @;
              end;
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Wijziging_in)
         then put "," @;
         else do;
                 if find(Wijziging_in,'0A'x) > 0 and 2+klength(Wijziging_in) = klength(quote(trim(Wijziging_in)))
                   then put '22'x Wijziging_in +(-1) '22'x "," @;
                   else put Wijziging_in @;
              end;
       if missing(Sts_cd)
         then put "," @;
         else do;
                 if find(Sts_cd,'0A'x) > 0 and 2+klength(Sts_cd) = klength(quote(trim(Sts_cd)))
                   then put '22'x Sts_cd +(-1) '22'x "," @;
                   else put Sts_cd @;
              end;
       if missing(Wett_termijn_7_1)
         then put "," @;
         else do;
                 if find(Wett_termijn_7_1,'0A'x) > 0 and 2+klength(Wett_termijn_7_1) = klength(quote(trim(Wett_termijn_7_1)))
                   then put '22'x Wett_termijn_7_1 +(-1) '22'x "," @;
                   else put Wett_termijn_7_1 @;
              end;
       if missing(Wett_termijn_7_3)
         then put "," @;
         else do;
                 if find(Wett_termijn_7_3,'0A'x) > 0 and 2+klength(Wett_termijn_7_3) = klength(quote(trim(Wett_termijn_7_3)))
                   then put '22'x Wett_termijn_7_3 +(-1) '22'x "," @;
                   else put Wett_termijn_7_3 @;
              end;
       if missing(Uitstel_datum)
         then put "," @;
         else do;
                 if find(Uitstel_datum,'0A'x) > 0 and 2+klength(Uitstel_datum) = klength(quote(trim(Uitstel_datum)))
                   then put '22'x Uitstel_datum +(-1) '22'x "," @;
                   else put Uitstel_datum @;
              end;
       if missing(Overschrijding_datum)
         then put "," @;
         else do;
                 if find(Overschrijding_datum,'0A'x) > 0 and 2+klength(Overschrijding_datum) = klength(quote(trim(Overschrijding_datum)))
                   then put '22'x Overschrijding_datum +(-1) '22'x "," @;
                   else put Overschrijding_datum @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Adviescommissie)
         then put "," @;
         else do;
                 if find(Adviescommissie,'0A'x) > 0 and 2+klength(Adviescommissie) = klength(quote(trim(Adviescommissie)))
                   then put '22'x Adviescommissie +(-1) '22'x "," @;
                   else put Adviescommissie @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_BOB_WIZARD AS
   SELECT t1.Jz_id,
          t1.Verleen_bedrag,
          t1.Betaal_bedrag,
          t1.Vaststelling_bedrag,
          t1.Tra_cd_1,
          t1.Bedrag_tra_cd_1,
          t1.Tra_cd_2,
          t1.Bedrag_tra_cd_2,
          t1.Tra_cd_3,
          t1.Bedrag_tra_cd_3,
          t1.Sts_cd_voor,
          t1.Sts_cd_na,
          t1.Verleend_voor,
          t1.Gedeclareerd_voor,
          t1.Betaald_voor,
          t1.Ingetrokken_voor,
          t1.Open_vordering_voor,
          t1.Open_verlening_voor,
          t1.Verleen_na,
          t1.Gedeclareerd_na,
          t1.Betaald_na,
          t1.Ingetrokken_na,
          t1.Open_vordering_na,
          t1.Open_verlening_na,
          t1.Aanmaken_bob,
          t1.Verwijder_trans,
          t1.Cst_cd,
          t1.Cst_cd_beschikking,
          t1.Cor_id_beschikking,
          t1.Tra_id_beschikking_1,
          t1.Tra_cd_beschikking_1,
          t1.Tra_bedrag_beschikking_1,
          t1.Tra_id_beschikking_2,
          t1.Tra_cd_beschikking_2,
          t1.Tra_bedrag_beschikking_2,
          t1.Tra_id_afd,
          t1.Bedrag_afspraak_afd,
          t1.Datum_afspraak_afd FORMAT=B8601DT19. AS Datum_afspraak_afd,
          t1.Datum_afd FORMAT=B8601DT19. AS Datum_afd,
          t1.Tra_cd_afd,
          t1.Vordering_tra_id_afd,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user
     FROM DATAQASG.JZM_BOB_WIZARD_TCMG t1;
QUIT;

data WORK.BAS_JZM_BOB_WIZARD;
  set WORK.BAS_JZM_BOB_WIZARD;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BOB_WIZARD.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Jz_id" 
       ','
          "Verleen_bedrag" 
       ','
          "Betaal_bedrag" 
       ','
          "Vaststelling_bedrag" 
       ','
          "Tra_cd_1" 
       ','
          "Bedrag_tra_cd_1" 
       ','
          "Tra_cd_2" 
       ','
          "Bedrag_tra_cd_2" 
       ','
          "Tra_cd_3" 
       ','
          "Bedrag_tra_cd_3" 
       ','
          "Sts_cd_voor" 
       ','
          "Sts_cd_na" 
       ','
          "Verleend_voor" 
       ','
          "Gedeclareerd_voor" 
       ','
          "Betaald_voor" 
       ','
          "Ingetrokken_voor" 
       ','
          "Open_vordering_voor" 
       ','
          "Open_verlening_voor" 
       ','
          "Verleen_na" 
       ','
          "Gedeclareerd_na" 
       ','
          "Betaald_na" 
       ','
          "Ingetrokken_na" 
       ','
          "Open_vordering_na" 
       ','
          "Open_verlening_na" 
       ','
          "Aanmaken_bob" 
       ','
          "Verwijder_trans" 
       ','
          "Cst_cd" 
       ','
          "Cst_cd_beschikking" 
       ','
          "Cor_id_beschikking" 
       ','
          "Tra_id_beschikking_1" 
       ','
          "Tra_cd_beschikking_1" 
       ','
          "Tra_bedrag_beschikking_1" 
       ','
          "Tra_id_beschikking_2" 
       ','
          "Tra_cd_beschikking_2" 
       ','
          "Tra_bedrag_beschikking_2" 
       ','
          "Tra_id_afd" 
       ','
          "Bedrag_afspraak_afd" 
       ','
          "Datum_afspraak_afd" 
       ','
          "Datum_afd" 
       ','
          "Tra_cd_afd" 
       ','
          "Vordering_tra_id_afd" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_BOB_WIZARD   end=EFIEOD; 
       format Jz_id best12. ;
       format Verleen_bedrag best12. ;
       format Betaal_bedrag best12. ;
       format Vaststelling_bedrag best12. ;
       format Tra_cd_1  ;
       format Bedrag_tra_cd_1 best12. ;
       format Tra_cd_2  ;
       format Bedrag_tra_cd_2 best12. ;
       format Tra_cd_3  ;
       format Bedrag_tra_cd_3 best12. ;
       format Sts_cd_voor  ;
       format Sts_cd_na  ;
       format Verleend_voor best12. ;
       format Gedeclareerd_voor best12. ;
       format Betaald_voor best12. ;
       format Ingetrokken_voor best12. ;
       format Open_vordering_voor best12. ;
       format Open_verlening_voor best12. ;
       format Verleen_na best12. ;
       format Gedeclareerd_na best12. ;
       format Betaald_na best12. ;
       format Ingetrokken_na best12. ;
       format Open_vordering_na best12. ;
       format Open_verlening_na best12. ;
       format Aanmaken_bob  ;
       format Verwijder_trans  ;
       format Cst_cd  ;
       format Cst_cd_beschikking  ;
       format Cor_id_beschikking best12. ;
       format Tra_id_beschikking_1 best12. ;
       format Tra_cd_beschikking_1  ;
       format Tra_bedrag_beschikking_1 best12. ;
       format Tra_id_beschikking_2 best12. ;
       format Tra_cd_beschikking_2  ;
       format Tra_bedrag_beschikking_2 best12. ;
       format Tra_id_afd best12. ;
       format Bedrag_afspraak_afd best12. ;
       format Datum_afspraak_afd B8601DT19. ;
       format Datum_afd B8601DT19. ;
       format Tra_cd_afd  ;
       format Vordering_tra_id_afd best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Verleen_bedrag)
         then put "," @;
         else do;
                 if find(Verleen_bedrag,'0A'x) > 0 and 2+klength(Verleen_bedrag) = klength(quote(trim(Verleen_bedrag)))
                   then put '22'x Verleen_bedrag +(-1) '22'x "," @;
                   else put Verleen_bedrag @;
              end;
       if missing(Betaal_bedrag)
         then put "," @;
         else do;
                 if find(Betaal_bedrag,'0A'x) > 0 and 2+klength(Betaal_bedrag) = klength(quote(trim(Betaal_bedrag)))
                   then put '22'x Betaal_bedrag +(-1) '22'x "," @;
                   else put Betaal_bedrag @;
              end;
       if missing(Vaststelling_bedrag)
         then put "," @;
         else do;
                 if find(Vaststelling_bedrag,'0A'x) > 0 and 2+klength(Vaststelling_bedrag) = klength(quote(trim(Vaststelling_bedrag)))
                   then put '22'x Vaststelling_bedrag +(-1) '22'x "," @;
                   else put Vaststelling_bedrag @;
              end;
       if missing(Tra_cd_1)
         then put "," @;
         else do;
                 if find(Tra_cd_1,'0A'x) > 0 and 2+klength(Tra_cd_1) = klength(quote(trim(Tra_cd_1)))
                   then put '22'x Tra_cd_1 +(-1) '22'x "," @;
                   else put Tra_cd_1 @;
              end;
       if missing(Bedrag_tra_cd_1)
         then put "," @;
         else do;
                 if find(Bedrag_tra_cd_1,'0A'x) > 0 and 2+klength(Bedrag_tra_cd_1) = klength(quote(trim(Bedrag_tra_cd_1)))
                   then put '22'x Bedrag_tra_cd_1 +(-1) '22'x "," @;
                   else put Bedrag_tra_cd_1 @;
              end;
       if missing(Tra_cd_2)
         then put "," @;
         else do;
                 if find(Tra_cd_2,'0A'x) > 0 and 2+klength(Tra_cd_2) = klength(quote(trim(Tra_cd_2)))
                   then put '22'x Tra_cd_2 +(-1) '22'x "," @;
                   else put Tra_cd_2 @;
              end;
       if missing(Bedrag_tra_cd_2)
         then put "," @;
         else do;
                 if find(Bedrag_tra_cd_2,'0A'x) > 0 and 2+klength(Bedrag_tra_cd_2) = klength(quote(trim(Bedrag_tra_cd_2)))
                   then put '22'x Bedrag_tra_cd_2 +(-1) '22'x "," @;
                   else put Bedrag_tra_cd_2 @;
              end;
       if missing(Tra_cd_3)
         then put "," @;
         else do;
                 if find(Tra_cd_3,'0A'x) > 0 and 2+klength(Tra_cd_3) = klength(quote(trim(Tra_cd_3)))
                   then put '22'x Tra_cd_3 +(-1) '22'x "," @;
                   else put Tra_cd_3 @;
              end;
       if missing(Bedrag_tra_cd_3)
         then put "," @;
         else do;
                 if find(Bedrag_tra_cd_3,'0A'x) > 0 and 2+klength(Bedrag_tra_cd_3) = klength(quote(trim(Bedrag_tra_cd_3)))
                   then put '22'x Bedrag_tra_cd_3 +(-1) '22'x "," @;
                   else put Bedrag_tra_cd_3 @;
              end;
       if missing(Sts_cd_voor)
         then put "," @;
         else do;
                 if find(Sts_cd_voor,'0A'x) > 0 and 2+klength(Sts_cd_voor) = klength(quote(trim(Sts_cd_voor)))
                   then put '22'x Sts_cd_voor +(-1) '22'x "," @;
                   else put Sts_cd_voor @;
              end;
       if missing(Sts_cd_na)
         then put "," @;
         else do;
                 if find(Sts_cd_na,'0A'x) > 0 and 2+klength(Sts_cd_na) = klength(quote(trim(Sts_cd_na)))
                   then put '22'x Sts_cd_na +(-1) '22'x "," @;
                   else put Sts_cd_na @;
              end;
       if missing(Verleend_voor)
         then put "," @;
         else do;
                 if find(Verleend_voor,'0A'x) > 0 and 2+klength(Verleend_voor) = klength(quote(trim(Verleend_voor)))
                   then put '22'x Verleend_voor +(-1) '22'x "," @;
                   else put Verleend_voor @;
              end;
       if missing(Gedeclareerd_voor)
         then put "," @;
         else do;
                 if find(Gedeclareerd_voor,'0A'x) > 0 and 2+klength(Gedeclareerd_voor) = klength(quote(trim(Gedeclareerd_voor)))
                   then put '22'x Gedeclareerd_voor +(-1) '22'x "," @;
                   else put Gedeclareerd_voor @;
              end;
       if missing(Betaald_voor)
         then put "," @;
         else do;
                 if find(Betaald_voor,'0A'x) > 0 and 2+klength(Betaald_voor) = klength(quote(trim(Betaald_voor)))
                   then put '22'x Betaald_voor +(-1) '22'x "," @;
                   else put Betaald_voor @;
              end;
       if missing(Ingetrokken_voor)
         then put "," @;
         else do;
                 if find(Ingetrokken_voor,'0A'x) > 0 and 2+klength(Ingetrokken_voor) = klength(quote(trim(Ingetrokken_voor)))
                   then put '22'x Ingetrokken_voor +(-1) '22'x "," @;
                   else put Ingetrokken_voor @;
              end;
       if missing(Open_vordering_voor)
         then put "," @;
         else do;
                 if find(Open_vordering_voor,'0A'x) > 0 and 2+klength(Open_vordering_voor) = klength(quote(trim(Open_vordering_voor)))
                   then put '22'x Open_vordering_voor +(-1) '22'x "," @;
                   else put Open_vordering_voor @;
              end;
       if missing(Open_verlening_voor)
         then put "," @;
         else do;
                 if find(Open_verlening_voor,'0A'x) > 0 and 2+klength(Open_verlening_voor) = klength(quote(trim(Open_verlening_voor)))
                   then put '22'x Open_verlening_voor +(-1) '22'x "," @;
                   else put Open_verlening_voor @;
              end;
       if missing(Verleen_na)
         then put "," @;
         else do;
                 if find(Verleen_na,'0A'x) > 0 and 2+klength(Verleen_na) = klength(quote(trim(Verleen_na)))
                   then put '22'x Verleen_na +(-1) '22'x "," @;
                   else put Verleen_na @;
              end;
       if missing(Gedeclareerd_na)
         then put "," @;
         else do;
                 if find(Gedeclareerd_na,'0A'x) > 0 and 2+klength(Gedeclareerd_na) = klength(quote(trim(Gedeclareerd_na)))
                   then put '22'x Gedeclareerd_na +(-1) '22'x "," @;
                   else put Gedeclareerd_na @;
              end;
       if missing(Betaald_na)
         then put "," @;
         else do;
                 if find(Betaald_na,'0A'x) > 0 and 2+klength(Betaald_na) = klength(quote(trim(Betaald_na)))
                   then put '22'x Betaald_na +(-1) '22'x "," @;
                   else put Betaald_na @;
              end;
       if missing(Ingetrokken_na)
         then put "," @;
         else do;
                 if find(Ingetrokken_na,'0A'x) > 0 and 2+klength(Ingetrokken_na) = klength(quote(trim(Ingetrokken_na)))
                   then put '22'x Ingetrokken_na +(-1) '22'x "," @;
                   else put Ingetrokken_na @;
              end;
       if missing(Open_vordering_na)
         then put "," @;
         else do;
                 if find(Open_vordering_na,'0A'x) > 0 and 2+klength(Open_vordering_na) = klength(quote(trim(Open_vordering_na)))
                   then put '22'x Open_vordering_na +(-1) '22'x "," @;
                   else put Open_vordering_na @;
              end;
       if missing(Open_verlening_na)
         then put "," @;
         else do;
                 if find(Open_verlening_na,'0A'x) > 0 and 2+klength(Open_verlening_na) = klength(quote(trim(Open_verlening_na)))
                   then put '22'x Open_verlening_na +(-1) '22'x "," @;
                   else put Open_verlening_na @;
              end;
       if missing(Aanmaken_bob)
         then put "," @;
         else do;
                 if find(Aanmaken_bob,'0A'x) > 0 and 2+klength(Aanmaken_bob) = klength(quote(trim(Aanmaken_bob)))
                   then put '22'x Aanmaken_bob +(-1) '22'x "," @;
                   else put Aanmaken_bob @;
              end;
       if missing(Verwijder_trans)
         then put "," @;
         else do;
                 if find(Verwijder_trans,'0A'x) > 0 and 2+klength(Verwijder_trans) = klength(quote(trim(Verwijder_trans)))
                   then put '22'x Verwijder_trans +(-1) '22'x "," @;
                   else put Verwijder_trans @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Cst_cd_beschikking)
         then put "," @;
         else do;
                 if find(Cst_cd_beschikking,'0A'x) > 0 and 2+klength(Cst_cd_beschikking) = klength(quote(trim(Cst_cd_beschikking)))
                   then put '22'x Cst_cd_beschikking +(-1) '22'x "," @;
                   else put Cst_cd_beschikking @;
              end;
       if missing(Cor_id_beschikking)
         then put "," @;
         else do;
                 if find(Cor_id_beschikking,'0A'x) > 0 and 2+klength(Cor_id_beschikking) = klength(quote(trim(Cor_id_beschikking)))
                   then put '22'x Cor_id_beschikking +(-1) '22'x "," @;
                   else put Cor_id_beschikking @;
              end;
       if missing(Tra_id_beschikking_1)
         then put "," @;
         else do;
                 if find(Tra_id_beschikking_1,'0A'x) > 0 and 2+klength(Tra_id_beschikking_1) = klength(quote(trim(Tra_id_beschikking_1)))
                   then put '22'x Tra_id_beschikking_1 +(-1) '22'x "," @;
                   else put Tra_id_beschikking_1 @;
              end;
       if missing(Tra_cd_beschikking_1)
         then put "," @;
         else do;
                 if find(Tra_cd_beschikking_1,'0A'x) > 0 and 2+klength(Tra_cd_beschikking_1) = klength(quote(trim(Tra_cd_beschikking_1)))
                   then put '22'x Tra_cd_beschikking_1 +(-1) '22'x "," @;
                   else put Tra_cd_beschikking_1 @;
              end;
       if missing(Tra_bedrag_beschikking_1)
         then put "," @;
         else do;
                 if find(Tra_bedrag_beschikking_1,'0A'x) > 0 and 2+klength(Tra_bedrag_beschikking_1) = klength(quote(trim(Tra_bedrag_beschikking_1)))
                   then put '22'x Tra_bedrag_beschikking_1 +(-1) '22'x "," @;
                   else put Tra_bedrag_beschikking_1 @;
              end;
       if missing(Tra_id_beschikking_2)
         then put "," @;
         else do;
                 if find(Tra_id_beschikking_2,'0A'x) > 0 and 2+klength(Tra_id_beschikking_2) = klength(quote(trim(Tra_id_beschikking_2)))
                   then put '22'x Tra_id_beschikking_2 +(-1) '22'x "," @;
                   else put Tra_id_beschikking_2 @;
              end;
       if missing(Tra_cd_beschikking_2)
         then put "," @;
         else do;
                 if find(Tra_cd_beschikking_2,'0A'x) > 0 and 2+klength(Tra_cd_beschikking_2) = klength(quote(trim(Tra_cd_beschikking_2)))
                   then put '22'x Tra_cd_beschikking_2 +(-1) '22'x "," @;
                   else put Tra_cd_beschikking_2 @;
              end;
       if missing(Tra_bedrag_beschikking_2)
         then put "," @;
         else do;
                 if find(Tra_bedrag_beschikking_2,'0A'x) > 0 and 2+klength(Tra_bedrag_beschikking_2) = klength(quote(trim(Tra_bedrag_beschikking_2)))
                   then put '22'x Tra_bedrag_beschikking_2 +(-1) '22'x "," @;
                   else put Tra_bedrag_beschikking_2 @;
              end;
       if missing(Tra_id_afd)
         then put "," @;
         else do;
                 if find(Tra_id_afd,'0A'x) > 0 and 2+klength(Tra_id_afd) = klength(quote(trim(Tra_id_afd)))
                   then put '22'x Tra_id_afd +(-1) '22'x "," @;
                   else put Tra_id_afd @;
              end;
       if missing(Bedrag_afspraak_afd)
         then put "," @;
         else do;
                 if find(Bedrag_afspraak_afd,'0A'x) > 0 and 2+klength(Bedrag_afspraak_afd) = klength(quote(trim(Bedrag_afspraak_afd)))
                   then put '22'x Bedrag_afspraak_afd +(-1) '22'x "," @;
                   else put Bedrag_afspraak_afd @;
              end;
       if missing(Datum_afspraak_afd)
         then put "," @;
         else do;
                 if find(Datum_afspraak_afd,'0A'x) > 0 and 2+klength(Datum_afspraak_afd) = klength(quote(trim(Datum_afspraak_afd)))
                   then put '22'x Datum_afspraak_afd +(-1) '22'x "," @;
                   else put Datum_afspraak_afd @;
              end;
       if missing(Datum_afd)
         then put "," @;
         else do;
                 if find(Datum_afd,'0A'x) > 0 and 2+klength(Datum_afd) = klength(quote(trim(Datum_afd)))
                   then put '22'x Datum_afd +(-1) '22'x "," @;
                   else put Datum_afd @;
              end;
       if missing(Tra_cd_afd)
         then put "," @;
         else do;
                 if find(Tra_cd_afd,'0A'x) > 0 and 2+klength(Tra_cd_afd) = klength(quote(trim(Tra_cd_afd)))
                   then put '22'x Tra_cd_afd +(-1) '22'x "," @;
                   else put Tra_cd_afd @;
              end;
       if missing(Vordering_tra_id_afd)
         then put "," @;
         else do;
                 if find(Vordering_tra_id_afd,'0A'x) > 0 and 2+klength(Vordering_tra_id_afd) = klength(quote(trim(Vordering_tra_id_afd)))
                   then put '22'x Vordering_tra_id_afd +(-1) '22'x "," @;
                   else put Vordering_tra_id_afd @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_BRIEF_FUNCTIE AS
   SELECT t1.Fnc_cd,
          t1.Oms,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.JZM_BRIEF_FUNCTIE_TCMG t1;
QUIT;

data WORK.BAS_JZM_BRIEF_FUNCTIE;
  set WORK.BAS_JZM_BRIEF_FUNCTIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BRIEF_FUNCTIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Fnc_cd" 
       ','
          "Oms" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_BRIEF_FUNCTIE   end=EFIEOD; 
       format Fnc_cd  ;
       format Oms  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Fnc_cd)
         then put "," @;
         else do;
                 if find(Fnc_cd,'0A'x) > 0 and 2+klength(Fnc_cd) = klength(quote(trim(Fnc_cd)))
                   then put '22'x Fnc_cd +(-1) '22'x "," @;
                   else put Fnc_cd @;
              end;
       if missing(Oms)
         then put "," @;
         else do;
                 if find(Oms,'0A'x) > 0 and 2+klength(Oms) = klength(quote(trim(Oms)))
                   then put '22'x Oms +(-1) '22'x "," @;
                   else put Oms @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_FUNCTIE_VAN_BRIEF AS
   SELECT t1.Fnc_cd,
          t1.Cst_cd,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.JZM_FUNCTIE_VAN_BRIEF_TCMG t1;
QUIT;

data WORK.BAS_JZM_FUNCTIE_VAN_BRIEF;
  set WORK.BAS_JZM_FUNCTIE_VAN_BRIEF;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_FUNCTIE_VAN_BRIEF.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Fnc_cd" 
       ','
          "Cst_cd" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_FUNCTIE_VAN_BRIEF   end=EFIEOD; 
       format Fnc_cd  ;
       format Cst_cd  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Fnc_cd)
         then put "," @;
         else do;
                 if find(Fnc_cd,'0A'x) > 0 and 2+klength(Fnc_cd) = klength(quote(trim(Fnc_cd)))
                   then put '22'x Fnc_cd +(-1) '22'x "," @;
                   else put Fnc_cd @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_PROCEDURE AS
   SELECT t1.Jaar,
          t1.Volgnr,
          t1.Jz_nr,
          t1.Jz_id,
          t1.Sts_cd,
          t1.Ssg_cd,
          t1.Dos_id,
          t1.Cor_id,
          t1.Dos_sts_cd,
          t1.Dos_ssg_cd,
          t1.Indieningsdatum FORMAT=B8601DT19. AS Indieningsdatum,
          t1.Datum_dos_jz FORMAT=B8601DT19. AS Datum_dos_jz,
          t1.Actiedatum FORMAT=B8601DT19. AS Actiedatum,
          t1.Afhandeldatum FORMAT=B8601DT19. AS Afhandeldatum,
          t1.Notities,
          t1.Proc_type,
          t1.Jzm_bezwaar,
          t1.Jzm_beroep,
          t1.Jzm_hoger_beroep,
          t1.Jzm_verz_schadeverg,
          t1.Actuele_beh_mdw_id,
          t1.Actuele_beh_rol_cd,
          t1.Problematiekcode,
          t1.Bedrag_bob,
          t1.Aard_bob,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Technisch_cor_id,
          t1.Hoofdproces
     FROM DATAQASG.JZM_PROCEDURE_TCMG t1;
QUIT;

data WORK.BAS_JZM_PROCEDURE;
  set WORK.BAS_JZM_PROCEDURE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_PROCEDURE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Jaar" 
       ','
          "Volgnr" 
       ','
          "Jz_nr" 
       ','
          "Jz_id" 
       ','
          "Sts_cd" 
       ','
          "Ssg_cd" 
       ','
          "Dos_id" 
       ','
          "Cor_id" 
       ','
          "Dos_sts_cd" 
       ','
          "Dos_ssg_cd" 
       ','
          "Indieningsdatum" 
       ','
          "Datum_dos_jz" 
       ','
          "Actiedatum" 
       ','
          "Afhandeldatum" 
       ','
          "Notities" 
       ','
          "Proc_type" 
       ','
          "Jzm_bezwaar" 
       ','
          "Jzm_beroep" 
       ','
          "Jzm_hoger_beroep" 
       ','
          "Jzm_verz_schadeverg" 
       ','
          "Actuele_beh_mdw_id" 
       ','
          "Actuele_beh_rol_cd" 
       ','
          "Problematiekcode" 
       ','
          "Bedrag_bob" 
       ','
          "Aard_bob" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Technisch_cor_id" 
       ','
          "Hoofdproces" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_PROCEDURE   end=EFIEOD; 
       format Jaar best12. ;
       format Volgnr best12. ;
       format Jz_nr  ;
       format Jz_id best12. ;
       format Sts_cd  ;
       format Ssg_cd  ;
       format Dos_id best12. ;
       format Cor_id best12. ;
       format Dos_sts_cd  ;
       format Dos_ssg_cd  ;
       format Indieningsdatum B8601DT19. ;
       format Datum_dos_jz B8601DT19. ;
       format Actiedatum B8601DT19. ;
       format Afhandeldatum B8601DT19. ;
       format Notities  ;
       format Proc_type  ;
       format Jzm_bezwaar  ;
       format Jzm_beroep  ;
       format Jzm_hoger_beroep  ;
       format Jzm_verz_schadeverg  ;
       format Actuele_beh_mdw_id best12. ;
       format Actuele_beh_rol_cd  ;
       format Problematiekcode best12. ;
       format Bedrag_bob best12. ;
       format Aard_bob  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Technisch_cor_id best12. ;
       format Hoofdproces  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Volgnr)
         then put "," @;
         else do;
                 if find(Volgnr,'0A'x) > 0 and 2+klength(Volgnr) = klength(quote(trim(Volgnr)))
                   then put '22'x Volgnr +(-1) '22'x "," @;
                   else put Volgnr @;
              end;
       if missing(Jz_nr)
         then put "," @;
         else do;
                 if find(Jz_nr,'0A'x) > 0 and 2+klength(Jz_nr) = klength(quote(trim(Jz_nr)))
                   then put '22'x Jz_nr +(-1) '22'x "," @;
                   else put Jz_nr @;
              end;
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Sts_cd)
         then put "," @;
         else do;
                 if find(Sts_cd,'0A'x) > 0 and 2+klength(Sts_cd) = klength(quote(trim(Sts_cd)))
                   then put '22'x Sts_cd +(-1) '22'x "," @;
                   else put Sts_cd @;
              end;
       if missing(Ssg_cd)
         then put "," @;
         else do;
                 if find(Ssg_cd,'0A'x) > 0 and 2+klength(Ssg_cd) = klength(quote(trim(Ssg_cd)))
                   then put '22'x Ssg_cd +(-1) '22'x "," @;
                   else put Ssg_cd @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(Cor_id)
         then put "," @;
         else do;
                 if find(Cor_id,'0A'x) > 0 and 2+klength(Cor_id) = klength(quote(trim(Cor_id)))
                   then put '22'x Cor_id +(-1) '22'x "," @;
                   else put Cor_id @;
              end;
       if missing(Dos_sts_cd)
         then put "," @;
         else do;
                 if find(Dos_sts_cd,'0A'x) > 0 and 2+klength(Dos_sts_cd) = klength(quote(trim(Dos_sts_cd)))
                   then put '22'x Dos_sts_cd +(-1) '22'x "," @;
                   else put Dos_sts_cd @;
              end;
       if missing(Dos_ssg_cd)
         then put "," @;
         else do;
                 if find(Dos_ssg_cd,'0A'x) > 0 and 2+klength(Dos_ssg_cd) = klength(quote(trim(Dos_ssg_cd)))
                   then put '22'x Dos_ssg_cd +(-1) '22'x "," @;
                   else put Dos_ssg_cd @;
              end;
       if missing(Indieningsdatum)
         then put "," @;
         else do;
                 if find(Indieningsdatum,'0A'x) > 0 and 2+klength(Indieningsdatum) = klength(quote(trim(Indieningsdatum)))
                   then put '22'x Indieningsdatum +(-1) '22'x "," @;
                   else put Indieningsdatum @;
              end;
       if missing(Datum_dos_jz)
         then put "," @;
         else do;
                 if find(Datum_dos_jz,'0A'x) > 0 and 2+klength(Datum_dos_jz) = klength(quote(trim(Datum_dos_jz)))
                   then put '22'x Datum_dos_jz +(-1) '22'x "," @;
                   else put Datum_dos_jz @;
              end;
       if missing(Actiedatum)
         then put "," @;
         else do;
                 if find(Actiedatum,'0A'x) > 0 and 2+klength(Actiedatum) = klength(quote(trim(Actiedatum)))
                   then put '22'x Actiedatum +(-1) '22'x "," @;
                   else put Actiedatum @;
              end;
       if missing(Afhandeldatum)
         then put "," @;
         else do;
                 if find(Afhandeldatum,'0A'x) > 0 and 2+klength(Afhandeldatum) = klength(quote(trim(Afhandeldatum)))
                   then put '22'x Afhandeldatum +(-1) '22'x "," @;
                   else put Afhandeldatum @;
              end;
       if missing(Notities)
         then put "," @;
         else do;
                 if find(Notities,'0A'x) > 0 and 2+klength(Notities) = klength(quote(trim(Notities)))
                   then put '22'x Notities +(-1) '22'x "," @;
                   else put Notities @;
              end;
       if missing(Proc_type)
         then put "," @;
         else do;
                 if find(Proc_type,'0A'x) > 0 and 2+klength(Proc_type) = klength(quote(trim(Proc_type)))
                   then put '22'x Proc_type +(-1) '22'x "," @;
                   else put Proc_type @;
              end;
       if missing(Jzm_bezwaar)
         then put "," @;
         else do;
                 if find(Jzm_bezwaar,'0A'x) > 0 and 2+klength(Jzm_bezwaar) = klength(quote(trim(Jzm_bezwaar)))
                   then put '22'x Jzm_bezwaar +(-1) '22'x "," @;
                   else put Jzm_bezwaar @;
              end;
       if missing(Jzm_beroep)
         then put "," @;
         else do;
                 if find(Jzm_beroep,'0A'x) > 0 and 2+klength(Jzm_beroep) = klength(quote(trim(Jzm_beroep)))
                   then put '22'x Jzm_beroep +(-1) '22'x "," @;
                   else put Jzm_beroep @;
              end;
       if missing(Jzm_hoger_beroep)
         then put "," @;
         else do;
                 if find(Jzm_hoger_beroep,'0A'x) > 0 and 2+klength(Jzm_hoger_beroep) = klength(quote(trim(Jzm_hoger_beroep)))
                   then put '22'x Jzm_hoger_beroep +(-1) '22'x "," @;
                   else put Jzm_hoger_beroep @;
              end;
       if missing(Jzm_verz_schadeverg)
         then put "," @;
         else do;
                 if find(Jzm_verz_schadeverg,'0A'x) > 0 and 2+klength(Jzm_verz_schadeverg) = klength(quote(trim(Jzm_verz_schadeverg)))
                   then put '22'x Jzm_verz_schadeverg +(-1) '22'x "," @;
                   else put Jzm_verz_schadeverg @;
              end;
       if missing(Actuele_beh_mdw_id)
         then put "," @;
         else do;
                 if find(Actuele_beh_mdw_id,'0A'x) > 0 and 2+klength(Actuele_beh_mdw_id) = klength(quote(trim(Actuele_beh_mdw_id)))
                   then put '22'x Actuele_beh_mdw_id +(-1) '22'x "," @;
                   else put Actuele_beh_mdw_id @;
              end;
       if missing(Actuele_beh_rol_cd)
         then put "," @;
         else do;
                 if find(Actuele_beh_rol_cd,'0A'x) > 0 and 2+klength(Actuele_beh_rol_cd) = klength(quote(trim(Actuele_beh_rol_cd)))
                   then put '22'x Actuele_beh_rol_cd +(-1) '22'x "," @;
                   else put Actuele_beh_rol_cd @;
              end;
       if missing(Problematiekcode)
         then put "," @;
         else do;
                 if find(Problematiekcode,'0A'x) > 0 and 2+klength(Problematiekcode) = klength(quote(trim(Problematiekcode)))
                   then put '22'x Problematiekcode +(-1) '22'x "," @;
                   else put Problematiekcode @;
              end;
       if missing(Bedrag_bob)
         then put "," @;
         else do;
                 if find(Bedrag_bob,'0A'x) > 0 and 2+klength(Bedrag_bob) = klength(quote(trim(Bedrag_bob)))
                   then put '22'x Bedrag_bob +(-1) '22'x "," @;
                   else put Bedrag_bob @;
              end;
       if missing(Aard_bob)
         then put "," @;
         else do;
                 if find(Aard_bob,'0A'x) > 0 and 2+klength(Aard_bob) = klength(quote(trim(Aard_bob)))
                   then put '22'x Aard_bob +(-1) '22'x "," @;
                   else put Aard_bob @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Technisch_cor_id)
         then put "," @;
         else do;
                 if find(Technisch_cor_id,'0A'x) > 0 and 2+klength(Technisch_cor_id) = klength(quote(trim(Technisch_cor_id)))
                   then put '22'x Technisch_cor_id +(-1) '22'x "," @;
                   else put Technisch_cor_id @;
              end;
       if missing(Hoofdproces)
         then put "," @;
         else do;
                 if find(Hoofdproces,'0A'x) > 0 and 2+klength(Hoofdproces) = klength(quote(trim(Hoofdproces)))
                   then put '22'x Hoofdproces +(-1) '22'x "," @;
                   else put Hoofdproces @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_REACTIE_TERMIJN AS
   SELECT t1.Rol_cd,
          t1.Cst_cd,
          t1.Reactie_cd,
          t1.Termijn,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.JZM_REACTIE_TERMIJN_TCMG t1;
QUIT;

data WORK.BAS_JZM_REACTIE_TERMIJN;
  set WORK.BAS_JZM_REACTIE_TERMIJN;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_REACTIE_TERMIJN.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Rol_cd" 
       ','
          "Cst_cd" 
       ','
          "Reactie_cd" 
       ','
          "Termijn" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_REACTIE_TERMIJN   end=EFIEOD; 
       format Rol_cd  ;
       format Cst_cd  ;
       format Reactie_cd  ;
       format Termijn best12. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Reactie_cd)
         then put "," @;
         else do;
                 if find(Reactie_cd,'0A'x) > 0 and 2+klength(Reactie_cd) = klength(quote(trim(Reactie_cd)))
                   then put '22'x Reactie_cd +(-1) '22'x "," @;
                   else put Reactie_cd @;
              end;
       if missing(Termijn)
         then put "," @;
         else do;
                 if find(Termijn,'0A'x) > 0 and 2+klength(Termijn) = klength(quote(trim(Termijn)))
                   then put '22'x Termijn +(-1) '22'x "," @;
                   else put Termijn @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_STATUSREGEL AS
   SELECT t1.Datum_van FORMAT=B8601DT19. AS Datum_van,
          t1.Datum_tot FORMAT=B8601DT19. AS Datum_tot,
          t1.Jz_id,
          t1.Sts_cd,
          t1.Ssg_cd,
          t1.Commentaar,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Cor_id_van,
          t1.Cor_id_tot,
          t1.Volg_nr
     FROM DATAQASG.JZM_STATUSREGEL_TCMG t1;
QUIT;

data WORK.BAS_JZM_STATUSREGEL;
  set WORK.BAS_JZM_STATUSREGEL;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_STATUSREGEL.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Datum_van" 
       ','
          "Datum_tot" 
       ','
          "Jz_id" 
       ','
          "Sts_cd" 
       ','
          "Ssg_cd" 
       ','
          "Commentaar" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Cor_id_van" 
       ','
          "Cor_id_tot" 
       ','
          "Volg_nr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_STATUSREGEL   end=EFIEOD; 
       format Datum_van B8601DT19. ;
       format Datum_tot B8601DT19. ;
       format Jz_id best12. ;
       format Sts_cd  ;
       format Ssg_cd  ;
       format Commentaar  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Cor_id_van best12. ;
       format Cor_id_tot best12. ;
       format Volg_nr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Datum_van)
         then put "," @;
         else do;
                 if find(Datum_van,'0A'x) > 0 and 2+klength(Datum_van) = klength(quote(trim(Datum_van)))
                   then put '22'x Datum_van +(-1) '22'x "," @;
                   else put Datum_van @;
              end;
       if missing(Datum_tot)
         then put "," @;
         else do;
                 if find(Datum_tot,'0A'x) > 0 and 2+klength(Datum_tot) = klength(quote(trim(Datum_tot)))
                   then put '22'x Datum_tot +(-1) '22'x "," @;
                   else put Datum_tot @;
              end;
       if missing(Jz_id)
         then put "," @;
         else do;
                 if find(Jz_id,'0A'x) > 0 and 2+klength(Jz_id) = klength(quote(trim(Jz_id)))
                   then put '22'x Jz_id +(-1) '22'x "," @;
                   else put Jz_id @;
              end;
       if missing(Sts_cd)
         then put "," @;
         else do;
                 if find(Sts_cd,'0A'x) > 0 and 2+klength(Sts_cd) = klength(quote(trim(Sts_cd)))
                   then put '22'x Sts_cd +(-1) '22'x "," @;
                   else put Sts_cd @;
              end;
       if missing(Ssg_cd)
         then put "," @;
         else do;
                 if find(Ssg_cd,'0A'x) > 0 and 2+klength(Ssg_cd) = klength(quote(trim(Ssg_cd)))
                   then put '22'x Ssg_cd +(-1) '22'x "," @;
                   else put Ssg_cd @;
              end;
       if missing(Commentaar)
         then put "," @;
         else do;
                 if find(Commentaar,'0A'x) > 0 and 2+klength(Commentaar) = klength(quote(trim(Commentaar)))
                   then put '22'x Commentaar +(-1) '22'x "," @;
                   else put Commentaar @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Cor_id_van)
         then put "," @;
         else do;
                 if find(Cor_id_van,'0A'x) > 0 and 2+klength(Cor_id_van) = klength(quote(trim(Cor_id_van)))
                   then put '22'x Cor_id_van +(-1) '22'x "," @;
                   else put Cor_id_van @;
              end;
       if missing(Cor_id_tot)
         then put "," @;
         else do;
                 if find(Cor_id_tot,'0A'x) > 0 and 2+klength(Cor_id_tot) = klength(quote(trim(Cor_id_tot)))
                   then put '22'x Cor_id_tot +(-1) '22'x "," @;
                   else put Cor_id_tot @;
              end;
       if missing(Volg_nr)
         then put "," @;
         else do;
                 if find(Volg_nr,'0A'x) > 0 and 2+klength(Volg_nr) = klength(quote(trim(Volg_nr)))
                   then put '22'x Volg_nr +(-1) '22'x "," @;
                   else put Volg_nr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_JZM_UITSPRAAK AS
   SELECT t1.Uitspraak,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.JZM_UITSPRAAK_TCMG t1;
QUIT;

data WORK.BAS_JZM_UITSPRAAK;
  set WORK.BAS_JZM_UITSPRAAK;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_UITSPRAAK.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Uitspraak" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_JZM_UITSPRAAK   end=EFIEOD; 
       format Uitspraak  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Uitspraak)
         then put "," @;
         else do;
                 if find(Uitspraak,'0A'x) > 0 and 2+klength(Uitspraak) = klength(quote(trim(Uitspraak)))
                   then put '22'x Uitspraak +(-1) '22'x "," @;
                   else put Uitspraak @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_OBJ_LOKATIE AS
   SELECT t1.Bik_cd,
          t1.Bik_oms,
          t1.Bouwtype,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Dos_id,
          t1.EobjectLocatie_id,
          t1.Extra_gegevens,
          t1.Huisnr,
          t1.Huisnr_toevoeging,
          t1.Lok_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Naam,
          t1.Plaats,
          t1.Postcode,
          t1.Prg_id,
          t1.Provincie,
          t1.Straat
     FROM DATAQASG.OBJ_LOKATIE_TCMG t1;
QUIT;

data WORK.BAS_OBJ_LOKATIE;
  set WORK.BAS_OBJ_LOKATIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_OBJ_LOKATIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Bik_cd" 
       ','
          "Bik_oms" 
       ','
          "Bouwtype" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Dos_id" 
       ','
          "EobjectLocatie_id" 
       ','
          "Extra_gegevens" 
       ','
          "Huisnr" 
       ','
          "Huisnr_toevoeging" 
       ','
          "Lok_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Naam" 
       ','
          "Plaats" 
       ','
          "Postcode" 
       ','
          "Prg_id" 
       ','
          "Provincie" 
       ','
          "Straat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_OBJ_LOKATIE   end=EFIEOD; 
       format Bik_cd  ;
       format Bik_oms  ;
       format Bouwtype  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Dos_id best12. ;
       format EobjectLocatie_id best12. ;
       format Extra_gegevens  ;
       format Huisnr  ;
       format Huisnr_toevoeging  ;
       format Lok_id best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Naam  ;
       format Plaats  ;
       format Postcode  ;
       format Prg_id best12. ;
       format Provincie  ;
       format Straat  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Bik_cd)
         then put "," @;
         else do;
                 if find(Bik_cd,'0A'x) > 0 and 2+klength(Bik_cd) = klength(quote(trim(Bik_cd)))
                   then put '22'x Bik_cd +(-1) '22'x "," @;
                   else put Bik_cd @;
              end;
       if missing(Bik_oms)
         then put "," @;
         else do;
                 if find(Bik_oms,'0A'x) > 0 and 2+klength(Bik_oms) = klength(quote(trim(Bik_oms)))
                   then put '22'x Bik_oms +(-1) '22'x "," @;
                   else put Bik_oms @;
              end;
       if missing(Bouwtype)
         then put "," @;
         else do;
                 if find(Bouwtype,'0A'x) > 0 and 2+klength(Bouwtype) = klength(quote(trim(Bouwtype)))
                   then put '22'x Bouwtype +(-1) '22'x "," @;
                   else put Bouwtype @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Dos_id)
         then put "," @;
         else do;
                 if find(Dos_id,'0A'x) > 0 and 2+klength(Dos_id) = klength(quote(trim(Dos_id)))
                   then put '22'x Dos_id +(-1) '22'x "," @;
                   else put Dos_id @;
              end;
       if missing(EobjectLocatie_id)
         then put "," @;
         else do;
                 if find(EobjectLocatie_id,'0A'x) > 0 and 2+klength(EobjectLocatie_id) = klength(quote(trim(EobjectLocatie_id)))
                   then put '22'x EobjectLocatie_id +(-1) '22'x "," @;
                   else put EobjectLocatie_id @;
              end;
       if missing(Extra_gegevens)
         then put "," @;
         else do;
                 if find(Extra_gegevens,'0A'x) > 0 and 2+klength(Extra_gegevens) = klength(quote(trim(Extra_gegevens)))
                   then put '22'x Extra_gegevens +(-1) '22'x "," @;
                   else put Extra_gegevens @;
              end;
       if missing(Huisnr)
         then put "," @;
         else do;
                 if find(Huisnr,'0A'x) > 0 and 2+klength(Huisnr) = klength(quote(trim(Huisnr)))
                   then put '22'x Huisnr +(-1) '22'x "," @;
                   else put Huisnr @;
              end;
       if missing(Huisnr_toevoeging)
         then put "," @;
         else do;
                 if find(Huisnr_toevoeging,'0A'x) > 0 and 2+klength(Huisnr_toevoeging) = klength(quote(trim(Huisnr_toevoeging)))
                   then put '22'x Huisnr_toevoeging +(-1) '22'x "," @;
                   else put Huisnr_toevoeging @;
              end;
       if missing(Lok_id)
         then put "," @;
         else do;
                 if find(Lok_id,'0A'x) > 0 and 2+klength(Lok_id) = klength(quote(trim(Lok_id)))
                   then put '22'x Lok_id +(-1) '22'x "," @;
                   else put Lok_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Naam)
         then put "," @;
         else do;
                 if find(Naam,'0A'x) > 0 and 2+klength(Naam) = klength(quote(trim(Naam)))
                   then put '22'x Naam +(-1) '22'x "," @;
                   else put Naam @;
              end;
       if missing(Plaats)
         then put "," @;
         else do;
                 if find(Plaats,'0A'x) > 0 and 2+klength(Plaats) = klength(quote(trim(Plaats)))
                   then put '22'x Plaats +(-1) '22'x "," @;
                   else put Plaats @;
              end;
       if missing(Postcode)
         then put "," @;
         else do;
                 if find(Postcode,'0A'x) > 0 and 2+klength(Postcode) = klength(quote(trim(Postcode)))
                   then put '22'x Postcode +(-1) '22'x "," @;
                   else put Postcode @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Provincie)
         then put "," @;
         else do;
                 if find(Provincie,'0A'x) > 0 and 2+klength(Provincie) = klength(quote(trim(Provincie)))
                   then put '22'x Provincie +(-1) '22'x "," @;
                   else put Provincie @;
              end;
       if missing(Straat)
         then put "," @;
         else do;
                 if find(Straat,'0A'x) > 0 and 2+klength(Straat) = klength(quote(trim(Straat)))
                   then put '22'x Straat +(-1) '22'x "," @;
                   else put Straat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_PCT_MUT AS
   SELECT t1.Mutatie_srt,
          t1.Mutatie_ind,
          t1.Old_cijfer,
          t1.Old_letter,
          t1.Old_reeksindicatie,
          t1.Old_codebreekpunt_van,
          t1.Old_codebreekpunt_tm,
          t1.Old_woonplaatsnaam_ptt,
          t1.Old_woonplaatsnaam_nen,
          t1.Old_straatnaam_ptt,
          t1.Old_straatnaam_nen,
          t1.Old_straatnaam_off,
          t1.Old_extract_woonplaats,
          t1.Old_extract_straatnaam,
          t1.Old_gemeentecode,
          t1.Old_gemeentenaam,
          t1.Old_provinciecode,
          t1.Old_cebuco_code,
          t1.New_cijfer,
          t1.New_letter,
          t1.New_reeksindicatie,
          t1.New_codebreekpunt_van,
          t1.New_codebreekpunt_tm,
          t1.New_woonplaatsnaam_ptt,
          t1.New_woonplaatsnaam_nen,
          t1.New_straatnaam_ptt,
          t1.New_straatnaam_nen,
          t1.New_straatnaam_off,
          t1.New_extract_woonplaats,
          t1.New_extract_straatnaam,
          t1.New_gemeentecode,
          t1.New_gemeentenaam,
          t1.New_provinciecode,
          t1.New_cebuco_code
     FROM DATAQASG.PCT_MUT_TCMG t1;
QUIT;

data WORK.BAS_PCT_MUT;
  set WORK.BAS_PCT_MUT;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_PCT_MUT.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Mutatie_srt" 
       ','
          "Mutatie_ind" 
       ','
          "Old_cijfer" 
       ','
          "Old_letter" 
       ','
          "Old_reeksindicatie" 
       ','
          "Old_codebreekpunt_van" 
       ','
          "Old_codebreekpunt_tm" 
       ','
          "Old_woonplaatsnaam_ptt" 
       ','
          "Old_woonplaatsnaam_nen" 
       ','
          "Old_straatnaam_ptt" 
       ','
          "Old_straatnaam_nen" 
       ','
          "Old_straatnaam_off" 
       ','
          "Old_extract_woonplaats" 
       ','
          "Old_extract_straatnaam" 
       ','
          "Old_gemeentecode" 
       ','
          "Old_gemeentenaam" 
       ','
          "Old_provinciecode" 
       ','
          "Old_cebuco_code" 
       ','
          "New_cijfer" 
       ','
          "New_letter" 
       ','
          "New_reeksindicatie" 
       ','
          "New_codebreekpunt_van" 
       ','
          "New_codebreekpunt_tm" 
       ','
          "New_woonplaatsnaam_ptt" 
       ','
          "New_woonplaatsnaam_nen" 
       ','
          "New_straatnaam_ptt" 
       ','
          "New_straatnaam_nen" 
       ','
          "New_straatnaam_off" 
       ','
          "New_extract_woonplaats" 
       ','
          "New_extract_straatnaam" 
       ','
          "New_gemeentecode" 
       ','
          "New_gemeentenaam" 
       ','
          "New_provinciecode" 
       ','
          "New_cebuco_code" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_PCT_MUT   end=EFIEOD; 
       format Mutatie_srt  ;
       format Mutatie_ind  ;
       format Old_cijfer  ;
       format Old_letter  ;
       format Old_reeksindicatie  ;
       format Old_codebreekpunt_van  ;
       format Old_codebreekpunt_tm  ;
       format Old_woonplaatsnaam_ptt  ;
       format Old_woonplaatsnaam_nen  ;
       format Old_straatnaam_ptt  ;
       format Old_straatnaam_nen  ;
       format Old_straatnaam_off  ;
       format Old_extract_woonplaats  ;
       format Old_extract_straatnaam  ;
       format Old_gemeentecode  ;
       format Old_gemeentenaam  ;
       format Old_provinciecode  ;
       format Old_cebuco_code  ;
       format New_cijfer  ;
       format New_letter  ;
       format New_reeksindicatie  ;
       format New_codebreekpunt_van  ;
       format New_codebreekpunt_tm  ;
       format New_woonplaatsnaam_ptt  ;
       format New_woonplaatsnaam_nen  ;
       format New_straatnaam_ptt  ;
       format New_straatnaam_nen  ;
       format New_straatnaam_off  ;
       format New_extract_woonplaats  ;
       format New_extract_straatnaam  ;
       format New_gemeentecode  ;
       format New_gemeentenaam  ;
       format New_provinciecode  ;
       format New_cebuco_code  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Mutatie_srt)
         then put "," @;
         else do;
                 if find(Mutatie_srt,'0A'x) > 0 and 2+klength(Mutatie_srt) = klength(quote(trim(Mutatie_srt)))
                   then put '22'x Mutatie_srt +(-1) '22'x "," @;
                   else put Mutatie_srt @;
              end;
       if missing(Mutatie_ind)
         then put "," @;
         else do;
                 if find(Mutatie_ind,'0A'x) > 0 and 2+klength(Mutatie_ind) = klength(quote(trim(Mutatie_ind)))
                   then put '22'x Mutatie_ind +(-1) '22'x "," @;
                   else put Mutatie_ind @;
              end;
       if missing(Old_cijfer)
         then put "," @;
         else do;
                 if find(Old_cijfer,'0A'x) > 0 and 2+klength(Old_cijfer) = klength(quote(trim(Old_cijfer)))
                   then put '22'x Old_cijfer +(-1) '22'x "," @;
                   else put Old_cijfer @;
              end;
       if missing(Old_letter)
         then put "," @;
         else do;
                 if find(Old_letter,'0A'x) > 0 and 2+klength(Old_letter) = klength(quote(trim(Old_letter)))
                   then put '22'x Old_letter +(-1) '22'x "," @;
                   else put Old_letter @;
              end;
       if missing(Old_reeksindicatie)
         then put "," @;
         else do;
                 if find(Old_reeksindicatie,'0A'x) > 0 and 2+klength(Old_reeksindicatie) = klength(quote(trim(Old_reeksindicatie)))
                   then put '22'x Old_reeksindicatie +(-1) '22'x "," @;
                   else put Old_reeksindicatie @;
              end;
       if missing(Old_codebreekpunt_van)
         then put "," @;
         else do;
                 if find(Old_codebreekpunt_van,'0A'x) > 0 and 2+klength(Old_codebreekpunt_van) = klength(quote(trim(Old_codebreekpunt_van)))
                   then put '22'x Old_codebreekpunt_van +(-1) '22'x "," @;
                   else put Old_codebreekpunt_van @;
              end;
       if missing(Old_codebreekpunt_tm)
         then put "," @;
         else do;
                 if find(Old_codebreekpunt_tm,'0A'x) > 0 and 2+klength(Old_codebreekpunt_tm) = klength(quote(trim(Old_codebreekpunt_tm)))
                   then put '22'x Old_codebreekpunt_tm +(-1) '22'x "," @;
                   else put Old_codebreekpunt_tm @;
              end;
       if missing(Old_woonplaatsnaam_ptt)
         then put "," @;
         else do;
                 if find(Old_woonplaatsnaam_ptt,'0A'x) > 0 and 2+klength(Old_woonplaatsnaam_ptt) = klength(quote(trim(Old_woonplaatsnaam_ptt)))
                   then put '22'x Old_woonplaatsnaam_ptt +(-1) '22'x "," @;
                   else put Old_woonplaatsnaam_ptt @;
              end;
       if missing(Old_woonplaatsnaam_nen)
         then put "," @;
         else do;
                 if find(Old_woonplaatsnaam_nen,'0A'x) > 0 and 2+klength(Old_woonplaatsnaam_nen) = klength(quote(trim(Old_woonplaatsnaam_nen)))
                   then put '22'x Old_woonplaatsnaam_nen +(-1) '22'x "," @;
                   else put Old_woonplaatsnaam_nen @;
              end;
       if missing(Old_straatnaam_ptt)
         then put "," @;
         else do;
                 if find(Old_straatnaam_ptt,'0A'x) > 0 and 2+klength(Old_straatnaam_ptt) = klength(quote(trim(Old_straatnaam_ptt)))
                   then put '22'x Old_straatnaam_ptt +(-1) '22'x "," @;
                   else put Old_straatnaam_ptt @;
              end;
       if missing(Old_straatnaam_nen)
         then put "," @;
         else do;
                 if find(Old_straatnaam_nen,'0A'x) > 0 and 2+klength(Old_straatnaam_nen) = klength(quote(trim(Old_straatnaam_nen)))
                   then put '22'x Old_straatnaam_nen +(-1) '22'x "," @;
                   else put Old_straatnaam_nen @;
              end;
       if missing(Old_straatnaam_off)
         then put "," @;
         else do;
                 if find(Old_straatnaam_off,'0A'x) > 0 and 2+klength(Old_straatnaam_off) = klength(quote(trim(Old_straatnaam_off)))
                   then put '22'x Old_straatnaam_off +(-1) '22'x "," @;
                   else put Old_straatnaam_off @;
              end;
       if missing(Old_extract_woonplaats)
         then put "," @;
         else do;
                 if find(Old_extract_woonplaats,'0A'x) > 0 and 2+klength(Old_extract_woonplaats) = klength(quote(trim(Old_extract_woonplaats)))
                   then put '22'x Old_extract_woonplaats +(-1) '22'x "," @;
                   else put Old_extract_woonplaats @;
              end;
       if missing(Old_extract_straatnaam)
         then put "," @;
         else do;
                 if find(Old_extract_straatnaam,'0A'x) > 0 and 2+klength(Old_extract_straatnaam) = klength(quote(trim(Old_extract_straatnaam)))
                   then put '22'x Old_extract_straatnaam +(-1) '22'x "," @;
                   else put Old_extract_straatnaam @;
              end;
       if missing(Old_gemeentecode)
         then put "," @;
         else do;
                 if find(Old_gemeentecode,'0A'x) > 0 and 2+klength(Old_gemeentecode) = klength(quote(trim(Old_gemeentecode)))
                   then put '22'x Old_gemeentecode +(-1) '22'x "," @;
                   else put Old_gemeentecode @;
              end;
       if missing(Old_gemeentenaam)
         then put "," @;
         else do;
                 if find(Old_gemeentenaam,'0A'x) > 0 and 2+klength(Old_gemeentenaam) = klength(quote(trim(Old_gemeentenaam)))
                   then put '22'x Old_gemeentenaam +(-1) '22'x "," @;
                   else put Old_gemeentenaam @;
              end;
       if missing(Old_provinciecode)
         then put "," @;
         else do;
                 if find(Old_provinciecode,'0A'x) > 0 and 2+klength(Old_provinciecode) = klength(quote(trim(Old_provinciecode)))
                   then put '22'x Old_provinciecode +(-1) '22'x "," @;
                   else put Old_provinciecode @;
              end;
       if missing(Old_cebuco_code)
         then put "," @;
         else do;
                 if find(Old_cebuco_code,'0A'x) > 0 and 2+klength(Old_cebuco_code) = klength(quote(trim(Old_cebuco_code)))
                   then put '22'x Old_cebuco_code +(-1) '22'x "," @;
                   else put Old_cebuco_code @;
              end;
       if missing(New_cijfer)
         then put "," @;
         else do;
                 if find(New_cijfer,'0A'x) > 0 and 2+klength(New_cijfer) = klength(quote(trim(New_cijfer)))
                   then put '22'x New_cijfer +(-1) '22'x "," @;
                   else put New_cijfer @;
              end;
       if missing(New_letter)
         then put "," @;
         else do;
                 if find(New_letter,'0A'x) > 0 and 2+klength(New_letter) = klength(quote(trim(New_letter)))
                   then put '22'x New_letter +(-1) '22'x "," @;
                   else put New_letter @;
              end;
       if missing(New_reeksindicatie)
         then put "," @;
         else do;
                 if find(New_reeksindicatie,'0A'x) > 0 and 2+klength(New_reeksindicatie) = klength(quote(trim(New_reeksindicatie)))
                   then put '22'x New_reeksindicatie +(-1) '22'x "," @;
                   else put New_reeksindicatie @;
              end;
       if missing(New_codebreekpunt_van)
         then put "," @;
         else do;
                 if find(New_codebreekpunt_van,'0A'x) > 0 and 2+klength(New_codebreekpunt_van) = klength(quote(trim(New_codebreekpunt_van)))
                   then put '22'x New_codebreekpunt_van +(-1) '22'x "," @;
                   else put New_codebreekpunt_van @;
              end;
       if missing(New_codebreekpunt_tm)
         then put "," @;
         else do;
                 if find(New_codebreekpunt_tm,'0A'x) > 0 and 2+klength(New_codebreekpunt_tm) = klength(quote(trim(New_codebreekpunt_tm)))
                   then put '22'x New_codebreekpunt_tm +(-1) '22'x "," @;
                   else put New_codebreekpunt_tm @;
              end;
       if missing(New_woonplaatsnaam_ptt)
         then put "," @;
         else do;
                 if find(New_woonplaatsnaam_ptt,'0A'x) > 0 and 2+klength(New_woonplaatsnaam_ptt) = klength(quote(trim(New_woonplaatsnaam_ptt)))
                   then put '22'x New_woonplaatsnaam_ptt +(-1) '22'x "," @;
                   else put New_woonplaatsnaam_ptt @;
              end;
       if missing(New_woonplaatsnaam_nen)
         then put "," @;
         else do;
                 if find(New_woonplaatsnaam_nen,'0A'x) > 0 and 2+klength(New_woonplaatsnaam_nen) = klength(quote(trim(New_woonplaatsnaam_nen)))
                   then put '22'x New_woonplaatsnaam_nen +(-1) '22'x "," @;
                   else put New_woonplaatsnaam_nen @;
              end;
       if missing(New_straatnaam_ptt)
         then put "," @;
         else do;
                 if find(New_straatnaam_ptt,'0A'x) > 0 and 2+klength(New_straatnaam_ptt) = klength(quote(trim(New_straatnaam_ptt)))
                   then put '22'x New_straatnaam_ptt +(-1) '22'x "," @;
                   else put New_straatnaam_ptt @;
              end;
       if missing(New_straatnaam_nen)
         then put "," @;
         else do;
                 if find(New_straatnaam_nen,'0A'x) > 0 and 2+klength(New_straatnaam_nen) = klength(quote(trim(New_straatnaam_nen)))
                   then put '22'x New_straatnaam_nen +(-1) '22'x "," @;
                   else put New_straatnaam_nen @;
              end;
       if missing(New_straatnaam_off)
         then put "," @;
         else do;
                 if find(New_straatnaam_off,'0A'x) > 0 and 2+klength(New_straatnaam_off) = klength(quote(trim(New_straatnaam_off)))
                   then put '22'x New_straatnaam_off +(-1) '22'x "," @;
                   else put New_straatnaam_off @;
              end;
       if missing(New_extract_woonplaats)
         then put "," @;
         else do;
                 if find(New_extract_woonplaats,'0A'x) > 0 and 2+klength(New_extract_woonplaats) = klength(quote(trim(New_extract_woonplaats)))
                   then put '22'x New_extract_woonplaats +(-1) '22'x "," @;
                   else put New_extract_woonplaats @;
              end;
       if missing(New_extract_straatnaam)
         then put "," @;
         else do;
                 if find(New_extract_straatnaam,'0A'x) > 0 and 2+klength(New_extract_straatnaam) = klength(quote(trim(New_extract_straatnaam)))
                   then put '22'x New_extract_straatnaam +(-1) '22'x "," @;
                   else put New_extract_straatnaam @;
              end;
       if missing(New_gemeentecode)
         then put "," @;
         else do;
                 if find(New_gemeentecode,'0A'x) > 0 and 2+klength(New_gemeentecode) = klength(quote(trim(New_gemeentecode)))
                   then put '22'x New_gemeentecode +(-1) '22'x "," @;
                   else put New_gemeentecode @;
              end;
       if missing(New_gemeentenaam)
         then put "," @;
         else do;
                 if find(New_gemeentenaam,'0A'x) > 0 and 2+klength(New_gemeentenaam) = klength(quote(trim(New_gemeentenaam)))
                   then put '22'x New_gemeentenaam +(-1) '22'x "," @;
                   else put New_gemeentenaam @;
              end;
       if missing(New_provinciecode)
         then put "," @;
         else do;
                 if find(New_provinciecode,'0A'x) > 0 and 2+klength(New_provinciecode) = klength(quote(trim(New_provinciecode)))
                   then put '22'x New_provinciecode +(-1) '22'x "," @;
                   else put New_provinciecode @;
              end;
       if missing(New_cebuco_code)
         then put "," @;
         else do;
                 if find(New_cebuco_code,'0A'x) > 0 and 2+klength(New_cebuco_code) = klength(quote(trim(New_cebuco_code)))
                   then put '22'x New_cebuco_code +(-1) '22'x "," @;
                   else put New_cebuco_code @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_PCT AS
   SELECT t1.Cijfer,
          t1.Letter,
          t1.Reeksindicatie,
          t1.Codebreekpunt_van,
          t1.Codebreekpunt_tm,
          t1.Woonplaatsnaam_ptt,
          t1.Woonplaatsnaam_nen,
          t1.Straatnaam_ptt,
          t1.Straatnaam_nen,
          t1.Straatnaam_off,
          t1.Extract_woonplaats,
          t1.Extract_straatnaam,
          t1.Gemeentecode,
          t1.Gemeentenaam,
          t1.Provinciecode,
          t1.Cebuco_code
     FROM DATAQASG.PCT_TCMG t1;
QUIT;

data WORK.BAS_PCT;
  set WORK.BAS_PCT;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_PCT.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Cijfer" 
       ','
          "Letter" 
       ','
          "Reeksindicatie" 
       ','
          "Codebreekpunt_van" 
       ','
          "Codebreekpunt_tm" 
       ','
          "Woonplaatsnaam_ptt" 
       ','
          "Woonplaatsnaam_nen" 
       ','
          "Straatnaam_ptt" 
       ','
          "Straatnaam_nen" 
       ','
          "Straatnaam_off" 
       ','
          "Extract_woonplaats" 
       ','
          "Extract_straatnaam" 
       ','
          "Gemeentecode" 
       ','
          "Gemeentenaam" 
       ','
          "Provinciecode" 
       ','
          "Cebuco_code" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_PCT   end=EFIEOD; 
       format Cijfer  ;
       format Letter  ;
       format Reeksindicatie  ;
       format Codebreekpunt_van  ;
       format Codebreekpunt_tm  ;
       format Woonplaatsnaam_ptt  ;
       format Woonplaatsnaam_nen  ;
       format Straatnaam_ptt  ;
       format Straatnaam_nen  ;
       format Straatnaam_off  ;
       format Extract_woonplaats  ;
       format Extract_straatnaam  ;
       format Gemeentecode  ;
       format Gemeentenaam  ;
       format Provinciecode  ;
       format Cebuco_code  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Cijfer)
         then put "," @;
         else do;
                 if find(Cijfer,'0A'x) > 0 and 2+klength(Cijfer) = klength(quote(trim(Cijfer)))
                   then put '22'x Cijfer +(-1) '22'x "," @;
                   else put Cijfer @;
              end;
       if missing(Letter)
         then put "," @;
         else do;
                 if find(Letter,'0A'x) > 0 and 2+klength(Letter) = klength(quote(trim(Letter)))
                   then put '22'x Letter +(-1) '22'x "," @;
                   else put Letter @;
              end;
       if missing(Reeksindicatie)
         then put "," @;
         else do;
                 if find(Reeksindicatie,'0A'x) > 0 and 2+klength(Reeksindicatie) = klength(quote(trim(Reeksindicatie)))
                   then put '22'x Reeksindicatie +(-1) '22'x "," @;
                   else put Reeksindicatie @;
              end;
       if missing(Codebreekpunt_van)
         then put "," @;
         else do;
                 if find(Codebreekpunt_van,'0A'x) > 0 and 2+klength(Codebreekpunt_van) = klength(quote(trim(Codebreekpunt_van)))
                   then put '22'x Codebreekpunt_van +(-1) '22'x "," @;
                   else put Codebreekpunt_van @;
              end;
       if missing(Codebreekpunt_tm)
         then put "," @;
         else do;
                 if find(Codebreekpunt_tm,'0A'x) > 0 and 2+klength(Codebreekpunt_tm) = klength(quote(trim(Codebreekpunt_tm)))
                   then put '22'x Codebreekpunt_tm +(-1) '22'x "," @;
                   else put Codebreekpunt_tm @;
              end;
       if missing(Woonplaatsnaam_ptt)
         then put "," @;
         else do;
                 if find(Woonplaatsnaam_ptt,'0A'x) > 0 and 2+klength(Woonplaatsnaam_ptt) = klength(quote(trim(Woonplaatsnaam_ptt)))
                   then put '22'x Woonplaatsnaam_ptt +(-1) '22'x "," @;
                   else put Woonplaatsnaam_ptt @;
              end;
       if missing(Woonplaatsnaam_nen)
         then put "," @;
         else do;
                 if find(Woonplaatsnaam_nen,'0A'x) > 0 and 2+klength(Woonplaatsnaam_nen) = klength(quote(trim(Woonplaatsnaam_nen)))
                   then put '22'x Woonplaatsnaam_nen +(-1) '22'x "," @;
                   else put Woonplaatsnaam_nen @;
              end;
       if missing(Straatnaam_ptt)
         then put "," @;
         else do;
                 if find(Straatnaam_ptt,'0A'x) > 0 and 2+klength(Straatnaam_ptt) = klength(quote(trim(Straatnaam_ptt)))
                   then put '22'x Straatnaam_ptt +(-1) '22'x "," @;
                   else put Straatnaam_ptt @;
              end;
       if missing(Straatnaam_nen)
         then put "," @;
         else do;
                 if find(Straatnaam_nen,'0A'x) > 0 and 2+klength(Straatnaam_nen) = klength(quote(trim(Straatnaam_nen)))
                   then put '22'x Straatnaam_nen +(-1) '22'x "," @;
                   else put Straatnaam_nen @;
              end;
       if missing(Straatnaam_off)
         then put "," @;
         else do;
                 if find(Straatnaam_off,'0A'x) > 0 and 2+klength(Straatnaam_off) = klength(quote(trim(Straatnaam_off)))
                   then put '22'x Straatnaam_off +(-1) '22'x "," @;
                   else put Straatnaam_off @;
              end;
       if missing(Extract_woonplaats)
         then put "," @;
         else do;
                 if find(Extract_woonplaats,'0A'x) > 0 and 2+klength(Extract_woonplaats) = klength(quote(trim(Extract_woonplaats)))
                   then put '22'x Extract_woonplaats +(-1) '22'x "," @;
                   else put Extract_woonplaats @;
              end;
       if missing(Extract_straatnaam)
         then put "," @;
         else do;
                 if find(Extract_straatnaam,'0A'x) > 0 and 2+klength(Extract_straatnaam) = klength(quote(trim(Extract_straatnaam)))
                   then put '22'x Extract_straatnaam +(-1) '22'x "," @;
                   else put Extract_straatnaam @;
              end;
       if missing(Gemeentecode)
         then put "," @;
         else do;
                 if find(Gemeentecode,'0A'x) > 0 and 2+klength(Gemeentecode) = klength(quote(trim(Gemeentecode)))
                   then put '22'x Gemeentecode +(-1) '22'x "," @;
                   else put Gemeentecode @;
              end;
       if missing(Gemeentenaam)
         then put "," @;
         else do;
                 if find(Gemeentenaam,'0A'x) > 0 and 2+klength(Gemeentenaam) = klength(quote(trim(Gemeentenaam)))
                   then put '22'x Gemeentenaam +(-1) '22'x "," @;
                   else put Gemeentenaam @;
              end;
       if missing(Provinciecode)
         then put "," @;
         else do;
                 if find(Provinciecode,'0A'x) > 0 and 2+klength(Provinciecode) = klength(quote(trim(Provinciecode)))
                   then put '22'x Provinciecode +(-1) '22'x "," @;
                   else put Provinciecode @;
              end;
       if missing(Cebuco_code)
         then put "," @;
         else do;
                 if find(Cebuco_code,'0A'x) > 0 and 2+klength(Cebuco_code) = klength(quote(trim(Cebuco_code)))
                   then put '22'x Cebuco_code +(-1) '22'x "," @;
                   else put Cebuco_code @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_ADRES_RELATIE AS
   SELECT t1.Adressoort,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Kkr_gevalideerd,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rae_id,
          t1.Ras_id,
          t1.Rel_id,
          t1.Vst_volgnr
     FROM DATAQASG.RBM_ADRES_RELATIE_TCMG t1;
QUIT;

data WORK.BAS_RBM_ADRES_RELATIE;
  set WORK.BAS_RBM_ADRES_RELATIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ADRES_RELATIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Adressoort" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Kkr_gevalideerd" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rae_id" 
       ','
          "Ras_id" 
       ','
          "Rel_id" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_ADRES_RELATIE   end=EFIEOD; 
       format Adressoort  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Kkr_gevalideerd  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rae_id best12. ;
       format Ras_id best12. ;
       format Rel_id best12. ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Adressoort)
         then put "," @;
         else do;
                 if find(Adressoort,'0A'x) > 0 and 2+klength(Adressoort) = klength(quote(trim(Adressoort)))
                   then put '22'x Adressoort +(-1) '22'x "," @;
                   else put Adressoort @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Kkr_gevalideerd)
         then put "," @;
         else do;
                 if find(Kkr_gevalideerd,'0A'x) > 0 and 2+klength(Kkr_gevalideerd) = klength(quote(trim(Kkr_gevalideerd)))
                   then put '22'x Kkr_gevalideerd +(-1) '22'x "," @;
                   else put Kkr_gevalideerd @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rae_id)
         then put "," @;
         else do;
                 if find(Rae_id,'0A'x) > 0 and 2+klength(Rae_id) = klength(quote(trim(Rae_id)))
                   then put '22'x Rae_id +(-1) '22'x "," @;
                   else put Rae_id @;
              end;
       if missing(Ras_id)
         then put "," @;
         else do;
                 if find(Ras_id,'0A'x) > 0 and 2+klength(Ras_id) = klength(quote(trim(Ras_id)))
                   then put '22'x Ras_id +(-1) '22'x "," @;
                   else put Ras_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_ADRES AS
   SELECT t1.Barcode,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.creatie_user,
          t1.Huisnr,
          t1.Huisnr_toe,
          t1.Ias_id,
          t1.Landnaam,
          t1.Locatie_oms,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.mutatie_user,
          t1.Plaatsnaam,
          t1.Postcd,
          t1.Prov_cd,
          t1.Ras_id,
          t1.Straat,
          t1.Validatie
     FROM DATAQASG.RBM_ADRES_TCMG t1;
QUIT;

data WORK.BAS_RBM_ADRES;
  set WORK.BAS_RBM_ADRES;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ADRES.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Barcode" 
       ','
          "Creatie_dat" 
       ','
          "creatie_user" 
       ','
          "Huisnr" 
       ','
          "Huisnr_toe" 
       ','
          "Ias_id" 
       ','
          "Landnaam" 
       ','
          "Locatie_oms" 
       ','
          "Mutatie_dat" 
       ','
          "mutatie_user" 
       ','
          "Plaatsnaam" 
       ','
          "Postcd" 
       ','
          "Prov_cd" 
       ','
          "Ras_id" 
       ','
          "Straat" 
       ','
          "Validatie" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_ADRES   end=EFIEOD; 
       format Barcode  ;
       format Creatie_dat B8601DT19. ;
       format creatie_user  ;
       format Huisnr best12. ;
       format Huisnr_toe  ;
       format Ias_id best12. ;
       format Landnaam  ;
       format Locatie_oms  ;
       format Mutatie_dat B8601DT19. ;
       format mutatie_user  ;
       format Plaatsnaam  ;
       format Postcd  ;
       format Prov_cd  ;
       format Ras_id best12. ;
       format Straat  ;
       format Validatie  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Barcode)
         then put "," @;
         else do;
                 if find(Barcode,'0A'x) > 0 and 2+klength(Barcode) = klength(quote(trim(Barcode)))
                   then put '22'x Barcode +(-1) '22'x "," @;
                   else put Barcode @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(creatie_user)
         then put "," @;
         else do;
                 if find(creatie_user,'0A'x) > 0 and 2+klength(creatie_user) = klength(quote(trim(creatie_user)))
                   then put '22'x creatie_user +(-1) '22'x "," @;
                   else put creatie_user @;
              end;
       if missing(Huisnr)
         then put "," @;
         else do;
                 if find(Huisnr,'0A'x) > 0 and 2+klength(Huisnr) = klength(quote(trim(Huisnr)))
                   then put '22'x Huisnr +(-1) '22'x "," @;
                   else put Huisnr @;
              end;
       if missing(Huisnr_toe)
         then put "," @;
         else do;
                 if find(Huisnr_toe,'0A'x) > 0 and 2+klength(Huisnr_toe) = klength(quote(trim(Huisnr_toe)))
                   then put '22'x Huisnr_toe +(-1) '22'x "," @;
                   else put Huisnr_toe @;
              end;
       if missing(Ias_id)
         then put "," @;
         else do;
                 if find(Ias_id,'0A'x) > 0 and 2+klength(Ias_id) = klength(quote(trim(Ias_id)))
                   then put '22'x Ias_id +(-1) '22'x "," @;
                   else put Ias_id @;
              end;
       if missing(Landnaam)
         then put "," @;
         else do;
                 if find(Landnaam,'0A'x) > 0 and 2+klength(Landnaam) = klength(quote(trim(Landnaam)))
                   then put '22'x Landnaam +(-1) '22'x "," @;
                   else put Landnaam @;
              end;
       if missing(Locatie_oms)
         then put "," @;
         else do;
                 if find(Locatie_oms,'0A'x) > 0 and 2+klength(Locatie_oms) = klength(quote(trim(Locatie_oms)))
                   then put '22'x Locatie_oms +(-1) '22'x "," @;
                   else put Locatie_oms @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(mutatie_user)
         then put "," @;
         else do;
                 if find(mutatie_user,'0A'x) > 0 and 2+klength(mutatie_user) = klength(quote(trim(mutatie_user)))
                   then put '22'x mutatie_user +(-1) '22'x "," @;
                   else put mutatie_user @;
              end;
       if missing(Plaatsnaam)
         then put "," @;
         else do;
                 if find(Plaatsnaam,'0A'x) > 0 and 2+klength(Plaatsnaam) = klength(quote(trim(Plaatsnaam)))
                   then put '22'x Plaatsnaam +(-1) '22'x "," @;
                   else put Plaatsnaam @;
              end;
       if missing(Postcd)
         then put "," @;
         else do;
                 if find(Postcd,'0A'x) > 0 and 2+klength(Postcd) = klength(quote(trim(Postcd)))
                   then put '22'x Postcd +(-1) '22'x "," @;
                   else put Postcd @;
              end;
       if missing(Prov_cd)
         then put "," @;
         else do;
                 if find(Prov_cd,'0A'x) > 0 and 2+klength(Prov_cd) = klength(quote(trim(Prov_cd)))
                   then put '22'x Prov_cd +(-1) '22'x "," @;
                   else put Prov_cd @;
              end;
       if missing(Ras_id)
         then put "," @;
         else do;
                 if find(Ras_id,'0A'x) > 0 and 2+klength(Ras_id) = klength(quote(trim(Ras_id)))
                   then put '22'x Ras_id +(-1) '22'x "," @;
                   else put Ras_id @;
              end;
       if missing(Straat)
         then put "," @;
         else do;
                 if find(Straat,'0A'x) > 0 and 2+klength(Straat) = klength(quote(trim(Straat)))
                   then put '22'x Straat +(-1) '22'x "," @;
                   else put Straat @;
              end;
       if missing(Validatie)
         then put "," @;
         else do;
                 if find(Validatie,'0A'x) > 0 and 2+klength(Validatie) = klength(quote(trim(Validatie)))
                   then put '22'x Validatie +(-1) '22'x "," @;
                   else put Validatie @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_COM_ADRES_CP AS
   SELECT t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Org_id,
          t1.Per_id,
          t1.Rav_id,
          t1.Rca_id
     FROM DATAQASG.RBM_COM_ADRES_CP_TCMG t1;
QUIT;

data WORK.BAS_RBM_COM_ADRES_CP;
  set WORK.BAS_RBM_COM_ADRES_CP;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_COM_ADRES_CP.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Creatie_dat" 
       ','
          "creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Org_id" 
       ','
          "Per_id" 
       ','
          "Rav_id" 
       ','
          "Rca_id" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_COM_ADRES_CP   end=EFIEOD; 
       format Creatie_dat B8601DT19. ;
       format creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Org_id best12. ;
       format Per_id best12. ;
       format Rav_id best12. ;
       format Rca_id best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(creatie_user)
         then put "," @;
         else do;
                 if find(creatie_user,'0A'x) > 0 and 2+klength(creatie_user) = klength(quote(trim(creatie_user)))
                   then put '22'x creatie_user +(-1) '22'x "," @;
                   else put creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Org_id)
         then put "," @;
         else do;
                 if find(Org_id,'0A'x) > 0 and 2+klength(Org_id) = klength(quote(trim(Org_id)))
                   then put '22'x Org_id +(-1) '22'x "," @;
                   else put Org_id @;
              end;
       if missing(Per_id)
         then put "," @;
         else do;
                 if find(Per_id,'0A'x) > 0 and 2+klength(Per_id) = klength(quote(trim(Per_id)))
                   then put '22'x Per_id +(-1) '22'x "," @;
                   else put Per_id @;
              end;
       if missing(Rav_id)
         then put "," @;
         else do;
                 if find(Rav_id,'0A'x) > 0 and 2+klength(Rav_id) = klength(quote(trim(Rav_id)))
                   then put '22'x Rav_id +(-1) '22'x "," @;
                   else put Rav_id @;
              end;
       if missing(Rca_id)
         then put "," @;
         else do;
                 if find(Rca_id,'0A'x) > 0 and 2+klength(Rca_id) = klength(quote(trim(Rca_id)))
                   then put '22'x Rca_id +(-1) '22'x "," @;
                   else put Rca_id @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_COM_ADRES_RELATIE AS
   SELECT t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rae_id,
          t1.Rca_id,
          t1.Rel_id,
          t1.Vst_volgnr
     FROM DATAQASG.RBM_COM_ADRES_RELATIE_TCMG t1;
QUIT;

data WORK.BAS_RBM_COM_ADRES_RELATIE;
  set WORK.BAS_RBM_COM_ADRES_RELATIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_COM_ADRES_RELATIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rae_id" 
       ','
          "Rca_id" 
       ','
          "Rel_id" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_COM_ADRES_RELATIE   end=EFIEOD; 
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rae_id best12. ;
       format Rca_id best12. ;
       format Rel_id best12. ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rae_id)
         then put "," @;
         else do;
                 if find(Rae_id,'0A'x) > 0 and 2+klength(Rae_id) = klength(quote(trim(Rae_id)))
                   then put '22'x Rae_id +(-1) '22'x "," @;
                   else put Rae_id @;
              end;
       if missing(Rca_id)
         then put "," @;
         else do;
                 if find(Rca_id,'0A'x) > 0 and 2+klength(Rca_id) = klength(quote(trim(Rca_id)))
                   then put '22'x Rca_id +(-1) '22'x "," @;
                   else put Rca_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_COM_ADRES AS
   SELECT t1.Com_Cd,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rca_id,
          t1.Telnr_email,
          t1.Referentie
     FROM DATAQASG.RBM_COM_ADRES_TCMG t1;
QUIT;

data WORK.BAS_RBM_COM_ADRES;
  set WORK.BAS_RBM_COM_ADRES;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_COM_ADRES.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Com_Cd" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rca_id" 
       ','
          "Telnr_email" 
       ','
          "Referentie" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_COM_ADRES   end=EFIEOD; 
       format Com_Cd  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rca_id best12. ;
       format Telnr_email  ;
       format Referentie  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Com_Cd)
         then put "," @;
         else do;
                 if find(Com_Cd,'0A'x) > 0 and 2+klength(Com_Cd) = klength(quote(trim(Com_Cd)))
                   then put '22'x Com_Cd +(-1) '22'x "," @;
                   else put Com_Cd @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rca_id)
         then put "," @;
         else do;
                 if find(Rca_id,'0A'x) > 0 and 2+klength(Rca_id) = klength(quote(trim(Rca_id)))
                   then put '22'x Rca_id +(-1) '22'x "," @;
                   else put Rca_id @;
              end;
       if missing(Telnr_email)
         then put "," @;
         else do;
                 if find(Telnr_email,'0A'x) > 0 and 2+klength(Telnr_email) = klength(quote(trim(Telnr_email)))
                   then put '22'x Telnr_email +(-1) '22'x "," @;
                   else put Telnr_email @;
              end;
       if missing(Referentie)
         then put "," @;
         else do;
                 if find(Referentie,'0A'x) > 0 and 2+klength(Referentie) = klength(quote(trim(Referentie)))
                   then put '22'x Referentie +(-1) '22'x "," @;
                   else put Referentie @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_CONTACTPERSOON AS
   SELECT t1.Afdeling,
          t1.Certhoud_id,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Functie,
          t1.Kkr_relatie_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Notitie,
          t1.Org_id,
          t1.Per_id,
          t1.Ref_kkr_relatie_id,
          t1.Status_contactpersoon,
          t1.Validatie
     FROM DATAQASG.RBM_CONTACTPERSOON_TCMG t1;
QUIT;

data WORK.BAS_RBM_CONTACTPERSOON;
  set WORK.BAS_RBM_CONTACTPERSOON;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_CONTACTPERSOON.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Afdeling" 
       ','
          "Certhoud_id" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Functie" 
       ','
          "Kkr_relatie_id" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Notitie" 
       ','
          "Org_id" 
       ','
          "Per_id" 
       ','
          "Ref_kkr_relatie_id" 
       ','
          "Status_contactpersoon" 
       ','
          "Validatie" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_CONTACTPERSOON   end=EFIEOD; 
       format Afdeling  ;
       format Certhoud_id best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Functie  ;
       format Kkr_relatie_id  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Notitie  ;
       format Org_id best12. ;
       format Per_id best12. ;
       format Ref_kkr_relatie_id  ;
       format Status_contactpersoon  ;
       format Validatie  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Afdeling)
         then put "," @;
         else do;
                 if find(Afdeling,'0A'x) > 0 and 2+klength(Afdeling) = klength(quote(trim(Afdeling)))
                   then put '22'x Afdeling +(-1) '22'x "," @;
                   else put Afdeling @;
              end;
       if missing(Certhoud_id)
         then put "," @;
         else do;
                 if find(Certhoud_id,'0A'x) > 0 and 2+klength(Certhoud_id) = klength(quote(trim(Certhoud_id)))
                   then put '22'x Certhoud_id +(-1) '22'x "," @;
                   else put Certhoud_id @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Functie)
         then put "," @;
         else do;
                 if find(Functie,'0A'x) > 0 and 2+klength(Functie) = klength(quote(trim(Functie)))
                   then put '22'x Functie +(-1) '22'x "," @;
                   else put Functie @;
              end;
       if missing(Kkr_relatie_id)
         then put "," @;
         else do;
                 if find(Kkr_relatie_id,'0A'x) > 0 and 2+klength(Kkr_relatie_id) = klength(quote(trim(Kkr_relatie_id)))
                   then put '22'x Kkr_relatie_id +(-1) '22'x "," @;
                   else put Kkr_relatie_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Notitie)
         then put "," @;
         else do;
                 if find(Notitie,'0A'x) > 0 and 2+klength(Notitie) = klength(quote(trim(Notitie)))
                   then put '22'x Notitie +(-1) '22'x "," @;
                   else put Notitie @;
              end;
       if missing(Org_id)
         then put "," @;
         else do;
                 if find(Org_id,'0A'x) > 0 and 2+klength(Org_id) = klength(quote(trim(Org_id)))
                   then put '22'x Org_id +(-1) '22'x "," @;
                   else put Org_id @;
              end;
       if missing(Per_id)
         then put "," @;
         else do;
                 if find(Per_id,'0A'x) > 0 and 2+klength(Per_id) = klength(quote(trim(Per_id)))
                   then put '22'x Per_id +(-1) '22'x "," @;
                   else put Per_id @;
              end;
       if missing(Ref_kkr_relatie_id)
         then put "," @;
         else do;
                 if find(Ref_kkr_relatie_id,'0A'x) > 0 and 2+klength(Ref_kkr_relatie_id) = klength(quote(trim(Ref_kkr_relatie_id)))
                   then put '22'x Ref_kkr_relatie_id +(-1) '22'x "," @;
                   else put Ref_kkr_relatie_id @;
              end;
       if missing(Status_contactpersoon)
         then put "," @;
         else do;
                 if find(Status_contactpersoon,'0A'x) > 0 and 2+klength(Status_contactpersoon) = klength(quote(trim(Status_contactpersoon)))
                   then put '22'x Status_contactpersoon +(-1) '22'x "," @;
                   else put Status_contactpersoon @;
              end;
       if missing(Validatie)
         then put "," @;
         else do;
                 if find(Validatie,'0A'x) > 0 and 2+klength(Validatie) = klength(quote(trim(Validatie)))
                   then put '22'x Validatie +(-1) '22'x "," @;
                   else put Validatie @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_CP_VESTIGING AS
   SELECT t1.Org_id,
          t1.Per_id,
          t1.Vst_volgnr
     FROM DATAQASG.RBM_CP_VESTIGING_TCMG t1;
QUIT;

data WORK.BAS_RBM_CP_VESTIGING;
  set WORK.BAS_RBM_CP_VESTIGING;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_CP_VESTIGING.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Org_id" 
       ','
          "Per_id" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_CP_VESTIGING   end=EFIEOD; 
       format Org_id best12. ;
       format Per_id best12. ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Org_id)
         then put "," @;
         else do;
                 if find(Org_id,'0A'x) > 0 and 2+klength(Org_id) = klength(quote(trim(Org_id)))
                   then put '22'x Org_id +(-1) '22'x "," @;
                   else put Org_id @;
              end;
       if missing(Per_id)
         then put "," @;
         else do;
                 if find(Per_id,'0A'x) > 0 and 2+klength(Per_id) = klength(quote(trim(Per_id)))
                   then put '22'x Per_id +(-1) '22'x "," @;
                   else put Per_id @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_ORG_BSI AS
   SELECT t1.Rel_id,
          t1.Bsi_cd,
          t1.Volg_nr,
          t1.Begindatum FORMAT=B8601DT19. AS Begindatum,
          t1.Einddatum FORMAT=B8601DT19. AS Einddatum,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.RBM_ORG_BSI_TCMG t1;
QUIT;

data WORK.BAS_RBM_ORG_BSI;
  set WORK.BAS_RBM_ORG_BSI;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG_BSI.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Rel_id" 
       ','
          "Bsi_cd" 
       ','
          "Volg_nr" 
       ','
          "Begindatum" 
       ','
          "Einddatum" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_ORG_BSI   end=EFIEOD; 
       format Rel_id best12. ;
       format Bsi_cd  ;
       format Volg_nr best12. ;
       format Begindatum B8601DT19. ;
       format Einddatum B8601DT19. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Bsi_cd)
         then put "," @;
         else do;
                 if find(Bsi_cd,'0A'x) > 0 and 2+klength(Bsi_cd) = klength(quote(trim(Bsi_cd)))
                   then put '22'x Bsi_cd +(-1) '22'x "," @;
                   else put Bsi_cd @;
              end;
       if missing(Volg_nr)
         then put "," @;
         else do;
                 if find(Volg_nr,'0A'x) > 0 and 2+klength(Volg_nr) = klength(quote(trim(Volg_nr)))
                   then put '22'x Volg_nr +(-1) '22'x "," @;
                   else put Volg_nr @;
              end;
       if missing(Begindatum)
         then put "," @;
         else do;
                 if find(Begindatum,'0A'x) > 0 and 2+klength(Begindatum) = klength(quote(trim(Begindatum)))
                   then put '22'x Begindatum +(-1) '22'x "," @;
                   else put Begindatum @;
              end;
       if missing(Einddatum)
         then put "," @;
         else do;
                 if find(Einddatum,'0A'x) > 0 and 2+klength(Einddatum) = klength(quote(trim(Einddatum)))
                   then put '22'x Einddatum +(-1) '22'x "," @;
                   else put Einddatum @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_ORG_FAILLIET AS
   SELECT t1.Kvk_nr,
          t1.Graydon_bedrijfsnr,
          t1.Kvk_dossiernr,
          t1.Kvk_kamernr,
          t1.Kvk_subdossiernr,
          t1.Naam,
          t1.Handelsnaam,
          t1.Straatnaam_postbus,
          t1.Huisnr_postbusnr,
          t1.Huisnr_toevoeging,
          t1.Postcode,
          t1.Woonplaats,
          t1.Land,
          t1.Actuele_faillisement_cd,
          t1.Actuele_status,
          t1.Actuele_opheffings_cd
     FROM DATAQASG.RBM_ORG_FAILLIET_TCMG t1;
QUIT;

data WORK.BAS_RBM_ORG_FAILLIET;
  set WORK.BAS_RBM_ORG_FAILLIET;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG_FAILLIET.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Kvk_nr" 
       ','
          "Graydon_bedrijfsnr" 
       ','
          "Kvk_dossiernr" 
       ','
          "Kvk_kamernr" 
       ','
          "Kvk_subdossiernr" 
       ','
          "Naam" 
       ','
          "Handelsnaam" 
       ','
          "Straatnaam_postbus" 
       ','
          "Huisnr_postbusnr" 
       ','
          "Huisnr_toevoeging" 
       ','
          "Postcode" 
       ','
          "Woonplaats" 
       ','
          "Land" 
       ','
          "Actuele_faillisement_cd" 
       ','
          "Actuele_status" 
       ','
          "Actuele_opheffings_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_ORG_FAILLIET   end=EFIEOD; 
       format Kvk_nr  ;
       format Graydon_bedrijfsnr best12. ;
       format Kvk_dossiernr best12. ;
       format Kvk_kamernr best12. ;
       format Kvk_subdossiernr best12. ;
       format Naam  ;
       format Handelsnaam  ;
       format Straatnaam_postbus  ;
       format Huisnr_postbusnr best12. ;
       format Huisnr_toevoeging  ;
       format Postcode  ;
       format Woonplaats  ;
       format Land  ;
       format Actuele_faillisement_cd  ;
       format Actuele_status  ;
       format Actuele_opheffings_cd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Kvk_nr)
         then put "," @;
         else do;
                 if find(Kvk_nr,'0A'x) > 0 and 2+klength(Kvk_nr) = klength(quote(trim(Kvk_nr)))
                   then put '22'x Kvk_nr +(-1) '22'x "," @;
                   else put Kvk_nr @;
              end;
       if missing(Graydon_bedrijfsnr)
         then put "," @;
         else do;
                 if find(Graydon_bedrijfsnr,'0A'x) > 0 and 2+klength(Graydon_bedrijfsnr) = klength(quote(trim(Graydon_bedrijfsnr)))
                   then put '22'x Graydon_bedrijfsnr +(-1) '22'x "," @;
                   else put Graydon_bedrijfsnr @;
              end;
       if missing(Kvk_dossiernr)
         then put "," @;
         else do;
                 if find(Kvk_dossiernr,'0A'x) > 0 and 2+klength(Kvk_dossiernr) = klength(quote(trim(Kvk_dossiernr)))
                   then put '22'x Kvk_dossiernr +(-1) '22'x "," @;
                   else put Kvk_dossiernr @;
              end;
       if missing(Kvk_kamernr)
         then put "," @;
         else do;
                 if find(Kvk_kamernr,'0A'x) > 0 and 2+klength(Kvk_kamernr) = klength(quote(trim(Kvk_kamernr)))
                   then put '22'x Kvk_kamernr +(-1) '22'x "," @;
                   else put Kvk_kamernr @;
              end;
       if missing(Kvk_subdossiernr)
         then put "," @;
         else do;
                 if find(Kvk_subdossiernr,'0A'x) > 0 and 2+klength(Kvk_subdossiernr) = klength(quote(trim(Kvk_subdossiernr)))
                   then put '22'x Kvk_subdossiernr +(-1) '22'x "," @;
                   else put Kvk_subdossiernr @;
              end;
       if missing(Naam)
         then put "," @;
         else do;
                 if find(Naam,'0A'x) > 0 and 2+klength(Naam) = klength(quote(trim(Naam)))
                   then put '22'x Naam +(-1) '22'x "," @;
                   else put Naam @;
              end;
       if missing(Handelsnaam)
         then put "," @;
         else do;
                 if find(Handelsnaam,'0A'x) > 0 and 2+klength(Handelsnaam) = klength(quote(trim(Handelsnaam)))
                   then put '22'x Handelsnaam +(-1) '22'x "," @;
                   else put Handelsnaam @;
              end;
       if missing(Straatnaam_postbus)
         then put "," @;
         else do;
                 if find(Straatnaam_postbus,'0A'x) > 0 and 2+klength(Straatnaam_postbus) = klength(quote(trim(Straatnaam_postbus)))
                   then put '22'x Straatnaam_postbus +(-1) '22'x "," @;
                   else put Straatnaam_postbus @;
              end;
       if missing(Huisnr_postbusnr)
         then put "," @;
         else do;
                 if find(Huisnr_postbusnr,'0A'x) > 0 and 2+klength(Huisnr_postbusnr) = klength(quote(trim(Huisnr_postbusnr)))
                   then put '22'x Huisnr_postbusnr +(-1) '22'x "," @;
                   else put Huisnr_postbusnr @;
              end;
       if missing(Huisnr_toevoeging)
         then put "," @;
         else do;
                 if find(Huisnr_toevoeging,'0A'x) > 0 and 2+klength(Huisnr_toevoeging) = klength(quote(trim(Huisnr_toevoeging)))
                   then put '22'x Huisnr_toevoeging +(-1) '22'x "," @;
                   else put Huisnr_toevoeging @;
              end;
       if missing(Postcode)
         then put "," @;
         else do;
                 if find(Postcode,'0A'x) > 0 and 2+klength(Postcode) = klength(quote(trim(Postcode)))
                   then put '22'x Postcode +(-1) '22'x "," @;
                   else put Postcode @;
              end;
       if missing(Woonplaats)
         then put "," @;
         else do;
                 if find(Woonplaats,'0A'x) > 0 and 2+klength(Woonplaats) = klength(quote(trim(Woonplaats)))
                   then put '22'x Woonplaats +(-1) '22'x "," @;
                   else put Woonplaats @;
              end;
       if missing(Land)
         then put "," @;
         else do;
                 if find(Land,'0A'x) > 0 and 2+klength(Land) = klength(quote(trim(Land)))
                   then put '22'x Land +(-1) '22'x "," @;
                   else put Land @;
              end;
       if missing(Actuele_faillisement_cd)
         then put "," @;
         else do;
                 if find(Actuele_faillisement_cd,'0A'x) > 0 and 2+klength(Actuele_faillisement_cd) = klength(quote(trim(Actuele_faillisement_cd)))
                   then put '22'x Actuele_faillisement_cd +(-1) '22'x "," @;
                   else put Actuele_faillisement_cd @;
              end;
       if missing(Actuele_status)
         then put "," @;
         else do;
                 if find(Actuele_status,'0A'x) > 0 and 2+klength(Actuele_status) = klength(quote(trim(Actuele_status)))
                   then put '22'x Actuele_status +(-1) '22'x "," @;
                   else put Actuele_status @;
              end;
       if missing(Actuele_opheffings_cd)
         then put "," @;
         else do;
                 if find(Actuele_opheffings_cd,'0A'x) > 0 and 2+klength(Actuele_opheffings_cd) = klength(quote(trim(Actuele_opheffings_cd)))
                   then put '22'x Actuele_opheffings_cd +(-1) '22'x "," @;
                   else put Actuele_opheffings_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_ORG_JAAR AS
   SELECT t1.Rel_id,
          t1.Jaar,
          t1.Aantal_werknemers,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Omzet,
          t1.Loonsom,
          t1.So_loonsom,
          t1.Max_so_vermindering,
          t1.Peildatum FORMAT=B8601DT19. AS Peildatum,
          t1.Aantal_so_werknemers,
          t1.Bron,
          t1.Senterniveau_jn,
          t1.Lb_verm_voorlopig,
          t1.Lb_vermindering_eindafrekening,
          t1.Balanstotaal
     FROM DATAQASG.RBM_ORG_JAAR_TCMG t1;
QUIT;

data WORK.BAS_RBM_ORG_JAAR;
  set WORK.BAS_RBM_ORG_JAAR;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG_JAAR.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Rel_id" 
       ','
          "Jaar" 
       ','
          "Aantal_werknemers" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Omzet" 
       ','
          "Loonsom" 
       ','
          "So_loonsom" 
       ','
          "Max_so_vermindering" 
       ','
          "Peildatum" 
       ','
          "Aantal_so_werknemers" 
       ','
          "Bron" 
       ','
          "Senterniveau_jn" 
       ','
          "Lb_verm_voorlopig" 
       ','
          "Lb_vermindering_eindafrekening" 
       ','
          "Balanstotaal" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_ORG_JAAR   end=EFIEOD; 
       format Rel_id best12. ;
       format Jaar best12. ;
       format Aantal_werknemers best12. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Omzet best12. ;
       format Loonsom best12. ;
       format So_loonsom best12. ;
       format Max_so_vermindering best12. ;
       format Peildatum B8601DT19. ;
       format Aantal_so_werknemers best12. ;
       format Bron  ;
       format Senterniveau_jn  ;
       format Lb_verm_voorlopig best12. ;
       format Lb_vermindering_eindafrekening best12. ;
       format Balanstotaal best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Aantal_werknemers)
         then put "," @;
         else do;
                 if find(Aantal_werknemers,'0A'x) > 0 and 2+klength(Aantal_werknemers) = klength(quote(trim(Aantal_werknemers)))
                   then put '22'x Aantal_werknemers +(-1) '22'x "," @;
                   else put Aantal_werknemers @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Omzet)
         then put "," @;
         else do;
                 if find(Omzet,'0A'x) > 0 and 2+klength(Omzet) = klength(quote(trim(Omzet)))
                   then put '22'x Omzet +(-1) '22'x "," @;
                   else put Omzet @;
              end;
       if missing(Loonsom)
         then put "," @;
         else do;
                 if find(Loonsom,'0A'x) > 0 and 2+klength(Loonsom) = klength(quote(trim(Loonsom)))
                   then put '22'x Loonsom +(-1) '22'x "," @;
                   else put Loonsom @;
              end;
       if missing(So_loonsom)
         then put "," @;
         else do;
                 if find(So_loonsom,'0A'x) > 0 and 2+klength(So_loonsom) = klength(quote(trim(So_loonsom)))
                   then put '22'x So_loonsom +(-1) '22'x "," @;
                   else put So_loonsom @;
              end;
       if missing(Max_so_vermindering)
         then put "," @;
         else do;
                 if find(Max_so_vermindering,'0A'x) > 0 and 2+klength(Max_so_vermindering) = klength(quote(trim(Max_so_vermindering)))
                   then put '22'x Max_so_vermindering +(-1) '22'x "," @;
                   else put Max_so_vermindering @;
              end;
       if missing(Peildatum)
         then put "," @;
         else do;
                 if find(Peildatum,'0A'x) > 0 and 2+klength(Peildatum) = klength(quote(trim(Peildatum)))
                   then put '22'x Peildatum +(-1) '22'x "," @;
                   else put Peildatum @;
              end;
       if missing(Aantal_so_werknemers)
         then put "," @;
         else do;
                 if find(Aantal_so_werknemers,'0A'x) > 0 and 2+klength(Aantal_so_werknemers) = klength(quote(trim(Aantal_so_werknemers)))
                   then put '22'x Aantal_so_werknemers +(-1) '22'x "," @;
                   else put Aantal_so_werknemers @;
              end;
       if missing(Bron)
         then put "," @;
         else do;
                 if find(Bron,'0A'x) > 0 and 2+klength(Bron) = klength(quote(trim(Bron)))
                   then put '22'x Bron +(-1) '22'x "," @;
                   else put Bron @;
              end;
       if missing(Senterniveau_jn)
         then put "," @;
         else do;
                 if find(Senterniveau_jn,'0A'x) > 0 and 2+klength(Senterniveau_jn) = klength(quote(trim(Senterniveau_jn)))
                   then put '22'x Senterniveau_jn +(-1) '22'x "," @;
                   else put Senterniveau_jn @;
              end;
       if missing(Lb_verm_voorlopig)
         then put "," @;
         else do;
                 if find(Lb_verm_voorlopig,'0A'x) > 0 and 2+klength(Lb_verm_voorlopig) = klength(quote(trim(Lb_verm_voorlopig)))
                   then put '22'x Lb_verm_voorlopig +(-1) '22'x "," @;
                   else put Lb_verm_voorlopig @;
              end;
       if missing(Lb_vermindering_eindafrekening)
         then put "," @;
         else do;
                 if find(Lb_vermindering_eindafrekening,'0A'x) > 0 and 2+klength(Lb_vermindering_eindafrekening) = klength(quote(trim(Lb_vermindering_eindafrekening)))
                   then put '22'x Lb_vermindering_eindafrekening +(-1) '22'x "," @;
                   else put Lb_vermindering_eindafrekening @;
              end;
       if missing(Balanstotaal)
         then put "," @;
         else do;
                 if find(Balanstotaal,'0A'x) > 0 and 2+klength(Balanstotaal) = klength(quote(trim(Balanstotaal)))
                   then put '22'x Balanstotaal +(-1) '22'x "," @;
                   else put Balanstotaal @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_ORG_NAAM AS
   SELECT t1.Org_id,
          t1.Org_naam,
          t1.Org_naam_type,
          t1.Sushi_foutmelding,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.'Mutatie_user,'n AS Mutatie_user,
          t1.Kkr_gevalideerd
     FROM DATAQASG.RBM_ORG_NAAM_TCMG t1;
QUIT;

data WORK.BAS_RBM_ORG_NAAM;
  set WORK.BAS_RBM_ORG_NAAM;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG_NAAM.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Org_id" 
       ','
          "Org_naam" 
       ','
          "Org_naam_type" 
       ','
          "Sushi_foutmelding" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Kkr_gevalideerd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_ORG_NAAM   end=EFIEOD; 
       format Org_id best12. ;
       format Org_naam  ;
       format Org_naam_type  ;
       format Sushi_foutmelding  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Kkr_gevalideerd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Org_id)
         then put "," @;
         else do;
                 if find(Org_id,'0A'x) > 0 and 2+klength(Org_id) = klength(quote(trim(Org_id)))
                   then put '22'x Org_id +(-1) '22'x "," @;
                   else put Org_id @;
              end;
       if missing(Org_naam)
         then put "," @;
         else do;
                 if find(Org_naam,'0A'x) > 0 and 2+klength(Org_naam) = klength(quote(trim(Org_naam)))
                   then put '22'x Org_naam +(-1) '22'x "," @;
                   else put Org_naam @;
              end;
       if missing(Org_naam_type)
         then put "," @;
         else do;
                 if find(Org_naam_type,'0A'x) > 0 and 2+klength(Org_naam_type) = klength(quote(trim(Org_naam_type)))
                   then put '22'x Org_naam_type +(-1) '22'x "," @;
                   else put Org_naam_type @;
              end;
       if missing(Sushi_foutmelding)
         then put "," @;
         else do;
                 if find(Sushi_foutmelding,'0A'x) > 0 and 2+klength(Sushi_foutmelding) = klength(quote(trim(Sushi_foutmelding)))
                   then put '22'x Sushi_foutmelding +(-1) '22'x "," @;
                   else put Sushi_foutmelding @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Kkr_gevalideerd)
         then put "," @;
         else do;
                 if find(Kkr_gevalideerd,'0A'x) > 0 and 2+klength(Kkr_gevalideerd) = klength(quote(trim(Kkr_gevalideerd)))
                   then put '22'x Kkr_gevalideerd +(-1) '22'x "," @;
                   else put Kkr_gevalideerd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_ORG AS
   SELECT t1.Bik_Cd,
          t1.Bron_jr,
          t1.BTW_nummer,
          t1.BTW_plichtig,
          t1.IB_plichtig_sinds FORMAT=B8601DT19. AS IB_plichtig_sinds,
          t1.Jaar_oprichting,
          t1.Kkr_RSIN_afwijkend,
          t1.KVK_nr,
          t1.Naam,
          t1.Notitie,
          t1.Rel_id,
          t1.Rvm_cd,
          t1.Status_org,
          t1.Volg_nr_LB,
          t1.Voortzetting_van_rel_id,
          t1.VPB_IB_nummer,
          t1.IB_VPB_Plichtig
     FROM DATAQASG.RBM_ORG_TCMG t1;
QUIT;

data WORK.BAS_RBM_ORG;
  set WORK.BAS_RBM_ORG;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Bik_Cd" 
       ','
          "Bron_jr" 
       ','
          "BTW_nummer" 
       ','
          "BTW_plichtig" 
       ','
          "IB_plichtig_sinds" 
       ','
          "Jaar_oprichting" 
       ','
          "Kkr_RSIN_afwijkend" 
       ','
          "KVK_nr" 
       ','
          "Naam" 
       ','
          "Notitie" 
       ','
          "Rel_id" 
       ','
          "Rvm_cd" 
       ','
          "Status_org" 
       ','
          "Volg_nr_LB" 
       ','
          "Voortzetting_van_rel_id" 
       ','
          "VPB_IB_nummer" 
       ','
          "IB_VPB_Plichtig" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_ORG   end=EFIEOD; 
       format Bik_Cd  ;
       format Bron_jr  ;
       format BTW_nummer  ;
       format BTW_plichtig  ;
       format IB_plichtig_sinds B8601DT19. ;
       format Jaar_oprichting best12. ;
       format Kkr_RSIN_afwijkend  ;
       format KVK_nr  ;
       format Naam  ;
       format Notitie  ;
       format Rel_id best12. ;
       format Rvm_cd  ;
       format Status_org  ;
       format Volg_nr_LB best12. ;
       format Voortzetting_van_rel_id  ;
       format VPB_IB_nummer  ;
       format IB_VPB_Plichtig  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Bik_Cd)
         then put "," @;
         else do;
                 if find(Bik_Cd,'0A'x) > 0 and 2+klength(Bik_Cd) = klength(quote(trim(Bik_Cd)))
                   then put '22'x Bik_Cd +(-1) '22'x "," @;
                   else put Bik_Cd @;
              end;
       if missing(Bron_jr)
         then put "," @;
         else do;
                 if find(Bron_jr,'0A'x) > 0 and 2+klength(Bron_jr) = klength(quote(trim(Bron_jr)))
                   then put '22'x Bron_jr +(-1) '22'x "," @;
                   else put Bron_jr @;
              end;
       if missing(BTW_nummer)
         then put "," @;
         else do;
                 if find(BTW_nummer,'0A'x) > 0 and 2+klength(BTW_nummer) = klength(quote(trim(BTW_nummer)))
                   then put '22'x BTW_nummer +(-1) '22'x "," @;
                   else put BTW_nummer @;
              end;
       if missing(BTW_plichtig)
         then put "," @;
         else do;
                 if find(BTW_plichtig,'0A'x) > 0 and 2+klength(BTW_plichtig) = klength(quote(trim(BTW_plichtig)))
                   then put '22'x BTW_plichtig +(-1) '22'x "," @;
                   else put BTW_plichtig @;
              end;
       if missing(IB_plichtig_sinds)
         then put "," @;
         else do;
                 if find(IB_plichtig_sinds,'0A'x) > 0 and 2+klength(IB_plichtig_sinds) = klength(quote(trim(IB_plichtig_sinds)))
                   then put '22'x IB_plichtig_sinds +(-1) '22'x "," @;
                   else put IB_plichtig_sinds @;
              end;
       if missing(Jaar_oprichting)
         then put "," @;
         else do;
                 if find(Jaar_oprichting,'0A'x) > 0 and 2+klength(Jaar_oprichting) = klength(quote(trim(Jaar_oprichting)))
                   then put '22'x Jaar_oprichting +(-1) '22'x "," @;
                   else put Jaar_oprichting @;
              end;
       if missing(Kkr_RSIN_afwijkend)
         then put "," @;
         else do;
                 if find(Kkr_RSIN_afwijkend,'0A'x) > 0 and 2+klength(Kkr_RSIN_afwijkend) = klength(quote(trim(Kkr_RSIN_afwijkend)))
                   then put '22'x Kkr_RSIN_afwijkend +(-1) '22'x "," @;
                   else put Kkr_RSIN_afwijkend @;
              end;
       if missing(KVK_nr)
         then put "," @;
         else do;
                 if find(KVK_nr,'0A'x) > 0 and 2+klength(KVK_nr) = klength(quote(trim(KVK_nr)))
                   then put '22'x KVK_nr +(-1) '22'x "," @;
                   else put KVK_nr @;
              end;
       if missing(Naam)
         then put "," @;
         else do;
                 if find(Naam,'0A'x) > 0 and 2+klength(Naam) = klength(quote(trim(Naam)))
                   then put '22'x Naam +(-1) '22'x "," @;
                   else put Naam @;
              end;
       if missing(Notitie)
         then put "," @;
         else do;
                 if find(Notitie,'0A'x) > 0 and 2+klength(Notitie) = klength(quote(trim(Notitie)))
                   then put '22'x Notitie +(-1) '22'x "," @;
                   else put Notitie @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Rvm_cd)
         then put "," @;
         else do;
                 if find(Rvm_cd,'0A'x) > 0 and 2+klength(Rvm_cd) = klength(quote(trim(Rvm_cd)))
                   then put '22'x Rvm_cd +(-1) '22'x "," @;
                   else put Rvm_cd @;
              end;
       if missing(Status_org)
         then put "," @;
         else do;
                 if find(Status_org,'0A'x) > 0 and 2+klength(Status_org) = klength(quote(trim(Status_org)))
                   then put '22'x Status_org +(-1) '22'x "," @;
                   else put Status_org @;
              end;
       if missing(Volg_nr_LB)
         then put "," @;
         else do;
                 if find(Volg_nr_LB,'0A'x) > 0 and 2+klength(Volg_nr_LB) = klength(quote(trim(Volg_nr_LB)))
                   then put '22'x Volg_nr_LB +(-1) '22'x "," @;
                   else put Volg_nr_LB @;
              end;
       if missing(Voortzetting_van_rel_id)
         then put "," @;
         else do;
                 if find(Voortzetting_van_rel_id,'0A'x) > 0 and 2+klength(Voortzetting_van_rel_id) = klength(quote(trim(Voortzetting_van_rel_id)))
                   then put '22'x Voortzetting_van_rel_id +(-1) '22'x "," @;
                   else put Voortzetting_van_rel_id @;
              end;
       if missing(VPB_IB_nummer)
         then put "," @;
         else do;
                 if find(VPB_IB_nummer,'0A'x) > 0 and 2+klength(VPB_IB_nummer) = klength(quote(trim(VPB_IB_nummer)))
                   then put '22'x VPB_IB_nummer +(-1) '22'x "," @;
                   else put VPB_IB_nummer @;
              end;
       if missing(IB_VPB_Plichtig)
         then put "," @;
         else do;
                 if find(IB_VPB_Plichtig,'0A'x) > 0 and 2+klength(IB_VPB_Plichtig) = klength(quote(trim(IB_VPB_Plichtig)))
                   then put '22'x IB_VPB_Plichtig +(-1) '22'x "," @;
                   else put IB_VPB_Plichtig @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_PERSOON AS
   SELECT t1.Aanhef,
          t1.Aanlevernaam,
          t1.Aanspreeknaam,
          t1.Achternaam,
          t1.Foutmelding,
          t1.Geboortedatum FORMAT=B8601DT19. AS Geboortedatum,
          t1.Geslacht,
          t1.Import_contactpersonen_id,
          t1.Notitie,
          t1.Rbm_persoon_contact,
          t1.Rbm_persoon_particulier,
          t1.Rel_id,
          t1.Status_persoon,
          t1.Sushi_foutmelding,
          t1.Taal,
          t1.Titels_na,
          t1.Titels_voor,
          t1.Tussenvoegsels,
          t1.Validatie,
          t1.Voorletters,
          t1.Voornaam,
          t1.XML_String
     FROM DATAQASG.RBM_PERSOON_TCMG t1;
QUIT;

data WORK.BAS_RBM_PERSOON;
  set WORK.BAS_RBM_PERSOON;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_PERSOON.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Aanhef" 
       ','
          "Aanlevernaam" 
       ','
          "Aanspreeknaam" 
       ','
          "Achternaam" 
       ','
          "Foutmelding" 
       ','
          "Geboortedatum" 
       ','
          "Geslacht" 
       ','
          "Import_contactpersonen_id" 
       ','
          "Notitie" 
       ','
          "Rbm_persoon_contact" 
       ','
          "Rbm_persoon_particulier" 
       ','
          "Rel_id" 
       ','
          "Status_persoon" 
       ','
          "Sushi_foutmelding" 
       ','
          "Taal" 
       ','
          "Titels_na" 
       ','
          "Titels_voor" 
       ','
          "Tussenvoegsels" 
       ','
          "Validatie" 
       ','
          "Voorletters" 
       ','
          "Voornaam" 
       ','
          "XML_String" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_PERSOON   end=EFIEOD; 
       format Aanhef  ;
       format Aanlevernaam  ;
       format Aanspreeknaam  ;
       format Achternaam  ;
       format Foutmelding  ;
       format Geboortedatum B8601DT19. ;
       format Geslacht  ;
       format Import_contactpersonen_id best12. ;
       format Notitie  ;
       format Rbm_persoon_contact  ;
       format Rbm_persoon_particulier  ;
       format Rel_id best12. ;
       format Status_persoon  ;
       format Sushi_foutmelding  ;
       format Taal  ;
       format Titels_na  ;
       format Titels_voor  ;
       format Tussenvoegsels  ;
       format Validatie  ;
       format Voorletters  ;
       format Voornaam  ;
       format XML_String  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Aanhef)
         then put "," @;
         else do;
                 if find(Aanhef,'0A'x) > 0 and 2+klength(Aanhef) = klength(quote(trim(Aanhef)))
                   then put '22'x Aanhef +(-1) '22'x "," @;
                   else put Aanhef @;
              end;
       if missing(Aanlevernaam)
         then put "," @;
         else do;
                 if find(Aanlevernaam,'0A'x) > 0 and 2+klength(Aanlevernaam) = klength(quote(trim(Aanlevernaam)))
                   then put '22'x Aanlevernaam +(-1) '22'x "," @;
                   else put Aanlevernaam @;
              end;
       if missing(Aanspreeknaam)
         then put "," @;
         else do;
                 if find(Aanspreeknaam,'0A'x) > 0 and 2+klength(Aanspreeknaam) = klength(quote(trim(Aanspreeknaam)))
                   then put '22'x Aanspreeknaam +(-1) '22'x "," @;
                   else put Aanspreeknaam @;
              end;
       if missing(Achternaam)
         then put "," @;
         else do;
                 if find(Achternaam,'0A'x) > 0 and 2+klength(Achternaam) = klength(quote(trim(Achternaam)))
                   then put '22'x Achternaam +(-1) '22'x "," @;
                   else put Achternaam @;
              end;
       if missing(Foutmelding)
         then put "," @;
         else do;
                 if find(Foutmelding,'0A'x) > 0 and 2+klength(Foutmelding) = klength(quote(trim(Foutmelding)))
                   then put '22'x Foutmelding +(-1) '22'x "," @;
                   else put Foutmelding @;
              end;
       if missing(Geboortedatum)
         then put "," @;
         else do;
                 if find(Geboortedatum,'0A'x) > 0 and 2+klength(Geboortedatum) = klength(quote(trim(Geboortedatum)))
                   then put '22'x Geboortedatum +(-1) '22'x "," @;
                   else put Geboortedatum @;
              end;
       if missing(Geslacht)
         then put "," @;
         else do;
                 if find(Geslacht,'0A'x) > 0 and 2+klength(Geslacht) = klength(quote(trim(Geslacht)))
                   then put '22'x Geslacht +(-1) '22'x "," @;
                   else put Geslacht @;
              end;
       if missing(Import_contactpersonen_id)
         then put "," @;
         else do;
                 if find(Import_contactpersonen_id,'0A'x) > 0 and 2+klength(Import_contactpersonen_id) = klength(quote(trim(Import_contactpersonen_id)))
                   then put '22'x Import_contactpersonen_id +(-1) '22'x "," @;
                   else put Import_contactpersonen_id @;
              end;
       if missing(Notitie)
         then put "," @;
         else do;
                 if find(Notitie,'0A'x) > 0 and 2+klength(Notitie) = klength(quote(trim(Notitie)))
                   then put '22'x Notitie +(-1) '22'x "," @;
                   else put Notitie @;
              end;
       if missing(Rbm_persoon_contact)
         then put "," @;
         else do;
                 if find(Rbm_persoon_contact,'0A'x) > 0 and 2+klength(Rbm_persoon_contact) = klength(quote(trim(Rbm_persoon_contact)))
                   then put '22'x Rbm_persoon_contact +(-1) '22'x "," @;
                   else put Rbm_persoon_contact @;
              end;
       if missing(Rbm_persoon_particulier)
         then put "," @;
         else do;
                 if find(Rbm_persoon_particulier,'0A'x) > 0 and 2+klength(Rbm_persoon_particulier) = klength(quote(trim(Rbm_persoon_particulier)))
                   then put '22'x Rbm_persoon_particulier +(-1) '22'x "," @;
                   else put Rbm_persoon_particulier @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Status_persoon)
         then put "," @;
         else do;
                 if find(Status_persoon,'0A'x) > 0 and 2+klength(Status_persoon) = klength(quote(trim(Status_persoon)))
                   then put '22'x Status_persoon +(-1) '22'x "," @;
                   else put Status_persoon @;
              end;
       if missing(Sushi_foutmelding)
         then put "," @;
         else do;
                 if find(Sushi_foutmelding,'0A'x) > 0 and 2+klength(Sushi_foutmelding) = klength(quote(trim(Sushi_foutmelding)))
                   then put '22'x Sushi_foutmelding +(-1) '22'x "," @;
                   else put Sushi_foutmelding @;
              end;
       if missing(Taal)
         then put "," @;
         else do;
                 if find(Taal,'0A'x) > 0 and 2+klength(Taal) = klength(quote(trim(Taal)))
                   then put '22'x Taal +(-1) '22'x "," @;
                   else put Taal @;
              end;
       if missing(Titels_na)
         then put "," @;
         else do;
                 if find(Titels_na,'0A'x) > 0 and 2+klength(Titels_na) = klength(quote(trim(Titels_na)))
                   then put '22'x Titels_na +(-1) '22'x "," @;
                   else put Titels_na @;
              end;
       if missing(Titels_voor)
         then put "," @;
         else do;
                 if find(Titels_voor,'0A'x) > 0 and 2+klength(Titels_voor) = klength(quote(trim(Titels_voor)))
                   then put '22'x Titels_voor +(-1) '22'x "," @;
                   else put Titels_voor @;
              end;
       if missing(Tussenvoegsels)
         then put "," @;
         else do;
                 if find(Tussenvoegsels,'0A'x) > 0 and 2+klength(Tussenvoegsels) = klength(quote(trim(Tussenvoegsels)))
                   then put '22'x Tussenvoegsels +(-1) '22'x "," @;
                   else put Tussenvoegsels @;
              end;
       if missing(Validatie)
         then put "," @;
         else do;
                 if find(Validatie,'0A'x) > 0 and 2+klength(Validatie) = klength(quote(trim(Validatie)))
                   then put '22'x Validatie +(-1) '22'x "," @;
                   else put Validatie @;
              end;
       if missing(Voorletters)
         then put "," @;
         else do;
                 if find(Voorletters,'0A'x) > 0 and 2+klength(Voorletters) = klength(quote(trim(Voorletters)))
                   then put '22'x Voorletters +(-1) '22'x "," @;
                   else put Voorletters @;
              end;
       if missing(Voornaam)
         then put "," @;
         else do;
                 if find(Voornaam,'0A'x) > 0 and 2+klength(Voornaam) = klength(quote(trim(Voornaam)))
                   then put '22'x Voornaam +(-1) '22'x "," @;
                   else put Voornaam @;
              end;
       if missing(XML_String)
         then put "," @;
         else do;
                 if find(XML_String,'0A'x) > 0 and 2+klength(XML_String) = klength(quote(trim(XML_String)))
                   then put '22'x XML_String +(-1) '22'x "," @;
                   else put XML_String @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_REKENINGNRS AS
   SELECT t1.Banknaam,
          t1.Bic,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Externe_bron_cd,
          t1.Goedkeuring_sts,
          t1.Iban,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rel_id,
          t1.User_akkoord
     FROM DATAQASG.RBM_REKENINGNRS_TCMG t1;
QUIT;

data WORK.BAS_RBM_REKENINGNRS;
  set WORK.BAS_RBM_REKENINGNRS;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_REKENINGNRS.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Banknaam" 
       ','
          "Bic" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Externe_bron_cd" 
       ','
          "Goedkeuring_sts" 
       ','
          "Iban" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rel_id" 
       ','
          "User_akkoord" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_REKENINGNRS   end=EFIEOD; 
       format Banknaam  ;
       format Bic  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Externe_bron_cd  ;
       format Goedkeuring_sts  ;
       format Iban  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rel_id best12. ;
       format User_akkoord  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Banknaam)
         then put "," @;
         else do;
                 if find(Banknaam,'0A'x) > 0 and 2+klength(Banknaam) = klength(quote(trim(Banknaam)))
                   then put '22'x Banknaam +(-1) '22'x "," @;
                   else put Banknaam @;
              end;
       if missing(Bic)
         then put "," @;
         else do;
                 if find(Bic,'0A'x) > 0 and 2+klength(Bic) = klength(quote(trim(Bic)))
                   then put '22'x Bic +(-1) '22'x "," @;
                   else put Bic @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Externe_bron_cd)
         then put "," @;
         else do;
                 if find(Externe_bron_cd,'0A'x) > 0 and 2+klength(Externe_bron_cd) = klength(quote(trim(Externe_bron_cd)))
                   then put '22'x Externe_bron_cd +(-1) '22'x "," @;
                   else put Externe_bron_cd @;
              end;
       if missing(Goedkeuring_sts)
         then put "," @;
         else do;
                 if find(Goedkeuring_sts,'0A'x) > 0 and 2+klength(Goedkeuring_sts) = klength(quote(trim(Goedkeuring_sts)))
                   then put '22'x Goedkeuring_sts +(-1) '22'x "," @;
                   else put Goedkeuring_sts @;
              end;
       if missing(Iban)
         then put "," @;
         else do;
                 if find(Iban,'0A'x) > 0 and 2+klength(Iban) = klength(quote(trim(Iban)))
                   then put '22'x Iban +(-1) '22'x "," @;
                   else put Iban @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(User_akkoord)
         then put "," @;
         else do;
                 if find(User_akkoord,'0A'x) > 0 and 2+klength(User_akkoord) = klength(quote(trim(User_akkoord)))
                   then put '22'x User_akkoord +(-1) '22'x "," @;
                   else put User_akkoord @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_REKNR_MUT AS
   SELECT t1.Rel_id,
          t1.Volgnummer,
          t1.Org_banknaam,
          t1.Org_bankgironr,
          t1.New_banknaam,
          t1.New_bankgironr,
          t1.Gebruiker,
          t1.Datum_mutatie FORMAT=B8601DT19. AS Datum_mutatie,
          t1.Iban,
          t1.New_iban,
          t1.Bic,
          t1.New_bic,
          t1.Org_user_akkoord,
          t1.New_user_akkoord,
          t1.Org_goedkeuring_sts,
          t1.New_goedkeuring_sts,
          t1.Externe_bron_cd
     FROM DATAQASG.RBM_REKNR_MUT_TCMG t1;
QUIT;

data WORK.BAS_RBM_REKNR_MUT;
  set WORK.BAS_RBM_REKNR_MUT;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_REKNR_MUT.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Rel_id" 
       ','
          "Volgnummer" 
       ','
          "Org_banknaam" 
       ','
          "Org_bankgironr" 
       ','
          "New_banknaam" 
       ','
          "New_bankgironr" 
       ','
          "Gebruiker" 
       ','
          "Datum_mutatie" 
       ','
          "Iban" 
       ','
          "New_iban" 
       ','
          "Bic" 
       ','
          "New_bic" 
       ','
          "Org_user_akkoord" 
       ','
          "New_user_akkoord" 
       ','
          "Org_goedkeuring_sts" 
       ','
          "New_goedkeuring_sts" 
       ','
          "Externe_bron_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_REKNR_MUT   end=EFIEOD; 
       format Rel_id best12. ;
       format Volgnummer best12. ;
       format Org_banknaam  ;
       format Org_bankgironr  ;
       format New_banknaam  ;
       format New_bankgironr  ;
       format Gebruiker  ;
       format Datum_mutatie B8601DT19. ;
       format Iban  ;
       format New_iban  ;
       format Bic  ;
       format New_bic  ;
       format Org_user_akkoord  ;
       format New_user_akkoord  ;
       format Org_goedkeuring_sts  ;
       format New_goedkeuring_sts  ;
       format Externe_bron_cd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Volgnummer)
         then put "," @;
         else do;
                 if find(Volgnummer,'0A'x) > 0 and 2+klength(Volgnummer) = klength(quote(trim(Volgnummer)))
                   then put '22'x Volgnummer +(-1) '22'x "," @;
                   else put Volgnummer @;
              end;
       if missing(Org_banknaam)
         then put "," @;
         else do;
                 if find(Org_banknaam,'0A'x) > 0 and 2+klength(Org_banknaam) = klength(quote(trim(Org_banknaam)))
                   then put '22'x Org_banknaam +(-1) '22'x "," @;
                   else put Org_banknaam @;
              end;
       if missing(Org_bankgironr)
         then put "," @;
         else do;
                 if find(Org_bankgironr,'0A'x) > 0 and 2+klength(Org_bankgironr) = klength(quote(trim(Org_bankgironr)))
                   then put '22'x Org_bankgironr +(-1) '22'x "," @;
                   else put Org_bankgironr @;
              end;
       if missing(New_banknaam)
         then put "," @;
         else do;
                 if find(New_banknaam,'0A'x) > 0 and 2+klength(New_banknaam) = klength(quote(trim(New_banknaam)))
                   then put '22'x New_banknaam +(-1) '22'x "," @;
                   else put New_banknaam @;
              end;
       if missing(New_bankgironr)
         then put "," @;
         else do;
                 if find(New_bankgironr,'0A'x) > 0 and 2+klength(New_bankgironr) = klength(quote(trim(New_bankgironr)))
                   then put '22'x New_bankgironr +(-1) '22'x "," @;
                   else put New_bankgironr @;
              end;
       if missing(Gebruiker)
         then put "," @;
         else do;
                 if find(Gebruiker,'0A'x) > 0 and 2+klength(Gebruiker) = klength(quote(trim(Gebruiker)))
                   then put '22'x Gebruiker +(-1) '22'x "," @;
                   else put Gebruiker @;
              end;
       if missing(Datum_mutatie)
         then put "," @;
         else do;
                 if find(Datum_mutatie,'0A'x) > 0 and 2+klength(Datum_mutatie) = klength(quote(trim(Datum_mutatie)))
                   then put '22'x Datum_mutatie +(-1) '22'x "," @;
                   else put Datum_mutatie @;
              end;
       if missing(Iban)
         then put "," @;
         else do;
                 if find(Iban,'0A'x) > 0 and 2+klength(Iban) = klength(quote(trim(Iban)))
                   then put '22'x Iban +(-1) '22'x "," @;
                   else put Iban @;
              end;
       if missing(New_iban)
         then put "," @;
         else do;
                 if find(New_iban,'0A'x) > 0 and 2+klength(New_iban) = klength(quote(trim(New_iban)))
                   then put '22'x New_iban +(-1) '22'x "," @;
                   else put New_iban @;
              end;
       if missing(Bic)
         then put "," @;
         else do;
                 if find(Bic,'0A'x) > 0 and 2+klength(Bic) = klength(quote(trim(Bic)))
                   then put '22'x Bic +(-1) '22'x "," @;
                   else put Bic @;
              end;
       if missing(New_bic)
         then put "," @;
         else do;
                 if find(New_bic,'0A'x) > 0 and 2+klength(New_bic) = klength(quote(trim(New_bic)))
                   then put '22'x New_bic +(-1) '22'x "," @;
                   else put New_bic @;
              end;
       if missing(Org_user_akkoord)
         then put "," @;
         else do;
                 if find(Org_user_akkoord,'0A'x) > 0 and 2+klength(Org_user_akkoord) = klength(quote(trim(Org_user_akkoord)))
                   then put '22'x Org_user_akkoord +(-1) '22'x "," @;
                   else put Org_user_akkoord @;
              end;
       if missing(New_user_akkoord)
         then put "," @;
         else do;
                 if find(New_user_akkoord,'0A'x) > 0 and 2+klength(New_user_akkoord) = klength(quote(trim(New_user_akkoord)))
                   then put '22'x New_user_akkoord +(-1) '22'x "," @;
                   else put New_user_akkoord @;
              end;
       if missing(Org_goedkeuring_sts)
         then put "," @;
         else do;
                 if find(Org_goedkeuring_sts,'0A'x) > 0 and 2+klength(Org_goedkeuring_sts) = klength(quote(trim(Org_goedkeuring_sts)))
                   then put '22'x Org_goedkeuring_sts +(-1) '22'x "," @;
                   else put Org_goedkeuring_sts @;
              end;
       if missing(New_goedkeuring_sts)
         then put "," @;
         else do;
                 if find(New_goedkeuring_sts,'0A'x) > 0 and 2+klength(New_goedkeuring_sts) = klength(quote(trim(New_goedkeuring_sts)))
                   then put '22'x New_goedkeuring_sts +(-1) '22'x "," @;
                   else put New_goedkeuring_sts @;
              end;
       if missing(Externe_bron_cd)
         then put "," @;
         else do;
                 if find(Externe_bron_cd,'0A'x) > 0 and 2+klength(Externe_bron_cd) = klength(quote(trim(Externe_bron_cd)))
                   then put '22'x Externe_bron_cd +(-1) '22'x "," @;
                   else put Externe_bron_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_RELATIE AS
   SELECT t1.Actief,
          t1.Auth_id,
          t1.Belastingeenheid,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.creatie_user,
          t1.Fiscaalnr,
          t1.IdE_id,
          t1.Invoer_id,
          t1.KR_Gevalideerd,
          t1.Kkr_Relatie_id,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.mutatie_user,
          t1.Rbm_org,
          t1.Rbm_persoon,
          t1.Ref_kkr_relatie_id,
          t1.Rel_id,
          t1.Relatietype
     FROM DATAQASG.RBM_RELATIE_TCMG t1;
QUIT;

data WORK.BAS_RBM_RELATIE;
  set WORK.BAS_RBM_RELATIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_RELATIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Actief" 
       ','
          "Auth_id" 
       ','
          "Belastingeenheid" 
       ','
          "Creatie_dat" 
       ','
          "creatie_user" 
       ','
          "Fiscaalnr" 
       ','
          "IdE_id" 
       ','
          "Invoer_id" 
       ','
          "KR_Gevalideerd" 
       ','
          "Kkr_Relatie_id" 
       ','
          "Mutatie_dat" 
       ','
          "mutatie_user" 
       ','
          "Rbm_org" 
       ','
          "Rbm_persoon" 
       ','
          "Ref_kkr_relatie_id" 
       ','
          "Rel_id" 
       ','
          "Relatietype" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_RELATIE   end=EFIEOD; 
       format Actief  ;
       format Auth_id best12. ;
       format Belastingeenheid best12. ;
       format Creatie_dat B8601DT19. ;
       format creatie_user  ;
       format Fiscaalnr  ;
       format IdE_id best12. ;
       format Invoer_id best12. ;
       format KR_Gevalideerd  ;
       format Kkr_Relatie_id  ;
       format Mutatie_dat B8601DT19. ;
       format mutatie_user  ;
       format Rbm_org  ;
       format Rbm_persoon  ;
       format Ref_kkr_relatie_id  ;
       format Rel_id best12. ;
       format Relatietype  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Actief)
         then put "," @;
         else do;
                 if find(Actief,'0A'x) > 0 and 2+klength(Actief) = klength(quote(trim(Actief)))
                   then put '22'x Actief +(-1) '22'x "," @;
                   else put Actief @;
              end;
       if missing(Auth_id)
         then put "," @;
         else do;
                 if find(Auth_id,'0A'x) > 0 and 2+klength(Auth_id) = klength(quote(trim(Auth_id)))
                   then put '22'x Auth_id +(-1) '22'x "," @;
                   else put Auth_id @;
              end;
       if missing(Belastingeenheid)
         then put "," @;
         else do;
                 if find(Belastingeenheid,'0A'x) > 0 and 2+klength(Belastingeenheid) = klength(quote(trim(Belastingeenheid)))
                   then put '22'x Belastingeenheid +(-1) '22'x "," @;
                   else put Belastingeenheid @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(creatie_user)
         then put "," @;
         else do;
                 if find(creatie_user,'0A'x) > 0 and 2+klength(creatie_user) = klength(quote(trim(creatie_user)))
                   then put '22'x creatie_user +(-1) '22'x "," @;
                   else put creatie_user @;
              end;
       if missing(Fiscaalnr)
         then put "," @;
         else do;
                 if find(Fiscaalnr,'0A'x) > 0 and 2+klength(Fiscaalnr) = klength(quote(trim(Fiscaalnr)))
                   then put '22'x Fiscaalnr +(-1) '22'x "," @;
                   else put Fiscaalnr @;
              end;
       if missing(IdE_id)
         then put "," @;
         else do;
                 if find(IdE_id,'0A'x) > 0 and 2+klength(IdE_id) = klength(quote(trim(IdE_id)))
                   then put '22'x IdE_id +(-1) '22'x "," @;
                   else put IdE_id @;
              end;
       if missing(Invoer_id)
         then put "," @;
         else do;
                 if find(Invoer_id,'0A'x) > 0 and 2+klength(Invoer_id) = klength(quote(trim(Invoer_id)))
                   then put '22'x Invoer_id +(-1) '22'x "," @;
                   else put Invoer_id @;
              end;
       if missing(KR_Gevalideerd)
         then put "," @;
         else do;
                 if find(KR_Gevalideerd,'0A'x) > 0 and 2+klength(KR_Gevalideerd) = klength(quote(trim(KR_Gevalideerd)))
                   then put '22'x KR_Gevalideerd +(-1) '22'x "," @;
                   else put KR_Gevalideerd @;
              end;
       if missing(Kkr_Relatie_id)
         then put "," @;
         else do;
                 if find(Kkr_Relatie_id,'0A'x) > 0 and 2+klength(Kkr_Relatie_id) = klength(quote(trim(Kkr_Relatie_id)))
                   then put '22'x Kkr_Relatie_id +(-1) '22'x "," @;
                   else put Kkr_Relatie_id @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(mutatie_user)
         then put "," @;
         else do;
                 if find(mutatie_user,'0A'x) > 0 and 2+klength(mutatie_user) = klength(quote(trim(mutatie_user)))
                   then put '22'x mutatie_user +(-1) '22'x "," @;
                   else put mutatie_user @;
              end;
       if missing(Rbm_org)
         then put "," @;
         else do;
                 if find(Rbm_org,'0A'x) > 0 and 2+klength(Rbm_org) = klength(quote(trim(Rbm_org)))
                   then put '22'x Rbm_org +(-1) '22'x "," @;
                   else put Rbm_org @;
              end;
       if missing(Rbm_persoon)
         then put "," @;
         else do;
                 if find(Rbm_persoon,'0A'x) > 0 and 2+klength(Rbm_persoon) = klength(quote(trim(Rbm_persoon)))
                   then put '22'x Rbm_persoon +(-1) '22'x "," @;
                   else put Rbm_persoon @;
              end;
       if missing(Ref_kkr_relatie_id)
         then put "," @;
         else do;
                 if find(Ref_kkr_relatie_id,'0A'x) > 0 and 2+klength(Ref_kkr_relatie_id) = klength(quote(trim(Ref_kkr_relatie_id)))
                   then put '22'x Ref_kkr_relatie_id +(-1) '22'x "," @;
                   else put Ref_kkr_relatie_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Relatietype)
         then put "," @;
         else do;
                 if find(Relatietype,'0A'x) > 0 and 2+klength(Relatietype) = klength(quote(trim(Relatietype)))
                   then put '22'x Relatietype +(-1) '22'x "," @;
                   else put Relatietype @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_SBI_ORG AS
   SELECT t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Hoofdactiviteit,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Rel_id,
          t1.Sbi_cd
     FROM DATAQASG.RBM_SBI_ORG_TCMG t1;
QUIT;

data WORK.BAS_RBM_SBI_ORG;
  set WORK.BAS_RBM_SBI_ORG;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_SBI_ORG.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Hoofdactiviteit" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Rel_id" 
       ','
          "Sbi_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_SBI_ORG   end=EFIEOD; 
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Hoofdactiviteit  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Rel_id best12. ;
       format Sbi_cd best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Hoofdactiviteit)
         then put "," @;
         else do;
                 if find(Hoofdactiviteit,'0A'x) > 0 and 2+klength(Hoofdactiviteit) = klength(quote(trim(Hoofdactiviteit)))
                   then put '22'x Hoofdactiviteit +(-1) '22'x "," @;
                   else put Hoofdactiviteit @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Sbi_cd)
         then put "," @;
         else do;
                 if find(Sbi_cd,'0A'x) > 0 and 2+klength(Sbi_cd) = klength(quote(trim(Sbi_cd)))
                   then put '22'x Sbi_cd +(-1) '22'x "," @;
                   else put Sbi_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RBM_VESTIGING AS
   SELECT t1.Actief,
          t1.Auth_id,
          t1.Bik_cd,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Hoofd_neven,
          t1.Kkr_conversie,
          t1.Kkr_gevalideerd,
          t1.Kkr_gevonden,
          t1.Kkr_relatie_id,
          t1.Kkr_verversingsdatum FORMAT=B8601DT19. AS Kkr_verversingsdatum,
          t1.KvK_volgnr,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Ref_Kkr_relatie_id,
          t1.Rel_id,
          t1.Vest_naam,
          t1.Vestigings_nummer,
          t1.Vst_volgnr
     FROM DATAQASG.RBM_VESTIGING_TCMG t1;
QUIT;

data WORK.BAS_RBM_VESTIGING;
  set WORK.BAS_RBM_VESTIGING;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_VESTIGING.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Actief" 
       ','
          "Auth_id" 
       ','
          "Bik_cd" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Hoofd_neven" 
       ','
          "Kkr_conversie" 
       ','
          "Kkr_gevalideerd" 
       ','
          "Kkr_gevonden" 
       ','
          "Kkr_relatie_id" 
       ','
          "Kkr_verversingsdatum" 
       ','
          "KvK_volgnr" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Ref_Kkr_relatie_id" 
       ','
          "Rel_id" 
       ','
          "Vest_naam" 
       ','
          "Vestigings_nummer" 
       ','
          "Vst_volgnr" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RBM_VESTIGING   end=EFIEOD; 
       format Actief  ;
       format Auth_id best12. ;
       format Bik_cd  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Hoofd_neven  ;
       format Kkr_conversie  ;
       format Kkr_gevalideerd  ;
       format Kkr_gevonden  ;
       format Kkr_relatie_id  ;
       format Kkr_verversingsdatum B8601DT19. ;
       format KvK_volgnr  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Ref_Kkr_relatie_id  ;
       format Rel_id best12. ;
       format Vest_naam  ;
       format Vestigings_nummer  ;
       format Vst_volgnr best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Actief)
         then put "," @;
         else do;
                 if find(Actief,'0A'x) > 0 and 2+klength(Actief) = klength(quote(trim(Actief)))
                   then put '22'x Actief +(-1) '22'x "," @;
                   else put Actief @;
              end;
       if missing(Auth_id)
         then put "," @;
         else do;
                 if find(Auth_id,'0A'x) > 0 and 2+klength(Auth_id) = klength(quote(trim(Auth_id)))
                   then put '22'x Auth_id +(-1) '22'x "," @;
                   else put Auth_id @;
              end;
       if missing(Bik_cd)
         then put "," @;
         else do;
                 if find(Bik_cd,'0A'x) > 0 and 2+klength(Bik_cd) = klength(quote(trim(Bik_cd)))
                   then put '22'x Bik_cd +(-1) '22'x "," @;
                   else put Bik_cd @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Hoofd_neven)
         then put "," @;
         else do;
                 if find(Hoofd_neven,'0A'x) > 0 and 2+klength(Hoofd_neven) = klength(quote(trim(Hoofd_neven)))
                   then put '22'x Hoofd_neven +(-1) '22'x "," @;
                   else put Hoofd_neven @;
              end;
       if missing(Kkr_conversie)
         then put "," @;
         else do;
                 if find(Kkr_conversie,'0A'x) > 0 and 2+klength(Kkr_conversie) = klength(quote(trim(Kkr_conversie)))
                   then put '22'x Kkr_conversie +(-1) '22'x "," @;
                   else put Kkr_conversie @;
              end;
       if missing(Kkr_gevalideerd)
         then put "," @;
         else do;
                 if find(Kkr_gevalideerd,'0A'x) > 0 and 2+klength(Kkr_gevalideerd) = klength(quote(trim(Kkr_gevalideerd)))
                   then put '22'x Kkr_gevalideerd +(-1) '22'x "," @;
                   else put Kkr_gevalideerd @;
              end;
       if missing(Kkr_gevonden)
         then put "," @;
         else do;
                 if find(Kkr_gevonden,'0A'x) > 0 and 2+klength(Kkr_gevonden) = klength(quote(trim(Kkr_gevonden)))
                   then put '22'x Kkr_gevonden +(-1) '22'x "," @;
                   else put Kkr_gevonden @;
              end;
       if missing(Kkr_relatie_id)
         then put "," @;
         else do;
                 if find(Kkr_relatie_id,'0A'x) > 0 and 2+klength(Kkr_relatie_id) = klength(quote(trim(Kkr_relatie_id)))
                   then put '22'x Kkr_relatie_id +(-1) '22'x "," @;
                   else put Kkr_relatie_id @;
              end;
       if missing(Kkr_verversingsdatum)
         then put "," @;
         else do;
                 if find(Kkr_verversingsdatum,'0A'x) > 0 and 2+klength(Kkr_verversingsdatum) = klength(quote(trim(Kkr_verversingsdatum)))
                   then put '22'x Kkr_verversingsdatum +(-1) '22'x "," @;
                   else put Kkr_verversingsdatum @;
              end;
       if missing(KvK_volgnr)
         then put "," @;
         else do;
                 if find(KvK_volgnr,'0A'x) > 0 and 2+klength(KvK_volgnr) = klength(quote(trim(KvK_volgnr)))
                   then put '22'x KvK_volgnr +(-1) '22'x "," @;
                   else put KvK_volgnr @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Ref_Kkr_relatie_id)
         then put "," @;
         else do;
                 if find(Ref_Kkr_relatie_id,'0A'x) > 0 and 2+klength(Ref_Kkr_relatie_id) = klength(quote(trim(Ref_Kkr_relatie_id)))
                   then put '22'x Ref_Kkr_relatie_id +(-1) '22'x "," @;
                   else put Ref_Kkr_relatie_id @;
              end;
       if missing(Rel_id)
         then put "," @;
         else do;
                 if find(Rel_id,'0A'x) > 0 and 2+klength(Rel_id) = klength(quote(trim(Rel_id)))
                   then put '22'x Rel_id +(-1) '22'x "," @;
                   else put Rel_id @;
              end;
       if missing(Vest_naam)
         then put "," @;
         else do;
                 if find(Vest_naam,'0A'x) > 0 and 2+klength(Vest_naam) = klength(quote(trim(Vest_naam)))
                   then put '22'x Vest_naam +(-1) '22'x "," @;
                   else put Vest_naam @;
              end;
       if missing(Vestigings_nummer)
         then put "," @;
         else do;
                 if find(Vestigings_nummer,'0A'x) > 0 and 2+klength(Vestigings_nummer) = klength(quote(trim(Vestigings_nummer)))
                   then put '22'x Vestigings_nummer +(-1) '22'x "," @;
                   else put Vestigings_nummer @;
              end;
       if missing(Vst_volgnr)
         then put "," @;
         else do;
                 if find(Vst_volgnr,'0A'x) > 0 and 2+klength(Vst_volgnr) = klength(quote(trim(Vst_volgnr)))
                   then put '22'x Vst_volgnr +(-1) '22'x "," @;
                   else put Vst_volgnr @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_BUDGETONDERVERDELING AS
   SELECT t1.Bgt_cd,
          t1.Budget,
          t1.Budget_uitputting,
          t1.Correctie_budget,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Jaar,
          t1.Koppelen_jn,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Ovk_nr,
          t1.Reg_id,
          t1.Rpe_datum_van FORMAT=B8601DT19. AS Rpe_datum_van,
          t1.Rpt_nr,
          t1.Verdeeld_budget,
          t1.Vrij_budget
     FROM DATAQASG.RDM_BUDGETONDERVERDELING_TCMG t1;
QUIT;

data WORK.BAS_RDM_BUDGETONDERVERDELING;
  set WORK.BAS_RDM_BUDGETONDERVERDELING;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_BUDGETONDERVERDELING.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Bgt_cd" 
       ','
          "Budget" 
       ','
          "Budget_uitputting" 
       ','
          "Correctie_budget" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Jaar" 
       ','
          "Koppelen_jn" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Ovk_nr" 
       ','
          "Reg_id" 
       ','
          "Rpe_datum_van" 
       ','
          "Rpt_nr" 
       ','
          "Verdeeld_budget" 
       ','
          "Vrij_budget" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_BUDGETONDERVERDELING   end=EFIEOD; 
       format Bgt_cd  ;
       format Budget best12. ;
       format Budget_uitputting best12. ;
       format Correctie_budget best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Jaar best12. ;
       format Koppelen_jn  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Ovk_nr  ;
       format Reg_id best12. ;
       format Rpe_datum_van B8601DT19. ;
       format Rpt_nr best12. ;
       format Verdeeld_budget best12. ;
       format Vrij_budget best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Bgt_cd)
         then put "," @;
         else do;
                 if find(Bgt_cd,'0A'x) > 0 and 2+klength(Bgt_cd) = klength(quote(trim(Bgt_cd)))
                   then put '22'x Bgt_cd +(-1) '22'x "," @;
                   else put Bgt_cd @;
              end;
       if missing(Budget)
         then put "," @;
         else do;
                 if find(Budget,'0A'x) > 0 and 2+klength(Budget) = klength(quote(trim(Budget)))
                   then put '22'x Budget +(-1) '22'x "," @;
                   else put Budget @;
              end;
       if missing(Budget_uitputting)
         then put "," @;
         else do;
                 if find(Budget_uitputting,'0A'x) > 0 and 2+klength(Budget_uitputting) = klength(quote(trim(Budget_uitputting)))
                   then put '22'x Budget_uitputting +(-1) '22'x "," @;
                   else put Budget_uitputting @;
              end;
       if missing(Correctie_budget)
         then put "," @;
         else do;
                 if find(Correctie_budget,'0A'x) > 0 and 2+klength(Correctie_budget) = klength(quote(trim(Correctie_budget)))
                   then put '22'x Correctie_budget +(-1) '22'x "," @;
                   else put Correctie_budget @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Koppelen_jn)
         then put "," @;
         else do;
                 if find(Koppelen_jn,'0A'x) > 0 and 2+klength(Koppelen_jn) = klength(quote(trim(Koppelen_jn)))
                   then put '22'x Koppelen_jn +(-1) '22'x "," @;
                   else put Koppelen_jn @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Ovk_nr)
         then put "," @;
         else do;
                 if find(Ovk_nr,'0A'x) > 0 and 2+klength(Ovk_nr) = klength(quote(trim(Ovk_nr)))
                   then put '22'x Ovk_nr +(-1) '22'x "," @;
                   else put Ovk_nr @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Rpe_datum_van)
         then put "," @;
         else do;
                 if find(Rpe_datum_van,'0A'x) > 0 and 2+klength(Rpe_datum_van) = klength(quote(trim(Rpe_datum_van)))
                   then put '22'x Rpe_datum_van +(-1) '22'x "," @;
                   else put Rpe_datum_van @;
              end;
       if missing(Rpt_nr)
         then put "," @;
         else do;
                 if find(Rpt_nr,'0A'x) > 0 and 2+klength(Rpt_nr) = klength(quote(trim(Rpt_nr)))
                   then put '22'x Rpt_nr +(-1) '22'x "," @;
                   else put Rpt_nr @;
              end;
       if missing(Verdeeld_budget)
         then put "," @;
         else do;
                 if find(Verdeeld_budget,'0A'x) > 0 and 2+klength(Verdeeld_budget) = klength(quote(trim(Verdeeld_budget)))
                   then put '22'x Verdeeld_budget +(-1) '22'x "," @;
                   else put Verdeeld_budget @;
              end;
       if missing(Vrij_budget)
         then put "," @;
         else do;
                 if find(Vrij_budget,'0A'x) > 0 and 2+klength(Vrij_budget) = klength(quote(trim(Vrij_budget)))
                   then put '22'x Vrij_budget +(-1) '22'x "," @;
                   else put Vrij_budget @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_CLASSIFICATIE AS
   SELECT t1.Prg_id,
          t1.Class_cd,
          t1.Class_oms,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.RDM_CLASSIFICATIE_TCMG t1;
QUIT;

data WORK.BAS_RDM_CLASSIFICATIE;
  set WORK.BAS_RDM_CLASSIFICATIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_CLASSIFICATIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Prg_id" 
       ','
          "Class_cd" 
       ','
          "Class_oms" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_CLASSIFICATIE   end=EFIEOD; 
       format Prg_id best12. ;
       format Class_cd  ;
       format Class_oms  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Class_cd)
         then put "," @;
         else do;
                 if find(Class_cd,'0A'x) > 0 and 2+klength(Class_cd) = klength(quote(trim(Class_cd)))
                   then put '22'x Class_cd +(-1) '22'x "," @;
                   else put Class_cd @;
              end;
       if missing(Class_oms)
         then put "," @;
         else do;
                 if find(Class_oms,'0A'x) > 0 and 2+klength(Class_oms) = klength(quote(trim(Class_oms)))
                   then put '22'x Class_oms +(-1) '22'x "," @;
                   else put Class_oms @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_JAARBUDGET AS
   SELECT t1.Afgesloten,
          t1.Bgt_cd,
          t1.Budget_uitputting,
          t1.Correctie_budget,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Datum_van FORMAT=B8601DT19. AS Datum_van,
          t1.Jaar,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Ovk_nr,
          t1.Rpt_nr,
          t1.Tot_budget,
          t1.Verdeeld_budget,
          t1.Verdeeld_jn,
          t1.Vrij_budget
     FROM DATAQASG.RDM_JAARBUDGET_TCMG t1;
QUIT;

data WORK.BAS_RDM_JAARBUDGET;
  set WORK.BAS_RDM_JAARBUDGET;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_JAARBUDGET.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Afgesloten" 
       ','
          "Bgt_cd" 
       ','
          "Budget_uitputting" 
       ','
          "Correctie_budget" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Datum_van" 
       ','
          "Jaar" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Ovk_nr" 
       ','
          "Rpt_nr" 
       ','
          "Tot_budget" 
       ','
          "Verdeeld_budget" 
       ','
          "Verdeeld_jn" 
       ','
          "Vrij_budget" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_JAARBUDGET   end=EFIEOD; 
       format Afgesloten  ;
       format Bgt_cd  ;
       format Budget_uitputting best12. ;
       format Correctie_budget best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Datum_van B8601DT19. ;
       format Jaar best12. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Ovk_nr  ;
       format Rpt_nr best12. ;
       format Tot_budget best12. ;
       format Verdeeld_budget best12. ;
       format Verdeeld_jn  ;
       format Vrij_budget best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Afgesloten)
         then put "," @;
         else do;
                 if find(Afgesloten,'0A'x) > 0 and 2+klength(Afgesloten) = klength(quote(trim(Afgesloten)))
                   then put '22'x Afgesloten +(-1) '22'x "," @;
                   else put Afgesloten @;
              end;
       if missing(Bgt_cd)
         then put "," @;
         else do;
                 if find(Bgt_cd,'0A'x) > 0 and 2+klength(Bgt_cd) = klength(quote(trim(Bgt_cd)))
                   then put '22'x Bgt_cd +(-1) '22'x "," @;
                   else put Bgt_cd @;
              end;
       if missing(Budget_uitputting)
         then put "," @;
         else do;
                 if find(Budget_uitputting,'0A'x) > 0 and 2+klength(Budget_uitputting) = klength(quote(trim(Budget_uitputting)))
                   then put '22'x Budget_uitputting +(-1) '22'x "," @;
                   else put Budget_uitputting @;
              end;
       if missing(Correctie_budget)
         then put "," @;
         else do;
                 if find(Correctie_budget,'0A'x) > 0 and 2+klength(Correctie_budget) = klength(quote(trim(Correctie_budget)))
                   then put '22'x Correctie_budget +(-1) '22'x "," @;
                   else put Correctie_budget @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Datum_van)
         then put "," @;
         else do;
                 if find(Datum_van,'0A'x) > 0 and 2+klength(Datum_van) = klength(quote(trim(Datum_van)))
                   then put '22'x Datum_van +(-1) '22'x "," @;
                   else put Datum_van @;
              end;
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Ovk_nr)
         then put "," @;
         else do;
                 if find(Ovk_nr,'0A'x) > 0 and 2+klength(Ovk_nr) = klength(quote(trim(Ovk_nr)))
                   then put '22'x Ovk_nr +(-1) '22'x "," @;
                   else put Ovk_nr @;
              end;
       if missing(Rpt_nr)
         then put "," @;
         else do;
                 if find(Rpt_nr,'0A'x) > 0 and 2+klength(Rpt_nr) = klength(quote(trim(Rpt_nr)))
                   then put '22'x Rpt_nr +(-1) '22'x "," @;
                   else put Rpt_nr @;
              end;
       if missing(Tot_budget)
         then put "," @;
         else do;
                 if find(Tot_budget,'0A'x) > 0 and 2+klength(Tot_budget) = klength(quote(trim(Tot_budget)))
                   then put '22'x Tot_budget +(-1) '22'x "," @;
                   else put Tot_budget @;
              end;
       if missing(Verdeeld_budget)
         then put "," @;
         else do;
                 if find(Verdeeld_budget,'0A'x) > 0 and 2+klength(Verdeeld_budget) = klength(quote(trim(Verdeeld_budget)))
                   then put '22'x Verdeeld_budget +(-1) '22'x "," @;
                   else put Verdeeld_budget @;
              end;
       if missing(Verdeeld_jn)
         then put "," @;
         else do;
                 if find(Verdeeld_jn,'0A'x) > 0 and 2+klength(Verdeeld_jn) = klength(quote(trim(Verdeeld_jn)))
                   then put '22'x Verdeeld_jn +(-1) '22'x "," @;
                   else put Verdeeld_jn @;
              end;
       if missing(Vrij_budget)
         then put "," @;
         else do;
                 if find(Vrij_budget,'0A'x) > 0 and 2+klength(Vrij_budget) = klength(quote(trim(Vrij_budget)))
                   then put '22'x Vrij_budget +(-1) '22'x "," @;
                   else put Vrij_budget @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_MANDAAT AS
   SELECT t1.Mdt_id,
          t1.Middelen_type,
          t1.Mandaat_srt,
          t1.Max_bedrag,
          t1.Rdm_mandaat_rol,
          t1.Rdm_mandaat_mdw,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mdw_id,
          t1.Reg_id,
          t1.Rol_cd
     FROM DATAQASG.RDM_MANDAAT_TCMG t1;
QUIT;

data WORK.BAS_RDM_MANDAAT;
  set WORK.BAS_RDM_MANDAAT;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_MANDAAT.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Mdt_id" 
       ','
          "Middelen_type" 
       ','
          "Mandaat_srt" 
       ','
          "Max_bedrag" 
       ','
          "Rdm_mandaat_rol" 
       ','
          "Rdm_mandaat_mdw" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mdw_id" 
       ','
          "Reg_id" 
       ','
          "Rol_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_MANDAAT   end=EFIEOD; 
       format Mdt_id best12. ;
       format Middelen_type  ;
       format Mandaat_srt  ;
       format Max_bedrag best12. ;
       format Rdm_mandaat_rol  ;
       format Rdm_mandaat_mdw  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mdw_id best12. ;
       format Reg_id best12. ;
       format Rol_cd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Mdt_id)
         then put "," @;
         else do;
                 if find(Mdt_id,'0A'x) > 0 and 2+klength(Mdt_id) = klength(quote(trim(Mdt_id)))
                   then put '22'x Mdt_id +(-1) '22'x "," @;
                   else put Mdt_id @;
              end;
       if missing(Middelen_type)
         then put "," @;
         else do;
                 if find(Middelen_type,'0A'x) > 0 and 2+klength(Middelen_type) = klength(quote(trim(Middelen_type)))
                   then put '22'x Middelen_type +(-1) '22'x "," @;
                   else put Middelen_type @;
              end;
       if missing(Mandaat_srt)
         then put "," @;
         else do;
                 if find(Mandaat_srt,'0A'x) > 0 and 2+klength(Mandaat_srt) = klength(quote(trim(Mandaat_srt)))
                   then put '22'x Mandaat_srt +(-1) '22'x "," @;
                   else put Mandaat_srt @;
              end;
       if missing(Max_bedrag)
         then put "," @;
         else do;
                 if find(Max_bedrag,'0A'x) > 0 and 2+klength(Max_bedrag) = klength(quote(trim(Max_bedrag)))
                   then put '22'x Max_bedrag +(-1) '22'x "," @;
                   else put Max_bedrag @;
              end;
       if missing(Rdm_mandaat_rol)
         then put "," @;
         else do;
                 if find(Rdm_mandaat_rol,'0A'x) > 0 and 2+klength(Rdm_mandaat_rol) = klength(quote(trim(Rdm_mandaat_rol)))
                   then put '22'x Rdm_mandaat_rol +(-1) '22'x "," @;
                   else put Rdm_mandaat_rol @;
              end;
       if missing(Rdm_mandaat_mdw)
         then put "," @;
         else do;
                 if find(Rdm_mandaat_mdw,'0A'x) > 0 and 2+klength(Rdm_mandaat_mdw) = klength(quote(trim(Rdm_mandaat_mdw)))
                   then put '22'x Rdm_mandaat_mdw +(-1) '22'x "," @;
                   else put Rdm_mandaat_mdw @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_OVEREENKOMST_DOCUMENT AS
   SELECT t1.Ovk_nr,
          t1.Doc_naam,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Bgt_cd,
          t1.Rpt_nr,
          t1.Datum_van FORMAT=B8601DT19. AS Datum_van
     FROM DATAQASG.RDM_OVEREENKOMST_DOCUMENT_TCMG t1;
QUIT;

data WORK.BAS_RDM_OVEREENKOMST_DOCUMENT;
  set WORK.BAS_RDM_OVEREENKOMST_DOCUMENT;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_OVEREENKOMST_DOCUMENT.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Ovk_nr" 
       ','
          "Doc_naam" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Bgt_cd" 
       ','
          "Rpt_nr" 
       ','
          "Datum_van" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_OVEREENKOMST_DOCUMENT   end=EFIEOD; 
       format Ovk_nr  ;
       format Doc_naam  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Bgt_cd  ;
       format Rpt_nr best12. ;
       format Datum_van B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Ovk_nr)
         then put "," @;
         else do;
                 if find(Ovk_nr,'0A'x) > 0 and 2+klength(Ovk_nr) = klength(quote(trim(Ovk_nr)))
                   then put '22'x Ovk_nr +(-1) '22'x "," @;
                   else put Ovk_nr @;
              end;
       if missing(Doc_naam)
         then put "," @;
         else do;
                 if find(Doc_naam,'0A'x) > 0 and 2+klength(Doc_naam) = klength(quote(trim(Doc_naam)))
                   then put '22'x Doc_naam +(-1) '22'x "," @;
                   else put Doc_naam @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Bgt_cd)
         then put "," @;
         else do;
                 if find(Bgt_cd,'0A'x) > 0 and 2+klength(Bgt_cd) = klength(quote(trim(Bgt_cd)))
                   then put '22'x Bgt_cd +(-1) '22'x "," @;
                   else put Bgt_cd @;
              end;
       if missing(Rpt_nr)
         then put "," @;
         else do;
                 if find(Rpt_nr,'0A'x) > 0 and 2+klength(Rpt_nr) = klength(quote(trim(Rpt_nr)))
                   then put '22'x Rpt_nr +(-1) '22'x "," @;
                   else put Rpt_nr @;
              end;
       if missing(Datum_van)
         then put "," @;
         else do;
                 if find(Datum_van,'0A'x) > 0 and 2+klength(Datum_van) = klength(quote(trim(Datum_van)))
                   then put '22'x Datum_van +(-1) '22'x "," @;
                   else put Datum_van @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_PERIODE AS
   SELECT t1.Ovk_nr,
          t1.Rpt_nr,
          t1.Bgt_cd,
          t1.Datum_van FORMAT=B8601DT19. AS Datum_van,
          t1.Datum_tot FORMAT=B8601DT19. AS Datum_tot,
          t1.Kopieer_periode,
          t1.Auto_sap_jn,
          t1.Comm_rente_pct,
          t1.Beschik_datum FORMAT=B8601DT19. AS Beschik_datum,
          t1.Tot_budget,
          t1.Verdeeld_budget,
          t1.Omschrijving,
          t1.Prg_cd,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Bdg_verdelen_100_pct_dp,
          t1.Bdg_verdelen_100_pct_th,
          t1.Iban,
          t1.Bic,
          t1.Imvb,
          t1.Correctie_code,
          t1.Auto_oracle,
          t1.Boeking,
          t1.Fin_soort,
          t1.Kenmerk_lijn,
          t1.Aflossing
     FROM DATAQASG.RDM_PERIODE_TCMG t1;
QUIT;

data WORK.BAS_RDM_PERIODE;
  set WORK.BAS_RDM_PERIODE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_PERIODE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Ovk_nr" 
       ','
          "Rpt_nr" 
       ','
          "Bgt_cd" 
       ','
          "Datum_van" 
       ','
          "Datum_tot" 
       ','
          "Kopieer_periode" 
       ','
          "Auto_sap_jn" 
       ','
          "Comm_rente_pct" 
       ','
          "Beschik_datum" 
       ','
          "Tot_budget" 
       ','
          "Verdeeld_budget" 
       ','
          "Omschrijving" 
       ','
          "Prg_cd" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Bdg_verdelen_100_pct_dp" 
       ','
          "Bdg_verdelen_100_pct_th" 
       ','
          "Iban" 
       ','
          "Bic" 
       ','
          "Imvb" 
       ','
          "Correctie_code" 
       ','
          "Auto_oracle" 
       ','
          "Boeking" 
       ','
          "Fin_soort" 
       ','
          "Kenmerk_lijn" 
       ','
          "Aflossing" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_PERIODE   end=EFIEOD; 
       format Ovk_nr  ;
       format Rpt_nr best12. ;
       format Bgt_cd  ;
       format Datum_van B8601DT19. ;
       format Datum_tot B8601DT19. ;
       format Kopieer_periode  ;
       format Auto_sap_jn  ;
       format Comm_rente_pct best12. ;
       format Beschik_datum B8601DT19. ;
       format Tot_budget best12. ;
       format Verdeeld_budget best12. ;
       format Omschrijving  ;
       format Prg_cd  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Bdg_verdelen_100_pct_dp  ;
       format Bdg_verdelen_100_pct_th  ;
       format Iban  ;
       format Bic  ;
       format Imvb best12. ;
       format Correctie_code  ;
       format Auto_oracle  ;
       format Boeking  ;
       format Fin_soort  ;
       format Kenmerk_lijn  ;
       format Aflossing best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Ovk_nr)
         then put "," @;
         else do;
                 if find(Ovk_nr,'0A'x) > 0 and 2+klength(Ovk_nr) = klength(quote(trim(Ovk_nr)))
                   then put '22'x Ovk_nr +(-1) '22'x "," @;
                   else put Ovk_nr @;
              end;
       if missing(Rpt_nr)
         then put "," @;
         else do;
                 if find(Rpt_nr,'0A'x) > 0 and 2+klength(Rpt_nr) = klength(quote(trim(Rpt_nr)))
                   then put '22'x Rpt_nr +(-1) '22'x "," @;
                   else put Rpt_nr @;
              end;
       if missing(Bgt_cd)
         then put "," @;
         else do;
                 if find(Bgt_cd,'0A'x) > 0 and 2+klength(Bgt_cd) = klength(quote(trim(Bgt_cd)))
                   then put '22'x Bgt_cd +(-1) '22'x "," @;
                   else put Bgt_cd @;
              end;
       if missing(Datum_van)
         then put "," @;
         else do;
                 if find(Datum_van,'0A'x) > 0 and 2+klength(Datum_van) = klength(quote(trim(Datum_van)))
                   then put '22'x Datum_van +(-1) '22'x "," @;
                   else put Datum_van @;
              end;
       if missing(Datum_tot)
         then put "," @;
         else do;
                 if find(Datum_tot,'0A'x) > 0 and 2+klength(Datum_tot) = klength(quote(trim(Datum_tot)))
                   then put '22'x Datum_tot +(-1) '22'x "," @;
                   else put Datum_tot @;
              end;
       if missing(Kopieer_periode)
         then put "," @;
         else do;
                 if find(Kopieer_periode,'0A'x) > 0 and 2+klength(Kopieer_periode) = klength(quote(trim(Kopieer_periode)))
                   then put '22'x Kopieer_periode +(-1) '22'x "," @;
                   else put Kopieer_periode @;
              end;
       if missing(Auto_sap_jn)
         then put "," @;
         else do;
                 if find(Auto_sap_jn,'0A'x) > 0 and 2+klength(Auto_sap_jn) = klength(quote(trim(Auto_sap_jn)))
                   then put '22'x Auto_sap_jn +(-1) '22'x "," @;
                   else put Auto_sap_jn @;
              end;
       if missing(Comm_rente_pct)
         then put "," @;
         else do;
                 if find(Comm_rente_pct,'0A'x) > 0 and 2+klength(Comm_rente_pct) = klength(quote(trim(Comm_rente_pct)))
                   then put '22'x Comm_rente_pct +(-1) '22'x "," @;
                   else put Comm_rente_pct @;
              end;
       if missing(Beschik_datum)
         then put "," @;
         else do;
                 if find(Beschik_datum,'0A'x) > 0 and 2+klength(Beschik_datum) = klength(quote(trim(Beschik_datum)))
                   then put '22'x Beschik_datum +(-1) '22'x "," @;
                   else put Beschik_datum @;
              end;
       if missing(Tot_budget)
         then put "," @;
         else do;
                 if find(Tot_budget,'0A'x) > 0 and 2+klength(Tot_budget) = klength(quote(trim(Tot_budget)))
                   then put '22'x Tot_budget +(-1) '22'x "," @;
                   else put Tot_budget @;
              end;
       if missing(Verdeeld_budget)
         then put "," @;
         else do;
                 if find(Verdeeld_budget,'0A'x) > 0 and 2+klength(Verdeeld_budget) = klength(quote(trim(Verdeeld_budget)))
                   then put '22'x Verdeeld_budget +(-1) '22'x "," @;
                   else put Verdeeld_budget @;
              end;
       if missing(Omschrijving)
         then put "," @;
         else do;
                 if find(Omschrijving,'0A'x) > 0 and 2+klength(Omschrijving) = klength(quote(trim(Omschrijving)))
                   then put '22'x Omschrijving +(-1) '22'x "," @;
                   else put Omschrijving @;
              end;
       if missing(Prg_cd)
         then put "," @;
         else do;
                 if find(Prg_cd,'0A'x) > 0 and 2+klength(Prg_cd) = klength(quote(trim(Prg_cd)))
                   then put '22'x Prg_cd +(-1) '22'x "," @;
                   else put Prg_cd @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Bdg_verdelen_100_pct_dp)
         then put "," @;
         else do;
                 if find(Bdg_verdelen_100_pct_dp,'0A'x) > 0 and 2+klength(Bdg_verdelen_100_pct_dp) = klength(quote(trim(Bdg_verdelen_100_pct_dp)))
                   then put '22'x Bdg_verdelen_100_pct_dp +(-1) '22'x "," @;
                   else put Bdg_verdelen_100_pct_dp @;
              end;
       if missing(Bdg_verdelen_100_pct_th)
         then put "," @;
         else do;
                 if find(Bdg_verdelen_100_pct_th,'0A'x) > 0 and 2+klength(Bdg_verdelen_100_pct_th) = klength(quote(trim(Bdg_verdelen_100_pct_th)))
                   then put '22'x Bdg_verdelen_100_pct_th +(-1) '22'x "," @;
                   else put Bdg_verdelen_100_pct_th @;
              end;
       if missing(Iban)
         then put "," @;
         else do;
                 if find(Iban,'0A'x) > 0 and 2+klength(Iban) = klength(quote(trim(Iban)))
                   then put '22'x Iban +(-1) '22'x "," @;
                   else put Iban @;
              end;
       if missing(Bic)
         then put "," @;
         else do;
                 if find(Bic,'0A'x) > 0 and 2+klength(Bic) = klength(quote(trim(Bic)))
                   then put '22'x Bic +(-1) '22'x "," @;
                   else put Bic @;
              end;
       if missing(Imvb)
         then put "," @;
         else do;
                 if find(Imvb,'0A'x) > 0 and 2+klength(Imvb) = klength(quote(trim(Imvb)))
                   then put '22'x Imvb +(-1) '22'x "," @;
                   else put Imvb @;
              end;
       if missing(Correctie_code)
         then put "," @;
         else do;
                 if find(Correctie_code,'0A'x) > 0 and 2+klength(Correctie_code) = klength(quote(trim(Correctie_code)))
                   then put '22'x Correctie_code +(-1) '22'x "," @;
                   else put Correctie_code @;
              end;
       if missing(Auto_oracle)
         then put "," @;
         else do;
                 if find(Auto_oracle,'0A'x) > 0 and 2+klength(Auto_oracle) = klength(quote(trim(Auto_oracle)))
                   then put '22'x Auto_oracle +(-1) '22'x "," @;
                   else put Auto_oracle @;
              end;
       if missing(Boeking)
         then put "," @;
         else do;
                 if find(Boeking,'0A'x) > 0 and 2+klength(Boeking) = klength(quote(trim(Boeking)))
                   then put '22'x Boeking +(-1) '22'x "," @;
                   else put Boeking @;
              end;
       if missing(Fin_soort)
         then put "," @;
         else do;
                 if find(Fin_soort,'0A'x) > 0 and 2+klength(Fin_soort) = klength(quote(trim(Fin_soort)))
                   then put '22'x Fin_soort +(-1) '22'x "," @;
                   else put Fin_soort @;
              end;
       if missing(Kenmerk_lijn)
         then put "," @;
         else do;
                 if find(Kenmerk_lijn,'0A'x) > 0 and 2+klength(Kenmerk_lijn) = klength(quote(trim(Kenmerk_lijn)))
                   then put '22'x Kenmerk_lijn +(-1) '22'x "," @;
                   else put Kenmerk_lijn @;
              end;
       if missing(Aflossing)
         then put "," @;
         else do;
                 if find(Aflossing,'0A'x) > 0 and 2+klength(Aflossing) = klength(quote(trim(Aflossing)))
                   then put '22'x Aflossing +(-1) '22'x "," @;
                   else put Aflossing @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_PRG_OVEREENKOMST AS
   SELECT t1.Prg_id,
          t1.Ovk_nr,
          t1.Datum_van FORMAT=B8601DT19. AS Datum_van,
          t1.Datum_tot FORMAT=B8601DT19. AS Datum_tot,
          t1.Inhoud,
          t1.Status,
          t1.Contractdatum FORMAT=B8601DT19. AS Contractdatum,
          t1.Totaal_budget,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mjp_jn,
          t1.Ovk_budget_controle,
          t1.Vrij_budget,
          t1.Budget_uitputting
     FROM DATAQASG.RDM_PRG_OVEREENKOMST_TCMG t1;
QUIT;

data WORK.BAS_RDM_PRG_OVEREENKOMST;
  set WORK.BAS_RDM_PRG_OVEREENKOMST;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_PRG_OVEREENKOMST.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Prg_id" 
       ','
          "Ovk_nr" 
       ','
          "Datum_van" 
       ','
          "Datum_tot" 
       ','
          "Inhoud" 
       ','
          "Status" 
       ','
          "Contractdatum" 
       ','
          "Totaal_budget" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mjp_jn" 
       ','
          "Ovk_budget_controle" 
       ','
          "Vrij_budget" 
       ','
          "Budget_uitputting" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_PRG_OVEREENKOMST   end=EFIEOD; 
       format Prg_id best12. ;
       format Ovk_nr  ;
       format Datum_van B8601DT19. ;
       format Datum_tot B8601DT19. ;
       format Inhoud  ;
       format Status  ;
       format Contractdatum B8601DT19. ;
       format Totaal_budget best12. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mjp_jn  ;
       format Ovk_budget_controle  ;
       format Vrij_budget best12. ;
       format Budget_uitputting best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Ovk_nr)
         then put "," @;
         else do;
                 if find(Ovk_nr,'0A'x) > 0 and 2+klength(Ovk_nr) = klength(quote(trim(Ovk_nr)))
                   then put '22'x Ovk_nr +(-1) '22'x "," @;
                   else put Ovk_nr @;
              end;
       if missing(Datum_van)
         then put "," @;
         else do;
                 if find(Datum_van,'0A'x) > 0 and 2+klength(Datum_van) = klength(quote(trim(Datum_van)))
                   then put '22'x Datum_van +(-1) '22'x "," @;
                   else put Datum_van @;
              end;
       if missing(Datum_tot)
         then put "," @;
         else do;
                 if find(Datum_tot,'0A'x) > 0 and 2+klength(Datum_tot) = klength(quote(trim(Datum_tot)))
                   then put '22'x Datum_tot +(-1) '22'x "," @;
                   else put Datum_tot @;
              end;
       if missing(Inhoud)
         then put "," @;
         else do;
                 if find(Inhoud,'0A'x) > 0 and 2+klength(Inhoud) = klength(quote(trim(Inhoud)))
                   then put '22'x Inhoud +(-1) '22'x "," @;
                   else put Inhoud @;
              end;
       if missing(Status)
         then put "," @;
         else do;
                 if find(Status,'0A'x) > 0 and 2+klength(Status) = klength(quote(trim(Status)))
                   then put '22'x Status +(-1) '22'x "," @;
                   else put Status @;
              end;
       if missing(Contractdatum)
         then put "," @;
         else do;
                 if find(Contractdatum,'0A'x) > 0 and 2+klength(Contractdatum) = klength(quote(trim(Contractdatum)))
                   then put '22'x Contractdatum +(-1) '22'x "," @;
                   else put Contractdatum @;
              end;
       if missing(Totaal_budget)
         then put "," @;
         else do;
                 if find(Totaal_budget,'0A'x) > 0 and 2+klength(Totaal_budget) = klength(quote(trim(Totaal_budget)))
                   then put '22'x Totaal_budget +(-1) '22'x "," @;
                   else put Totaal_budget @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mjp_jn)
         then put "," @;
         else do;
                 if find(Mjp_jn,'0A'x) > 0 and 2+klength(Mjp_jn) = klength(quote(trim(Mjp_jn)))
                   then put '22'x Mjp_jn +(-1) '22'x "," @;
                   else put Mjp_jn @;
              end;
       if missing(Ovk_budget_controle)
         then put "," @;
         else do;
                 if find(Ovk_budget_controle,'0A'x) > 0 and 2+klength(Ovk_budget_controle) = klength(quote(trim(Ovk_budget_controle)))
                   then put '22'x Ovk_budget_controle +(-1) '22'x "," @;
                   else put Ovk_budget_controle @;
              end;
       if missing(Vrij_budget)
         then put "," @;
         else do;
                 if find(Vrij_budget,'0A'x) > 0 and 2+klength(Vrij_budget) = klength(quote(trim(Vrij_budget)))
                   then put '22'x Vrij_budget +(-1) '22'x "," @;
                   else put Vrij_budget @;
              end;
       if missing(Budget_uitputting)
         then put "," @;
         else do;
                 if find(Budget_uitputting,'0A'x) > 0 and 2+klength(Budget_uitputting) = klength(quote(trim(Budget_uitputting)))
                   then put '22'x Budget_uitputting +(-1) '22'x "," @;
                   else put Budget_uitputting @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_PROGRAMMAMEDEWERKERROL AS
   SELECT t1.Prg_id,
          t1.Mdw_id,
          t1.Auth_mdw_cd,
          t1.Rol_cd,
          t1.Actief,
          t1.Opmerking,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Senioriteit,
          t1.Mentor_id,
          t1.Vervang_id,
          t1.Vervang_rol,
          t1.Acc_id,
          t1.Mdw_id_parf_naar,
          t1.Mentor_rol_cd
     FROM DATAQASG.RDM_PROGRAMMAMEDEWERKERROL_TCMG t1;
QUIT;

data WORK.BAS_RDM_PROGRAMMAMEDEWERKERROL;
  set WORK.BAS_RDM_PROGRAMMAMEDEWERKERROL;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_PROGRAMMAMEDEWERKERROL.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Prg_id" 
       ','
          "Mdw_id" 
       ','
          "Auth_mdw_cd" 
       ','
          "Rol_cd" 
       ','
          "Actief" 
       ','
          "Opmerking" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Senioriteit" 
       ','
          "Mentor_id" 
       ','
          "Vervang_id" 
       ','
          "Vervang_rol" 
       ','
          "Acc_id" 
       ','
          "Mdw_id_parf_naar" 
       ','
          "Mentor_rol_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_PROGRAMMAMEDEWERKERROL   end=EFIEOD; 
       format Prg_id best12. ;
       format Mdw_id best12. ;
       format Auth_mdw_cd  ;
       format Rol_cd  ;
       format Actief  ;
       format Opmerking  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Senioriteit  ;
       format Mentor_id best12. ;
       format Vervang_id best12. ;
       format Vervang_rol  ;
       format Acc_id best12. ;
       format Mdw_id_parf_naar best12. ;
       format Mentor_rol_cd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Mdw_id)
         then put "," @;
         else do;
                 if find(Mdw_id,'0A'x) > 0 and 2+klength(Mdw_id) = klength(quote(trim(Mdw_id)))
                   then put '22'x Mdw_id +(-1) '22'x "," @;
                   else put Mdw_id @;
              end;
       if missing(Auth_mdw_cd)
         then put "," @;
         else do;
                 if find(Auth_mdw_cd,'0A'x) > 0 and 2+klength(Auth_mdw_cd) = klength(quote(trim(Auth_mdw_cd)))
                   then put '22'x Auth_mdw_cd +(-1) '22'x "," @;
                   else put Auth_mdw_cd @;
              end;
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Actief)
         then put "," @;
         else do;
                 if find(Actief,'0A'x) > 0 and 2+klength(Actief) = klength(quote(trim(Actief)))
                   then put '22'x Actief +(-1) '22'x "," @;
                   else put Actief @;
              end;
       if missing(Opmerking)
         then put "," @;
         else do;
                 if find(Opmerking,'0A'x) > 0 and 2+klength(Opmerking) = klength(quote(trim(Opmerking)))
                   then put '22'x Opmerking +(-1) '22'x "," @;
                   else put Opmerking @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Senioriteit)
         then put "," @;
         else do;
                 if find(Senioriteit,'0A'x) > 0 and 2+klength(Senioriteit) = klength(quote(trim(Senioriteit)))
                   then put '22'x Senioriteit +(-1) '22'x "," @;
                   else put Senioriteit @;
              end;
       if missing(Mentor_id)
         then put "," @;
         else do;
                 if find(Mentor_id,'0A'x) > 0 and 2+klength(Mentor_id) = klength(quote(trim(Mentor_id)))
                   then put '22'x Mentor_id +(-1) '22'x "," @;
                   else put Mentor_id @;
              end;
       if missing(Vervang_id)
         then put "," @;
         else do;
                 if find(Vervang_id,'0A'x) > 0 and 2+klength(Vervang_id) = klength(quote(trim(Vervang_id)))
                   then put '22'x Vervang_id +(-1) '22'x "," @;
                   else put Vervang_id @;
              end;
       if missing(Vervang_rol)
         then put "," @;
         else do;
                 if find(Vervang_rol,'0A'x) > 0 and 2+klength(Vervang_rol) = klength(quote(trim(Vervang_rol)))
                   then put '22'x Vervang_rol +(-1) '22'x "," @;
                   else put Vervang_rol @;
              end;
       if missing(Acc_id)
         then put "," @;
         else do;
                 if find(Acc_id,'0A'x) > 0 and 2+klength(Acc_id) = klength(quote(trim(Acc_id)))
                   then put '22'x Acc_id +(-1) '22'x "," @;
                   else put Acc_id @;
              end;
       if missing(Mdw_id_parf_naar)
         then put "," @;
         else do;
                 if find(Mdw_id_parf_naar,'0A'x) > 0 and 2+klength(Mdw_id_parf_naar) = klength(quote(trim(Mdw_id_parf_naar)))
                   then put '22'x Mdw_id_parf_naar +(-1) '22'x "," @;
                   else put Mdw_id_parf_naar @;
              end;
       if missing(Mentor_rol_cd)
         then put "," @;
         else do;
                 if find(Mentor_rol_cd,'0A'x) > 0 and 2+klength(Mentor_rol_cd) = klength(quote(trim(Mentor_rol_cd)))
                   then put '22'x Mentor_rol_cd +(-1) '22'x "," @;
                   else put Mentor_rol_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_REGELING AS
   SELECT t1.Reg_id,
          t1.Reg_cd,
          t1.Reg_oms,
          t1.Prg_id,
          t1.Thema,
          t1.Rap_freq,
          t1.Ingangs_datum FORMAT=B8601DT19. AS Ingangs_datum,
          t1.Pub_datum FORMAT=B8601DT19. AS Pub_datum,
          t1.Eind_datum FORMAT=B8601DT19. AS Eind_datum,
          t1.Reg_document,
          t1.Betaalmodule,
          t1.Regelingscontrole,
          t1.Ic_helptekst,
          t1.Geblokkeerd_jn,
          t1.Min_id,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Reg_prefix,
          t1.Volg_nr,
          t1.Mail_bericht_parafering,
          t1.Reg_mail_adres,
          t1.Reg_geen_dig_parafering,
          t1.Fin_schermen,
          t1.Budgetbewaking_pct,
          t1.Budgetbewaking_hard,
          t1.Dig_parf_mand,
          t1.Cst_set_cd,
          t1.Auto_samenvoeg_jn,
          t1.Fpc_status,
          t1.Dcp_automatisch_jn,
          t1.Paraf_mandat_pr_rol_jn,
          t1.Dos_referentie_jaar,
          t1.Auto_insert_sde_jn,
          t1.Ingangsdatum_zer FORMAT=B8601DT19. AS Ingangsdatum_zer
     FROM DATAQASG.RDM_REGELING_TCMG t1;
QUIT;

data WORK.BAS_RDM_REGELING;
  set WORK.BAS_RDM_REGELING;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_REGELING.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Reg_id" 
       ','
          "Reg_cd" 
       ','
          "Reg_oms" 
       ','
          "Prg_id" 
       ','
          "Thema" 
       ','
          "Rap_freq" 
       ','
          "Ingangs_datum" 
       ','
          "Pub_datum" 
       ','
          "Eind_datum" 
       ','
          "Reg_document" 
       ','
          "Betaalmodule" 
       ','
          "Regelingscontrole" 
       ','
          "Ic_helptekst" 
       ','
          "Geblokkeerd_jn" 
       ','
          "Min_id" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Reg_prefix" 
       ','
          "Volg_nr" 
       ','
          "Mail_bericht_parafering" 
       ','
          "Reg_mail_adres" 
       ','
          "Reg_geen_dig_parafering" 
       ','
          "Fin_schermen" 
       ','
          "Budgetbewaking_pct" 
       ','
          "Budgetbewaking_hard" 
       ','
          "Dig_parf_mand" 
       ','
          "Cst_set_cd" 
       ','
          "Auto_samenvoeg_jn" 
       ','
          "Fpc_status" 
       ','
          "Dcp_automatisch_jn" 
       ','
          "Paraf_mandat_pr_rol_jn" 
       ','
          "Dos_referentie_jaar" 
       ','
          "Auto_insert_sde_jn" 
       ','
          "Ingangsdatum_zer" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_REGELING   end=EFIEOD; 
       format Reg_id best12. ;
       format Reg_cd  ;
       format Reg_oms  ;
       format Prg_id best12. ;
       format Thema  ;
       format Rap_freq best12. ;
       format Ingangs_datum B8601DT19. ;
       format Pub_datum B8601DT19. ;
       format Eind_datum B8601DT19. ;
       format Reg_document  ;
       format Betaalmodule  ;
       format Regelingscontrole  ;
       format Ic_helptekst  ;
       format Geblokkeerd_jn  ;
       format Min_id best12. ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Reg_prefix  ;
       format Volg_nr best12. ;
       format Mail_bericht_parafering  ;
       format Reg_mail_adres  ;
       format Reg_geen_dig_parafering  ;
       format Fin_schermen  ;
       format Budgetbewaking_pct best12. ;
       format Budgetbewaking_hard  ;
       format Dig_parf_mand  ;
       format Cst_set_cd  ;
       format Auto_samenvoeg_jn  ;
       format Fpc_status  ;
       format Dcp_automatisch_jn  ;
       format Paraf_mandat_pr_rol_jn  ;
       format Dos_referentie_jaar  ;
       format Auto_insert_sde_jn  ;
       format Ingangsdatum_zer B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Reg_cd)
         then put "," @;
         else do;
                 if find(Reg_cd,'0A'x) > 0 and 2+klength(Reg_cd) = klength(quote(trim(Reg_cd)))
                   then put '22'x Reg_cd +(-1) '22'x "," @;
                   else put Reg_cd @;
              end;
       if missing(Reg_oms)
         then put "," @;
         else do;
                 if find(Reg_oms,'0A'x) > 0 and 2+klength(Reg_oms) = klength(quote(trim(Reg_oms)))
                   then put '22'x Reg_oms +(-1) '22'x "," @;
                   else put Reg_oms @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Thema)
         then put "," @;
         else do;
                 if find(Thema,'0A'x) > 0 and 2+klength(Thema) = klength(quote(trim(Thema)))
                   then put '22'x Thema +(-1) '22'x "," @;
                   else put Thema @;
              end;
       if missing(Rap_freq)
         then put "," @;
         else do;
                 if find(Rap_freq,'0A'x) > 0 and 2+klength(Rap_freq) = klength(quote(trim(Rap_freq)))
                   then put '22'x Rap_freq +(-1) '22'x "," @;
                   else put Rap_freq @;
              end;
       if missing(Ingangs_datum)
         then put "," @;
         else do;
                 if find(Ingangs_datum,'0A'x) > 0 and 2+klength(Ingangs_datum) = klength(quote(trim(Ingangs_datum)))
                   then put '22'x Ingangs_datum +(-1) '22'x "," @;
                   else put Ingangs_datum @;
              end;
       if missing(Pub_datum)
         then put "," @;
         else do;
                 if find(Pub_datum,'0A'x) > 0 and 2+klength(Pub_datum) = klength(quote(trim(Pub_datum)))
                   then put '22'x Pub_datum +(-1) '22'x "," @;
                   else put Pub_datum @;
              end;
       if missing(Eind_datum)
         then put "," @;
         else do;
                 if find(Eind_datum,'0A'x) > 0 and 2+klength(Eind_datum) = klength(quote(trim(Eind_datum)))
                   then put '22'x Eind_datum +(-1) '22'x "," @;
                   else put Eind_datum @;
              end;
       if missing(Reg_document)
         then put "," @;
         else do;
                 if find(Reg_document,'0A'x) > 0 and 2+klength(Reg_document) = klength(quote(trim(Reg_document)))
                   then put '22'x Reg_document +(-1) '22'x "," @;
                   else put Reg_document @;
              end;
       if missing(Betaalmodule)
         then put "," @;
         else do;
                 if find(Betaalmodule,'0A'x) > 0 and 2+klength(Betaalmodule) = klength(quote(trim(Betaalmodule)))
                   then put '22'x Betaalmodule +(-1) '22'x "," @;
                   else put Betaalmodule @;
              end;
       if missing(Regelingscontrole)
         then put "," @;
         else do;
                 if find(Regelingscontrole,'0A'x) > 0 and 2+klength(Regelingscontrole) = klength(quote(trim(Regelingscontrole)))
                   then put '22'x Regelingscontrole +(-1) '22'x "," @;
                   else put Regelingscontrole @;
              end;
       if missing(Ic_helptekst)
         then put "," @;
         else do;
                 if find(Ic_helptekst,'0A'x) > 0 and 2+klength(Ic_helptekst) = klength(quote(trim(Ic_helptekst)))
                   then put '22'x Ic_helptekst +(-1) '22'x "," @;
                   else put Ic_helptekst @;
              end;
       if missing(Geblokkeerd_jn)
         then put "," @;
         else do;
                 if find(Geblokkeerd_jn,'0A'x) > 0 and 2+klength(Geblokkeerd_jn) = klength(quote(trim(Geblokkeerd_jn)))
                   then put '22'x Geblokkeerd_jn +(-1) '22'x "," @;
                   else put Geblokkeerd_jn @;
              end;
       if missing(Min_id)
         then put "," @;
         else do;
                 if find(Min_id,'0A'x) > 0 and 2+klength(Min_id) = klength(quote(trim(Min_id)))
                   then put '22'x Min_id +(-1) '22'x "," @;
                   else put Min_id @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Reg_prefix)
         then put "," @;
         else do;
                 if find(Reg_prefix,'0A'x) > 0 and 2+klength(Reg_prefix) = klength(quote(trim(Reg_prefix)))
                   then put '22'x Reg_prefix +(-1) '22'x "," @;
                   else put Reg_prefix @;
              end;
       if missing(Volg_nr)
         then put "," @;
         else do;
                 if find(Volg_nr,'0A'x) > 0 and 2+klength(Volg_nr) = klength(quote(trim(Volg_nr)))
                   then put '22'x Volg_nr +(-1) '22'x "," @;
                   else put Volg_nr @;
              end;
       if missing(Mail_bericht_parafering)
         then put "," @;
         else do;
                 if find(Mail_bericht_parafering,'0A'x) > 0 and 2+klength(Mail_bericht_parafering) = klength(quote(trim(Mail_bericht_parafering)))
                   then put '22'x Mail_bericht_parafering +(-1) '22'x "," @;
                   else put Mail_bericht_parafering @;
              end;
       if missing(Reg_mail_adres)
         then put "," @;
         else do;
                 if find(Reg_mail_adres,'0A'x) > 0 and 2+klength(Reg_mail_adres) = klength(quote(trim(Reg_mail_adres)))
                   then put '22'x Reg_mail_adres +(-1) '22'x "," @;
                   else put Reg_mail_adres @;
              end;
       if missing(Reg_geen_dig_parafering)
         then put "," @;
         else do;
                 if find(Reg_geen_dig_parafering,'0A'x) > 0 and 2+klength(Reg_geen_dig_parafering) = klength(quote(trim(Reg_geen_dig_parafering)))
                   then put '22'x Reg_geen_dig_parafering +(-1) '22'x "," @;
                   else put Reg_geen_dig_parafering @;
              end;
       if missing(Fin_schermen)
         then put "," @;
         else do;
                 if find(Fin_schermen,'0A'x) > 0 and 2+klength(Fin_schermen) = klength(quote(trim(Fin_schermen)))
                   then put '22'x Fin_schermen +(-1) '22'x "," @;
                   else put Fin_schermen @;
              end;
       if missing(Budgetbewaking_pct)
         then put "," @;
         else do;
                 if find(Budgetbewaking_pct,'0A'x) > 0 and 2+klength(Budgetbewaking_pct) = klength(quote(trim(Budgetbewaking_pct)))
                   then put '22'x Budgetbewaking_pct +(-1) '22'x "," @;
                   else put Budgetbewaking_pct @;
              end;
       if missing(Budgetbewaking_hard)
         then put "," @;
         else do;
                 if find(Budgetbewaking_hard,'0A'x) > 0 and 2+klength(Budgetbewaking_hard) = klength(quote(trim(Budgetbewaking_hard)))
                   then put '22'x Budgetbewaking_hard +(-1) '22'x "," @;
                   else put Budgetbewaking_hard @;
              end;
       if missing(Dig_parf_mand)
         then put "," @;
         else do;
                 if find(Dig_parf_mand,'0A'x) > 0 and 2+klength(Dig_parf_mand) = klength(quote(trim(Dig_parf_mand)))
                   then put '22'x Dig_parf_mand +(-1) '22'x "," @;
                   else put Dig_parf_mand @;
              end;
       if missing(Cst_set_cd)
         then put "," @;
         else do;
                 if find(Cst_set_cd,'0A'x) > 0 and 2+klength(Cst_set_cd) = klength(quote(trim(Cst_set_cd)))
                   then put '22'x Cst_set_cd +(-1) '22'x "," @;
                   else put Cst_set_cd @;
              end;
       if missing(Auto_samenvoeg_jn)
         then put "," @;
         else do;
                 if find(Auto_samenvoeg_jn,'0A'x) > 0 and 2+klength(Auto_samenvoeg_jn) = klength(quote(trim(Auto_samenvoeg_jn)))
                   then put '22'x Auto_samenvoeg_jn +(-1) '22'x "," @;
                   else put Auto_samenvoeg_jn @;
              end;
       if missing(Fpc_status)
         then put "," @;
         else do;
                 if find(Fpc_status,'0A'x) > 0 and 2+klength(Fpc_status) = klength(quote(trim(Fpc_status)))
                   then put '22'x Fpc_status +(-1) '22'x "," @;
                   else put Fpc_status @;
              end;
       if missing(Dcp_automatisch_jn)
         then put "," @;
         else do;
                 if find(Dcp_automatisch_jn,'0A'x) > 0 and 2+klength(Dcp_automatisch_jn) = klength(quote(trim(Dcp_automatisch_jn)))
                   then put '22'x Dcp_automatisch_jn +(-1) '22'x "," @;
                   else put Dcp_automatisch_jn @;
              end;
       if missing(Paraf_mandat_pr_rol_jn)
         then put "," @;
         else do;
                 if find(Paraf_mandat_pr_rol_jn,'0A'x) > 0 and 2+klength(Paraf_mandat_pr_rol_jn) = klength(quote(trim(Paraf_mandat_pr_rol_jn)))
                   then put '22'x Paraf_mandat_pr_rol_jn +(-1) '22'x "," @;
                   else put Paraf_mandat_pr_rol_jn @;
              end;
       if missing(Dos_referentie_jaar)
         then put "," @;
         else do;
                 if find(Dos_referentie_jaar,'0A'x) > 0 and 2+klength(Dos_referentie_jaar) = klength(quote(trim(Dos_referentie_jaar)))
                   then put '22'x Dos_referentie_jaar +(-1) '22'x "," @;
                   else put Dos_referentie_jaar @;
              end;
       if missing(Auto_insert_sde_jn)
         then put "," @;
         else do;
                 if find(Auto_insert_sde_jn,'0A'x) > 0 and 2+klength(Auto_insert_sde_jn) = klength(quote(trim(Auto_insert_sde_jn)))
                   then put '22'x Auto_insert_sde_jn +(-1) '22'x "," @;
                   else put Auto_insert_sde_jn @;
              end;
       if missing(Ingangsdatum_zer)
         then put "," @;
         else do;
                 if find(Ingangsdatum_zer,'0A'x) > 0 and 2+klength(Ingangsdatum_zer) = klength(quote(trim(Ingangsdatum_zer)))
                   then put '22'x Ingangsdatum_zer +(-1) '22'x "," @;
                   else put Ingangsdatum_zer @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_REGPAR_BUDGONDVERD AS
   SELECT t1.Ovk_nr,
          t1.Rpt_nr,
          t1.Bgt_cd,
          t1.Rpe_datum_van FORMAT=B8601DT19. AS Rpe_datum_van,
          t1.Jaar,
          t1.Reg_id,
          t1.Reg_nr,
          t1.Budget,
          t1.Budget_uitputting,
          t1.Koppelen_jn,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.Correctie_budget,
          t1.Vrij_budget,
          t1.Rpt_nr_oud
     FROM DATAQASG.RDM_REGPAR_BUDGONDVERD_TCMG t1;
QUIT;

data WORK.BAS_RDM_REGPAR_BUDGONDVERD;
  set WORK.BAS_RDM_REGPAR_BUDGONDVERD;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_REGPAR_BUDGONDVERD.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Ovk_nr" 
       ','
          "Rpt_nr" 
       ','
          "Bgt_cd" 
       ','
          "Rpe_datum_van" 
       ','
          "Jaar" 
       ','
          "Reg_id" 
       ','
          "Reg_nr" 
       ','
          "Budget" 
       ','
          "Budget_uitputting" 
       ','
          "Koppelen_jn" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Correctie_budget" 
       ','
          "Vrij_budget" 
       ','
          "Rpt_nr_oud" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_REGPAR_BUDGONDVERD   end=EFIEOD; 
       format Ovk_nr  ;
       format Rpt_nr best12. ;
       format Bgt_cd  ;
       format Rpe_datum_van B8601DT19. ;
       format Jaar best12. ;
       format Reg_id best12. ;
       format Reg_nr best12. ;
       format Budget best12. ;
       format Budget_uitputting best12. ;
       format Koppelen_jn  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Correctie_budget best12. ;
       format Vrij_budget best12. ;
       format Rpt_nr_oud  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Ovk_nr)
         then put "," @;
         else do;
                 if find(Ovk_nr,'0A'x) > 0 and 2+klength(Ovk_nr) = klength(quote(trim(Ovk_nr)))
                   then put '22'x Ovk_nr +(-1) '22'x "," @;
                   else put Ovk_nr @;
              end;
       if missing(Rpt_nr)
         then put "," @;
         else do;
                 if find(Rpt_nr,'0A'x) > 0 and 2+klength(Rpt_nr) = klength(quote(trim(Rpt_nr)))
                   then put '22'x Rpt_nr +(-1) '22'x "," @;
                   else put Rpt_nr @;
              end;
       if missing(Bgt_cd)
         then put "," @;
         else do;
                 if find(Bgt_cd,'0A'x) > 0 and 2+klength(Bgt_cd) = klength(quote(trim(Bgt_cd)))
                   then put '22'x Bgt_cd +(-1) '22'x "," @;
                   else put Bgt_cd @;
              end;
       if missing(Rpe_datum_van)
         then put "," @;
         else do;
                 if find(Rpe_datum_van,'0A'x) > 0 and 2+klength(Rpe_datum_van) = klength(quote(trim(Rpe_datum_van)))
                   then put '22'x Rpe_datum_van +(-1) '22'x "," @;
                   else put Rpe_datum_van @;
              end;
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Reg_nr)
         then put "," @;
         else do;
                 if find(Reg_nr,'0A'x) > 0 and 2+klength(Reg_nr) = klength(quote(trim(Reg_nr)))
                   then put '22'x Reg_nr +(-1) '22'x "," @;
                   else put Reg_nr @;
              end;
       if missing(Budget)
         then put "," @;
         else do;
                 if find(Budget,'0A'x) > 0 and 2+klength(Budget) = klength(quote(trim(Budget)))
                   then put '22'x Budget +(-1) '22'x "," @;
                   else put Budget @;
              end;
       if missing(Budget_uitputting)
         then put "," @;
         else do;
                 if find(Budget_uitputting,'0A'x) > 0 and 2+klength(Budget_uitputting) = klength(quote(trim(Budget_uitputting)))
                   then put '22'x Budget_uitputting +(-1) '22'x "," @;
                   else put Budget_uitputting @;
              end;
       if missing(Koppelen_jn)
         then put "," @;
         else do;
                 if find(Koppelen_jn,'0A'x) > 0 and 2+klength(Koppelen_jn) = klength(quote(trim(Koppelen_jn)))
                   then put '22'x Koppelen_jn +(-1) '22'x "," @;
                   else put Koppelen_jn @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Correctie_budget)
         then put "," @;
         else do;
                 if find(Correctie_budget,'0A'x) > 0 and 2+klength(Correctie_budget) = klength(quote(trim(Correctie_budget)))
                   then put '22'x Correctie_budget +(-1) '22'x "," @;
                   else put Correctie_budget @;
              end;
       if missing(Vrij_budget)
         then put "," @;
         else do;
                 if find(Vrij_budget,'0A'x) > 0 and 2+klength(Vrij_budget) = klength(quote(trim(Vrij_budget)))
                   then put '22'x Vrij_budget +(-1) '22'x "," @;
                   else put Vrij_budget @;
              end;
       if missing(Rpt_nr_oud)
         then put "," @;
         else do;
                 if find(Rpt_nr_oud,'0A'x) > 0 and 2+klength(Rpt_nr_oud) = klength(quote(trim(Rpt_nr_oud)))
                   then put '22'x Rpt_nr_oud +(-1) '22'x "," @;
                   else put Rpt_nr_oud @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_STATUSOVERG_BIJ_BRIEF AS
   SELECT t1.Reg_id,
          t1.Status_van,
          t1.Statusgroep,
          t1.Status_naar,
          t1.Cst_cd,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Xps_cd
     FROM DATAQASG.RDM_STATUSOVERG_BIJ_BRIEF_TCMG t1;
QUIT;

data WORK.BAS_RDM_STATUSOVERG_BIJ_BRIEF;
  set WORK.BAS_RDM_STATUSOVERG_BIJ_BRIEF;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_STATUSOVERG_BIJ_BRIEF.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Reg_id" 
       ','
          "Status_van" 
       ','
          "Statusgroep" 
       ','
          "Status_naar" 
       ','
          "Cst_cd" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Xps_cd" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_STATUSOVERG_BIJ_BRIEF   end=EFIEOD; 
       format Reg_id best12. ;
       format Status_van  ;
       format Statusgroep  ;
       format Status_naar  ;
       format Cst_cd  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Xps_cd  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Status_van)
         then put "," @;
         else do;
                 if find(Status_van,'0A'x) > 0 and 2+klength(Status_van) = klength(quote(trim(Status_van)))
                   then put '22'x Status_van +(-1) '22'x "," @;
                   else put Status_van @;
              end;
       if missing(Statusgroep)
         then put "," @;
         else do;
                 if find(Statusgroep,'0A'x) > 0 and 2+klength(Statusgroep) = klength(quote(trim(Statusgroep)))
                   then put '22'x Statusgroep +(-1) '22'x "," @;
                   else put Statusgroep @;
              end;
       if missing(Status_naar)
         then put "," @;
         else do;
                 if find(Status_naar,'0A'x) > 0 and 2+klength(Status_naar) = klength(quote(trim(Status_naar)))
                   then put '22'x Status_naar +(-1) '22'x "," @;
                   else put Status_naar @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Xps_cd)
         then put "," @;
         else do;
                 if find(Xps_cd,'0A'x) > 0 and 2+klength(Xps_cd) = klength(quote(trim(Xps_cd)))
                   then put '22'x Xps_cd +(-1) '22'x "," @;
                   else put Xps_cd @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_RDM_VARIABELE AS
   SELECT t1.Reg_id,
          t1.Code,
          t1.Begindatum FORMAT=B8601DT19. AS Begindatum,
          t1.Inhoud,
          t1.Toelichting,
          t1.Einddatum FORMAT=B8601DT19. AS Einddatum,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.RDM_VARIABELE_TCMG t1;
QUIT;

data WORK.BAS_RDM_VARIABELE;
  set WORK.BAS_RDM_VARIABELE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_VARIABELE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Reg_id" 
       ','
          "Code" 
       ','
          "Begindatum" 
       ','
          "Inhoud" 
       ','
          "Toelichting" 
       ','
          "Einddatum" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_RDM_VARIABELE   end=EFIEOD; 
       format Reg_id best12. ;
       format Code  ;
       format Begindatum B8601DT19. ;
       format Inhoud  ;
       format Toelichting  ;
       format Einddatum B8601DT19. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Code)
         then put "," @;
         else do;
                 if find(Code,'0A'x) > 0 and 2+klength(Code) = klength(quote(trim(Code)))
                   then put '22'x Code +(-1) '22'x "," @;
                   else put Code @;
              end;
       if missing(Begindatum)
         then put "," @;
         else do;
                 if find(Begindatum,'0A'x) > 0 and 2+klength(Begindatum) = klength(quote(trim(Begindatum)))
                   then put '22'x Begindatum +(-1) '22'x "," @;
                   else put Begindatum @;
              end;
       if missing(Inhoud)
         then put "," @;
         else do;
                 if find(Inhoud,'0A'x) > 0 and 2+klength(Inhoud) = klength(quote(trim(Inhoud)))
                   then put '22'x Inhoud +(-1) '22'x "," @;
                   else put Inhoud @;
              end;
       /* OPGELET: Toelichting WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       if missing(Einddatum)
         then put "," @;
         else do;
                 if find(Einddatum,'0A'x) > 0 and 2+klength(Einddatum) = klength(quote(trim(Einddatum)))
                   then put '22'x Einddatum +(-1) '22'x "," @;
                   else put Einddatum @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_STM_BSI AS
   SELECT t1.Startdatum FORMAT=B8601DT19. AS Startdatum,
          t1.Einddatum FORMAT=B8601DT19. AS Einddatum,
          t1.Bsi_cd,
          t1.Bsi_oms,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.STM_BSI_TCMG t1;
QUIT;

data WORK.BAS_STM_BSI;
  set WORK.BAS_STM_BSI;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_BSI.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Startdatum" 
       ','
          "Einddatum" 
       ','
          "Bsi_cd" 
       ','
          "Bsi_oms" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_STM_BSI   end=EFIEOD; 
       format Startdatum B8601DT19. ;
       format Einddatum B8601DT19. ;
       format Bsi_cd  ;
       format Bsi_oms  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Startdatum)
         then put "," @;
         else do;
                 if find(Startdatum,'0A'x) > 0 and 2+klength(Startdatum) = klength(quote(trim(Startdatum)))
                   then put '22'x Startdatum +(-1) '22'x "," @;
                   else put Startdatum @;
              end;
       if missing(Einddatum)
         then put "," @;
         else do;
                 if find(Einddatum,'0A'x) > 0 and 2+klength(Einddatum) = klength(quote(trim(Einddatum)))
                   then put '22'x Einddatum +(-1) '22'x "," @;
                   else put Einddatum @;
              end;
       if missing(Bsi_cd)
         then put "," @;
         else do;
                 if find(Bsi_cd,'0A'x) > 0 and 2+klength(Bsi_cd) = klength(quote(trim(Bsi_cd)))
                   then put '22'x Bsi_cd +(-1) '22'x "," @;
                   else put Bsi_cd @;
              end;
       if missing(Bsi_oms)
         then put "," @;
         else do;
                 if find(Bsi_oms,'0A'x) > 0 and 2+klength(Bsi_oms) = klength(quote(trim(Bsi_oms)))
                   then put '22'x Bsi_oms +(-1) '22'x "," @;
                   else put Bsi_oms @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_STM_REACTIE AS
   SELECT t1.Reactie_cd,
          t1.Reactie_oms,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.STM_REACTIE_TCMG t1;
QUIT;

data WORK.BAS_STM_REACTIE;
  set WORK.BAS_STM_REACTIE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_REACTIE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Reactie_cd" 
       ','
          "Reactie_oms" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_STM_REACTIE   end=EFIEOD; 
       format Reactie_cd  ;
       format Reactie_oms  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Reactie_cd)
         then put "," @;
         else do;
                 if find(Reactie_cd,'0A'x) > 0 and 2+klength(Reactie_cd) = klength(quote(trim(Reactie_cd)))
                   then put '22'x Reactie_cd +(-1) '22'x "," @;
                   else put Reactie_cd @;
              end;
       if missing(Reactie_oms)
         then put "," @;
         else do;
                 if find(Reactie_oms,'0A'x) > 0 and 2+klength(Reactie_oms) = klength(quote(trim(Reactie_oms)))
                   then put '22'x Reactie_oms +(-1) '22'x "," @;
                   else put Reactie_oms @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_STM_ROL AS
   SELECT t1.Rol_cd,
          t1.Rol_oms,
          t1.Interne_rol,
          t1.Externe_rol,
          t1.Organisatie_rol,
          t1.Controller,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Type_rol,
          t1.Ed_rol_cd,
          t1.Ed_rol_oms
     FROM DATAQASG.STM_ROL_TCMG t1;
QUIT;

data WORK.BAS_STM_ROL;
  set WORK.BAS_STM_ROL;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_ROL.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Rol_cd" 
       ','
          "Rol_oms" 
       ','
          "Interne_rol" 
       ','
          "Externe_rol" 
       ','
          "Organisatie_rol" 
       ','
          "Controller" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Type_rol" 
       ','
          "Ed_rol_cd" 
       ','
          "Ed_rol_oms" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_STM_ROL   end=EFIEOD; 
       format Rol_cd  ;
       format Rol_oms  ;
       format Interne_rol  ;
       format Externe_rol  ;
       format Organisatie_rol  ;
       format Controller  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Type_rol  ;
       format Ed_rol_cd best12. ;
       format Ed_rol_oms  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Rol_cd)
         then put "," @;
         else do;
                 if find(Rol_cd,'0A'x) > 0 and 2+klength(Rol_cd) = klength(quote(trim(Rol_cd)))
                   then put '22'x Rol_cd +(-1) '22'x "," @;
                   else put Rol_cd @;
              end;
       if missing(Rol_oms)
         then put "," @;
         else do;
                 if find(Rol_oms,'0A'x) > 0 and 2+klength(Rol_oms) = klength(quote(trim(Rol_oms)))
                   then put '22'x Rol_oms +(-1) '22'x "," @;
                   else put Rol_oms @;
              end;
       if missing(Interne_rol)
         then put "," @;
         else do;
                 if find(Interne_rol,'0A'x) > 0 and 2+klength(Interne_rol) = klength(quote(trim(Interne_rol)))
                   then put '22'x Interne_rol +(-1) '22'x "," @;
                   else put Interne_rol @;
              end;
       if missing(Externe_rol)
         then put "," @;
         else do;
                 if find(Externe_rol,'0A'x) > 0 and 2+klength(Externe_rol) = klength(quote(trim(Externe_rol)))
                   then put '22'x Externe_rol +(-1) '22'x "," @;
                   else put Externe_rol @;
              end;
       if missing(Organisatie_rol)
         then put "," @;
         else do;
                 if find(Organisatie_rol,'0A'x) > 0 and 2+klength(Organisatie_rol) = klength(quote(trim(Organisatie_rol)))
                   then put '22'x Organisatie_rol +(-1) '22'x "," @;
                   else put Organisatie_rol @;
              end;
       if missing(Controller)
         then put "," @;
         else do;
                 if find(Controller,'0A'x) > 0 and 2+klength(Controller) = klength(quote(trim(Controller)))
                   then put '22'x Controller +(-1) '22'x "," @;
                   else put Controller @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Type_rol)
         then put "," @;
         else do;
                 if find(Type_rol,'0A'x) > 0 and 2+klength(Type_rol) = klength(quote(trim(Type_rol)))
                   then put '22'x Type_rol +(-1) '22'x "," @;
                   else put Type_rol @;
              end;
       if missing(Ed_rol_cd)
         then put "," @;
         else do;
                 if find(Ed_rol_cd,'0A'x) > 0 and 2+klength(Ed_rol_cd) = klength(quote(trim(Ed_rol_cd)))
                   then put '22'x Ed_rol_cd +(-1) '22'x "," @;
                   else put Ed_rol_cd @;
              end;
       if missing(Ed_rol_oms)
         then put "," @;
         else do;
                 if find(Ed_rol_oms,'0A'x) > 0 and 2+klength(Ed_rol_oms) = klength(quote(trim(Ed_rol_oms)))
                   then put '22'x Ed_rol_oms +(-1) '22'x "," @;
                   else put Ed_rol_oms @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_STM_SBI AS
   SELECT t1.Sbi_cd,
          t1.Sbi_oms,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user
     FROM DATAQASG.STM_SBI_TCMG t1;
QUIT;

data WORK.BAS_STM_SBI;
  set WORK.BAS_STM_SBI;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_SBI.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Sbi_cd" 
       ','
          "Sbi_oms" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_STM_SBI   end=EFIEOD; 
       format Sbi_cd best12. ;
       format Sbi_oms  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Sbi_cd)
         then put "," @;
         else do;
                 if find(Sbi_cd,'0A'x) > 0 and 2+klength(Sbi_cd) = klength(quote(trim(Sbi_cd)))
                   then put '22'x Sbi_cd +(-1) '22'x "," @;
                   else put Sbi_cd @;
              end;
       if missing(Sbi_oms)
         then put "," @;
         else do;
                 if find(Sbi_oms,'0A'x) > 0 and 2+klength(Sbi_oms) = klength(quote(trim(Sbi_oms)))
                   then put '22'x Sbi_oms +(-1) '22'x "," @;
                   else put Sbi_oms @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_STM_STATUS AS
   SELECT t1.Sts_cd,
          t1.Sts_oms,
          t1.Ssg_cd,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Sts_e_indienen,
          t1.Eindstatus,
          t1.Sts_e_loket
     FROM DATAQASG.STM_STATUS_TCMG t1;
QUIT;

data WORK.BAS_STM_STATUS;
  set WORK.BAS_STM_STATUS;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_STATUS.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Sts_cd" 
       ','
          "Sts_oms" 
       ','
          "Ssg_cd" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "Sts_e_indienen" 
       ','
          "Eindstatus" 
       ','
          "Sts_e_loket" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_STM_STATUS   end=EFIEOD; 
       format Sts_cd  ;
       format Sts_oms  ;
       format Ssg_cd  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format Sts_e_indienen  ;
       format Eindstatus  ;
       format Sts_e_loket  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Sts_cd)
         then put "," @;
         else do;
                 if find(Sts_cd,'0A'x) > 0 and 2+klength(Sts_cd) = klength(quote(trim(Sts_cd)))
                   then put '22'x Sts_cd +(-1) '22'x "," @;
                   else put Sts_cd @;
              end;
       if missing(Sts_oms)
         then put "," @;
         else do;
                 if find(Sts_oms,'0A'x) > 0 and 2+klength(Sts_oms) = klength(quote(trim(Sts_oms)))
                   then put '22'x Sts_oms +(-1) '22'x "," @;
                   else put Sts_oms @;
              end;
       if missing(Ssg_cd)
         then put "," @;
         else do;
                 if find(Ssg_cd,'0A'x) > 0 and 2+klength(Ssg_cd) = klength(quote(trim(Ssg_cd)))
                   then put '22'x Ssg_cd +(-1) '22'x "," @;
                   else put Ssg_cd @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Sts_e_indienen)
         then put "," @;
         else do;
                 if find(Sts_e_indienen,'0A'x) > 0 and 2+klength(Sts_e_indienen) = klength(quote(trim(Sts_e_indienen)))
                   then put '22'x Sts_e_indienen +(-1) '22'x "," @;
                   else put Sts_e_indienen @;
              end;
       if missing(Eindstatus)
         then put "," @;
         else do;
                 if find(Eindstatus,'0A'x) > 0 and 2+klength(Eindstatus) = klength(quote(trim(Eindstatus)))
                   then put '22'x Eindstatus +(-1) '22'x "," @;
                   else put Eindstatus @;
              end;
       if missing(Sts_e_loket)
         then put "," @;
         else do;
                 if find(Sts_e_loket,'0A'x) > 0 and 2+klength(Sts_e_loket) = klength(quote(trim(Sts_e_loket)))
                   then put '22'x Sts_e_loket +(-1) '22'x "," @;
                   else put Sts_e_loket @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_STM_STATUSOVERG_BIJ_BRIEF AS
   SELECT t1.Van_status,
          t1.Naar_status,
          t1.Ssg_cd,
          t1.Cst_cd,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.STM_STATUSOVERG_BIJ_BRIEF_TCMG t1;
QUIT;

data WORK.BAS_STM_STATUSOVERG_BIJ_BRIEF;
  set WORK.BAS_STM_STATUSOVERG_BIJ_BRIEF;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_STATUSOVERG_BIJ_BRIEF.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Van_status" 
       ','
          "Naar_status" 
       ','
          "Ssg_cd" 
       ','
          "Cst_cd" 
       ','
          "Creatie_user" 
       ','
          "Creatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "Mutatie_dat" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_STM_STATUSOVERG_BIJ_BRIEF   end=EFIEOD; 
       format Van_status  ;
       format Naar_status  ;
       format Ssg_cd  ;
       format Cst_cd  ;
       format Creatie_user  ;
       format Creatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format Mutatie_dat B8601DT19. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Van_status)
         then put "," @;
         else do;
                 if find(Van_status,'0A'x) > 0 and 2+klength(Van_status) = klength(quote(trim(Van_status)))
                   then put '22'x Van_status +(-1) '22'x "," @;
                   else put Van_status @;
              end;
       if missing(Naar_status)
         then put "," @;
         else do;
                 if find(Naar_status,'0A'x) > 0 and 2+klength(Naar_status) = klength(quote(trim(Naar_status)))
                   then put '22'x Naar_status +(-1) '22'x "," @;
                   else put Naar_status @;
              end;
       if missing(Ssg_cd)
         then put "," @;
         else do;
                 if find(Ssg_cd,'0A'x) > 0 and 2+klength(Ssg_cd) = klength(quote(trim(Ssg_cd)))
                   then put '22'x Ssg_cd +(-1) '22'x "," @;
                   else put Ssg_cd @;
              end;
       if missing(Cst_cd)
         then put "," @;
         else do;
                 if find(Cst_cd,'0A'x) > 0 and 2+klength(Cst_cd) = klength(quote(trim(Cst_cd)))
                   then put '22'x Cst_cd +(-1) '22'x "," @;
                   else put Cst_cd @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_VKM_TOEGEV_VAR_VELD_WAARDE AS
   SELECT t1.Vkt_id,
          t1.Fysieke_naam,
          t1.Waarde,
          t1.Volgorde
     FROM DATAQASG.VKM_TOEGEV_VAR_VELD_WAARDE_TCMG t1;
QUIT;

data WORK.BAS_VKM_TOEGEV_VAR_VELD_WAARDE;
  set WORK.BAS_VKM_TOEGEV_VAR_VELD_WAARDE;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_VKM_TOEGEV_VAR_VELD_WAARDE.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Vkt_id" 
       ','
          "Fysieke_naam" 
       ','
          "Waarde" 
       ','
          "Volgorde" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_VKM_TOEGEV_VAR_VELD_WAARDE   end=EFIEOD; 
       format Vkt_id best12. ;
       format Fysieke_naam  ;
       format Waarde  ;
       format Volgorde best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Vkt_id)
         then put "," @;
         else do;
                 if find(Vkt_id,'0A'x) > 0 and 2+klength(Vkt_id) = klength(quote(trim(Vkt_id)))
                   then put '22'x Vkt_id +(-1) '22'x "," @;
                   else put Vkt_id @;
              end;
       if missing(Fysieke_naam)
         then put "," @;
         else do;
                 if find(Fysieke_naam,'0A'x) > 0 and 2+klength(Fysieke_naam) = klength(quote(trim(Fysieke_naam)))
                   then put '22'x Fysieke_naam +(-1) '22'x "," @;
                   else put Fysieke_naam @;
              end;
       if missing(Waarde)
         then put "," @;
         else do;
                 if find(Waarde,'0A'x) > 0 and 2+klength(Waarde) = klength(quote(trim(Waarde)))
                   then put '22'x Waarde +(-1) '22'x "," @;
                   else put Waarde @;
              end;
       if missing(Volgorde)
         then put "," @;
         else do;
                 if find(Volgorde,'0A'x) > 0 and 2+klength(Volgorde) = klength(quote(trim(Volgorde)))
                   then put '22'x Volgorde +(-1) '22'x "," @;
                   else put Volgorde @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_VKM_TOEGEVOEGD_VAR_VELD AS
   SELECT t1.Vkt_id,
          t1.Fysieke_naam,
          t1.Datum_start FORMAT=B8601DT19. AS Datum_start,
          t1.Datum_einde FORMAT=B8601DT19. AS Datum_einde,
          t1.Volgorde,
          t1.Verplicht_jn,
          t1.Prompt,
          t1.Min_waarde,
          t1.Max_waarde,
          t1.Default_waarde,
          t1.Helptekst
     FROM DATAQASG.VKM_TOEGEVOEGD_VAR_VELD_TCMG t1;
QUIT;

data WORK.BAS_VKM_TOEGEVOEGD_VAR_VELD;
  set WORK.BAS_VKM_TOEGEVOEGD_VAR_VELD;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_VKM_TOEGEVOEGD_VAR_VELD.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Vkt_id" 
       ','
          "Fysieke_naam" 
       ','
          "Datum_start" 
       ','
          "Datum_einde" 
       ','
          "Volgorde" 
       ','
          "Verplicht_jn" 
       ','
          "Prompt" 
       ','
          "Min_waarde" 
       ','
          "Max_waarde" 
       ','
          "Default_waarde" 
       ','
          "Helptekst" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_VKM_TOEGEVOEGD_VAR_VELD   end=EFIEOD; 
       format Vkt_id best12. ;
       format Fysieke_naam  ;
       format Datum_start B8601DT19. ;
       format Datum_einde B8601DT19. ;
       format Volgorde best12. ;
       format Verplicht_jn  ;
       format Prompt  ;
       format Min_waarde best12. ;
       format Max_waarde best12. ;
       format Default_waarde  ;
       format Helptekst  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Vkt_id)
         then put "," @;
         else do;
                 if find(Vkt_id,'0A'x) > 0 and 2+klength(Vkt_id) = klength(quote(trim(Vkt_id)))
                   then put '22'x Vkt_id +(-1) '22'x "," @;
                   else put Vkt_id @;
              end;
       if missing(Fysieke_naam)
         then put "," @;
         else do;
                 if find(Fysieke_naam,'0A'x) > 0 and 2+klength(Fysieke_naam) = klength(quote(trim(Fysieke_naam)))
                   then put '22'x Fysieke_naam +(-1) '22'x "," @;
                   else put Fysieke_naam @;
              end;
       if missing(Datum_start)
         then put "," @;
         else do;
                 if find(Datum_start,'0A'x) > 0 and 2+klength(Datum_start) = klength(quote(trim(Datum_start)))
                   then put '22'x Datum_start +(-1) '22'x "," @;
                   else put Datum_start @;
              end;
       if missing(Datum_einde)
         then put "," @;
         else do;
                 if find(Datum_einde,'0A'x) > 0 and 2+klength(Datum_einde) = klength(quote(trim(Datum_einde)))
                   then put '22'x Datum_einde +(-1) '22'x "," @;
                   else put Datum_einde @;
              end;
       if missing(Volgorde)
         then put "," @;
         else do;
                 if find(Volgorde,'0A'x) > 0 and 2+klength(Volgorde) = klength(quote(trim(Volgorde)))
                   then put '22'x Volgorde +(-1) '22'x "," @;
                   else put Volgorde @;
              end;
       if missing(Verplicht_jn)
         then put "," @;
         else do;
                 if find(Verplicht_jn,'0A'x) > 0 and 2+klength(Verplicht_jn) = klength(quote(trim(Verplicht_jn)))
                   then put '22'x Verplicht_jn +(-1) '22'x "," @;
                   else put Verplicht_jn @;
              end;
       if missing(Prompt)
         then put "," @;
         else do;
                 if find(Prompt,'0A'x) > 0 and 2+klength(Prompt) = klength(quote(trim(Prompt)))
                   then put '22'x Prompt +(-1) '22'x "," @;
                   else put Prompt @;
              end;
       if missing(Min_waarde)
         then put "," @;
         else do;
                 if find(Min_waarde,'0A'x) > 0 and 2+klength(Min_waarde) = klength(quote(trim(Min_waarde)))
                   then put '22'x Min_waarde +(-1) '22'x "," @;
                   else put Min_waarde @;
              end;
       if missing(Max_waarde)
         then put "," @;
         else do;
                 if find(Max_waarde,'0A'x) > 0 and 2+klength(Max_waarde) = klength(quote(trim(Max_waarde)))
                   then put '22'x Max_waarde +(-1) '22'x "," @;
                   else put Max_waarde @;
              end;
       if missing(Default_waarde)
         then put "," @;
         else do;
                 if find(Default_waarde,'0A'x) > 0 and 2+klength(Default_waarde) = klength(quote(trim(Default_waarde)))
                   then put '22'x Default_waarde +(-1) '22'x "," @;
                   else put Default_waarde @;
              end;
       if missing(Helptekst)
         then put "," @;
         else do;
                 if find(Helptekst,'0A'x) > 0 and 2+klength(Helptekst) = klength(quote(trim(Helptekst)))
                   then put '22'x Helptekst +(-1) '22'x "," @;
                   else put Helptekst @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_VKM_VAR_GEGEVENS AS
   SELECT t1.BEDRAG_01,
          t1.BEDRAG_02,
          t1.BEDRAG_03,
          t1.BEDRAG_04,
          t1.BEDRAG_05,
          t1.BEDRAG_06,
          t1.BEDRAG_07,
          t1.BEDRAG_08,
          t1.BEDRAG_09,
          t1.BEDRAG_10,
          t1.BEDRAG_11,
          t1.BEDRAG_12,
          t1.BEDRAG_13,
          t1.BEDRAG_14,
          t1.BEDRAG_15,
          t1.BEDRAG_16,
          t1.BEDRAG_17,
          t1.BEDRAG_18,
          t1.BEDRAG_19,
          t1.BEDRAG_20,
          t1.BEDRAG_21,
          t1.BEDRAG_22,
          t1.BEDRAG_23,
          t1.BEDRAG_24,
          t1.BEDRAG_25,
          t1.BEDRAG_26,
          t1.BEDRAG_27,
          t1.BEDRAG_28,
          t1.BEDRAG_29,
          t1.BEDRAG_30,
          t1.BEDRAG_31,
          t1.BEDRAG_32,
          t1.BEDRAG_33,
          t1.BEDRAG_34,
          t1.BEDRAG_35,
          t1.BEDRAG_36,
          t1.BEDRAG_37,
          t1.BEDRAG_38,
          t1.BEDRAG_39,
          t1.BEDRAG_40,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.DATUM_01 FORMAT=B8601DT19. AS DATUM_01,
          t1.DATUM_02 FORMAT=B8601DT19. AS DATUM_02,
          t1.DATUM_03 FORMAT=B8601DT19. AS DATUM_03,
          t1.DATUM_04 FORMAT=B8601DT19. AS DATUM_04,
          t1.DATUM_05 FORMAT=B8601DT19. AS DATUM_05,
          t1.DATUM_06 FORMAT=B8601DT19. AS DATUM_06,
          t1.DATUM_07 FORMAT=B8601DT19. AS DATUM_07,
          t1.DATUM_08 FORMAT=B8601DT19. AS DATUM_08,
          t1.DATUM_09 FORMAT=B8601DT19. AS DATUM_09,
          t1.DATUM_10 FORMAT=B8601DT19. AS DATUM_10,
          t1.DATUM_11 FORMAT=B8601DT19. AS DATUM_11,
          t1.DATUM_12 FORMAT=B8601DT19. AS DATUM_12,
          t1.DATUM_13 FORMAT=B8601DT19. AS DATUM_13,
          t1.DATUM_14 FORMAT=B8601DT19. AS DATUM_14,
          t1.DATUM_15 FORMAT=B8601DT19. AS DATUM_15,
          t1.DATUM_16 FORMAT=B8601DT19. AS DATUM_16,
          t1.DATUM_17 FORMAT=B8601DT19. AS DATUM_17,
          t1.DATUM_18 FORMAT=B8601DT19. AS DATUM_18,
          t1.DATUM_19 FORMAT=B8601DT19. AS DATUM_19,
          t1.DATUM_20 FORMAT=B8601DT19. AS DATUM_20,
          t1.DATUM_AANMAAK FORMAT=B8601DT19. AS DATUM_AANMAAK,
          t1.DROPDOWNLIST_01,
          t1.DROPDOWNLIST_02,
          t1.DROPDOWNLIST_03,
          t1.DROPDOWNLIST_04,
          t1.DROPDOWNLIST_05,
          t1.DROPDOWNLIST_06,
          t1.DROPDOWNLIST_07,
          t1.DROPDOWNLIST_08,
          t1.DROPDOWNLIST_09,
          t1.DROPDOWNLIST_10,
          t1.DROPDOWNLIST_11,
          t1.DROPDOWNLIST_12,
          t1.DROPDOWNLIST_13,
          t1.DROPDOWNLIST_14,
          t1.DROPDOWNLIST_15,
          t1.DROPDOWNLIST_16,
          t1.DROPDOWNLIST_17,
          t1.DROPDOWNLIST_18,
          t1.DROPDOWNLIST_19,
          t1.DROPDOWNLIST_20,
          t1.DROPDOWNLIST_21,
          t1.DROPDOWNLIST_22,
          t1.DROPDOWNLIST_23,
          t1.DROPDOWNLIST_24,
          t1.DROPDOWNLIST_25,
          t1.DROPDOWNLIST_26,
          t1.DROPDOWNLIST_27,
          t1.DROPDOWNLIST_28,
          t1.DROPDOWNLIST_29,
          t1.DROPDOWNLIST_30,
          t1.DROPDOWNLIST_31,
          t1.DROPDOWNLIST_32,
          t1.DROPDOWNLIST_33,
          t1.DROPDOWNLIST_34,
          t1.DROPDOWNLIST_35,
          t1.DROPDOWNLIST_36,
          t1.DROPDOWNLIST_37,
          t1.DROPDOWNLIST_38,
          t1.DROPDOWNLIST_39,
          t1.DROPDOWNLIST_40,
          t1.INT_01,
          t1.INT_02,
          t1.INT_03,
          t1.INT_04,
          t1.INT_05,
          t1.INT_06,
          t1.INT_07,
          t1.INT_08,
          t1.INT_09,
          t1.INT_10,
          t1.INT_11,
          t1.INT_12,
          t1.INT_13,
          t1.INT_14,
          t1.INT_15,
          t1.INT_16,
          t1.INT_17,
          t1.INT_18,
          t1.INT_19,
          t1.INT_20,
          t1.INT_21,
          t1.INT_22,
          t1.INT_23,
          t1.INT_24,
          t1.INT_25,
          t1.INT_26,
          t1.INT_27,
          t1.INT_28,
          t1.INT_29,
          t1.INT_30,
          t1.INT_31,
          t1.INT_32,
          t1.INT_33,
          t1.INT_34,
          t1.INT_35,
          t1.INT_36,
          t1.INT_37,
          t1.INT_38,
          t1.INT_39,
          t1.INT_40,
          t1.JA_NEE_01,
          t1.JA_NEE_02,
          t1.JA_NEE_03,
          t1.JA_NEE_04,
          t1.JA_NEE_05,
          t1.JA_NEE_06,
          t1.JA_NEE_07,
          t1.JA_NEE_08,
          t1.JA_NEE_09,
          t1.JA_NEE_10,
          t1.JA_NEE_11,
          t1.JA_NEE_12,
          t1.JA_NEE_13,
          t1.JA_NEE_14,
          t1.JA_NEE_15,
          t1.JA_NEE_16,
          t1.JA_NEE_17,
          t1.JA_NEE_18,
          t1.JA_NEE_19,
          t1.JA_NEE_20,
          t1.JA_NEE_21,
          t1.JA_NEE_22,
          t1.JA_NEE_23,
          t1.JA_NEE_24,
          t1.JA_NEE_25,
          t1.JA_NEE_26,
          t1.JA_NEE_27,
          t1.JA_NEE_28,
          t1.JA_NEE_29,
          t1.JA_NEE_30,
          t1.JA_NEE_NVT_01,
          t1.JA_NEE_NVT_02,
          t1.JA_NEE_NVT_03,
          t1.JA_NEE_NVT_04,
          t1.JA_NEE_NVT_05,
          t1.JA_NEE_NVT_06,
          t1.JA_NEE_NVT_07,
          t1.JA_NEE_NVT_08,
          t1.JA_NEE_NVT_09,
          t1.JA_NEE_NVT_10,
          t1.JA_NEE_NVT_11,
          t1.JA_NEE_NVT_12,
          t1.JA_NEE_NVT_13,
          t1.JA_NEE_NVT_14,
          t1.JA_NEE_NVT_15,
          t1.JA_NEE_NVT_16,
          t1.JA_NEE_NVT_17,
          t1.JA_NEE_NVT_18,
          t1.JA_NEE_NVT_19,
          t1.JA_NEE_NVT_20,
          t1.JA_NEE_ONB_01,
          t1.JA_NEE_ONB_02,
          t1.JA_NEE_ONB_03,
          t1.JA_NEE_ONB_04,
          t1.JA_NEE_ONB_05,
          t1.JA_NEE_ONB_06,
          t1.JA_NEE_ONB_07,
          t1.JA_NEE_ONB_08,
          t1.JA_NEE_ONB_09,
          t1.JA_NEE_ONB_10,
          t1.JA_NEE_ONB_11,
          t1.JA_NEE_ONB_12,
          t1.JA_NEE_ONB_13,
          t1.JA_NEE_ONB_14,
          t1.JA_NEE_ONB_15,
          t1.JA_NEE_ONB_16,
          t1.JA_NEE_ONB_17,
          t1.JA_NEE_ONB_18,
          t1.JA_NEE_ONB_19,
          t1.JA_NEE_ONB_20,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Mutatie_user,
          t1.NUMERIEK_01,
          t1.NUMERIEK_02,
          t1.NUMERIEK_03,
          t1.NUMERIEK_04,
          t1.NUMERIEK_05,
          t1.NUMERIEK_06,
          t1.NUMERIEK_07,
          t1.NUMERIEK_08,
          t1.NUMERIEK_09,
          t1.NUMERIEK_10,
          t1.NUMERIEK_11,
          t1.NUMERIEK_12,
          t1.NUMERIEK_13,
          t1.NUMERIEK_14,
          t1.NUMERIEK_15,
          t1.NUMERIEK_16,
          t1.NUMERIEK_17,
          t1.NUMERIEK_18,
          t1.NUMERIEK_19,
          t1.NUMERIEK_20,
          t1.NUMERIEK_21,
          t1.NUMERIEK_22,
          t1.NUMERIEK_23,
          t1.NUMERIEK_24,
          t1.NUMERIEK_25,
          t1.NUMERIEK_26,
          t1.NUMERIEK_27,
          t1.NUMERIEK_28,
          t1.NUMERIEK_29,
          t1.NUMERIEK_30,
          t1.NUMERIEK_31,
          t1.NUMERIEK_32,
          t1.NUMERIEK_33,
          t1.NUMERIEK_34,
          t1.NUMERIEK_35,
          t1.NUMERIEK_36,
          t1.NUMERIEK_37,
          t1.NUMERIEK_38,
          t1.NUMERIEK_39,
          t1.NUMERIEK_40,
          t1.OPTIONBUTTON_01,
          t1.OPTIONBUTTON_02,
          t1.OPTIONBUTTON_03,
          t1.OPTIONBUTTON_04,
          t1.OPTIONBUTTON_05,
          t1.OPTIONBUTTON_06,
          t1.OPTIONBUTTON_07,
          t1.OPTIONBUTTON_08,
          t1.OPTIONBUTTON_09,
          t1.OPTIONBUTTON_10,
          t1.OPTIONBUTTON_11,
          t1.OPTIONBUTTON_12,
          t1.OPTIONBUTTON_13,
          t1.OPTIONBUTTON_14,
          t1.OPTIONBUTTON_15,
          t1.OPTIONBUTTON_16,
          t1.OPTIONBUTTON_17,
          t1.OPTIONBUTTON_18,
          t1.OPTIONBUTTON_19,
          t1.OPTIONBUTTON_20,
          t1.TEKSTBLOK_01,
          t1.TEKSTBLOK_02,
          t1.TEKSTBLOK_03,
          t1.TEKSTBLOK_04,
          t1.TEKSTBLOK_05,
          t1.TEKSTBLOK_06,
          t1.TEKSTBLOK_07,
          t1.TEKSTBLOK_08,
          t1.TEKSTBLOK_09,
          t1.TEKSTBLOK_10,
          t1.VARCHAR_60_01,
          t1.VARCHAR_60_02,
          t1.VARCHAR_60_03,
          t1.VARCHAR_60_04,
          t1.VARCHAR_60_05,
          t1.VARCHAR_60_06,
          t1.VARCHAR_60_07,
          t1.VARCHAR_60_08,
          t1.VARCHAR_60_09,
          t1.VARCHAR_60_10,
          t1.VARCHAR_60_11,
          t1.VARCHAR_60_12,
          t1.VARCHAR_60_13,
          t1.VARCHAR_60_14,
          t1.VARCHAR_60_15,
          t1.VARCHAR_60_16,
          t1.VARCHAR_60_17,
          t1.VARCHAR_60_18,
          t1.VARCHAR_60_19,
          t1.VARCHAR_60_20,
          t1.VARCHAR_60_21,
          t1.VARCHAR_60_22,
          t1.VARCHAR_60_23,
          t1.VARCHAR_60_24,
          t1.VARCHAR_60_25,
          t1.VARCHAR_60_26,
          t1.VARCHAR_60_27,
          t1.VARCHAR_60_28,
          t1.VARCHAR_60_29,
          t1.VARCHAR_60_30,
          t1.VARCHAR_60_31,
          t1.VARCHAR_60_32,
          t1.VARCHAR_60_33,
          t1.VARCHAR_60_34,
          t1.VARCHAR_60_35,
          t1.VARCHAR_60_36,
          t1.VARCHAR_60_37,
          t1.VARCHAR_60_38,
          t1.VARCHAR_60_39,
          t1.VARCHAR_60_40,
          t1.VGS_ID,
          t1.'VVG.VKM_VAR_GEGEVENS_DOS'n AS VVG_VKM_VAR_GEGEVENS_DOS,
          t1.'VVG.VKM_VAR_GEGEVENS_PRG'n AS VVG_VKM_VAR_GEGEVENS_PRG,
          t1.'VVG.VKT_ID'n AS VVG_VKT_ID,
          t1.'VVG.DOS_ID'n AS VVG_DOS_ID
     FROM DATAQASG.VKM_VAR_GEGEVENS_TCMG t1;
QUIT;

data WORK.BAS_VKM_VAR_GEGEVENS;
  set WORK.BAS_VKM_VAR_GEGEVENS;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_VKM_VAR_GEGEVENS.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "BEDRAG_01" 
       ','
          "BEDRAG_02" 
       ','
          "BEDRAG_03" 
       ','
          "BEDRAG_04" 
       ','
          "BEDRAG_05" 
       ','
          "BEDRAG_06" 
       ','
          "BEDRAG_07" 
       ','
          "BEDRAG_08" 
       ','
          "BEDRAG_09" 
       ','
          "BEDRAG_10" 
       ','
          "BEDRAG_11" 
       ','
          "BEDRAG_12" 
       ','
          "BEDRAG_13" 
       ','
          "BEDRAG_14" 
       ','
          "BEDRAG_15" 
       ','
          "BEDRAG_16" 
       ','
          "BEDRAG_17" 
       ','
          "BEDRAG_18" 
       ','
          "BEDRAG_19" 
       ','
          "BEDRAG_20" 
       ','
          "BEDRAG_21" 
       ','
          "BEDRAG_22" 
       ','
          "BEDRAG_23" 
       ','
          "BEDRAG_24" 
       ','
          "BEDRAG_25" 
       ','
          "BEDRAG_26" 
       ','
          "BEDRAG_27" 
       ','
          "BEDRAG_28" 
       ','
          "BEDRAG_29" 
       ','
          "BEDRAG_30" 
       ','
          "BEDRAG_31" 
       ','
          "BEDRAG_32" 
       ','
          "BEDRAG_33" 
       ','
          "BEDRAG_34" 
       ','
          "BEDRAG_35" 
       ','
          "BEDRAG_36" 
       ','
          "BEDRAG_37" 
       ','
          "BEDRAG_38" 
       ','
          "BEDRAG_39" 
       ','
          "BEDRAG_40" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "DATUM_01" 
       ','
          "DATUM_02" 
       ','
          "DATUM_03" 
       ','
          "DATUM_04" 
       ','
          "DATUM_05" 
       ','
          "DATUM_06" 
       ','
          "DATUM_07" 
       ','
          "DATUM_08" 
       ','
          "DATUM_09" 
       ','
          "DATUM_10" 
       ','
          "DATUM_11" 
       ','
          "DATUM_12" 
       ','
          "DATUM_13" 
       ','
          "DATUM_14" 
       ','
          "DATUM_15" 
       ','
          "DATUM_16" 
       ','
          "DATUM_17" 
       ','
          "DATUM_18" 
       ','
          "DATUM_19" 
       ','
          "DATUM_20" 
       ','
          "DATUM_AANMAAK" 
       ','
          "DROPDOWNLIST_01" 
       ','
          "DROPDOWNLIST_02" 
       ','
          "DROPDOWNLIST_03" 
       ','
          "DROPDOWNLIST_04" 
       ','
          "DROPDOWNLIST_05" 
       ','
          "DROPDOWNLIST_06" 
       ','
          "DROPDOWNLIST_07" 
       ','
          "DROPDOWNLIST_08" 
       ','
          "DROPDOWNLIST_09" 
       ','
          "DROPDOWNLIST_10" 
       ','
          "DROPDOWNLIST_11" 
       ','
          "DROPDOWNLIST_12" 
       ','
          "DROPDOWNLIST_13" 
       ','
          "DROPDOWNLIST_14" 
       ','
          "DROPDOWNLIST_15" 
       ','
          "DROPDOWNLIST_16" 
       ','
          "DROPDOWNLIST_17" 
       ','
          "DROPDOWNLIST_18" 
       ','
          "DROPDOWNLIST_19" 
       ','
          "DROPDOWNLIST_20" 
       ','
          "DROPDOWNLIST_21" 
       ','
          "DROPDOWNLIST_22" 
       ','
          "DROPDOWNLIST_23" 
       ','
          "DROPDOWNLIST_24" 
       ','
          "DROPDOWNLIST_25" 
       ','
          "DROPDOWNLIST_26" 
       ','
          "DROPDOWNLIST_27" 
       ','
          "DROPDOWNLIST_28" 
       ','
          "DROPDOWNLIST_29" 
       ','
          "DROPDOWNLIST_30" 
       ','
          "DROPDOWNLIST_31" 
       ','
          "DROPDOWNLIST_32" 
       ','
          "DROPDOWNLIST_33" 
       ','
          "DROPDOWNLIST_34" 
       ','
          "DROPDOWNLIST_35" 
       ','
          "DROPDOWNLIST_36" 
       ','
          "DROPDOWNLIST_37" 
       ','
          "DROPDOWNLIST_38" 
       ','
          "DROPDOWNLIST_39" 
       ','
          "DROPDOWNLIST_40" 
       ','
          "INT_01" 
       ','
          "INT_02" 
       ','
          "INT_03" 
       ','
          "INT_04" 
       ','
          "INT_05" 
       ','
          "INT_06" 
       ','
          "INT_07" 
       ','
          "INT_08" 
       ','
          "INT_09" 
       ','
          "INT_10" 
       ','
          "INT_11" 
       ','
          "INT_12" 
       ','
          "INT_13" 
       ','
          "INT_14" 
       ','
          "INT_15" 
       ','
          "INT_16" 
       ','
          "INT_17" 
       ','
          "INT_18" 
       ','
          "INT_19" 
       ','
          "INT_20" 
       ','
          "INT_21" 
       ','
          "INT_22" 
       ','
          "INT_23" 
       ','
          "INT_24" 
       ','
          "INT_25" 
       ','
          "INT_26" 
       ','
          "INT_27" 
       ','
          "INT_28" 
       ','
          "INT_29" 
       ','
          "INT_30" 
       ','
          "INT_31" 
       ','
          "INT_32" 
       ','
          "INT_33" 
       ','
          "INT_34" 
       ','
          "INT_35" 
       ','
          "INT_36" 
       ','
          "INT_37" 
       ','
          "INT_38" 
       ','
          "INT_39" 
       ','
          "INT_40" 
       ','
          "JA_NEE_01" 
       ','
          "JA_NEE_02" 
       ','
          "JA_NEE_03" 
       ','
          "JA_NEE_04" 
       ','
          "JA_NEE_05" 
       ','
          "JA_NEE_06" 
       ','
          "JA_NEE_07" 
       ','
          "JA_NEE_08" 
       ','
          "JA_NEE_09" 
       ','
          "JA_NEE_10" 
       ','
          "JA_NEE_11" 
       ','
          "JA_NEE_12" 
       ','
          "JA_NEE_13" 
       ','
          "JA_NEE_14" 
       ','
          "JA_NEE_15" 
       ','
          "JA_NEE_16" 
       ','
          "JA_NEE_17" 
       ','
          "JA_NEE_18" 
       ','
          "JA_NEE_19" 
       ','
          "JA_NEE_20" 
       ','
          "JA_NEE_21" 
       ','
          "JA_NEE_22" 
       ','
          "JA_NEE_23" 
       ','
          "JA_NEE_24" 
       ','
          "JA_NEE_25" 
       ','
          "JA_NEE_26" 
       ','
          "JA_NEE_27" 
       ','
          "JA_NEE_28" 
       ','
          "JA_NEE_29" 
       ','
          "JA_NEE_30" 
       ','
          "JA_NEE_NVT_01" 
       ','
          "JA_NEE_NVT_02" 
       ','
          "JA_NEE_NVT_03" 
       ','
          "JA_NEE_NVT_04" 
       ','
          "JA_NEE_NVT_05" 
       ','
          "JA_NEE_NVT_06" 
       ','
          "JA_NEE_NVT_07" 
       ','
          "JA_NEE_NVT_08" 
       ','
          "JA_NEE_NVT_09" 
       ','
          "JA_NEE_NVT_10" 
       ','
          "JA_NEE_NVT_11" 
       ','
          "JA_NEE_NVT_12" 
       ','
          "JA_NEE_NVT_13" 
       ','
          "JA_NEE_NVT_14" 
       ','
          "JA_NEE_NVT_15" 
       ','
          "JA_NEE_NVT_16" 
       ','
          "JA_NEE_NVT_17" 
       ','
          "JA_NEE_NVT_18" 
       ','
          "JA_NEE_NVT_19" 
       ','
          "JA_NEE_NVT_20" 
       ','
          "JA_NEE_ONB_01" 
       ','
          "JA_NEE_ONB_02" 
       ','
          "JA_NEE_ONB_03" 
       ','
          "JA_NEE_ONB_04" 
       ','
          "JA_NEE_ONB_05" 
       ','
          "JA_NEE_ONB_06" 
       ','
          "JA_NEE_ONB_07" 
       ','
          "JA_NEE_ONB_08" 
       ','
          "JA_NEE_ONB_09" 
       ','
          "JA_NEE_ONB_10" 
       ','
          "JA_NEE_ONB_11" 
       ','
          "JA_NEE_ONB_12" 
       ','
          "JA_NEE_ONB_13" 
       ','
          "JA_NEE_ONB_14" 
       ','
          "JA_NEE_ONB_15" 
       ','
          "JA_NEE_ONB_16" 
       ','
          "JA_NEE_ONB_17" 
       ','
          "JA_NEE_ONB_18" 
       ','
          "JA_NEE_ONB_19" 
       ','
          "JA_NEE_ONB_20" 
       ','
          "Mutatie_dat" 
       ','
          "Mutatie_user" 
       ','
          "NUMERIEK_01" 
       ','
          "NUMERIEK_02" 
       ','
          "NUMERIEK_03" 
       ','
          "NUMERIEK_04" 
       ','
          "NUMERIEK_05" 
       ','
          "NUMERIEK_06" 
       ','
          "NUMERIEK_07" 
       ','
          "NUMERIEK_08" 
       ','
          "NUMERIEK_09" 
       ','
          "NUMERIEK_10" 
       ','
          "NUMERIEK_11" 
       ','
          "NUMERIEK_12" 
       ','
          "NUMERIEK_13" 
       ','
          "NUMERIEK_14" 
       ','
          "NUMERIEK_15" 
       ','
          "NUMERIEK_16" 
       ','
          "NUMERIEK_17" 
       ','
          "NUMERIEK_18" 
       ','
          "NUMERIEK_19" 
       ','
          "NUMERIEK_20" 
       ','
          "NUMERIEK_21" 
       ','
          "NUMERIEK_22" 
       ','
          "NUMERIEK_23" 
       ','
          "NUMERIEK_24" 
       ','
          "NUMERIEK_25" 
       ','
          "NUMERIEK_26" 
       ','
          "NUMERIEK_27" 
       ','
          "NUMERIEK_28" 
       ','
          "NUMERIEK_29" 
       ','
          "NUMERIEK_30" 
       ','
          "NUMERIEK_31" 
       ','
          "NUMERIEK_32" 
       ','
          "NUMERIEK_33" 
       ','
          "NUMERIEK_34" 
       ','
          "NUMERIEK_35" 
       ','
          "NUMERIEK_36" 
       ','
          "NUMERIEK_37" 
       ','
          "NUMERIEK_38" 
       ','
          "NUMERIEK_39" 
       ','
          "NUMERIEK_40" 
       ','
          "OPTIONBUTTON_01" 
       ','
          "OPTIONBUTTON_02" 
       ','
          "OPTIONBUTTON_03" 
       ','
          "OPTIONBUTTON_04" 
       ','
          "OPTIONBUTTON_05" 
       ','
          "OPTIONBUTTON_06" 
       ','
          "OPTIONBUTTON_07" 
       ','
          "OPTIONBUTTON_08" 
       ','
          "OPTIONBUTTON_09" 
       ','
          "OPTIONBUTTON_10" 
       ','
          "OPTIONBUTTON_11" 
       ','
          "OPTIONBUTTON_12" 
       ','
          "OPTIONBUTTON_13" 
       ','
          "OPTIONBUTTON_14" 
       ','
          "OPTIONBUTTON_15" 
       ','
          "OPTIONBUTTON_16" 
       ','
          "OPTIONBUTTON_17" 
       ','
          "OPTIONBUTTON_18" 
       ','
          "OPTIONBUTTON_19" 
       ','
          "OPTIONBUTTON_20" 
       ','
          "TEKSTBLOK_01" 
       ','
          "TEKSTBLOK_02" 
       ','
          "TEKSTBLOK_03" 
       ','
          "TEKSTBLOK_04" 
       ','
          "TEKSTBLOK_05" 
       ','
          "TEKSTBLOK_06" 
       ','
          "TEKSTBLOK_07" 
       ','
          "TEKSTBLOK_08" 
       ','
          "TEKSTBLOK_09" 
       ','
          "TEKSTBLOK_10" 
       ','
          "VARCHAR_60_01" 
       ','
          "VARCHAR_60_02" 
       ','
          "VARCHAR_60_03" 
       ','
          "VARCHAR_60_04" 
       ','
          "VARCHAR_60_05" 
       ','
          "VARCHAR_60_06" 
       ','
          "VARCHAR_60_07" 
       ','
          "VARCHAR_60_08" 
       ','
          "VARCHAR_60_09" 
       ','
          "VARCHAR_60_10" 
       ','
          "VARCHAR_60_11" 
       ','
          "VARCHAR_60_12" 
       ','
          "VARCHAR_60_13" 
       ','
          "VARCHAR_60_14" 
       ','
          "VARCHAR_60_15" 
       ','
          "VARCHAR_60_16" 
       ','
          "VARCHAR_60_17" 
       ','
          "VARCHAR_60_18" 
       ','
          "VARCHAR_60_19" 
       ','
          "VARCHAR_60_20" 
       ','
          "VARCHAR_60_21" 
       ','
          "VARCHAR_60_22" 
       ','
          "VARCHAR_60_23" 
       ','
          "VARCHAR_60_24" 
       ','
          "VARCHAR_60_25" 
       ','
          "VARCHAR_60_26" 
       ','
          "VARCHAR_60_27" 
       ','
          "VARCHAR_60_28" 
       ','
          "VARCHAR_60_29" 
       ','
          "VARCHAR_60_30" 
       ','
          "VARCHAR_60_31" 
       ','
          "VARCHAR_60_32" 
       ','
          "VARCHAR_60_33" 
       ','
          "VARCHAR_60_34" 
       ','
          "VARCHAR_60_35" 
       ','
          "VARCHAR_60_36" 
       ','
          "VARCHAR_60_37" 
       ','
          "VARCHAR_60_38" 
       ','
          "VARCHAR_60_39" 
       ','
          "VARCHAR_60_40" 
       ','
          "VGS_ID" 
       ','
          "VVG_VKM_VAR_GEGEVENS_DOS" 
       ','
          "VVG_VKM_VAR_GEGEVENS_PRG" 
       ','
          "VVG_VKT_ID" 
       ','
          "VVG_DOS_ID" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_VKM_VAR_GEGEVENS   end=EFIEOD; 
       format BEDRAG_01 best12. ;
       format BEDRAG_02 best12. ;
       format BEDRAG_03 best12. ;
       format BEDRAG_04 best12. ;
       format BEDRAG_05 best12. ;
       format BEDRAG_06 best12. ;
       format BEDRAG_07 best12. ;
       format BEDRAG_08 best12. ;
       format BEDRAG_09 best12. ;
       format BEDRAG_10 best12. ;
       format BEDRAG_11 best12. ;
       format BEDRAG_12 best12. ;
       format BEDRAG_13 best12. ;
       format BEDRAG_14 best12. ;
       format BEDRAG_15 best12. ;
       format BEDRAG_16 best12. ;
       format BEDRAG_17 best12. ;
       format BEDRAG_18 best12. ;
       format BEDRAG_19 best12. ;
       format BEDRAG_20 best12. ;
       format BEDRAG_21 best12. ;
       format BEDRAG_22 best12. ;
       format BEDRAG_23 best12. ;
       format BEDRAG_24 best12. ;
       format BEDRAG_25 best12. ;
       format BEDRAG_26 best12. ;
       format BEDRAG_27 best12. ;
       format BEDRAG_28 best12. ;
       format BEDRAG_29 best12. ;
       format BEDRAG_30 best12. ;
       format BEDRAG_31 best12. ;
       format BEDRAG_32 best12. ;
       format BEDRAG_33 best12. ;
       format BEDRAG_34 best12. ;
       format BEDRAG_35 best12. ;
       format BEDRAG_36 best12. ;
       format BEDRAG_37 best12. ;
       format BEDRAG_38 best12. ;
       format BEDRAG_39 best12. ;
       format BEDRAG_40 best12. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format DATUM_01 B8601DT19. ;
       format DATUM_02 B8601DT19. ;
       format DATUM_03 B8601DT19. ;
       format DATUM_04 B8601DT19. ;
       format DATUM_05 B8601DT19. ;
       format DATUM_06 B8601DT19. ;
       format DATUM_07 B8601DT19. ;
       format DATUM_08 B8601DT19. ;
       format DATUM_09 B8601DT19. ;
       format DATUM_10 B8601DT19. ;
       format DATUM_11 B8601DT19. ;
       format DATUM_12 B8601DT19. ;
       format DATUM_13 B8601DT19. ;
       format DATUM_14 B8601DT19. ;
       format DATUM_15 B8601DT19. ;
       format DATUM_16 B8601DT19. ;
       format DATUM_17 B8601DT19. ;
       format DATUM_18 B8601DT19. ;
       format DATUM_19 B8601DT19. ;
       format DATUM_20 B8601DT19. ;
       format DATUM_AANMAAK B8601DT19. ;
       format DROPDOWNLIST_01  ;
       format DROPDOWNLIST_02  ;
       format DROPDOWNLIST_03  ;
       format DROPDOWNLIST_04  ;
       format DROPDOWNLIST_05  ;
       format DROPDOWNLIST_06  ;
       format DROPDOWNLIST_07  ;
       format DROPDOWNLIST_08  ;
       format DROPDOWNLIST_09  ;
       format DROPDOWNLIST_10  ;
       format DROPDOWNLIST_11  ;
       format DROPDOWNLIST_12  ;
       format DROPDOWNLIST_13  ;
       format DROPDOWNLIST_14  ;
       format DROPDOWNLIST_15  ;
       format DROPDOWNLIST_16  ;
       format DROPDOWNLIST_17  ;
       format DROPDOWNLIST_18  ;
       format DROPDOWNLIST_19  ;
       format DROPDOWNLIST_20  ;
       format DROPDOWNLIST_21  ;
       format DROPDOWNLIST_22  ;
       format DROPDOWNLIST_23  ;
       format DROPDOWNLIST_24  ;
       format DROPDOWNLIST_25  ;
       format DROPDOWNLIST_26  ;
       format DROPDOWNLIST_27  ;
       format DROPDOWNLIST_28  ;
       format DROPDOWNLIST_29  ;
       format DROPDOWNLIST_30  ;
       format DROPDOWNLIST_31  ;
       format DROPDOWNLIST_32  ;
       format DROPDOWNLIST_33  ;
       format DROPDOWNLIST_34  ;
       format DROPDOWNLIST_35  ;
       format DROPDOWNLIST_36  ;
       format DROPDOWNLIST_37  ;
       format DROPDOWNLIST_38  ;
       format DROPDOWNLIST_39  ;
       format DROPDOWNLIST_40  ;
       format INT_01 best12. ;
       format INT_02 best12. ;
       format INT_03 best12. ;
       format INT_04 best12. ;
       format INT_05 best12. ;
       format INT_06 best12. ;
       format INT_07 best12. ;
       format INT_08 best12. ;
       format INT_09 best12. ;
       format INT_10 best12. ;
       format INT_11 best12. ;
       format INT_12 best12. ;
       format INT_13 best12. ;
       format INT_14 best12. ;
       format INT_15 best12. ;
       format INT_16 best12. ;
       format INT_17 best12. ;
       format INT_18 best12. ;
       format INT_19 best12. ;
       format INT_20 best12. ;
       format INT_21 best12. ;
       format INT_22 best12. ;
       format INT_23 best12. ;
       format INT_24 best12. ;
       format INT_25 best12. ;
       format INT_26 best12. ;
       format INT_27 best12. ;
       format INT_28 best12. ;
       format INT_29 best12. ;
       format INT_30 best12. ;
       format INT_31 best12. ;
       format INT_32 best12. ;
       format INT_33 best12. ;
       format INT_34 best12. ;
       format INT_35 best12. ;
       format INT_36 best12. ;
       format INT_37 best12. ;
       format INT_38 best12. ;
       format INT_39 best12. ;
       format INT_40 best12. ;
       format JA_NEE_01  ;
       format JA_NEE_02  ;
       format JA_NEE_03  ;
       format JA_NEE_04  ;
       format JA_NEE_05  ;
       format JA_NEE_06  ;
       format JA_NEE_07  ;
       format JA_NEE_08  ;
       format JA_NEE_09  ;
       format JA_NEE_10  ;
       format JA_NEE_11  ;
       format JA_NEE_12  ;
       format JA_NEE_13  ;
       format JA_NEE_14  ;
       format JA_NEE_15  ;
       format JA_NEE_16  ;
       format JA_NEE_17  ;
       format JA_NEE_18  ;
       format JA_NEE_19  ;
       format JA_NEE_20  ;
       format JA_NEE_21  ;
       format JA_NEE_22  ;
       format JA_NEE_23  ;
       format JA_NEE_24  ;
       format JA_NEE_25  ;
       format JA_NEE_26  ;
       format JA_NEE_27  ;
       format JA_NEE_28  ;
       format JA_NEE_29  ;
       format JA_NEE_30  ;
       format JA_NEE_NVT_01  ;
       format JA_NEE_NVT_02  ;
       format JA_NEE_NVT_03  ;
       format JA_NEE_NVT_04  ;
       format JA_NEE_NVT_05  ;
       format JA_NEE_NVT_06  ;
       format JA_NEE_NVT_07  ;
       format JA_NEE_NVT_08  ;
       format JA_NEE_NVT_09  ;
       format JA_NEE_NVT_10  ;
       format JA_NEE_NVT_11  ;
       format JA_NEE_NVT_12  ;
       format JA_NEE_NVT_13  ;
       format JA_NEE_NVT_14  ;
       format JA_NEE_NVT_15  ;
       format JA_NEE_NVT_16  ;
       format JA_NEE_NVT_17  ;
       format JA_NEE_NVT_18  ;
       format JA_NEE_NVT_19  ;
       format JA_NEE_NVT_20  ;
       format JA_NEE_ONB_01  ;
       format JA_NEE_ONB_02  ;
       format JA_NEE_ONB_03  ;
       format JA_NEE_ONB_04  ;
       format JA_NEE_ONB_05  ;
       format JA_NEE_ONB_06  ;
       format JA_NEE_ONB_07  ;
       format JA_NEE_ONB_08  ;
       format JA_NEE_ONB_09  ;
       format JA_NEE_ONB_10  ;
       format JA_NEE_ONB_11  ;
       format JA_NEE_ONB_12  ;
       format JA_NEE_ONB_13  ;
       format JA_NEE_ONB_14  ;
       format JA_NEE_ONB_15  ;
       format JA_NEE_ONB_16  ;
       format JA_NEE_ONB_17  ;
       format JA_NEE_ONB_18  ;
       format JA_NEE_ONB_19  ;
       format JA_NEE_ONB_20  ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_user  ;
       format NUMERIEK_01 best12. ;
       format NUMERIEK_02 best12. ;
       format NUMERIEK_03 best12. ;
       format NUMERIEK_04 best12. ;
       format NUMERIEK_05 best12. ;
       format NUMERIEK_06 best12. ;
       format NUMERIEK_07 best12. ;
       format NUMERIEK_08 best12. ;
       format NUMERIEK_09 best12. ;
       format NUMERIEK_10 best12. ;
       format NUMERIEK_11 best12. ;
       format NUMERIEK_12 best12. ;
       format NUMERIEK_13 best12. ;
       format NUMERIEK_14 best12. ;
       format NUMERIEK_15 best12. ;
       format NUMERIEK_16 best12. ;
       format NUMERIEK_17 best12. ;
       format NUMERIEK_18 best12. ;
       format NUMERIEK_19 best12. ;
       format NUMERIEK_20 best12. ;
       format NUMERIEK_21 best12. ;
       format NUMERIEK_22 best12. ;
       format NUMERIEK_23 best12. ;
       format NUMERIEK_24 best12. ;
       format NUMERIEK_25 best12. ;
       format NUMERIEK_26 best12. ;
       format NUMERIEK_27 best12. ;
       format NUMERIEK_28 best12. ;
       format NUMERIEK_29 best12. ;
       format NUMERIEK_30 best12. ;
       format NUMERIEK_31 best12. ;
       format NUMERIEK_32 best12. ;
       format NUMERIEK_33 best12. ;
       format NUMERIEK_34 best12. ;
       format NUMERIEK_35 best12. ;
       format NUMERIEK_36 best12. ;
       format NUMERIEK_37 best12. ;
       format NUMERIEK_38 best12. ;
       format NUMERIEK_39 best12. ;
       format NUMERIEK_40 best12. ;
       format OPTIONBUTTON_01  ;
       format OPTIONBUTTON_02  ;
       format OPTIONBUTTON_03  ;
       format OPTIONBUTTON_04  ;
       format OPTIONBUTTON_05  ;
       format OPTIONBUTTON_06  ;
       format OPTIONBUTTON_07  ;
       format OPTIONBUTTON_08  ;
       format OPTIONBUTTON_09  ;
       format OPTIONBUTTON_10  ;
       format OPTIONBUTTON_11  ;
       format OPTIONBUTTON_12  ;
       format OPTIONBUTTON_13  ;
       format OPTIONBUTTON_14  ;
       format OPTIONBUTTON_15  ;
       format OPTIONBUTTON_16  ;
       format OPTIONBUTTON_17  ;
       format OPTIONBUTTON_18  ;
       format OPTIONBUTTON_19  ;
       format OPTIONBUTTON_20  ;
       format TEKSTBLOK_01  ;
       format TEKSTBLOK_02  ;
       format TEKSTBLOK_03  ;
       format TEKSTBLOK_04  ;
       format TEKSTBLOK_05  ;
       format TEKSTBLOK_06  ;
       format TEKSTBLOK_07  ;
       format TEKSTBLOK_08  ;
       format TEKSTBLOK_09  ;
       format TEKSTBLOK_10  ;
       format VARCHAR_60_01  ;
       format VARCHAR_60_02  ;
       format VARCHAR_60_03  ;
       format VARCHAR_60_04  ;
       format VARCHAR_60_05  ;
       format VARCHAR_60_06  ;
       format VARCHAR_60_07  ;
       format VARCHAR_60_08  ;
       format VARCHAR_60_09  ;
       format VARCHAR_60_10  ;
       format VARCHAR_60_11  ;
       format VARCHAR_60_12  ;
       format VARCHAR_60_13  ;
       format VARCHAR_60_14  ;
       format VARCHAR_60_15  ;
       format VARCHAR_60_16  ;
       format VARCHAR_60_17  ;
       format VARCHAR_60_18  ;
       format VARCHAR_60_19  ;
       format VARCHAR_60_20  ;
       format VARCHAR_60_21  ;
       format VARCHAR_60_22  ;
       format VARCHAR_60_23  ;
       format VARCHAR_60_24  ;
       format VARCHAR_60_25  ;
       format VARCHAR_60_26  ;
       format VARCHAR_60_27  ;
       format VARCHAR_60_28  ;
       format VARCHAR_60_29  ;
       format VARCHAR_60_30  ;
       format VARCHAR_60_31  ;
       format VARCHAR_60_32  ;
       format VARCHAR_60_33  ;
       format VARCHAR_60_34  ;
       format VARCHAR_60_35  ;
       format VARCHAR_60_36  ;
       format VARCHAR_60_37  ;
       format VARCHAR_60_38  ;
       format VARCHAR_60_39  ;
       format VARCHAR_60_40  ;
       format VGS_ID best12. ;
       format VVG_VKM_VAR_GEGEVENS_DOS  ;
       format VVG_VKM_VAR_GEGEVENS_PRG  ;
       format VVG_VKT_ID best12. ;
       format VVG_DOS_ID best12. ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(BEDRAG_01)
         then put "," @;
         else do;
                 if find(BEDRAG_01,'0A'x) > 0 and 2+klength(BEDRAG_01) = klength(quote(trim(BEDRAG_01)))
                   then put '22'x BEDRAG_01 +(-1) '22'x "," @;
                   else put BEDRAG_01 @;
              end;
       if missing(BEDRAG_02)
         then put "," @;
         else do;
                 if find(BEDRAG_02,'0A'x) > 0 and 2+klength(BEDRAG_02) = klength(quote(trim(BEDRAG_02)))
                   then put '22'x BEDRAG_02 +(-1) '22'x "," @;
                   else put BEDRAG_02 @;
              end;
       if missing(BEDRAG_03)
         then put "," @;
         else do;
                 if find(BEDRAG_03,'0A'x) > 0 and 2+klength(BEDRAG_03) = klength(quote(trim(BEDRAG_03)))
                   then put '22'x BEDRAG_03 +(-1) '22'x "," @;
                   else put BEDRAG_03 @;
              end;
       if missing(BEDRAG_04)
         then put "," @;
         else do;
                 if find(BEDRAG_04,'0A'x) > 0 and 2+klength(BEDRAG_04) = klength(quote(trim(BEDRAG_04)))
                   then put '22'x BEDRAG_04 +(-1) '22'x "," @;
                   else put BEDRAG_04 @;
              end;
       if missing(BEDRAG_05)
         then put "," @;
         else do;
                 if find(BEDRAG_05,'0A'x) > 0 and 2+klength(BEDRAG_05) = klength(quote(trim(BEDRAG_05)))
                   then put '22'x BEDRAG_05 +(-1) '22'x "," @;
                   else put BEDRAG_05 @;
              end;
       if missing(BEDRAG_06)
         then put "," @;
         else do;
                 if find(BEDRAG_06,'0A'x) > 0 and 2+klength(BEDRAG_06) = klength(quote(trim(BEDRAG_06)))
                   then put '22'x BEDRAG_06 +(-1) '22'x "," @;
                   else put BEDRAG_06 @;
              end;
       if missing(BEDRAG_07)
         then put "," @;
         else do;
                 if find(BEDRAG_07,'0A'x) > 0 and 2+klength(BEDRAG_07) = klength(quote(trim(BEDRAG_07)))
                   then put '22'x BEDRAG_07 +(-1) '22'x "," @;
                   else put BEDRAG_07 @;
              end;
       if missing(BEDRAG_08)
         then put "," @;
         else do;
                 if find(BEDRAG_08,'0A'x) > 0 and 2+klength(BEDRAG_08) = klength(quote(trim(BEDRAG_08)))
                   then put '22'x BEDRAG_08 +(-1) '22'x "," @;
                   else put BEDRAG_08 @;
              end;
       if missing(BEDRAG_09)
         then put "," @;
         else do;
                 if find(BEDRAG_09,'0A'x) > 0 and 2+klength(BEDRAG_09) = klength(quote(trim(BEDRAG_09)))
                   then put '22'x BEDRAG_09 +(-1) '22'x "," @;
                   else put BEDRAG_09 @;
              end;
       if missing(BEDRAG_10)
         then put "," @;
         else do;
                 if find(BEDRAG_10,'0A'x) > 0 and 2+klength(BEDRAG_10) = klength(quote(trim(BEDRAG_10)))
                   then put '22'x BEDRAG_10 +(-1) '22'x "," @;
                   else put BEDRAG_10 @;
              end;
       if missing(BEDRAG_11)
         then put "," @;
         else do;
                 if find(BEDRAG_11,'0A'x) > 0 and 2+klength(BEDRAG_11) = klength(quote(trim(BEDRAG_11)))
                   then put '22'x BEDRAG_11 +(-1) '22'x "," @;
                   else put BEDRAG_11 @;
              end;
       if missing(BEDRAG_12)
         then put "," @;
         else do;
                 if find(BEDRAG_12,'0A'x) > 0 and 2+klength(BEDRAG_12) = klength(quote(trim(BEDRAG_12)))
                   then put '22'x BEDRAG_12 +(-1) '22'x "," @;
                   else put BEDRAG_12 @;
              end;
       if missing(BEDRAG_13)
         then put "," @;
         else do;
                 if find(BEDRAG_13,'0A'x) > 0 and 2+klength(BEDRAG_13) = klength(quote(trim(BEDRAG_13)))
                   then put '22'x BEDRAG_13 +(-1) '22'x "," @;
                   else put BEDRAG_13 @;
              end;
       if missing(BEDRAG_14)
         then put "," @;
         else do;
                 if find(BEDRAG_14,'0A'x) > 0 and 2+klength(BEDRAG_14) = klength(quote(trim(BEDRAG_14)))
                   then put '22'x BEDRAG_14 +(-1) '22'x "," @;
                   else put BEDRAG_14 @;
              end;
       if missing(BEDRAG_15)
         then put "," @;
         else do;
                 if find(BEDRAG_15,'0A'x) > 0 and 2+klength(BEDRAG_15) = klength(quote(trim(BEDRAG_15)))
                   then put '22'x BEDRAG_15 +(-1) '22'x "," @;
                   else put BEDRAG_15 @;
              end;
       if missing(BEDRAG_16)
         then put "," @;
         else do;
                 if find(BEDRAG_16,'0A'x) > 0 and 2+klength(BEDRAG_16) = klength(quote(trim(BEDRAG_16)))
                   then put '22'x BEDRAG_16 +(-1) '22'x "," @;
                   else put BEDRAG_16 @;
              end;
       if missing(BEDRAG_17)
         then put "," @;
         else do;
                 if find(BEDRAG_17,'0A'x) > 0 and 2+klength(BEDRAG_17) = klength(quote(trim(BEDRAG_17)))
                   then put '22'x BEDRAG_17 +(-1) '22'x "," @;
                   else put BEDRAG_17 @;
              end;
       if missing(BEDRAG_18)
         then put "," @;
         else do;
                 if find(BEDRAG_18,'0A'x) > 0 and 2+klength(BEDRAG_18) = klength(quote(trim(BEDRAG_18)))
                   then put '22'x BEDRAG_18 +(-1) '22'x "," @;
                   else put BEDRAG_18 @;
              end;
       if missing(BEDRAG_19)
         then put "," @;
         else do;
                 if find(BEDRAG_19,'0A'x) > 0 and 2+klength(BEDRAG_19) = klength(quote(trim(BEDRAG_19)))
                   then put '22'x BEDRAG_19 +(-1) '22'x "," @;
                   else put BEDRAG_19 @;
              end;
       if missing(BEDRAG_20)
         then put "," @;
         else do;
                 if find(BEDRAG_20,'0A'x) > 0 and 2+klength(BEDRAG_20) = klength(quote(trim(BEDRAG_20)))
                   then put '22'x BEDRAG_20 +(-1) '22'x "," @;
                   else put BEDRAG_20 @;
              end;
       if missing(BEDRAG_21)
         then put "," @;
         else do;
                 if find(BEDRAG_21,'0A'x) > 0 and 2+klength(BEDRAG_21) = klength(quote(trim(BEDRAG_21)))
                   then put '22'x BEDRAG_21 +(-1) '22'x "," @;
                   else put BEDRAG_21 @;
              end;
       if missing(BEDRAG_22)
         then put "," @;
         else do;
                 if find(BEDRAG_22,'0A'x) > 0 and 2+klength(BEDRAG_22) = klength(quote(trim(BEDRAG_22)))
                   then put '22'x BEDRAG_22 +(-1) '22'x "," @;
                   else put BEDRAG_22 @;
              end;
       if missing(BEDRAG_23)
         then put "," @;
         else do;
                 if find(BEDRAG_23,'0A'x) > 0 and 2+klength(BEDRAG_23) = klength(quote(trim(BEDRAG_23)))
                   then put '22'x BEDRAG_23 +(-1) '22'x "," @;
                   else put BEDRAG_23 @;
              end;
       if missing(BEDRAG_24)
         then put "," @;
         else do;
                 if find(BEDRAG_24,'0A'x) > 0 and 2+klength(BEDRAG_24) = klength(quote(trim(BEDRAG_24)))
                   then put '22'x BEDRAG_24 +(-1) '22'x "," @;
                   else put BEDRAG_24 @;
              end;
       if missing(BEDRAG_25)
         then put "," @;
         else do;
                 if find(BEDRAG_25,'0A'x) > 0 and 2+klength(BEDRAG_25) = klength(quote(trim(BEDRAG_25)))
                   then put '22'x BEDRAG_25 +(-1) '22'x "," @;
                   else put BEDRAG_25 @;
              end;
       if missing(BEDRAG_26)
         then put "," @;
         else do;
                 if find(BEDRAG_26,'0A'x) > 0 and 2+klength(BEDRAG_26) = klength(quote(trim(BEDRAG_26)))
                   then put '22'x BEDRAG_26 +(-1) '22'x "," @;
                   else put BEDRAG_26 @;
              end;
       if missing(BEDRAG_27)
         then put "," @;
         else do;
                 if find(BEDRAG_27,'0A'x) > 0 and 2+klength(BEDRAG_27) = klength(quote(trim(BEDRAG_27)))
                   then put '22'x BEDRAG_27 +(-1) '22'x "," @;
                   else put BEDRAG_27 @;
              end;
       if missing(BEDRAG_28)
         then put "," @;
         else do;
                 if find(BEDRAG_28,'0A'x) > 0 and 2+klength(BEDRAG_28) = klength(quote(trim(BEDRAG_28)))
                   then put '22'x BEDRAG_28 +(-1) '22'x "," @;
                   else put BEDRAG_28 @;
              end;
       if missing(BEDRAG_29)
         then put "," @;
         else do;
                 if find(BEDRAG_29,'0A'x) > 0 and 2+klength(BEDRAG_29) = klength(quote(trim(BEDRAG_29)))
                   then put '22'x BEDRAG_29 +(-1) '22'x "," @;
                   else put BEDRAG_29 @;
              end;
       if missing(BEDRAG_30)
         then put "," @;
         else do;
                 if find(BEDRAG_30,'0A'x) > 0 and 2+klength(BEDRAG_30) = klength(quote(trim(BEDRAG_30)))
                   then put '22'x BEDRAG_30 +(-1) '22'x "," @;
                   else put BEDRAG_30 @;
              end;
       if missing(BEDRAG_31)
         then put "," @;
         else do;
                 if find(BEDRAG_31,'0A'x) > 0 and 2+klength(BEDRAG_31) = klength(quote(trim(BEDRAG_31)))
                   then put '22'x BEDRAG_31 +(-1) '22'x "," @;
                   else put BEDRAG_31 @;
              end;
       if missing(BEDRAG_32)
         then put "," @;
         else do;
                 if find(BEDRAG_32,'0A'x) > 0 and 2+klength(BEDRAG_32) = klength(quote(trim(BEDRAG_32)))
                   then put '22'x BEDRAG_32 +(-1) '22'x "," @;
                   else put BEDRAG_32 @;
              end;
       if missing(BEDRAG_33)
         then put "," @;
         else do;
                 if find(BEDRAG_33,'0A'x) > 0 and 2+klength(BEDRAG_33) = klength(quote(trim(BEDRAG_33)))
                   then put '22'x BEDRAG_33 +(-1) '22'x "," @;
                   else put BEDRAG_33 @;
              end;
       if missing(BEDRAG_34)
         then put "," @;
         else do;
                 if find(BEDRAG_34,'0A'x) > 0 and 2+klength(BEDRAG_34) = klength(quote(trim(BEDRAG_34)))
                   then put '22'x BEDRAG_34 +(-1) '22'x "," @;
                   else put BEDRAG_34 @;
              end;
       if missing(BEDRAG_35)
         then put "," @;
         else do;
                 if find(BEDRAG_35,'0A'x) > 0 and 2+klength(BEDRAG_35) = klength(quote(trim(BEDRAG_35)))
                   then put '22'x BEDRAG_35 +(-1) '22'x "," @;
                   else put BEDRAG_35 @;
              end;
       if missing(BEDRAG_36)
         then put "," @;
         else do;
                 if find(BEDRAG_36,'0A'x) > 0 and 2+klength(BEDRAG_36) = klength(quote(trim(BEDRAG_36)))
                   then put '22'x BEDRAG_36 +(-1) '22'x "," @;
                   else put BEDRAG_36 @;
              end;
       if missing(BEDRAG_37)
         then put "," @;
         else do;
                 if find(BEDRAG_37,'0A'x) > 0 and 2+klength(BEDRAG_37) = klength(quote(trim(BEDRAG_37)))
                   then put '22'x BEDRAG_37 +(-1) '22'x "," @;
                   else put BEDRAG_37 @;
              end;
       if missing(BEDRAG_38)
         then put "," @;
         else do;
                 if find(BEDRAG_38,'0A'x) > 0 and 2+klength(BEDRAG_38) = klength(quote(trim(BEDRAG_38)))
                   then put '22'x BEDRAG_38 +(-1) '22'x "," @;
                   else put BEDRAG_38 @;
              end;
       if missing(BEDRAG_39)
         then put "," @;
         else do;
                 if find(BEDRAG_39,'0A'x) > 0 and 2+klength(BEDRAG_39) = klength(quote(trim(BEDRAG_39)))
                   then put '22'x BEDRAG_39 +(-1) '22'x "," @;
                   else put BEDRAG_39 @;
              end;
       if missing(BEDRAG_40)
         then put "," @;
         else do;
                 if find(BEDRAG_40,'0A'x) > 0 and 2+klength(BEDRAG_40) = klength(quote(trim(BEDRAG_40)))
                   then put '22'x BEDRAG_40 +(-1) '22'x "," @;
                   else put BEDRAG_40 @;
              end;
       if missing(Creatie_dat)
         then put "," @;
         else do;
                 if find(Creatie_dat,'0A'x) > 0 and 2+klength(Creatie_dat) = klength(quote(trim(Creatie_dat)))
                   then put '22'x Creatie_dat +(-1) '22'x "," @;
                   else put Creatie_dat @;
              end;
       if missing(Creatie_user)
         then put "," @;
         else do;
                 if find(Creatie_user,'0A'x) > 0 and 2+klength(Creatie_user) = klength(quote(trim(Creatie_user)))
                   then put '22'x Creatie_user +(-1) '22'x "," @;
                   else put Creatie_user @;
              end;
       if missing(DATUM_01)
         then put "," @;
         else do;
                 if find(DATUM_01,'0A'x) > 0 and 2+klength(DATUM_01) = klength(quote(trim(DATUM_01)))
                   then put '22'x DATUM_01 +(-1) '22'x "," @;
                   else put DATUM_01 @;
              end;
       if missing(DATUM_02)
         then put "," @;
         else do;
                 if find(DATUM_02,'0A'x) > 0 and 2+klength(DATUM_02) = klength(quote(trim(DATUM_02)))
                   then put '22'x DATUM_02 +(-1) '22'x "," @;
                   else put DATUM_02 @;
              end;
       if missing(DATUM_03)
         then put "," @;
         else do;
                 if find(DATUM_03,'0A'x) > 0 and 2+klength(DATUM_03) = klength(quote(trim(DATUM_03)))
                   then put '22'x DATUM_03 +(-1) '22'x "," @;
                   else put DATUM_03 @;
              end;
       if missing(DATUM_04)
         then put "," @;
         else do;
                 if find(DATUM_04,'0A'x) > 0 and 2+klength(DATUM_04) = klength(quote(trim(DATUM_04)))
                   then put '22'x DATUM_04 +(-1) '22'x "," @;
                   else put DATUM_04 @;
              end;
       if missing(DATUM_05)
         then put "," @;
         else do;
                 if find(DATUM_05,'0A'x) > 0 and 2+klength(DATUM_05) = klength(quote(trim(DATUM_05)))
                   then put '22'x DATUM_05 +(-1) '22'x "," @;
                   else put DATUM_05 @;
              end;
       if missing(DATUM_06)
         then put "," @;
         else do;
                 if find(DATUM_06,'0A'x) > 0 and 2+klength(DATUM_06) = klength(quote(trim(DATUM_06)))
                   then put '22'x DATUM_06 +(-1) '22'x "," @;
                   else put DATUM_06 @;
              end;
       if missing(DATUM_07)
         then put "," @;
         else do;
                 if find(DATUM_07,'0A'x) > 0 and 2+klength(DATUM_07) = klength(quote(trim(DATUM_07)))
                   then put '22'x DATUM_07 +(-1) '22'x "," @;
                   else put DATUM_07 @;
              end;
       if missing(DATUM_08)
         then put "," @;
         else do;
                 if find(DATUM_08,'0A'x) > 0 and 2+klength(DATUM_08) = klength(quote(trim(DATUM_08)))
                   then put '22'x DATUM_08 +(-1) '22'x "," @;
                   else put DATUM_08 @;
              end;
       if missing(DATUM_09)
         then put "," @;
         else do;
                 if find(DATUM_09,'0A'x) > 0 and 2+klength(DATUM_09) = klength(quote(trim(DATUM_09)))
                   then put '22'x DATUM_09 +(-1) '22'x "," @;
                   else put DATUM_09 @;
              end;
       if missing(DATUM_10)
         then put "," @;
         else do;
                 if find(DATUM_10,'0A'x) > 0 and 2+klength(DATUM_10) = klength(quote(trim(DATUM_10)))
                   then put '22'x DATUM_10 +(-1) '22'x "," @;
                   else put DATUM_10 @;
              end;
       if missing(DATUM_11)
         then put "," @;
         else do;
                 if find(DATUM_11,'0A'x) > 0 and 2+klength(DATUM_11) = klength(quote(trim(DATUM_11)))
                   then put '22'x DATUM_11 +(-1) '22'x "," @;
                   else put DATUM_11 @;
              end;
       if missing(DATUM_12)
         then put "," @;
         else do;
                 if find(DATUM_12,'0A'x) > 0 and 2+klength(DATUM_12) = klength(quote(trim(DATUM_12)))
                   then put '22'x DATUM_12 +(-1) '22'x "," @;
                   else put DATUM_12 @;
              end;
       if missing(DATUM_13)
         then put "," @;
         else do;
                 if find(DATUM_13,'0A'x) > 0 and 2+klength(DATUM_13) = klength(quote(trim(DATUM_13)))
                   then put '22'x DATUM_13 +(-1) '22'x "," @;
                   else put DATUM_13 @;
              end;
       if missing(DATUM_14)
         then put "," @;
         else do;
                 if find(DATUM_14,'0A'x) > 0 and 2+klength(DATUM_14) = klength(quote(trim(DATUM_14)))
                   then put '22'x DATUM_14 +(-1) '22'x "," @;
                   else put DATUM_14 @;
              end;
       if missing(DATUM_15)
         then put "," @;
         else do;
                 if find(DATUM_15,'0A'x) > 0 and 2+klength(DATUM_15) = klength(quote(trim(DATUM_15)))
                   then put '22'x DATUM_15 +(-1) '22'x "," @;
                   else put DATUM_15 @;
              end;
       if missing(DATUM_16)
         then put "," @;
         else do;
                 if find(DATUM_16,'0A'x) > 0 and 2+klength(DATUM_16) = klength(quote(trim(DATUM_16)))
                   then put '22'x DATUM_16 +(-1) '22'x "," @;
                   else put DATUM_16 @;
              end;
       if missing(DATUM_17)
         then put "," @;
         else do;
                 if find(DATUM_17,'0A'x) > 0 and 2+klength(DATUM_17) = klength(quote(trim(DATUM_17)))
                   then put '22'x DATUM_17 +(-1) '22'x "," @;
                   else put DATUM_17 @;
              end;
       if missing(DATUM_18)
         then put "," @;
         else do;
                 if find(DATUM_18,'0A'x) > 0 and 2+klength(DATUM_18) = klength(quote(trim(DATUM_18)))
                   then put '22'x DATUM_18 +(-1) '22'x "," @;
                   else put DATUM_18 @;
              end;
       if missing(DATUM_19)
         then put "," @;
         else do;
                 if find(DATUM_19,'0A'x) > 0 and 2+klength(DATUM_19) = klength(quote(trim(DATUM_19)))
                   then put '22'x DATUM_19 +(-1) '22'x "," @;
                   else put DATUM_19 @;
              end;
       if missing(DATUM_20)
         then put "," @;
         else do;
                 if find(DATUM_20,'0A'x) > 0 and 2+klength(DATUM_20) = klength(quote(trim(DATUM_20)))
                   then put '22'x DATUM_20 +(-1) '22'x "," @;
                   else put DATUM_20 @;
              end;
       if missing(DATUM_AANMAAK)
         then put "," @;
         else do;
                 if find(DATUM_AANMAAK,'0A'x) > 0 and 2+klength(DATUM_AANMAAK) = klength(quote(trim(DATUM_AANMAAK)))
                   then put '22'x DATUM_AANMAAK +(-1) '22'x "," @;
                   else put DATUM_AANMAAK @;
              end;
       if missing(DROPDOWNLIST_01)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_01,'0A'x) > 0 and 2+klength(DROPDOWNLIST_01) = klength(quote(trim(DROPDOWNLIST_01)))
                   then put '22'x DROPDOWNLIST_01 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_01 @;
              end;
       if missing(DROPDOWNLIST_02)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_02,'0A'x) > 0 and 2+klength(DROPDOWNLIST_02) = klength(quote(trim(DROPDOWNLIST_02)))
                   then put '22'x DROPDOWNLIST_02 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_02 @;
              end;
       if missing(DROPDOWNLIST_03)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_03,'0A'x) > 0 and 2+klength(DROPDOWNLIST_03) = klength(quote(trim(DROPDOWNLIST_03)))
                   then put '22'x DROPDOWNLIST_03 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_03 @;
              end;
       if missing(DROPDOWNLIST_04)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_04,'0A'x) > 0 and 2+klength(DROPDOWNLIST_04) = klength(quote(trim(DROPDOWNLIST_04)))
                   then put '22'x DROPDOWNLIST_04 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_04 @;
              end;
       if missing(DROPDOWNLIST_05)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_05,'0A'x) > 0 and 2+klength(DROPDOWNLIST_05) = klength(quote(trim(DROPDOWNLIST_05)))
                   then put '22'x DROPDOWNLIST_05 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_05 @;
              end;
       if missing(DROPDOWNLIST_06)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_06,'0A'x) > 0 and 2+klength(DROPDOWNLIST_06) = klength(quote(trim(DROPDOWNLIST_06)))
                   then put '22'x DROPDOWNLIST_06 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_06 @;
              end;
       if missing(DROPDOWNLIST_07)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_07,'0A'x) > 0 and 2+klength(DROPDOWNLIST_07) = klength(quote(trim(DROPDOWNLIST_07)))
                   then put '22'x DROPDOWNLIST_07 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_07 @;
              end;
       if missing(DROPDOWNLIST_08)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_08,'0A'x) > 0 and 2+klength(DROPDOWNLIST_08) = klength(quote(trim(DROPDOWNLIST_08)))
                   then put '22'x DROPDOWNLIST_08 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_08 @;
              end;
       if missing(DROPDOWNLIST_09)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_09,'0A'x) > 0 and 2+klength(DROPDOWNLIST_09) = klength(quote(trim(DROPDOWNLIST_09)))
                   then put '22'x DROPDOWNLIST_09 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_09 @;
              end;
       if missing(DROPDOWNLIST_10)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_10,'0A'x) > 0 and 2+klength(DROPDOWNLIST_10) = klength(quote(trim(DROPDOWNLIST_10)))
                   then put '22'x DROPDOWNLIST_10 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_10 @;
              end;
       if missing(DROPDOWNLIST_11)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_11,'0A'x) > 0 and 2+klength(DROPDOWNLIST_11) = klength(quote(trim(DROPDOWNLIST_11)))
                   then put '22'x DROPDOWNLIST_11 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_11 @;
              end;
       if missing(DROPDOWNLIST_12)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_12,'0A'x) > 0 and 2+klength(DROPDOWNLIST_12) = klength(quote(trim(DROPDOWNLIST_12)))
                   then put '22'x DROPDOWNLIST_12 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_12 @;
              end;
       if missing(DROPDOWNLIST_13)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_13,'0A'x) > 0 and 2+klength(DROPDOWNLIST_13) = klength(quote(trim(DROPDOWNLIST_13)))
                   then put '22'x DROPDOWNLIST_13 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_13 @;
              end;
       if missing(DROPDOWNLIST_14)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_14,'0A'x) > 0 and 2+klength(DROPDOWNLIST_14) = klength(quote(trim(DROPDOWNLIST_14)))
                   then put '22'x DROPDOWNLIST_14 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_14 @;
              end;
       if missing(DROPDOWNLIST_15)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_15,'0A'x) > 0 and 2+klength(DROPDOWNLIST_15) = klength(quote(trim(DROPDOWNLIST_15)))
                   then put '22'x DROPDOWNLIST_15 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_15 @;
              end;
       if missing(DROPDOWNLIST_16)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_16,'0A'x) > 0 and 2+klength(DROPDOWNLIST_16) = klength(quote(trim(DROPDOWNLIST_16)))
                   then put '22'x DROPDOWNLIST_16 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_16 @;
              end;
       if missing(DROPDOWNLIST_17)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_17,'0A'x) > 0 and 2+klength(DROPDOWNLIST_17) = klength(quote(trim(DROPDOWNLIST_17)))
                   then put '22'x DROPDOWNLIST_17 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_17 @;
              end;
       if missing(DROPDOWNLIST_18)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_18,'0A'x) > 0 and 2+klength(DROPDOWNLIST_18) = klength(quote(trim(DROPDOWNLIST_18)))
                   then put '22'x DROPDOWNLIST_18 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_18 @;
              end;
       if missing(DROPDOWNLIST_19)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_19,'0A'x) > 0 and 2+klength(DROPDOWNLIST_19) = klength(quote(trim(DROPDOWNLIST_19)))
                   then put '22'x DROPDOWNLIST_19 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_19 @;
              end;
       if missing(DROPDOWNLIST_20)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_20,'0A'x) > 0 and 2+klength(DROPDOWNLIST_20) = klength(quote(trim(DROPDOWNLIST_20)))
                   then put '22'x DROPDOWNLIST_20 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_20 @;
              end;
       if missing(DROPDOWNLIST_21)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_21,'0A'x) > 0 and 2+klength(DROPDOWNLIST_21) = klength(quote(trim(DROPDOWNLIST_21)))
                   then put '22'x DROPDOWNLIST_21 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_21 @;
              end;
       if missing(DROPDOWNLIST_22)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_22,'0A'x) > 0 and 2+klength(DROPDOWNLIST_22) = klength(quote(trim(DROPDOWNLIST_22)))
                   then put '22'x DROPDOWNLIST_22 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_22 @;
              end;
       if missing(DROPDOWNLIST_23)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_23,'0A'x) > 0 and 2+klength(DROPDOWNLIST_23) = klength(quote(trim(DROPDOWNLIST_23)))
                   then put '22'x DROPDOWNLIST_23 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_23 @;
              end;
       if missing(DROPDOWNLIST_24)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_24,'0A'x) > 0 and 2+klength(DROPDOWNLIST_24) = klength(quote(trim(DROPDOWNLIST_24)))
                   then put '22'x DROPDOWNLIST_24 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_24 @;
              end;
       if missing(DROPDOWNLIST_25)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_25,'0A'x) > 0 and 2+klength(DROPDOWNLIST_25) = klength(quote(trim(DROPDOWNLIST_25)))
                   then put '22'x DROPDOWNLIST_25 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_25 @;
              end;
       if missing(DROPDOWNLIST_26)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_26,'0A'x) > 0 and 2+klength(DROPDOWNLIST_26) = klength(quote(trim(DROPDOWNLIST_26)))
                   then put '22'x DROPDOWNLIST_26 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_26 @;
              end;
       if missing(DROPDOWNLIST_27)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_27,'0A'x) > 0 and 2+klength(DROPDOWNLIST_27) = klength(quote(trim(DROPDOWNLIST_27)))
                   then put '22'x DROPDOWNLIST_27 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_27 @;
              end;
       if missing(DROPDOWNLIST_28)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_28,'0A'x) > 0 and 2+klength(DROPDOWNLIST_28) = klength(quote(trim(DROPDOWNLIST_28)))
                   then put '22'x DROPDOWNLIST_28 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_28 @;
              end;
       if missing(DROPDOWNLIST_29)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_29,'0A'x) > 0 and 2+klength(DROPDOWNLIST_29) = klength(quote(trim(DROPDOWNLIST_29)))
                   then put '22'x DROPDOWNLIST_29 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_29 @;
              end;
       if missing(DROPDOWNLIST_30)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_30,'0A'x) > 0 and 2+klength(DROPDOWNLIST_30) = klength(quote(trim(DROPDOWNLIST_30)))
                   then put '22'x DROPDOWNLIST_30 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_30 @;
              end;
       if missing(DROPDOWNLIST_31)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_31,'0A'x) > 0 and 2+klength(DROPDOWNLIST_31) = klength(quote(trim(DROPDOWNLIST_31)))
                   then put '22'x DROPDOWNLIST_31 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_31 @;
              end;
       if missing(DROPDOWNLIST_32)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_32,'0A'x) > 0 and 2+klength(DROPDOWNLIST_32) = klength(quote(trim(DROPDOWNLIST_32)))
                   then put '22'x DROPDOWNLIST_32 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_32 @;
              end;
       if missing(DROPDOWNLIST_33)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_33,'0A'x) > 0 and 2+klength(DROPDOWNLIST_33) = klength(quote(trim(DROPDOWNLIST_33)))
                   then put '22'x DROPDOWNLIST_33 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_33 @;
              end;
       if missing(DROPDOWNLIST_34)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_34,'0A'x) > 0 and 2+klength(DROPDOWNLIST_34) = klength(quote(trim(DROPDOWNLIST_34)))
                   then put '22'x DROPDOWNLIST_34 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_34 @;
              end;
       if missing(DROPDOWNLIST_35)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_35,'0A'x) > 0 and 2+klength(DROPDOWNLIST_35) = klength(quote(trim(DROPDOWNLIST_35)))
                   then put '22'x DROPDOWNLIST_35 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_35 @;
              end;
       if missing(DROPDOWNLIST_36)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_36,'0A'x) > 0 and 2+klength(DROPDOWNLIST_36) = klength(quote(trim(DROPDOWNLIST_36)))
                   then put '22'x DROPDOWNLIST_36 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_36 @;
              end;
       if missing(DROPDOWNLIST_37)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_37,'0A'x) > 0 and 2+klength(DROPDOWNLIST_37) = klength(quote(trim(DROPDOWNLIST_37)))
                   then put '22'x DROPDOWNLIST_37 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_37 @;
              end;
       if missing(DROPDOWNLIST_38)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_38,'0A'x) > 0 and 2+klength(DROPDOWNLIST_38) = klength(quote(trim(DROPDOWNLIST_38)))
                   then put '22'x DROPDOWNLIST_38 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_38 @;
              end;
       if missing(DROPDOWNLIST_39)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_39,'0A'x) > 0 and 2+klength(DROPDOWNLIST_39) = klength(quote(trim(DROPDOWNLIST_39)))
                   then put '22'x DROPDOWNLIST_39 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_39 @;
              end;
       if missing(DROPDOWNLIST_40)
         then put "," @;
         else do;
                 if find(DROPDOWNLIST_40,'0A'x) > 0 and 2+klength(DROPDOWNLIST_40) = klength(quote(trim(DROPDOWNLIST_40)))
                   then put '22'x DROPDOWNLIST_40 +(-1) '22'x "," @;
                   else put DROPDOWNLIST_40 @;
              end;
       if missing(INT_01)
         then put "," @;
         else do;
                 if find(INT_01,'0A'x) > 0 and 2+klength(INT_01) = klength(quote(trim(INT_01)))
                   then put '22'x INT_01 +(-1) '22'x "," @;
                   else put INT_01 @;
              end;
       if missing(INT_02)
         then put "," @;
         else do;
                 if find(INT_02,'0A'x) > 0 and 2+klength(INT_02) = klength(quote(trim(INT_02)))
                   then put '22'x INT_02 +(-1) '22'x "," @;
                   else put INT_02 @;
              end;
       if missing(INT_03)
         then put "," @;
         else do;
                 if find(INT_03,'0A'x) > 0 and 2+klength(INT_03) = klength(quote(trim(INT_03)))
                   then put '22'x INT_03 +(-1) '22'x "," @;
                   else put INT_03 @;
              end;
       if missing(INT_04)
         then put "," @;
         else do;
                 if find(INT_04,'0A'x) > 0 and 2+klength(INT_04) = klength(quote(trim(INT_04)))
                   then put '22'x INT_04 +(-1) '22'x "," @;
                   else put INT_04 @;
              end;
       if missing(INT_05)
         then put "," @;
         else do;
                 if find(INT_05,'0A'x) > 0 and 2+klength(INT_05) = klength(quote(trim(INT_05)))
                   then put '22'x INT_05 +(-1) '22'x "," @;
                   else put INT_05 @;
              end;
       if missing(INT_06)
         then put "," @;
         else do;
                 if find(INT_06,'0A'x) > 0 and 2+klength(INT_06) = klength(quote(trim(INT_06)))
                   then put '22'x INT_06 +(-1) '22'x "," @;
                   else put INT_06 @;
              end;
       if missing(INT_07)
         then put "," @;
         else do;
                 if find(INT_07,'0A'x) > 0 and 2+klength(INT_07) = klength(quote(trim(INT_07)))
                   then put '22'x INT_07 +(-1) '22'x "," @;
                   else put INT_07 @;
              end;
       if missing(INT_08)
         then put "," @;
         else do;
                 if find(INT_08,'0A'x) > 0 and 2+klength(INT_08) = klength(quote(trim(INT_08)))
                   then put '22'x INT_08 +(-1) '22'x "," @;
                   else put INT_08 @;
              end;
       if missing(INT_09)
         then put "," @;
         else do;
                 if find(INT_09,'0A'x) > 0 and 2+klength(INT_09) = klength(quote(trim(INT_09)))
                   then put '22'x INT_09 +(-1) '22'x "," @;
                   else put INT_09 @;
              end;
       if missing(INT_10)
         then put "," @;
         else do;
                 if find(INT_10,'0A'x) > 0 and 2+klength(INT_10) = klength(quote(trim(INT_10)))
                   then put '22'x INT_10 +(-1) '22'x "," @;
                   else put INT_10 @;
              end;
       if missing(INT_11)
         then put "," @;
         else do;
                 if find(INT_11,'0A'x) > 0 and 2+klength(INT_11) = klength(quote(trim(INT_11)))
                   then put '22'x INT_11 +(-1) '22'x "," @;
                   else put INT_11 @;
              end;
       if missing(INT_12)
         then put "," @;
         else do;
                 if find(INT_12,'0A'x) > 0 and 2+klength(INT_12) = klength(quote(trim(INT_12)))
                   then put '22'x INT_12 +(-1) '22'x "," @;
                   else put INT_12 @;
              end;
       if missing(INT_13)
         then put "," @;
         else do;
                 if find(INT_13,'0A'x) > 0 and 2+klength(INT_13) = klength(quote(trim(INT_13)))
                   then put '22'x INT_13 +(-1) '22'x "," @;
                   else put INT_13 @;
              end;
       if missing(INT_14)
         then put "," @;
         else do;
                 if find(INT_14,'0A'x) > 0 and 2+klength(INT_14) = klength(quote(trim(INT_14)))
                   then put '22'x INT_14 +(-1) '22'x "," @;
                   else put INT_14 @;
              end;
       if missing(INT_15)
         then put "," @;
         else do;
                 if find(INT_15,'0A'x) > 0 and 2+klength(INT_15) = klength(quote(trim(INT_15)))
                   then put '22'x INT_15 +(-1) '22'x "," @;
                   else put INT_15 @;
              end;
       if missing(INT_16)
         then put "," @;
         else do;
                 if find(INT_16,'0A'x) > 0 and 2+klength(INT_16) = klength(quote(trim(INT_16)))
                   then put '22'x INT_16 +(-1) '22'x "," @;
                   else put INT_16 @;
              end;
       if missing(INT_17)
         then put "," @;
         else do;
                 if find(INT_17,'0A'x) > 0 and 2+klength(INT_17) = klength(quote(trim(INT_17)))
                   then put '22'x INT_17 +(-1) '22'x "," @;
                   else put INT_17 @;
              end;
       if missing(INT_18)
         then put "," @;
         else do;
                 if find(INT_18,'0A'x) > 0 and 2+klength(INT_18) = klength(quote(trim(INT_18)))
                   then put '22'x INT_18 +(-1) '22'x "," @;
                   else put INT_18 @;
              end;
       if missing(INT_19)
         then put "," @;
         else do;
                 if find(INT_19,'0A'x) > 0 and 2+klength(INT_19) = klength(quote(trim(INT_19)))
                   then put '22'x INT_19 +(-1) '22'x "," @;
                   else put INT_19 @;
              end;
       if missing(INT_20)
         then put "," @;
         else do;
                 if find(INT_20,'0A'x) > 0 and 2+klength(INT_20) = klength(quote(trim(INT_20)))
                   then put '22'x INT_20 +(-1) '22'x "," @;
                   else put INT_20 @;
              end;
       if missing(INT_21)
         then put "," @;
         else do;
                 if find(INT_21,'0A'x) > 0 and 2+klength(INT_21) = klength(quote(trim(INT_21)))
                   then put '22'x INT_21 +(-1) '22'x "," @;
                   else put INT_21 @;
              end;
       if missing(INT_22)
         then put "," @;
         else do;
                 if find(INT_22,'0A'x) > 0 and 2+klength(INT_22) = klength(quote(trim(INT_22)))
                   then put '22'x INT_22 +(-1) '22'x "," @;
                   else put INT_22 @;
              end;
       if missing(INT_23)
         then put "," @;
         else do;
                 if find(INT_23,'0A'x) > 0 and 2+klength(INT_23) = klength(quote(trim(INT_23)))
                   then put '22'x INT_23 +(-1) '22'x "," @;
                   else put INT_23 @;
              end;
       if missing(INT_24)
         then put "," @;
         else do;
                 if find(INT_24,'0A'x) > 0 and 2+klength(INT_24) = klength(quote(trim(INT_24)))
                   then put '22'x INT_24 +(-1) '22'x "," @;
                   else put INT_24 @;
              end;
       if missing(INT_25)
         then put "," @;
         else do;
                 if find(INT_25,'0A'x) > 0 and 2+klength(INT_25) = klength(quote(trim(INT_25)))
                   then put '22'x INT_25 +(-1) '22'x "," @;
                   else put INT_25 @;
              end;
       if missing(INT_26)
         then put "," @;
         else do;
                 if find(INT_26,'0A'x) > 0 and 2+klength(INT_26) = klength(quote(trim(INT_26)))
                   then put '22'x INT_26 +(-1) '22'x "," @;
                   else put INT_26 @;
              end;
       if missing(INT_27)
         then put "," @;
         else do;
                 if find(INT_27,'0A'x) > 0 and 2+klength(INT_27) = klength(quote(trim(INT_27)))
                   then put '22'x INT_27 +(-1) '22'x "," @;
                   else put INT_27 @;
              end;
       if missing(INT_28)
         then put "," @;
         else do;
                 if find(INT_28,'0A'x) > 0 and 2+klength(INT_28) = klength(quote(trim(INT_28)))
                   then put '22'x INT_28 +(-1) '22'x "," @;
                   else put INT_28 @;
              end;
       if missing(INT_29)
         then put "," @;
         else do;
                 if find(INT_29,'0A'x) > 0 and 2+klength(INT_29) = klength(quote(trim(INT_29)))
                   then put '22'x INT_29 +(-1) '22'x "," @;
                   else put INT_29 @;
              end;
       if missing(INT_30)
         then put "," @;
         else do;
                 if find(INT_30,'0A'x) > 0 and 2+klength(INT_30) = klength(quote(trim(INT_30)))
                   then put '22'x INT_30 +(-1) '22'x "," @;
                   else put INT_30 @;
              end;
       if missing(INT_31)
         then put "," @;
         else do;
                 if find(INT_31,'0A'x) > 0 and 2+klength(INT_31) = klength(quote(trim(INT_31)))
                   then put '22'x INT_31 +(-1) '22'x "," @;
                   else put INT_31 @;
              end;
       if missing(INT_32)
         then put "," @;
         else do;
                 if find(INT_32,'0A'x) > 0 and 2+klength(INT_32) = klength(quote(trim(INT_32)))
                   then put '22'x INT_32 +(-1) '22'x "," @;
                   else put INT_32 @;
              end;
       if missing(INT_33)
         then put "," @;
         else do;
                 if find(INT_33,'0A'x) > 0 and 2+klength(INT_33) = klength(quote(trim(INT_33)))
                   then put '22'x INT_33 +(-1) '22'x "," @;
                   else put INT_33 @;
              end;
       if missing(INT_34)
         then put "," @;
         else do;
                 if find(INT_34,'0A'x) > 0 and 2+klength(INT_34) = klength(quote(trim(INT_34)))
                   then put '22'x INT_34 +(-1) '22'x "," @;
                   else put INT_34 @;
              end;
       if missing(INT_35)
         then put "," @;
         else do;
                 if find(INT_35,'0A'x) > 0 and 2+klength(INT_35) = klength(quote(trim(INT_35)))
                   then put '22'x INT_35 +(-1) '22'x "," @;
                   else put INT_35 @;
              end;
       if missing(INT_36)
         then put "," @;
         else do;
                 if find(INT_36,'0A'x) > 0 and 2+klength(INT_36) = klength(quote(trim(INT_36)))
                   then put '22'x INT_36 +(-1) '22'x "," @;
                   else put INT_36 @;
              end;
       if missing(INT_37)
         then put "," @;
         else do;
                 if find(INT_37,'0A'x) > 0 and 2+klength(INT_37) = klength(quote(trim(INT_37)))
                   then put '22'x INT_37 +(-1) '22'x "," @;
                   else put INT_37 @;
              end;
       if missing(INT_38)
         then put "," @;
         else do;
                 if find(INT_38,'0A'x) > 0 and 2+klength(INT_38) = klength(quote(trim(INT_38)))
                   then put '22'x INT_38 +(-1) '22'x "," @;
                   else put INT_38 @;
              end;
       if missing(INT_39)
         then put "," @;
         else do;
                 if find(INT_39,'0A'x) > 0 and 2+klength(INT_39) = klength(quote(trim(INT_39)))
                   then put '22'x INT_39 +(-1) '22'x "," @;
                   else put INT_39 @;
              end;
       if missing(INT_40)
         then put "," @;
         else do;
                 if find(INT_40,'0A'x) > 0 and 2+klength(INT_40) = klength(quote(trim(INT_40)))
                   then put '22'x INT_40 +(-1) '22'x "," @;
                   else put INT_40 @;
              end;
       if missing(JA_NEE_01)
         then put "," @;
         else do;
                 if find(JA_NEE_01,'0A'x) > 0 and 2+klength(JA_NEE_01) = klength(quote(trim(JA_NEE_01)))
                   then put '22'x JA_NEE_01 +(-1) '22'x "," @;
                   else put JA_NEE_01 @;
              end;
       if missing(JA_NEE_02)
         then put "," @;
         else do;
                 if find(JA_NEE_02,'0A'x) > 0 and 2+klength(JA_NEE_02) = klength(quote(trim(JA_NEE_02)))
                   then put '22'x JA_NEE_02 +(-1) '22'x "," @;
                   else put JA_NEE_02 @;
              end;
       if missing(JA_NEE_03)
         then put "," @;
         else do;
                 if find(JA_NEE_03,'0A'x) > 0 and 2+klength(JA_NEE_03) = klength(quote(trim(JA_NEE_03)))
                   then put '22'x JA_NEE_03 +(-1) '22'x "," @;
                   else put JA_NEE_03 @;
              end;
       if missing(JA_NEE_04)
         then put "," @;
         else do;
                 if find(JA_NEE_04,'0A'x) > 0 and 2+klength(JA_NEE_04) = klength(quote(trim(JA_NEE_04)))
                   then put '22'x JA_NEE_04 +(-1) '22'x "," @;
                   else put JA_NEE_04 @;
              end;
       if missing(JA_NEE_05)
         then put "," @;
         else do;
                 if find(JA_NEE_05,'0A'x) > 0 and 2+klength(JA_NEE_05) = klength(quote(trim(JA_NEE_05)))
                   then put '22'x JA_NEE_05 +(-1) '22'x "," @;
                   else put JA_NEE_05 @;
              end;
       if missing(JA_NEE_06)
         then put "," @;
         else do;
                 if find(JA_NEE_06,'0A'x) > 0 and 2+klength(JA_NEE_06) = klength(quote(trim(JA_NEE_06)))
                   then put '22'x JA_NEE_06 +(-1) '22'x "," @;
                   else put JA_NEE_06 @;
              end;
       if missing(JA_NEE_07)
         then put "," @;
         else do;
                 if find(JA_NEE_07,'0A'x) > 0 and 2+klength(JA_NEE_07) = klength(quote(trim(JA_NEE_07)))
                   then put '22'x JA_NEE_07 +(-1) '22'x "," @;
                   else put JA_NEE_07 @;
              end;
       if missing(JA_NEE_08)
         then put "," @;
         else do;
                 if find(JA_NEE_08,'0A'x) > 0 and 2+klength(JA_NEE_08) = klength(quote(trim(JA_NEE_08)))
                   then put '22'x JA_NEE_08 +(-1) '22'x "," @;
                   else put JA_NEE_08 @;
              end;
       if missing(JA_NEE_09)
         then put "," @;
         else do;
                 if find(JA_NEE_09,'0A'x) > 0 and 2+klength(JA_NEE_09) = klength(quote(trim(JA_NEE_09)))
                   then put '22'x JA_NEE_09 +(-1) '22'x "," @;
                   else put JA_NEE_09 @;
              end;
       if missing(JA_NEE_10)
         then put "," @;
         else do;
                 if find(JA_NEE_10,'0A'x) > 0 and 2+klength(JA_NEE_10) = klength(quote(trim(JA_NEE_10)))
                   then put '22'x JA_NEE_10 +(-1) '22'x "," @;
                   else put JA_NEE_10 @;
              end;
       if missing(JA_NEE_11)
         then put "," @;
         else do;
                 if find(JA_NEE_11,'0A'x) > 0 and 2+klength(JA_NEE_11) = klength(quote(trim(JA_NEE_11)))
                   then put '22'x JA_NEE_11 +(-1) '22'x "," @;
                   else put JA_NEE_11 @;
              end;
       if missing(JA_NEE_12)
         then put "," @;
         else do;
                 if find(JA_NEE_12,'0A'x) > 0 and 2+klength(JA_NEE_12) = klength(quote(trim(JA_NEE_12)))
                   then put '22'x JA_NEE_12 +(-1) '22'x "," @;
                   else put JA_NEE_12 @;
              end;
       if missing(JA_NEE_13)
         then put "," @;
         else do;
                 if find(JA_NEE_13,'0A'x) > 0 and 2+klength(JA_NEE_13) = klength(quote(trim(JA_NEE_13)))
                   then put '22'x JA_NEE_13 +(-1) '22'x "," @;
                   else put JA_NEE_13 @;
              end;
       if missing(JA_NEE_14)
         then put "," @;
         else do;
                 if find(JA_NEE_14,'0A'x) > 0 and 2+klength(JA_NEE_14) = klength(quote(trim(JA_NEE_14)))
                   then put '22'x JA_NEE_14 +(-1) '22'x "," @;
                   else put JA_NEE_14 @;
              end;
       if missing(JA_NEE_15)
         then put "," @;
         else do;
                 if find(JA_NEE_15,'0A'x) > 0 and 2+klength(JA_NEE_15) = klength(quote(trim(JA_NEE_15)))
                   then put '22'x JA_NEE_15 +(-1) '22'x "," @;
                   else put JA_NEE_15 @;
              end;
       if missing(JA_NEE_16)
         then put "," @;
         else do;
                 if find(JA_NEE_16,'0A'x) > 0 and 2+klength(JA_NEE_16) = klength(quote(trim(JA_NEE_16)))
                   then put '22'x JA_NEE_16 +(-1) '22'x "," @;
                   else put JA_NEE_16 @;
              end;
       if missing(JA_NEE_17)
         then put "," @;
         else do;
                 if find(JA_NEE_17,'0A'x) > 0 and 2+klength(JA_NEE_17) = klength(quote(trim(JA_NEE_17)))
                   then put '22'x JA_NEE_17 +(-1) '22'x "," @;
                   else put JA_NEE_17 @;
              end;
       if missing(JA_NEE_18)
         then put "," @;
         else do;
                 if find(JA_NEE_18,'0A'x) > 0 and 2+klength(JA_NEE_18) = klength(quote(trim(JA_NEE_18)))
                   then put '22'x JA_NEE_18 +(-1) '22'x "," @;
                   else put JA_NEE_18 @;
              end;
       if missing(JA_NEE_19)
         then put "," @;
         else do;
                 if find(JA_NEE_19,'0A'x) > 0 and 2+klength(JA_NEE_19) = klength(quote(trim(JA_NEE_19)))
                   then put '22'x JA_NEE_19 +(-1) '22'x "," @;
                   else put JA_NEE_19 @;
              end;
       if missing(JA_NEE_20)
         then put "," @;
         else do;
                 if find(JA_NEE_20,'0A'x) > 0 and 2+klength(JA_NEE_20) = klength(quote(trim(JA_NEE_20)))
                   then put '22'x JA_NEE_20 +(-1) '22'x "," @;
                   else put JA_NEE_20 @;
              end;
       if missing(JA_NEE_21)
         then put "," @;
         else do;
                 if find(JA_NEE_21,'0A'x) > 0 and 2+klength(JA_NEE_21) = klength(quote(trim(JA_NEE_21)))
                   then put '22'x JA_NEE_21 +(-1) '22'x "," @;
                   else put JA_NEE_21 @;
              end;
       if missing(JA_NEE_22)
         then put "," @;
         else do;
                 if find(JA_NEE_22,'0A'x) > 0 and 2+klength(JA_NEE_22) = klength(quote(trim(JA_NEE_22)))
                   then put '22'x JA_NEE_22 +(-1) '22'x "," @;
                   else put JA_NEE_22 @;
              end;
       if missing(JA_NEE_23)
         then put "," @;
         else do;
                 if find(JA_NEE_23,'0A'x) > 0 and 2+klength(JA_NEE_23) = klength(quote(trim(JA_NEE_23)))
                   then put '22'x JA_NEE_23 +(-1) '22'x "," @;
                   else put JA_NEE_23 @;
              end;
       if missing(JA_NEE_24)
         then put "," @;
         else do;
                 if find(JA_NEE_24,'0A'x) > 0 and 2+klength(JA_NEE_24) = klength(quote(trim(JA_NEE_24)))
                   then put '22'x JA_NEE_24 +(-1) '22'x "," @;
                   else put JA_NEE_24 @;
              end;
       if missing(JA_NEE_25)
         then put "," @;
         else do;
                 if find(JA_NEE_25,'0A'x) > 0 and 2+klength(JA_NEE_25) = klength(quote(trim(JA_NEE_25)))
                   then put '22'x JA_NEE_25 +(-1) '22'x "," @;
                   else put JA_NEE_25 @;
              end;
       if missing(JA_NEE_26)
         then put "," @;
         else do;
                 if find(JA_NEE_26,'0A'x) > 0 and 2+klength(JA_NEE_26) = klength(quote(trim(JA_NEE_26)))
                   then put '22'x JA_NEE_26 +(-1) '22'x "," @;
                   else put JA_NEE_26 @;
              end;
       if missing(JA_NEE_27)
         then put "," @;
         else do;
                 if find(JA_NEE_27,'0A'x) > 0 and 2+klength(JA_NEE_27) = klength(quote(trim(JA_NEE_27)))
                   then put '22'x JA_NEE_27 +(-1) '22'x "," @;
                   else put JA_NEE_27 @;
              end;
       if missing(JA_NEE_28)
         then put "," @;
         else do;
                 if find(JA_NEE_28,'0A'x) > 0 and 2+klength(JA_NEE_28) = klength(quote(trim(JA_NEE_28)))
                   then put '22'x JA_NEE_28 +(-1) '22'x "," @;
                   else put JA_NEE_28 @;
              end;
       if missing(JA_NEE_29)
         then put "," @;
         else do;
                 if find(JA_NEE_29,'0A'x) > 0 and 2+klength(JA_NEE_29) = klength(quote(trim(JA_NEE_29)))
                   then put '22'x JA_NEE_29 +(-1) '22'x "," @;
                   else put JA_NEE_29 @;
              end;
       if missing(JA_NEE_30)
         then put "," @;
         else do;
                 if find(JA_NEE_30,'0A'x) > 0 and 2+klength(JA_NEE_30) = klength(quote(trim(JA_NEE_30)))
                   then put '22'x JA_NEE_30 +(-1) '22'x "," @;
                   else put JA_NEE_30 @;
              end;
       if missing(JA_NEE_NVT_01)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_01,'0A'x) > 0 and 2+klength(JA_NEE_NVT_01) = klength(quote(trim(JA_NEE_NVT_01)))
                   then put '22'x JA_NEE_NVT_01 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_01 @;
              end;
       if missing(JA_NEE_NVT_02)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_02,'0A'x) > 0 and 2+klength(JA_NEE_NVT_02) = klength(quote(trim(JA_NEE_NVT_02)))
                   then put '22'x JA_NEE_NVT_02 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_02 @;
              end;
       if missing(JA_NEE_NVT_03)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_03,'0A'x) > 0 and 2+klength(JA_NEE_NVT_03) = klength(quote(trim(JA_NEE_NVT_03)))
                   then put '22'x JA_NEE_NVT_03 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_03 @;
              end;
       if missing(JA_NEE_NVT_04)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_04,'0A'x) > 0 and 2+klength(JA_NEE_NVT_04) = klength(quote(trim(JA_NEE_NVT_04)))
                   then put '22'x JA_NEE_NVT_04 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_04 @;
              end;
       if missing(JA_NEE_NVT_05)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_05,'0A'x) > 0 and 2+klength(JA_NEE_NVT_05) = klength(quote(trim(JA_NEE_NVT_05)))
                   then put '22'x JA_NEE_NVT_05 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_05 @;
              end;
       if missing(JA_NEE_NVT_06)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_06,'0A'x) > 0 and 2+klength(JA_NEE_NVT_06) = klength(quote(trim(JA_NEE_NVT_06)))
                   then put '22'x JA_NEE_NVT_06 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_06 @;
              end;
       if missing(JA_NEE_NVT_07)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_07,'0A'x) > 0 and 2+klength(JA_NEE_NVT_07) = klength(quote(trim(JA_NEE_NVT_07)))
                   then put '22'x JA_NEE_NVT_07 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_07 @;
              end;
       if missing(JA_NEE_NVT_08)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_08,'0A'x) > 0 and 2+klength(JA_NEE_NVT_08) = klength(quote(trim(JA_NEE_NVT_08)))
                   then put '22'x JA_NEE_NVT_08 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_08 @;
              end;
       if missing(JA_NEE_NVT_09)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_09,'0A'x) > 0 and 2+klength(JA_NEE_NVT_09) = klength(quote(trim(JA_NEE_NVT_09)))
                   then put '22'x JA_NEE_NVT_09 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_09 @;
              end;
       if missing(JA_NEE_NVT_10)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_10,'0A'x) > 0 and 2+klength(JA_NEE_NVT_10) = klength(quote(trim(JA_NEE_NVT_10)))
                   then put '22'x JA_NEE_NVT_10 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_10 @;
              end;
       if missing(JA_NEE_NVT_11)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_11,'0A'x) > 0 and 2+klength(JA_NEE_NVT_11) = klength(quote(trim(JA_NEE_NVT_11)))
                   then put '22'x JA_NEE_NVT_11 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_11 @;
              end;
       if missing(JA_NEE_NVT_12)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_12,'0A'x) > 0 and 2+klength(JA_NEE_NVT_12) = klength(quote(trim(JA_NEE_NVT_12)))
                   then put '22'x JA_NEE_NVT_12 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_12 @;
              end;
       if missing(JA_NEE_NVT_13)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_13,'0A'x) > 0 and 2+klength(JA_NEE_NVT_13) = klength(quote(trim(JA_NEE_NVT_13)))
                   then put '22'x JA_NEE_NVT_13 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_13 @;
              end;
       if missing(JA_NEE_NVT_14)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_14,'0A'x) > 0 and 2+klength(JA_NEE_NVT_14) = klength(quote(trim(JA_NEE_NVT_14)))
                   then put '22'x JA_NEE_NVT_14 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_14 @;
              end;
       if missing(JA_NEE_NVT_15)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_15,'0A'x) > 0 and 2+klength(JA_NEE_NVT_15) = klength(quote(trim(JA_NEE_NVT_15)))
                   then put '22'x JA_NEE_NVT_15 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_15 @;
              end;
       if missing(JA_NEE_NVT_16)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_16,'0A'x) > 0 and 2+klength(JA_NEE_NVT_16) = klength(quote(trim(JA_NEE_NVT_16)))
                   then put '22'x JA_NEE_NVT_16 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_16 @;
              end;
       if missing(JA_NEE_NVT_17)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_17,'0A'x) > 0 and 2+klength(JA_NEE_NVT_17) = klength(quote(trim(JA_NEE_NVT_17)))
                   then put '22'x JA_NEE_NVT_17 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_17 @;
              end;
       if missing(JA_NEE_NVT_18)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_18,'0A'x) > 0 and 2+klength(JA_NEE_NVT_18) = klength(quote(trim(JA_NEE_NVT_18)))
                   then put '22'x JA_NEE_NVT_18 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_18 @;
              end;
       if missing(JA_NEE_NVT_19)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_19,'0A'x) > 0 and 2+klength(JA_NEE_NVT_19) = klength(quote(trim(JA_NEE_NVT_19)))
                   then put '22'x JA_NEE_NVT_19 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_19 @;
              end;
       if missing(JA_NEE_NVT_20)
         then put "," @;
         else do;
                 if find(JA_NEE_NVT_20,'0A'x) > 0 and 2+klength(JA_NEE_NVT_20) = klength(quote(trim(JA_NEE_NVT_20)))
                   then put '22'x JA_NEE_NVT_20 +(-1) '22'x "," @;
                   else put JA_NEE_NVT_20 @;
              end;
       if missing(JA_NEE_ONB_01)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_01,'0A'x) > 0 and 2+klength(JA_NEE_ONB_01) = klength(quote(trim(JA_NEE_ONB_01)))
                   then put '22'x JA_NEE_ONB_01 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_01 @;
              end;
       if missing(JA_NEE_ONB_02)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_02,'0A'x) > 0 and 2+klength(JA_NEE_ONB_02) = klength(quote(trim(JA_NEE_ONB_02)))
                   then put '22'x JA_NEE_ONB_02 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_02 @;
              end;
       if missing(JA_NEE_ONB_03)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_03,'0A'x) > 0 and 2+klength(JA_NEE_ONB_03) = klength(quote(trim(JA_NEE_ONB_03)))
                   then put '22'x JA_NEE_ONB_03 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_03 @;
              end;
       if missing(JA_NEE_ONB_04)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_04,'0A'x) > 0 and 2+klength(JA_NEE_ONB_04) = klength(quote(trim(JA_NEE_ONB_04)))
                   then put '22'x JA_NEE_ONB_04 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_04 @;
              end;
       if missing(JA_NEE_ONB_05)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_05,'0A'x) > 0 and 2+klength(JA_NEE_ONB_05) = klength(quote(trim(JA_NEE_ONB_05)))
                   then put '22'x JA_NEE_ONB_05 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_05 @;
              end;
       if missing(JA_NEE_ONB_06)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_06,'0A'x) > 0 and 2+klength(JA_NEE_ONB_06) = klength(quote(trim(JA_NEE_ONB_06)))
                   then put '22'x JA_NEE_ONB_06 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_06 @;
              end;
       if missing(JA_NEE_ONB_07)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_07,'0A'x) > 0 and 2+klength(JA_NEE_ONB_07) = klength(quote(trim(JA_NEE_ONB_07)))
                   then put '22'x JA_NEE_ONB_07 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_07 @;
              end;
       if missing(JA_NEE_ONB_08)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_08,'0A'x) > 0 and 2+klength(JA_NEE_ONB_08) = klength(quote(trim(JA_NEE_ONB_08)))
                   then put '22'x JA_NEE_ONB_08 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_08 @;
              end;
       if missing(JA_NEE_ONB_09)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_09,'0A'x) > 0 and 2+klength(JA_NEE_ONB_09) = klength(quote(trim(JA_NEE_ONB_09)))
                   then put '22'x JA_NEE_ONB_09 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_09 @;
              end;
       if missing(JA_NEE_ONB_10)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_10,'0A'x) > 0 and 2+klength(JA_NEE_ONB_10) = klength(quote(trim(JA_NEE_ONB_10)))
                   then put '22'x JA_NEE_ONB_10 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_10 @;
              end;
       if missing(JA_NEE_ONB_11)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_11,'0A'x) > 0 and 2+klength(JA_NEE_ONB_11) = klength(quote(trim(JA_NEE_ONB_11)))
                   then put '22'x JA_NEE_ONB_11 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_11 @;
              end;
       if missing(JA_NEE_ONB_12)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_12,'0A'x) > 0 and 2+klength(JA_NEE_ONB_12) = klength(quote(trim(JA_NEE_ONB_12)))
                   then put '22'x JA_NEE_ONB_12 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_12 @;
              end;
       if missing(JA_NEE_ONB_13)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_13,'0A'x) > 0 and 2+klength(JA_NEE_ONB_13) = klength(quote(trim(JA_NEE_ONB_13)))
                   then put '22'x JA_NEE_ONB_13 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_13 @;
              end;
       if missing(JA_NEE_ONB_14)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_14,'0A'x) > 0 and 2+klength(JA_NEE_ONB_14) = klength(quote(trim(JA_NEE_ONB_14)))
                   then put '22'x JA_NEE_ONB_14 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_14 @;
              end;
       if missing(JA_NEE_ONB_15)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_15,'0A'x) > 0 and 2+klength(JA_NEE_ONB_15) = klength(quote(trim(JA_NEE_ONB_15)))
                   then put '22'x JA_NEE_ONB_15 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_15 @;
              end;
       if missing(JA_NEE_ONB_16)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_16,'0A'x) > 0 and 2+klength(JA_NEE_ONB_16) = klength(quote(trim(JA_NEE_ONB_16)))
                   then put '22'x JA_NEE_ONB_16 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_16 @;
              end;
       if missing(JA_NEE_ONB_17)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_17,'0A'x) > 0 and 2+klength(JA_NEE_ONB_17) = klength(quote(trim(JA_NEE_ONB_17)))
                   then put '22'x JA_NEE_ONB_17 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_17 @;
              end;
       if missing(JA_NEE_ONB_18)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_18,'0A'x) > 0 and 2+klength(JA_NEE_ONB_18) = klength(quote(trim(JA_NEE_ONB_18)))
                   then put '22'x JA_NEE_ONB_18 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_18 @;
              end;
       if missing(JA_NEE_ONB_19)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_19,'0A'x) > 0 and 2+klength(JA_NEE_ONB_19) = klength(quote(trim(JA_NEE_ONB_19)))
                   then put '22'x JA_NEE_ONB_19 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_19 @;
              end;
       if missing(JA_NEE_ONB_20)
         then put "," @;
         else do;
                 if find(JA_NEE_ONB_20,'0A'x) > 0 and 2+klength(JA_NEE_ONB_20) = klength(quote(trim(JA_NEE_ONB_20)))
                   then put '22'x JA_NEE_ONB_20 +(-1) '22'x "," @;
                   else put JA_NEE_ONB_20 @;
              end;
       if missing(Mutatie_dat)
         then put "," @;
         else do;
                 if find(Mutatie_dat,'0A'x) > 0 and 2+klength(Mutatie_dat) = klength(quote(trim(Mutatie_dat)))
                   then put '22'x Mutatie_dat +(-1) '22'x "," @;
                   else put Mutatie_dat @;
              end;
       if missing(Mutatie_user)
         then put "," @;
         else do;
                 if find(Mutatie_user,'0A'x) > 0 and 2+klength(Mutatie_user) = klength(quote(trim(Mutatie_user)))
                   then put '22'x Mutatie_user +(-1) '22'x "," @;
                   else put Mutatie_user @;
              end;
       if missing(NUMERIEK_01)
         then put "," @;
         else do;
                 if find(NUMERIEK_01,'0A'x) > 0 and 2+klength(NUMERIEK_01) = klength(quote(trim(NUMERIEK_01)))
                   then put '22'x NUMERIEK_01 +(-1) '22'x "," @;
                   else put NUMERIEK_01 @;
              end;
       if missing(NUMERIEK_02)
         then put "," @;
         else do;
                 if find(NUMERIEK_02,'0A'x) > 0 and 2+klength(NUMERIEK_02) = klength(quote(trim(NUMERIEK_02)))
                   then put '22'x NUMERIEK_02 +(-1) '22'x "," @;
                   else put NUMERIEK_02 @;
              end;
       if missing(NUMERIEK_03)
         then put "," @;
         else do;
                 if find(NUMERIEK_03,'0A'x) > 0 and 2+klength(NUMERIEK_03) = klength(quote(trim(NUMERIEK_03)))
                   then put '22'x NUMERIEK_03 +(-1) '22'x "," @;
                   else put NUMERIEK_03 @;
              end;
       if missing(NUMERIEK_04)
         then put "," @;
         else do;
                 if find(NUMERIEK_04,'0A'x) > 0 and 2+klength(NUMERIEK_04) = klength(quote(trim(NUMERIEK_04)))
                   then put '22'x NUMERIEK_04 +(-1) '22'x "," @;
                   else put NUMERIEK_04 @;
              end;
       if missing(NUMERIEK_05)
         then put "," @;
         else do;
                 if find(NUMERIEK_05,'0A'x) > 0 and 2+klength(NUMERIEK_05) = klength(quote(trim(NUMERIEK_05)))
                   then put '22'x NUMERIEK_05 +(-1) '22'x "," @;
                   else put NUMERIEK_05 @;
              end;
       if missing(NUMERIEK_06)
         then put "," @;
         else do;
                 if find(NUMERIEK_06,'0A'x) > 0 and 2+klength(NUMERIEK_06) = klength(quote(trim(NUMERIEK_06)))
                   then put '22'x NUMERIEK_06 +(-1) '22'x "," @;
                   else put NUMERIEK_06 @;
              end;
       if missing(NUMERIEK_07)
         then put "," @;
         else do;
                 if find(NUMERIEK_07,'0A'x) > 0 and 2+klength(NUMERIEK_07) = klength(quote(trim(NUMERIEK_07)))
                   then put '22'x NUMERIEK_07 +(-1) '22'x "," @;
                   else put NUMERIEK_07 @;
              end;
       if missing(NUMERIEK_08)
         then put "," @;
         else do;
                 if find(NUMERIEK_08,'0A'x) > 0 and 2+klength(NUMERIEK_08) = klength(quote(trim(NUMERIEK_08)))
                   then put '22'x NUMERIEK_08 +(-1) '22'x "," @;
                   else put NUMERIEK_08 @;
              end;
       if missing(NUMERIEK_09)
         then put "," @;
         else do;
                 if find(NUMERIEK_09,'0A'x) > 0 and 2+klength(NUMERIEK_09) = klength(quote(trim(NUMERIEK_09)))
                   then put '22'x NUMERIEK_09 +(-1) '22'x "," @;
                   else put NUMERIEK_09 @;
              end;
       if missing(NUMERIEK_10)
         then put "," @;
         else do;
                 if find(NUMERIEK_10,'0A'x) > 0 and 2+klength(NUMERIEK_10) = klength(quote(trim(NUMERIEK_10)))
                   then put '22'x NUMERIEK_10 +(-1) '22'x "," @;
                   else put NUMERIEK_10 @;
              end;
       if missing(NUMERIEK_11)
         then put "," @;
         else do;
                 if find(NUMERIEK_11,'0A'x) > 0 and 2+klength(NUMERIEK_11) = klength(quote(trim(NUMERIEK_11)))
                   then put '22'x NUMERIEK_11 +(-1) '22'x "," @;
                   else put NUMERIEK_11 @;
              end;
       if missing(NUMERIEK_12)
         then put "," @;
         else do;
                 if find(NUMERIEK_12,'0A'x) > 0 and 2+klength(NUMERIEK_12) = klength(quote(trim(NUMERIEK_12)))
                   then put '22'x NUMERIEK_12 +(-1) '22'x "," @;
                   else put NUMERIEK_12 @;
              end;
       if missing(NUMERIEK_13)
         then put "," @;
         else do;
                 if find(NUMERIEK_13,'0A'x) > 0 and 2+klength(NUMERIEK_13) = klength(quote(trim(NUMERIEK_13)))
                   then put '22'x NUMERIEK_13 +(-1) '22'x "," @;
                   else put NUMERIEK_13 @;
              end;
       if missing(NUMERIEK_14)
         then put "," @;
         else do;
                 if find(NUMERIEK_14,'0A'x) > 0 and 2+klength(NUMERIEK_14) = klength(quote(trim(NUMERIEK_14)))
                   then put '22'x NUMERIEK_14 +(-1) '22'x "," @;
                   else put NUMERIEK_14 @;
              end;
       if missing(NUMERIEK_15)
         then put "," @;
         else do;
                 if find(NUMERIEK_15,'0A'x) > 0 and 2+klength(NUMERIEK_15) = klength(quote(trim(NUMERIEK_15)))
                   then put '22'x NUMERIEK_15 +(-1) '22'x "," @;
                   else put NUMERIEK_15 @;
              end;
       if missing(NUMERIEK_16)
         then put "," @;
         else do;
                 if find(NUMERIEK_16,'0A'x) > 0 and 2+klength(NUMERIEK_16) = klength(quote(trim(NUMERIEK_16)))
                   then put '22'x NUMERIEK_16 +(-1) '22'x "," @;
                   else put NUMERIEK_16 @;
              end;
       if missing(NUMERIEK_17)
         then put "," @;
         else do;
                 if find(NUMERIEK_17,'0A'x) > 0 and 2+klength(NUMERIEK_17) = klength(quote(trim(NUMERIEK_17)))
                   then put '22'x NUMERIEK_17 +(-1) '22'x "," @;
                   else put NUMERIEK_17 @;
              end;
       if missing(NUMERIEK_18)
         then put "," @;
         else do;
                 if find(NUMERIEK_18,'0A'x) > 0 and 2+klength(NUMERIEK_18) = klength(quote(trim(NUMERIEK_18)))
                   then put '22'x NUMERIEK_18 +(-1) '22'x "," @;
                   else put NUMERIEK_18 @;
              end;
       if missing(NUMERIEK_19)
         then put "," @;
         else do;
                 if find(NUMERIEK_19,'0A'x) > 0 and 2+klength(NUMERIEK_19) = klength(quote(trim(NUMERIEK_19)))
                   then put '22'x NUMERIEK_19 +(-1) '22'x "," @;
                   else put NUMERIEK_19 @;
              end;
       if missing(NUMERIEK_20)
         then put "," @;
         else do;
                 if find(NUMERIEK_20,'0A'x) > 0 and 2+klength(NUMERIEK_20) = klength(quote(trim(NUMERIEK_20)))
                   then put '22'x NUMERIEK_20 +(-1) '22'x "," @;
                   else put NUMERIEK_20 @;
              end;
       if missing(NUMERIEK_21)
         then put "," @;
         else do;
                 if find(NUMERIEK_21,'0A'x) > 0 and 2+klength(NUMERIEK_21) = klength(quote(trim(NUMERIEK_21)))
                   then put '22'x NUMERIEK_21 +(-1) '22'x "," @;
                   else put NUMERIEK_21 @;
              end;
       if missing(NUMERIEK_22)
         then put "," @;
         else do;
                 if find(NUMERIEK_22,'0A'x) > 0 and 2+klength(NUMERIEK_22) = klength(quote(trim(NUMERIEK_22)))
                   then put '22'x NUMERIEK_22 +(-1) '22'x "," @;
                   else put NUMERIEK_22 @;
              end;
       if missing(NUMERIEK_23)
         then put "," @;
         else do;
                 if find(NUMERIEK_23,'0A'x) > 0 and 2+klength(NUMERIEK_23) = klength(quote(trim(NUMERIEK_23)))
                   then put '22'x NUMERIEK_23 +(-1) '22'x "," @;
                   else put NUMERIEK_23 @;
              end;
       if missing(NUMERIEK_24)
         then put "," @;
         else do;
                 if find(NUMERIEK_24,'0A'x) > 0 and 2+klength(NUMERIEK_24) = klength(quote(trim(NUMERIEK_24)))
                   then put '22'x NUMERIEK_24 +(-1) '22'x "," @;
                   else put NUMERIEK_24 @;
              end;
       if missing(NUMERIEK_25)
         then put "," @;
         else do;
                 if find(NUMERIEK_25,'0A'x) > 0 and 2+klength(NUMERIEK_25) = klength(quote(trim(NUMERIEK_25)))
                   then put '22'x NUMERIEK_25 +(-1) '22'x "," @;
                   else put NUMERIEK_25 @;
              end;
       if missing(NUMERIEK_26)
         then put "," @;
         else do;
                 if find(NUMERIEK_26,'0A'x) > 0 and 2+klength(NUMERIEK_26) = klength(quote(trim(NUMERIEK_26)))
                   then put '22'x NUMERIEK_26 +(-1) '22'x "," @;
                   else put NUMERIEK_26 @;
              end;
       if missing(NUMERIEK_27)
         then put "," @;
         else do;
                 if find(NUMERIEK_27,'0A'x) > 0 and 2+klength(NUMERIEK_27) = klength(quote(trim(NUMERIEK_27)))
                   then put '22'x NUMERIEK_27 +(-1) '22'x "," @;
                   else put NUMERIEK_27 @;
              end;
       if missing(NUMERIEK_28)
         then put "," @;
         else do;
                 if find(NUMERIEK_28,'0A'x) > 0 and 2+klength(NUMERIEK_28) = klength(quote(trim(NUMERIEK_28)))
                   then put '22'x NUMERIEK_28 +(-1) '22'x "," @;
                   else put NUMERIEK_28 @;
              end;
       if missing(NUMERIEK_29)
         then put "," @;
         else do;
                 if find(NUMERIEK_29,'0A'x) > 0 and 2+klength(NUMERIEK_29) = klength(quote(trim(NUMERIEK_29)))
                   then put '22'x NUMERIEK_29 +(-1) '22'x "," @;
                   else put NUMERIEK_29 @;
              end;
       if missing(NUMERIEK_30)
         then put "," @;
         else do;
                 if find(NUMERIEK_30,'0A'x) > 0 and 2+klength(NUMERIEK_30) = klength(quote(trim(NUMERIEK_30)))
                   then put '22'x NUMERIEK_30 +(-1) '22'x "," @;
                   else put NUMERIEK_30 @;
              end;
       if missing(NUMERIEK_31)
         then put "," @;
         else do;
                 if find(NUMERIEK_31,'0A'x) > 0 and 2+klength(NUMERIEK_31) = klength(quote(trim(NUMERIEK_31)))
                   then put '22'x NUMERIEK_31 +(-1) '22'x "," @;
                   else put NUMERIEK_31 @;
              end;
       if missing(NUMERIEK_32)
         then put "," @;
         else do;
                 if find(NUMERIEK_32,'0A'x) > 0 and 2+klength(NUMERIEK_32) = klength(quote(trim(NUMERIEK_32)))
                   then put '22'x NUMERIEK_32 +(-1) '22'x "," @;
                   else put NUMERIEK_32 @;
              end;
       if missing(NUMERIEK_33)
         then put "," @;
         else do;
                 if find(NUMERIEK_33,'0A'x) > 0 and 2+klength(NUMERIEK_33) = klength(quote(trim(NUMERIEK_33)))
                   then put '22'x NUMERIEK_33 +(-1) '22'x "," @;
                   else put NUMERIEK_33 @;
              end;
       if missing(NUMERIEK_34)
         then put "," @;
         else do;
                 if find(NUMERIEK_34,'0A'x) > 0 and 2+klength(NUMERIEK_34) = klength(quote(trim(NUMERIEK_34)))
                   then put '22'x NUMERIEK_34 +(-1) '22'x "," @;
                   else put NUMERIEK_34 @;
              end;
       if missing(NUMERIEK_35)
         then put "," @;
         else do;
                 if find(NUMERIEK_35,'0A'x) > 0 and 2+klength(NUMERIEK_35) = klength(quote(trim(NUMERIEK_35)))
                   then put '22'x NUMERIEK_35 +(-1) '22'x "," @;
                   else put NUMERIEK_35 @;
              end;
       if missing(NUMERIEK_36)
         then put "," @;
         else do;
                 if find(NUMERIEK_36,'0A'x) > 0 and 2+klength(NUMERIEK_36) = klength(quote(trim(NUMERIEK_36)))
                   then put '22'x NUMERIEK_36 +(-1) '22'x "," @;
                   else put NUMERIEK_36 @;
              end;
       if missing(NUMERIEK_37)
         then put "," @;
         else do;
                 if find(NUMERIEK_37,'0A'x) > 0 and 2+klength(NUMERIEK_37) = klength(quote(trim(NUMERIEK_37)))
                   then put '22'x NUMERIEK_37 +(-1) '22'x "," @;
                   else put NUMERIEK_37 @;
              end;
       if missing(NUMERIEK_38)
         then put "," @;
         else do;
                 if find(NUMERIEK_38,'0A'x) > 0 and 2+klength(NUMERIEK_38) = klength(quote(trim(NUMERIEK_38)))
                   then put '22'x NUMERIEK_38 +(-1) '22'x "," @;
                   else put NUMERIEK_38 @;
              end;
       if missing(NUMERIEK_39)
         then put "," @;
         else do;
                 if find(NUMERIEK_39,'0A'x) > 0 and 2+klength(NUMERIEK_39) = klength(quote(trim(NUMERIEK_39)))
                   then put '22'x NUMERIEK_39 +(-1) '22'x "," @;
                   else put NUMERIEK_39 @;
              end;
       if missing(NUMERIEK_40)
         then put "," @;
         else do;
                 if find(NUMERIEK_40,'0A'x) > 0 and 2+klength(NUMERIEK_40) = klength(quote(trim(NUMERIEK_40)))
                   then put '22'x NUMERIEK_40 +(-1) '22'x "," @;
                   else put NUMERIEK_40 @;
              end;
       if missing(OPTIONBUTTON_01)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_01,'0A'x) > 0 and 2+klength(OPTIONBUTTON_01) = klength(quote(trim(OPTIONBUTTON_01)))
                   then put '22'x OPTIONBUTTON_01 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_01 @;
              end;
       if missing(OPTIONBUTTON_02)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_02,'0A'x) > 0 and 2+klength(OPTIONBUTTON_02) = klength(quote(trim(OPTIONBUTTON_02)))
                   then put '22'x OPTIONBUTTON_02 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_02 @;
              end;
       if missing(OPTIONBUTTON_03)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_03,'0A'x) > 0 and 2+klength(OPTIONBUTTON_03) = klength(quote(trim(OPTIONBUTTON_03)))
                   then put '22'x OPTIONBUTTON_03 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_03 @;
              end;
       if missing(OPTIONBUTTON_04)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_04,'0A'x) > 0 and 2+klength(OPTIONBUTTON_04) = klength(quote(trim(OPTIONBUTTON_04)))
                   then put '22'x OPTIONBUTTON_04 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_04 @;
              end;
       if missing(OPTIONBUTTON_05)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_05,'0A'x) > 0 and 2+klength(OPTIONBUTTON_05) = klength(quote(trim(OPTIONBUTTON_05)))
                   then put '22'x OPTIONBUTTON_05 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_05 @;
              end;
       if missing(OPTIONBUTTON_06)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_06,'0A'x) > 0 and 2+klength(OPTIONBUTTON_06) = klength(quote(trim(OPTIONBUTTON_06)))
                   then put '22'x OPTIONBUTTON_06 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_06 @;
              end;
       if missing(OPTIONBUTTON_07)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_07,'0A'x) > 0 and 2+klength(OPTIONBUTTON_07) = klength(quote(trim(OPTIONBUTTON_07)))
                   then put '22'x OPTIONBUTTON_07 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_07 @;
              end;
       if missing(OPTIONBUTTON_08)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_08,'0A'x) > 0 and 2+klength(OPTIONBUTTON_08) = klength(quote(trim(OPTIONBUTTON_08)))
                   then put '22'x OPTIONBUTTON_08 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_08 @;
              end;
       if missing(OPTIONBUTTON_09)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_09,'0A'x) > 0 and 2+klength(OPTIONBUTTON_09) = klength(quote(trim(OPTIONBUTTON_09)))
                   then put '22'x OPTIONBUTTON_09 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_09 @;
              end;
       if missing(OPTIONBUTTON_10)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_10,'0A'x) > 0 and 2+klength(OPTIONBUTTON_10) = klength(quote(trim(OPTIONBUTTON_10)))
                   then put '22'x OPTIONBUTTON_10 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_10 @;
              end;
       if missing(OPTIONBUTTON_11)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_11,'0A'x) > 0 and 2+klength(OPTIONBUTTON_11) = klength(quote(trim(OPTIONBUTTON_11)))
                   then put '22'x OPTIONBUTTON_11 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_11 @;
              end;
       if missing(OPTIONBUTTON_12)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_12,'0A'x) > 0 and 2+klength(OPTIONBUTTON_12) = klength(quote(trim(OPTIONBUTTON_12)))
                   then put '22'x OPTIONBUTTON_12 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_12 @;
              end;
       if missing(OPTIONBUTTON_13)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_13,'0A'x) > 0 and 2+klength(OPTIONBUTTON_13) = klength(quote(trim(OPTIONBUTTON_13)))
                   then put '22'x OPTIONBUTTON_13 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_13 @;
              end;
       if missing(OPTIONBUTTON_14)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_14,'0A'x) > 0 and 2+klength(OPTIONBUTTON_14) = klength(quote(trim(OPTIONBUTTON_14)))
                   then put '22'x OPTIONBUTTON_14 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_14 @;
              end;
       if missing(OPTIONBUTTON_15)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_15,'0A'x) > 0 and 2+klength(OPTIONBUTTON_15) = klength(quote(trim(OPTIONBUTTON_15)))
                   then put '22'x OPTIONBUTTON_15 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_15 @;
              end;
       if missing(OPTIONBUTTON_16)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_16,'0A'x) > 0 and 2+klength(OPTIONBUTTON_16) = klength(quote(trim(OPTIONBUTTON_16)))
                   then put '22'x OPTIONBUTTON_16 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_16 @;
              end;
       if missing(OPTIONBUTTON_17)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_17,'0A'x) > 0 and 2+klength(OPTIONBUTTON_17) = klength(quote(trim(OPTIONBUTTON_17)))
                   then put '22'x OPTIONBUTTON_17 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_17 @;
              end;
       if missing(OPTIONBUTTON_18)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_18,'0A'x) > 0 and 2+klength(OPTIONBUTTON_18) = klength(quote(trim(OPTIONBUTTON_18)))
                   then put '22'x OPTIONBUTTON_18 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_18 @;
              end;
       if missing(OPTIONBUTTON_19)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_19,'0A'x) > 0 and 2+klength(OPTIONBUTTON_19) = klength(quote(trim(OPTIONBUTTON_19)))
                   then put '22'x OPTIONBUTTON_19 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_19 @;
              end;
       if missing(OPTIONBUTTON_20)
         then put "," @;
         else do;
                 if find(OPTIONBUTTON_20,'0A'x) > 0 and 2+klength(OPTIONBUTTON_20) = klength(quote(trim(OPTIONBUTTON_20)))
                   then put '22'x OPTIONBUTTON_20 +(-1) '22'x "," @;
                   else put OPTIONBUTTON_20 @;
              end;
       /* OPGELET: TEKSTBLOK_01 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_02 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_03 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_04 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_05 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_06 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_07 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_08 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_09 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       /* OPGELET: TEKSTBLOK_10 WORDT TIJDELIJK NIET OVERGENOMEN IN DE MIGRATIE IN VERBAND MET CODERINGSPROBLEMEN */
       put '22'x "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor." +(-1) '22'x "," @;
       if missing(VARCHAR_60_01)
         then put "," @;
         else do;
                 if find(VARCHAR_60_01,'0A'x) > 0 and 2+klength(VARCHAR_60_01) = klength(quote(trim(VARCHAR_60_01)))
                   then put '22'x VARCHAR_60_01 +(-1) '22'x "," @;
                   else put VARCHAR_60_01 @;
              end;
       if missing(VARCHAR_60_02)
         then put "," @;
         else do;
                 if find(VARCHAR_60_02,'0A'x) > 0 and 2+klength(VARCHAR_60_02) = klength(quote(trim(VARCHAR_60_02)))
                   then put '22'x VARCHAR_60_02 +(-1) '22'x "," @;
                   else put VARCHAR_60_02 @;
              end;
       if missing(VARCHAR_60_03)
         then put "," @;
         else do;
                 if find(VARCHAR_60_03,'0A'x) > 0 and 2+klength(VARCHAR_60_03) = klength(quote(trim(VARCHAR_60_03)))
                   then put '22'x VARCHAR_60_03 +(-1) '22'x "," @;
                   else put VARCHAR_60_03 @;
              end;
       if missing(VARCHAR_60_04)
         then put "," @;
         else do;
                 if find(VARCHAR_60_04,'0A'x) > 0 and 2+klength(VARCHAR_60_04) = klength(quote(trim(VARCHAR_60_04)))
                   then put '22'x VARCHAR_60_04 +(-1) '22'x "," @;
                   else put VARCHAR_60_04 @;
              end;
       if missing(VARCHAR_60_05)
         then put "," @;
         else do;
                 if find(VARCHAR_60_05,'0A'x) > 0 and 2+klength(VARCHAR_60_05) = klength(quote(trim(VARCHAR_60_05)))
                   then put '22'x VARCHAR_60_05 +(-1) '22'x "," @;
                   else put VARCHAR_60_05 @;
              end;
       if missing(VARCHAR_60_06)
         then put "," @;
         else do;
                 if find(VARCHAR_60_06,'0A'x) > 0 and 2+klength(VARCHAR_60_06) = klength(quote(trim(VARCHAR_60_06)))
                   then put '22'x VARCHAR_60_06 +(-1) '22'x "," @;
                   else put VARCHAR_60_06 @;
              end;
       if missing(VARCHAR_60_07)
         then put "," @;
         else do;
                 if find(VARCHAR_60_07,'0A'x) > 0 and 2+klength(VARCHAR_60_07) = klength(quote(trim(VARCHAR_60_07)))
                   then put '22'x VARCHAR_60_07 +(-1) '22'x "," @;
                   else put VARCHAR_60_07 @;
              end;
       if missing(VARCHAR_60_08)
         then put "," @;
         else do;
                 if find(VARCHAR_60_08,'0A'x) > 0 and 2+klength(VARCHAR_60_08) = klength(quote(trim(VARCHAR_60_08)))
                   then put '22'x VARCHAR_60_08 +(-1) '22'x "," @;
                   else put VARCHAR_60_08 @;
              end;
       if missing(VARCHAR_60_09)
         then put "," @;
         else do;
                 if find(VARCHAR_60_09,'0A'x) > 0 and 2+klength(VARCHAR_60_09) = klength(quote(trim(VARCHAR_60_09)))
                   then put '22'x VARCHAR_60_09 +(-1) '22'x "," @;
                   else put VARCHAR_60_09 @;
              end;
       if missing(VARCHAR_60_10)
         then put "," @;
         else do;
                 if find(VARCHAR_60_10,'0A'x) > 0 and 2+klength(VARCHAR_60_10) = klength(quote(trim(VARCHAR_60_10)))
                   then put '22'x VARCHAR_60_10 +(-1) '22'x "," @;
                   else put VARCHAR_60_10 @;
              end;
       if missing(VARCHAR_60_11)
         then put "," @;
         else do;
                 if find(VARCHAR_60_11,'0A'x) > 0 and 2+klength(VARCHAR_60_11) = klength(quote(trim(VARCHAR_60_11)))
                   then put '22'x VARCHAR_60_11 +(-1) '22'x "," @;
                   else put VARCHAR_60_11 @;
              end;
       if missing(VARCHAR_60_12)
         then put "," @;
         else do;
                 if find(VARCHAR_60_12,'0A'x) > 0 and 2+klength(VARCHAR_60_12) = klength(quote(trim(VARCHAR_60_12)))
                   then put '22'x VARCHAR_60_12 +(-1) '22'x "," @;
                   else put VARCHAR_60_12 @;
              end;
       if missing(VARCHAR_60_13)
         then put "," @;
         else do;
                 if find(VARCHAR_60_13,'0A'x) > 0 and 2+klength(VARCHAR_60_13) = klength(quote(trim(VARCHAR_60_13)))
                   then put '22'x VARCHAR_60_13 +(-1) '22'x "," @;
                   else put VARCHAR_60_13 @;
              end;
       if missing(VARCHAR_60_14)
         then put "," @;
         else do;
                 if find(VARCHAR_60_14,'0A'x) > 0 and 2+klength(VARCHAR_60_14) = klength(quote(trim(VARCHAR_60_14)))
                   then put '22'x VARCHAR_60_14 +(-1) '22'x "," @;
                   else put VARCHAR_60_14 @;
              end;
       if missing(VARCHAR_60_15)
         then put "," @;
         else do;
                 if find(VARCHAR_60_15,'0A'x) > 0 and 2+klength(VARCHAR_60_15) = klength(quote(trim(VARCHAR_60_15)))
                   then put '22'x VARCHAR_60_15 +(-1) '22'x "," @;
                   else put VARCHAR_60_15 @;
              end;
       if missing(VARCHAR_60_16)
         then put "," @;
         else do;
                 if find(VARCHAR_60_16,'0A'x) > 0 and 2+klength(VARCHAR_60_16) = klength(quote(trim(VARCHAR_60_16)))
                   then put '22'x VARCHAR_60_16 +(-1) '22'x "," @;
                   else put VARCHAR_60_16 @;
              end;
       if missing(VARCHAR_60_17)
         then put "," @;
         else do;
                 if find(VARCHAR_60_17,'0A'x) > 0 and 2+klength(VARCHAR_60_17) = klength(quote(trim(VARCHAR_60_17)))
                   then put '22'x VARCHAR_60_17 +(-1) '22'x "," @;
                   else put VARCHAR_60_17 @;
              end;
       if missing(VARCHAR_60_18)
         then put "," @;
         else do;
                 if find(VARCHAR_60_18,'0A'x) > 0 and 2+klength(VARCHAR_60_18) = klength(quote(trim(VARCHAR_60_18)))
                   then put '22'x VARCHAR_60_18 +(-1) '22'x "," @;
                   else put VARCHAR_60_18 @;
              end;
       if missing(VARCHAR_60_19)
         then put "," @;
         else do;
                 if find(VARCHAR_60_19,'0A'x) > 0 and 2+klength(VARCHAR_60_19) = klength(quote(trim(VARCHAR_60_19)))
                   then put '22'x VARCHAR_60_19 +(-1) '22'x "," @;
                   else put VARCHAR_60_19 @;
              end;
       if missing(VARCHAR_60_20)
         then put "," @;
         else do;
                 if find(VARCHAR_60_20,'0A'x) > 0 and 2+klength(VARCHAR_60_20) = klength(quote(trim(VARCHAR_60_20)))
                   then put '22'x VARCHAR_60_20 +(-1) '22'x "," @;
                   else put VARCHAR_60_20 @;
              end;
       if missing(VARCHAR_60_21)
         then put "," @;
         else do;
                 if find(VARCHAR_60_21,'0A'x) > 0 and 2+klength(VARCHAR_60_21) = klength(quote(trim(VARCHAR_60_21)))
                   then put '22'x VARCHAR_60_21 +(-1) '22'x "," @;
                   else put VARCHAR_60_21 @;
              end;
       if missing(VARCHAR_60_22)
         then put "," @;
         else do;
                 if find(VARCHAR_60_22,'0A'x) > 0 and 2+klength(VARCHAR_60_22) = klength(quote(trim(VARCHAR_60_22)))
                   then put '22'x VARCHAR_60_22 +(-1) '22'x "," @;
                   else put VARCHAR_60_22 @;
              end;
       if missing(VARCHAR_60_23)
         then put "," @;
         else do;
                 if find(VARCHAR_60_23,'0A'x) > 0 and 2+klength(VARCHAR_60_23) = klength(quote(trim(VARCHAR_60_23)))
                   then put '22'x VARCHAR_60_23 +(-1) '22'x "," @;
                   else put VARCHAR_60_23 @;
              end;
       if missing(VARCHAR_60_24)
         then put "," @;
         else do;
                 if find(VARCHAR_60_24,'0A'x) > 0 and 2+klength(VARCHAR_60_24) = klength(quote(trim(VARCHAR_60_24)))
                   then put '22'x VARCHAR_60_24 +(-1) '22'x "," @;
                   else put VARCHAR_60_24 @;
              end;
       if missing(VARCHAR_60_25)
         then put "," @;
         else do;
                 if find(VARCHAR_60_25,'0A'x) > 0 and 2+klength(VARCHAR_60_25) = klength(quote(trim(VARCHAR_60_25)))
                   then put '22'x VARCHAR_60_25 +(-1) '22'x "," @;
                   else put VARCHAR_60_25 @;
              end;
       if missing(VARCHAR_60_26)
         then put "," @;
         else do;
                 if find(VARCHAR_60_26,'0A'x) > 0 and 2+klength(VARCHAR_60_26) = klength(quote(trim(VARCHAR_60_26)))
                   then put '22'x VARCHAR_60_26 +(-1) '22'x "," @;
                   else put VARCHAR_60_26 @;
              end;
       if missing(VARCHAR_60_27)
         then put "," @;
         else do;
                 if find(VARCHAR_60_27,'0A'x) > 0 and 2+klength(VARCHAR_60_27) = klength(quote(trim(VARCHAR_60_27)))
                   then put '22'x VARCHAR_60_27 +(-1) '22'x "," @;
                   else put VARCHAR_60_27 @;
              end;
       if missing(VARCHAR_60_28)
         then put "," @;
         else do;
                 if find(VARCHAR_60_28,'0A'x) > 0 and 2+klength(VARCHAR_60_28) = klength(quote(trim(VARCHAR_60_28)))
                   then put '22'x VARCHAR_60_28 +(-1) '22'x "," @;
                   else put VARCHAR_60_28 @;
              end;
       if missing(VARCHAR_60_29)
         then put "," @;
         else do;
                 if find(VARCHAR_60_29,'0A'x) > 0 and 2+klength(VARCHAR_60_29) = klength(quote(trim(VARCHAR_60_29)))
                   then put '22'x VARCHAR_60_29 +(-1) '22'x "," @;
                   else put VARCHAR_60_29 @;
              end;
       if missing(VARCHAR_60_30)
         then put "," @;
         else do;
                 if find(VARCHAR_60_30,'0A'x) > 0 and 2+klength(VARCHAR_60_30) = klength(quote(trim(VARCHAR_60_30)))
                   then put '22'x VARCHAR_60_30 +(-1) '22'x "," @;
                   else put VARCHAR_60_30 @;
              end;
       if missing(VARCHAR_60_31)
         then put "," @;
         else do;
                 if find(VARCHAR_60_31,'0A'x) > 0 and 2+klength(VARCHAR_60_31) = klength(quote(trim(VARCHAR_60_31)))
                   then put '22'x VARCHAR_60_31 +(-1) '22'x "," @;
                   else put VARCHAR_60_31 @;
              end;
       if missing(VARCHAR_60_32)
         then put "," @;
         else do;
                 if find(VARCHAR_60_32,'0A'x) > 0 and 2+klength(VARCHAR_60_32) = klength(quote(trim(VARCHAR_60_32)))
                   then put '22'x VARCHAR_60_32 +(-1) '22'x "," @;
                   else put VARCHAR_60_32 @;
              end;
       if missing(VARCHAR_60_33)
         then put "," @;
         else do;
                 if find(VARCHAR_60_33,'0A'x) > 0 and 2+klength(VARCHAR_60_33) = klength(quote(trim(VARCHAR_60_33)))
                   then put '22'x VARCHAR_60_33 +(-1) '22'x "," @;
                   else put VARCHAR_60_33 @;
              end;
       if missing(VARCHAR_60_34)
         then put "," @;
         else do;
                 if find(VARCHAR_60_34,'0A'x) > 0 and 2+klength(VARCHAR_60_34) = klength(quote(trim(VARCHAR_60_34)))
                   then put '22'x VARCHAR_60_34 +(-1) '22'x "," @;
                   else put VARCHAR_60_34 @;
              end;
       if missing(VARCHAR_60_35)
         then put "," @;
         else do;
                 if find(VARCHAR_60_35,'0A'x) > 0 and 2+klength(VARCHAR_60_35) = klength(quote(trim(VARCHAR_60_35)))
                   then put '22'x VARCHAR_60_35 +(-1) '22'x "," @;
                   else put VARCHAR_60_35 @;
              end;
       if missing(VARCHAR_60_36)
         then put "," @;
         else do;
                 if find(VARCHAR_60_36,'0A'x) > 0 and 2+klength(VARCHAR_60_36) = klength(quote(trim(VARCHAR_60_36)))
                   then put '22'x VARCHAR_60_36 +(-1) '22'x "," @;
                   else put VARCHAR_60_36 @;
              end;
       if missing(VARCHAR_60_37)
         then put "," @;
         else do;
                 if find(VARCHAR_60_37,'0A'x) > 0 and 2+klength(VARCHAR_60_37) = klength(quote(trim(VARCHAR_60_37)))
                   then put '22'x VARCHAR_60_37 +(-1) '22'x "," @;
                   else put VARCHAR_60_37 @;
              end;
       if missing(VARCHAR_60_38)
         then put "," @;
         else do;
                 if find(VARCHAR_60_38,'0A'x) > 0 and 2+klength(VARCHAR_60_38) = klength(quote(trim(VARCHAR_60_38)))
                   then put '22'x VARCHAR_60_38 +(-1) '22'x "," @;
                   else put VARCHAR_60_38 @;
              end;
       if missing(VARCHAR_60_39)
         then put "," @;
         else do;
                 if find(VARCHAR_60_39,'0A'x) > 0 and 2+klength(VARCHAR_60_39) = klength(quote(trim(VARCHAR_60_39)))
                   then put '22'x VARCHAR_60_39 +(-1) '22'x "," @;
                   else put VARCHAR_60_39 @;
              end;
       if missing(VARCHAR_60_40)
         then put "," @;
         else do;
                 if find(VARCHAR_60_40,'0A'x) > 0 and 2+klength(VARCHAR_60_40) = klength(quote(trim(VARCHAR_60_40)))
                   then put '22'x VARCHAR_60_40 +(-1) '22'x "," @;
                   else put VARCHAR_60_40 @;
              end;
       if missing(VGS_ID)
         then put "," @;
         else do;
                 if find(VGS_ID,'0A'x) > 0 and 2+klength(VGS_ID) = klength(quote(trim(VGS_ID)))
                   then put '22'x VGS_ID +(-1) '22'x "," @;
                   else put VGS_ID @;
              end;
       if missing(VVG_VKM_VAR_GEGEVENS_DOS)
         then put "," @;
         else do;
                 if find(VVG_VKM_VAR_GEGEVENS_DOS,'0A'x) > 0 and 2+klength(VVG_VKM_VAR_GEGEVENS_DOS) = klength(quote(trim(VVG_VKM_VAR_GEGEVENS_DOS)))
                   then put '22'x VVG_VKM_VAR_GEGEVENS_DOS +(-1) '22'x "," @;
                   else put VVG_VKM_VAR_GEGEVENS_DOS @;
              end;
       if missing(VVG_VKM_VAR_GEGEVENS_PRG)
         then put "," @;
         else do;
                 if find(VVG_VKM_VAR_GEGEVENS_PRG,'0A'x) > 0 and 2+klength(VVG_VKM_VAR_GEGEVENS_PRG) = klength(quote(trim(VVG_VKM_VAR_GEGEVENS_PRG)))
                   then put '22'x VVG_VKM_VAR_GEGEVENS_PRG +(-1) '22'x "," @;
                   else put VVG_VKM_VAR_GEGEVENS_PRG @;
              end;
       if missing(VVG_VKT_ID)
         then put "," @;
         else do;
                 if find(VVG_VKT_ID,'0A'x) > 0 and 2+klength(VVG_VKT_ID) = klength(quote(trim(VVG_VKT_ID)))
                   then put '22'x VVG_VKT_ID +(-1) '22'x "," @;
                   else put VVG_VKT_ID @;
              end;
       if missing(VVG_DOS_ID)
         then put "," @;
         else do;
                 if find(VVG_DOS_ID,'0A'x) > 0 and 2+klength(VVG_DOS_ID) = klength(quote(trim(VVG_DOS_ID)))
                   then put '22'x VVG_DOS_ID +(-1) '22'x "," @;
                   else put VVG_DOS_ID @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

PROC SQL;
   CREATE TABLE WORK.BAS_VKM_VAR_KAART AS
   SELECT t1.Vkt_id,
          t1.Kaart_naam,
          t1.Datum_start FORMAT=B8601DT19. AS Datum_start,
          t1.Datum_einde FORMAT=B8601DT19. AS Datum_einde,
          t1.Omschrijving,
          t1.Vkm_var_kaart_dos,
          t1.Vkm_var_kaart_prg,
          t1.Prg_id,
          t1.Reg_id,
          t1.Reg_id_regpar,
          t1.Reg_Nr,
          t1.Vkm_var_kaart_dos_prg,
          t1.Vkm_var_kaart_dos_reg,
          t1.Vkm_var_kaart_dos_regpar,
          t1.Geblokkeerd,
          t1.Copy_jn
     FROM DATAQASG.VKM_VAR_KAART_TCMG t1;
QUIT;

data WORK.BAS_VKM_VAR_KAART;
  set WORK.BAS_VKM_VAR_KAART;
  techId=_n_;
run;


data _null_; 
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */ 
    %let _EFIREC_ = 0; /* clear export record count macro variable */ 
    file "\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_VKM_VAR_KAART.csv" delimiter=',' DSD DROPOVER lrecl=32767; 
    if _n_ = 1 then        /* write column names or labels */ 
     do; 
       put 
          "Vkt_id" 
       ','
          "Kaart_naam" 
       ','
          "Datum_start" 
       ','
          "Datum_einde" 
       ','
          "Omschrijving" 
       ','
          "Vkm_var_kaart_dos" 
       ','
          "Vkm_var_kaart_prg" 
       ','
          "Prg_id" 
       ','
          "Reg_id" 
       ','
          "Reg_id_regpar" 
       ','
          "Reg_Nr" 
       ','
          "Vkm_var_kaart_dos_prg" 
       ','
          "Vkm_var_kaart_dos_reg" 
       ','
          "Vkm_var_kaart_dos_regpar" 
       ','
          "Geblokkeerd" 
       ','
          "Copy_jn" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_VKM_VAR_KAART   end=EFIEOD; 
       format Vkt_id best12. ;
       format Kaart_naam  ;
       format Datum_start B8601DT19. ;
       format Datum_einde B8601DT19. ;
       format Omschrijving  ;
       format Vkm_var_kaart_dos  ;
       format Vkm_var_kaart_prg  ;
       format Prg_id best12. ;
       format Reg_id best12. ;
       format Reg_id_regpar best12. ;
       format Reg_Nr best12. ;
       format Vkm_var_kaart_dos_prg  ;
       format Vkm_var_kaart_dos_reg  ;
       format Vkm_var_kaart_dos_regpar  ;
       format Geblokkeerd  ;
       format Copy_jn  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Vkt_id)
         then put "," @;
         else do;
                 if find(Vkt_id,'0A'x) > 0 and 2+klength(Vkt_id) = klength(quote(trim(Vkt_id)))
                   then put '22'x Vkt_id +(-1) '22'x "," @;
                   else put Vkt_id @;
              end;
       if missing(Kaart_naam)
         then put "," @;
         else do;
                 if find(Kaart_naam,'0A'x) > 0 and 2+klength(Kaart_naam) = klength(quote(trim(Kaart_naam)))
                   then put '22'x Kaart_naam +(-1) '22'x "," @;
                   else put Kaart_naam @;
              end;
       if missing(Datum_start)
         then put "," @;
         else do;
                 if find(Datum_start,'0A'x) > 0 and 2+klength(Datum_start) = klength(quote(trim(Datum_start)))
                   then put '22'x Datum_start +(-1) '22'x "," @;
                   else put Datum_start @;
              end;
       if missing(Datum_einde)
         then put "," @;
         else do;
                 if find(Datum_einde,'0A'x) > 0 and 2+klength(Datum_einde) = klength(quote(trim(Datum_einde)))
                   then put '22'x Datum_einde +(-1) '22'x "," @;
                   else put Datum_einde @;
              end;
       if missing(Omschrijving)
         then put "," @;
         else do;
                 if find(Omschrijving,'0A'x) > 0 and 2+klength(Omschrijving) = klength(quote(trim(Omschrijving)))
                   then put '22'x Omschrijving +(-1) '22'x "," @;
                   else put Omschrijving @;
              end;
       if missing(Vkm_var_kaart_dos)
         then put "," @;
         else do;
                 if find(Vkm_var_kaart_dos,'0A'x) > 0 and 2+klength(Vkm_var_kaart_dos) = klength(quote(trim(Vkm_var_kaart_dos)))
                   then put '22'x Vkm_var_kaart_dos +(-1) '22'x "," @;
                   else put Vkm_var_kaart_dos @;
              end;
       if missing(Vkm_var_kaart_prg)
         then put "," @;
         else do;
                 if find(Vkm_var_kaart_prg,'0A'x) > 0 and 2+klength(Vkm_var_kaart_prg) = klength(quote(trim(Vkm_var_kaart_prg)))
                   then put '22'x Vkm_var_kaart_prg +(-1) '22'x "," @;
                   else put Vkm_var_kaart_prg @;
              end;
       if missing(Prg_id)
         then put "," @;
         else do;
                 if find(Prg_id,'0A'x) > 0 and 2+klength(Prg_id) = klength(quote(trim(Prg_id)))
                   then put '22'x Prg_id +(-1) '22'x "," @;
                   else put Prg_id @;
              end;
       if missing(Reg_id)
         then put "," @;
         else do;
                 if find(Reg_id,'0A'x) > 0 and 2+klength(Reg_id) = klength(quote(trim(Reg_id)))
                   then put '22'x Reg_id +(-1) '22'x "," @;
                   else put Reg_id @;
              end;
       if missing(Reg_id_regpar)
         then put "," @;
         else do;
                 if find(Reg_id_regpar,'0A'x) > 0 and 2+klength(Reg_id_regpar) = klength(quote(trim(Reg_id_regpar)))
                   then put '22'x Reg_id_regpar +(-1) '22'x "," @;
                   else put Reg_id_regpar @;
              end;
       if missing(Reg_Nr)
         then put "," @;
         else do;
                 if find(Reg_Nr,'0A'x) > 0 and 2+klength(Reg_Nr) = klength(quote(trim(Reg_Nr)))
                   then put '22'x Reg_Nr +(-1) '22'x "," @;
                   else put Reg_Nr @;
              end;
       if missing(Vkm_var_kaart_dos_prg)
         then put "," @;
         else do;
                 if find(Vkm_var_kaart_dos_prg,'0A'x) > 0 and 2+klength(Vkm_var_kaart_dos_prg) = klength(quote(trim(Vkm_var_kaart_dos_prg)))
                   then put '22'x Vkm_var_kaart_dos_prg +(-1) '22'x "," @;
                   else put Vkm_var_kaart_dos_prg @;
              end;
       if missing(Vkm_var_kaart_dos_reg)
         then put "," @;
         else do;
                 if find(Vkm_var_kaart_dos_reg,'0A'x) > 0 and 2+klength(Vkm_var_kaart_dos_reg) = klength(quote(trim(Vkm_var_kaart_dos_reg)))
                   then put '22'x Vkm_var_kaart_dos_reg +(-1) '22'x "," @;
                   else put Vkm_var_kaart_dos_reg @;
              end;
       if missing(Vkm_var_kaart_dos_regpar)
         then put "," @;
         else do;
                 if find(Vkm_var_kaart_dos_regpar,'0A'x) > 0 and 2+klength(Vkm_var_kaart_dos_regpar) = klength(quote(trim(Vkm_var_kaart_dos_regpar)))
                   then put '22'x Vkm_var_kaart_dos_regpar +(-1) '22'x "," @;
                   else put Vkm_var_kaart_dos_regpar @;
              end;
       if missing(Geblokkeerd)
         then put "," @;
         else do;
                 if find(Geblokkeerd,'0A'x) > 0 and 2+klength(Geblokkeerd) = klength(quote(trim(Geblokkeerd)))
                   then put '22'x Geblokkeerd +(-1) '22'x "," @;
                   else put Geblokkeerd @;
              end;
       if missing(Copy_jn)
         then put "," @;
         else do;
                 if find(Copy_jn,'0A'x) > 0 and 2+klength(Copy_jn) = klength(quote(trim(Copy_jn)))
                   then put '22'x Copy_jn +(-1) '22'x "," @;
                   else put Copy_jn @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

