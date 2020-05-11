DROP TABLE IF EXISTS AOM_ACTIE_TCMG ;
CREATE TABLE AOM_ACTIE_TCMG (
    Actie_cd varchar (3),
    Actie_oms varchar (60),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    timestamp varchar (8)
);

    comment on column AOM_ACTIE_TCMG.Actie_cd is 'ACTIE_CD';
    comment on column AOM_ACTIE_TCMG.Actie_oms is 'ACTIE_OMS';
    comment on column AOM_ACTIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column AOM_ACTIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column AOM_ACTIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column AOM_ACTIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column AOM_ACTIE_TCMG.timestamp is 'TIMESTAMP';

DROP TABLE IF EXISTS AOM_TRA_ACTIE_TCMG ;
CREATE TABLE AOM_TRA_ACTIE_TCMG (
    Actie_cd varchar (3),
    Bgt_cd varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Tra_cd varchar (3)
);

    comment on column AOM_TRA_ACTIE_TCMG.Actie_cd is 'ACTIE_CD';
    comment on column AOM_TRA_ACTIE_TCMG.Bgt_cd is 'BGT_CD';
    comment on column AOM_TRA_ACTIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column AOM_TRA_ACTIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column AOM_TRA_ACTIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column AOM_TRA_ACTIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column AOM_TRA_ACTIE_TCMG.Tra_cd is 'TRA_CD';

DROP TABLE IF EXISTS AOM_TRANSACTIETYPE_TCMG ;
CREATE TABLE AOM_TRANSACTIETYPE_TCMG (
    Beleidsadministratie_jn varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Geldstroom_jn varchar (1),
    Mdw_mandaat_jn varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Tra_cd varchar (3),
    Tra_oms varchar (50),
    Tra_stop varchar (1)
);

    comment on column AOM_TRANSACTIETYPE_TCMG.Beleidsadministratie_jn is 'BELEIDSADMINISTRATIE_JN';
    comment on column AOM_TRANSACTIETYPE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column AOM_TRANSACTIETYPE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column AOM_TRANSACTIETYPE_TCMG.Geldstroom_jn is 'GELDSTROOM_JN';
    comment on column AOM_TRANSACTIETYPE_TCMG.Mdw_mandaat_jn is 'MDW_MANDAAT_JN';
    comment on column AOM_TRANSACTIETYPE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column AOM_TRANSACTIETYPE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column AOM_TRANSACTIETYPE_TCMG.Tra_cd is 'TRA_CD';
    comment on column AOM_TRANSACTIETYPE_TCMG.Tra_oms is 'TRA_OMS';
    comment on column AOM_TRANSACTIETYPE_TCMG.Tra_stop is 'TRA_STOP';

DROP TABLE IF EXISTS BTM_BETALING_TCMG ;
CREATE TABLE BTM_BETALING_TCMG (
    Rel_id integer,
    Tra_id integer,
    Reg_cd varchar (20),
    Dos_cd varchar (10),
    Bedrag integer,
    Bedrag_nlg integer,
    Omschrijving varchar (64),
    Naam_begunstigde varchar (60),
    Betalingskenmerk varchar (5),
    Plaats varchar (80),
    Aanleverdatum timestamp,
    Status varchar (1),
    Betaalrun_id integer,
    Bron varchar (4),
    Invoerdatum timestamp,
    Mdw_id integer,
    Betaling_id integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Iban varchar (34),
    Bic varchar (11),
    Beg_bic varchar (11),
    Beg_iban varchar (34),
    Sepa_betaling_indicatie varchar (1),
    Parkeer_valutadatum timestamp,
    Betalingsverzoeknummer varchar (40),
    Betaal_datum timestamp,
    On_hold_jn varchar (1),
    Sepa_xsd_bevinding varchar (2048)
);

    comment on column BTM_BETALING_TCMG.Rel_id is 'REL_ID';
    comment on column BTM_BETALING_TCMG.Tra_id is 'TRA_ID';
    comment on column BTM_BETALING_TCMG.Reg_cd is 'REG_CD';
    comment on column BTM_BETALING_TCMG.Dos_cd is 'DOS_CD';
    comment on column BTM_BETALING_TCMG.Bedrag is 'BEDRAG';
    comment on column BTM_BETALING_TCMG.Bedrag_nlg is 'BEDRAG_NLG';
    comment on column BTM_BETALING_TCMG.Omschrijving is 'OMSCHRIJVING';
    comment on column BTM_BETALING_TCMG.Naam_begunstigde is 'NAAM_BEGUNSTIGDE';
    comment on column BTM_BETALING_TCMG.Betalingskenmerk is 'BETALINGSKENMERK';
    comment on column BTM_BETALING_TCMG.Plaats is 'PLAATS';
    comment on column BTM_BETALING_TCMG.Aanleverdatum is 'AANLEVERDATUM';
    comment on column BTM_BETALING_TCMG.Status is 'STATUS';
    comment on column BTM_BETALING_TCMG.Betaalrun_id is 'BETAALRUN_ID';
    comment on column BTM_BETALING_TCMG.Bron is 'BRON';
    comment on column BTM_BETALING_TCMG.Invoerdatum is 'INVOERDATUM';
    comment on column BTM_BETALING_TCMG.Mdw_id is 'MDW_ID';
    comment on column BTM_BETALING_TCMG.Betaling_id is 'BETALING_ID';
    comment on column BTM_BETALING_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column BTM_BETALING_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column BTM_BETALING_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BTM_BETALING_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column BTM_BETALING_TCMG.Iban is 'IBAN';
    comment on column BTM_BETALING_TCMG.Bic is 'BIC';
    comment on column BTM_BETALING_TCMG.Beg_bic is 'BEG_BIC';
    comment on column BTM_BETALING_TCMG.Beg_iban is 'BEG_IBAN';
    comment on column BTM_BETALING_TCMG.Sepa_betaling_indicatie is 'SEPA_BETALING_INDICATIE';
    comment on column BTM_BETALING_TCMG.Parkeer_valutadatum is 'PARKEER_VALUTADATUM';
    comment on column BTM_BETALING_TCMG.Betalingsverzoeknummer is 'BETALINGSVERZOEKNUMMER';
    comment on column BTM_BETALING_TCMG.Betaal_datum is 'BETAAL_DATUM';
    comment on column BTM_BETALING_TCMG.On_hold_jn is 'ON_HOLD_JN';
    comment on column BTM_BETALING_TCMG.Sepa_xsd_bevinding is 'SEPA_XSD_BEVINDING';

DROP TABLE IF EXISTS BTM_HIST_BETALING_TCMG ;
CREATE TABLE BTM_HIST_BETALING_TCMG (
    Rel_id integer,
    Tra_id integer,
    Reg_cd varchar (20),
    Dos_cd varchar (20),
    Bedrag integer,
    Bedrag_nlg integer,
    Omschrijving varchar (64),
    Naam_begunstigde varchar (60),
    Plaats varchar (30),
    Rekeningnummer integer,
    Senterrekening integer,
    Aanleverdatum timestamp,
    Betaalrun_id integer,
    Bron varchar (4),
    Valutadatum timestamp,
    Invoerdatum timestamp,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Mdw_id integer,
    Betalingskenmerk varchar (5),
    Iban varchar (34),
    Bic varchar (11),
    Beg_bic varchar (11),
    Beg_iban varchar (34),
    Sepa_betaling_indicatie varchar (1),
    Parkeer_valutadatum timestamp,
    Betalingsverzoeknummer varchar (40)
);

    comment on column BTM_HIST_BETALING_TCMG.Rel_id is 'REL_ID';
    comment on column BTM_HIST_BETALING_TCMG.Tra_id is 'TRA_ID';
    comment on column BTM_HIST_BETALING_TCMG.Reg_cd is 'REG_CD';
    comment on column BTM_HIST_BETALING_TCMG.Dos_cd is 'DOS_CD';
    comment on column BTM_HIST_BETALING_TCMG.Bedrag is 'BEDRAG';
    comment on column BTM_HIST_BETALING_TCMG.Bedrag_nlg is 'BEDRAG_NLG';
    comment on column BTM_HIST_BETALING_TCMG.Omschrijving is 'OMSCHRIJVING';
    comment on column BTM_HIST_BETALING_TCMG.Naam_begunstigde is 'NAAM_BEGUNSTIGDE';
    comment on column BTM_HIST_BETALING_TCMG.Plaats is 'PLAATS';
    comment on column BTM_HIST_BETALING_TCMG.Rekeningnummer is 'REKENINGNUMMER';
    comment on column BTM_HIST_BETALING_TCMG.Senterrekening is 'SENTERREKENING';
    comment on column BTM_HIST_BETALING_TCMG.Aanleverdatum is 'AANLEVERDATUM';
    comment on column BTM_HIST_BETALING_TCMG.Betaalrun_id is 'BETAALRUN_ID';
    comment on column BTM_HIST_BETALING_TCMG.Bron is 'BRON';
    comment on column BTM_HIST_BETALING_TCMG.Valutadatum is 'VALUTADATUM';
    comment on column BTM_HIST_BETALING_TCMG.Invoerdatum is 'INVOERDATUM';
    comment on column BTM_HIST_BETALING_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column BTM_HIST_BETALING_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column BTM_HIST_BETALING_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column BTM_HIST_BETALING_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BTM_HIST_BETALING_TCMG.Mdw_id is 'MDW_ID';
    comment on column BTM_HIST_BETALING_TCMG.Betalingskenmerk is 'BETALINGSKENMERK';
    comment on column BTM_HIST_BETALING_TCMG.Iban is 'IBAN';
    comment on column BTM_HIST_BETALING_TCMG.Bic is 'BIC';
    comment on column BTM_HIST_BETALING_TCMG.Beg_bic is 'BEG_BIC';
    comment on column BTM_HIST_BETALING_TCMG.Beg_iban is 'BEG_IBAN';
    comment on column BTM_HIST_BETALING_TCMG.Sepa_betaling_indicatie is 'SEPA_BETALING_INDICATIE';
    comment on column BTM_HIST_BETALING_TCMG.Parkeer_valutadatum is 'PARKEER_VALUTADATUM';
    comment on column BTM_HIST_BETALING_TCMG.Betalingsverzoeknummer is 'BETALINGSVERZOEKNUMMER';

DROP TABLE IF EXISTS COR_BERICHT_TCMG ;
CREATE TABLE COR_BERICHT_TCMG (
    Cor_id integer,
    Ed_bericht_id integer,
    Afzender_id integer,
    Ontvanger_id integer,
    Inkomend varchar (1),
    Handtekening_ok varchar (1),
    Ondertekenaar_id integer,
    Onderwerp varchar (256),
    Inhoud varchar (2048),
    Certserienummer varchar (50),
    Batch_status integer,
    Status_overzetten_bericht integer,
    Ingezien varchar (1),
    Plattetekst varchar (8000),
    Status_verzending varchar (1),
    Archief_cor_id integer,
    Bron varchar (10),
    Org_cor_id integer
);

    comment on column COR_BERICHT_TCMG.Cor_id is 'COR_ID';
    comment on column COR_BERICHT_TCMG.Ed_bericht_id is 'ED_BERICHT_ID';
    comment on column COR_BERICHT_TCMG.Afzender_id is 'AFZENDER_ID';
    comment on column COR_BERICHT_TCMG.Ontvanger_id is 'ONTVANGER_ID';
    comment on column COR_BERICHT_TCMG.Inkomend is 'INKOMEND';
    comment on column COR_BERICHT_TCMG.Handtekening_ok is 'HANDTEKENING_OK';
    comment on column COR_BERICHT_TCMG.Ondertekenaar_id is 'ONDERTEKENAAR_ID';
    comment on column COR_BERICHT_TCMG.Onderwerp is 'ONDERWERP';
    comment on column COR_BERICHT_TCMG.Inhoud is 'INHOUD';
    comment on column COR_BERICHT_TCMG.Certserienummer is 'CERTSERIENUMMER';
    comment on column COR_BERICHT_TCMG.Batch_status is 'BATCH_STATUS';
    comment on column COR_BERICHT_TCMG.Status_overzetten_bericht is 'STATUS_OVERZETTEN_BERICHT';
    comment on column COR_BERICHT_TCMG.Ingezien is 'INGEZIEN';
    comment on column COR_BERICHT_TCMG.Plattetekst is 'PLATTETEKST';
    comment on column COR_BERICHT_TCMG.Status_verzending is 'STATUS_VERZENDING';
    comment on column COR_BERICHT_TCMG.Archief_cor_id is 'ARCHIEF_COR_ID';
    comment on column COR_BERICHT_TCMG.Bron is 'BRON';
    comment on column COR_BERICHT_TCMG.Org_cor_id is 'ORG_COR_ID';

DROP TABLE IF EXISTS COR_COR_PARAAF_TCMG ;
CREATE TABLE COR_COR_PARAAF_TCMG (
    Acc_id integer,
    Acc_rol_cd varchar (3),
    Acc_vaste_paraaf_jn varchar (1),
    Afgehandeld_JN varchar (1),
    Akkoord varchar (1),
    Cor_bedrag integer,
    Cor_id integer,
    Creatie_dat timestamp,
    Creatie_ok_JN varchar (1),
    Creatie_user varchar (30),
    Datum_Akkoord timestamp,
    Email_JN varchar (1),
    Mandaat_ok_JN varchar (1),
    Max_bedrag integer,
    Mdw_id integer,
    Mdw_id_doorvoerder integer,
    Mdw_id_oorspronkelijk integer,
    Mdw_mandaat_JN varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rol_cd varchar (3),
    Rol_ok_JN varchar (1),
    Rol_volg_cd varchar (1),
    Toelichting varchar (2000),
    Type_paraaf varchar (1),
    Vaste_paraaf varchar (1),
    Volgorde integer
);

    comment on column COR_COR_PARAAF_TCMG.Acc_id is 'ACC_ID';
    comment on column COR_COR_PARAAF_TCMG.Acc_rol_cd is 'ACC_ROL_CD';
    comment on column COR_COR_PARAAF_TCMG.Acc_vaste_paraaf_jn is 'ACC_VASTE_PARAAF_JN';
    comment on column COR_COR_PARAAF_TCMG.Afgehandeld_JN is 'AFGEHANDELD_JN';
    comment on column COR_COR_PARAAF_TCMG.Akkoord is 'AKKOORD';
    comment on column COR_COR_PARAAF_TCMG.Cor_bedrag is 'COR_BEDRAG';
    comment on column COR_COR_PARAAF_TCMG.Cor_id is 'COR_ID';
    comment on column COR_COR_PARAAF_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column COR_COR_PARAAF_TCMG.Creatie_ok_JN is 'CREATIE_OK_JN';
    comment on column COR_COR_PARAAF_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column COR_COR_PARAAF_TCMG.Datum_Akkoord is 'DATUM_AKKOORD';
    comment on column COR_COR_PARAAF_TCMG.Email_JN is 'EMAIL_JN';
    comment on column COR_COR_PARAAF_TCMG.Mandaat_ok_JN is 'MANDAAT_OK_JN';
    comment on column COR_COR_PARAAF_TCMG.Max_bedrag is 'MAX_BEDRAG';
    comment on column COR_COR_PARAAF_TCMG.Mdw_id is 'MDW_ID';
    comment on column COR_COR_PARAAF_TCMG.Mdw_id_doorvoerder is 'MDW_ID_DOORVOERDER';
    comment on column COR_COR_PARAAF_TCMG.Mdw_id_oorspronkelijk is 'MDW_ID_OORSPRONKELIJK';
    comment on column COR_COR_PARAAF_TCMG.Mdw_mandaat_JN is 'MDW_MANDAAT_JN';
    comment on column COR_COR_PARAAF_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column COR_COR_PARAAF_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column COR_COR_PARAAF_TCMG.Rol_cd is 'ROL_CD';
    comment on column COR_COR_PARAAF_TCMG.Rol_ok_JN is 'ROL_OK_JN';
    comment on column COR_COR_PARAAF_TCMG.Rol_volg_cd is 'ROL_VOLG_CD';
    comment on column COR_COR_PARAAF_TCMG.Toelichting is 'TOELICHTING';
    comment on column COR_COR_PARAAF_TCMG.Type_paraaf is 'TYPE_PARAAF';
    comment on column COR_COR_PARAAF_TCMG.Vaste_paraaf is 'VASTE_PARAAF_JN';
    comment on column COR_COR_PARAAF_TCMG.Volgorde is 'VOLGORDE';

DROP TABLE IF EXISTS COR_COR_SRT_TCMG ;
CREATE TABLE COR_COR_SRT_TCMG (
    Cst_cd varchar (8),
    Cst_oms varchar (60),
    Cst_template varchar (100),
    Regeling varchar (1),
    Thema varchar (1),
    Dossier varchar (1),
    Project varchar (1),
    Organisatie varchar (1),
    Bezoek varchar (1),
    Transactie varchar (1),
    Uitgaand_inkomend varchar (1),
    Juridisch varchar (1),
    Stempel_sj varchar (1),
    Bob_brief varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Vorderingbeheer varchar (1),
    Externe_naam varchar (65),
    Correctie_jn varchar (1),
    Intern_jn varchar (1)
);

    comment on column COR_COR_SRT_TCMG.Cst_cd is 'CST_CD';
    comment on column COR_COR_SRT_TCMG.Cst_oms is 'CST_OMS';
    comment on column COR_COR_SRT_TCMG.Cst_template is 'CST_TEMPLATE';
    comment on column COR_COR_SRT_TCMG.Regeling is 'REGELING';
    comment on column COR_COR_SRT_TCMG.Thema is 'THEMA';
    comment on column COR_COR_SRT_TCMG.Dossier is 'DOSSIER';
    comment on column COR_COR_SRT_TCMG.Project is 'PROJECT';
    comment on column COR_COR_SRT_TCMG.Organisatie is 'ORGANISATIE';
    comment on column COR_COR_SRT_TCMG.Bezoek is 'BEZOEK';
    comment on column COR_COR_SRT_TCMG.Transactie is 'TRANSACTIE';
    comment on column COR_COR_SRT_TCMG.Uitgaand_inkomend is 'UITGAAND_INKOMEND';
    comment on column COR_COR_SRT_TCMG.Juridisch is 'JURIDISCH';
    comment on column COR_COR_SRT_TCMG.Stempel_sj is 'STEMPEL_SJ';
    comment on column COR_COR_SRT_TCMG.Bob_brief is 'BOB_BRIEF';
    comment on column COR_COR_SRT_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column COR_COR_SRT_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column COR_COR_SRT_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column COR_COR_SRT_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column COR_COR_SRT_TCMG.Vorderingbeheer is 'VORDERINGBEHEER';
    comment on column COR_COR_SRT_TCMG.Externe_naam is 'EXTERNE_NAAM';
    comment on column COR_COR_SRT_TCMG.Correctie_jn is 'CORRECTIE_JN';
    comment on column COR_COR_SRT_TCMG.Intern_jn is 'INTERN_JN';

