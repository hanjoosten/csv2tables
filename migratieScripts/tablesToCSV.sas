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
          Aangeboden_aan_ZER 
       '29'x 
          Aangevraagd_bedrag 
       '29'x 
          Aantal_ICT_projecten 
       '29'x 
          Aantal_SO_projecten 
       '29'x 
          Aantal_SO_werknemers 
       '29'x 
          Aantal_SO_zlf 
       '29'x 
          Aantal_dagenopschorting 
       '29'x 
          Aanvang_dat 
       '29'x 
          Aanvraag_volgnr 
       '29'x 
          Aanvraagsoort 
       '29'x 
          Acceptatie_sts 
       '29'x 
          Afdrachtsvermindering 
       '29'x 
          Afgelost_op_onvoorw_hoofdsom 
       '29'x 
          Afgelost_op_onvoorw_rente 
       '29'x 
          Afhandeldatum 
       '29'x 
          Afhandelwijze 
       '29'x 
          Afl_neg_einddeclaratie 
       '29'x 
          Akkoord_verlenen 
       '29'x 
          Auth_id_indiener 
       '29'x 
          Auth_id_ondertekenaar 
       '29'x 
          Auth_prg_id 
       '29'x 
          BAS_advies 
       '29'x 
          Batchstatuscert 
       '29'x 
          Batchstatusref 
       '29'x 
          Batchstatusstat 
       '29'x 
          Begrote_SO_loonsom 
       '29'x 
          Behandelingsronde 
       '29'x 
          Beoordelingswijze 
       '29'x 
          Berekende_rente 
       '29'x 
          Beslissing_cd 
       '29'x 
          Cerhoud_id_Ondertekenaar 
       '29'x 
          Checksum 
       '29'x 
          Classificatie 
       '29'x 
          Cluster_nr 
       '29'x 
          Commercieel_perspectief 
       '29'x 
          Contractjaar 
       '29'x 
          Controle_activiteit 
       '29'x 
          Conversiedossier 
       '29'x 
          Correspondentie_via_email 
       '29'x 
          Creatie_dat 
       '29'x 
          Creatie_user 
       '29'x 
          Datum_in 
       '29'x 
          Datum_renteberekening 
       '29'x 
          Datum_status 
       '29'x 
          Direct_opeisbaar_gesteld 
       '29'x 
          Direct_opeisbare_hoofdsom 
       '29'x 
          Direct_opeisbare_rente 
       '29'x 
          Direct_opeisbare_vordering 
       '29'x 
          Dos_cd 
       '29'x 
          Dos_id 
       '29'x 
          Dos_id_aanvulling 
       '29'x 
          Dosprio 
       '29'x 
          ED_Aanvraag_id 
       '29'x 
          Eerste_jr_aflossing 
       '29'x 
          Eind_dat 
       '29'x 
          Eindmaand 
       '29'x 
          Extern_aanvraag_id 
       '29'x 
          Extern_dossier_id 
       '29'x 
          Extrene_bron_cd 
       '29'x 
          Gecommitteerd_zegge 
       '29'x 
          Gem_uurloon 
       '29'x 
          Hand_bewerkt_imp 
       '29'x 
          Handtekening_ok 
       '29'x 
          Hoofd_dos_id 
       '29'x 
          Id_van_de_doos 
       '29'x 
          Id_van_de_doos_na_de_import 
       '29'x 
          Importlijst 
       '29'x 
          Indienings_dat 
       '29'x 
          Indienings_tijd 
       '29'x 
          Indienkanaal 
       '29'x 
          Ingezien 
       '29'x 
          Inkoopcat_cd 
       '29'x 
          Inleen_binnen_Fiscale_eenheid 
       '29'x 
          Jaar 
       '29'x 
          Jaardossier_WBSO 
       '29'x 
          Jaardossier_bron_dos_id 
       '29'x 
          Jaardossier_dos_id 
       '29'x 
          Korte_titel 
       '29'x 
          Krat_nr 
       '29'x 
          Kwijtsch_voorw_rente 
       '29'x 
          Kwijtsch_direct_opeisbaar 
       '29'x 
          Kwijtsch_onvoorw_hoofdsom 
       '29'x 
          Kwijtsch_onvoorw_rente 
       '29'x 
          Kwijtsch_voorw_hoofdsom 
       '29'x 
          LB_nummer_komt_overeen 
       '29'x 
          Laatste_jr_aflossing 
       '29'x 
          Laatste_pcs_id 
       '29'x 
          Landnaam 
       '29'x 
          Machtiging_JN 
       '29'x 
          Mdw_cd 
       '29'x 
          Meldingnummer_IRWA 
       '29'x 
          Mentorterugkoppeling 
       '29'x 
          Mutatie_dat 
       '29'x 
          Mutatie_dat_vst 
       '29'x 
          Mutatie_user 
       '29'x 
          Mutatie_user_vst 
       '29'x 
          Naar_batchrun 
       '29'x 
          Neg_einddeclaratie 
       '29'x 
          Notities 
       '29'x 
          Octrooien 
       '29'x 
          Offertebedrag 
       '29'x 
          Ontvangstdatum 
       '29'x 
          Oorspr_einddatum 
       '29'x 
          Opdrachtvorm_cd 
       '29'x 
          Overige_subsidie 
       '29'x 
          Perc_verrekenen 
       '29'x 
          Periode_nr 
       '29'x 
          Prioriteit 
       '29'x 
          Prioriteitsdatum 
       '29'x 
          Projectomschrijving 
       '29'x 
          RDA_Afhandeling_forfaitair 
       '29'x 
          RDA_aangevraagd 
       '29'x 
          Ranking 
       '29'x 
          Referentie 
       '29'x 
          Reg_id 
       '29'x 
          Reg_nr 
       '29'x 
          Rel_id_Aanvrager 
       '29'x 
          Rente_perc 
       '29'x 
          SO_loon 
       '29'x 
          SO_uren 
       '29'x 
          Samenwerkingsverband1 
       '29'x 
          Samenwerkingsverband2 
       '29'x 
          Startmaand 
       '29'x 
          Status_E_Diensten 
       '29'x 
          Status_E_Loket 
       '29'x 
          Status_TT 
       '29'x 
          Status_cert 
       '29'x 
          Status_oud 
       '29'x 
          Statuscode 
       '29'x 
          Statusgroep 
       '29'x 
          Statustermijn 
       '29'x 
          Technisch_Cor_id 
       '29'x 
          Technisch_succes 
       '29'x 
          Titel 
       '29'x 
          Totaal_afgelost_op_hoofdsom 
       '29'x 
          Totaal_bijgeschreven_rente 
       '29'x 
          Totaal_gecommitteerd_bedrag 
       '29'x 
          Totaal_gedeclareerd_bedrag 
       '29'x 
          Totaal_geschoonde_kosten 
       '29'x 
          Totaal_ingetrokken_bedrag 
       '29'x 
          Totaal_kwijtgescholden_bedrag 
       '29'x 
          Totaal_ontvangen_rente 
       '29'x 
          Totaal_openstaand_bedrag 
       '29'x 
          Totaal_uitbetaald 
       '29'x 
          Totaal_verleend_bedrag 
       '29'x 
          Totale_hoofdsom 
       '29'x 
          Uitlening_binnen_Fisc_eenheid 
       '29'x 
          Uurloon_jaar 
       '29'x 
          VV_Aanvraagnummer 
       '29'x 
          Vaststellen_batch 
       '29'x 
          Vaststelling_conform_aanvraag 
       '29'x 
          Vergoedingsperc 
       '29'x 
          Volgnr_LB 
       '29'x 
          Volgnr_diskette 
       '29'x 
          Volgnr_diskette_na_import 
       '29'x 
          Voorlopig_gecommitteerd 
       '29'x 
          Voorlopig_gedeclareerd 
       '29'x 
          Vorie_aanvraagperiode 
       '29'x 
          Vorig_aanvraag_bedrijf_nr 
       '29'x 
          Vorig_aanvraag_volgnr 
       '29'x 
          Vorig_aanvraagjaar 
       '29'x 
          Vorig_aanvraagnummer 
       '29'x 
          Wel_akkoord_niet_verlenen 
       '29'x 
          Zegge_Totaal_gecommitteerd 
       '29'x 
          aut_verwerkt_imp 
       '29'x 
          status_SO_uurloon 
       '29'x 
          techId 
       '29'x 
       ; 
     end; 
   set  WORK.BAS_DAM_DOSSIER   end=EFIEOD; 
       format Aangeboden_aan_ZER $QUOTED3. ;
       format Aangevraagd_bedrag best12. ;
       format Aantal_ICT_projecten best12. ;
       format Aantal_SO_projecten best12. ;
       format Aantal_SO_werknemers best12. ;
       format Aantal_SO_zlf best12. ;
       format Aantal_dagenopschorting best12. ;
       format Aanvang_dat B8601DT19. ;
       format Aanvraag_volgnr best12. ;
       format Aanvraagsoort $QUOTED12. ;
       format Acceptatie_sts $QUOTED3. ;
       format Afdrachtsvermindering $QUOTED3. ;
       format Afgelost_op_onvoorw_hoofdsom best12. ;
       format Afgelost_op_onvoorw_rente best12. ;
       format Afhandeldatum B8601DT19. ;
       format Afhandelwijze $QUOTED514. ;
       format Afl_neg_einddeclaratie best12. ;
       format Akkoord_verlenen $QUOTED3. ;
       format Auth_id_indiener best12. ;
       format Auth_id_ondertekenaar best12. ;
       format Auth_prg_id best12. ;
       format BAS_advies $QUOTED514. ;
       format Batchstatuscert $QUOTED3. ;
       format Batchstatusref $QUOTED3. ;
       format Batchstatusstat $QUOTED3. ;
       format Begrote_SO_loonsom best12. ;
       format Behandelingsronde best12. ;
       format Beoordelingswijze $QUOTED6. ;
       format Berekende_rente best12. ;
       format Beslissing_cd $QUOTED4. ;
       format Cerhoud_id_Ondertekenaar best12. ;
       format Checksum best12. ;
       format Classificatie $QUOTED12. ;
       format Cluster_nr best12. ;
       format Commercieel_perspectief $QUOTED3. ;
       format Contractjaar best12. ;
       format Controle_activiteit $QUOTED3. ;
       format Conversiedossier $QUOTED3. ;
       format Correspondentie_via_email $QUOTED3. ;
       format Creatie_dat B8601DT19. ;
       format Creatie_user $QUOTED32. ;
       format Datum_in B8601DT19. ;
       format Datum_renteberekening B8601DT19. ;
       format Datum_status B8601DT19. ;
       format Direct_opeisbaar_gesteld best12. ;
       format Direct_opeisbare_hoofdsom best12. ;
       format Direct_opeisbare_rente best12. ;
       format Direct_opeisbare_vordering best12. ;
       format Dos_cd $QUOTED22. ;
       format Dos_id best12. ;
       format Dos_id_aanvulling best12. ;
       format Dosprio best12. ;
       format ED_Aanvraag_id best12. ;
       format Eerste_jr_aflossing best12. ;
       format Eind_dat B8601DT19. ;
       format Eindmaand best12. ;
       format Extern_aanvraag_id best12. ;
       format Extern_dossier_id best12. ;
       format Extrene_bron_cd $QUOTED12. ;
       format Gecommitteerd_zegge $QUOTED102. ;
       format Gem_uurloon best12. ;
       format Hand_bewerkt_imp $QUOTED3. ;
       format Handtekening_ok $QUOTED3. ;
       format Hoofd_dos_id best12. ;
       format Id_van_de_doos best12. ;
       format Id_van_de_doos_na_de_import best12. ;
       format Importlijst $QUOTED242. ;
       format Indienings_dat B8601DT19. ;
       format Indienings_tijd B8601DT19. ;
       format Indienkanaal $QUOTED3. ;
       format Ingezien $QUOTED3. ;
       format Inkoopcat_cd $QUOTED8. ;
       format Inleen_binnen_Fiscale_eenheid $QUOTED3. ;
       format Jaar best12. ;
       format Jaardossier_WBSO $QUOTED3. ;
       format Jaardossier_bron_dos_id best12. ;
       format Jaardossier_dos_id best12. ;
       format Korte_titel $QUOTED27. ;
       format Krat_nr best12. ;
       format Kwijtsch_voorw_rente best12. ;
       format Kwijtsch_direct_opeisbaar best12. ;
       format Kwijtsch_onvoorw_hoofdsom best12. ;
       format Kwijtsch_onvoorw_rente best12. ;
       format Kwijtsch_voorw_hoofdsom best12. ;
       format LB_nummer_komt_overeen $QUOTED3. ;
       format Laatste_jr_aflossing best12. ;
       format Laatste_pcs_id best12. ;
       format Landnaam $QUOTED62. ;
       format Machtiging_JN $QUOTED3. ;
       format Mdw_cd $QUOTED32. ;
       format Meldingnummer_IRWA $QUOTED32. ;
       format Mentorterugkoppeling $QUOTED3. ;
       format Mutatie_dat B8601DT19. ;
       format Mutatie_dat_vst B8601DT19. ;
       format Mutatie_user $QUOTED32. ;
       format Mutatie_user_vst $QUOTED32. ;
       format Naar_batchrun best12. ;
       format Neg_einddeclaratie best12. ;
       format Notities $QUOTED2050. ;
       format Octrooien best12. ;
       format Offertebedrag best12. ;
       format Ontvangstdatum B8601DT19. ;
       format Oorspr_einddatum B8601DT19. ;
       format Opdrachtvorm_cd $QUOTED5. ;
       format Overige_subsidie $QUOTED3. ;
       format Perc_verrekenen best12. ;
       format Periode_nr best12. ;
       format Prioriteit best12. ;
       format Prioriteitsdatum B8601DT19. ;
       format Projectomschrijving $QUOTED2050. ;
       format RDA_Afhandeling_forfaitair $QUOTED3. ;
       format RDA_aangevraagd $QUOTED3. ;
       format Ranking best12. ;
       format Referentie $QUOTED12. ;
       format Reg_id best12. ;
       format Reg_nr best12. ;
       format Rel_id_Aanvrager best12. ;
       format Rente_perc best12. ;
       format SO_loon best12. ;
       format SO_uren best12. ;
       format Samenwerkingsverband1 $QUOTED3. ;
       format Samenwerkingsverband2 $QUOTED3. ;
       format Startmaand best12. ;
       format Status_E_Diensten $QUOTED52. ;
       format Status_E_Loket $QUOTED52. ;
       format Status_TT $QUOTED5. ;
       format Status_cert $QUOTED3. ;
       format Status_oud $QUOTED3. ;
       format Statuscode $QUOTED5. ;
       format Statusgroep $QUOTED3. ;
       format Statustermijn B8601DT19. ;
       format Technisch_Cor_id best12. ;
       format Technisch_succes best12. ;
       format Titel $QUOTED202. ;
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
       format Uitlening_binnen_Fisc_eenheid $QUOTED3. ;
       format Uurloon_jaar best12. ;
       format VV_Aanvraagnummer $QUOTED14. ;
       format Vaststellen_batch $QUOTED3. ;
       format Vaststelling_conform_aanvraag $QUOTED3. ;
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
       format Vorig_aanvraagnummer $QUOTED42. ;
       format Wel_akkoord_niet_verlenen $QUOTED3. ;
       format Zegge_Totaal_gecommitteerd $QUOTED102. ;
       format aut_verwerkt_imp $QUOTED3. ;
       format status_SO_uurloon $QUOTED3. ;
       format techId $12. ; 
     do; 
       EFIOUT + 1; 
       put Aangeboden_aan_ZER $QUOTED3. @;
       put Aangevraagd_bedrag best12. @;
       put Aantal_ICT_projecten best12. @;
       put Aantal_SO_projecten best12. @;
       put Aantal_SO_werknemers best12. @;
       put Aantal_SO_zlf best12. @;
       put Aantal_dagenopschorting best12. @;
       put Aanvang_dat B8601DT19. @;
       put Aanvraag_volgnr best12. @;
       put Aanvraagsoort $QUOTED12. @;
       put Acceptatie_sts $QUOTED3. @;
       put Afdrachtsvermindering $QUOTED3. @;
       put Afgelost_op_onvoorw_hoofdsom best12. @;
       put Afgelost_op_onvoorw_rente best12. @;
       put Afhandeldatum B8601DT19. @;
       put Afhandelwijze $QUOTED514. @;
       put Afl_neg_einddeclaratie best12. @;
       put Akkoord_verlenen $QUOTED3. @;
       put Auth_id_indiener best12. @;
       put Auth_id_ondertekenaar best12. @;
       put Auth_prg_id best12. @;
       put BAS_advies $QUOTED514. @;
       put Batchstatuscert $QUOTED3. @;
       put Batchstatusref $QUOTED3. @;
       put Batchstatusstat $QUOTED3. @;
       put Begrote_SO_loonsom best12. @;
       put Behandelingsronde best12. @;
       put Beoordelingswijze $QUOTED6. @;
       put Berekende_rente best12. @;
       put Beslissing_cd $QUOTED4. @;
       put Cerhoud_id_Ondertekenaar best12. @;
       put Checksum best12. @;
       put Classificatie $QUOTED12. @;
       put Cluster_nr best12. @;
       put Commercieel_perspectief $QUOTED3. @;
       put Contractjaar best12. @;
       put Controle_activiteit $QUOTED3. @;
       put Conversiedossier $QUOTED3. @;
       put Correspondentie_via_email $QUOTED3. @;
       put Creatie_dat B8601DT19. @;
       put Creatie_user $QUOTED32. @;
       put Datum_in B8601DT19. @;
       put Datum_renteberekening B8601DT19. @;
       put Datum_status B8601DT19. @;
       put Direct_opeisbaar_gesteld best12. @;
       put Direct_opeisbare_hoofdsom best12. @;
       put Direct_opeisbare_rente best12. @;
       put Direct_opeisbare_vordering best12. @;
       put Dos_cd $QUOTED22. @;
       put Dos_id best12. @;
       put Dos_id_aanvulling best12. @;
       put Dosprio best12. @;
       put ED_Aanvraag_id best12. @;
       put Eerste_jr_aflossing best12. @;
       put Eind_dat B8601DT19. @;
       put Eindmaand best12. @;
       put Extern_aanvraag_id best12. @;
       put Extern_dossier_id best12. @;
       put Extrene_bron_cd $QUOTED12. @;
       put Gecommitteerd_zegge $QUOTED102. @;
       put Gem_uurloon best12. @;
       put Hand_bewerkt_imp $QUOTED3. @;
       put Handtekening_ok $QUOTED3. @;
       put Hoofd_dos_id best12. @;
       put Id_van_de_doos best12. @;
       put Id_van_de_doos_na_de_import best12. @;
       put Importlijst $QUOTED242. @;
       put Indienings_dat B8601DT19. @;
       put Indienings_tijd B8601DT19. @;
       put Indienkanaal $QUOTED3. @;
       put Ingezien $QUOTED3. @;
       put Inkoopcat_cd $QUOTED8. @;
       put Inleen_binnen_Fiscale_eenheid $QUOTED3. @;
       put Jaar best12. @;
       put Jaardossier_WBSO $QUOTED3. @;
       put Jaardossier_bron_dos_id best12. @;
       put Jaardossier_dos_id best12. @;
       put Korte_titel $QUOTED27. @;
       put Krat_nr best12. @;
       put Kwijtsch_voorw_rente best12. @;
       put Kwijtsch_direct_opeisbaar best12. @;
       put Kwijtsch_onvoorw_hoofdsom best12. @;
       put Kwijtsch_onvoorw_rente best12. @;
       put Kwijtsch_voorw_hoofdsom best12. @;
       put LB_nummer_komt_overeen $QUOTED3. @;
       put Laatste_jr_aflossing best12. @;
       put Laatste_pcs_id best12. @;
       put Landnaam $QUOTED62. @;
       put Machtiging_JN $QUOTED3. @;
       put Mdw_cd $QUOTED32. @;
       put Meldingnummer_IRWA $QUOTED32. @;
       put Mentorterugkoppeling $QUOTED3. @;
       put Mutatie_dat B8601DT19. @;
       put Mutatie_dat_vst B8601DT19. @;
       put Mutatie_user $QUOTED32. @;
       put Mutatie_user_vst $QUOTED32. @;
       put Naar_batchrun best12. @;
       put Neg_einddeclaratie best12. @;
       put Notities $QUOTED2050. @;
       put Octrooien best12. @;
       put Offertebedrag best12. @;
       put Ontvangstdatum B8601DT19. @;
       put Oorspr_einddatum B8601DT19. @;
       put Opdrachtvorm_cd $QUOTED5. @;
       put Overige_subsidie $QUOTED3. @;
       put Perc_verrekenen best12. @;
       put Periode_nr best12. @;
       put Prioriteit best12. @;
       put Prioriteitsdatum B8601DT19. @;
       put Projectomschrijving $QUOTED2050. @;
       put RDA_Afhandeling_forfaitair $QUOTED3. @;
       put RDA_aangevraagd $QUOTED3. @;
       put Ranking best12. @;
       put Referentie $QUOTED12. @;
       put Reg_id best12. @;
       put Reg_nr best12. @;
       put Rel_id_Aanvrager best12. @;
       put Rente_perc best12. @;
       put SO_loon best12. @;
       put SO_uren best12. @;
       put Samenwerkingsverband1 $QUOTED3. @;
       put Samenwerkingsverband2 $QUOTED3. @;
       put Startmaand best12. @;
       put Status_E_Diensten $QUOTED52. @;
       put Status_E_Loket $QUOTED52. @;
       put Status_TT $QUOTED5. @;
       put Status_cert $QUOTED3. @;
       put Status_oud $QUOTED3. @;
       put Statuscode $QUOTED5. @;
       put Statusgroep $QUOTED3. @;
       put Statustermijn B8601DT19. @;
       put Technisch_Cor_id best12. @;
       put Technisch_succes best12. @;
       put Titel $QUOTED202. @;
       put Totaal_afgelost_op_hoofdsom best12. @;
       put Totaal_bijgeschreven_rente best12. @;
       put Totaal_gecommitteerd_bedrag best12. @;
       put Totaal_gedeclareerd_bedrag best12. @;
       put Totaal_geschoonde_kosten best12. @;
       put Totaal_ingetrokken_bedrag best12. @;
       put Totaal_kwijtgescholden_bedrag best12. @;
       put Totaal_ontvangen_rente best12. @;
       put Totaal_openstaand_bedrag best12. @;
       put Totaal_uitbetaald best12. @;
       put Totaal_verleend_bedrag best12. @;
       put Totale_hoofdsom best12. @;
       put Uitlening_binnen_Fisc_eenheid $QUOTED3. @;
       put Uurloon_jaar best12. @;
       put VV_Aanvraagnummer $QUOTED14. @;
       put Vaststellen_batch $QUOTED3. @;
       put Vaststelling_conform_aanvraag $QUOTED3. @;
       put Vergoedingsperc best12. @;
       put Volgnr_LB best12. @;
       put Volgnr_diskette best12. @;
       put Volgnr_diskette_na_import best12. @;
       put Voorlopig_gecommitteerd best12. @;
       put Voorlopig_gedeclareerd best12. @;
       put Vorie_aanvraagperiode best12. @;
       put Vorig_aanvraag_bedrijf_nr best12. @;
       put Vorig_aanvraag_volgnr best12. @;
       put Vorig_aanvraagjaar best12. @;
       put Vorig_aanvraagnummer $QUOTED42. @;
       put Wel_akkoord_niet_verlenen $QUOTED3. @;
       put Zegge_Totaal_gecommitteerd $QUOTED102. @;
       put aut_verwerkt_imp $QUOTED3. @;
       put status_SO_uurloon $QUOTED3. @;
       put techId $12. ; 
       ; 
     end; 
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */ 
    if EFIEOD then call symputx('_EFIREC_',EFIOUT); 
    run; 

proc export
   data=WORK.BAS_DAM_DOSSIER
   outfile="\\LNV.INTERN\GRP\TCMG\002 Onderdelen\34-kluismap MIRA Migratie bestanden\SAS\Output\PRD\RuweData\BAS_DAM_DOSSIER.csv"
   replace
   dbms=csv;
run;

