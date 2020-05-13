PROC SQL;
   CREATE TABLE WORK.BAS_AOM_ACTIE AS
   SELECT t1.Actie_cd,
          t1.Actie_oms,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.timestamp
     FROM DATAQASG.AOM_ACTIE_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_AOM_ACTIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_AOM_ACTIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_AOM_ACTIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_AOM_ACTIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_AOM_TRA_ACTIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_AOM_TRA_ACTIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_AOM_TRA_ACTIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_AOM_TRA_ACTIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_AOM_TRANSACTIETYPE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_AOM_TRANSACTIETYPE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_AOM_TRANSACTIETYPE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_AOM_TRANSACTIETYPE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_BTM_BETALING
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_BTM_BETALING.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_BTM_BETALING()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_BTM_BETALING.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_BTM_HIST_BETALING
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_BTM_HIST_BETALING.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_BTM_HIST_BETALING()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_BTM_HIST_BETALING.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_BERICHT
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_BERICHT.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_BERICHT()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_BERICHT.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_COR_PARAAF
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_COR_PARAAF.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_COR_PARAAF()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_COR_PARAAF.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_COR_SRT
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_COR_SRT.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_COR_SRT()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_COR_SRT.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_CORRESPONDENTIE_HIST
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_CORRESPONDENTIE_HIST.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_CORRESPONDENTIE_HIST()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_CORRESPONDENTIE_HIST.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_CORRESPONDENTIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_CORRESPONDENTIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_CORRESPONDENTIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_CORRESPONDENTIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_CST_SET_CST
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_CST_SET_CST.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_CST_SET_CST()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_CST_SET_CST.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_PARAAF
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_PARAAF.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_PARAAF()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_PARAAF.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_REACTIE_BIJ_COR_SRT
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_REACTIE_BIJ_COR_SRT.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_REACTIE_BIJ_COR_SRT()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_REACTIE_BIJ_COR_SRT.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_REGLSPEC_COR
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_REGLSPEC_COR.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_REGLSPEC_COR()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_REGLSPEC_COR.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_COR_TRANSACTIEGROEP_BIJ_BRF
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_COR_TRANSACTIEGROEP_BIJ_BRF.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_COR_TRANSACTIEGROEP_BIJ_BRF()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_COR_TRANSACTIEGROEP_BIJ_BRF.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_CONT_BIJ_DLN_COM_ADR
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_CONT_BIJ_DLN_COM_ADR.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_CONT_BIJ_DLN_COM_ADR()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_CONT_BIJ_DLN_COM_ADR.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_CONTACT_BIJ_DEELNAME
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_CONTACT_BIJ_DEELNAME.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_CONTACT_BIJ_DEELNAME()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_CONTACT_BIJ_DEELNAME.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_DECLARATIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DECLARATIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DECLARATIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DECLARATIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_DEELNAME_ADRES
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DEELNAME_ADRES.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DEELNAME_ADRES()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DEELNAME_ADRES.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_DEELNAME_COM_ADRES
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DEELNAME_COM_ADRES.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DEELNAME_COM_ADRES()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DEELNAME_COM_ADRES.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_DEELNAME
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DEELNAME.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DEELNAME()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DEELNAME.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_DOS_BUDGETREGEL
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOS_BUDGETREGEL.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DOS_BUDGETREGEL()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DOS_BUDGETREGEL.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_DOSSIER_IN_GROEP
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIER_IN_GROEP.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DOSSIER_IN_GROEP()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DOSSIER_IN_GROEP.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_DOSSIER_NOTITIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIER_NOTITIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DOSSIER_NOTITIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DOSSIER_NOTITIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_DOSSIER
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIER.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DOSSIER()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DOSSIER.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
PROC SQL;
   CREATE TABLE WORK.BAS_DAM_DOSSIERGROEP AS
   SELECT t1.Ddg_id,
          t1.Age_id,
          t1.Naam,
          t1.Toelichting,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Timestamp
     FROM DATAQASG.DAM_DOSSIERGROEP_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_DAM_DOSSIERGROEP
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIERGROEP.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_DOSSIERGROEP()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_DOSSIERGROEP.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_LOKATIEADRES
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_LOKATIEADRES.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_LOKATIEADRES()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_LOKATIEADRES.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_MDW_INTERN_HIST
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_MDW_INTERN_HIST.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_MDW_INTERN_HIST()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_MDW_INTERN_HIST.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_MDW_INTERN
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_MDW_INTERN.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_MDW_INTERN()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_MDW_INTERN.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_STATUSHISTORIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_STATUSHISTORIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_STATUSHISTORIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_STATUSHISTORIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_TERMIJN_PARAAF_NOTITIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_TERMIJN_PARAAF_NOTITIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_TERMIJN_PARAAF_NOTITIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_TERMIJN_PARAAF_NOTITIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_DAM_TERMIJN
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_TERMIJN.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_DAM_TERMIJN()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_DAM_TERMIJN.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Timestamp
     FROM DATAQASG.FAM_STATUSHISTORIE_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_FAM_STATUSHISTORIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_FAM_STATUSHISTORIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_FAM_STATUSHISTORIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_FAM_STATUSHISTORIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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
          t1.Timestamp,
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