DROP TABLE IF EXISTS COR_CORRESPONDENTIE_HIST_TCMG ;
CREATE TABLE COR_CORRESPONDENTIE_HIST_TCMG (
    Cor_id integer,
    Volg_nr integer,
    Correctie_code varchar (5),
    Oude_verzenddatum timestamp,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column COR_CORRESPONDENTIE_HIST_TCMG.Cor_id is 'COR_ID';
    comment on column COR_CORRESPONDENTIE_HIST_TCMG.Volg_nr is 'VOLG_NR';
    comment on column COR_CORRESPONDENTIE_HIST_TCMG.Correctie_code is 'CORRECTIE_CODE';
    comment on column COR_CORRESPONDENTIE_HIST_TCMG.Oude_verzenddatum is 'OUDE_VERZENDDATUM';
    comment on column COR_CORRESPONDENTIE_HIST_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column COR_CORRESPONDENTIE_HIST_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column COR_CORRESPONDENTIE_HIST_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column COR_CORRESPONDENTIE_HIST_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS COR_CORRESPONDENTIE_TCMG ;
CREATE TABLE COR_CORRESPONDENTIE_TCMG (
    Actie_datum timestamp,
    Afgedrukt_JN varchar (1),
    Afgehandeld varchar (1),
    Archiveren varchar (1),
    Bas_da_melding varchar (2048),
    Behandelingsronde integer,
    Bezoeknr integer,
    Bos_status varchar (2),
    Cbi_id integer,
    Certhoud_contpers_intern integer,
    Cor_bericht varchar (1),
    Cor_id integer,
    Cor_id_van integer,
    Cor_volgnr_ids integer,
    Crd_id integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Cst_cd varchar (8),
    Datum timestamp,
    Datum_ok varchar (1),
    Datum_stempel_sj timestamp,
    Digitaal_archiveren varchar (3),
    Doc_directory varchar (100),
    Doc_naam varchar (40),
    Dos_id integer,
    Dossiergroep_cor_id integer,
    Email_JN varchar (1),
    Genereer_JN varchar (1),
    Html varchar (2048),
    Ids_id integer,
    Indieningsdatum timestamp,
    Ingetrokken varchar (1),
    Jz_id integer,
    Kenmerk varchar (40),
    Lijst_cd varchar (20),
    Mandaat_rol_cd varchar (3),
    Mdw_cd_email varchar (30),
    Mdw_id_contpers_intern integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    naam_organisatie varchar (625),
    Ok_JN varchar (1),
    Omschrijving varchar (2000),
    Open_brief varchar (1),
    Org_id integer,
    Pcs_id integer,
    Plandatum timestamp,
    Prioriteit integer,
    Reg_id integer,
    Rel_id integer,
    Rol_cd varchar (3),
    Run_id integer,
    Select_export varchar (1),
    Senterkenmerk varchar (40),
    Text_inhoud varchar (2048),
    Vernieuw_paraaf varchar (1),
    Verzenddatum timestamp,
    Verzonden_elektronisch_JN varchar (1),
    Verzonden_per_post_JN varchar (1),
    Vst_volgnr integer,
    Wordbrief_akkoord varchar (1),
    Xml_inhoud varchar (2048),
    Xsl varchar (2048)
);

    comment on column COR_CORRESPONDENTIE_TCMG.Actie_datum is 'ACTIE_DATUM';
    comment on column COR_CORRESPONDENTIE_TCMG.Afgedrukt_JN is 'AFGEDRUKT_JN';
    comment on column COR_CORRESPONDENTIE_TCMG.Afgehandeld is 'AFGEHANDELD';
    comment on column COR_CORRESPONDENTIE_TCMG.Archiveren is 'ARCHIVEREN_JN';
    comment on column COR_CORRESPONDENTIE_TCMG.Bas_da_melding is 'BAS_DA_MELDING';
    comment on column COR_CORRESPONDENTIE_TCMG.Behandelingsronde is 'BEHANDELINGSRONDE';
    comment on column COR_CORRESPONDENTIE_TCMG.Bezoeknr is 'BEZOEKNR';
    comment on column COR_CORRESPONDENTIE_TCMG.Bos_status is 'BOS_STATUS';
    comment on column COR_CORRESPONDENTIE_TCMG.Cbi_id is 'CBI_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Certhoud_contpers_intern is 'CERTHOUD_CONTPERS_INTERN';
    comment on column COR_CORRESPONDENTIE_TCMG.Cor_bericht is 'COR_BERICHT';
    comment on column COR_CORRESPONDENTIE_TCMG.Cor_id is 'COR_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Cor_id_van is 'COR_ID_VAN';
    comment on column COR_CORRESPONDENTIE_TCMG.Cor_volgnr_ids is 'COR_VOLGNR_IDS';
    comment on column COR_CORRESPONDENTIE_TCMG.Crd_id is 'CRD_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column COR_CORRESPONDENTIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column COR_CORRESPONDENTIE_TCMG.Cst_cd is 'CST_CD';
    comment on column COR_CORRESPONDENTIE_TCMG.Datum is 'DATUM';
    comment on column COR_CORRESPONDENTIE_TCMG.Datum_ok is 'DATUM_OK';
    comment on column COR_CORRESPONDENTIE_TCMG.Datum_stempel_sj is 'DATUM_STEMPEL_SJ';
    comment on column COR_CORRESPONDENTIE_TCMG.Digitaal_archiveren is 'DIGITAAL_ARCHIVEREN';
    comment on column COR_CORRESPONDENTIE_TCMG.Doc_directory is 'DOC_DIRECTORY';
    comment on column COR_CORRESPONDENTIE_TCMG.Doc_naam is 'DOC_NAAM';
    comment on column COR_CORRESPONDENTIE_TCMG.Dos_id is 'DOS_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Dossiergroep_cor_id is 'DOSSIERGROEP_COR_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Email_JN is 'EMAIL_JN';
    comment on column COR_CORRESPONDENTIE_TCMG.Genereer_JN is 'GENEREER_JN';
    comment on column COR_CORRESPONDENTIE_TCMG.Html is 'HTML';
    comment on column COR_CORRESPONDENTIE_TCMG.Ids_id is 'IDS_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Indieningsdatum is 'INDIENINGSDATUM';
    comment on column COR_CORRESPONDENTIE_TCMG.Ingetrokken is 'INGETROKKEN';
    comment on column COR_CORRESPONDENTIE_TCMG.Jz_id is 'JZ_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Kenmerk is 'KENMERK';
    comment on column COR_CORRESPONDENTIE_TCMG.Lijst_cd is 'LIJST_CD';
    comment on column COR_CORRESPONDENTIE_TCMG.Mandaat_rol_cd is 'MANDAAT_ROL_CD';
    comment on column COR_CORRESPONDENTIE_TCMG.Mdw_cd_email is 'MDW_CD_EMAIL';
    comment on column COR_CORRESPONDENTIE_TCMG.Mdw_id_contpers_intern is 'MDW_ID_CONTPERS_INTERN';
    comment on column COR_CORRESPONDENTIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column COR_CORRESPONDENTIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column COR_CORRESPONDENTIE_TCMG.naam_organisatie is 'NAAM_ORGANISATIE';
    comment on column COR_CORRESPONDENTIE_TCMG.Ok_JN is 'OK_JN';
    comment on column COR_CORRESPONDENTIE_TCMG.Omschrijving is 'OMSCHRIJVING';
    comment on column COR_CORRESPONDENTIE_TCMG.Open_brief is 'OPEN_BRIEF';
    comment on column COR_CORRESPONDENTIE_TCMG.Org_id is 'ORG_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Pcs_id is 'PCS_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Plandatum is 'PLANDATUM';
    comment on column COR_CORRESPONDENTIE_TCMG.Prioriteit is 'PRIORITEIT';
    comment on column COR_CORRESPONDENTIE_TCMG.Reg_id is 'REG_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Rel_id is 'REL_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Rol_cd is 'ROL_CD';
    comment on column COR_CORRESPONDENTIE_TCMG.Run_id is 'RUN_ID';
    comment on column COR_CORRESPONDENTIE_TCMG.Select_export is 'SELECT_EXPORT';
    comment on column COR_CORRESPONDENTIE_TCMG.Senterkenmerk is 'SENTERKENMERK';
    comment on column COR_CORRESPONDENTIE_TCMG.Text_inhoud is 'TEXT_INHOUD';
    comment on column COR_CORRESPONDENTIE_TCMG.Vernieuw_paraaf is 'VERNIEUW_PARAAF';
    comment on column COR_CORRESPONDENTIE_TCMG.Verzenddatum is 'VERZENDDATUM';
    comment on column COR_CORRESPONDENTIE_TCMG.Verzonden_elektronisch_JN is 'VERZONDEN_ELEKTRONISCH_JN';
    comment on column COR_CORRESPONDENTIE_TCMG.Verzonden_per_post_JN is 'VERZONDEN_PER_POST_JN';
    comment on column COR_CORRESPONDENTIE_TCMG.Vst_volgnr is 'VST_VOLGNR';
    comment on column COR_CORRESPONDENTIE_TCMG.Wordbrief_akkoord is 'WORDBRIEF_ACCOORD';
    comment on column COR_CORRESPONDENTIE_TCMG.Xml_inhoud is 'XML_INHOUD';
    comment on column COR_CORRESPONDENTIE_TCMG.Xsl is 'XSL_FO';

DROP TABLE IF EXISTS COR_CST_SET_CST_TCMG ;
CREATE TABLE COR_CST_SET_CST_TCMG (
    Reg_id integer,
    Cst_cd varchar (8),
    Cst_cd_2 varchar (8),
    Verzenddatum_jn varchar (1),
    Afgehandeld_jn varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Genereer_jn varchar (1)
);

    comment on column COR_CST_SET_CST_TCMG.Reg_id is 'REG_ID';
    comment on column COR_CST_SET_CST_TCMG.Cst_cd is 'CST_CD';
    comment on column COR_CST_SET_CST_TCMG.Cst_cd_2 is 'CST_CD_2';
    comment on column COR_CST_SET_CST_TCMG.Verzenddatum_jn is 'VERZENDDATUM_JN';
    comment on column COR_CST_SET_CST_TCMG.Afgehandeld_jn is 'AFGEHANDELD_JN';
    comment on column COR_CST_SET_CST_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column COR_CST_SET_CST_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column COR_CST_SET_CST_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column COR_CST_SET_CST_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column COR_CST_SET_CST_TCMG.Genereer_jn is 'GENEREER_JN';

DROP TABLE IF EXISTS COR_PARAAF_TCMG ;
CREATE TABLE COR_PARAAF_TCMG (
    Reg_id integer,
    Cst_cd varchar (8),
    Type_paraaf varchar (1),
    Rol_cd varchar (3),
    Mdw_rol_niveau varchar (3),
    Volgorde integer,
    Vaste_paraaf_jn varchar (1),
    Rol_volg_cd varchar (1)
);

    comment on column COR_PARAAF_TCMG.Reg_id is 'REG_ID';
    comment on column COR_PARAAF_TCMG.Cst_cd is 'CST_CD';
    comment on column COR_PARAAF_TCMG.Type_paraaf is 'TYPE_PARAAF';
    comment on column COR_PARAAF_TCMG.Rol_cd is 'ROL_CD';
    comment on column COR_PARAAF_TCMG.Mdw_rol_niveau is 'MDW_ROL_NIVEAU';
    comment on column COR_PARAAF_TCMG.Volgorde is 'VOLGORDE';
    comment on column COR_PARAAF_TCMG.Vaste_paraaf_jn is 'VASTE_PARAAF_JN';
    comment on column COR_PARAAF_TCMG.Rol_volg_cd is 'ROL_VOLG_CD';

DROP TABLE IF EXISTS COR_REACTIE_BIJ_COR_SRT_TCMG ;
CREATE TABLE COR_REACTIE_BIJ_COR_SRT_TCMG (
    Cluster_nr integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Cst_cd varchar (8),
    Mdw_id varchar (12),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Per_cluster varchar (1),
    Prg_id integer,
    Prioriteit integer,
    Reactie_cd varchar (3),
    Reg_id integer,
    Rol_cd varchar (3),
    Sts_cd varchar (3),
    Termijn integer,
    Termijn_weken integer
);

    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Cluster_nr is 'CLUSTER_NR';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Cst_cd is 'CST_CD';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Mdw_id is 'MDW_ID';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Per_cluster is 'PER_CLUSTER';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Prg_id is 'PRG_ID';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Prioriteit is 'PRIORITEIT';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Reactie_cd is 'REACTIE_CD';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Reg_id is 'REG_ID';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Rol_cd is 'ROL_CD';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Sts_cd is 'STS_CD';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Termijn is 'TERMIJN';
    comment on column COR_REACTIE_BIJ_COR_SRT_TCMG.Termijn_weken is 'TERMIJN_WEKEN';

DROP TABLE IF EXISTS COR_REGLSPEC_COR_TCMG ;
CREATE TABLE COR_REGLSPEC_COR_TCMG (
    Bos_bezorging varchar (1),
    Crea_back varchar (1),
    Create_merge_jn varchar (1),
    Create_merge_single varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Cst_cd varchar (8),
    Doc_template varchar (150),
    Externe_naam varchar (65),
    Geblokkeerd_jn varchar (1),
    Ic_controle varchar (1),
    Job varchar (30),
    Lijst_cd varchar (20),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Prf_cd varchar (8),
    Print_jn varchar (1),
    Prioriteit integer,
    Reg_id integer,
    Verzenddatum_vullen varchar (1)
);

    comment on column COR_REGLSPEC_COR_TCMG.Bos_bezorging is 'BOS_BEZORGING';
    comment on column COR_REGLSPEC_COR_TCMG.Crea_back is 'CREA_BACK';
    comment on column COR_REGLSPEC_COR_TCMG.Create_merge_jn is 'CREATE_MERGE_JN';
    comment on column COR_REGLSPEC_COR_TCMG.Create_merge_single is 'CREATE_MERGE_SINGLE';
    comment on column COR_REGLSPEC_COR_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column COR_REGLSPEC_COR_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column COR_REGLSPEC_COR_TCMG.Cst_cd is 'CST_CD';
    comment on column COR_REGLSPEC_COR_TCMG.Doc_template is 'DOC_TEMPLATE';
    comment on column COR_REGLSPEC_COR_TCMG.Externe_naam is 'EXTERNE_NAAM';
    comment on column COR_REGLSPEC_COR_TCMG.Geblokkeerd_jn is 'GEBLOKKEERD_JN';
    comment on column COR_REGLSPEC_COR_TCMG.Ic_controle is 'IC_CONTROLE';
    comment on column COR_REGLSPEC_COR_TCMG.Job is 'JOB';
    comment on column COR_REGLSPEC_COR_TCMG.Lijst_cd is 'LIJST_CD';
    comment on column COR_REGLSPEC_COR_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column COR_REGLSPEC_COR_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column COR_REGLSPEC_COR_TCMG.Prf_cd is 'PRF_CD';
    comment on column COR_REGLSPEC_COR_TCMG.Print_jn is 'PRINT_JN';
    comment on column COR_REGLSPEC_COR_TCMG.Prioriteit is 'PRIORITEIT';
    comment on column COR_REGLSPEC_COR_TCMG.Reg_id is 'REG_ID';
    comment on column COR_REGLSPEC_COR_TCMG.Verzenddatum_vullen is 'VERZENDDATUM_VULLEN';

DROP TABLE IF EXISTS COR_TRANSACTIEGROEP_BIJ_BRF_TCMG ;
CREATE TABLE COR_TRANSACTIEGROEP_BIJ_BRF_TCMG (
    Cor_id integer,
    Tra_id integer,
    Dos_id integer,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column COR_TRANSACTIEGROEP_BIJ_BRF_TCMG.Cor_id is 'COR_ID';
    comment on column COR_TRANSACTIEGROEP_BIJ_BRF_TCMG.Tra_id is 'TRA_ID';
    comment on column COR_TRANSACTIEGROEP_BIJ_BRF_TCMG.Dos_id is 'DOS_ID';
    comment on column COR_TRANSACTIEGROEP_BIJ_BRF_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column COR_TRANSACTIEGROEP_BIJ_BRF_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column COR_TRANSACTIEGROEP_BIJ_BRF_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column COR_TRANSACTIEGROEP_BIJ_BRF_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS DAM_CONT_BIJ_DLN_COM_ADR_TCMG ;
CREATE TABLE DAM_CONT_BIJ_DLN_COM_ADR_TCMG (
    creatie_dat timestamp,
    Creatie_user varchar (30),
    Dcs_id integer,
    Dos_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Per_id integer,
    Rav_id integer,
    Rca_id integer,
    Rel_id integer,
    Rol_cd varchar (3),
    Rol_cd_van varchar (3),
    Vst_volgnr integer
);

    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.creatie_dat is 'CREATIE_DAT';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Dcs_id is 'DCS_ID';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Per_id is 'PER_ID';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Rav_id is 'RAV_ID';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Rca_id is 'RCA_ID';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Rel_id is 'REL_ID_VAN';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Rol_cd is 'ROL_CD';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Rol_cd_van is 'ROL_CD_VAN';
    comment on column DAM_CONT_BIJ_DLN_COM_ADR_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS DAM_CONTACT_BIJ_DEELNAME_TCMG ;
CREATE TABLE DAM_CONTACT_BIJ_DEELNAME_TCMG (
    Certhoud_id integer,
    Correspondent varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Per_id integer,
    Rechten_id varchar (1),
    Rel_id integer,
    Rol_cd varchar (3),
    Rol_cd_van varchar (3),
    Vst_volgnr integer
);

    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Certhoud_id is 'CERTHOUD_ID';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Correspondent is 'CORRESPONDENT';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Per_id is 'PER_ID';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Rechten_id is 'RECHTEN_ID';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Rel_id is 'REL_ID_VAN';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Rol_cd is 'ROL_CD';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Rol_cd_van is 'ROL_CD_VAN';
    comment on column DAM_CONTACT_BIJ_DEELNAME_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS DAM_DECLARATIE_TCMG ;
CREATE TABLE DAM_DECLARATIE_TCMG (
    Adviesaangevraagd integer,
    Adviesaantaluren integer,
    Advieshandtoegekend integer,
    Adviesrente integer,
    Adviesrentedatum timestamp,
    Adviestoegekend integer,
    Besluit_cor_id integer,
    Cor_id integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Datumberekening timestamp,
    Dos_id integer,
    Herstel varchar (1),
    Inboedeltuinaangevraagd integer,
    Inboedeltuinhandtoegekend integer,
    Inboedeltuinrente integer,
    inboedeltuinrentedatum timestamp,
    Inboedeltuintoegekend integer,
    Inkomstendervingaangevraagd integer,
    Inkomstendervinghandtoegekend integer,
    Inkomstendervingrente integer,
    Inkomstendervingrentedatum timestamp,
    Inkomstendervingtoegekend integer,
    Juridischaangevraagd integer,
    Juridischaantaluren integer,
    Juridischhandtoegekend integer,
    Juridischrente integer,
    Juridischrentedatum timestamp,
    Juridischtarief integer,
    Juridischtoegekend integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (2048),
    Oorzaak varchar (2048),
    Opslagaangevraagd integer,
    Opslagaantalweken integer,
    Opslaghandtoegekend integer,
    opslagrente integer,
    Opslagrentedatum timestamp,
    Opslagtoegekend integer,
    Overlastaangevraagd integer,
    Overlasthandtoegekend integer,
    Overlastrente integer,
    Overlasttoegekend integer,
    Overlastvergoeding varchar (1),
    Overnachtenaangevraagd integer,
    Overnachtenaantalnachten integer,
    Overnachtenaantalpersonen varchar (20),
    Overnachtenhandtoegekend integer,
    Overnachtenrente integer,
    Overnachtenrentedatum timestamp,
    Overnachtentoegekend integer,
    Reisaangevraagd integer,
    Reisaantalkm integer,
    Reishandtoegekend integer,
    Reisov integer,
    Reisrente integer,
    Reisrentedatum timestamp,
    Reistoegekend integer,
    Schoonmaakaangevraagd integer,
    Schoonmaakhandtoegekend integer,
    Schoonmaakrente integer,
    Schoonmaaktoegekend integer,
    Schoonmaakvergoeding varchar (1),
    Thuisblijfherstelaangevraagd integer,
    Thuisblijfherstelaantaldagdeel integer,
    Thuisblijfherstelhandtoegekend integer,
    Thuisblijfherstelrente integer,
    Thuisblijfhersteltoegekend integer,
    Thuisblijfherstelvergoeding varchar (1),
    Thuisblijfopnameaangevraagd integer,
    Thuisblijfopnamehandtoegekend integer,
    Thuisblijfopnamerente integer,
    Thuisblijfopnametoegekend integer,
    Thuisblijfopnamevergoeding varchar (1),
    Totaalrente integer,
    Totaaltoegekend integer,
    Verhuisaangevraagd integer,
    Verhuishandtoegekend integer,
    Verhuisrente integer,
    Verhuisrentedatum timestamp,
    Verhuistoegekend integer,
    Zorgaangevraagd integer,
    Zorghandtoegekend integer,
    Zorgrente integer,
    Zorgrentedatum timestamp,
    Zorgtoegekend integer
);

    comment on column DAM_DECLARATIE_TCMG.Adviesaangevraagd is 'ADVIESAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Adviesaantaluren is 'ADVIESAANTALUREN';
    comment on column DAM_DECLARATIE_TCMG.Advieshandtoegekend is 'ADVIESHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Adviesrente is 'ADVIESRENTE';
    comment on column DAM_DECLARATIE_TCMG.Adviesrentedatum is 'ADVIESRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Adviestoegekend is 'ADVIESTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Besluit_cor_id is 'BESLUIT_COR_ID';
    comment on column DAM_DECLARATIE_TCMG.Cor_id is 'COR_ID';
    comment on column DAM_DECLARATIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DECLARATIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DECLARATIE_TCMG.Datumberekening is 'DATUMBEREKENING';
    comment on column DAM_DECLARATIE_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_DECLARATIE_TCMG.Herstel is 'HERSTEL';
    comment on column DAM_DECLARATIE_TCMG.Inboedeltuinaangevraagd is 'INBOEDELTUINAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Inboedeltuinhandtoegekend is 'INBOEDELTUINHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Inboedeltuinrente is 'INBOEDELTUINRENTE';
    comment on column DAM_DECLARATIE_TCMG.inboedeltuinrentedatum is 'INBOEDELTUINRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Inboedeltuintoegekend is 'INBOEDELTUINTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Inkomstendervingaangevraagd is 'INKOMSTENDERVINGAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Inkomstendervinghandtoegekend is 'INKOMSTENDERVINGHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Inkomstendervingrente is 'INKOMSTENDERVINGRENTE';
    comment on column DAM_DECLARATIE_TCMG.Inkomstendervingrentedatum is 'INKOMSTENDERVINGRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Inkomstendervingtoegekend is 'INKOMSTENDERVINGTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Juridischaangevraagd is 'JURIDISCHAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Juridischaantaluren is 'JURIDISCHAANTALUREN';
    comment on column DAM_DECLARATIE_TCMG.Juridischhandtoegekend is 'JURIDISCHHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Juridischrente is 'JURIDISCHRENTE';
    comment on column DAM_DECLARATIE_TCMG.Juridischrentedatum is 'JURIDISCHRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Juridischtarief is 'JURIDISCHTARIEF';
    comment on column DAM_DECLARATIE_TCMG.Juridischtoegekend is 'JURIDISCHTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DECLARATIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_DECLARATIE_TCMG.Notitie is 'NOTITIE';
    comment on column DAM_DECLARATIE_TCMG.Oorzaak is 'OORZAAK';
    comment on column DAM_DECLARATIE_TCMG.Opslagaangevraagd is 'OPSLAGAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Opslagaantalweken is 'OPSLAGAANTALWEKEN';
    comment on column DAM_DECLARATIE_TCMG.Opslaghandtoegekend is 'OPSLAGHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.opslagrente is 'OPSLAGRENTE';
    comment on column DAM_DECLARATIE_TCMG.Opslagrentedatum is 'OPSLAGRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Opslagtoegekend is 'OPSLAGTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Overlastaangevraagd is 'OVERLASTAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Overlasthandtoegekend is 'OVERLASTHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Overlastrente is 'OVERLASTRENTE';
    comment on column DAM_DECLARATIE_TCMG.Overlasttoegekend is 'OVERLASTTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Overlastvergoeding is 'OVERLASTVERGOEDING';
    comment on column DAM_DECLARATIE_TCMG.Overnachtenaangevraagd is 'OVERNACHTENAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Overnachtenaantalnachten is 'OVERNACHTENAANTALNACHTEN';
    comment on column DAM_DECLARATIE_TCMG.Overnachtenaantalpersonen is 'OVERNACHTENAANTALPERSONEN';
    comment on column DAM_DECLARATIE_TCMG.Overnachtenhandtoegekend is 'OVERNACHTENHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Overnachtenrente is 'OVERNACHTENRENTE';
    comment on column DAM_DECLARATIE_TCMG.Overnachtenrentedatum is 'OVERNACHTENRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Overnachtentoegekend is 'OVERNACHTENTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Reisaangevraagd is 'REISAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Reisaantalkm is 'REISAANTALKM';
    comment on column DAM_DECLARATIE_TCMG.Reishandtoegekend is 'REISHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Reisov is 'REISOV';
    comment on column DAM_DECLARATIE_TCMG.Reisrente is 'REISRENTE';
    comment on column DAM_DECLARATIE_TCMG.Reisrentedatum is 'REISRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Reistoegekend is 'REISTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Schoonmaakaangevraagd is 'SCHOONMAAKAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Schoonmaakhandtoegekend is 'SCHOONMAAKHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Schoonmaakrente is 'SCHOONMAAKRENTE';
    comment on column DAM_DECLARATIE_TCMG.Schoonmaaktoegekend is 'SCHOONMAAKTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Schoonmaakvergoeding is 'SCHOONMAAKVERGOEDING';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfherstelaangevraagd is 'THUISBLIJFHERSTELAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfherstelaantaldagdeel is 'THUISBLIJFHERSTELAANTALDAGDEEL';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfherstelhandtoegekend is 'THUISBLIJFHERSTELHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfherstelrente is 'THUISBLIJFHERSTELRENTE';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfhersteltoegekend is 'THUISBLIJFHERSTELTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfherstelvergoeding is 'THUISBLIJFHERSTELVERGOEDING';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfopnameaangevraagd is 'THUISBLIJFOPNAMEAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfopnamehandtoegekend is 'THUISBLIJFOPNAMEHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfopnamerente is 'THUISBLIJFOPNAMERENTE';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfopnametoegekend is 'THUISBLIJFOPNAMETOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Thuisblijfopnamevergoeding is 'THUISBLIJFOPNAMEVERGOEDING';
    comment on column DAM_DECLARATIE_TCMG.Totaalrente is 'TOTAALRENTE';
    comment on column DAM_DECLARATIE_TCMG.Totaaltoegekend is 'TOTAALTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Verhuisaangevraagd is 'VERHUISAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Verhuishandtoegekend is 'VERHUISHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Verhuisrente is 'VERHUISRENTE';
    comment on column DAM_DECLARATIE_TCMG.Verhuisrentedatum is 'VERHUISRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Verhuistoegekend is 'VERHUISTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Zorgaangevraagd is 'ZORGAANGEVRAAGD';
    comment on column DAM_DECLARATIE_TCMG.Zorghandtoegekend is 'ZORGHANDTOEGEKEND';
    comment on column DAM_DECLARATIE_TCMG.Zorgrente is 'ZORGRENTE';
    comment on column DAM_DECLARATIE_TCMG.Zorgrentedatum is 'ZORGRENTEDATUM';
    comment on column DAM_DECLARATIE_TCMG.Zorgtoegekend is 'ZORGTOEGEKEND';

DROP TABLE IF EXISTS DAM_DEELNAME_ADRES_TCMG ;
CREATE TABLE DAM_DEELNAME_ADRES_TCMG (
    Adressoort varchar (3),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dda_id integer,
    Dos_id integer,
    Kkr_afwijkend varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rae_id integer,
    Ras_id integer,
    Rel_id integer,
    Rol_cd varchar (3),
    Vst_volgnr integer
);

    comment on column DAM_DEELNAME_ADRES_TCMG.Adressoort is 'ADRESSOORT';
    comment on column DAM_DEELNAME_ADRES_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DEELNAME_ADRES_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DEELNAME_ADRES_TCMG.Dda_id is 'DDA_ID';
    comment on column DAM_DEELNAME_ADRES_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_DEELNAME_ADRES_TCMG.Kkr_afwijkend is 'KKR_AFWIJKEND';
    comment on column DAM_DEELNAME_ADRES_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DEELNAME_ADRES_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_DEELNAME_ADRES_TCMG.Rae_id is 'RAE_ID';
    comment on column DAM_DEELNAME_ADRES_TCMG.Ras_id is 'RAS_ID';
    comment on column DAM_DEELNAME_ADRES_TCMG.Rel_id is 'REL_ID';
    comment on column DAM_DEELNAME_ADRES_TCMG.Rol_cd is 'ROL_CD';
    comment on column DAM_DEELNAME_ADRES_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS DAM_DEELNAME_COM_ADRES_TCMG ;
CREATE TABLE DAM_DEELNAME_COM_ADRES_TCMG (
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dda_id integer,
    Dos_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rae_id integer,
    Rca_id integer,
    Rel_id integer,
    Rol_cd varchar (3),
    Vst_volgnr integer
);

    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Dda_id is 'DDA_ID';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Rae_id is 'RAE_ID';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Rca_id is 'RCA_ID';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Rel_id is 'REL_ID';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Rol_cd is 'ROL_CD';
    comment on column DAM_DEELNAME_COM_ADRES_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS DAM_DEELNAME_TCMG ;
CREATE TABLE DAM_DEELNAME_TCMG (
    Afwijking_cd varchar (6),
    Bic varchar (11),
    Bic_cd varchar (8),
    Contract_cd varchar (30),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dam_project_deelname varchar (1),
    Deelnamenaam varchar (625),
    Dos_id integer,
    Ed_deelnemer_id integer,
    Edeelnemer_id integer,
    Einddatum timestamp,
    Elektronisch_corresponderen_JN varchar (1),
    Fisc_eenheid varchar (1),
    Geclaimd integer,
    Geclaimd_NLG integer,
    Gedeclareerd integer,
    Gedeclareerd_NLG integer,
    Gerealiseerd integer,
    Gerealiseerd_NLG integer,
    Geschoond integer,
    Geschoond_NLG integer,
    IBAN varchar (34),
    Ingediend integer,
    Ingediend_NLG integer,
    Kkr_statutair varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Niet_sepa_betalen varchar (1),
    Org_id integer,
    Org_naam varchar (625),
    Pom_ranking varchar (1),
    Rel_id integer,
    Rel_id_rekening integer,
    Rol_cd varchar (3),
    Startdatum timestamp,
    Totaal_decl_deelname integer,
    Totaal_uitb_deelname integer,
    Verklaring_gewenst_JN varchar (1),
    Vst_volgnr integer
);

    comment on column DAM_DEELNAME_TCMG.Afwijking_cd is 'AFWIJKING_CD';
    comment on column DAM_DEELNAME_TCMG.Bic is 'BIC';
    comment on column DAM_DEELNAME_TCMG.Bic_cd is 'BICCODE';
    comment on column DAM_DEELNAME_TCMG.Contract_cd is 'CONTRACT_CD';
    comment on column DAM_DEELNAME_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DEELNAME_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DEELNAME_TCMG.Dam_project_deelname is 'DAM_PROJECT_DEELNAME';
    comment on column DAM_DEELNAME_TCMG.Deelnamenaam is 'DEELNAMENAAM';
    comment on column DAM_DEELNAME_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_DEELNAME_TCMG.Ed_deelnemer_id is 'ED_DEELNEMER_ID';
    comment on column DAM_DEELNAME_TCMG.Edeelnemer_id is 'EDEELNEMER_ID';
    comment on column DAM_DEELNAME_TCMG.Einddatum is 'EINDDATUM';
    comment on column DAM_DEELNAME_TCMG.Elektronisch_corresponderen_JN is 'ELEKTRONISCH_CORRESPONDEREN_JN';
    comment on column DAM_DEELNAME_TCMG.Fisc_eenheid is 'FISC_EENHEID_JN';
    comment on column DAM_DEELNAME_TCMG.Geclaimd is 'GECLAIMD';
    comment on column DAM_DEELNAME_TCMG.Geclaimd_NLG is 'GECLAIMD_NLG';
    comment on column DAM_DEELNAME_TCMG.Gedeclareerd is 'GEDECLAREERD';
    comment on column DAM_DEELNAME_TCMG.Gedeclareerd_NLG is 'GEDECLAREERD_NLG';
    comment on column DAM_DEELNAME_TCMG.Gerealiseerd is 'GEREALISEERD';
    comment on column DAM_DEELNAME_TCMG.Gerealiseerd_NLG is 'GEREALISEERD_NLG';
    comment on column DAM_DEELNAME_TCMG.Geschoond is 'GESCHOOND';
    comment on column DAM_DEELNAME_TCMG.Geschoond_NLG is 'GESCHOOND_NLG';
    comment on column DAM_DEELNAME_TCMG.IBAN is 'IBAN';
    comment on column DAM_DEELNAME_TCMG.Ingediend is 'INGEDIEND';
    comment on column DAM_DEELNAME_TCMG.Ingediend_NLG is 'INGEDIEND_NLG';
    comment on column DAM_DEELNAME_TCMG.Kkr_statutair is 'KKR_STATUTAIR';
    comment on column DAM_DEELNAME_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DEELNAME_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_DEELNAME_TCMG.Niet_sepa_betalen is 'NIET_SEPA_BETALEN';
    comment on column DAM_DEELNAME_TCMG.Org_id is 'ORG_ID';
    comment on column DAM_DEELNAME_TCMG.Org_naam is 'ORG_NAAM';
    comment on column DAM_DEELNAME_TCMG.Pom_ranking is 'POM_RANKING';
    comment on column DAM_DEELNAME_TCMG.Rel_id is 'REL_ID';
    comment on column DAM_DEELNAME_TCMG.Rel_id_rekening is 'REL_ID_REKENING';
    comment on column DAM_DEELNAME_TCMG.Rol_cd is 'ROL_CD';
    comment on column DAM_DEELNAME_TCMG.Startdatum is 'STARTDATUM';
    comment on column DAM_DEELNAME_TCMG.Totaal_decl_deelname is 'TOTAAL_DECL_DEELNAME';
    comment on column DAM_DEELNAME_TCMG.Totaal_uitb_deelname is 'TOTAAL_UITB_DEELNAME';
    comment on column DAM_DEELNAME_TCMG.Verklaring_gewenst_JN is 'VERKLARING_GEWENST_JN';
    comment on column DAM_DEELNAME_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS DAM_DOS_BUDGETREGEL_TCMG ;
CREATE TABLE DAM_DOS_BUDGETREGEL_TCMG (
    Dos_id integer,
    Tra_id integer,
    Volgnummer integer,
    Ovk_nr varchar (20),
    Rpt_nr integer,
    Bgt_cd varchar (1),
    Verleend integer,
    Ingetrokken integer,
    Gedeclareerd integer,
    Betaald integer,
    Vastgesteld integer,
    Openstaand integer,
    Opeisbaar integer,
    Def_verleend integer,
    Def_ingetrokken integer,
    Def_gedeclareerd integer,
    Def_openstaand integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rpe_datum_van timestamp,
    Neg_einddeclaratie integer,
    Prg_id integer,
    Reg_id integer,
    Reg_nr integer,
    Afl_neg_einddeclaratie integer,
    Def_neg_einddeclaratie integer,
    Cvk_id integer,
    Vpl_volgnummer integer,
    Rpt_nr_oud varchar (20),
    Per_Deelnemer varchar (1)
);

    comment on column DAM_DOS_BUDGETREGEL_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Tra_id is 'TRA_ID';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Volgnummer is 'VOLGNUMMER';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Ovk_nr is 'OVK_NR';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Rpt_nr is 'RPT_NR';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Bgt_cd is 'BGT_CD';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Verleend is 'VERLEEND';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Ingetrokken is 'INGETROKKEN';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Gedeclareerd is 'GEDECLAREERD';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Betaald is 'BETAALD';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Vastgesteld is 'VASTGESTELD';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Openstaand is 'OPENSTAAND';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Opeisbaar is 'OPEISBAAR';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Def_verleend is 'DEF_VERLEEND';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Def_ingetrokken is 'DEF_INGETROKKEN';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Def_gedeclareerd is 'DEF_GEDECLAREERD';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Def_openstaand is 'DEF_OPENSTAAND';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Rpe_datum_van is 'RPE_DATUM_VAN';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Neg_einddeclaratie is 'NEG_EINDDECLARATIE';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Prg_id is 'PRG_ID';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Reg_id is 'REG_ID';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Reg_nr is 'REG_NR';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Afl_neg_einddeclaratie is 'AFL_NEG_EINDDECLARATIE';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Def_neg_einddeclaratie is 'DEF_NEG_EINDDECLARATIE';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Cvk_id is 'CVK_ID';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Vpl_volgnummer is 'VPL_VOLGNUMMER';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Rpt_nr_oud is 'RPT_NR_OUD';
    comment on column DAM_DOS_BUDGETREGEL_TCMG.Per_Deelnemer is 'PER_DEELNEMER';

DROP TABLE IF EXISTS DAM_DOSSIER_IN_GROEP_TCMG ;
CREATE TABLE DAM_DOSSIER_IN_GROEP_TCMG (
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Ddg_id integer,
    Dds_id integer,
    Dos_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column DAM_DOSSIER_IN_GROEP_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DOSSIER_IN_GROEP_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DOSSIER_IN_GROEP_TCMG.Ddg_id is 'DDG_ID';
    comment on column DAM_DOSSIER_IN_GROEP_TCMG.Dds_id is 'DDS_ID';
    comment on column DAM_DOSSIER_IN_GROEP_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_DOSSIER_IN_GROEP_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DOSSIER_IN_GROEP_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS DAM_DOSSIER_NOTITIE_TCMG ;
CREATE TABLE DAM_DOSSIER_NOTITIE_TCMG (
    Afgehandeld varchar (1),
    Bezoeknr integer,
    Cor_id_no integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (2048),
    Notitietype_naam varchar (50),
    Rel_id integer
);

    comment on column DAM_DOSSIER_NOTITIE_TCMG.Afgehandeld is 'AFGEHANDELD';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Bezoeknr is 'BEZOEKNR';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Cor_id_no is 'COR_ID_NO';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Notitie is 'NOTITIE';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Notitietype_naam is 'NOTITIETYPE_NAAM';
    comment on column DAM_DOSSIER_NOTITIE_TCMG.Rel_id is 'REL_ID';

DROP TABLE IF EXISTS DAM_DOSSIER_TCMG ;
CREATE TABLE DAM_DOSSIER_TCMG (
    Aangevraagd_bedrag integer,
    Aantal_dagenopschorting integer,
    Aantal_ICT_projecten integer,
    Aantal_SO_projecten integer,
    Aantal_SO_werknemers integer,
    Aantal_SO_zlf integer,
    Aanvang_dat timestamp,
    Aanvraag_volgnr integer,
    Aanvraagsoort varchar (10),
    Acceptatie_sts varchar (1),
    Afdrachtsvermindering varchar (1),
    Afhandeldatum timestamp,
    Afhandelwijze varchar (512),
    Afl_neg_einddeclaratie integer,
    Akkoord_verlenen varchar (1),
    aut_verwerkt_imp varchar (1),
    Auth_id_indiener integer,
    Auth_id_ondertekenaar integer,
    Auth_prg_id integer,
    BAS_advies varchar (512),
    Batchstatuscert varchar (1),
    Batchstatusref varchar (1),
    Batchstatusstat varchar (1),
    Behandelingsronde integer,
    Beoordelingswijze varchar (4),
    Berekende_rente integer,
    Beslissing_cd varchar (2),
    Checksum integer,
    Classificatie varchar (10),
    Cluster_nr integer,
    Controle_activiteit varchar (1),
    Commercieel_perspectief varchar (1),
    Contractjaar integer,
    Conversiedossier varchar (1),
    Correspondentie_via_email varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Jaardossier_WBSO varchar (1),
    Datum_in timestamp,
    Datum_renteberekening timestamp,
    Datum_status timestamp,
    Volgnr_diskette integer,
    Volgnr_diskette_na_import integer,
    Dos_cd varchar (20),
    Dos_id integer,
    Dos_id_aanvulling integer,
    Dosprio integer,
    ED_Aanvraag_id integer,
    Eerste_jr_aflossing integer,
    Eind_dat timestamp,
    Eindmaand integer,
    Extern_aanvraag_id integer,
    Extern_dossier_id integer,
    Extrene_bron_cd varchar (10),
    Gecommitteerd_zegge varchar (100),
    Gem_uurloon integer,
    Hand_bewerkt_imp varchar (1),
    Handtekening_ok varchar (1),
    Hoofd_dos_id integer,
    Id_van_de_doos integer,
    Id_van_de_doos_na_de_import integer,
    Importlijst varchar (240),
    Indienings_dat timestamp,
    Indienings_tijd timestamp,
    Indienkanaal varchar (1),
    Ingezien varchar (1),
    Inkoopcat_cd varchar (6),
    Inleen_binnen_Fiscale_eenheid varchar (1),
    Meldingnummer_IRWA varchar (30),
    Jaar integer,
    Jaardossier_bron_dos_id integer,
    Jaardossier_dos_id integer,
    Korte_titel varchar (25),
    Krat_nr integer,
    Laatste_jr_aflossing integer,
    Laatste_pcs_id integer,
    Landnaam varchar (60),
    LB_nummer_komt_overeen varchar (1),
    Machtiging_JN varchar (1),
    Mdw_cd varchar (30),
    Mentorterugkoppeling varchar (1),
    Mutatie_dat timestamp,
    Mutatie_dat_vst timestamp,
    Mutatie_user varchar (30),
    Mutatie_user_vst varchar (30),
    Naar_batchrun integer,
    Neg_einddeclaratie integer,
    Notities varchar (2048),
    Octrooien integer,
    Offertebedrag integer,
    Cerhoud_id_Ondertekenaar integer,
    Ontvangstdatum timestamp,
    Oorspr_einddatum timestamp,
    Overige_subsidie varchar (1),
    Opdrachtvorm_cd varchar (3),
    Perc_verrekenen integer,
    Periode_nr integer,
    Prioriteit integer,
    Prioriteitsdatum timestamp,
    Projectomschrijving varchar (2048),
    Ranking integer,
    RDA_Afhandeling_forfaitair varchar (1),
    RDA_aangevraagd varchar (1),
    Referentie varchar (10),
    Reg_id integer,
    Reg_nr integer,
    Rel_id_Aanvrager integer,
    Rente_perc integer,
    Samenwerkingsverband1 varchar (1),
    Samenwerkingsverband2 varchar (1),
    SO_loon integer,
    Begrote_SO_loonsom integer,
    SO_uren integer,
    Startmaand integer,
    Statuscode varchar (3),
    Status_cert varchar (1),
    Status_oud varchar (1),
    status_SO_uurloon varchar (1),
    Status_TT varchar (3),
    Statusgroep varchar (1),
    Statustermijn timestamp,
    Status_E_Diensten varchar (50),
    Status_E_Loket varchar (50),
    Technisch_succes integer,
    Technisch_Cor_id integer,
    Titel varchar (200),
    Afgelost_op_onvoorw_hoofdsom integer,
    Afgelost_op_onvoorw_rente integer,
    Totaal_afgelost_op_hoofdsom integer,
    Totaal_ontvangen_rente integer,
    Totaal_bijgeschreven_rente integer,
    Direct_opeisbare_vordering integer,
    Direct_opeisbare_hoofdsom integer,
    Direct_opeisbare_rente integer,
    Totaal_gecommitteerd_bedrag integer,
    Zegge_Totaal_gecommitteerd varchar (100),
    Totaal_gedeclareerd_bedrag integer,
    Totaal_geschoonde_kosten integer,
    Totale_hoofdsom integer,
    Totaal_ingetrokken_bedrag integer,
    Kwijtsch_onvoorw_hoofdsom integer,
    Kwijtsch_onvoorw_rente integer,
    Kwijtsch_direct_opeisbaar integer,
    Kwijtsch_voorw_hoofdsom integer,
    Kwijtsch_voorw_rente integer,
    Totaal_kwijtgescholden_bedrag integer,
    Totaal_openstaand_bedrag integer,
    Direct_opeisbaar_gesteld integer,
    Totaal_uitbetaald integer,
    Totaal_verleend_bedrag integer,
    Uitlening_binnen_Fisc_eenheid varchar (1),
    Uurloon_jaar integer,
    Vaststellen_batch varchar (1),
    Vergoedingsperc integer,
    Volgnr_LB integer,
    Voorlopig_gecommitteerd integer,
    Voorlopig_gedeclareerd integer,
    Vorig_aanvraag_bedrijf_nr integer,
    Vorig_aanvraagjaar integer,
    Vorig_aanvraagnummer varchar (40),
    Vorie_aanvraagperiode integer,
    Vorig_aanvraag_volgnr integer,
    Vaststelling_conform_aanvraag varchar (1),
    VV_Aanvraagnummer varchar (12),
    Wel_akkoord_niet_verlenen varchar (1),
    Aangeboden_aan_ZER varchar (1)
);

    comment on column DAM_DOSSIER_TCMG.Aangevraagd_bedrag is 'AANGEVRAAGD_BEDRAG';
    comment on column DAM_DOSSIER_TCMG.Aantal_dagenopschorting is 'AANTAL_DAGENOPSCHORTING';
    comment on column DAM_DOSSIER_TCMG.Aantal_ICT_projecten is 'AANTAL_ICT_PROJECTEN';
    comment on column DAM_DOSSIER_TCMG.Aantal_SO_projecten is 'AANTAL_SO_PROJECTEN';
    comment on column DAM_DOSSIER_TCMG.Aantal_SO_werknemers is 'AANTAL_SO_WERKNEMERS';
    comment on column DAM_DOSSIER_TCMG.Aantal_SO_zlf is 'AANTAL_SO_ZLF';
    comment on column DAM_DOSSIER_TCMG.Aanvang_dat is 'AANVANG_DAT';
    comment on column DAM_DOSSIER_TCMG.Aanvraag_volgnr is 'AANVRAAG_VOLG_NR';
    comment on column DAM_DOSSIER_TCMG.Aanvraagsoort is 'AANVRAAGSOORT';
    comment on column DAM_DOSSIER_TCMG.Acceptatie_sts is 'ACCEPTATIE_STS';
    comment on column DAM_DOSSIER_TCMG.Afdrachtsvermindering is 'AFDRACHTSVERMINDERING';
    comment on column DAM_DOSSIER_TCMG.Afhandeldatum is 'AFHANDELDATUM';
    comment on column DAM_DOSSIER_TCMG.Afhandelwijze is 'AFHANDELWIJZE';
    comment on column DAM_DOSSIER_TCMG.Afl_neg_einddeclaratie is 'AFL_NEG_EINDDECLARATIE';
    comment on column DAM_DOSSIER_TCMG.Akkoord_verlenen is 'AKKOORD_VERLENEN';
    comment on column DAM_DOSSIER_TCMG.aut_verwerkt_imp is 'AUT_VERWERKT_IMP';
    comment on column DAM_DOSSIER_TCMG.Auth_id_indiener is 'AUTH_ID_INDIENER';
    comment on column DAM_DOSSIER_TCMG.Auth_id_ondertekenaar is 'AUTH_ID_ONDERTEKENAAR';
    comment on column DAM_DOSSIER_TCMG.Auth_prg_id is 'AUTH_PRG_ID';
    comment on column DAM_DOSSIER_TCMG.BAS_advies is 'BAS_ADVIES';
    comment on column DAM_DOSSIER_TCMG.Batchstatuscert is 'BATCHSTATUSCERT';
    comment on column DAM_DOSSIER_TCMG.Batchstatusref is 'BATCHSTATUSREF';
    comment on column DAM_DOSSIER_TCMG.Batchstatusstat is 'BATCHSTATUSSTAT';
    comment on column DAM_DOSSIER_TCMG.Behandelingsronde is 'BEHANDELINGSRONDE';
    comment on column DAM_DOSSIER_TCMG.Beoordelingswijze is 'BEOORDELINGSWIJZE';
    comment on column DAM_DOSSIER_TCMG.Berekende_rente is 'BEREKENDE_RENTE';
    comment on column DAM_DOSSIER_TCMG.Beslissing_cd is 'BESLISSING_CD';
    comment on column DAM_DOSSIER_TCMG.Checksum is 'CHECKSUM';
    comment on column DAM_DOSSIER_TCMG.Classificatie is 'CLASSIFICATIE';
    comment on column DAM_DOSSIER_TCMG.Cluster_nr is 'CLUSTER_NR';
    comment on column DAM_DOSSIER_TCMG.Controle_activiteit is 'CNTR_ACT';
    comment on column DAM_DOSSIER_TCMG.Commercieel_perspectief is 'COMM_PERS';
    comment on column DAM_DOSSIER_TCMG.Contractjaar is 'CONTRACTJAAR';
    comment on column DAM_DOSSIER_TCMG.Conversiedossier is 'CONVERSIE_JN';
    comment on column DAM_DOSSIER_TCMG.Correspondentie_via_email is 'CORRESPONDENTIE_VIA_EMAIL';
    comment on column DAM_DOSSIER_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DOSSIER_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DOSSIER_TCMG.Jaardossier_WBSO is 'DAM_WBSO_JAARDOSSIER';
    comment on column DAM_DOSSIER_TCMG.Datum_in is 'DATUM_IN';
    comment on column DAM_DOSSIER_TCMG.Datum_renteberekening is 'DATUM_RENTEBEREKENING';
    comment on column DAM_DOSSIER_TCMG.Datum_status is 'DATUM_STATUS';
    comment on column DAM_DOSSIER_TCMG.Volgnr_diskette is 'DISK_VOLGNR';
    comment on column DAM_DOSSIER_TCMG.Volgnr_diskette_na_import is 'DISK_VOLGNR_IMP';
    comment on column DAM_DOSSIER_TCMG.Dos_cd is 'DOS_CD';
    comment on column DAM_DOSSIER_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_DOSSIER_TCMG.Dos_id_aanvulling is 'DOS_ID_AANVULLING';
    comment on column DAM_DOSSIER_TCMG.Dosprio is 'DOSPRIO';
    comment on column DAM_DOSSIER_TCMG.ED_Aanvraag_id is 'ED_AANVRAAG_ID';
    comment on column DAM_DOSSIER_TCMG.Eerste_jr_aflossing is 'EERSTE_JR_AFL';
    comment on column DAM_DOSSIER_TCMG.Eind_dat is 'EIND_DAT';
    comment on column DAM_DOSSIER_TCMG.Eindmaand is 'EINDMAAND';
    comment on column DAM_DOSSIER_TCMG.Extern_aanvraag_id is 'EXTERN_AANVRAAG_ID';
    comment on column DAM_DOSSIER_TCMG.Extern_dossier_id is 'EXTERN_DOSSIER_ID';
    comment on column DAM_DOSSIER_TCMG.Extrene_bron_cd is 'EXTERNE_BRON_CD';
    comment on column DAM_DOSSIER_TCMG.Gecommitteerd_zegge is 'GECOMMITTEERD_ZEGGE';
    comment on column DAM_DOSSIER_TCMG.Gem_uurloon is 'GEM_UURLOON';
    comment on column DAM_DOSSIER_TCMG.Hand_bewerkt_imp is 'HAND_BEWERKT_IMP';
    comment on column DAM_DOSSIER_TCMG.Handtekening_ok is 'HANDTEKENING_OK';
    comment on column DAM_DOSSIER_TCMG.Hoofd_dos_id is 'HOOFD_DOS_ID';
    comment on column DAM_DOSSIER_TCMG.Id_van_de_doos is 'IDS_ID';
    comment on column DAM_DOSSIER_TCMG.Id_van_de_doos_na_de_import is 'IDS_ID_IMP';
    comment on column DAM_DOSSIER_TCMG.Importlijst is 'IMPORTLIJST';
    comment on column DAM_DOSSIER_TCMG.Indienings_dat is 'INDIENINGS_DAT';
    comment on column DAM_DOSSIER_TCMG.Indienings_tijd is 'INDIENINGS_TIJD';
    comment on column DAM_DOSSIER_TCMG.Indienkanaal is 'INDIENKANAAL';
    comment on column DAM_DOSSIER_TCMG.Ingezien is 'INGEZIEN';
    comment on column DAM_DOSSIER_TCMG.Inkoopcat_cd is 'INKOOPCAT_CD';
    comment on column DAM_DOSSIER_TCMG.Inleen_binnen_Fiscale_eenheid is 'INLEEN_FE_JN';
    comment on column DAM_DOSSIER_TCMG.Meldingnummer_IRWA is 'IRWA_NR';
    comment on column DAM_DOSSIER_TCMG.Jaar is 'JAAR';
    comment on column DAM_DOSSIER_TCMG.Jaardossier_bron_dos_id is 'JAARDOSSIER_BRON_DOS_ID';
    comment on column DAM_DOSSIER_TCMG.Jaardossier_dos_id is 'JAARDOSSIER_DOS_ID';
    comment on column DAM_DOSSIER_TCMG.Korte_titel is 'KORTE_TITEL';
    comment on column DAM_DOSSIER_TCMG.Krat_nr is 'KRAT_NR';
    comment on column DAM_DOSSIER_TCMG.Laatste_jr_aflossing is 'LAATSTE_JR_AFL';
    comment on column DAM_DOSSIER_TCMG.Laatste_pcs_id is 'LAATSTE_PCS_ID';
    comment on column DAM_DOSSIER_TCMG.Landnaam is 'LANDNAAM';
    comment on column DAM_DOSSIER_TCMG.LB_nummer_komt_overeen is 'LBNUMMERKOMTOVEREEN';
    comment on column DAM_DOSSIER_TCMG.Machtiging_JN is 'MACHTIGING_JN';
    comment on column DAM_DOSSIER_TCMG.Mdw_cd is 'MDW_CD';
    comment on column DAM_DOSSIER_TCMG.Mentorterugkoppeling is 'MENTORTERUGKOPPELING';
    comment on column DAM_DOSSIER_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DOSSIER_TCMG.Mutatie_dat_vst is 'MUTATIE_DAT_VST';
    comment on column DAM_DOSSIER_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_DOSSIER_TCMG.Mutatie_user_vst is 'MUTATIE_USER_VST';
    comment on column DAM_DOSSIER_TCMG.Naar_batchrun is 'NAAR_RUN';
    comment on column DAM_DOSSIER_TCMG.Neg_einddeclaratie is 'NEG_EINDDECLARATIE';
    comment on column DAM_DOSSIER_TCMG.Notities is 'NOTITIES';
    comment on column DAM_DOSSIER_TCMG.Octrooien is 'OCTROOIEN';
    comment on column DAM_DOSSIER_TCMG.Offertebedrag is 'OFFERTEBEDRAG';
    comment on column DAM_DOSSIER_TCMG.Cerhoud_id_Ondertekenaar is 'ONDERTEKENCERTHOUDID';
    comment on column DAM_DOSSIER_TCMG.Ontvangstdatum is 'ONTVANGSTDATUM';
    comment on column DAM_DOSSIER_TCMG.Oorspr_einddatum is 'OORSPR_EIND_DAT';
    comment on column DAM_DOSSIER_TCMG.Overige_subsidie is 'OVERIGE_SUBS_JN';
    comment on column DAM_DOSSIER_TCMG.Opdrachtvorm_cd is 'OVM_CD';
    comment on column DAM_DOSSIER_TCMG.Perc_verrekenen is 'PERC_VERREKENEN';
    comment on column DAM_DOSSIER_TCMG.Periode_nr is 'PERIODE_NR';
    comment on column DAM_DOSSIER_TCMG.Prioriteit is 'PRIORITEIT';
    comment on column DAM_DOSSIER_TCMG.Prioriteitsdatum is 'PRIORITEITSDATUM';
    comment on column DAM_DOSSIER_TCMG.Projectomschrijving is 'PRO_OMS';
    comment on column DAM_DOSSIER_TCMG.Ranking is 'RANKING';
    comment on column DAM_DOSSIER_TCMG.RDA_Afhandeling_forfaitair is 'RDA_AFH_FORFAITAIR_JN';
    comment on column DAM_DOSSIER_TCMG.RDA_aangevraagd is 'RDA_JN';
    comment on column DAM_DOSSIER_TCMG.Referentie is 'REFERENTIE';
    comment on column DAM_DOSSIER_TCMG.Reg_id is 'REG_ID';
    comment on column DAM_DOSSIER_TCMG.Reg_nr is 'REG_NR';
    comment on column DAM_DOSSIER_TCMG.Rel_id_Aanvrager is 'REL_ID_ANV';
    comment on column DAM_DOSSIER_TCMG.Rente_perc is 'RENTE_PCT';
    comment on column DAM_DOSSIER_TCMG.Samenwerkingsverband1 is 'SAMENWERKING';
    comment on column DAM_DOSSIER_TCMG.Samenwerkingsverband2 is 'SAMENWERKINGSVERBAND';
    comment on column DAM_DOSSIER_TCMG.SO_loon is 'SO_LOON';
    comment on column DAM_DOSSIER_TCMG.Begrote_SO_loonsom is 'SO_LOONSOM_BEGROOT';
    comment on column DAM_DOSSIER_TCMG.SO_uren is 'SO_UREN';
    comment on column DAM_DOSSIER_TCMG.Startmaand is 'STARTMAAND';
    comment on column DAM_DOSSIER_TCMG.Statuscode is 'STATUS';
    comment on column DAM_DOSSIER_TCMG.Status_cert is 'STATUS_CERT';
    comment on column DAM_DOSSIER_TCMG.Status_oud is 'STATUS_OUD';
    comment on column DAM_DOSSIER_TCMG.status_SO_uurloon is 'STATUS_SO_UURLOON';
    comment on column DAM_DOSSIER_TCMG.Status_TT is 'STATUS_TT';
    comment on column DAM_DOSSIER_TCMG.Statusgroep is 'STATUSGROEP';
    comment on column DAM_DOSSIER_TCMG.Statustermijn is 'STATUSTERMIJN';
    comment on column DAM_DOSSIER_TCMG.Status_E_Diensten is 'STS_E_INDIENEN';
    comment on column DAM_DOSSIER_TCMG.Status_E_Loket is 'STS_E_LOKET';
    comment on column DAM_DOSSIER_TCMG.Technisch_succes is 'TECHN_SUCC';
    comment on column DAM_DOSSIER_TCMG.Technisch_Cor_id is 'TECHNISCH_COR_ID';
    comment on column DAM_DOSSIER_TCMG.Titel is 'TITEL';
    comment on column DAM_DOSSIER_TCMG.Afgelost_op_onvoorw_hoofdsom is 'TOTAAL_AFL_DIP_HFDS';
    comment on column DAM_DOSSIER_TCMG.Afgelost_op_onvoorw_rente is 'TOTAAL_AFL_DIP_RENTE';
    comment on column DAM_DOSSIER_TCMG.Totaal_afgelost_op_hoofdsom is 'TOTAAL_AFL_HOOFDSOM';
    comment on column DAM_DOSSIER_TCMG.Totaal_ontvangen_rente is 'TOTAAL_AFL_RENTE';
    comment on column DAM_DOSSIER_TCMG.Totaal_bijgeschreven_rente is 'TOTAAL_BIJGESCHR_RENTE';
    comment on column DAM_DOSSIER_TCMG.Direct_opeisbare_vordering is 'TOTAAL_DIP';
    comment on column DAM_DOSSIER_TCMG.Direct_opeisbare_hoofdsom is 'TOTAAL_DIP_HFDS';
    comment on column DAM_DOSSIER_TCMG.Direct_opeisbare_rente is 'TOTAAL_DIP_RENTE';
    comment on column DAM_DOSSIER_TCMG.Totaal_gecommitteerd_bedrag is 'TOTAAL_GECOMMITTEERD';
    comment on column DAM_DOSSIER_TCMG.Zegge_Totaal_gecommitteerd is 'TOTAAL_GECOMMITTEERD_ZEGGE';
    comment on column DAM_DOSSIER_TCMG.Totaal_gedeclareerd_bedrag is 'TOTAAL_GEDECLAREERD';
    comment on column DAM_DOSSIER_TCMG.Totaal_geschoonde_kosten is 'TOTAAL_GESCHOOND';
    comment on column DAM_DOSSIER_TCMG.Totale_hoofdsom is 'TOTAAL_HOOFDSOM';
    comment on column DAM_DOSSIER_TCMG.Totaal_ingetrokken_bedrag is 'TOTAAL_INGETROKKEN';
    comment on column DAM_DOSSIER_TCMG.Kwijtsch_onvoorw_hoofdsom is 'TOTAAL_KWIJ_DIP_HFDS';
    comment on column DAM_DOSSIER_TCMG.Kwijtsch_onvoorw_rente is 'TOTAAL_KWIJ_DIP_RENTE';
    comment on column DAM_DOSSIER_TCMG.Kwijtsch_direct_opeisbaar is 'TOTAAL_KWIJTSCH_DIP';
    comment on column DAM_DOSSIER_TCMG.Kwijtsch_voorw_hoofdsom is 'TOTAAL_KWIJTSCH_HFDS';
    comment on column DAM_DOSSIER_TCMG.Kwijtsch_voorw_rente is 'TOTAAL_KWIJTSCH_RENTE';
    comment on column DAM_DOSSIER_TCMG.Totaal_kwijtgescholden_bedrag is 'TOTAAL_KWIJTSCHELDING';
    comment on column DAM_DOSSIER_TCMG.Totaal_openstaand_bedrag is 'TOTAAL_OPENSTAAND';
    comment on column DAM_DOSSIER_TCMG.Direct_opeisbaar_gesteld is 'TOTAAL_OVR_RENTE';
    comment on column DAM_DOSSIER_TCMG.Totaal_uitbetaald is 'TOTAAL_UITBETAALD';
    comment on column DAM_DOSSIER_TCMG.Totaal_verleend_bedrag is 'TOTAAL_VERLEEND';
    comment on column DAM_DOSSIER_TCMG.Uitlening_binnen_Fisc_eenheid is 'UITLENING_FE_JN';
    comment on column DAM_DOSSIER_TCMG.Uurloon_jaar is 'UURLOON_JAAR';
    comment on column DAM_DOSSIER_TCMG.Vaststellen_batch is 'VASTSTELLEN_JN';
    comment on column DAM_DOSSIER_TCMG.Vergoedingsperc is 'VERGOEDINGS_PERC';
    comment on column DAM_DOSSIER_TCMG.Volgnr_LB is 'VOLG_NR_LB';
    comment on column DAM_DOSSIER_TCMG.Voorlopig_gecommitteerd is 'VOORLOPIG_GECOMMITTEERD';
    comment on column DAM_DOSSIER_TCMG.Voorlopig_gedeclareerd is 'VOORLOPIG_GEDECLAREERD';
    comment on column DAM_DOSSIER_TCMG.Vorig_aanvraag_bedrijf_nr is 'VORIG_AANVRAAG_BEDRIJF_NR';
    comment on column DAM_DOSSIER_TCMG.Vorig_aanvraagjaar is 'VORIG_AANVRAAGJAAR';
    comment on column DAM_DOSSIER_TCMG.Vorig_aanvraagnummer is 'VORIG_AANVRAAGNUMMER';
    comment on column DAM_DOSSIER_TCMG.Vorie_aanvraagperiode is 'VORIG_AANVRAAGPERIODE';
    comment on column DAM_DOSSIER_TCMG.Vorig_aanvraag_volgnr is 'VORIG_AANVRAAGVOLG_NR';
    comment on column DAM_DOSSIER_TCMG.Vaststelling_conform_aanvraag is 'VST_CONFORM_ANV_JN';
    comment on column DAM_DOSSIER_TCMG.VV_Aanvraagnummer is 'VVAANVRAAGNUMMER';
    comment on column DAM_DOSSIER_TCMG.Wel_akkoord_niet_verlenen is 'WEL_AKK_NIET_VERL';
    comment on column DAM_DOSSIER_TCMG.Aangeboden_aan_ZER is 'ZER_AANGEBODEN';

DROP TABLE IF EXISTS DAM_DOSSIERGROEP_TCMG ;
CREATE TABLE DAM_DOSSIERGROEP_TCMG (
    Ddg_id integer,
    Age_id integer,
    Naam varchar (30),
    Toelichting varchar (2048),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Timestamp varchar (8)
);

    comment on column DAM_DOSSIERGROEP_TCMG.Ddg_id is 'DDG_ID';
    comment on column DAM_DOSSIERGROEP_TCMG.Age_id is 'AGE_ID';
    comment on column DAM_DOSSIERGROEP_TCMG.Naam is 'NAAM';
    comment on column DAM_DOSSIERGROEP_TCMG.Toelichting is 'TOELICHTING';
    comment on column DAM_DOSSIERGROEP_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_DOSSIERGROEP_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_DOSSIERGROEP_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_DOSSIERGROEP_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_DOSSIERGROEP_TCMG.Timestamp is 'TIMESTAMP';

DROP TABLE IF EXISTS DAM_LOKATIEADRES_TCMG ;
CREATE TABLE DAM_LOKATIEADRES_TCMG (
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    DLS_id integer,
    Lok_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    RAE_id integer,
    RAS_id integer
);

    comment on column DAM_LOKATIEADRES_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_LOKATIEADRES_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_LOKATIEADRES_TCMG.DLS_id is 'DLS_ID';
    comment on column DAM_LOKATIEADRES_TCMG.Lok_id is 'LOK_ID';
    comment on column DAM_LOKATIEADRES_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_LOKATIEADRES_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_LOKATIEADRES_TCMG.RAE_id is 'RAE_ID';
    comment on column DAM_LOKATIEADRES_TCMG.RAS_id is 'RAS_ID';

DROP TABLE IF EXISTS DAM_MDW_INTERN_HIST_TCMG ;
CREATE TABLE DAM_MDW_INTERN_HIST_TCMG (
    Dos_id integer,
    Prg_id integer,
    Mdw_id integer,
    Rol_cd varchar (3),
    Datum_van timestamp,
    Datum_tot timestamp,
    Behandelend varchar (1),
    Notitie varchar (2048),
    Mdw_id_voorheen integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column DAM_MDW_INTERN_HIST_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Prg_id is 'PRG_ID';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Mdw_id is 'MDW_ID';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Rol_cd is 'ROL_CD';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Datum_van is 'DATUM_VAN';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Datum_tot is 'DATUM_TOT';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Behandelend is 'BEHANDELEND';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Notitie is 'NOTITIE';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Mdw_id_voorheen is 'MDW_ID_VOORHEEN';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_MDW_INTERN_HIST_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS DAM_MDW_INTERN_TCMG ;
CREATE TABLE DAM_MDW_INTERN_TCMG (
    Behandelend varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id integer,
    Mdw_id integer,
    Mdw_id_voorheen integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (2048),
    Prg_id integer,
    Rol_cd varchar (3)
);

    comment on column DAM_MDW_INTERN_TCMG.Behandelend is 'BEHANDELEND';
    comment on column DAM_MDW_INTERN_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_MDW_INTERN_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_MDW_INTERN_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_MDW_INTERN_TCMG.Mdw_id is 'MDW_ID';
    comment on column DAM_MDW_INTERN_TCMG.Mdw_id_voorheen is 'MDW_ID_VOORHEEN';
    comment on column DAM_MDW_INTERN_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_MDW_INTERN_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_MDW_INTERN_TCMG.Notitie is 'NOTITIE';
    comment on column DAM_MDW_INTERN_TCMG.Prg_id is 'PRG_ID';
    comment on column DAM_MDW_INTERN_TCMG.Rol_cd is 'ROL_CD';

DROP TABLE IF EXISTS DAM_STATUSHISTORIE_TCMG ;
CREATE TABLE DAM_STATUSHISTORIE_TCMG (
    Commentaar varchar (2048),
    Cor_id_tot integer,
    Cor_id_van integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Datum_tot timestamp,
    Datum_van timestamp,
    Dos_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ssg_cd varchar (1),
    Sts_cd varchar (3),
    Volg_nr integer
);

    comment on column DAM_STATUSHISTORIE_TCMG.Commentaar is 'COMMENTAAR';
    comment on column DAM_STATUSHISTORIE_TCMG.Cor_id_tot is 'COR_ID_TOT';
    comment on column DAM_STATUSHISTORIE_TCMG.Cor_id_van is 'COR_ID_VAN';
    comment on column DAM_STATUSHISTORIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_STATUSHISTORIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_STATUSHISTORIE_TCMG.Datum_tot is 'DATUM_TOT';
    comment on column DAM_STATUSHISTORIE_TCMG.Datum_van is 'DATUM_VAN';
    comment on column DAM_STATUSHISTORIE_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_STATUSHISTORIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_STATUSHISTORIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_STATUSHISTORIE_TCMG.Ssg_cd is 'SSG_CD';
    comment on column DAM_STATUSHISTORIE_TCMG.Sts_cd is 'STS_CD';
    comment on column DAM_STATUSHISTORIE_TCMG.Volg_nr is 'VOLG_NR';

DROP TABLE IF EXISTS DAM_TERMIJN_PARAAF_NOTITIE_TCMG ;
CREATE TABLE DAM_TERMIJN_PARAAF_NOTITIE_TCMG (
    Cor_id integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ter_id integer,
    Toelichting varchar (2048)
);

    comment on column DAM_TERMIJN_PARAAF_NOTITIE_TCMG.Cor_id is 'COR_ID';
    comment on column DAM_TERMIJN_PARAAF_NOTITIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_TERMIJN_PARAAF_NOTITIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_TERMIJN_PARAAF_NOTITIE_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_TERMIJN_PARAAF_NOTITIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_TERMIJN_PARAAF_NOTITIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_TERMIJN_PARAAF_NOTITIE_TCMG.Ter_id is 'TER_ID';
    comment on column DAM_TERMIJN_PARAAF_NOTITIE_TCMG.Toelichting is 'TOELICHTING';

DROP TABLE IF EXISTS DAM_TERMIJN_TCMG ;
CREATE TABLE DAM_TERMIJN_TCMG (
    Aanvullende_voorwaarden varchar (1),
    Actie varchar (2048),
    Actie_dat timestamp,
    Con_id integer,
    Cor_id integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id integer,
    Dossiergroep_ter_id integer,
    Mdw_id varchar (12),
    Mdw_id_afgemeld integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (2048),
    Opgevoerd_dat timestamp,
    Opschortend_jn varchar (1),
    Prg_id integer,
    Reactie_cd varchar (3),
    Rol_cd varchar (3),
    Ter_id integer,
    Voldaan_dat timestamp,
    Volgorde_paraaf integer
);

    comment on column DAM_TERMIJN_TCMG.Aanvullende_voorwaarden is 'AANVULLENDE_VOORWAARDEN';
    comment on column DAM_TERMIJN_TCMG.Actie is 'ACTIE';
    comment on column DAM_TERMIJN_TCMG.Actie_dat is 'ACTIE_DAT';
    comment on column DAM_TERMIJN_TCMG.Con_id is 'CON_ID';
    comment on column DAM_TERMIJN_TCMG.Cor_id is 'COR_ID';
    comment on column DAM_TERMIJN_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column DAM_TERMIJN_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column DAM_TERMIJN_TCMG.Dos_id is 'DOS_ID';
    comment on column DAM_TERMIJN_TCMG.Dossiergroep_ter_id is 'DOSSIERGROEP_TER_ID';
    comment on column DAM_TERMIJN_TCMG.Mdw_id is 'MDW_ID';
    comment on column DAM_TERMIJN_TCMG.Mdw_id_afgemeld is 'MDW_ID_AFGEMELD';
    comment on column DAM_TERMIJN_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column DAM_TERMIJN_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column DAM_TERMIJN_TCMG.Notitie is 'NOTITIE';
    comment on column DAM_TERMIJN_TCMG.Opgevoerd_dat is 'OPGEVOERD_DAT';
    comment on column DAM_TERMIJN_TCMG.Opschortend_jn is 'OPSCHORTEND_JN';
    comment on column DAM_TERMIJN_TCMG.Prg_id is 'PRG_ID';
    comment on column DAM_TERMIJN_TCMG.Reactie_cd is 'REACTIE_CD';
    comment on column DAM_TERMIJN_TCMG.Rol_cd is 'ROL_CD';
    comment on column DAM_TERMIJN_TCMG.Ter_id is 'TER_ID';
    comment on column DAM_TERMIJN_TCMG.Voldaan_dat is 'VOLDAAN_DAT';
    comment on column DAM_TERMIJN_TCMG.Volgorde_paraaf is 'VOLGORDE_PARAAF';

DROP TABLE IF EXISTS FAM_STATUSHISTORIE_TCMG ;
CREATE TABLE FAM_STATUSHISTORIE_TCMG (
    Commentaar varchar (2048),
    Datum_van timestamp,
    Datum_tot timestamp,
    Dos_id integer,
    Ssg_cd varchar (1),
    Sts_cd varchar (3),
    Tra_id integer,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Timestamp varchar (8)
);

    comment on column FAM_STATUSHISTORIE_TCMG.Commentaar is 'COMMENTAAR';
    comment on column FAM_STATUSHISTORIE_TCMG.Datum_van is 'DATUM_VAN';
    comment on column FAM_STATUSHISTORIE_TCMG.Datum_tot is 'DATUM_TOT';
    comment on column FAM_STATUSHISTORIE_TCMG.Dos_id is 'DOS_ID';
    comment on column FAM_STATUSHISTORIE_TCMG.Ssg_cd is 'SSG_CD';
    comment on column FAM_STATUSHISTORIE_TCMG.Sts_cd is 'STS_CD';
    comment on column FAM_STATUSHISTORIE_TCMG.Tra_id is 'TRA_ID';
    comment on column FAM_STATUSHISTORIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column FAM_STATUSHISTORIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column FAM_STATUSHISTORIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column FAM_STATUSHISTORIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column FAM_STATUSHISTORIE_TCMG.Timestamp is 'TIMESTAMP';

DROP TABLE IF EXISTS FAM_TRANSACTIE_REGEL_TCMG ;
CREATE TABLE FAM_TRANSACTIE_REGEL_TCMG (
    Tra_id integer,
    Rpt_nr integer,
    Ovk_nr varchar (20),
    Bgt_cd varchar (1),
    Rpe_datum_van timestamp,
    Vpl_tra_id integer,
    Prg_id integer,
    Vpl_volgnummer integer,
    Jaar integer,
    Reg_id integer,
    Reg_nr integer,
    Bedrag integer,
    Valutadatum timestamp,
    Iban varchar (34),
    Bic varchar (11),
    Omhang_jaar integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Timestamp varchar (8),
    Cvk_id_geselecteerd integer,
    Cvk_id_verwerkt integer,
    Volgnummer integer,
    Gecorrigeerd_jn varchar (1),
    Rpt_nr_oud varchar (20),
    Naar_oracle varchar (1),
    Boeking varchar (1),
    Imvb varchar (1)
);

    comment on column FAM_TRANSACTIE_REGEL_TCMG.Tra_id is 'TRA_ID';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Rpt_nr is 'RPT_NR';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Ovk_nr is 'OVK_NR';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Bgt_cd is 'BGT_CD';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Rpe_datum_van is 'RPE_DATUM_VAN';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Vpl_tra_id is 'VPL_TRA_ID';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Prg_id is 'PRG_ID';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Vpl_volgnummer is 'VPL_VOLGNUMMER';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Jaar is 'JAAR';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Reg_id is 'REG_ID';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Reg_nr is 'REG_NR';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Bedrag is 'BEDRAG';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Valutadatum is 'VALUTADATUM';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Iban is 'IBAN';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Bic is 'BIC';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Omhang_jaar is 'OMHANG_JAAR';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Timestamp is 'TIMESTAMP';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Cvk_id_geselecteerd is 'CVK_ID_GESELECTEERD';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Cvk_id_verwerkt is 'CVK_ID_VERWERKT';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Volgnummer is 'VOLGNUMMER';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Gecorrigeerd_jn is 'GECORRIGEERD_JN';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Rpt_nr_oud is 'RPT_NR_OUD';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Naar_oracle is 'NAAR_ORACLE';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Boeking is 'BOEKING';
    comment on column FAM_TRANSACTIE_REGEL_TCMG.Imvb is 'IMVB';

DROP TABLE IF EXISTS FAM_TRANSACTIE_TCMG ;
CREATE TABLE FAM_TRANSACTIE_TCMG (
    Volgnummer integer,
    Tra_id integer,
    Prg_id integer,
    Jaar integer,
    Dos_id integer,
    Tra_cd varchar (3),
    Reden varchar (256),
    bedrag integer,
    Bedrag_nlg integer,
    Datum timestamp,
    Valutadatum timestamp,
    Fam_verplichting varchar (1),
    Fam_declaratie varchar (1),
    Fam_bij_rente varchar (1),
    Fam_kwijtschelding varchar (1),
    Fam_rest_voorschot varchar (1),
    Fam_overboeking varchar (1),
    Fam_aflossing varchar (1),
    Fam_budgetmutatie varchar (1),
    Fam_rest_aflossing varchar (1),
    Fam_betaalritme varchar (1),
    Sts_cd varchar (3),
    Ssg_cd varchar (1),
    Correctie varchar (1),
    Correctie_volgnr integer,
    Tra_id_van integer,
    Vst_id integer,
    Rel_id integer,
    Rol_cd varchar (3),
    Datum_acc_afd timestamp,
    Referentie varchar (10),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Timestamp varchar (8),
    Bedrag_ex_btw integer,
    Vst_volgnr integer,
    Duurzaam_jn varchar (1),
    Run_id integer,
    Fam_vordering varchar (1),
    Fam_vordering_afhandeling varchar (1),
    Vordering_tra_id integer,
    Storneren varchar (1),
    Vordering_bedrag integer,
    Afgelost integer,
    Kwijtgescholden integer,
    Tmp_vordering_id integer,
    Omhang_jaar integer,
    Omhang_jn varchar (1),
    Tra_id_rv integer,
    Tra_id_dcv integer,
    Jz_id integer,
    Afreken_tra_id integer,
    Correctie_bedrag_bob integer,
    Vordering_status varchar (3),
    On_hold varchar (255),
    Termijn_uitstel timestamp,
    Tra_id_ean_eap integer
);

    comment on column FAM_TRANSACTIE_TCMG.Volgnummer is 'VOLGNUMMER';
    comment on column FAM_TRANSACTIE_TCMG.Tra_id is 'TRA_ID';
    comment on column FAM_TRANSACTIE_TCMG.Prg_id is 'PRG_ID';
    comment on column FAM_TRANSACTIE_TCMG.Jaar is 'JAAR';
    comment on column FAM_TRANSACTIE_TCMG.Dos_id is 'DOS_ID';
    comment on column FAM_TRANSACTIE_TCMG.Tra_cd is 'TRA_CD';
    comment on column FAM_TRANSACTIE_TCMG.Reden is 'REDEN';
    comment on column FAM_TRANSACTIE_TCMG.bedrag is 'BEDRAG';
    comment on column FAM_TRANSACTIE_TCMG.Bedrag_nlg is 'BEDRAG_NLG';
    comment on column FAM_TRANSACTIE_TCMG.Datum is 'DATUM';
    comment on column FAM_TRANSACTIE_TCMG.Valutadatum is 'VALUTADATUM';
    comment on column FAM_TRANSACTIE_TCMG.Fam_verplichting is 'FAM_VERPLICHTING';
    comment on column FAM_TRANSACTIE_TCMG.Fam_declaratie is 'FAM_DECLARATIE';
    comment on column FAM_TRANSACTIE_TCMG.Fam_bij_rente is 'FAM_BIJ_RENTE';
    comment on column FAM_TRANSACTIE_TCMG.Fam_kwijtschelding is 'FAM_KWIJTSCHELDING';
    comment on column FAM_TRANSACTIE_TCMG.Fam_rest_voorschot is 'FAM_REST_VOORSCHOT';
    comment on column FAM_TRANSACTIE_TCMG.Fam_overboeking is 'FAM_OVERBOEKING';
    comment on column FAM_TRANSACTIE_TCMG.Fam_aflossing is 'FAM_AFLOSSING';
    comment on column FAM_TRANSACTIE_TCMG.Fam_budgetmutatie is 'FAM_BUDGETMUTATIE';
    comment on column FAM_TRANSACTIE_TCMG.Fam_rest_aflossing is 'FAM_REST_AFLOSSING';
    comment on column FAM_TRANSACTIE_TCMG.Fam_betaalritme is 'FAM_BETAALRITME';
    comment on column FAM_TRANSACTIE_TCMG.Sts_cd is 'STS_CD';
    comment on column FAM_TRANSACTIE_TCMG.Ssg_cd is 'SSG_CD';
    comment on column FAM_TRANSACTIE_TCMG.Correctie is 'CORRECTIE';
    comment on column FAM_TRANSACTIE_TCMG.Correctie_volgnr is 'CORRECTIE_VOLGNR';
    comment on column FAM_TRANSACTIE_TCMG.Tra_id_van is 'TRA_ID_VAN';
    comment on column FAM_TRANSACTIE_TCMG.Vst_id is 'VST_ID';
    comment on column FAM_TRANSACTIE_TCMG.Rel_id is 'REL_ID';
    comment on column FAM_TRANSACTIE_TCMG.Rol_cd is 'ROL_CD';
    comment on column FAM_TRANSACTIE_TCMG.Datum_acc_afd is 'DATUM_ACC_AFD';
    comment on column FAM_TRANSACTIE_TCMG.Referentie is 'REFERENTIE';
    comment on column FAM_TRANSACTIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column FAM_TRANSACTIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column FAM_TRANSACTIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column FAM_TRANSACTIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column FAM_TRANSACTIE_TCMG.Timestamp is 'TIMESTAMP';
    comment on column FAM_TRANSACTIE_TCMG.Bedrag_ex_btw is 'BEDRAG_EX_BTW';
    comment on column FAM_TRANSACTIE_TCMG.Vst_volgnr is 'VST_VOLGNR';
    comment on column FAM_TRANSACTIE_TCMG.Duurzaam_jn is 'DUURZAAM_JN';
    comment on column FAM_TRANSACTIE_TCMG.Run_id is 'RUN_ID';
    comment on column FAM_TRANSACTIE_TCMG.Fam_vordering is 'FAM_VORDERING';
    comment on column FAM_TRANSACTIE_TCMG.Fam_vordering_afhandeling is 'FAM_VORDERING_AFHANDELING';
    comment on column FAM_TRANSACTIE_TCMG.Vordering_tra_id is 'VORDERING_TRA_ID';
    comment on column FAM_TRANSACTIE_TCMG.Storneren is 'STORNEREN';
    comment on column FAM_TRANSACTIE_TCMG.Vordering_bedrag is 'VORDERING_BEDRAG';
    comment on column FAM_TRANSACTIE_TCMG.Afgelost is 'AFGELOST';
    comment on column FAM_TRANSACTIE_TCMG.Kwijtgescholden is 'KWIJTGESCHOLDEN';
    comment on column FAM_TRANSACTIE_TCMG.Tmp_vordering_id is 'TMP_VORDERING_ID';
    comment on column FAM_TRANSACTIE_TCMG.Omhang_jaar is 'OMHANG_JAAR';
    comment on column FAM_TRANSACTIE_TCMG.Omhang_jn is 'OMHANG_JN';
    comment on column FAM_TRANSACTIE_TCMG.Tra_id_rv is 'TRA_ID_RV';
    comment on column FAM_TRANSACTIE_TCMG.Tra_id_dcv is 'TRA_ID_DCV';
    comment on column FAM_TRANSACTIE_TCMG.Jz_id is 'JZ_ID';
    comment on column FAM_TRANSACTIE_TCMG.Afreken_tra_id is 'AFREKEN_TRA_ID';
    comment on column FAM_TRANSACTIE_TCMG.Correctie_bedrag_bob is 'CORRECTIE_BEDRAG_BOB';
    comment on column FAM_TRANSACTIE_TCMG.Vordering_status is 'VORDERING_STATUS';
    comment on column FAM_TRANSACTIE_TCMG.On_hold is 'ON_HOLD';
    comment on column FAM_TRANSACTIE_TCMG.Termijn_uitstel is 'TERMIJN_UITSTEL';
    comment on column FAM_TRANSACTIE_TCMG.Tra_id_ean_eap is 'TRA_ID_EAN_EAP';

DROP TABLE IF EXISTS FAM_VERPLICHTING_TCMG ;
CREATE TABLE FAM_VERPLICHTING_TCMG (
    Tra_id integer,
    Reg_id integer,
    Reg_nr integer,
    Verplichtingssoort varchar (1),
    Omschrijving varchar (30),
    Totaal_ingediend integer,
    Gevraagd integer,
    Totaal_geschoond integer,
    Vergoedings_pct integer,
    Intake_datum timestamp,
    Nota_datum timestamp,
    Panel_datum timestamp,
    Overige_subsidie integer,
    Timestamp varchar (8),
    Ikb_naam varchar (10),
    Inkoopbevinding varchar (30),
    Inkoopbevinding_user varchar (30),
    Betalingsverzoeknummer varchar (40)
);

    comment on column FAM_VERPLICHTING_TCMG.Tra_id is 'TRA_ID';
    comment on column FAM_VERPLICHTING_TCMG.Reg_id is 'REG_ID';
    comment on column FAM_VERPLICHTING_TCMG.Reg_nr is 'REG_NR';
    comment on column FAM_VERPLICHTING_TCMG.Verplichtingssoort is 'VERPLICHTINGSSOORT';
    comment on column FAM_VERPLICHTING_TCMG.Omschrijving is 'OMSCHRIJVING';
    comment on column FAM_VERPLICHTING_TCMG.Totaal_ingediend is 'TOTAAL_INGEDIEND';
    comment on column FAM_VERPLICHTING_TCMG.Gevraagd is 'GEVRAAGD';
    comment on column FAM_VERPLICHTING_TCMG.Totaal_geschoond is 'TOTAAL_GESCHOOND';
    comment on column FAM_VERPLICHTING_TCMG.Vergoedings_pct is 'VERGOEDINGS_PCT';
    comment on column FAM_VERPLICHTING_TCMG.Intake_datum is 'INTAKE_DATUM';
    comment on column FAM_VERPLICHTING_TCMG.Nota_datum is 'NOTA_DATUM';
    comment on column FAM_VERPLICHTING_TCMG.Panel_datum is 'PANEL_DATUM';
    comment on column FAM_VERPLICHTING_TCMG.Overige_subsidie is 'OVERIGE_SUBSIDIE';
    comment on column FAM_VERPLICHTING_TCMG.Timestamp is 'TIMESTAMP';
    comment on column FAM_VERPLICHTING_TCMG.Ikb_naam is 'IKB_NAAM';
    comment on column FAM_VERPLICHTING_TCMG.Inkoopbevinding is 'INKOOPBEVINDING';
    comment on column FAM_VERPLICHTING_TCMG.Inkoopbevinding_user is 'INKOOPBEVINDING_USER';
    comment on column FAM_VERPLICHTING_TCMG.Betalingsverzoeknummer is 'BETALINGSVERZOEKNUMMER';

DROP TABLE IF EXISTS IOM_FUNCTIE_TCMG ;
CREATE TABLE IOM_FUNCTIE_TCMG (
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Fun_cd varchar (7),
    Fun_oms varchar (50),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column IOM_FUNCTIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column IOM_FUNCTIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column IOM_FUNCTIE_TCMG.Fun_cd is 'FUN_CD';
    comment on column IOM_FUNCTIE_TCMG.Fun_oms is 'FUN_OMS';
    comment on column IOM_FUNCTIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column IOM_FUNCTIE_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS IOM_LOCATIE_TCMG ;
CREATE TABLE IOM_LOCATIE_TCMG (
    Loc_cd varchar (2),
    Omschrijving varchar (34),
    Actief varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column IOM_LOCATIE_TCMG.Loc_cd is 'LOC_CD';
    comment on column IOM_LOCATIE_TCMG.Omschrijving is 'OMSCHRIJVING';
    comment on column IOM_LOCATIE_TCMG.Actief is 'ACTIEF';
    comment on column IOM_LOCATIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column IOM_LOCATIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column IOM_LOCATIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column IOM_LOCATIE_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS IOM_MEDEWERKER_TCMG ;
CREATE TABLE IOM_MEDEWERKER_TCMG (
    Aanspreeknaam varchar (50),
    Achternaam varchar (25),
    Actief varchar (1),
    Banknaam varchar (50),
    Beveiligingspas varchar (1),
    Beveiligingspasnr varchar (6),
    Bic varchar (11),
    Certhoud_id integer,
    Certserienummer varchar (50),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Datum_inlog timestamp,
    Datum_uit_dienst timestamp,
    Dienstverband varchar (1),
    Eigen_vervoer_jn varchar (1),
    Fun_cd varchar (7),
    Geslacht varchar (1),
    Iban varchar (34),
    Inleen_jn varchar (1),
    Loc_cd varchar (2),
    Mdw_cd varchar (30),
    Mdw_emailadres varchar (60),
    Mdw_handtekening varchar (500),
    Mdw_handtekening_image varchar (2048),
    Mdw_id integer,
    Mobiel varchar (10),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Parkeerkaart varchar (1),
    Plaatsnaam varchar (30),
    Standplaats varchar (1),
    Telefoon varchar (10),
    Titel_na_cd varchar (4),
    Titel_voor_cd varchar (4),
    Toestel_dh varchar (5),
    Toestel_zw varchar (5),
    Tvs_cd_oud varchar (30),
    Voorletters varchar (10),
    Voornaam varchar (15),
    Voorvoegsel varchar (10)
);

    comment on column IOM_MEDEWERKER_TCMG.Aanspreeknaam is 'AANSPREEKNAAM';
    comment on column IOM_MEDEWERKER_TCMG.Achternaam is 'ACHTERNAAM';
    comment on column IOM_MEDEWERKER_TCMG.Actief is 'ACTIEF';
    comment on column IOM_MEDEWERKER_TCMG.Banknaam is 'BANKNAAM';
    comment on column IOM_MEDEWERKER_TCMG.Beveiligingspas is 'BEVEILIGINGSPAS';
    comment on column IOM_MEDEWERKER_TCMG.Beveiligingspasnr is 'BEVEILIGINGSPASNR';
    comment on column IOM_MEDEWERKER_TCMG.Bic is 'BIC';
    comment on column IOM_MEDEWERKER_TCMG.Certhoud_id is 'CERTHOUD_ID';
    comment on column IOM_MEDEWERKER_TCMG.Certserienummer is 'CERTSERIENUMMER';
    comment on column IOM_MEDEWERKER_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column IOM_MEDEWERKER_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column IOM_MEDEWERKER_TCMG.Datum_inlog is 'DATUM_INLOG';
    comment on column IOM_MEDEWERKER_TCMG.Datum_uit_dienst is 'DATUM_UIT_DIENST';
    comment on column IOM_MEDEWERKER_TCMG.Dienstverband is 'DIENSTVERBAND';
    comment on column IOM_MEDEWERKER_TCMG.Eigen_vervoer_jn is 'EIGEN_VERVOER_JN';
    comment on column IOM_MEDEWERKER_TCMG.Fun_cd is 'FUN_CD';
    comment on column IOM_MEDEWERKER_TCMG.Geslacht is 'GESLACHT';
    comment on column IOM_MEDEWERKER_TCMG.Iban is 'IBAN';
    comment on column IOM_MEDEWERKER_TCMG.Inleen_jn is 'INLEEN_JN';
    comment on column IOM_MEDEWERKER_TCMG.Loc_cd is 'LOC_CD';
    comment on column IOM_MEDEWERKER_TCMG.Mdw_cd is 'MDW_CD';
    comment on column IOM_MEDEWERKER_TCMG.Mdw_emailadres is 'MDW_EMAILADRES';
    comment on column IOM_MEDEWERKER_TCMG.Mdw_handtekening is 'MDW_HANDTEKENING';
    comment on column IOM_MEDEWERKER_TCMG.Mdw_handtekening_image is 'MDW_HANDTEKENING_IMAGE';
    comment on column IOM_MEDEWERKER_TCMG.Mdw_id is 'MDW_ID';
    comment on column IOM_MEDEWERKER_TCMG.Mobiel is 'MOBIEL';
    comment on column IOM_MEDEWERKER_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column IOM_MEDEWERKER_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column IOM_MEDEWERKER_TCMG.Parkeerkaart is 'PARKEERKAART';
    comment on column IOM_MEDEWERKER_TCMG.Plaatsnaam is 'PLAATSNAAM';
    comment on column IOM_MEDEWERKER_TCMG.Standplaats is 'STANDPLAATS';
    comment on column IOM_MEDEWERKER_TCMG.Telefoon is 'TELEFOON';
    comment on column IOM_MEDEWERKER_TCMG.Titel_na_cd is 'TITEL_NA_CD';
    comment on column IOM_MEDEWERKER_TCMG.Titel_voor_cd is 'TITEL_VOOR_CD';
    comment on column IOM_MEDEWERKER_TCMG.Toestel_dh is 'TOESTEL_DH';
    comment on column IOM_MEDEWERKER_TCMG.Toestel_zw is 'TOESTEL_ZW';
    comment on column IOM_MEDEWERKER_TCMG.Tvs_cd_oud is 'TVS_CD_OUD';
    comment on column IOM_MEDEWERKER_TCMG.Voorletters is 'VOORLETTERS';
    comment on column IOM_MEDEWERKER_TCMG.Voornaam is 'VOORNAAM';
    comment on column IOM_MEDEWERKER_TCMG.Voorvoegsel is 'VOORVOEGSEL';

DROP TABLE IF EXISTS IOM_MEDEWERKERROL_TCMG ;
CREATE TABLE IOM_MEDEWERKERROL_TCMG (
    Mdw_id integer,
    Rol_cd varchar (3),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Timestamp varchar (8),
    Actief varchar (1)
);

    comment on column IOM_MEDEWERKERROL_TCMG.Mdw_id is 'MDW_ID';
    comment on column IOM_MEDEWERKERROL_TCMG.Rol_cd is 'ROL_CD';
    comment on column IOM_MEDEWERKERROL_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column IOM_MEDEWERKERROL_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column IOM_MEDEWERKERROL_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column IOM_MEDEWERKERROL_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column IOM_MEDEWERKERROL_TCMG.Timestamp is 'TIMESTAMP';
    comment on column IOM_MEDEWERKERROL_TCMG.Actief is 'ACTIEF';

DROP TABLE IF EXISTS JZM_BEHANDELAAR_TCMG ;
CREATE TABLE JZM_BEHANDELAAR_TCMG (
    Mdw_id integer,
    Jz_id integer,
    Rol_cd varchar (3),
    Eigenaar varchar (1),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column JZM_BEHANDELAAR_TCMG.Mdw_id is 'MDW_ID';
    comment on column JZM_BEHANDELAAR_TCMG.Jz_id is 'JZ_ID';
    comment on column JZM_BEHANDELAAR_TCMG.Rol_cd is 'ROL_CD';
    comment on column JZM_BEHANDELAAR_TCMG.Eigenaar is 'EIGENAAR';
    comment on column JZM_BEHANDELAAR_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column JZM_BEHANDELAAR_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_BEHANDELAAR_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column JZM_BEHANDELAAR_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS JZM_BEROEP_TCMG ;
CREATE TABLE JZM_BEROEP_TCMG (
    Jz_id integer,
    Bzr_id integer,
    Zaaknummer varchar (30),
    Datum_zitting timestamp,
    Uitspraak varchar (25),
    Datum_uitspr timestamp,
    Bedrag_schade integer,
    Bedrag_schade_nlg integer,
    Datum_schade timestamp
);

    comment on column JZM_BEROEP_TCMG.Jz_id is 'JZ_ID';
    comment on column JZM_BEROEP_TCMG.Bzr_id is 'BZR_ID';
    comment on column JZM_BEROEP_TCMG.Zaaknummer is 'ZAAKNUMMER';
    comment on column JZM_BEROEP_TCMG.Datum_zitting is 'DATUM_ZITTING';
    comment on column JZM_BEROEP_TCMG.Uitspraak is 'UITSPRAAK';
    comment on column JZM_BEROEP_TCMG.Datum_uitspr is 'DATUM_UITSPR';
    comment on column JZM_BEROEP_TCMG.Bedrag_schade is 'BEDRAG_SCHADE';
    comment on column JZM_BEROEP_TCMG.Bedrag_schade_nlg is 'BEDRAG_SCHADE_NLG';
    comment on column JZM_BEROEP_TCMG.Datum_schade is 'DATUM_SCHADE';

DROP TABLE IF EXISTS JZM_BEZWAAR_TCMG ;
CREATE TABLE JZM_BEZWAAR_TCMG (
    Jz_id integer,
    Belasting_cd varchar (35),
    Datum_compleet timestamp,
    Wachttijd integer,
    Datum_hoorzitting_org timestamp,
    Tijd_hoorzitting_org timestamp,
    Datum_hoorzitting timestamp,
    Tijd_hoorzitting timestamp,
    App_verschenen varchar (1),
    Datum_ontvangst timestamp,
    Datum_vragenbrief timestamp,
    Wett_termijn_7_1 timestamp,
    Wett_termijn_7_3 timestamp,
    Wett_termijn_datum timestamp,
    Uitstel_datum timestamp,
    Overschrijding_datum timestamp,
    Primair_lid_3 timestamp,
    Reken_cor_id integer,
    Reken_wett_termijn_7_1 timestamp,
    Adviescommissie varchar (1),
    Datum_1e_heropname_schade timestamp,
    Tijd_1e_heropname_schade timestamp,
    Datum_2e_heropname_schade timestamp,
    Tijd_2e_heropname_schade timestamp,
    Datum_orig_schouw timestamp,
    Tijd_orig_schouw timestamp,
    Datum_def_schouw timestamp,
    Tijd_def_schouw timestamp
);

    comment on column JZM_BEZWAAR_TCMG.Jz_id is 'JZ_ID';
    comment on column JZM_BEZWAAR_TCMG.Belasting_cd is 'BELASTING_CD';
    comment on column JZM_BEZWAAR_TCMG.Datum_compleet is 'DATUM_COMPLEET';
    comment on column JZM_BEZWAAR_TCMG.Wachttijd is 'WACHTTIJD';
    comment on column JZM_BEZWAAR_TCMG.Datum_hoorzitting_org is 'DATUM_HOORZITTING_ORG';
    comment on column JZM_BEZWAAR_TCMG.Tijd_hoorzitting_org is 'TIJD_HOORZITTING_ORG';
    comment on column JZM_BEZWAAR_TCMG.Datum_hoorzitting is 'DATUM_HOORZITTING';
    comment on column JZM_BEZWAAR_TCMG.Tijd_hoorzitting is 'TIJD_HOORZITTING';
    comment on column JZM_BEZWAAR_TCMG.App_verschenen is 'APP_VERSCHENEN';
    comment on column JZM_BEZWAAR_TCMG.Datum_ontvangst is 'DATUM_ONTVANGST';
    comment on column JZM_BEZWAAR_TCMG.Datum_vragenbrief is 'DATUM_VRAGENBRIEF';
    comment on column JZM_BEZWAAR_TCMG.Wett_termijn_7_1 is 'WETT_TERMIJN_7_1';
    comment on column JZM_BEZWAAR_TCMG.Wett_termijn_7_3 is 'WETT_TERMIJN_7_3';
    comment on column JZM_BEZWAAR_TCMG.Wett_termijn_datum is 'WETT_TERMIJN_DATUM';
    comment on column JZM_BEZWAAR_TCMG.Uitstel_datum is 'UITSTEL_DATUM';
    comment on column JZM_BEZWAAR_TCMG.Overschrijding_datum is 'OVERSCHRIJDING_DATUM';
    comment on column JZM_BEZWAAR_TCMG.Primair_lid_3 is 'PRIMAIR_LID_3';
    comment on column JZM_BEZWAAR_TCMG.Reken_cor_id is 'REKEN_COR_ID';
    comment on column JZM_BEZWAAR_TCMG.Reken_wett_termijn_7_1 is 'REKEN_WETT_TERMIJN_7_1';
    comment on column JZM_BEZWAAR_TCMG.Adviescommissie is 'ADVIESCOMMISSIE';
    comment on column JZM_BEZWAAR_TCMG.Datum_1e_heropname_schade is 'DATUM_1E_HEROPNAME_SCHADE';
    comment on column JZM_BEZWAAR_TCMG.Tijd_1e_heropname_schade is 'TIJD_1E_HEROPNAME_SCHADE';
    comment on column JZM_BEZWAAR_TCMG.Datum_2e_heropname_schade is 'DATUM_2E_HEROPNAME_SCHADE';
    comment on column JZM_BEZWAAR_TCMG.Tijd_2e_heropname_schade is 'TIJD_2E_HEROPNAME_SCHADE';
    comment on column JZM_BEZWAAR_TCMG.Datum_orig_schouw is 'DATUM_ORIG_SCHOUW';
    comment on column JZM_BEZWAAR_TCMG.Tijd_orig_schouw is 'TIJD_ORIG_SCHOUW';
    comment on column JZM_BEZWAAR_TCMG.Datum_def_schouw is 'DATUM_DEF_SCHOUW';
    comment on column JZM_BEZWAAR_TCMG.Tijd_def_schouw is 'TIJD_DEF_SCHOUW';

DROP TABLE IF EXISTS JZM_BEZWAAR_TERMIJN_HIST_TCMG ;
CREATE TABLE JZM_BEZWAAR_TERMIJN_HIST_TCMG (
    Jz_id integer,
    Vanaf_datum timestamp,
    Volg_nr integer,
    Jz_nr varchar (6),
    Cor_id integer,
    Wijziging_in varchar (1),
    Sts_cd varchar (3),
    Wett_termijn_7_1 timestamp,
    Wett_termijn_7_3 timestamp,
    Uitstel_datum timestamp,
    Overschrijding_datum timestamp,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Adviescommissie varchar (1)
);

    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Jz_id is 'JZ_ID';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Vanaf_datum is 'VANAF_DATUM';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Volg_nr is 'VOLG_NR';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Jz_nr is 'JZ_NR';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Cor_id is 'COR_ID';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Wijziging_in is 'WIJZIGING_IN';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Sts_cd is 'STS_CD';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Wett_termijn_7_1 is 'WETT_TERMIJN_7_1';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Wett_termijn_7_3 is 'WETT_TERMIJN_7_3';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Uitstel_datum is 'UITSTEL_DATUM';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Overschrijding_datum is 'OVERSCHRIJDING_DATUM';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column JZM_BEZWAAR_TERMIJN_HIST_TCMG.Adviescommissie is 'ADVIESCOMMISSIE';

DROP TABLE IF EXISTS JZM_BOB_WIZARD_TCMG ;
CREATE TABLE JZM_BOB_WIZARD_TCMG (
    Jz_id integer,
    Verleen_bedrag integer,
    Betaal_bedrag integer,
    Vaststelling_bedrag integer,
    Tra_cd_1 varchar (3),
    Bedrag_tra_cd_1 integer,
    Tra_cd_2 varchar (3),
    Bedrag_tra_cd_2 integer,
    Tra_cd_3 varchar (3),
    Bedrag_tra_cd_3 integer,
    Sts_cd_voor varchar (3),
    Sts_cd_na varchar (3),
    Verleend_voor integer,
    Gedeclareerd_voor integer,
    Betaald_voor integer,
    Ingetrokken_voor integer,
    Open_vordering_voor integer,
    Open_verlening_voor integer,
    Verleen_na integer,
    Gedeclareerd_na integer,
    Betaald_na integer,
    Ingetrokken_na integer,
    Open_vordering_na integer,
    Open_verlening_na integer,
    Aanmaken_bob varchar (1),
    Verwijder_trans varchar (1),
    Cst_cd varchar (8),
    Cst_cd_beschikking varchar (8),
    Cor_id_beschikking integer,
    Tra_id_beschikking_1 integer,
    Tra_cd_beschikking_1 varchar (3),
    Tra_bedrag_beschikking_1 integer,
    Tra_id_beschikking_2 integer,
    Tra_cd_beschikking_2 varchar (3),
    Tra_bedrag_beschikking_2 integer,
    Tra_id_afd integer,
    Bedrag_afspraak_afd integer,
    Datum_afspraak_afd timestamp,
    Datum_afd timestamp,
    Tra_cd_afd varchar (3),
    Vordering_tra_id_afd integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Creatie_dat timestamp,
    Creatie_user varchar (30)
);

    comment on column JZM_BOB_WIZARD_TCMG.Jz_id is 'JZ_ID';
    comment on column JZM_BOB_WIZARD_TCMG.Verleen_bedrag is 'VERLEEN_BEDRAG';
    comment on column JZM_BOB_WIZARD_TCMG.Betaal_bedrag is 'BETAAL_BEDRAG';
    comment on column JZM_BOB_WIZARD_TCMG.Vaststelling_bedrag is 'VASTSTELLING_BEDRAG';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_cd_1 is 'TRA_CD_1';
    comment on column JZM_BOB_WIZARD_TCMG.Bedrag_tra_cd_1 is 'BEDRAG_TRA_CD_1';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_cd_2 is 'TRA_CD_2';
    comment on column JZM_BOB_WIZARD_TCMG.Bedrag_tra_cd_2 is 'BEDRAG_TRA_CD_2';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_cd_3 is 'TRA_CD_3';
    comment on column JZM_BOB_WIZARD_TCMG.Bedrag_tra_cd_3 is 'BEDRAG_TRA_CD_3';
    comment on column JZM_BOB_WIZARD_TCMG.Sts_cd_voor is 'STS_CD_VOOR';
    comment on column JZM_BOB_WIZARD_TCMG.Sts_cd_na is 'STS_CD_NA';
    comment on column JZM_BOB_WIZARD_TCMG.Verleend_voor is 'VERLEEND_VOOR';
    comment on column JZM_BOB_WIZARD_TCMG.Gedeclareerd_voor is 'GEDECLAREERD_VOOR';
    comment on column JZM_BOB_WIZARD_TCMG.Betaald_voor is 'BETAALD_VOOR';
    comment on column JZM_BOB_WIZARD_TCMG.Ingetrokken_voor is 'INGETROKKEN_VOOR';
    comment on column JZM_BOB_WIZARD_TCMG.Open_vordering_voor is 'OPEN_VORDERING_VOOR';
    comment on column JZM_BOB_WIZARD_TCMG.Open_verlening_voor is 'OPEN_VERLENING_VOOR';
    comment on column JZM_BOB_WIZARD_TCMG.Verleen_na is 'VERLEEN_NA';
    comment on column JZM_BOB_WIZARD_TCMG.Gedeclareerd_na is 'GEDECLAREERD_NA';
    comment on column JZM_BOB_WIZARD_TCMG.Betaald_na is 'BETAALD_NA';
    comment on column JZM_BOB_WIZARD_TCMG.Ingetrokken_na is 'INGETROKKEN_NA';
    comment on column JZM_BOB_WIZARD_TCMG.Open_vordering_na is 'OPEN_VORDERING_NA';
    comment on column JZM_BOB_WIZARD_TCMG.Open_verlening_na is 'OPEN_VERLENING_NA';
    comment on column JZM_BOB_WIZARD_TCMG.Aanmaken_bob is 'AANMAKEN_BOB';
    comment on column JZM_BOB_WIZARD_TCMG.Verwijder_trans is 'VERWIJDER_TRANS';
    comment on column JZM_BOB_WIZARD_TCMG.Cst_cd is 'CST_CD';
    comment on column JZM_BOB_WIZARD_TCMG.Cst_cd_beschikking is 'CST_CD_BESCHIKKING';
    comment on column JZM_BOB_WIZARD_TCMG.Cor_id_beschikking is 'COR_ID_BESCHIKKING';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_id_beschikking_1 is 'TRA_ID_BESCHIKKING_1';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_cd_beschikking_1 is 'TRA_CD_BESCHIKKING_1';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_bedrag_beschikking_1 is 'TRA_BEDRAG_BESCHIKKING_1';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_id_beschikking_2 is 'TRA_ID_BESCHIKKING_2';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_cd_beschikking_2 is 'TRA_CD_BESCHIKKING_2';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_bedrag_beschikking_2 is 'TRA_BEDRAG_BESCHIKKING_2';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_id_afd is 'TRA_ID_AFD';
    comment on column JZM_BOB_WIZARD_TCMG.Bedrag_afspraak_afd is 'BEDRAG_AFSPRAAK_AFD';
    comment on column JZM_BOB_WIZARD_TCMG.Datum_afspraak_afd is 'DATUM_AFSPRAAK_AFD';
    comment on column JZM_BOB_WIZARD_TCMG.Datum_afd is 'DATUM_AFD';
    comment on column JZM_BOB_WIZARD_TCMG.Tra_cd_afd is 'TRA_CD_AFD';
    comment on column JZM_BOB_WIZARD_TCMG.Vordering_tra_id_afd is 'VORDERING_TRA_ID_AFD';
    comment on column JZM_BOB_WIZARD_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column JZM_BOB_WIZARD_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column JZM_BOB_WIZARD_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_BOB_WIZARD_TCMG.Creatie_user is 'CREATIE_USER';

DROP TABLE IF EXISTS JZM_BRIEF_FUNCTIE_TCMG ;
CREATE TABLE JZM_BRIEF_FUNCTIE_TCMG (
    Fnc_cd varchar (3),
    Oms varchar (64),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column JZM_BRIEF_FUNCTIE_TCMG.Fnc_cd is 'FNC_CD';
    comment on column JZM_BRIEF_FUNCTIE_TCMG.Oms is 'OMS';
    comment on column JZM_BRIEF_FUNCTIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_BRIEF_FUNCTIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column JZM_BRIEF_FUNCTIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column JZM_BRIEF_FUNCTIE_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS JZM_FUNCTIE_VAN_BRIEF_TCMG ;
CREATE TABLE JZM_FUNCTIE_VAN_BRIEF_TCMG (
    Fnc_cd varchar (3),
    Cst_cd varchar (8),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column JZM_FUNCTIE_VAN_BRIEF_TCMG.Fnc_cd is 'FNC_CD';
    comment on column JZM_FUNCTIE_VAN_BRIEF_TCMG.Cst_cd is 'CST_CD';
    comment on column JZM_FUNCTIE_VAN_BRIEF_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_FUNCTIE_VAN_BRIEF_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column JZM_FUNCTIE_VAN_BRIEF_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column JZM_FUNCTIE_VAN_BRIEF_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS JZM_PROCEDURE_TCMG ;
CREATE TABLE JZM_PROCEDURE_TCMG (
    Jaar integer,
    Volgnr integer,
    Jz_nr varchar (6),
    Jz_id integer,
    Sts_cd varchar (3),
    Ssg_cd varchar (1),
    Dos_id integer,
    Cor_id integer,
    Dos_sts_cd varchar (3),
    Dos_ssg_cd varchar (1),
    Indieningsdatum timestamp,
    Datum_dos_jz timestamp,
    Actiedatum timestamp,
    Afhandeldatum timestamp,
    Notities varchar (256),
    Proc_type varchar (3),
    Jzm_bezwaar varchar (1),
    Jzm_beroep varchar (1),
    Jzm_hoger_beroep varchar (1),
    Jzm_verz_schadeverg varchar (1),
    Actuele_beh_mdw_id integer,
    Actuele_beh_rol_cd varchar (3),
    Problematiekcode integer,
    Bedrag_bob integer,
    Aard_bob varchar (1),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Technisch_cor_id integer,
    Hoofdproces varchar (10)
);

    comment on column JZM_PROCEDURE_TCMG.Jaar is 'JAAR';
    comment on column JZM_PROCEDURE_TCMG.Volgnr is 'VOLGNR';
    comment on column JZM_PROCEDURE_TCMG.Jz_nr is 'JZ_NR';
    comment on column JZM_PROCEDURE_TCMG.Jz_id is 'JZ_ID';
    comment on column JZM_PROCEDURE_TCMG.Sts_cd is 'STS_CD';
    comment on column JZM_PROCEDURE_TCMG.Ssg_cd is 'SSG_CD';
    comment on column JZM_PROCEDURE_TCMG.Dos_id is 'DOS_ID';
    comment on column JZM_PROCEDURE_TCMG.Cor_id is 'COR_ID';
    comment on column JZM_PROCEDURE_TCMG.Dos_sts_cd is 'DOS_STS_CD';
    comment on column JZM_PROCEDURE_TCMG.Dos_ssg_cd is 'DOS_SSG_CD';
    comment on column JZM_PROCEDURE_TCMG.Indieningsdatum is 'INDIENINGSDATUM';
    comment on column JZM_PROCEDURE_TCMG.Datum_dos_jz is 'DATUM_DOS_JZ';
    comment on column JZM_PROCEDURE_TCMG.Actiedatum is 'ACTIEDATUM';
    comment on column JZM_PROCEDURE_TCMG.Afhandeldatum is 'AFHANDELDATUM';
    comment on column JZM_PROCEDURE_TCMG.Notities is 'NOTITIES';
    comment on column JZM_PROCEDURE_TCMG.Proc_type is 'PROC_TYPE';
    comment on column JZM_PROCEDURE_TCMG.Jzm_bezwaar is 'JZM_BEZWAAR';
    comment on column JZM_PROCEDURE_TCMG.Jzm_beroep is 'JZM_BEROEP';
    comment on column JZM_PROCEDURE_TCMG.Jzm_hoger_beroep is 'JZM_HOGER_BEROEP';
    comment on column JZM_PROCEDURE_TCMG.Jzm_verz_schadeverg is 'JZM_VERZ_SCHADEVERG';
    comment on column JZM_PROCEDURE_TCMG.Actuele_beh_mdw_id is 'ACTUELE_BEH_MDW_ID';
    comment on column JZM_PROCEDURE_TCMG.Actuele_beh_rol_cd is 'ACTUELE_BEH_ROL_CD';
    comment on column JZM_PROCEDURE_TCMG.Problematiekcode is 'PROBLEMATIEKCODE';
    comment on column JZM_PROCEDURE_TCMG.Bedrag_bob is 'BEDRAG_BOB';
    comment on column JZM_PROCEDURE_TCMG.Aard_bob is 'AARD_BOB';
    comment on column JZM_PROCEDURE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column JZM_PROCEDURE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_PROCEDURE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column JZM_PROCEDURE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column JZM_PROCEDURE_TCMG.Technisch_cor_id is 'TECHNISCH_COR_ID';
    comment on column JZM_PROCEDURE_TCMG.Hoofdproces is 'HOOFDPROCES';

DROP TABLE IF EXISTS JZM_REACTIE_TERMIJN_TCMG ;
CREATE TABLE JZM_REACTIE_TERMIJN_TCMG (
    Rol_cd varchar (3),
    Cst_cd varchar (8),
    Reactie_cd varchar (3),
    Termijn integer,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column JZM_REACTIE_TERMIJN_TCMG.Rol_cd is 'ROL_CD';
    comment on column JZM_REACTIE_TERMIJN_TCMG.Cst_cd is 'CST_CD';
    comment on column JZM_REACTIE_TERMIJN_TCMG.Reactie_cd is 'REACTIE_CD';
    comment on column JZM_REACTIE_TERMIJN_TCMG.Termijn is 'TERMIJN';
    comment on column JZM_REACTIE_TERMIJN_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column JZM_REACTIE_TERMIJN_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_REACTIE_TERMIJN_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column JZM_REACTIE_TERMIJN_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS JZM_STATUSREGEL_TCMG ;
CREATE TABLE JZM_STATUSREGEL_TCMG (
    Datum_van timestamp,
    Datum_tot timestamp,
    Jz_id integer,
    Sts_cd varchar (3),
    Ssg_cd varchar (1),
    Commentaar varchar (2048),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Cor_id_van integer,
    Cor_id_tot integer,
    Volg_nr integer
);

    comment on column JZM_STATUSREGEL_TCMG.Datum_van is 'DATUM_VAN';
    comment on column JZM_STATUSREGEL_TCMG.Datum_tot is 'DATUM_TOT';
    comment on column JZM_STATUSREGEL_TCMG.Jz_id is 'JZ_ID';
    comment on column JZM_STATUSREGEL_TCMG.Sts_cd is 'STS_CD';
    comment on column JZM_STATUSREGEL_TCMG.Ssg_cd is 'SSG_CD';
    comment on column JZM_STATUSREGEL_TCMG.Commentaar is 'COMMENTAAR';
    comment on column JZM_STATUSREGEL_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column JZM_STATUSREGEL_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_STATUSREGEL_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column JZM_STATUSREGEL_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column JZM_STATUSREGEL_TCMG.Cor_id_van is 'COR_ID_VAN';
    comment on column JZM_STATUSREGEL_TCMG.Cor_id_tot is 'COR_ID_TOT';
    comment on column JZM_STATUSREGEL_TCMG.Volg_nr is 'VOLG_NR';

DROP TABLE IF EXISTS JZM_UITSPRAAK_TCMG ;
CREATE TABLE JZM_UITSPRAAK_TCMG (
    Uitspraak varchar (25),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column JZM_UITSPRAAK_TCMG.Uitspraak is 'UITSPRAAK';
    comment on column JZM_UITSPRAAK_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column JZM_UITSPRAAK_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column JZM_UITSPRAAK_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column JZM_UITSPRAAK_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS OBJ_LOKATIE_TCMG ;
CREATE TABLE OBJ_LOKATIE_TCMG (
    Bik_cd varchar (9),
    Bik_oms varchar (200),
    Bouwtype varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id integer,
    EobjectLocatie_id integer,
    Extra_gegevens varchar (255),
    Huisnr varchar (30),
    Huisnr_toevoeging varchar (12),
    Lok_id integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Naam varchar (100),
    Plaats varchar (30),
    Postcode varchar (6),
    Prg_id integer,
    Provincie varchar (30),
    Straat varchar (60)
);

    comment on column OBJ_LOKATIE_TCMG.Bik_cd is 'BIK_CD';
    comment on column OBJ_LOKATIE_TCMG.Bik_oms is 'BIK_OMS';
    comment on column OBJ_LOKATIE_TCMG.Bouwtype is 'BOUWTYPE';
    comment on column OBJ_LOKATIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column OBJ_LOKATIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column OBJ_LOKATIE_TCMG.Dos_id is 'DOS_ID';
    comment on column OBJ_LOKATIE_TCMG.EobjectLocatie_id is 'EOBJECTLOCATIE_ID';
    comment on column OBJ_LOKATIE_TCMG.Extra_gegevens is 'EXTRA_GEGEVENS';
    comment on column OBJ_LOKATIE_TCMG.Huisnr is 'HUISNR';
    comment on column OBJ_LOKATIE_TCMG.Huisnr_toevoeging is 'HUISNR_TOEVOEGING';
    comment on column OBJ_LOKATIE_TCMG.Lok_id is 'LOK_ID';
    comment on column OBJ_LOKATIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column OBJ_LOKATIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column OBJ_LOKATIE_TCMG.Naam is 'NAAM';
    comment on column OBJ_LOKATIE_TCMG.Plaats is 'PLAATS';
    comment on column OBJ_LOKATIE_TCMG.Postcode is 'POSTCODE';
    comment on column OBJ_LOKATIE_TCMG.Prg_id is 'PRG_ID';
    comment on column OBJ_LOKATIE_TCMG.Provincie is 'PROVINCIE';
    comment on column OBJ_LOKATIE_TCMG.Straat is 'STRAAT';

DROP TABLE IF EXISTS PCT_MUT_TCMG ;
CREATE TABLE PCT_MUT_TCMG (
    Mutatie_srt varchar (1),
    Mutatie_ind varchar (16),
    Old_cijfer varchar (4),
    Old_letter varchar (2),
    Old_reeksindicatie varchar (1),
    Old_codebreekpunt_van varchar (5),
    Old_codebreekpunt_tm varchar (5),
    Old_woonplaatsnaam_ptt varchar (18),
    Old_woonplaatsnaam_nen varchar (24),
    Old_straatnaam_ptt varchar (17),
    Old_straatnaam_nen varchar (24),
    Old_straatnaam_off varchar (43),
    Old_extract_woonplaats varchar (4),
    Old_extract_straatnaam varchar (5),
    Old_gemeentecode varchar (4),
    Old_gemeentenaam varchar (24),
    Old_provinciecode varchar (1),
    Old_cebuco_code varchar (3),
    New_cijfer varchar (4),
    New_letter varchar (2),
    New_reeksindicatie varchar (1),
    New_codebreekpunt_van varchar (5),
    New_codebreekpunt_tm varchar (5),
    New_woonplaatsnaam_ptt varchar (18),
    New_woonplaatsnaam_nen varchar (24),
    New_straatnaam_ptt varchar (17),
    New_straatnaam_nen varchar (24),
    New_straatnaam_off varchar (43),
    New_extract_woonplaats varchar (4),
    New_extract_straatnaam varchar (5),
    New_gemeentecode varchar (4),
    New_gemeentenaam varchar (24),
    New_provinciecode varchar (2),
    New_cebuco_code varchar (3)
);

    comment on column PCT_MUT_TCMG.Mutatie_srt is 'MUTATIE_SRT';
    comment on column PCT_MUT_TCMG.Mutatie_ind is 'MUTATIE_IND';
    comment on column PCT_MUT_TCMG.Old_cijfer is 'OLD_CIJFER';
    comment on column PCT_MUT_TCMG.Old_letter is 'OLD_LETTER';
    comment on column PCT_MUT_TCMG.Old_reeksindicatie is 'OLD_REEKSINDICATIE';
    comment on column PCT_MUT_TCMG.Old_codebreekpunt_van is 'OLD_CODEBREEKPUNT_VAN';
    comment on column PCT_MUT_TCMG.Old_codebreekpunt_tm is 'OLD_CODEBREEKPUNT_TM';
    comment on column PCT_MUT_TCMG.Old_woonplaatsnaam_ptt is 'OLD_WOONPLAATSNAAM_PTT';
    comment on column PCT_MUT_TCMG.Old_woonplaatsnaam_nen is 'OLD_WOONPLAATSNAAM_NEN';
    comment on column PCT_MUT_TCMG.Old_straatnaam_ptt is 'OLD_STRAATNAAM_PTT';
    comment on column PCT_MUT_TCMG.Old_straatnaam_nen is 'OLD_STRAATNAAM_NEN';
    comment on column PCT_MUT_TCMG.Old_straatnaam_off is 'OLD_STRAATNAAM_OFF';
    comment on column PCT_MUT_TCMG.Old_extract_woonplaats is 'OLD_EXTRACT_WOONPLAATS';
    comment on column PCT_MUT_TCMG.Old_extract_straatnaam is 'OLD_EXTRACT_STRAATNAAM';
    comment on column PCT_MUT_TCMG.Old_gemeentecode is 'OLD_GEMEENTECODE';
    comment on column PCT_MUT_TCMG.Old_gemeentenaam is 'OLD_GEMEENTENAAM';
    comment on column PCT_MUT_TCMG.Old_provinciecode is 'OLD_PROVINCIECODE';
    comment on column PCT_MUT_TCMG.Old_cebuco_code is 'OLD_CEBUCO_CODE';
    comment on column PCT_MUT_TCMG.New_cijfer is 'NEW_CIJFER';
    comment on column PCT_MUT_TCMG.New_letter is 'NEW_LETTER';
    comment on column PCT_MUT_TCMG.New_reeksindicatie is 'NEW_REEKSINDICATIE';
    comment on column PCT_MUT_TCMG.New_codebreekpunt_van is 'NEW_CODEBREEKPUNT_VAN';
    comment on column PCT_MUT_TCMG.New_codebreekpunt_tm is 'NEW_CODEBREEKPUNT_TM';
    comment on column PCT_MUT_TCMG.New_woonplaatsnaam_ptt is 'NEW_WOONPLAATSNAAM_PTT';
    comment on column PCT_MUT_TCMG.New_woonplaatsnaam_nen is 'NEW_WOONPLAATSNAAM_NEN';
    comment on column PCT_MUT_TCMG.New_straatnaam_ptt is 'NEW_STRAATNAAM_PTT';
    comment on column PCT_MUT_TCMG.New_straatnaam_nen is 'NEW_STRAATNAAM_NEN';
    comment on column PCT_MUT_TCMG.New_straatnaam_off is 'NEW_STRAATNAAM_OFF';
    comment on column PCT_MUT_TCMG.New_extract_woonplaats is 'NEW_EXTRACT_WOONPLAATS';
    comment on column PCT_MUT_TCMG.New_extract_straatnaam is 'NEW_EXTRACT_STRAATNAAM';
    comment on column PCT_MUT_TCMG.New_gemeentecode is 'NEW_GEMEENTECODE';
    comment on column PCT_MUT_TCMG.New_gemeentenaam is 'NEW_GEMEENTENAAM';
    comment on column PCT_MUT_TCMG.New_provinciecode is 'NEW_PROVINCIECODE';
    comment on column PCT_MUT_TCMG.New_cebuco_code is 'NEW_CEBUCO_CODE';

DROP TABLE IF EXISTS PCT_TCMG ;
CREATE TABLE PCT_TCMG (
    Cijfer varchar (4),
    Letter varchar (2),
    Reeksindicatie varchar (1),
    Codebreekpunt_van varchar (5),
    Codebreekpunt_tm varchar (5),
    Woonplaatsnaam_ptt varchar (18),
    Woonplaatsnaam_nen varchar (24),
    Straatnaam_ptt varchar (17),
    Straatnaam_nen varchar (24),
    Straatnaam_off varchar (43),
    Extract_woonplaats varchar (4),
    Extract_straatnaam varchar (5),
    Gemeentecode varchar (4),
    Gemeentenaam varchar (24),
    Provinciecode varchar (2),
    Cebuco_code varchar (3)
);

    comment on column PCT_TCMG.Cijfer is 'CIJFER';
    comment on column PCT_TCMG.Letter is 'LETTER';
    comment on column PCT_TCMG.Reeksindicatie is 'REEKSINDICATIE';
    comment on column PCT_TCMG.Codebreekpunt_van is 'CODEBREEKPUNT_VAN';
    comment on column PCT_TCMG.Codebreekpunt_tm is 'CODEBREEKPUNT_TM';
    comment on column PCT_TCMG.Woonplaatsnaam_ptt is 'WOONPLAATSNAAM_PTT';
    comment on column PCT_TCMG.Woonplaatsnaam_nen is 'WOONPLAATSNAAM_NEN';
    comment on column PCT_TCMG.Straatnaam_ptt is 'STRAATNAAM_PTT';
    comment on column PCT_TCMG.Straatnaam_nen is 'STRAATNAAM_NEN';
    comment on column PCT_TCMG.Straatnaam_off is 'STRAATNAAM_OFF';
    comment on column PCT_TCMG.Extract_woonplaats is 'EXTRACT_WOONPLAATS';
    comment on column PCT_TCMG.Extract_straatnaam is 'EXTRACT_STRAATNAAM';
    comment on column PCT_TCMG.Gemeentecode is 'GEMEENTECODE';
    comment on column PCT_TCMG.Gemeentenaam is 'GEMEENTENAAM';
    comment on column PCT_TCMG.Provinciecode is 'PROVINCIECODE';
    comment on column PCT_TCMG.Cebuco_code is 'CEBUCO_CODE';

DROP TABLE IF EXISTS RBM_ADRES_RELATIE_TCMG ;
CREATE TABLE RBM_ADRES_RELATIE_TCMG (
    Adressoort varchar (3),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Kkr_gevalideerd varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rae_id integer,
    Ras_id integer,
    Rel_id integer,
    Vst_volgnr integer
);

    comment on column RBM_ADRES_RELATIE_TCMG.Adressoort is 'ADRESSOORT';
    comment on column RBM_ADRES_RELATIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_ADRES_RELATIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_ADRES_RELATIE_TCMG.Kkr_gevalideerd is 'KKR_GEVALIDEERD';
    comment on column RBM_ADRES_RELATIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_ADRES_RELATIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_ADRES_RELATIE_TCMG.Rae_id is 'RAE_ID';
    comment on column RBM_ADRES_RELATIE_TCMG.Ras_id is 'RAS_ID';
    comment on column RBM_ADRES_RELATIE_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_ADRES_RELATIE_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS RBM_ADRES_TCMG ;
CREATE TABLE RBM_ADRES_TCMG (
    Barcode varchar (25),
    Creatie_dat timestamp,
    creatie_user varchar (30),
    Huisnr integer,
    Huisnr_toe varchar (12),
    Ias_id integer,
    Landnaam varchar (60),
    Locatie_oms varchar (100),
    Mutatie_dat timestamp,
    mutatie_user varchar (30),
    Plaatsnaam varchar (80),
    Postcd varchar (12),
    Prov_cd varchar (2),
    Ras_id integer,
    Straat varchar (60),
    Validatie varchar (1)
);

    comment on column RBM_ADRES_TCMG.Barcode is 'BARCODE';
    comment on column RBM_ADRES_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_ADRES_TCMG.creatie_user is 'CREATIE_USER';
    comment on column RBM_ADRES_TCMG.Huisnr is 'HUISNR';
    comment on column RBM_ADRES_TCMG.Huisnr_toe is 'HUISNR_TOE';
    comment on column RBM_ADRES_TCMG.Ias_id is 'IAS_ID';
    comment on column RBM_ADRES_TCMG.Landnaam is 'LANDNAAM';
    comment on column RBM_ADRES_TCMG.Locatie_oms is 'LOCATIE_OMS';
    comment on column RBM_ADRES_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_ADRES_TCMG.mutatie_user is 'MUTATIE_USER';
    comment on column RBM_ADRES_TCMG.Plaatsnaam is 'PLAATSNAAM';
    comment on column RBM_ADRES_TCMG.Postcd is 'POST_CD';
    comment on column RBM_ADRES_TCMG.Prov_cd is 'PROV_CD';
    comment on column RBM_ADRES_TCMG.Ras_id is 'RAS_ID';
    comment on column RBM_ADRES_TCMG.Straat is 'STRAAT';
    comment on column RBM_ADRES_TCMG.Validatie is 'VALIDATIE';

DROP TABLE IF EXISTS RBM_COM_ADRES_CP_TCMG ;
CREATE TABLE RBM_COM_ADRES_CP_TCMG (
    Creatie_dat timestamp,
    creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Org_id integer,
    Per_id integer,
    Rav_id integer,
    Rca_id integer
);

    comment on column RBM_COM_ADRES_CP_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_COM_ADRES_CP_TCMG.creatie_user is 'CREATIE_USER';
    comment on column RBM_COM_ADRES_CP_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_COM_ADRES_CP_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_COM_ADRES_CP_TCMG.Org_id is 'ORG_ID';
    comment on column RBM_COM_ADRES_CP_TCMG.Per_id is 'PER_ID';
    comment on column RBM_COM_ADRES_CP_TCMG.Rav_id is 'RAV_ID';
    comment on column RBM_COM_ADRES_CP_TCMG.Rca_id is 'RCA_ID';

DROP TABLE IF EXISTS RBM_COM_ADRES_RELATIE_TCMG ;
CREATE TABLE RBM_COM_ADRES_RELATIE_TCMG (
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rae_id integer,
    Rca_id integer,
    Rel_id integer,
    Vst_volgnr integer
);

    comment on column RBM_COM_ADRES_RELATIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_COM_ADRES_RELATIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_COM_ADRES_RELATIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_COM_ADRES_RELATIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_COM_ADRES_RELATIE_TCMG.Rae_id is 'RAE_ID';
    comment on column RBM_COM_ADRES_RELATIE_TCMG.Rca_id is 'RCA_ID';
    comment on column RBM_COM_ADRES_RELATIE_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_COM_ADRES_RELATIE_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS RBM_COM_ADRES_TCMG ;
CREATE TABLE RBM_COM_ADRES_TCMG (
    Com_Cd varchar (6),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rca_id integer,
    Telnr_email varchar (60),
    Referentie varchar (10)
);

    comment on column RBM_COM_ADRES_TCMG.Com_Cd is 'COM_CD';
    comment on column RBM_COM_ADRES_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_COM_ADRES_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_COM_ADRES_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_COM_ADRES_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_COM_ADRES_TCMG.Rca_id is 'RCA_ID';
    comment on column RBM_COM_ADRES_TCMG.Telnr_email is 'TELNR_EMAIL';
    comment on column RBM_COM_ADRES_TCMG.Referentie is 'REFERENTIE';

DROP TABLE IF EXISTS RBM_CONTACTPERSOON_TCMG ;
CREATE TABLE RBM_CONTACTPERSOON_TCMG (
    Afdeling varchar (60),
    Certhoud_id integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Functie varchar (30),
    Kkr_relatie_id varchar (36),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (256),
    Org_id integer,
    Per_id integer,
    Ref_kkr_relatie_id varchar (36),
    Status_contactpersoon varchar (1),
    Validatie varchar (1)
);

    comment on column RBM_CONTACTPERSOON_TCMG.Afdeling is 'AFDELING';
    comment on column RBM_CONTACTPERSOON_TCMG.Certhoud_id is 'CERTHOUD_ID';
    comment on column RBM_CONTACTPERSOON_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_CONTACTPERSOON_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_CONTACTPERSOON_TCMG.Functie is 'FUNCTIE';
    comment on column RBM_CONTACTPERSOON_TCMG.Kkr_relatie_id is 'KKR_RELATIE_ID';
    comment on column RBM_CONTACTPERSOON_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_CONTACTPERSOON_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_CONTACTPERSOON_TCMG.Notitie is 'NOTITIE';
    comment on column RBM_CONTACTPERSOON_TCMG.Org_id is 'ORG_ID';
    comment on column RBM_CONTACTPERSOON_TCMG.Per_id is 'PER_ID';
    comment on column RBM_CONTACTPERSOON_TCMG.Ref_kkr_relatie_id is 'REF_KKR_RELATIE_ID';
    comment on column RBM_CONTACTPERSOON_TCMG.Status_contactpersoon is 'STATUS_CONTACTPERSOON';
    comment on column RBM_CONTACTPERSOON_TCMG.Validatie is 'VALIDATIE';

DROP TABLE IF EXISTS RBM_CP_VESTIGING_TCMG ;
CREATE TABLE RBM_CP_VESTIGING_TCMG (
    Org_id integer,
    Per_id integer,
    Vst_volgnr integer
);

    comment on column RBM_CP_VESTIGING_TCMG.Org_id is 'ORG_ID';
    comment on column RBM_CP_VESTIGING_TCMG.Per_id is 'PER_ID';
    comment on column RBM_CP_VESTIGING_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS RBM_ORG_BSI_TCMG ;
CREATE TABLE RBM_ORG_BSI_TCMG (
    Rel_id integer,
    Bsi_cd varchar (7),
    Volg_nr integer,
    Begindatum timestamp,
    Einddatum timestamp,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column RBM_ORG_BSI_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_ORG_BSI_TCMG.Bsi_cd is 'BSI_CD';
    comment on column RBM_ORG_BSI_TCMG.Volg_nr is 'VOLG_NR';
    comment on column RBM_ORG_BSI_TCMG.Begindatum is 'BEGINDATUM';
    comment on column RBM_ORG_BSI_TCMG.Einddatum is 'EINDDATUM';
    comment on column RBM_ORG_BSI_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_ORG_BSI_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_ORG_BSI_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_ORG_BSI_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS RBM_ORG_FAILLIET_TCMG ;
CREATE TABLE RBM_ORG_FAILLIET_TCMG (
    Kvk_nr varchar (12),
    Graydon_bedrijfsnr integer,
    Kvk_dossiernr integer,
    Kvk_kamernr integer,
    Kvk_subdossiernr integer,
    Naam varchar (132),
    Handelsnaam varchar (132),
    Straatnaam_postbus varchar (50),
    Huisnr_postbusnr integer,
    Huisnr_toevoeging varchar (12),
    Postcode varchar (12),
    Woonplaats varchar (30),
    Land varchar (30),
    Actuele_faillisement_cd varchar (4),
    Actuele_status varchar (10),
    Actuele_opheffings_cd varchar (2)
);

    comment on column RBM_ORG_FAILLIET_TCMG.Kvk_nr is 'KVK_NR';
    comment on column RBM_ORG_FAILLIET_TCMG.Graydon_bedrijfsnr is 'GRAYDON_BEDRIJFSNR';
    comment on column RBM_ORG_FAILLIET_TCMG.Kvk_dossiernr is 'KVK_DOSSIERNR';
    comment on column RBM_ORG_FAILLIET_TCMG.Kvk_kamernr is 'KVK_KAMERNR';
    comment on column RBM_ORG_FAILLIET_TCMG.Kvk_subdossiernr is 'KVK_SUBDOSSIERNR';
    comment on column RBM_ORG_FAILLIET_TCMG.Naam is 'NAAM';
    comment on column RBM_ORG_FAILLIET_TCMG.Handelsnaam is 'HANDELSNAAM';
    comment on column RBM_ORG_FAILLIET_TCMG.Straatnaam_postbus is 'STRAATNAAM_POSTBUS';
    comment on column RBM_ORG_FAILLIET_TCMG.Huisnr_postbusnr is 'HUISNR_POSTBUSNR';
    comment on column RBM_ORG_FAILLIET_TCMG.Huisnr_toevoeging is 'HUISNR_TOEVOEGING';
    comment on column RBM_ORG_FAILLIET_TCMG.Postcode is 'POSTCODE';
    comment on column RBM_ORG_FAILLIET_TCMG.Woonplaats is 'WOONPLAATS';
    comment on column RBM_ORG_FAILLIET_TCMG.Land is 'LAND';
    comment on column RBM_ORG_FAILLIET_TCMG.Actuele_faillisement_cd is 'ACTUELE_FAILLISEMENT_CD';
    comment on column RBM_ORG_FAILLIET_TCMG.Actuele_status is 'ACTUELE_STATUS';
    comment on column RBM_ORG_FAILLIET_TCMG.Actuele_opheffings_cd is 'ACTUELE_OPHEFFINGS_CD';

DROP TABLE IF EXISTS RBM_ORG_JAAR_TCMG ;
CREATE TABLE RBM_ORG_JAAR_TCMG (
    Rel_id integer,
    Jaar integer,
    Aantal_werknemers integer,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Timestamp varchar (8),
    Omzet integer,
    Loonsom integer,
    So_loonsom integer,
    Max_so_vermindering integer,
    Peildatum timestamp,
    Aantal_so_werknemers integer,
    Bron varchar (12),
    Senterniveau_jn varchar (1),
    Lb_verm_voorlopig integer,
    Lb_vermindering_eindafrekening integer,
    Balanstotaal integer
);

    comment on column RBM_ORG_JAAR_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_ORG_JAAR_TCMG.Jaar is 'JAAR';
    comment on column RBM_ORG_JAAR_TCMG.Aantal_werknemers is 'AANTAL_WERKNEMERS';
    comment on column RBM_ORG_JAAR_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_ORG_JAAR_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_ORG_JAAR_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_ORG_JAAR_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_ORG_JAAR_TCMG.Timestamp is 'TIMESTAMP';
    comment on column RBM_ORG_JAAR_TCMG.Omzet is 'OMZET';
    comment on column RBM_ORG_JAAR_TCMG.Loonsom is 'LOONSOM';
    comment on column RBM_ORG_JAAR_TCMG.So_loonsom is 'SO_LOONSOM';
    comment on column RBM_ORG_JAAR_TCMG.Max_so_vermindering is 'MAX_SO_VERMINDERING';
    comment on column RBM_ORG_JAAR_TCMG.Peildatum is 'PEILDATUM';
    comment on column RBM_ORG_JAAR_TCMG.Aantal_so_werknemers is 'AANTAL_SO_WERKNEMERS';
    comment on column RBM_ORG_JAAR_TCMG.Bron is 'BRON';
    comment on column RBM_ORG_JAAR_TCMG.Senterniveau_jn is 'SENTERNIVEAU_JN';
    comment on column RBM_ORG_JAAR_TCMG.Lb_verm_voorlopig is 'LB_VERM_VOORLOPIG';
    comment on column RBM_ORG_JAAR_TCMG.Lb_vermindering_eindafrekening is 'LB_VERMINDERING_EINDAFREKENING';
    comment on column RBM_ORG_JAAR_TCMG.Balanstotaal is 'BALANSTOTAAL';

DROP TABLE IF EXISTS RBM_ORG_NAAM_TCMG ;
CREATE TABLE RBM_ORG_NAAM_TCMG (
    Org_id integer,
    Org_naam varchar (625),
    Org_naam_type varchar (1),
    Sushi_foutmelding varchar (200),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Kkr_gevalideerd varchar (1)
);

    comment on column RBM_ORG_NAAM_TCMG.Org_id is 'ORG_ID';
    comment on column RBM_ORG_NAAM_TCMG.Org_naam is 'ORG_NAAM';
    comment on column RBM_ORG_NAAM_TCMG.Org_naam_type is 'ORG_NAAM_TYPE';
    comment on column RBM_ORG_NAAM_TCMG.Sushi_foutmelding is 'SUSHI_FOUTMELDING';
    comment on column RBM_ORG_NAAM_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_ORG_NAAM_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_ORG_NAAM_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_ORG_NAAM_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_ORG_NAAM_TCMG.Kkr_gevalideerd is 'KKR_GEVALIDEERD';

DROP TABLE IF EXISTS RBM_ORG_TCMG ;
CREATE TABLE RBM_ORG_TCMG (
    Bik_Cd varchar (9),
    Bron_jr varchar (1),
    BTW_nummer varchar (30),
    BTW_plichtig varchar (3),
    IB_plichtig_sinds timestamp,
    Jaar_oprichting integer,
    Kkr_RSIN_afwijkend varchar (1),
    KVK_nr varchar (12),
    Naam varchar (625),
    Notitie varchar (256),
    Rel_id integer,
    Rvm_cd varchar (5),
    Status_org varchar (1),
    Volg_nr_LB integer,
    Voortzetting_van_rel_id varchar (12),
    VPB_IB_nummer varchar (35),
    IB_VPB_Plichtig varchar (1)
);

    comment on column RBM_ORG_TCMG.Bik_Cd is 'BIK_CD';
    comment on column RBM_ORG_TCMG.Bron_jr is 'BRON_JR';
    comment on column RBM_ORG_TCMG.BTW_nummer is 'BTW_NUMMER';
    comment on column RBM_ORG_TCMG.BTW_plichtig is 'BTWPL_JN';
    comment on column RBM_ORG_TCMG.IB_plichtig_sinds is 'IB_PLICHTIG_SINDS';
    comment on column RBM_ORG_TCMG.Jaar_oprichting is 'JAAR_OPRICHTING';
    comment on column RBM_ORG_TCMG.Kkr_RSIN_afwijkend is 'KKR_RSIN_AFWIJKEND';
    comment on column RBM_ORG_TCMG.KVK_nr is 'KVK_NR';
    comment on column RBM_ORG_TCMG.Naam is 'NAAM';
    comment on column RBM_ORG_TCMG.Notitie is 'NOTITIE';
    comment on column RBM_ORG_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_ORG_TCMG.Rvm_cd is 'RVM_CD';
    comment on column RBM_ORG_TCMG.Status_org is 'STATUS_ORG';
    comment on column RBM_ORG_TCMG.Volg_nr_LB is 'VOLG_NR_LB';
    comment on column RBM_ORG_TCMG.Voortzetting_van_rel_id is 'VOORTZETTING_VAN_REL_ID';
    comment on column RBM_ORG_TCMG.VPB_IB_nummer is 'VPB_IB_NUMMER';
    comment on column RBM_ORG_TCMG.IB_VPB_Plichtig is 'VPB_PLICHTIG_JN';

DROP TABLE IF EXISTS RBM_PERSOON_TCMG ;
CREATE TABLE RBM_PERSOON_TCMG (
    Aanhef varchar (10),
    Aanlevernaam varchar (625),
    Aanspreeknaam varchar (625),
    Achternaam varchar (414),
    Foutmelding varchar (100),
    Geboortedatum timestamp,
    Geslacht varchar (1),
    Import_contactpersonen_id integer,
    Notitie varchar (256),
    Rbm_persoon_contact varchar (1),
    Rbm_persoon_particulier varchar (1),
    Rel_id integer,
    Status_persoon varchar (1),
    Sushi_foutmelding varchar (200),
    Taal varchar (2),
    Titels_na varchar (50),
    Titels_voor varchar (50),
    Tussenvoegsels varchar (10),
    Validatie varchar (1),
    Voorletters varchar (6),
    Voornaam varchar (200),
    XML_String varchar (2048)
);

    comment on column RBM_PERSOON_TCMG.Aanhef is 'AANHEF';
    comment on column RBM_PERSOON_TCMG.Aanlevernaam is 'AANLEVERNAAM';
    comment on column RBM_PERSOON_TCMG.Aanspreeknaam is 'AANSPREEKNAAM';
    comment on column RBM_PERSOON_TCMG.Achternaam is 'ACHTERNAAM';
    comment on column RBM_PERSOON_TCMG.Foutmelding is 'FOUTMELDING';
    comment on column RBM_PERSOON_TCMG.Geboortedatum is 'GEBOORTEDATUM';
    comment on column RBM_PERSOON_TCMG.Geslacht is 'GESLACHT';
    comment on column RBM_PERSOON_TCMG.Import_contactpersonen_id is 'ICE_ID';
    comment on column RBM_PERSOON_TCMG.Notitie is 'NOTITIE';
    comment on column RBM_PERSOON_TCMG.Rbm_persoon_contact is 'RBM_PERSOON_CONTACT';
    comment on column RBM_PERSOON_TCMG.Rbm_persoon_particulier is 'RBM_PERSOON_PARTICULIER';
    comment on column RBM_PERSOON_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_PERSOON_TCMG.Status_persoon is 'STATUS_PERSOON';
    comment on column RBM_PERSOON_TCMG.Sushi_foutmelding is 'SUSHI_FOUTMELDING';
    comment on column RBM_PERSOON_TCMG.Taal is 'TAAL';
    comment on column RBM_PERSOON_TCMG.Titels_na is 'TITELS_NA';
    comment on column RBM_PERSOON_TCMG.Titels_voor is 'TITELS_VOOR';
    comment on column RBM_PERSOON_TCMG.Tussenvoegsels is 'TUSSENVOEGSELS';
    comment on column RBM_PERSOON_TCMG.Validatie is 'VALIDATIE';
    comment on column RBM_PERSOON_TCMG.Voorletters is 'VOORLETTERS';
    comment on column RBM_PERSOON_TCMG.Voornaam is 'VOORNAAM';
    comment on column RBM_PERSOON_TCMG.XML_String is 'XML_STRING';

DROP TABLE IF EXISTS RBM_REKENINGNRS_TCMG ;
CREATE TABLE RBM_REKENINGNRS_TCMG (
    Banknaam varchar (50),
    Bic varchar (11),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Externe_bron_cd varchar (10),
    Goedkeuring_sts varchar (1),
    Iban varchar (34),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rel_id integer,
    User_akkoord varchar (30)
);

    comment on column RBM_REKENINGNRS_TCMG.Banknaam is 'BANKNAAM';
    comment on column RBM_REKENINGNRS_TCMG.Bic is 'BIC';
    comment on column RBM_REKENINGNRS_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_REKENINGNRS_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_REKENINGNRS_TCMG.Externe_bron_cd is 'EXTERNE_BRON_CD';
    comment on column RBM_REKENINGNRS_TCMG.Goedkeuring_sts is 'GOEDKEURING_STS';
    comment on column RBM_REKENINGNRS_TCMG.Iban is 'IBAN';
    comment on column RBM_REKENINGNRS_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_REKENINGNRS_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_REKENINGNRS_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_REKENINGNRS_TCMG.User_akkoord is 'USER_AKKOORD';

DROP TABLE IF EXISTS RBM_REKNR_MUT_TCMG ;
CREATE TABLE RBM_REKNR_MUT_TCMG (
    Rel_id integer,
    Volgnummer integer,
    Org_banknaam varchar (30),
    Org_bankgironr varchar (11),
    New_banknaam varchar (30),
    New_bankgironr varchar (11),
    Gebruiker varchar (30),
    Datum_mutatie timestamp,
    Iban varchar (34),
    New_iban varchar (34),
    Bic varchar (11),
    New_bic varchar (11),
    Org_user_akkoord varchar (30),
    New_user_akkoord varchar (30),
    Org_goedkeuring_sts varchar (1),
    New_goedkeuring_sts varchar (1),
    Externe_bron_cd varchar (10)
);

    comment on column RBM_REKNR_MUT_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_REKNR_MUT_TCMG.Volgnummer is 'VOLGNUMMER';
    comment on column RBM_REKNR_MUT_TCMG.Org_banknaam is 'ORG_BANKNAAM';
    comment on column RBM_REKNR_MUT_TCMG.Org_bankgironr is 'ORG_BANKGIRONR';
    comment on column RBM_REKNR_MUT_TCMG.New_banknaam is 'NEW_BANKNAAM';
    comment on column RBM_REKNR_MUT_TCMG.New_bankgironr is 'NEW_BANKGIRONR';
    comment on column RBM_REKNR_MUT_TCMG.Gebruiker is 'GEBRUIKER';
    comment on column RBM_REKNR_MUT_TCMG.Datum_mutatie is 'DATUM_MUTATIE';
    comment on column RBM_REKNR_MUT_TCMG.Iban is 'IBAN';
    comment on column RBM_REKNR_MUT_TCMG.New_iban is 'NEW_IBAN';
    comment on column RBM_REKNR_MUT_TCMG.Bic is 'BIC';
    comment on column RBM_REKNR_MUT_TCMG.New_bic is 'NEW_BIC';
    comment on column RBM_REKNR_MUT_TCMG.Org_user_akkoord is 'ORG_USER_AKKOORD';
    comment on column RBM_REKNR_MUT_TCMG.New_user_akkoord is 'NEW_USER_AKKOORD';
    comment on column RBM_REKNR_MUT_TCMG.Org_goedkeuring_sts is 'ORG_GOEDKEURING_STS';
    comment on column RBM_REKNR_MUT_TCMG.New_goedkeuring_sts is 'NEW_GOEDKEURING_STS';
    comment on column RBM_REKNR_MUT_TCMG.Externe_bron_cd is 'EXTERNE_BRON_CD';

DROP TABLE IF EXISTS RBM_RELATIE_TCMG ;
CREATE TABLE RBM_RELATIE_TCMG (
    Actief varchar (1),
    Auth_id integer,
    Belastingeenheid integer,
    Creatie_dat timestamp,
    creatie_user varchar (30),
    Fiscaalnr varchar (10),
    IdE_id integer,
    Invoer_id integer,
    KR_Gevalideerd varchar (1),
    Kkr_Relatie_id varchar (10),
    Mutatie_dat timestamp,
    mutatie_user varchar (30),
    Rbm_org varchar (1),
    Rbm_persoon varchar (1),
    Ref_kkr_relatie_id varchar (10),
    Rel_id integer,
    Relatietype varchar (1)
);

    comment on column RBM_RELATIE_TCMG.Actief is 'ACTIEF';
    comment on column RBM_RELATIE_TCMG.Auth_id is 'AUTH_ID';
    comment on column RBM_RELATIE_TCMG.Belastingeenheid is 'BELASTINGEENHEID_CD';
    comment on column RBM_RELATIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_RELATIE_TCMG.creatie_user is 'CREATIE_USER';
    comment on column RBM_RELATIE_TCMG.Fiscaalnr is 'FISCAAL_NR';
    comment on column RBM_RELATIE_TCMG.IdE_id is 'IDE_ID';
    comment on column RBM_RELATIE_TCMG.Invoer_id is 'INVOER_ID';
    comment on column RBM_RELATIE_TCMG.KR_Gevalideerd is 'KKR_GEVALIDEERD';
    comment on column RBM_RELATIE_TCMG.Kkr_Relatie_id is 'KKR_RELATIE_ID';
    comment on column RBM_RELATIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_RELATIE_TCMG.mutatie_user is 'MUTATIE_USER';
    comment on column RBM_RELATIE_TCMG.Rbm_org is 'RBM_ORG';
    comment on column RBM_RELATIE_TCMG.Rbm_persoon is 'RBM_PERSOON';
    comment on column RBM_RELATIE_TCMG.Ref_kkr_relatie_id is 'REF_KKR_RELATIE_ID';
    comment on column RBM_RELATIE_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_RELATIE_TCMG.Relatietype is 'RELATIETYPE';

DROP TABLE IF EXISTS RBM_SBI_ORG_TCMG ;
CREATE TABLE RBM_SBI_ORG_TCMG (
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Hoofdactiviteit varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rel_id integer,
    Sbi_cd integer
);

    comment on column RBM_SBI_ORG_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_SBI_ORG_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_SBI_ORG_TCMG.Hoofdactiviteit is 'HOOFDACTIVITEIT';
    comment on column RBM_SBI_ORG_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_SBI_ORG_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_SBI_ORG_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_SBI_ORG_TCMG.Sbi_cd is 'SBI_CD';

DROP TABLE IF EXISTS RBM_VESTIGING_TCMG ;
CREATE TABLE RBM_VESTIGING_TCMG (
    Actief varchar (1),
    Auth_id integer,
    Bik_cd varchar (9),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Hoofd_neven varchar (1),
    Kkr_conversie varchar (1),
    Kkr_gevalideerd varchar (1),
    Kkr_gevonden varchar (1),
    Kkr_relatie_id varchar (36),
    Kkr_verversingsdatum timestamp,
    KvK_volgnr varchar (4),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ref_Kkr_relatie_id varchar (36),
    Rel_id integer,
    Vest_naam varchar (625),
    Vestigings_nummer varchar (12),
    Vst_volgnr integer
);

    comment on column RBM_VESTIGING_TCMG.Actief is 'ACTIEF';
    comment on column RBM_VESTIGING_TCMG.Auth_id is 'AUTH_ID';
    comment on column RBM_VESTIGING_TCMG.Bik_cd is 'BIK_CD';
    comment on column RBM_VESTIGING_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RBM_VESTIGING_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RBM_VESTIGING_TCMG.Hoofd_neven is 'HOOFD_NEVEN';
    comment on column RBM_VESTIGING_TCMG.Kkr_conversie is 'KKR_CONVERSIE';
    comment on column RBM_VESTIGING_TCMG.Kkr_gevalideerd is 'KKR_GEVALIDEERD';
    comment on column RBM_VESTIGING_TCMG.Kkr_gevonden is 'KKR_GEVONDEN';
    comment on column RBM_VESTIGING_TCMG.Kkr_relatie_id is 'KKR_RELATIE_ID';
    comment on column RBM_VESTIGING_TCMG.Kkr_verversingsdatum is 'KKR_VERVERSINGSDATUM';
    comment on column RBM_VESTIGING_TCMG.KvK_volgnr is 'KVK_VOLGNR';
    comment on column RBM_VESTIGING_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RBM_VESTIGING_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RBM_VESTIGING_TCMG.Ref_Kkr_relatie_id is 'REF_KKR_RELATIE_ID';
    comment on column RBM_VESTIGING_TCMG.Rel_id is 'REL_ID';
    comment on column RBM_VESTIGING_TCMG.Vest_naam is 'VEST_NAAM';
    comment on column RBM_VESTIGING_TCMG.Vestigings_nummer is 'VESTIGING_NUMMER';
    comment on column RBM_VESTIGING_TCMG.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS RDM_BUDGETONDERVERDELING_TCMG ;
CREATE TABLE RDM_BUDGETONDERVERDELING_TCMG (
    Bgt_cd varchar (1),
    Budget integer,
    Budget_uitputting integer,
    Correctie_budget integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Jaar integer,
    Koppelen_jn varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ovk_nr varchar (20),
    Reg_id integer,
    Rpe_datum_van timestamp,
    Rpt_nr integer,
    Verdeeld_budget integer,
    Vrij_budget integer
);

    comment on column RDM_BUDGETONDERVERDELING_TCMG.Bgt_cd is 'BGT_CD';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Budget is 'BUDGET';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Budget_uitputting is 'BUDGET_UITPUTTING';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Correctie_budget is 'CORRECTIE_BUDGET';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Jaar is 'JAAR';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Koppelen_jn is 'KOPPELEN_JN';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Ovk_nr is 'OVK_NR';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Reg_id is 'REG_ID';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Rpe_datum_van is 'RPE_DATUM_VAN';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Rpt_nr is 'RPT_NR';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Verdeeld_budget is 'VERDEELD_BUDGET';
    comment on column RDM_BUDGETONDERVERDELING_TCMG.Vrij_budget is 'VRIJ_BUDGET';

DROP TABLE IF EXISTS RDM_CLASSIFICATIE_TCMG ;
CREATE TABLE RDM_CLASSIFICATIE_TCMG (
    Prg_id integer,
    Class_cd varchar (10),
    Class_oms varchar (100),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column RDM_CLASSIFICATIE_TCMG.Prg_id is 'PRG_ID';
    comment on column RDM_CLASSIFICATIE_TCMG.Class_cd is 'CLASS_CD';
    comment on column RDM_CLASSIFICATIE_TCMG.Class_oms is 'CLASS_OMS';
    comment on column RDM_CLASSIFICATIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_CLASSIFICATIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_CLASSIFICATIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_CLASSIFICATIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS RDM_JAARBUDGET_TCMG ;
CREATE TABLE RDM_JAARBUDGET_TCMG (
    Afgesloten varchar (1),
    Bgt_cd varchar (1),
    Budget_uitputting integer,
    Correctie_budget integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Datum_van timestamp,
    Jaar integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ovk_nr varchar (20),
    Rpt_nr integer,
    Tot_budget integer,
    Verdeeld_budget integer,
    Verdeeld_jn varchar (1),
    Vrij_budget integer
);

    comment on column RDM_JAARBUDGET_TCMG.Afgesloten is 'AFGESLOTEN';
    comment on column RDM_JAARBUDGET_TCMG.Bgt_cd is 'BGT_CD';
    comment on column RDM_JAARBUDGET_TCMG.Budget_uitputting is 'BUDGET_UITPUTTING';
    comment on column RDM_JAARBUDGET_TCMG.Correctie_budget is 'CORRECTIE_BUDGET';
    comment on column RDM_JAARBUDGET_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_JAARBUDGET_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_JAARBUDGET_TCMG.Datum_van is 'DATUM_VAN';
    comment on column RDM_JAARBUDGET_TCMG.Jaar is 'JAAR';
    comment on column RDM_JAARBUDGET_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_JAARBUDGET_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_JAARBUDGET_TCMG.Ovk_nr is 'OVK_NR';
    comment on column RDM_JAARBUDGET_TCMG.Rpt_nr is 'RPT_NR';
    comment on column RDM_JAARBUDGET_TCMG.Tot_budget is 'TOT_BUDGET';
    comment on column RDM_JAARBUDGET_TCMG.Verdeeld_budget is 'VERDEELD_BUDGET';
    comment on column RDM_JAARBUDGET_TCMG.Verdeeld_jn is 'VERDEELD_JN';
    comment on column RDM_JAARBUDGET_TCMG.Vrij_budget is 'VRIJ_BUDGET';

DROP TABLE IF EXISTS RDM_MANDAAT_TCMG ;
CREATE TABLE RDM_MANDAAT_TCMG (
    Mdt_id integer,
    Middelen_type varchar (2),
    Mandaat_srt varchar (2),
    Max_bedrag integer,
    Rdm_mandaat_rol varchar (1),
    Rdm_mandaat_mdw varchar (1),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Mdw_id integer,
    Reg_id integer,
    Rol_cd varchar (3)
);

    comment on column RDM_MANDAAT_TCMG.Mdt_id is 'MDT_ID';
    comment on column RDM_MANDAAT_TCMG.Middelen_type is 'MIDDELEN_TYPE';
    comment on column RDM_MANDAAT_TCMG.Mandaat_srt is 'MANDAAT_SRT';
    comment on column RDM_MANDAAT_TCMG.Max_bedrag is 'MAX_BEDRAG';
    comment on column RDM_MANDAAT_TCMG.Rdm_mandaat_rol is 'RDM_MANDAAT_ROL';
    comment on column RDM_MANDAAT_TCMG.Rdm_mandaat_mdw is 'RDM_MANDAAT_MDW';
    comment on column RDM_MANDAAT_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_MANDAAT_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_MANDAAT_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_MANDAAT_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_MANDAAT_TCMG.Mdw_id is 'MDW_ID';
    comment on column RDM_MANDAAT_TCMG.Reg_id is 'REG_ID';
    comment on column RDM_MANDAAT_TCMG.Rol_cd is 'ROL_CD';

DROP TABLE IF EXISTS RDM_OVEREENKOMST_DOCUMENT_TCMG ;
CREATE TABLE RDM_OVEREENKOMST_DOCUMENT_TCMG (
    Ovk_nr varchar (20),
    Doc_naam varchar (255),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Bgt_cd varchar (1),
    Rpt_nr integer,
    Datum_van timestamp
);

    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Ovk_nr is 'OVK_NR';
    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Doc_naam is 'DOC_NAAM';
    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Bgt_cd is 'BGT_CD';
    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Rpt_nr is 'RPT_NR';
    comment on column RDM_OVEREENKOMST_DOCUMENT_TCMG.Datum_van is 'DATUM_VAN';

DROP TABLE IF EXISTS RDM_PERIODE_TCMG ;
CREATE TABLE RDM_PERIODE_TCMG (
    Ovk_nr varchar (20),
    Rpt_nr integer,
    Bgt_cd varchar (1),
    Datum_van timestamp,
    Datum_tot timestamp,
    Kopieer_periode varchar (1),
    Auto_sap_jn varchar (1),
    Comm_rente_pct integer,
    Beschik_datum timestamp,
    Tot_budget integer,
    Verdeeld_budget integer,
    Omschrijving varchar (60),
    Prg_cd varchar (12),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Timestamp varchar (8),
    Bdg_verdelen_100_pct_dp varchar (1),
    Bdg_verdelen_100_pct_th varchar (1),
    Iban varchar (34),
    Bic varchar (11),
    Imvb integer,
    Correctie_code varchar (5),
    Auto_oracle varchar (1),
    Boeking varchar (1),
    Fin_soort varchar (1),
    Kenmerk_lijn varchar (20),
    Aflossing integer
);

    comment on column RDM_PERIODE_TCMG.Ovk_nr is 'OVK_NR';
    comment on column RDM_PERIODE_TCMG.Rpt_nr is 'RPT_NR';
    comment on column RDM_PERIODE_TCMG.Bgt_cd is 'BGT_CD';
    comment on column RDM_PERIODE_TCMG.Datum_van is 'DATUM_VAN';
    comment on column RDM_PERIODE_TCMG.Datum_tot is 'DATUM_TOT';
    comment on column RDM_PERIODE_TCMG.Kopieer_periode is 'KOPIEER_PERIODE';
    comment on column RDM_PERIODE_TCMG.Auto_sap_jn is 'AUTO_SAP_JN';
    comment on column RDM_PERIODE_TCMG.Comm_rente_pct is 'COMM_RENTE_PCT';
    comment on column RDM_PERIODE_TCMG.Beschik_datum is 'BESCHIK_DATUM';
    comment on column RDM_PERIODE_TCMG.Tot_budget is 'TOT_BUDGET';
    comment on column RDM_PERIODE_TCMG.Verdeeld_budget is 'VERDEELD_BUDGET';
    comment on column RDM_PERIODE_TCMG.Omschrijving is 'OMSCHRIJVING';
    comment on column RDM_PERIODE_TCMG.Prg_cd is 'PRG_CD';
    comment on column RDM_PERIODE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_PERIODE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_PERIODE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_PERIODE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_PERIODE_TCMG.Timestamp is 'TIMESTAMP';
    comment on column RDM_PERIODE_TCMG.Bdg_verdelen_100_pct_dp is 'BDG_VERDELEN_100_PCT_DP';
    comment on column RDM_PERIODE_TCMG.Bdg_verdelen_100_pct_th is 'BDG_VERDELEN_100_PCT_TH';
    comment on column RDM_PERIODE_TCMG.Iban is 'IBAN';
    comment on column RDM_PERIODE_TCMG.Bic is 'BIC';
    comment on column RDM_PERIODE_TCMG.Imvb is 'IMVB';
    comment on column RDM_PERIODE_TCMG.Correctie_code is 'CORRECTIE_CODE';
    comment on column RDM_PERIODE_TCMG.Auto_oracle is 'AUTO_ORACLE';
    comment on column RDM_PERIODE_TCMG.Boeking is 'BOEKING';
    comment on column RDM_PERIODE_TCMG.Fin_soort is 'FIN_SOORT';
    comment on column RDM_PERIODE_TCMG.Kenmerk_lijn is 'KENMERK_LIJN';
    comment on column RDM_PERIODE_TCMG.Aflossing is 'AFLOSSING';

DROP TABLE IF EXISTS RDM_PRG_OVEREENKOMST_TCMG ;
CREATE TABLE RDM_PRG_OVEREENKOMST_TCMG (
    Prg_id integer,
    Ovk_nr varchar (20),
    Datum_van timestamp,
    Datum_tot timestamp,
    Inhoud varchar (2048),
    Status varchar (1),
    Contractdatum timestamp,
    Totaal_budget integer,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Mjp_jn varchar (1),
    Ovk_budget_controle varchar (1),
    Vrij_budget integer,
    Budget_uitputting integer
);

    comment on column RDM_PRG_OVEREENKOMST_TCMG.Prg_id is 'PRG_ID';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Ovk_nr is 'OVK_NR';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Datum_van is 'DATUM_VAN';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Datum_tot is 'DATUM_TOT';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Inhoud is 'INHOUD';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Status is 'STATUS';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Contractdatum is 'CONTRACTDATUM';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Totaal_budget is 'TOTAAL_BUDGET';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Mjp_jn is 'MJP_JN';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Ovk_budget_controle is 'OVK_BUDGET_CONTROLE';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Vrij_budget is 'VRIJ_BUDGET';
    comment on column RDM_PRG_OVEREENKOMST_TCMG.Budget_uitputting is 'BUDGET_UITPUTTING';

DROP TABLE IF EXISTS RDM_PROGRAMMAMEDEWERKERROL_TCMG ;
CREATE TABLE RDM_PROGRAMMAMEDEWERKERROL_TCMG (
    Prg_id integer,
    Mdw_id integer,
    Auth_mdw_cd varchar (30),
    Rol_cd varchar (3),
    Actief varchar (1),
    Opmerking varchar (255),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Timestamp varchar (8),
    Senioriteit varchar (30),
    Mentor_id integer,
    Vervang_id integer,
    Vervang_rol varchar (3),
    Acc_id integer,
    Mdw_id_parf_naar integer,
    Mentor_rol_cd varchar (3)
);

    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Prg_id is 'PRG_ID';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Mdw_id is 'MDW_ID';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Auth_mdw_cd is 'AUTH_MDW_CD';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Rol_cd is 'ROL_CD';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Actief is 'ACTIEF';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Opmerking is 'OPMERKING';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Timestamp is 'TIMESTAMP';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Senioriteit is 'SENIORITEIT';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Mentor_id is 'MENTOR_ID';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Vervang_id is 'VERVANG_ID';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Vervang_rol is 'VERVANG_ROL';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Acc_id is 'ACC_ID';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Mdw_id_parf_naar is 'MDW_ID_PARF_NAAR';
    comment on column RDM_PROGRAMMAMEDEWERKERROL_TCMG.Mentor_rol_cd is 'MENTOR_ROL_CD';

DROP TABLE IF EXISTS RDM_REGELING_TCMG ;
CREATE TABLE RDM_REGELING_TCMG (
    Reg_id integer,
    Reg_cd varchar (20),
    Reg_oms varchar (120),
    Prg_id integer,
    Thema varchar (1),
    Rap_freq integer,
    Ingangs_datum timestamp,
    Pub_datum timestamp,
    Eind_datum timestamp,
    Reg_document varchar (50),
    Betaalmodule varchar (1),
    Regelingscontrole varchar (1),
    Ic_helptekst varchar (2048),
    Geblokkeerd_jn varchar (1),
    Min_id integer,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Reg_prefix varchar (6),
    Volg_nr integer,
    Mail_bericht_parafering varchar (1),
    Reg_mail_adres varchar (60),
    Reg_geen_dig_parafering varchar (1),
    Fin_schermen varchar (1),
    Budgetbewaking_pct integer,
    Budgetbewaking_hard varchar (1),
    Dig_parf_mand varchar (1),
    Cst_set_cd varchar (10),
    Auto_samenvoeg_jn varchar (1),
    Fpc_status varchar (1),
    Dcp_automatisch_jn varchar (1),
    Paraf_mandat_pr_rol_jn varchar (1),
    Dos_referentie_jaar varchar (4),
    Auto_insert_sde_jn varchar (1),
    Ingangsdatum_zer timestamp
);

    comment on column RDM_REGELING_TCMG.Reg_id is 'REG_ID';
    comment on column RDM_REGELING_TCMG.Reg_cd is 'REG_CD';
    comment on column RDM_REGELING_TCMG.Reg_oms is 'REG_OMS';
    comment on column RDM_REGELING_TCMG.Prg_id is 'PRG_ID';
    comment on column RDM_REGELING_TCMG.Thema is 'THEMA';
    comment on column RDM_REGELING_TCMG.Rap_freq is 'RAP_FREQ';
    comment on column RDM_REGELING_TCMG.Ingangs_datum is 'INGANGS_DATUM';
    comment on column RDM_REGELING_TCMG.Pub_datum is 'PUB_DATUM';
    comment on column RDM_REGELING_TCMG.Eind_datum is 'EIND_DATUM';
    comment on column RDM_REGELING_TCMG.Reg_document is 'REG_DOCUMENT';
    comment on column RDM_REGELING_TCMG.Betaalmodule is 'BETAALMODULE';
    comment on column RDM_REGELING_TCMG.Regelingscontrole is 'REGELINGSCONTROLE';
    comment on column RDM_REGELING_TCMG.Ic_helptekst is 'IC_HELPTEKST';
    comment on column RDM_REGELING_TCMG.Geblokkeerd_jn is 'GEBLOKKEERD_JN';
    comment on column RDM_REGELING_TCMG.Min_id is 'MIN_ID';
    comment on column RDM_REGELING_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_REGELING_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_REGELING_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_REGELING_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_REGELING_TCMG.Reg_prefix is 'REG_PREFIX';
    comment on column RDM_REGELING_TCMG.Volg_nr is 'VOLG_NR';
    comment on column RDM_REGELING_TCMG.Mail_bericht_parafering is 'MAIL_BERICHT_PARAFERING';
    comment on column RDM_REGELING_TCMG.Reg_mail_adres is 'REG_MAIL_ADRES';
    comment on column RDM_REGELING_TCMG.Reg_geen_dig_parafering is 'REG_GEEN_DIG_PARAFERING';
    comment on column RDM_REGELING_TCMG.Fin_schermen is 'FIN_SCHERMEN';
    comment on column RDM_REGELING_TCMG.Budgetbewaking_pct is 'BUDGETBEWAKING_PCT';
    comment on column RDM_REGELING_TCMG.Budgetbewaking_hard is 'BUDGETBEWAKING_HARD';
    comment on column RDM_REGELING_TCMG.Dig_parf_mand is 'DIG_PARF_MAND';
    comment on column RDM_REGELING_TCMG.Cst_set_cd is 'CST_SET_CD';
    comment on column RDM_REGELING_TCMG.Auto_samenvoeg_jn is 'AUTO_SAMENVOEG_JN';
    comment on column RDM_REGELING_TCMG.Fpc_status is 'FPC_STATUS';
    comment on column RDM_REGELING_TCMG.Dcp_automatisch_jn is 'DCP_AUTOMATISCH_JN';
    comment on column RDM_REGELING_TCMG.Paraf_mandat_pr_rol_jn is 'PARAF_MANDAT_PR_ROL_JN';
    comment on column RDM_REGELING_TCMG.Dos_referentie_jaar is 'DOS_REFERENTIE_JAAR';
    comment on column RDM_REGELING_TCMG.Auto_insert_sde_jn is 'AUTO_INSERT_SDE_JN';
    comment on column RDM_REGELING_TCMG.Ingangsdatum_zer is 'INGANGSDATUM_ZER';

DROP TABLE IF EXISTS RDM_REGPAR_BUDGONDVERD_TCMG ;
CREATE TABLE RDM_REGPAR_BUDGONDVERD_TCMG (
    Ovk_nr varchar (20),
    Rpt_nr integer,
    Bgt_cd varchar (1),
    Rpe_datum_van timestamp,
    Jaar integer,
    Reg_id integer,
    Reg_nr integer,
    Budget integer,
    Budget_uitputting integer,
    Koppelen_jn varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Correctie_budget integer,
    Vrij_budget integer,
    Rpt_nr_oud varchar (20)
);

    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Ovk_nr is 'OVK_NR';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Rpt_nr is 'RPT_NR';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Bgt_cd is 'BGT_CD';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Rpe_datum_van is 'RPE_DATUM_VAN';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Jaar is 'JAAR';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Reg_id is 'REG_ID';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Reg_nr is 'REG_NR';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Budget is 'BUDGET';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Budget_uitputting is 'BUDGET_UITPUTTING';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Koppelen_jn is 'KOPPELEN_JN';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Correctie_budget is 'CORRECTIE_BUDGET';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Vrij_budget is 'VRIJ_BUDGET';
    comment on column RDM_REGPAR_BUDGONDVERD_TCMG.Rpt_nr_oud is 'RPT_NR_OUD';

DROP TABLE IF EXISTS RDM_STATUSOVERG_BIJ_BRIEF_TCMG ;
CREATE TABLE RDM_STATUSOVERG_BIJ_BRIEF_TCMG (
    Reg_id integer,
    Status_van varchar (3),
    Statusgroep varchar (1),
    Status_naar varchar (3),
    Cst_cd varchar (8),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Xps_cd varchar (10)
);

    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Reg_id is 'REG_ID';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Status_van is 'STATUS_VAN';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Statusgroep is 'STATUSGROEP';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Status_naar is 'STATUS_NAAR';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Cst_cd is 'CST_CD';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_STATUSOVERG_BIJ_BRIEF_TCMG.Xps_cd is 'XPS_CD';

DROP TABLE IF EXISTS RDM_VARIABELE_TCMG ;
CREATE TABLE RDM_VARIABELE_TCMG (
    Reg_id integer,
    Code varchar (50),
    Begindatum timestamp,
    Inhoud varchar (255),
    Toelichting varchar (2048),
    Einddatum timestamp,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column RDM_VARIABELE_TCMG.Reg_id is 'REG_ID';
    comment on column RDM_VARIABELE_TCMG.Code is 'CODE';
    comment on column RDM_VARIABELE_TCMG.Begindatum is 'BEGINDATUM';
    comment on column RDM_VARIABELE_TCMG.Inhoud is 'INHOUD';
    comment on column RDM_VARIABELE_TCMG.Toelichting is 'TOELICHTING';
    comment on column RDM_VARIABELE_TCMG.Einddatum is 'EINDDATUM';
    comment on column RDM_VARIABELE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column RDM_VARIABELE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column RDM_VARIABELE_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column RDM_VARIABELE_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS STM_BSI_TCMG ;
CREATE TABLE STM_BSI_TCMG (
    Startdatum timestamp,
    Einddatum timestamp,
    Bsi_cd varchar (7),
    Bsi_oms varchar (100),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column STM_BSI_TCMG.Startdatum is 'STARTDATUM';
    comment on column STM_BSI_TCMG.Einddatum is 'EINDDATUM';
    comment on column STM_BSI_TCMG.Bsi_cd is 'BSI_CD';
    comment on column STM_BSI_TCMG.Bsi_oms is 'BSI_OMS';
    comment on column STM_BSI_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column STM_BSI_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column STM_BSI_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column STM_BSI_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS STM_REACTIE_TCMG ;
CREATE TABLE STM_REACTIE_TCMG (
    Reactie_cd varchar (3),
    Reactie_oms varchar (60),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column STM_REACTIE_TCMG.Reactie_cd is 'REACTIE_CD';
    comment on column STM_REACTIE_TCMG.Reactie_oms is 'REACTIE_OMS';
    comment on column STM_REACTIE_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column STM_REACTIE_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column STM_REACTIE_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column STM_REACTIE_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS STM_ROL_TCMG ;
CREATE TABLE STM_ROL_TCMG (
    Rol_cd varchar (3),
    Rol_oms varchar (50),
    Interne_rol varchar (1),
    Externe_rol varchar (1),
    Organisatie_rol varchar (1),
    Controller varchar (1),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Type_rol varchar (30),
    Ed_rol_cd integer,
    Ed_rol_oms varchar (50)
);

    comment on column STM_ROL_TCMG.Rol_cd is 'ROL_CD';
    comment on column STM_ROL_TCMG.Rol_oms is 'ROL_OMS';
    comment on column STM_ROL_TCMG.Interne_rol is 'INTERNE_ROL';
    comment on column STM_ROL_TCMG.Externe_rol is 'EXTERNE_ROL';
    comment on column STM_ROL_TCMG.Organisatie_rol is 'ORGANISATIE_ROL';
    comment on column STM_ROL_TCMG.Controller is 'CONTROLLER';
    comment on column STM_ROL_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column STM_ROL_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column STM_ROL_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column STM_ROL_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column STM_ROL_TCMG.Type_rol is 'TYPE_ROL';
    comment on column STM_ROL_TCMG.Ed_rol_cd is 'ED_ROL_CD';
    comment on column STM_ROL_TCMG.Ed_rol_oms is 'ED_ROL_OMS';

DROP TABLE IF EXISTS STM_SBI_TCMG ;
CREATE TABLE STM_SBI_TCMG (
    Sbi_cd integer,
    Sbi_oms varchar (500),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column STM_SBI_TCMG.Sbi_cd is 'SBI_CD';
    comment on column STM_SBI_TCMG.Sbi_oms is 'SBI_OMS';
    comment on column STM_SBI_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column STM_SBI_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column STM_SBI_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column STM_SBI_TCMG.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS STM_STATUS_TCMG ;
CREATE TABLE STM_STATUS_TCMG (
    Sts_cd varchar (3),
    Sts_oms varchar (50),
    Ssg_cd varchar (1),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Sts_e_indienen varchar (50),
    Eindstatus varchar (1),
    Sts_e_loket varchar (50)
);

    comment on column STM_STATUS_TCMG.Sts_cd is 'STS_CD';
    comment on column STM_STATUS_TCMG.Sts_oms is 'STS_OMS';
    comment on column STM_STATUS_TCMG.Ssg_cd is 'SSG_CD';
    comment on column STM_STATUS_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column STM_STATUS_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column STM_STATUS_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column STM_STATUS_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column STM_STATUS_TCMG.Sts_e_indienen is 'STS_E_INDIENEN';
    comment on column STM_STATUS_TCMG.Eindstatus is 'EINDSTATUS';
    comment on column STM_STATUS_TCMG.Sts_e_loket is 'STS_E_LOKET';

DROP TABLE IF EXISTS STM_STATUSOVERG_BIJ_BRIEF_TCMG ;
CREATE TABLE STM_STATUSOVERG_BIJ_BRIEF_TCMG (
    Van_status varchar (3),
    Naar_status varchar (3),
    Ssg_cd varchar (1),
    Cst_cd varchar (8),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column STM_STATUSOVERG_BIJ_BRIEF_TCMG.Van_status is 'VAN_STATUS';
    comment on column STM_STATUSOVERG_BIJ_BRIEF_TCMG.Naar_status is 'NAAR_STATUS';
    comment on column STM_STATUSOVERG_BIJ_BRIEF_TCMG.Ssg_cd is 'SSG_CD';
    comment on column STM_STATUSOVERG_BIJ_BRIEF_TCMG.Cst_cd is 'CST_CD';
    comment on column STM_STATUSOVERG_BIJ_BRIEF_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column STM_STATUSOVERG_BIJ_BRIEF_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column STM_STATUSOVERG_BIJ_BRIEF_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column STM_STATUSOVERG_BIJ_BRIEF_TCMG.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS VKM_TOEGEV_VAR_VELD_WAARDE_TCMG ;
CREATE TABLE VKM_TOEGEV_VAR_VELD_WAARDE_TCMG (
    Vkt_id integer,
    Fysieke_naam varchar (30),
    Waarde varchar (60),
    Volgorde integer
);

    comment on column VKM_TOEGEV_VAR_VELD_WAARDE_TCMG.Vkt_id is 'VKT_ID';
    comment on column VKM_TOEGEV_VAR_VELD_WAARDE_TCMG.Fysieke_naam is 'FYSIEKE_NAAM';
    comment on column VKM_TOEGEV_VAR_VELD_WAARDE_TCMG.Waarde is 'WAARDE';
    comment on column VKM_TOEGEV_VAR_VELD_WAARDE_TCMG.Volgorde is 'VOLGORDE';

DROP TABLE IF EXISTS VKM_TOEGEVOEGD_VAR_VELD_TCMG ;
CREATE TABLE VKM_TOEGEVOEGD_VAR_VELD_TCMG (
    Vkt_id integer,
    Fysieke_naam varchar (30),
    Datum_start timestamp,
    Datum_einde timestamp,
    Volgorde integer,
    Verplicht_jn varchar (1),
    Prompt varchar (40),
    Min_waarde integer,
    Max_waarde integer,
    Default_waarde varchar (40),
    Helptekst varchar (72)
);

    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Vkt_id is 'VKT_ID';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Fysieke_naam is 'FYSIEKE_NAAM';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Datum_start is 'DATUM_START';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Datum_einde is 'DATUM_EINDE';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Volgorde is 'VOLGORDE';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Verplicht_jn is 'VERPLICHT_JN';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Prompt is 'PROMPT';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Min_waarde is 'MIN_WAARDE';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Max_waarde is 'MAX_WAARDE';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Default_waarde is 'DEFAULT_WAARDE';
    comment on column VKM_TOEGEVOEGD_VAR_VELD_TCMG.Helptekst is 'HELPTEKST';

DROP TABLE IF EXISTS VKM_VAR_GEGEVENS_TCMG ;
CREATE TABLE VKM_VAR_GEGEVENS_TCMG (
    BEDRAG_01 integer,
    BEDRAG_02 integer,
    BEDRAG_03 integer,
    BEDRAG_04 integer,
    BEDRAG_05 integer,
    BEDRAG_06 integer,
    BEDRAG_07 integer,
    BEDRAG_08 integer,
    BEDRAG_09 integer,
    BEDRAG_10 integer,
    BEDRAG_11 integer,
    BEDRAG_12 integer,
    BEDRAG_13 integer,
    BEDRAG_14 integer,
    BEDRAG_15 integer,
    BEDRAG_16 integer,
    BEDRAG_17 integer,
    BEDRAG_18 integer,
    BEDRAG_19 integer,
    BEDRAG_20 integer,
    BEDRAG_21 integer,
    BEDRAG_22 integer,
    BEDRAG_23 integer,
    BEDRAG_24 integer,
    BEDRAG_25 integer,
    BEDRAG_26 integer,
    BEDRAG_27 integer,
    BEDRAG_28 integer,
    BEDRAG_29 integer,
    BEDRAG_30 integer,
    BEDRAG_31 integer,
    BEDRAG_32 integer,
    BEDRAG_33 integer,
    BEDRAG_34 integer,
    BEDRAG_35 integer,
    BEDRAG_36 integer,
    BEDRAG_37 integer,
    BEDRAG_38 integer,
    BEDRAG_39 integer,
    BEDRAG_40 integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    DATUM_01 timestamp,
    DATUM_02 timestamp,
    DATUM_03 timestamp,
    DATUM_04 timestamp,
    DATUM_05 timestamp,
    DATUM_06 timestamp,
    DATUM_07 timestamp,
    DATUM_08 timestamp,
    DATUM_09 timestamp,
    DATUM_10 timestamp,
    DATUM_11 timestamp,
    DATUM_12 timestamp,
    DATUM_13 timestamp,
    DATUM_14 timestamp,
    DATUM_15 timestamp,
    DATUM_16 timestamp,
    DATUM_17 timestamp,
    DATUM_18 timestamp,
    DATUM_19 timestamp,
    DATUM_20 timestamp,
    DATUM_AANMAAK timestamp,
    DROPDOWNLIST_01 varchar (60),
    DROPDOWNLIST_02 varchar (60),
    DROPDOWNLIST_03 varchar (60),
    DROPDOWNLIST_04 varchar (60),
    DROPDOWNLIST_05 varchar (60),
    DROPDOWNLIST_06 varchar (60),
    DROPDOWNLIST_07 varchar (60),
    DROPDOWNLIST_08 varchar (60),
    DROPDOWNLIST_09 varchar (60),
    DROPDOWNLIST_10 varchar (60),
    DROPDOWNLIST_11 varchar (60),
    DROPDOWNLIST_12 varchar (60),
    DROPDOWNLIST_13 varchar (60),
    DROPDOWNLIST_14 varchar (60),
    DROPDOWNLIST_15 varchar (60),
    DROPDOWNLIST_16 varchar (60),
    DROPDOWNLIST_17 varchar (60),
    DROPDOWNLIST_18 varchar (60),
    DROPDOWNLIST_19 varchar (60),
    DROPDOWNLIST_20 varchar (60),
    DROPDOWNLIST_21 varchar (60),
    DROPDOWNLIST_22 varchar (60),
    DROPDOWNLIST_23 varchar (60),
    DROPDOWNLIST_24 varchar (60),
    DROPDOWNLIST_25 varchar (60),
    DROPDOWNLIST_26 varchar (60),
    DROPDOWNLIST_27 varchar (60),
    DROPDOWNLIST_28 varchar (60),
    DROPDOWNLIST_29 varchar (60),
    DROPDOWNLIST_30 varchar (60),
    DROPDOWNLIST_31 varchar (60),
    DROPDOWNLIST_32 varchar (60),
    DROPDOWNLIST_33 varchar (60),
    DROPDOWNLIST_34 varchar (60),
    DROPDOWNLIST_35 varchar (60),
    DROPDOWNLIST_36 varchar (60),
    DROPDOWNLIST_37 varchar (60),
    DROPDOWNLIST_38 varchar (60),
    DROPDOWNLIST_39 varchar (60),
    DROPDOWNLIST_40 varchar (60),
    INT_01 integer,
    INT_02 integer,
    INT_03 integer,
    INT_04 integer,
    INT_05 integer,
    INT_06 integer,
    INT_07 integer,
    INT_08 integer,
    INT_09 integer,
    INT_10 integer,
    INT_11 integer,
    INT_12 integer,
    INT_13 integer,
    INT_14 integer,
    INT_15 integer,
    INT_16 integer,
    INT_17 integer,
    INT_18 integer,
    INT_19 integer,
    INT_20 integer,
    INT_21 integer,
    INT_22 integer,
    INT_23 integer,
    INT_24 integer,
    INT_25 integer,
    INT_26 integer,
    INT_27 integer,
    INT_28 integer,
    INT_29 integer,
    INT_30 integer,
    INT_31 integer,
    INT_32 integer,
    INT_33 integer,
    INT_34 integer,
    INT_35 integer,
    INT_36 integer,
    INT_37 integer,
    INT_38 integer,
    INT_39 integer,
    INT_40 integer,
    JA_NEE_01 varchar (1),
    JA_NEE_02 varchar (1),
    JA_NEE_03 varchar (1),
    JA_NEE_04 varchar (1),
    JA_NEE_05 varchar (1),
    JA_NEE_06 varchar (1),
    JA_NEE_07 varchar (1),
    JA_NEE_08 varchar (1),
    JA_NEE_09 varchar (1),
    JA_NEE_10 varchar (1),
    JA_NEE_11 varchar (1),
    JA_NEE_12 varchar (1),
    JA_NEE_13 varchar (1),
    JA_NEE_14 varchar (1),
    JA_NEE_15 varchar (1),
    JA_NEE_16 varchar (1),
    JA_NEE_17 varchar (1),
    JA_NEE_18 varchar (1),
    JA_NEE_19 varchar (1),
    JA_NEE_20 varchar (1),
    JA_NEE_21 varchar (1),
    JA_NEE_22 varchar (1),
    JA_NEE_23 varchar (1),
    JA_NEE_24 varchar (1),
    JA_NEE_25 varchar (1),
    JA_NEE_26 varchar (1),
    JA_NEE_27 varchar (1),
    JA_NEE_28 varchar (1),
    JA_NEE_29 varchar (1),
    JA_NEE_30 varchar (1),
    JA_NEE_NVT_01 varchar (1),
    JA_NEE_NVT_02 varchar (1),
    JA_NEE_NVT_03 varchar (1),
    JA_NEE_NVT_04 varchar (1),
    JA_NEE_NVT_05 varchar (1),
    JA_NEE_NVT_06 varchar (1),
    JA_NEE_NVT_07 varchar (1),
    JA_NEE_NVT_08 varchar (1),
    JA_NEE_NVT_09 varchar (1),
    JA_NEE_NVT_10 varchar (1),
    JA_NEE_NVT_11 varchar (1),
    JA_NEE_NVT_12 varchar (1),
    JA_NEE_NVT_13 varchar (1),
    JA_NEE_NVT_14 varchar (1),
    JA_NEE_NVT_15 varchar (1),
    JA_NEE_NVT_16 varchar (1),
    JA_NEE_NVT_17 varchar (1),
    JA_NEE_NVT_18 varchar (1),
    JA_NEE_NVT_19 varchar (1),
    JA_NEE_NVT_20 varchar (1),
    JA_NEE_ONB_01 varchar (1),
    JA_NEE_ONB_02 varchar (1),
    JA_NEE_ONB_03 varchar (1),
    JA_NEE_ONB_04 varchar (1),
    JA_NEE_ONB_05 varchar (1),
    JA_NEE_ONB_06 varchar (1),
    JA_NEE_ONB_07 varchar (1),
    JA_NEE_ONB_08 varchar (1),
    JA_NEE_ONB_09 varchar (1),
    JA_NEE_ONB_10 varchar (1),
    JA_NEE_ONB_11 varchar (1),
    JA_NEE_ONB_12 varchar (1),
    JA_NEE_ONB_13 varchar (1),
    JA_NEE_ONB_14 varchar (1),
    JA_NEE_ONB_15 varchar (1),
    JA_NEE_ONB_16 varchar (1),
    JA_NEE_ONB_17 varchar (1),
    JA_NEE_ONB_18 varchar (1),
    JA_NEE_ONB_19 varchar (1),
    JA_NEE_ONB_20 varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    NUMERIEK_01 integer,
    NUMERIEK_02 integer,
    NUMERIEK_03 integer,
    NUMERIEK_04 integer,
    NUMERIEK_05 integer,
    NUMERIEK_06 integer,
    NUMERIEK_07 integer,
    NUMERIEK_08 integer,
    NUMERIEK_09 integer,
    NUMERIEK_10 integer,
    NUMERIEK_11 integer,
    NUMERIEK_12 integer,
    NUMERIEK_13 integer,
    NUMERIEK_14 integer,
    NUMERIEK_15 integer,
    NUMERIEK_16 integer,
    NUMERIEK_17 integer,
    NUMERIEK_18 integer,
    NUMERIEK_19 integer,
    NUMERIEK_20 integer,
    NUMERIEK_21 integer,
    NUMERIEK_22 integer,
    NUMERIEK_23 integer,
    NUMERIEK_24 integer,
    NUMERIEK_25 integer,
    NUMERIEK_26 integer,
    NUMERIEK_27 integer,
    NUMERIEK_28 integer,
    NUMERIEK_29 integer,
    NUMERIEK_30 integer,
    NUMERIEK_31 integer,
    NUMERIEK_32 integer,
    NUMERIEK_33 integer,
    NUMERIEK_34 integer,
    NUMERIEK_35 integer,
    NUMERIEK_36 integer,
    NUMERIEK_37 integer,
    NUMERIEK_38 integer,
    NUMERIEK_39 integer,
    NUMERIEK_40 integer,
    OPTIONBUTTON_01 varchar (60),
    OPTIONBUTTON_02 varchar (60),
    OPTIONBUTTON_03 varchar (60),
    OPTIONBUTTON_04 varchar (60),
    OPTIONBUTTON_05 varchar (60),
    OPTIONBUTTON_06 varchar (60),
    OPTIONBUTTON_07 varchar (60),
    OPTIONBUTTON_08 varchar (60),
    OPTIONBUTTON_09 varchar (60),
    OPTIONBUTTON_10 varchar (60),
    OPTIONBUTTON_11 varchar (60),
    OPTIONBUTTON_12 varchar (60),
    OPTIONBUTTON_13 varchar (60),
    OPTIONBUTTON_14 varchar (60),
    OPTIONBUTTON_15 varchar (60),
    OPTIONBUTTON_16 varchar (60),
    OPTIONBUTTON_17 varchar (60),
    OPTIONBUTTON_18 varchar (60),
    OPTIONBUTTON_19 varchar (60),
    OPTIONBUTTON_20 varchar (60),
    TEKSTBLOK_01 varchar (2048),
    TEKSTBLOK_02 varchar (2048),
    TEKSTBLOK_03 varchar (2048),
    TEKSTBLOK_04 varchar (2048),
    TEKSTBLOK_05 varchar (2048),
    TEKSTBLOK_06 varchar (2048),
    TEKSTBLOK_07 varchar (2048),
    TEKSTBLOK_08 varchar (2048),
    TEKSTBLOK_09 varchar (2048),
    TEKSTBLOK_10 varchar (2048),
    VARCHAR_60_01 varchar (60),
    VARCHAR_60_02 varchar (60),
    VARCHAR_60_03 varchar (60),
    VARCHAR_60_04 varchar (60),
    VARCHAR_60_05 varchar (60),
    VARCHAR_60_06 varchar (60),
    VARCHAR_60_07 varchar (60),
    VARCHAR_60_08 varchar (60),
    VARCHAR_60_09 varchar (60),
    VARCHAR_60_10 varchar (60),
    VARCHAR_60_11 varchar (60),
    VARCHAR_60_12 varchar (60),
    VARCHAR_60_13 varchar (60),
    VARCHAR_60_14 varchar (60),
    VARCHAR_60_15 varchar (60),
    VARCHAR_60_16 varchar (60),
    VARCHAR_60_17 varchar (60),
    VARCHAR_60_18 varchar (60),
    VARCHAR_60_19 varchar (60),
    VARCHAR_60_20 varchar (60),
    VARCHAR_60_21 varchar (60),
    VARCHAR_60_22 varchar (60),
    VARCHAR_60_23 varchar (60),
    VARCHAR_60_24 varchar (60),
    VARCHAR_60_25 varchar (60),
    VARCHAR_60_26 varchar (60),
    VARCHAR_60_27 varchar (60),
    VARCHAR_60_28 varchar (60),
    VARCHAR_60_29 varchar (60),
    VARCHAR_60_30 varchar (60),
    VARCHAR_60_31 varchar (60),
    VARCHAR_60_32 varchar (60),
    VARCHAR_60_33 varchar (60),
    VARCHAR_60_34 varchar (60),
    VARCHAR_60_35 varchar (60),
    VARCHAR_60_36 varchar (60),
    VARCHAR_60_37 varchar (60),
    VARCHAR_60_38 varchar (60),
    VARCHAR_60_39 varchar (60),
    VARCHAR_60_40 varchar (60),
    VGS_ID integer,
    VVG_VKM_VAR_GEGEVENS_DOS varchar (1),
    VVG_VKM_VAR_GEGEVENS_PRG varchar (1),
    VVG_VKT_ID integer,
    VVG_DOS_ID integer
);

    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_01 is 'BEDRAG_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_02 is 'BEDRAG_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_03 is 'BEDRAG_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_04 is 'BEDRAG_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_05 is 'BEDRAG_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_06 is 'BEDRAG_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_07 is 'BEDRAG_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_08 is 'BEDRAG_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_09 is 'BEDRAG_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_10 is 'BEDRAG_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_11 is 'BEDRAG_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_12 is 'BEDRAG_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_13 is 'BEDRAG_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_14 is 'BEDRAG_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_15 is 'BEDRAG_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_16 is 'BEDRAG_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_17 is 'BEDRAG_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_18 is 'BEDRAG_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_19 is 'BEDRAG_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_20 is 'BEDRAG_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_21 is 'BEDRAG_21';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_22 is 'BEDRAG_22';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_23 is 'BEDRAG_23';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_24 is 'BEDRAG_24';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_25 is 'BEDRAG_25';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_26 is 'BEDRAG_26';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_27 is 'BEDRAG_27';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_28 is 'BEDRAG_28';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_29 is 'BEDRAG_29';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_30 is 'BEDRAG_30';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_31 is 'BEDRAG_31';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_32 is 'BEDRAG_32';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_33 is 'BEDRAG_33';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_34 is 'BEDRAG_34';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_35 is 'BEDRAG_35';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_36 is 'BEDRAG_36';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_37 is 'BEDRAG_37';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_38 is 'BEDRAG_38';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_39 is 'BEDRAG_39';
    comment on column VKM_VAR_GEGEVENS_TCMG.BEDRAG_40 is 'BEDRAG_40';
    comment on column VKM_VAR_GEGEVENS_TCMG.Creatie_dat is 'CREATIE_DAT';
    comment on column VKM_VAR_GEGEVENS_TCMG.Creatie_user is 'CREATIE_USER';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_01 is 'DATUM_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_02 is 'DATUM_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_03 is 'DATUM_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_04 is 'DATUM_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_05 is 'DATUM_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_06 is 'DATUM_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_07 is 'DATUM_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_08 is 'DATUM_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_09 is 'DATUM_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_10 is 'DATUM_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_11 is 'DATUM_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_12 is 'DATUM_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_13 is 'DATUM_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_14 is 'DATUM_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_15 is 'DATUM_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_16 is 'DATUM_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_17 is 'DATUM_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_18 is 'DATUM_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_19 is 'DATUM_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_20 is 'DATUM_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.DATUM_AANMAAK is 'DATUM_AANMAAK';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_01 is 'DROPDOWNLIST_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_02 is 'DROPDOWNLIST_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_03 is 'DROPDOWNLIST_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_04 is 'DROPDOWNLIST_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_05 is 'DROPDOWNLIST_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_06 is 'DROPDOWNLIST_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_07 is 'DROPDOWNLIST_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_08 is 'DROPDOWNLIST_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_09 is 'DROPDOWNLIST_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_10 is 'DROPDOWNLIST_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_11 is 'DROPDOWNLIST_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_12 is 'DROPDOWNLIST_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_13 is 'DROPDOWNLIST_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_14 is 'DROPDOWNLIST_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_15 is 'DROPDOWNLIST_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_16 is 'DROPDOWNLIST_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_17 is 'DROPDOWNLIST_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_18 is 'DROPDOWNLIST_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_19 is 'DROPDOWNLIST_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_20 is 'DROPDOWNLIST_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_21 is 'DROPDOWNLIST_21';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_22 is 'DROPDOWNLIST_22';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_23 is 'DROPDOWNLIST_23';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_24 is 'DROPDOWNLIST_24';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_25 is 'DROPDOWNLIST_25';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_26 is 'DROPDOWNLIST_26';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_27 is 'DROPDOWNLIST_27';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_28 is 'DROPDOWNLIST_28';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_29 is 'DROPDOWNLIST_29';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_30 is 'DROPDOWNLIST_30';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_31 is 'DROPDOWNLIST_31';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_32 is 'DROPDOWNLIST_32';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_33 is 'DROPDOWNLIST_33';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_34 is 'DROPDOWNLIST_34';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_35 is 'DROPDOWNLIST_35';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_36 is 'DROPDOWNLIST_36';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_37 is 'DROPDOWNLIST_37';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_38 is 'DROPDOWNLIST_38';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_39 is 'DROPDOWNLIST_39';
    comment on column VKM_VAR_GEGEVENS_TCMG.DROPDOWNLIST_40 is 'DROPDOWNLIST_40';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_01 is 'INT_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_02 is 'INT_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_03 is 'INT_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_04 is 'INT_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_05 is 'INT_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_06 is 'INT_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_07 is 'INT_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_08 is 'INT_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_09 is 'INT_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_10 is 'INT_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_11 is 'INT_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_12 is 'INT_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_13 is 'INT_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_14 is 'INT_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_15 is 'INT_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_16 is 'INT_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_17 is 'INT_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_18 is 'INT_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_19 is 'INT_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_20 is 'INT_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_21 is 'INT_21';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_22 is 'INT_22';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_23 is 'INT_23';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_24 is 'INT_24';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_25 is 'INT_25';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_26 is 'INT_26';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_27 is 'INT_27';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_28 is 'INT_28';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_29 is 'INT_29';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_30 is 'INT_30';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_31 is 'INT_31';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_32 is 'INT_32';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_33 is 'INT_33';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_34 is 'INT_34';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_35 is 'INT_35';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_36 is 'INT_36';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_37 is 'INT_37';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_38 is 'INT_38';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_39 is 'INT_39';
    comment on column VKM_VAR_GEGEVENS_TCMG.INT_40 is 'INT_40';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_01 is 'JA_NEE_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_02 is 'JA_NEE_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_03 is 'JA_NEE_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_04 is 'JA_NEE_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_05 is 'JA_NEE_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_06 is 'JA_NEE_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_07 is 'JA_NEE_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_08 is 'JA_NEE_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_09 is 'JA_NEE_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_10 is 'JA_NEE_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_11 is 'JA_NEE_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_12 is 'JA_NEE_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_13 is 'JA_NEE_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_14 is 'JA_NEE_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_15 is 'JA_NEE_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_16 is 'JA_NEE_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_17 is 'JA_NEE_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_18 is 'JA_NEE_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_19 is 'JA_NEE_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_20 is 'JA_NEE_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_21 is 'JA_NEE_21';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_22 is 'JA_NEE_22';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_23 is 'JA_NEE_23';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_24 is 'JA_NEE_24';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_25 is 'JA_NEE_25';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_26 is 'JA_NEE_26';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_27 is 'JA_NEE_27';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_28 is 'JA_NEE_28';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_29 is 'JA_NEE_29';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_30 is 'JA_NEE_30';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_01 is 'JA_NEE_NVT_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_02 is 'JA_NEE_NVT_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_03 is 'JA_NEE_NVT_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_04 is 'JA_NEE_NVT_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_05 is 'JA_NEE_NVT_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_06 is 'JA_NEE_NVT_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_07 is 'JA_NEE_NVT_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_08 is 'JA_NEE_NVT_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_09 is 'JA_NEE_NVT_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_10 is 'JA_NEE_NVT_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_11 is 'JA_NEE_NVT_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_12 is 'JA_NEE_NVT_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_13 is 'JA_NEE_NVT_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_14 is 'JA_NEE_NVT_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_15 is 'JA_NEE_NVT_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_16 is 'JA_NEE_NVT_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_17 is 'JA_NEE_NVT_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_18 is 'JA_NEE_NVT_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_19 is 'JA_NEE_NVT_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_NVT_20 is 'JA_NEE_NVT_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_01 is 'JA_NEE_ONB_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_02 is 'JA_NEE_ONB_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_03 is 'JA_NEE_ONB_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_04 is 'JA_NEE_ONB_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_05 is 'JA_NEE_ONB_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_06 is 'JA_NEE_ONB_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_07 is 'JA_NEE_ONB_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_08 is 'JA_NEE_ONB_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_09 is 'JA_NEE_ONB_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_10 is 'JA_NEE_ONB_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_11 is 'JA_NEE_ONB_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_12 is 'JA_NEE_ONB_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_13 is 'JA_NEE_ONB_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_14 is 'JA_NEE_ONB_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_15 is 'JA_NEE_ONB_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_16 is 'JA_NEE_ONB_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_17 is 'JA_NEE_ONB_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_18 is 'JA_NEE_ONB_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_19 is 'JA_NEE_ONB_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.JA_NEE_ONB_20 is 'JA_NEE_ONB_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column VKM_VAR_GEGEVENS_TCMG.Mutatie_user is 'MUTATIE_USER';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_01 is 'NUMERIEK_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_02 is 'NUMERIEK_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_03 is 'NUMERIEK_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_04 is 'NUMERIEK_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_05 is 'NUMERIEK_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_06 is 'NUMERIEK_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_07 is 'NUMERIEK_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_08 is 'NUMERIEK_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_09 is 'NUMERIEK_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_10 is 'NUMERIEK_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_11 is 'NUMERIEK_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_12 is 'NUMERIEK_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_13 is 'NUMERIEK_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_14 is 'NUMERIEK_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_15 is 'NUMERIEK_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_16 is 'NUMERIEK_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_17 is 'NUMERIEK_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_18 is 'NUMERIEK_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_19 is 'NUMERIEK_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_20 is 'NUMERIEK_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_21 is 'NUMERIEK_21';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_22 is 'NUMERIEK_22';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_23 is 'NUMERIEK_23';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_24 is 'NUMERIEK_24';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_25 is 'NUMERIEK_25';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_26 is 'NUMERIEK_26';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_27 is 'NUMERIEK_27';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_28 is 'NUMERIEK_28';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_29 is 'NUMERIEK_29';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_30 is 'NUMERIEK_30';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_31 is 'NUMERIEK_31';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_32 is 'NUMERIEK_32';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_33 is 'NUMERIEK_33';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_34 is 'NUMERIEK_34';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_35 is 'NUMERIEK_35';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_36 is 'NUMERIEK_36';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_37 is 'NUMERIEK_37';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_38 is 'NUMERIEK_38';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_39 is 'NUMERIEK_39';
    comment on column VKM_VAR_GEGEVENS_TCMG.NUMERIEK_40 is 'NUMERIEK_40';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_01 is 'OPTIONBUTTON_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_02 is 'OPTIONBUTTON_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_03 is 'OPTIONBUTTON_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_04 is 'OPTIONBUTTON_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_05 is 'OPTIONBUTTON_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_06 is 'OPTIONBUTTON_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_07 is 'OPTIONBUTTON_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_08 is 'OPTIONBUTTON_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_09 is 'OPTIONBUTTON_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_10 is 'OPTIONBUTTON_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_11 is 'OPTIONBUTTON_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_12 is 'OPTIONBUTTON_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_13 is 'OPTIONBUTTON_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_14 is 'OPTIONBUTTON_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_15 is 'OPTIONBUTTON_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_16 is 'OPTIONBUTTON_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_17 is 'OPTIONBUTTON_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_18 is 'OPTIONBUTTON_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_19 is 'OPTIONBUTTON_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.OPTIONBUTTON_20 is 'OPTIONBUTTON_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_01 is 'TEKSTBLOK_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_02 is 'TEKSTBLOK_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_03 is 'TEKSTBLOK_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_04 is 'TEKSTBLOK_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_05 is 'TEKSTBLOK_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_06 is 'TEKSTBLOK_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_07 is 'TEKSTBLOK_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_08 is 'TEKSTBLOK_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_09 is 'TEKSTBLOK_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.TEKSTBLOK_10 is 'TEKSTBLOK_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_01 is 'VARCHAR_60_01';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_02 is 'VARCHAR_60_02';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_03 is 'VARCHAR_60_03';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_04 is 'VARCHAR_60_04';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_05 is 'VARCHAR_60_05';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_06 is 'VARCHAR_60_06';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_07 is 'VARCHAR_60_07';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_08 is 'VARCHAR_60_08';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_09 is 'VARCHAR_60_09';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_10 is 'VARCHAR_60_10';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_11 is 'VARCHAR_60_11';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_12 is 'VARCHAR_60_12';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_13 is 'VARCHAR_60_13';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_14 is 'VARCHAR_60_14';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_15 is 'VARCHAR_60_15';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_16 is 'VARCHAR_60_16';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_17 is 'VARCHAR_60_17';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_18 is 'VARCHAR_60_18';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_19 is 'VARCHAR_60_19';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_20 is 'VARCHAR_60_20';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_21 is 'VARCHAR_60_21';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_22 is 'VARCHAR_60_22';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_23 is 'VARCHAR_60_23';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_24 is 'VARCHAR_60_24';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_25 is 'VARCHAR_60_25';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_26 is 'VARCHAR_60_26';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_27 is 'VARCHAR_60_27';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_28 is 'VARCHAR_60_28';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_29 is 'VARCHAR_60_29';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_30 is 'VARCHAR_60_30';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_31 is 'VARCHAR_60_31';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_32 is 'VARCHAR_60_32';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_33 is 'VARCHAR_60_33';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_34 is 'VARCHAR_60_34';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_35 is 'VARCHAR_60_35';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_36 is 'VARCHAR_60_36';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_37 is 'VARCHAR_60_37';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_38 is 'VARCHAR_60_38';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_39 is 'VARCHAR_60_39';
    comment on column VKM_VAR_GEGEVENS_TCMG.VARCHAR_60_40 is 'VARCHAR_60_40';
    comment on column VKM_VAR_GEGEVENS_TCMG.VGS_ID is 'VGS_ID';
    comment on column VKM_VAR_GEGEVENS_TCMG.VVG_VKM_VAR_GEGEVENS_DOS is 'VKM_VAR_GEGEVENS_DOS';
    comment on column VKM_VAR_GEGEVENS_TCMG.VVG_VKM_VAR_GEGEVENS_PRG is 'VKM_VAR_GEGEVENS_PRG';
    comment on column VKM_VAR_GEGEVENS_TCMG.VVG_VKT_ID is 'VKT_ID';
    comment on column VKM_VAR_GEGEVENS_TCMG.VVG_DOS_ID is 'DOS_ID';

DROP TABLE IF EXISTS VKM_VAR_KAART_TCMG ;
CREATE TABLE VKM_VAR_KAART_TCMG (
    Vkt_id integer,
    Kaart_naam varchar (30),
    Datum_start timestamp,
    Datum_einde timestamp,
    Omschrijving varchar (2000),
    Vkm_var_kaart_dos varchar (1),
    Vkm_var_kaart_prg varchar (1),
    Prg_id integer,
    Reg_id integer,
    Reg_id_regpar integer,
    Reg_Nr integer,
    Vkm_var_kaart_dos_prg varchar (1),
    Vkm_var_kaart_dos_reg varchar (1),
    Vkm_var_kaart_dos_regpar varchar (1),
    Geblokkeerd varchar (1),
    Copy_jn varchar (1)
);

    comment on column VKM_VAR_KAART_TCMG.Vkt_id is 'VKT_ID';
    comment on column VKM_VAR_KAART_TCMG.Kaart_naam is 'KAART_NAAM';
    comment on column VKM_VAR_KAART_TCMG.Datum_start is 'DATUM_START';
    comment on column VKM_VAR_KAART_TCMG.Datum_einde is 'DATUM_EINDE';
    comment on column VKM_VAR_KAART_TCMG.Omschrijving is 'OMSCHRIJVING';
    comment on column VKM_VAR_KAART_TCMG.Vkm_var_kaart_dos is 'VKM_VAR_KAART_DOS';
    comment on column VKM_VAR_KAART_TCMG.Vkm_var_kaart_prg is 'VKM_VAR_KAART_PRG';
    comment on column VKM_VAR_KAART_TCMG.Prg_id is 'PRG_ID';
    comment on column VKM_VAR_KAART_TCMG.Reg_id is 'REG_ID';
    comment on column VKM_VAR_KAART_TCMG.Reg_id_regpar is 'REG_ID_REGPAR';
    comment on column VKM_VAR_KAART_TCMG.Reg_Nr is 'REG_NR';
    comment on column VKM_VAR_KAART_TCMG.Vkm_var_kaart_dos_prg is 'VKM_VAR_KAART_DOS_PRG';
    comment on column VKM_VAR_KAART_TCMG.Vkm_var_kaart_dos_reg is 'VKM_VAR_KAART_DOS_REG';
    comment on column VKM_VAR_KAART_TCMG.Vkm_var_kaart_dos_regpar is 'VKM_VAR_KAART_DOS_REGPAR';
    comment on column VKM_VAR_KAART_TCMG.Geblokkeerd is 'GEBLOKKEERD';
    comment on column VKM_VAR_KAART_TCMG.Copy_jn is 'COPY_JN';

