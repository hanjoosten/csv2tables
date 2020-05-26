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
          "Aangeboden_aan_ZER" 
       ','
          "Aangevraagd_bedrag" 
       ','
          "Aantal_ICT_projecten" 
       ','
          "Aantal_SO_projecten" 
       ','
          "Aantal_SO_werknemers" 
       ','
          "Aantal_SO_zlf" 
       ','
          "Aantal_dagenopschorting" 
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
          "Afgelost_op_onvoorw_hoofdsom" 
       ','
          "Afgelost_op_onvoorw_rente" 
       ','
          "Afhandeldatum" 
       ','
          "Afhandelwijze" 
       ','
          "Afl_neg_einddeclaratie" 
       ','
          "Akkoord_verlenen" 
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
          "Begrote_SO_loonsom" 
       ','
          "Behandelingsronde" 
       ','
          "Beoordelingswijze" 
       ','
          "Berekende_rente" 
       ','
          "Beslissing_cd" 
       ','
          "Cerhoud_id_Ondertekenaar" 
       ','
          "Checksum" 
       ','
          "Classificatie" 
       ','
          "Cluster_nr" 
       ','
          "Commercieel_perspectief" 
       ','
          "Contractjaar" 
       ','
          "Controle_activiteit" 
       ','
          "Conversiedossier" 
       ','
          "Correspondentie_via_email" 
       ','
          "Creatie_dat" 
       ','
          "Creatie_user" 
       ','
          "Datum_in" 
       ','
          "Datum_renteberekening" 
       ','
          "Datum_status" 
       ','
          "Direct_opeisbaar_gesteld" 
       ','
          "Direct_opeisbare_hoofdsom" 
       ','
          "Direct_opeisbare_rente" 
       ','
          "Direct_opeisbare_vordering" 
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
          "Jaar" 
       ','
          "Jaardossier_WBSO" 
       ','
          "Jaardossier_bron_dos_id" 
       ','
          "Jaardossier_dos_id" 
       ','
          "Korte_titel" 
       ','
          "Krat_nr" 
       ','
          "Kwijtsch_voorw_rente" 
       ','
          "Kwijtsch_direct_opeisbaar" 
       ','
          "Kwijtsch_onvoorw_hoofdsom" 
       ','
          "Kwijtsch_onvoorw_rente" 
       ','
          "Kwijtsch_voorw_hoofdsom" 
       ','
          "LB_nummer_komt_overeen" 
       ','
          "Laatste_jr_aflossing" 
       ','
          "Laatste_pcs_id" 
       ','
          "Landnaam" 
       ','
          "Machtiging_JN" 
       ','
          "Mdw_cd" 
       ','
          "Meldingnummer_IRWA" 
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
          "Ontvangstdatum" 
       ','
          "Oorspr_einddatum" 
       ','
          "Opdrachtvorm_cd" 
       ','
          "Overige_subsidie" 
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
          "RDA_Afhandeling_forfaitair" 
       ','
          "RDA_aangevraagd" 
       ','
          "Ranking" 
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
          "SO_loon" 
       ','
          "SO_uren" 
       ','
          "Samenwerkingsverband1" 
       ','
          "Samenwerkingsverband2" 
       ','
          "Startmaand" 
       ','
          "Status_E_Diensten" 
       ','
          "Status_E_Loket" 
       ','
          "Status_TT" 
       ','
          "Status_cert" 
       ','
          "Status_oud" 
       ','
          "Statuscode" 
       ','
          "Statusgroep" 
       ','
          "Statustermijn" 
       ','
          "Technisch_Cor_id" 
       ','
          "Technisch_succes" 
       ','
          "Titel" 
       ','
          "Totaal_afgelost_op_hoofdsom" 
       ','
          "Totaal_bijgeschreven_rente" 
       ','
          "Totaal_gecommitteerd_bedrag" 
       ','
          "Totaal_gedeclareerd_bedrag" 
       ','
          "Totaal_geschoonde_kosten" 
       ','
          "Totaal_ingetrokken_bedrag" 
       ','
          "Totaal_kwijtgescholden_bedrag" 
       ','
          "Totaal_ontvangen_rente" 
       ','
          "Totaal_openstaand_bedrag" 
       ','
          "Totaal_uitbetaald" 
       ','
          "Totaal_verleend_bedrag" 
       ','
          "Totale_hoofdsom" 
       ','
          "Uitlening_binnen_Fisc_eenheid" 
       ','
          "Uurloon_jaar" 
       ','
          "VV_Aanvraagnummer" 
       ','
          "Vaststellen_batch" 
       ','
          "Vaststelling_conform_aanvraag" 
       ','
          "Vergoedingsperc" 
       ','
          "Volgnr_LB" 
       ','
          "Volgnr_diskette" 
       ','
          "Volgnr_diskette_na_import" 
       ','
          "Voorlopig_gecommitteerd" 
       ','
          "Voorlopig_gedeclareerd" 
       ','
          "Vorie_aanvraagperiode" 
       ','
          "Vorig_aanvraag_bedrijf_nr" 
       ','
          "Vorig_aanvraag_volgnr" 
       ','
          "Vorig_aanvraagjaar" 
       ','
          "Vorig_aanvraagnummer" 
       ','
          "Wel_akkoord_niet_verlenen" 
       ','
          "Zegge_Totaal_gecommitteerd" 
       ','
          "aut_verwerkt_imp" 
       ','
          "status_SO_uurloon" 
       ','
          "techId" 
       ; 
     end; 
   set  WORK.BAS_DAM_DOSSIER   end=EFIEOD; 
       format Aangeboden_aan_ZER  ;
       format Aangevraagd_bedrag best12. ;
       format Aantal_ICT_projecten best12. ;
       format Aantal_SO_projecten best12. ;
       format Aantal_SO_werknemers best12. ;
       format Aantal_SO_zlf best12. ;
       format Aantal_dagenopschorting best12. ;
       format Aanvang_dat B8601DT19. ;
       format Aanvraag_volgnr best12. ;
       format Aanvraagsoort  ;
       format Acceptatie_sts  ;
       format Afdrachtsvermindering  ;
       format Afgelost_op_onvoorw_hoofdsom best12. ;
       format Afgelost_op_onvoorw_rente best12. ;
       format Afhandeldatum B8601DT19. ;
       format Afhandelwijze  ;
       format Afl_neg_einddeclaratie best12. ;
       format Akkoord_verlenen  ;
       format Auth_id_indiener best12. ;
       format Auth_id_ondertekenaar best12. ;
       format Auth_prg_id best12. ;
       format BAS_advies  ;
       format Batchstatuscert  ;
       format Batchstatusref  ;
       format Batchstatusstat  ;
       format Begrote_SO_loonsom best12. ;
       format Behandelingsronde best12. ;
       format Beoordelingswijze  ;
       format Berekende_rente best12. ;
       format Beslissing_cd  ;
       format Cerhoud_id_Ondertekenaar best12. ;
       format Checksum best12. ;
       format Classificatie  ;
       format Cluster_nr best12. ;
       format Commercieel_perspectief  ;
       format Contractjaar best12. ;
       format Controle_activiteit  ;
       format Conversiedossier  ;
       format Correspondentie_via_email  ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user  ;
       format Datum_in B8601DT19. ;
       format Datum_renteberekening B8601DT19. ;
       format Datum_status B8601DT19. ;
       format Direct_opeisbaar_gesteld best12. ;
       format Direct_opeisbare_hoofdsom best12. ;
       format Direct_opeisbare_rente best12. ;
       format Direct_opeisbare_vordering best12. ;
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
       format Jaar best12. ;
       format Jaardossier_WBSO  ;
       format Jaardossier_bron_dos_id best12. ;
       format Jaardossier_dos_id best12. ;
       format Korte_titel  ;
       format Krat_nr best12. ;
       format Kwijtsch_voorw_rente best12. ;
       format Kwijtsch_direct_opeisbaar best12. ;
       format Kwijtsch_onvoorw_hoofdsom best12. ;
       format Kwijtsch_onvoorw_rente best12. ;
       format Kwijtsch_voorw_hoofdsom best12. ;
       format LB_nummer_komt_overeen  ;
       format Laatste_jr_aflossing best12. ;
       format Laatste_pcs_id best12. ;
       format Landnaam  ;
       format Machtiging_JN  ;
       format Mdw_cd  ;
       format Meldingnummer_IRWA  ;
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
       format Ontvangstdatum B8601DT19. ;
       format Oorspr_einddatum B8601DT19. ;
       format Opdrachtvorm_cd  ;
       format Overige_subsidie  ;
       format Perc_verrekenen best12. ;
       format Periode_nr best12. ;
       format Prioriteit best12. ;
       format Prioriteitsdatum B8601DT19. ;
       format Projectomschrijving  ;
       format RDA_Afhandeling_forfaitair  ;
       format RDA_aangevraagd  ;
       format Ranking best12. ;
       format Referentie  ;
       format Reg_id best12. ;
       format Reg_nr best12. ;
       format Rel_id_Aanvrager best12. ;
       format Rente_perc best12. ;
       format SO_loon best12. ;
       format SO_uren best12. ;
       format Samenwerkingsverband1  ;
       format Samenwerkingsverband2  ;
       format Startmaand best12. ;
       format Status_E_Diensten  ;
       format Status_E_Loket  ;
       format Status_TT  ;
       format Status_cert  ;
       format Status_oud  ;
       format Statuscode  ;
       format Statusgroep  ;
       format Statustermijn B8601DT19. ;
       format Technisch_Cor_id best12. ;
       format Technisch_succes best12. ;
       format Titel  ;
       format Totaal_afgelost_op_hoofdsom best12. ;
       format Totaal_bijgeschreven_rente best12. ;
       format Totaal_gecommitteerd_bedrag best12. ;
       format Totaal_gedeclareerd_bedrag best12. ;
       format Totaal_geschoonde_kosten best12. ;
       format Totaal_ingetrokken_bedrag best12. ;
       format Totaal_kwijtgescholden_bedrag best12. ;
       format Totaal_ontvangen_rente best12. ;
       format Totaal_openstaand_bedrag best12. ;
       format Totaal_uitbetaald best12. ;
       format Totaal_verleend_bedrag best12. ;
       format Totale_hoofdsom best12. ;
       format Uitlening_binnen_Fisc_eenheid  ;
       format Uurloon_jaar best12. ;
       format VV_Aanvraagnummer  ;
       format Vaststellen_batch  ;
       format Vaststelling_conform_aanvraag  ;
       format Vergoedingsperc best12. ;
       format Volgnr_LB best12. ;
       format Volgnr_diskette best12. ;
       format Volgnr_diskette_na_import best12. ;
       format Voorlopig_gecommitteerd best12. ;
       format Voorlopig_gedeclareerd best12. ;
       format Vorie_aanvraagperiode best12. ;
       format Vorig_aanvraag_bedrijf_nr best12. ;
       format Vorig_aanvraag_volgnr best12. ;
       format Vorig_aanvraagjaar best12. ;
       format Vorig_aanvraagnummer  ;
       format Wel_akkoord_niet_verlenen  ;
       format Zegge_Totaal_gecommitteerd  ;
       format aut_verwerkt_imp  ;
       format status_SO_uurloon  ;
       format techId best12. ; 
     do; 
       EFIOUT + 1; 
       if missing(Aangeboden_aan_ZER)
         then put "," @;
         else do;
                 if find(Aangeboden_aan_ZER,'0A'x) > 0 and 2+klength(Aangeboden_aan_ZER) = klength(quote(trim(Aangeboden_aan_ZER)))
                   then put '22'x Aangeboden_aan_ZER +(-1) '22'x "," @;
                   else put Aangeboden_aan_ZER @;
              end;
       if missing(Aangevraagd_bedrag)
         then put "," @;
         else do;
                 if find(Aangevraagd_bedrag,'0A'x) > 0 and 2+klength(Aangevraagd_bedrag) = klength(quote(trim(Aangevraagd_bedrag)))
                   then put '22'x Aangevraagd_bedrag +(-1) '22'x "," @;
                   else put Aangevraagd_bedrag @;
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
       if missing(Aantal_dagenopschorting)
         then put "," @;
         else do;
                 if find(Aantal_dagenopschorting,'0A'x) > 0 and 2+klength(Aantal_dagenopschorting) = klength(quote(trim(Aantal_dagenopschorting)))
                   then put '22'x Aantal_dagenopschorting +(-1) '22'x "," @;
                   else put Aantal_dagenopschorting @;
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
       if missing(Begrote_SO_loonsom)
         then put "," @;
         else do;
                 if find(Begrote_SO_loonsom,'0A'x) > 0 and 2+klength(Begrote_SO_loonsom) = klength(quote(trim(Begrote_SO_loonsom)))
                   then put '22'x Begrote_SO_loonsom +(-1) '22'x "," @;
                   else put Begrote_SO_loonsom @;
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
       if missing(Cerhoud_id_Ondertekenaar)
         then put "," @;
         else do;
                 if find(Cerhoud_id_Ondertekenaar,'0A'x) > 0 and 2+klength(Cerhoud_id_Ondertekenaar) = klength(quote(trim(Cerhoud_id_Ondertekenaar)))
                   then put '22'x Cerhoud_id_Ondertekenaar +(-1) '22'x "," @;
                   else put Cerhoud_id_Ondertekenaar @;
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
       if missing(Controle_activiteit)
         then put "," @;
         else do;
                 if find(Controle_activiteit,'0A'x) > 0 and 2+klength(Controle_activiteit) = klength(quote(trim(Controle_activiteit)))
                   then put '22'x Controle_activiteit +(-1) '22'x "," @;
                   else put Controle_activiteit @;
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
       if missing(Direct_opeisbaar_gesteld)
         then put "," @;
         else do;
                 if find(Direct_opeisbaar_gesteld,'0A'x) > 0 and 2+klength(Direct_opeisbaar_gesteld) = klength(quote(trim(Direct_opeisbaar_gesteld)))
                   then put '22'x Direct_opeisbaar_gesteld +(-1) '22'x "," @;
                   else put Direct_opeisbaar_gesteld @;
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
       if missing(Direct_opeisbare_vordering)
         then put "," @;
         else do;
                 if find(Direct_opeisbare_vordering,'0A'x) > 0 and 2+klength(Direct_opeisbare_vordering) = klength(quote(trim(Direct_opeisbare_vordering)))
                   then put '22'x Direct_opeisbare_vordering +(-1) '22'x "," @;
                   else put Direct_opeisbare_vordering @;
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
       if missing(Jaar)
         then put "," @;
         else do;
                 if find(Jaar,'0A'x) > 0 and 2+klength(Jaar) = klength(quote(trim(Jaar)))
                   then put '22'x Jaar +(-1) '22'x "," @;
                   else put Jaar @;
              end;
       if missing(Jaardossier_WBSO)
         then put "," @;
         else do;
                 if find(Jaardossier_WBSO,'0A'x) > 0 and 2+klength(Jaardossier_WBSO) = klength(quote(trim(Jaardossier_WBSO)))
                   then put '22'x Jaardossier_WBSO +(-1) '22'x "," @;
                   else put Jaardossier_WBSO @;
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
       if missing(Kwijtsch_voorw_rente)
         then put "," @;
         else do;
                 if find(Kwijtsch_voorw_rente,'0A'x) > 0 and 2+klength(Kwijtsch_voorw_rente) = klength(quote(trim(Kwijtsch_voorw_rente)))
                   then put '22'x Kwijtsch_voorw_rente +(-1) '22'x "," @;
                   else put Kwijtsch_voorw_rente @;
              end;
       if missing(Kwijtsch_direct_opeisbaar)
         then put "," @;
         else do;
                 if find(Kwijtsch_direct_opeisbaar,'0A'x) > 0 and 2+klength(Kwijtsch_direct_opeisbaar) = klength(quote(trim(Kwijtsch_direct_opeisbaar)))
                   then put '22'x Kwijtsch_direct_opeisbaar +(-1) '22'x "," @;
                   else put Kwijtsch_direct_opeisbaar @;
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
       if missing(Kwijtsch_voorw_hoofdsom)
         then put "," @;
         else do;
                 if find(Kwijtsch_voorw_hoofdsom,'0A'x) > 0 and 2+klength(Kwijtsch_voorw_hoofdsom) = klength(quote(trim(Kwijtsch_voorw_hoofdsom)))
                   then put '22'x Kwijtsch_voorw_hoofdsom +(-1) '22'x "," @;
                   else put Kwijtsch_voorw_hoofdsom @;
              end;
       if missing(LB_nummer_komt_overeen)
         then put "," @;
         else do;
                 if find(LB_nummer_komt_overeen,'0A'x) > 0 and 2+klength(LB_nummer_komt_overeen) = klength(quote(trim(LB_nummer_komt_overeen)))
                   then put '22'x LB_nummer_komt_overeen +(-1) '22'x "," @;
                   else put LB_nummer_komt_overeen @;
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
       if missing(Meldingnummer_IRWA)
         then put "," @;
         else do;
                 if find(Meldingnummer_IRWA,'0A'x) > 0 and 2+klength(Meldingnummer_IRWA) = klength(quote(trim(Meldingnummer_IRWA)))
                   then put '22'x Meldingnummer_IRWA +(-1) '22'x "," @;
                   else put Meldingnummer_IRWA @;
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
       if missing(Opdrachtvorm_cd)
         then put "," @;
         else do;
                 if find(Opdrachtvorm_cd,'0A'x) > 0 and 2+klength(Opdrachtvorm_cd) = klength(quote(trim(Opdrachtvorm_cd)))
                   then put '22'x Opdrachtvorm_cd +(-1) '22'x "," @;
                   else put Opdrachtvorm_cd @;
              end;
       if missing(Overige_subsidie)
         then put "," @;
         else do;
                 if find(Overige_subsidie,'0A'x) > 0 and 2+klength(Overige_subsidie) = klength(quote(trim(Overige_subsidie)))
                   then put '22'x Overige_subsidie +(-1) '22'x "," @;
                   else put Overige_subsidie @;
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
       if missing(Ranking)
         then put "," @;
         else do;
                 if find(Ranking,'0A'x) > 0 and 2+klength(Ranking) = klength(quote(trim(Ranking)))
                   then put '22'x Ranking +(-1) '22'x "," @;
                   else put Ranking @;
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
       if missing(SO_loon)
         then put "," @;
         else do;
                 if find(SO_loon,'0A'x) > 0 and 2+klength(SO_loon) = klength(quote(trim(SO_loon)))
                   then put '22'x SO_loon +(-1) '22'x "," @;
                   else put SO_loon @;
              end;
       if missing(SO_uren)
         then put "," @;
         else do;
                 if find(SO_uren,'0A'x) > 0 and 2+klength(SO_uren) = klength(quote(trim(SO_uren)))
                   then put '22'x SO_uren +(-1) '22'x "," @;
                   else put SO_uren @;
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
       if missing(Startmaand)
         then put "," @;
         else do;
                 if find(Startmaand,'0A'x) > 0 and 2+klength(Startmaand) = klength(quote(trim(Startmaand)))
                   then put '22'x Startmaand +(-1) '22'x "," @;
                   else put Startmaand @;
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
       if missing(Status_TT)
         then put "," @;
         else do;
                 if find(Status_TT,'0A'x) > 0 and 2+klength(Status_TT) = klength(quote(trim(Status_TT)))
                   then put '22'x Status_TT +(-1) '22'x "," @;
                   else put Status_TT @;
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
       if missing(Statuscode)
         then put "," @;
         else do;
                 if find(Statuscode,'0A'x) > 0 and 2+klength(Statuscode) = klength(quote(trim(Statuscode)))
                   then put '22'x Statuscode +(-1) '22'x "," @;
                   else put Statuscode @;
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
       if missing(Technisch_Cor_id)
         then put "," @;
         else do;
                 if find(Technisch_Cor_id,'0A'x) > 0 and 2+klength(Technisch_Cor_id) = klength(quote(trim(Technisch_Cor_id)))
                   then put '22'x Technisch_Cor_id +(-1) '22'x "," @;
                   else put Technisch_Cor_id @;
              end;
       if missing(Technisch_succes)
         then put "," @;
         else do;
                 if find(Technisch_succes,'0A'x) > 0 and 2+klength(Technisch_succes) = klength(quote(trim(Technisch_succes)))
                   then put '22'x Technisch_succes +(-1) '22'x "," @;
                   else put Technisch_succes @;
              end;
       if missing(Titel)
         then put "," @;
         else do;
                 if find(Titel,'0A'x) > 0 and 2+klength(Titel) = klength(quote(trim(Titel)))
                   then put '22'x Titel +(-1) '22'x "," @;
                   else put Titel @;
              end;
       if missing(Totaal_afgelost_op_hoofdsom)
         then put "," @;
         else do;
                 if find(Totaal_afgelost_op_hoofdsom,'0A'x) > 0 and 2+klength(Totaal_afgelost_op_hoofdsom) = klength(quote(trim(Totaal_afgelost_op_hoofdsom)))
                   then put '22'x Totaal_afgelost_op_hoofdsom +(-1) '22'x "," @;
                   else put Totaal_afgelost_op_hoofdsom @;
              end;
       if missing(Totaal_bijgeschreven_rente)
         then put "," @;
         else do;
                 if find(Totaal_bijgeschreven_rente,'0A'x) > 0 and 2+klength(Totaal_bijgeschreven_rente) = klength(quote(trim(Totaal_bijgeschreven_rente)))
                   then put '22'x Totaal_bijgeschreven_rente +(-1) '22'x "," @;
                   else put Totaal_bijgeschreven_rente @;
              end;
       if missing(Totaal_gecommitteerd_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_gecommitteerd_bedrag,'0A'x) > 0 and 2+klength(Totaal_gecommitteerd_bedrag) = klength(quote(trim(Totaal_gecommitteerd_bedrag)))
                   then put '22'x Totaal_gecommitteerd_bedrag +(-1) '22'x "," @;
                   else put Totaal_gecommitteerd_bedrag @;
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
       if missing(Totaal_ingetrokken_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_ingetrokken_bedrag,'0A'x) > 0 and 2+klength(Totaal_ingetrokken_bedrag) = klength(quote(trim(Totaal_ingetrokken_bedrag)))
                   then put '22'x Totaal_ingetrokken_bedrag +(-1) '22'x "," @;
                   else put Totaal_ingetrokken_bedrag @;
              end;
       if missing(Totaal_kwijtgescholden_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_kwijtgescholden_bedrag,'0A'x) > 0 and 2+klength(Totaal_kwijtgescholden_bedrag) = klength(quote(trim(Totaal_kwijtgescholden_bedrag)))
                   then put '22'x Totaal_kwijtgescholden_bedrag +(-1) '22'x "," @;
                   else put Totaal_kwijtgescholden_bedrag @;
              end;
       if missing(Totaal_ontvangen_rente)
         then put "," @;
         else do;
                 if find(Totaal_ontvangen_rente,'0A'x) > 0 and 2+klength(Totaal_ontvangen_rente) = klength(quote(trim(Totaal_ontvangen_rente)))
                   then put '22'x Totaal_ontvangen_rente +(-1) '22'x "," @;
                   else put Totaal_ontvangen_rente @;
              end;
       if missing(Totaal_openstaand_bedrag)
         then put "," @;
         else do;
                 if find(Totaal_openstaand_bedrag,'0A'x) > 0 and 2+klength(Totaal_openstaand_bedrag) = klength(quote(trim(Totaal_openstaand_bedrag)))
                   then put '22'x Totaal_openstaand_bedrag +(-1) '22'x "," @;
                   else put Totaal_openstaand_bedrag @;
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
       if missing(Totale_hoofdsom)
         then put "," @;
         else do;
                 if find(Totale_hoofdsom,'0A'x) > 0 and 2+klength(Totale_hoofdsom) = klength(quote(trim(Totale_hoofdsom)))
                   then put '22'x Totale_hoofdsom +(-1) '22'x "," @;
                   else put Totale_hoofdsom @;
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
       if missing(VV_Aanvraagnummer)
         then put "," @;
         else do;
                 if find(VV_Aanvraagnummer,'0A'x) > 0 and 2+klength(VV_Aanvraagnummer) = klength(quote(trim(VV_Aanvraagnummer)))
                   then put '22'x VV_Aanvraagnummer +(-1) '22'x "," @;
                   else put VV_Aanvraagnummer @;
              end;
       if missing(Vaststellen_batch)
         then put "," @;
         else do;
                 if find(Vaststellen_batch,'0A'x) > 0 and 2+klength(Vaststellen_batch) = klength(quote(trim(Vaststellen_batch)))
                   then put '22'x Vaststellen_batch +(-1) '22'x "," @;
                   else put Vaststellen_batch @;
              end;
       if missing(Vaststelling_conform_aanvraag)
         then put "," @;
         else do;
                 if find(Vaststelling_conform_aanvraag,'0A'x) > 0 and 2+klength(Vaststelling_conform_aanvraag) = klength(quote(trim(Vaststelling_conform_aanvraag)))
                   then put '22'x Vaststelling_conform_aanvraag +(-1) '22'x "," @;
                   else put Vaststelling_conform_aanvraag @;
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
       if missing(Vorie_aanvraagperiode)
         then put "," @;
         else do;
                 if find(Vorie_aanvraagperiode,'0A'x) > 0 and 2+klength(Vorie_aanvraagperiode) = klength(quote(trim(Vorie_aanvraagperiode)))
                   then put '22'x Vorie_aanvraagperiode +(-1) '22'x "," @;
                   else put Vorie_aanvraagperiode @;
              end;
       if missing(Vorig_aanvraag_bedrijf_nr)
         then put "," @;
         else do;
                 if find(Vorig_aanvraag_bedrijf_nr,'0A'x) > 0 and 2+klength(Vorig_aanvraag_bedrijf_nr) = klength(quote(trim(Vorig_aanvraag_bedrijf_nr)))
                   then put '22'x Vorig_aanvraag_bedrijf_nr +(-1) '22'x "," @;
                   else put Vorig_aanvraag_bedrijf_nr @;
              end;
       if missing(Vorig_aanvraag_volgnr)
         then put "," @;
         else do;
                 if find(Vorig_aanvraag_volgnr,'0A'x) > 0 and 2+klength(Vorig_aanvraag_volgnr) = klength(quote(trim(Vorig_aanvraag_volgnr)))
                   then put '22'x Vorig_aanvraag_volgnr +(-1) '22'x "," @;
                   else put Vorig_aanvraag_volgnr @;
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
       if missing(Wel_akkoord_niet_verlenen)
         then put "," @;
         else do;
                 if find(Wel_akkoord_niet_verlenen,'0A'x) > 0 and 2+klength(Wel_akkoord_niet_verlenen) = klength(quote(trim(Wel_akkoord_niet_verlenen)))
                   then put '22'x Wel_akkoord_niet_verlenen +(-1) '22'x "," @;
                   else put Wel_akkoord_niet_verlenen @;
              end;
       if missing(Zegge_Totaal_gecommitteerd)
         then put "," @;
         else do;
                 if find(Zegge_Totaal_gecommitteerd,'0A'x) > 0 and 2+klength(Zegge_Totaal_gecommitteerd) = klength(quote(trim(Zegge_Totaal_gecommitteerd)))
                   then put '22'x Zegge_Totaal_gecommitteerd +(-1) '22'x "," @;
                   else put Zegge_Totaal_gecommitteerd @;
              end;
       if missing(aut_verwerkt_imp)
         then put "," @;
         else do;
                 if find(aut_verwerkt_imp,'0A'x) > 0 and 2+klength(aut_verwerkt_imp) = klength(quote(trim(aut_verwerkt_imp)))
                   then put '22'x aut_verwerkt_imp +(-1) '22'x "," @;
                   else put aut_verwerkt_imp @;
              end;
       if missing(status_SO_uurloon)
         then put "," @;
         else do;
                 if find(status_SO_uurloon,'0A'x) > 0 and 2+klength(status_SO_uurloon) = klength(quote(trim(status_SO_uurloon)))
                   then put '22'x status_SO_uurloon +(-1) '22'x "," @;
                   else put status_SO_uurloon @;
              end;
       put techId best12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