proc export
   data=WORK.BAS_FAM_TRANSACTIE_REGEL
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_FAM_TRANSACTIE_REGEL.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_FAM_TRANSACTIE_REGEL()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_FAM_TRANSACTIE_REGEL.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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
          t1.Timestamp,
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

proc export
   data=WORK.BAS_FAM_TRANSACTIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_FAM_TRANSACTIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_FAM_TRANSACTIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_FAM_TRANSACTIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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
          t1.Timestamp,
          t1.Ikb_naam,
          t1.Inkoopbevinding,
          t1.Inkoopbevinding_user,
          t1.Betalingsverzoeknummer
     FROM DATAQASG.FAM_VERPLICHTING_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_FAM_VERPLICHTING
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_FAM_VERPLICHTING.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_FAM_VERPLICHTING()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_FAM_VERPLICHTING.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_IOM_FUNCTIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_IOM_FUNCTIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_IOM_FUNCTIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_IOM_FUNCTIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_IOM_LOCATIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_IOM_LOCATIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_IOM_LOCATIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_IOM_LOCATIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_IOM_MEDEWERKER
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_IOM_MEDEWERKER.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_IOM_MEDEWERKER()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_IOM_MEDEWERKER.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
PROC SQL;
   CREATE TABLE WORK.BAS_IOM_MEDEWERKERROL AS
   SELECT t1.Mdw_id,
          t1.Rol_cd,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Creatie_user,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Timestamp,
          t1.Actief
     FROM DATAQASG.IOM_MEDEWERKERROL_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_IOM_MEDEWERKERROL
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_IOM_MEDEWERKERROL.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_IOM_MEDEWERKERROL()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_IOM_MEDEWERKERROL.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_BEHANDELAAR
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BEHANDELAAR.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_BEHANDELAAR()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_BEHANDELAAR.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_BEROEP
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BEROEP.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_BEROEP()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_BEROEP.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_BEZWAAR
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BEZWAAR.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_BEZWAAR()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_BEZWAAR.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_BEZWAAR_TERMIJN_HIST
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BEZWAAR_TERMIJN_HIST.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_BEZWAAR_TERMIJN_HIST()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_BEZWAAR_TERMIJN_HIST.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_BOB_WIZARD
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BOB_WIZARD.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_BOB_WIZARD()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_BOB_WIZARD.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_BRIEF_FUNCTIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_BRIEF_FUNCTIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_BRIEF_FUNCTIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_BRIEF_FUNCTIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_FUNCTIE_VAN_BRIEF
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_FUNCTIE_VAN_BRIEF.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_FUNCTIE_VAN_BRIEF()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_FUNCTIE_VAN_BRIEF.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_PROCEDURE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_PROCEDURE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_PROCEDURE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_PROCEDURE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_REACTIE_TERMIJN
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_REACTIE_TERMIJN.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_REACTIE_TERMIJN()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_REACTIE_TERMIJN.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_JZM_STATUSREGEL
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_STATUSREGEL.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_STATUSREGEL()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_STATUSREGEL.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
PROC SQL;
   CREATE TABLE WORK.BAS_JZM_UITSPRAAK AS
   SELECT t1.Uitspraak,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat
     FROM DATAQASG.JZM_UITSPRAAK_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_JZM_UITSPRAAK
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_JZM_UITSPRAAK.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_JZM_UITSPRAAK()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_JZM_UITSPRAAK.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_OBJ_LOKATIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_OBJ_LOKATIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_OBJ_LOKATIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_OBJ_LOKATIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_PCT_MUT
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_PCT_MUT.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_PCT_MUT()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_PCT_MUT.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_PCT
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_PCT.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_PCT()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_PCT.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_ADRES_RELATIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ADRES_RELATIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_ADRES_RELATIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_ADRES_RELATIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_ADRES
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ADRES.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_ADRES()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_ADRES.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_COM_ADRES_CP
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_COM_ADRES_CP.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_COM_ADRES_CP()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_COM_ADRES_CP.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_COM_ADRES_RELATIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_COM_ADRES_RELATIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_COM_ADRES_RELATIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_COM_ADRES_RELATIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_COM_ADRES
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_COM_ADRES.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_COM_ADRES()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_COM_ADRES.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_CONTACTPERSOON
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_CONTACTPERSOON.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_CONTACTPERSOON()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_CONTACTPERSOON.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
PROC SQL;
   CREATE TABLE WORK.BAS_RBM_CP_VESTIGING AS
   SELECT t1.Org_id,
          t1.Per_id,
          t1.Vst_volgnr
     FROM DATAQASG.RBM_CP_VESTIGING_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_RBM_CP_VESTIGING
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_CP_VESTIGING.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_CP_VESTIGING()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_CP_VESTIGING.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_ORG_BSI
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG_BSI.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_ORG_BSI()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_ORG_BSI.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_ORG_FAILLIET
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG_FAILLIET.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_ORG_FAILLIET()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_ORG_FAILLIET.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
PROC SQL;
   CREATE TABLE WORK.BAS_RBM_ORG_JAAR AS
   SELECT t1.Rel_id,
          t1.Jaar,
          t1.Aantal_werknemers,
          t1.Creatie_user,
          t1.Creatie_dat FORMAT=B8601DT19. AS Creatie_dat,
          t1.Mutatie_user,
          t1.Mutatie_dat FORMAT=B8601DT19. AS Mutatie_dat,
          t1.Timestamp,
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

proc export
   data=WORK.BAS_RBM_ORG_JAAR
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG_JAAR.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_ORG_JAAR()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_ORG_JAAR.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_ORG_NAAM
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG_NAAM.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_ORG_NAAM()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_ORG_NAAM.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_ORG
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_ORG.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_ORG()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_ORG.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_PERSOON
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_PERSOON.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_PERSOON()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_PERSOON.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_REKENINGNRS
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_REKENINGNRS.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_REKENINGNRS()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_REKENINGNRS.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_REKNR_MUT
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_REKNR_MUT.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_REKNR_MUT()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_REKNR_MUT.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_RELATIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_RELATIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_RELATIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_RELATIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_SBI_ORG
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_SBI_ORG.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_SBI_ORG()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_SBI_ORG.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RBM_VESTIGING
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RBM_VESTIGING.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RBM_VESTIGING()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RBM_VESTIGING.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_BUDGETONDERVERDELING
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_BUDGETONDERVERDELING.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_BUDGETONDERVERDELING()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_BUDGETONDERVERDELING.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_CLASSIFICATIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_CLASSIFICATIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_CLASSIFICATIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_CLASSIFICATIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_JAARBUDGET
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_JAARBUDGET.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_JAARBUDGET()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_JAARBUDGET.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_MANDAAT
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_MANDAAT.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_MANDAAT()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_MANDAAT.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_OVEREENKOMST_DOCUMENT
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_OVEREENKOMST_DOCUMENT.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_OVEREENKOMST_DOCUMENT()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_OVEREENKOMST_DOCUMENT.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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
          t1.Timestamp,
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

proc export
   data=WORK.BAS_RDM_PERIODE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_PERIODE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_PERIODE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_PERIODE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_PRG_OVEREENKOMST
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_PRG_OVEREENKOMST.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_PRG_OVEREENKOMST()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_PRG_OVEREENKOMST.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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
          t1.Timestamp,
          t1.Senioriteit,
          t1.Mentor_id,
          t1.Vervang_id,
          t1.Vervang_rol,
          t1.Acc_id,
          t1.Mdw_id_parf_naar,
          t1.Mentor_rol_cd
     FROM DATAQASG.RDM_PROGRAMMAMEDEWERKERROL_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_RDM_PROGRAMMAMEDEWERKERROL
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_PROGRAMMAMEDEWERKERROL.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_PROGRAMMAMEDEWERKERROL()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_PROGRAMMAMEDEWERKERROL.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_REGELING
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_REGELING.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_REGELING()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_REGELING.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_REGPAR_BUDGONDVERD
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_REGPAR_BUDGONDVERD.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_REGPAR_BUDGONDVERD()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_REGPAR_BUDGONDVERD.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_STATUSOVERG_BIJ_BRIEF
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_STATUSOVERG_BIJ_BRIEF.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_STATUSOVERG_BIJ_BRIEF()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_STATUSOVERG_BIJ_BRIEF.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_RDM_VARIABELE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_RDM_VARIABELE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_RDM_VARIABELE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_RDM_VARIABELE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_STM_BSI
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_BSI.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_STM_BSI()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_STM_BSI.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_STM_REACTIE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_REACTIE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_STM_REACTIE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_STM_REACTIE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_STM_ROL
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_ROL.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_STM_ROL()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_STM_ROL.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_STM_SBI
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_SBI.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_STM_SBI()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_STM_SBI.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_STM_STATUS
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_STATUS.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_STM_STATUS()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_STM_STATUS.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_STM_STATUSOVERG_BIJ_BRIEF
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_STM_STATUSOVERG_BIJ_BRIEF.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_STM_STATUSOVERG_BIJ_BRIEF()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_STM_STATUSOVERG_BIJ_BRIEF.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
PROC SQL;
   CREATE TABLE WORK.BAS_VKM_TOEGEV_VAR_VELD_WAARDE AS
   SELECT t1.Vkt_id,
          t1.Fysieke_naam,
          t1.Waarde,
          t1.Volgorde
     FROM DATAQASG.VKM_TOEGEV_VAR_VELD_WAARDE_TCMG t1;
QUIT;

proc export
   data=WORK.BAS_VKM_TOEGEV_VAR_VELD_WAARDE
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_VKM_TOEGEV_VAR_VELD_WAARDE.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_VKM_TOEGEV_VAR_VELD_WAARDE()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_VKM_TOEGEV_VAR_VELD_WAARDE.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_VKM_TOEGEVOEGD_VAR_VELD
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_VKM_TOEGEVOEGD_VAR_VELD.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_VKM_TOEGEVOEGD_VAR_VELD()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_VKM_TOEGEVOEGD_VAR_VELD.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_VKM_VAR_GEGEVENS
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_VKM_VAR_GEGEVENS.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_VKM_VAR_GEGEVENS()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_VKM_VAR_GEGEVENS.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
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

proc export
   data=WORK.BAS_VKM_VAR_KAART
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_VKM_VAR_KAART.csv"
   dbms=csv;
run;

PROC SURVEYSELECT DATA=WORK.BAS_VKM_VAR_KAART()
   OUT=WORK.RANDRandomSample
   METHOD=SRS
   SELECTALL
   N=25;
RUN;

proc export
   data=WORK.RANDRandomSample
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\Samples\rnd_BAS_VKM_VAR_KAART.csv"
   dbms=csv;
run;

proc delete DATA=WORK.RANDRandomSample;
