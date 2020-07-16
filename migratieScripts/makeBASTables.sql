DROP TABLE IF EXISTS BAS_AOM_ACTIE;
CREATE TABLE BAS_AOM_ACTIE (
    techId INTEGER PRIMARY KEY,
    Actie_cd varchar (3),
    Actie_oms varchar (60),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_AOM_ACTIE.Actie_cd is 'ACTIE_CD';
    comment on column BAS_AOM_ACTIE.Actie_oms is 'ACTIE_OMS';
    comment on column BAS_AOM_ACTIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_AOM_ACTIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_AOM_ACTIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_AOM_ACTIE.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_AOM_TRA_ACTIE;
CREATE TABLE BAS_AOM_TRA_ACTIE (
    techId INTEGER PRIMARY KEY,
    Actie_cd varchar (3),
    Bgt_cd varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Tra_cd varchar (3)
);

    comment on column BAS_AOM_TRA_ACTIE.Actie_cd is 'ACTIE_CD';
    comment on column BAS_AOM_TRA_ACTIE.Bgt_cd is 'BGT_CD';
    comment on column BAS_AOM_TRA_ACTIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_AOM_TRA_ACTIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_AOM_TRA_ACTIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_AOM_TRA_ACTIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_AOM_TRA_ACTIE.Tra_cd is 'TRA_CD';

DROP TABLE IF EXISTS BAS_AOM_TRANSACTIETYPE;
CREATE TABLE BAS_AOM_TRANSACTIETYPE (
    techId INTEGER PRIMARY KEY,
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

    comment on column BAS_AOM_TRANSACTIETYPE.Beleidsadministratie_jn is 'BELEIDSADMINISTRATIE_JN';
    comment on column BAS_AOM_TRANSACTIETYPE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_AOM_TRANSACTIETYPE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_AOM_TRANSACTIETYPE.Geldstroom_jn is 'GELDSTROOM_JN';
    comment on column BAS_AOM_TRANSACTIETYPE.Mdw_mandaat_jn is 'MDW_MANDAAT_JN';
    comment on column BAS_AOM_TRANSACTIETYPE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_AOM_TRANSACTIETYPE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_AOM_TRANSACTIETYPE.Tra_cd is 'TRA_CD';
    comment on column BAS_AOM_TRANSACTIETYPE.Tra_oms is 'TRA_OMS';
    comment on column BAS_AOM_TRANSACTIETYPE.Tra_stop is 'TRA_STOP';

DROP TABLE IF EXISTS BAS_BTM_BETALING;
CREATE TABLE BAS_BTM_BETALING (
    techId INTEGER PRIMARY KEY,
    Rel_id bigint,
    Tra_id bigint,
    Reg_cd varchar (20),
    Dos_cd varchar (10),
    Bedrag numeric(26,6),
    Bedrag_nlg numeric(26,6),
    Omschrijving varchar (64),
    Naam_begunstigde varchar (60),
    Betalingskenmerk varchar (5),
    Plaats varchar (80),
    Aanleverdatum timestamp,
    Status varchar (1),
    Betaalrun_id bigint,
    Bron varchar (4),
    Invoerdatum timestamp,
    Mdw_id bigint,
    Betaling_id bigint,
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

    comment on column BAS_BTM_BETALING.Rel_id is 'REL_ID';
    comment on column BAS_BTM_BETALING.Tra_id is 'TRA_ID';
    comment on column BAS_BTM_BETALING.Reg_cd is 'REG_CD';
    comment on column BAS_BTM_BETALING.Dos_cd is 'DOS_CD';
    comment on column BAS_BTM_BETALING.Bedrag is 'BEDRAG';
    comment on column BAS_BTM_BETALING.Bedrag_nlg is 'BEDRAG_NLG';
    comment on column BAS_BTM_BETALING.Omschrijving is 'OMSCHRIJVING';
    comment on column BAS_BTM_BETALING.Naam_begunstigde is 'NAAM_BEGUNSTIGDE';
    comment on column BAS_BTM_BETALING.Betalingskenmerk is 'BETALINGSKENMERK';
    comment on column BAS_BTM_BETALING.Plaats is 'PLAATS';
    comment on column BAS_BTM_BETALING.Aanleverdatum is 'AANLEVERDATUM';
    comment on column BAS_BTM_BETALING.Status is 'STATUS';
    comment on column BAS_BTM_BETALING.Betaalrun_id is 'BETAALRUN_ID';
    comment on column BAS_BTM_BETALING.Bron is 'BRON';
    comment on column BAS_BTM_BETALING.Invoerdatum is 'INVOERDATUM';
    comment on column BAS_BTM_BETALING.Mdw_id is 'MDW_ID';
    comment on column BAS_BTM_BETALING.Betaling_id is 'BETALING_ID';
    comment on column BAS_BTM_BETALING.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_BTM_BETALING.Creatie_user is 'CREATIE_USER';
    comment on column BAS_BTM_BETALING.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_BTM_BETALING.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_BTM_BETALING.Iban is 'IBAN';
    comment on column BAS_BTM_BETALING.Bic is 'BIC';
    comment on column BAS_BTM_BETALING.Beg_bic is 'BEG_BIC';
    comment on column BAS_BTM_BETALING.Beg_iban is 'BEG_IBAN';
    comment on column BAS_BTM_BETALING.Sepa_betaling_indicatie is 'SEPA_BETALING_INDICATIE';
    comment on column BAS_BTM_BETALING.Parkeer_valutadatum is 'PARKEER_VALUTADATUM';
    comment on column BAS_BTM_BETALING.Betalingsverzoeknummer is 'BETALINGSVERZOEKNUMMER';
    comment on column BAS_BTM_BETALING.Betaal_datum is 'BETAAL_DATUM';
    comment on column BAS_BTM_BETALING.On_hold_jn is 'ON_HOLD_JN';
    comment on column BAS_BTM_BETALING.Sepa_xsd_bevinding is 'SEPA_XSD_BEVINDING';

DROP TABLE IF EXISTS BAS_BTM_HIST_BETALING;
CREATE TABLE BAS_BTM_HIST_BETALING (
    techId INTEGER PRIMARY KEY,
    Rel_id bigint,
    Tra_id bigint,
    Reg_cd varchar (20),
    Dos_cd varchar (20),
    Bedrag numeric(26,6),
    Bedrag_nlg numeric(26,6),
    Omschrijving varchar (64),
    naam_begunstigde varchar (60),
    Plaats varchar (30),
    Rekeningnummer bigint,
    Senterrekening bigint,
    Aanleverdatum timestamp,
    Betaalrun_id bigint,
    Bron varchar (4),
    Valutadatum timestamp,
    Invoerdatum timestamp,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Mdw_id bigint,
    Betalingskenmerk varchar (5),
    Iban varchar (34),
    Bic varchar (11),
    Beg_bic varchar (11),
    Beg_iban varchar (34),
    Sepa_betaling_indicatie varchar (1),
    Parkeer_valutadatum timestamp,
    Betalingsverzoeknummer varchar (40)
);

    comment on column BAS_BTM_HIST_BETALING.Rel_id is 'REL_ID';
    comment on column BAS_BTM_HIST_BETALING.Tra_id is 'TRA_ID';
    comment on column BAS_BTM_HIST_BETALING.Reg_cd is 'REG_CD';
    comment on column BAS_BTM_HIST_BETALING.Dos_cd is 'DOS_CD';
    comment on column BAS_BTM_HIST_BETALING.Bedrag is 'BEDRAG';
    comment on column BAS_BTM_HIST_BETALING.Bedrag_nlg is 'BEDRAG_NLG';
    comment on column BAS_BTM_HIST_BETALING.Omschrijving is 'OMSCHRIJVING';
    comment on column BAS_BTM_HIST_BETALING.naam_begunstigde is 'NAAM_BEGUNSTIGDE';
    comment on column BAS_BTM_HIST_BETALING.Plaats is 'PLAATS';
    comment on column BAS_BTM_HIST_BETALING.Rekeningnummer is 'REKENINGNUMMER';
    comment on column BAS_BTM_HIST_BETALING.Senterrekening is 'SENTERREKENING';
    comment on column BAS_BTM_HIST_BETALING.Aanleverdatum is 'AANLEVERDATUM';
    comment on column BAS_BTM_HIST_BETALING.Betaalrun_id is 'BETAALRUN_ID';
    comment on column BAS_BTM_HIST_BETALING.Bron is 'BRON';
    comment on column BAS_BTM_HIST_BETALING.Valutadatum is 'VALUTADATUM';
    comment on column BAS_BTM_HIST_BETALING.Invoerdatum is 'INVOERDATUM';
    comment on column BAS_BTM_HIST_BETALING.Creatie_user is 'CREATIE_USER';
    comment on column BAS_BTM_HIST_BETALING.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_BTM_HIST_BETALING.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_BTM_HIST_BETALING.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_BTM_HIST_BETALING.Mdw_id is 'MDW_ID';
    comment on column BAS_BTM_HIST_BETALING.Betalingskenmerk is 'BETALINGSKENMERK';
    comment on column BAS_BTM_HIST_BETALING.Iban is 'IBAN';
    comment on column BAS_BTM_HIST_BETALING.Bic is 'BIC';
    comment on column BAS_BTM_HIST_BETALING.Beg_bic is 'BEG_BIC';
    comment on column BAS_BTM_HIST_BETALING.Beg_iban is 'BEG_IBAN';
    comment on column BAS_BTM_HIST_BETALING.Sepa_betaling_indicatie is 'SEPA_BETALING_INDICATIE';
    comment on column BAS_BTM_HIST_BETALING.Parkeer_valutadatum is 'PARKEER_VALUTADATUM';
    comment on column BAS_BTM_HIST_BETALING.Betalingsverzoeknummer is 'BETALINGSVERZOEKNUMMER';

DROP TABLE IF EXISTS BAS_COR_BERICHT;
CREATE TABLE BAS_COR_BERICHT (
    techId INTEGER PRIMARY KEY,
    Cor_id bigint,
    Ed_bericht_id bigint,
    Afzender_id bigint,
    Ontvanger_id bigint,
    Inkomend varchar (1),
    Handtekening_ok varchar (1),
    Ondertekenaar_id bigint,
    Onderwerp varchar (256),
    Inhoud varchar (2048),
    Certserienummer varchar (50),
    Batch_status bigint,
    Status_overzetten_bericht bigint,
    Ingezien varchar (1),
    Plattetekst varchar (8000),
    Status_verzending varchar (1),
    Archief_cor_id bigint,
    Bron varchar (10),
    Org_cor_id bigint
);

    comment on column BAS_COR_BERICHT.Cor_id is 'COR_ID';
    comment on column BAS_COR_BERICHT.Ed_bericht_id is 'ED_BERICHT_ID';
    comment on column BAS_COR_BERICHT.Afzender_id is 'AFZENDER_ID';
    comment on column BAS_COR_BERICHT.Ontvanger_id is 'ONTVANGER_ID';
    comment on column BAS_COR_BERICHT.Inkomend is 'INKOMEND';
    comment on column BAS_COR_BERICHT.Handtekening_ok is 'HANDTEKENING_OK';
    comment on column BAS_COR_BERICHT.Ondertekenaar_id is 'ONDERTEKENAAR_ID';
    comment on column BAS_COR_BERICHT.Onderwerp is 'ONDERWERP';
    comment on column BAS_COR_BERICHT.Inhoud is 'INHOUD';
    comment on column BAS_COR_BERICHT.Certserienummer is 'CERTSERIENUMMER';
    comment on column BAS_COR_BERICHT.Batch_status is 'BATCH_STATUS';
    comment on column BAS_COR_BERICHT.Status_overzetten_bericht is 'STATUS_OVERZETTEN_BERICHT';
    comment on column BAS_COR_BERICHT.Ingezien is 'INGEZIEN';
    comment on column BAS_COR_BERICHT.Plattetekst is 'PLATTETEKST';
    comment on column BAS_COR_BERICHT.Status_verzending is 'STATUS_VERZENDING';
    comment on column BAS_COR_BERICHT.Archief_cor_id is 'ARCHIEF_COR_ID';
    comment on column BAS_COR_BERICHT.Bron is 'BRON';
    comment on column BAS_COR_BERICHT.Org_cor_id is 'ORG_COR_ID';

DROP TABLE IF EXISTS BAS_COR_COR_PARAAF;
CREATE TABLE BAS_COR_COR_PARAAF (
    techId INTEGER PRIMARY KEY,
    Acc_id bigint,
    Acc_rol_cd varchar (3),
    Acc_vaste_paraaf_jn varchar (1),
    Afgehandeld_JN varchar (1),
    Akkoord varchar (1),
    Cor_bedrag numeric(24,6),
    Cor_id bigint,
    Creatie_dat timestamp,
    Creatie_ok_JN varchar (1),
    Creatie_user varchar (30),
    Datum_Akkoord timestamp,
    Email_JN varchar (1),
    Mandaat_ok_JN varchar (1),
    Max_bedrag numeric(24,6),
    Mdw_id bigint,
    Mdw_id_doorvoerder bigint,
    Mdw_id_oorspronkelijk bigint,
    Mdw_mandaat_JN varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rol_cd varchar (3),
    Rol_ok_JN varchar (1),
    Rol_volg_cd varchar (1),
    Toelichting varchar (2000),
    Type_paraaf varchar (1),
    Vaste_paraaf varchar (1),
    Volgorde smallint
);

    comment on column BAS_COR_COR_PARAAF.Acc_id is 'ACC_ID';
    comment on column BAS_COR_COR_PARAAF.Acc_rol_cd is 'ACC_ROL_CD';
    comment on column BAS_COR_COR_PARAAF.Acc_vaste_paraaf_jn is 'ACC_VASTE_PARAAF_JN';
    comment on column BAS_COR_COR_PARAAF.Afgehandeld_JN is 'AFGEHANDELD_JN';
    comment on column BAS_COR_COR_PARAAF.Akkoord is 'AKKOORD';
    comment on column BAS_COR_COR_PARAAF.Cor_bedrag is 'COR_BEDRAG';
    comment on column BAS_COR_COR_PARAAF.Cor_id is 'COR_ID';
    comment on column BAS_COR_COR_PARAAF.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_COR_COR_PARAAF.Creatie_ok_JN is 'CREATIE_OK_JN';
    comment on column BAS_COR_COR_PARAAF.Creatie_user is 'CREATIE_USER';
    comment on column BAS_COR_COR_PARAAF.Datum_Akkoord is 'DATUM_AKKOORD';
    comment on column BAS_COR_COR_PARAAF.Email_JN is 'EMAIL_JN';
    comment on column BAS_COR_COR_PARAAF.Mandaat_ok_JN is 'MANDAAT_OK_JN';
    comment on column BAS_COR_COR_PARAAF.Max_bedrag is 'MAX_BEDRAG';
    comment on column BAS_COR_COR_PARAAF.Mdw_id is 'MDW_ID';
    comment on column BAS_COR_COR_PARAAF.Mdw_id_doorvoerder is 'MDW_ID_DOORVOERDER';
    comment on column BAS_COR_COR_PARAAF.Mdw_id_oorspronkelijk is 'MDW_ID_OORSPRONKELIJK';
    comment on column BAS_COR_COR_PARAAF.Mdw_mandaat_JN is 'MDW_MANDAAT_JN';
    comment on column BAS_COR_COR_PARAAF.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_COR_COR_PARAAF.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_COR_COR_PARAAF.Rol_cd is 'ROL_CD';
    comment on column BAS_COR_COR_PARAAF.Rol_ok_JN is 'ROL_OK_JN';
    comment on column BAS_COR_COR_PARAAF.Rol_volg_cd is 'ROL_VOLG_CD';
    comment on column BAS_COR_COR_PARAAF.Toelichting is 'TOELICHTING';
    comment on column BAS_COR_COR_PARAAF.Type_paraaf is 'TYPE_PARAAF';
    comment on column BAS_COR_COR_PARAAF.Vaste_paraaf is 'VASTE_PARAAF_JN';
    comment on column BAS_COR_COR_PARAAF.Volgorde is 'VOLGORDE';

DROP TABLE IF EXISTS BAS_COR_COR_SRT;
CREATE TABLE BAS_COR_COR_SRT (
    techId INTEGER PRIMARY KEY,
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

    comment on column BAS_COR_COR_SRT.Cst_cd is 'CST_CD';
    comment on column BAS_COR_COR_SRT.Cst_oms is 'CST_OMS';
    comment on column BAS_COR_COR_SRT.Cst_template is 'CST_TEMPLATE';
    comment on column BAS_COR_COR_SRT.Regeling is 'REGELING';
    comment on column BAS_COR_COR_SRT.Thema is 'THEMA';
    comment on column BAS_COR_COR_SRT.Dossier is 'DOSSIER';
    comment on column BAS_COR_COR_SRT.Project is 'PROJECT';
    comment on column BAS_COR_COR_SRT.Organisatie is 'ORGANISATIE';
    comment on column BAS_COR_COR_SRT.Bezoek is 'BEZOEK';
    comment on column BAS_COR_COR_SRT.Transactie is 'TRANSACTIE';
    comment on column BAS_COR_COR_SRT.Uitgaand_inkomend is 'UITGAAND_INKOMEND';
    comment on column BAS_COR_COR_SRT.Juridisch is 'JURIDISCH';
    comment on column BAS_COR_COR_SRT.Stempel_sj is 'STEMPEL_SJ';
    comment on column BAS_COR_COR_SRT.Bob_brief is 'BOB_BRIEF';
    comment on column BAS_COR_COR_SRT.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_COR_COR_SRT.Creatie_user is 'CREATIE_USER';
    comment on column BAS_COR_COR_SRT.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_COR_COR_SRT.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_COR_COR_SRT.Vorderingbeheer is 'VORDERINGBEHEER';
    comment on column BAS_COR_COR_SRT.Externe_naam is 'EXTERNE_NAAM';
    comment on column BAS_COR_COR_SRT.Correctie_jn is 'CORRECTIE_JN';
    comment on column BAS_COR_COR_SRT.Intern_jn is 'INTERN_JN';

DROP TABLE IF EXISTS BAS_COR_CORRESPONDENTIE_HIST;
CREATE TABLE BAS_COR_CORRESPONDENTIE_HIST (
    techId INTEGER PRIMARY KEY,
    Cor_id bigint,
    Volg_nr bigint,
    Correctie_code varchar (5),
    Oude_verzenddatum timestamp,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column BAS_COR_CORRESPONDENTIE_HIST.Cor_id is 'COR_ID';
    comment on column BAS_COR_CORRESPONDENTIE_HIST.Volg_nr is 'VOLG_NR';
    comment on column BAS_COR_CORRESPONDENTIE_HIST.Correctie_code is 'CORRECTIE_CODE';
    comment on column BAS_COR_CORRESPONDENTIE_HIST.Oude_verzenddatum is 'OUDE_VERZENDDATUM';
    comment on column BAS_COR_CORRESPONDENTIE_HIST.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_COR_CORRESPONDENTIE_HIST.Creatie_user is 'CREATIE_USER';
    comment on column BAS_COR_CORRESPONDENTIE_HIST.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_COR_CORRESPONDENTIE_HIST.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_COR_CORRESPONDENTIE;
CREATE TABLE BAS_COR_CORRESPONDENTIE (
    techId INTEGER PRIMARY KEY,
    Actie_datum timestamp,
    Afgedrukt_JN varchar (1),
    Afgehandeld varchar (1),
    Archiveren varchar (1),
    Bas_da_melding varchar (2048),
    Behandelingsronde smallint,
    Bezoeknr smallint,
    Bos_status varchar (2),
    Cbi_id bigint,
    Certhoud_contpers_intern bigint,
    Cor_bericht varchar (1),
    Cor_id bigint,
    Cor_id_van bigint,
    Cor_volgnr_ids integer,
    Crd_id bigint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Cst_cd varchar (8),
    Datum timestamp,
    Datum_ok varchar (1),
    Datum_stempel_sj timestamp,
    Digitaal_archiveren varchar (3),
    Doc_directory varchar (100),
    Doc_naam varchar (40),
    Dos_id bigint,
    Dossiergroep_cor_id bigint,
    Email_JN varchar (1),
    Genereer_JN varchar (1),
    Html varchar (2048),
    Ids_id bigint,
    Indieningsdatum timestamp,
    Ingetrokken varchar (1),
    Jz_id bigint,
    Kenmerk varchar (40),
    Lijst_cd varchar (20),
    Mandaat_rol_cd varchar (3),
    Mdw_cd_email varchar (30),
    Mdw_id_contpers_intern bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    naam_organisatie varchar (625),
    Ok_JN varchar (1),
    Omschrijving varchar (2000),
    Open_brief varchar (1),
    Org_id bigint,
    Pcs_id bigint,
    Plandatum timestamp,
    Prioriteit bigint,
    Reg_id bigint,
    Rel_id bigint,
    Rol_cd varchar (3),
    Run_id bigint,
    Select_export varchar (1),
    Senterkenmerk varchar (40),
    Text_inhoud varchar (2048),
    Vernieuw_paraaf varchar (1),
    Verzenddatum timestamp,
    Verzonden_elektronisch_JN varchar (1),
    Verzonden_per_post_JN varchar (1),
    Vst_volgnr bigint,
    Wordbrief_akkoord varchar (1),
    Xml_inhoud varchar (2048),
    Xsl varchar (2048)
);

    comment on column BAS_COR_CORRESPONDENTIE.Actie_datum is 'ACTIE_DATUM';
    comment on column BAS_COR_CORRESPONDENTIE.Afgedrukt_JN is 'AFGEDRUKT_JN';
    comment on column BAS_COR_CORRESPONDENTIE.Afgehandeld is 'AFGEHANDELD';
    comment on column BAS_COR_CORRESPONDENTIE.Archiveren is 'ARCHIVEREN_JN';
    comment on column BAS_COR_CORRESPONDENTIE.Bas_da_melding is 'BAS_DA_MELDING';
    comment on column BAS_COR_CORRESPONDENTIE.Behandelingsronde is 'BEHANDELINGSRONDE';
    comment on column BAS_COR_CORRESPONDENTIE.Bezoeknr is 'BEZOEKNR';
    comment on column BAS_COR_CORRESPONDENTIE.Bos_status is 'BOS_STATUS';
    comment on column BAS_COR_CORRESPONDENTIE.Cbi_id is 'CBI_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Certhoud_contpers_intern is 'CERTHOUD_CONTPERS_INTERN';
    comment on column BAS_COR_CORRESPONDENTIE.Cor_bericht is 'COR_BERICHT';
    comment on column BAS_COR_CORRESPONDENTIE.Cor_id is 'COR_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Cor_id_van is 'COR_ID_VAN';
    comment on column BAS_COR_CORRESPONDENTIE.Cor_volgnr_ids is 'COR_VOLGNR_IDS';
    comment on column BAS_COR_CORRESPONDENTIE.Crd_id is 'CRD_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_COR_CORRESPONDENTIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_COR_CORRESPONDENTIE.Cst_cd is 'CST_CD';
    comment on column BAS_COR_CORRESPONDENTIE.Datum is 'DATUM';
    comment on column BAS_COR_CORRESPONDENTIE.Datum_ok is 'DATUM_OK';
    comment on column BAS_COR_CORRESPONDENTIE.Datum_stempel_sj is 'DATUM_STEMPEL_SJ';
    comment on column BAS_COR_CORRESPONDENTIE.Digitaal_archiveren is 'DIGITAAL_ARCHIVEREN';
    comment on column BAS_COR_CORRESPONDENTIE.Doc_directory is 'DOC_DIRECTORY';
    comment on column BAS_COR_CORRESPONDENTIE.Doc_naam is 'DOC_NAAM';
    comment on column BAS_COR_CORRESPONDENTIE.Dos_id is 'DOS_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Dossiergroep_cor_id is 'DOSSIERGROEP_COR_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Email_JN is 'EMAIL_JN';
    comment on column BAS_COR_CORRESPONDENTIE.Genereer_JN is 'GENEREER_JN';
    comment on column BAS_COR_CORRESPONDENTIE.Html is 'HTML';
    comment on column BAS_COR_CORRESPONDENTIE.Ids_id is 'IDS_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Indieningsdatum is 'INDIENINGSDATUM';
    comment on column BAS_COR_CORRESPONDENTIE.Ingetrokken is 'INGETROKKEN';
    comment on column BAS_COR_CORRESPONDENTIE.Jz_id is 'JZ_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Kenmerk is 'KENMERK';
    comment on column BAS_COR_CORRESPONDENTIE.Lijst_cd is 'LIJST_CD';
    comment on column BAS_COR_CORRESPONDENTIE.Mandaat_rol_cd is 'MANDAAT_ROL_CD';
    comment on column BAS_COR_CORRESPONDENTIE.Mdw_cd_email is 'MDW_CD_EMAIL';
    comment on column BAS_COR_CORRESPONDENTIE.Mdw_id_contpers_intern is 'MDW_ID_CONTPERS_INTERN';
    comment on column BAS_COR_CORRESPONDENTIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_COR_CORRESPONDENTIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_COR_CORRESPONDENTIE.naam_organisatie is 'NAAM_ORGANISATIE';
    comment on column BAS_COR_CORRESPONDENTIE.Ok_JN is 'OK_JN';
    comment on column BAS_COR_CORRESPONDENTIE.Omschrijving is 'OMSCHRIJVING';
    comment on column BAS_COR_CORRESPONDENTIE.Open_brief is 'OPEN_BRIEF';
    comment on column BAS_COR_CORRESPONDENTIE.Org_id is 'ORG_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Pcs_id is 'PCS_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Plandatum is 'PLANDATUM';
    comment on column BAS_COR_CORRESPONDENTIE.Prioriteit is 'PRIORITEIT';
    comment on column BAS_COR_CORRESPONDENTIE.Reg_id is 'REG_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Rel_id is 'REL_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Rol_cd is 'ROL_CD';
    comment on column BAS_COR_CORRESPONDENTIE.Run_id is 'RUN_ID';
    comment on column BAS_COR_CORRESPONDENTIE.Select_export is 'SELECT_EXPORT';
    comment on column BAS_COR_CORRESPONDENTIE.Senterkenmerk is 'SENTERKENMERK';
    comment on column BAS_COR_CORRESPONDENTIE.Text_inhoud is 'TEXT_INHOUD';
    comment on column BAS_COR_CORRESPONDENTIE.Vernieuw_paraaf is 'VERNIEUW_PARAAF';
    comment on column BAS_COR_CORRESPONDENTIE.Verzenddatum is 'VERZENDDATUM';
    comment on column BAS_COR_CORRESPONDENTIE.Verzonden_elektronisch_JN is 'VERZONDEN_ELEKTRONISCH_JN';
    comment on column BAS_COR_CORRESPONDENTIE.Verzonden_per_post_JN is 'VERZONDEN_PER_POST_JN';
    comment on column BAS_COR_CORRESPONDENTIE.Vst_volgnr is 'VST_VOLGNR';
    comment on column BAS_COR_CORRESPONDENTIE.Wordbrief_akkoord is 'WORDBRIEF_ACCOORD';
    comment on column BAS_COR_CORRESPONDENTIE.Xml_inhoud is 'XML_INHOUD';
    comment on column BAS_COR_CORRESPONDENTIE.Xsl is 'XSL_FO';

DROP TABLE IF EXISTS BAS_COR_CST_SET_CST;
CREATE TABLE BAS_COR_CST_SET_CST (
    techId INTEGER PRIMARY KEY,
    Reg_id bigint,
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

    comment on column BAS_COR_CST_SET_CST.Reg_id is 'REG_ID';
    comment on column BAS_COR_CST_SET_CST.Cst_cd is 'CST_CD';
    comment on column BAS_COR_CST_SET_CST.Cst_cd_2 is 'CST_CD_2';
    comment on column BAS_COR_CST_SET_CST.Verzenddatum_jn is 'VERZENDDATUM_JN';
    comment on column BAS_COR_CST_SET_CST.Afgehandeld_jn is 'AFGEHANDELD_JN';
    comment on column BAS_COR_CST_SET_CST.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_COR_CST_SET_CST.Creatie_user is 'CREATIE_USER';
    comment on column BAS_COR_CST_SET_CST.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_COR_CST_SET_CST.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_COR_CST_SET_CST.Genereer_jn is 'GENEREER_JN';

DROP TABLE IF EXISTS BAS_COR_PARAAF;
CREATE TABLE BAS_COR_PARAAF (
    techId INTEGER PRIMARY KEY,
    Reg_id bigint,
    Cst_cd varchar (8),
    Type_paraaf varchar (1),
    Rol_cd varchar (3),
    Mdw_rol_niveau varchar (3),
    Volgorde smallint,
    Vaste_paraaf_jn varchar (1),
    Rol_volg_cd varchar (1)
);

    comment on column BAS_COR_PARAAF.Reg_id is 'REG_ID';
    comment on column BAS_COR_PARAAF.Cst_cd is 'CST_CD';
    comment on column BAS_COR_PARAAF.Type_paraaf is 'TYPE_PARAAF';
    comment on column BAS_COR_PARAAF.Rol_cd is 'ROL_CD';
    comment on column BAS_COR_PARAAF.Mdw_rol_niveau is 'MDW_ROL_NIVEAU';
    comment on column BAS_COR_PARAAF.Volgorde is 'VOLGORDE';
    comment on column BAS_COR_PARAAF.Vaste_paraaf_jn is 'VASTE_PARAAF_JN';
    comment on column BAS_COR_PARAAF.Rol_volg_cd is 'ROL_VOLG_CD';

DROP TABLE IF EXISTS BAS_COR_REACTIE_BIJ_COR_SRT;
CREATE TABLE BAS_COR_REACTIE_BIJ_COR_SRT (
    techId INTEGER PRIMARY KEY,
    Cluster_nr smallint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Cst_cd varchar (8),
    Mdw_id varchar (12),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Per_cluster varchar (1),
    Prg_id bigint,
    Prioriteit bigint,
    Reactie_cd varchar (3),
    Reg_id bigint,
    Rol_cd varchar (3),
    Sts_cd varchar (3),
    Termijn integer,
    Termijn_weken smallint
);

    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Cluster_nr is 'CLUSTER_NR';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Creatie_user is 'CREATIE_USER';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Cst_cd is 'CST_CD';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Mdw_id is 'MDW_ID';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Per_cluster is 'PER_CLUSTER';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Prg_id is 'PRG_ID';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Prioriteit is 'PRIORITEIT';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Reactie_cd is 'REACTIE_CD';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Reg_id is 'REG_ID';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Rol_cd is 'ROL_CD';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Sts_cd is 'STS_CD';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Termijn is 'TERMIJN';
    comment on column BAS_COR_REACTIE_BIJ_COR_SRT.Termijn_weken is 'TERMIJN_WEKEN';

DROP TABLE IF EXISTS BAS_COR_REGLSPEC_COR;
CREATE TABLE BAS_COR_REGLSPEC_COR (
    techId INTEGER PRIMARY KEY,
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
    Prioriteit bigint,
    Reg_id bigint,
    Verzenddatum_vullen varchar (1)
);

    comment on column BAS_COR_REGLSPEC_COR.Bos_bezorging is 'BOS_BEZORGING';
    comment on column BAS_COR_REGLSPEC_COR.Crea_back is 'CREA_BACK';
    comment on column BAS_COR_REGLSPEC_COR.Create_merge_jn is 'CREATE_MERGE_JN';
    comment on column BAS_COR_REGLSPEC_COR.Create_merge_single is 'CREATE_MERGE_SINGLE';
    comment on column BAS_COR_REGLSPEC_COR.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_COR_REGLSPEC_COR.Creatie_user is 'CREATIE_USER';
    comment on column BAS_COR_REGLSPEC_COR.Cst_cd is 'CST_CD';
    comment on column BAS_COR_REGLSPEC_COR.Doc_template is 'DOC_TEMPLATE';
    comment on column BAS_COR_REGLSPEC_COR.Externe_naam is 'EXTERNE_NAAM';
    comment on column BAS_COR_REGLSPEC_COR.Geblokkeerd_jn is 'GEBLOKKEERD_JN';
    comment on column BAS_COR_REGLSPEC_COR.Ic_controle is 'IC_CONTROLE';
    comment on column BAS_COR_REGLSPEC_COR.Job is 'JOB';
    comment on column BAS_COR_REGLSPEC_COR.Lijst_cd is 'LIJST_CD';
    comment on column BAS_COR_REGLSPEC_COR.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_COR_REGLSPEC_COR.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_COR_REGLSPEC_COR.Prf_cd is 'PRF_CD';
    comment on column BAS_COR_REGLSPEC_COR.Print_jn is 'PRINT_JN';
    comment on column BAS_COR_REGLSPEC_COR.Prioriteit is 'PRIORITEIT';
    comment on column BAS_COR_REGLSPEC_COR.Reg_id is 'REG_ID';
    comment on column BAS_COR_REGLSPEC_COR.Verzenddatum_vullen is 'VERZENDDATUM_VULLEN';

DROP TABLE IF EXISTS BAS_COR_TRANSACTIEGROEP_BIJ_BRF;
CREATE TABLE BAS_COR_TRANSACTIEGROEP_BIJ_BRF (
    techId INTEGER PRIMARY KEY,
    Cor_id bigint,
    Tra_id bigint,
    Dos_id bigint,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_COR_TRANSACTIEGROEP_BIJ_BRF.Cor_id is 'COR_ID';
    comment on column BAS_COR_TRANSACTIEGROEP_BIJ_BRF.Tra_id is 'TRA_ID';
    comment on column BAS_COR_TRANSACTIEGROEP_BIJ_BRF.Dos_id is 'DOS_ID';
    comment on column BAS_COR_TRANSACTIEGROEP_BIJ_BRF.Creatie_user is 'CREATIE_USER';
    comment on column BAS_COR_TRANSACTIEGROEP_BIJ_BRF.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_COR_TRANSACTIEGROEP_BIJ_BRF.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_COR_TRANSACTIEGROEP_BIJ_BRF.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_DAM_CONT_BIJ_DLN_COM_ADR;
CREATE TABLE BAS_DAM_CONT_BIJ_DLN_COM_ADR (
    techId INTEGER PRIMARY KEY,
    creatie_dat timestamp,
    Creatie_user varchar (30),
    Dcs_id bigint,
    Dos_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Per_id bigint,
    Rav_id bigint,
    Rca_id bigint,
    Rel_id bigint,
    Rol_cd varchar (3),
    Rol_cd_van varchar (3),
    Vst_volgnr bigint
);

    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Dcs_id is 'DCS_ID';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Per_id is 'PER_ID';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Rav_id is 'RAV_ID';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Rca_id is 'RCA_ID';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Rel_id is 'REL_ID_VAN';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Rol_cd is 'ROL_CD';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Rol_cd_van is 'ROL_CD_VAN';
    comment on column BAS_DAM_CONT_BIJ_DLN_COM_ADR.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_DAM_CONTACT_BIJ_DEELNAME;
CREATE TABLE BAS_DAM_CONTACT_BIJ_DEELNAME (
    techId INTEGER PRIMARY KEY,
    Certhoud_id bigint,
    Correspondent varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Per_id bigint,
    Rechten_id varchar (1),
    Rel_id bigint,
    Rol_cd varchar (3),
    Rol_cd_van varchar (3),
    Vst_volgnr bigint
);

    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Certhoud_id is 'CERTHOUD_ID';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Correspondent is 'CORRESPONDENT';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Per_id is 'PER_ID';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Rechten_id is 'RECHTEN_ID';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Rel_id is 'REL_ID_VAN';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Rol_cd is 'ROL_CD';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Rol_cd_van is 'ROL_CD_VAN';
    comment on column BAS_DAM_CONTACT_BIJ_DEELNAME.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_DAM_DECLARATIE;
CREATE TABLE BAS_DAM_DECLARATIE (
    techId INTEGER PRIMARY KEY,
    Adviesaangevraagd numeric(24,6),
    Adviesaantaluren bigint,
    Advieshandtoegekend numeric(24,6),
    Adviesrente numeric(24,6),
    Adviesrentedatum timestamp,
    Adviestoegekend numeric(24,6),
    Besluit_cor_id bigint,
    Cor_id bigint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Datumberekening timestamp,
    Dos_id bigint,
    Herstel varchar (1),
    Inboedeltuinaangevraagd numeric(24,6),
    Inboedeltuinhandtoegekend numeric(24,6),
    Inboedeltuinrente numeric(24,6),
    inboedeltuinrentedatum timestamp,
    Inboedeltuintoegekend numeric(24,6),
    Inkomstendervingaangevraagd numeric(24,6),
    Inkomstendervinghandtoegekend numeric(24,6),
    Inkomstendervingrente numeric(24,6),
    Inkomstendervingrentedatum timestamp,
    Inkomstendervingtoegekend numeric(24,6),
    Juridischaangevraagd numeric(24,6),
    Juridischaantaluren bigint,
    Juridischhandtoegekend numeric(24,6),
    Juridischrente numeric(24,6),
    Juridischrentedatum timestamp,
    Juridischtarief numeric(24,6),
    Juridischtoegekend numeric(24,6),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (2048),
    Oorzaak varchar (2048),
    Opslagaangevraagd numeric(24,6),
    Opslagaantalweken bigint,
    Opslaghandtoegekend numeric(24,6),
    opslagrente numeric(24,6),
    Opslagrentedatum timestamp,
    Opslagtoegekend numeric(24,6),
    Overlastaangevraagd numeric(24,6),
    Overlasthandtoegekend numeric(24,6),
    Overlastrente numeric(24,6),
    Overlasttoegekend numeric(24,6),
    Overlastvergoeding varchar (1),
    Overnachtenaangevraagd numeric(24,6),
    Overnachtenaantalnachten bigint,
    Overnachtenaantalpersonen varchar (20),
    Overnachtenhandtoegekend numeric(24,6),
    Overnachtenrente numeric(24,6),
    Overnachtenrentedatum timestamp,
    Overnachtentoegekend numeric(24,6),
    Reisaangevraagd numeric(24,6),
    Reisaantalkm bigint,
    Reishandtoegekend numeric(24,6),
    Reisov numeric(24,6),
    Reisrente numeric(24,6),
    Reisrentedatum timestamp,
    Reistoegekend numeric(24,6),
    Schoonmaakaangevraagd numeric(24,6),
    Schoonmaakhandtoegekend numeric(24,6),
    Schoonmaakrente numeric(24,6),
    Schoonmaaktoegekend numeric(24,6),
    Schoonmaakvergoeding varchar (1),
    Thuisblijfherstelaangevraagd numeric(24,6),
    Thuisblijfherstelaantaldagdeel bigint,
    Thuisblijfherstelhandtoegekend numeric(24,6),
    Thuisblijfherstelrente numeric(24,6),
    Thuisblijfhersteltoegekend numeric(24,6),
    Thuisblijfherstelvergoeding varchar (1),
    Thuisblijfopnameaangevraagd numeric(24,6),
    Thuisblijfopnamehandtoegekend numeric(24,6),
    Thuisblijfopnamerente numeric(24,6),
    Thuisblijfopnametoegekend numeric(24,6),
    Thuisblijfopnamevergoeding varchar (1),
    Totaalrente numeric(24,6),
    Totaaltoegekend numeric(24,6),
    Verhuisaangevraagd numeric(24,6),
    Verhuishandtoegekend numeric(24,6),
    Verhuisrente numeric(24,6),
    Verhuisrentedatum timestamp,
    Verhuistoegekend numeric(24,6),
    Zorgaangevraagd numeric(24,6),
    Zorghandtoegekend numeric(24,6),
    Zorgrente numeric(24,6),
    Zorgrentedatum timestamp,
    Zorgtoegekend numeric(24,6)
);

    comment on column BAS_DAM_DECLARATIE.Adviesaangevraagd is 'ADVIESAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Adviesaantaluren is 'ADVIESAANTALUREN';
    comment on column BAS_DAM_DECLARATIE.Advieshandtoegekend is 'ADVIESHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Adviesrente is 'ADVIESRENTE';
    comment on column BAS_DAM_DECLARATIE.Adviesrentedatum is 'ADVIESRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Adviestoegekend is 'ADVIESTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Besluit_cor_id is 'BESLUIT_COR_ID';
    comment on column BAS_DAM_DECLARATIE.Cor_id is 'COR_ID';
    comment on column BAS_DAM_DECLARATIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DECLARATIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DECLARATIE.Datumberekening is 'DATUMBEREKENING';
    comment on column BAS_DAM_DECLARATIE.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_DECLARATIE.Herstel is 'HERSTEL';
    comment on column BAS_DAM_DECLARATIE.Inboedeltuinaangevraagd is 'INBOEDELTUINAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Inboedeltuinhandtoegekend is 'INBOEDELTUINHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Inboedeltuinrente is 'INBOEDELTUINRENTE';
    comment on column BAS_DAM_DECLARATIE.inboedeltuinrentedatum is 'INBOEDELTUINRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Inboedeltuintoegekend is 'INBOEDELTUINTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Inkomstendervingaangevraagd is 'INKOMSTENDERVINGAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Inkomstendervinghandtoegekend is 'INKOMSTENDERVINGHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Inkomstendervingrente is 'INKOMSTENDERVINGRENTE';
    comment on column BAS_DAM_DECLARATIE.Inkomstendervingrentedatum is 'INKOMSTENDERVINGRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Inkomstendervingtoegekend is 'INKOMSTENDERVINGTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Juridischaangevraagd is 'JURIDISCHAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Juridischaantaluren is 'JURIDISCHAANTALUREN';
    comment on column BAS_DAM_DECLARATIE.Juridischhandtoegekend is 'JURIDISCHHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Juridischrente is 'JURIDISCHRENTE';
    comment on column BAS_DAM_DECLARATIE.Juridischrentedatum is 'JURIDISCHRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Juridischtarief is 'JURIDISCHTARIEF';
    comment on column BAS_DAM_DECLARATIE.Juridischtoegekend is 'JURIDISCHTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_DECLARATIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_DECLARATIE.Notitie is 'NOTITIE';
    comment on column BAS_DAM_DECLARATIE.Oorzaak is 'OORZAAK';
    comment on column BAS_DAM_DECLARATIE.Opslagaangevraagd is 'OPSLAGAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Opslagaantalweken is 'OPSLAGAANTALWEKEN';
    comment on column BAS_DAM_DECLARATIE.Opslaghandtoegekend is 'OPSLAGHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.opslagrente is 'OPSLAGRENTE';
    comment on column BAS_DAM_DECLARATIE.Opslagrentedatum is 'OPSLAGRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Opslagtoegekend is 'OPSLAGTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Overlastaangevraagd is 'OVERLASTAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Overlasthandtoegekend is 'OVERLASTHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Overlastrente is 'OVERLASTRENTE';
    comment on column BAS_DAM_DECLARATIE.Overlasttoegekend is 'OVERLASTTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Overlastvergoeding is 'OVERLASTVERGOEDING';
    comment on column BAS_DAM_DECLARATIE.Overnachtenaangevraagd is 'OVERNACHTENAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Overnachtenaantalnachten is 'OVERNACHTENAANTALNACHTEN';
    comment on column BAS_DAM_DECLARATIE.Overnachtenaantalpersonen is 'OVERNACHTENAANTALPERSONEN';
    comment on column BAS_DAM_DECLARATIE.Overnachtenhandtoegekend is 'OVERNACHTENHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Overnachtenrente is 'OVERNACHTENRENTE';
    comment on column BAS_DAM_DECLARATIE.Overnachtenrentedatum is 'OVERNACHTENRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Overnachtentoegekend is 'OVERNACHTENTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Reisaangevraagd is 'REISAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Reisaantalkm is 'REISAANTALKM';
    comment on column BAS_DAM_DECLARATIE.Reishandtoegekend is 'REISHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Reisov is 'REISOV';
    comment on column BAS_DAM_DECLARATIE.Reisrente is 'REISRENTE';
    comment on column BAS_DAM_DECLARATIE.Reisrentedatum is 'REISRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Reistoegekend is 'REISTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Schoonmaakaangevraagd is 'SCHOONMAAKAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Schoonmaakhandtoegekend is 'SCHOONMAAKHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Schoonmaakrente is 'SCHOONMAAKRENTE';
    comment on column BAS_DAM_DECLARATIE.Schoonmaaktoegekend is 'SCHOONMAAKTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Schoonmaakvergoeding is 'SCHOONMAAKVERGOEDING';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfherstelaangevraagd is 'THUISBLIJFHERSTELAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfherstelaantaldagdeel is 'THUISBLIJFHERSTELAANTALDAGDEEL';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfherstelhandtoegekend is 'THUISBLIJFHERSTELHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfherstelrente is 'THUISBLIJFHERSTELRENTE';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfhersteltoegekend is 'THUISBLIJFHERSTELTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfherstelvergoeding is 'THUISBLIJFHERSTELVERGOEDING';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfopnameaangevraagd is 'THUISBLIJFOPNAMEAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfopnamehandtoegekend is 'THUISBLIJFOPNAMEHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfopnamerente is 'THUISBLIJFOPNAMERENTE';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfopnametoegekend is 'THUISBLIJFOPNAMETOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Thuisblijfopnamevergoeding is 'THUISBLIJFOPNAMEVERGOEDING';
    comment on column BAS_DAM_DECLARATIE.Totaalrente is 'TOTAALRENTE';
    comment on column BAS_DAM_DECLARATIE.Totaaltoegekend is 'TOTAALTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Verhuisaangevraagd is 'VERHUISAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Verhuishandtoegekend is 'VERHUISHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Verhuisrente is 'VERHUISRENTE';
    comment on column BAS_DAM_DECLARATIE.Verhuisrentedatum is 'VERHUISRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Verhuistoegekend is 'VERHUISTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Zorgaangevraagd is 'ZORGAANGEVRAAGD';
    comment on column BAS_DAM_DECLARATIE.Zorghandtoegekend is 'ZORGHANDTOEGEKEND';
    comment on column BAS_DAM_DECLARATIE.Zorgrente is 'ZORGRENTE';
    comment on column BAS_DAM_DECLARATIE.Zorgrentedatum is 'ZORGRENTEDATUM';
    comment on column BAS_DAM_DECLARATIE.Zorgtoegekend is 'ZORGTOEGEKEND';

DROP TABLE IF EXISTS BAS_DAM_DEELNAME_ADRES;
CREATE TABLE BAS_DAM_DEELNAME_ADRES (
    techId INTEGER PRIMARY KEY,
    Adressoort varchar (3),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dda_id bigint,
    Dos_id bigint,
    Kkr_afwijkend varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rae_id bigint,
    Ras_id bigint,
    Rel_id bigint,
    Rol_cd varchar (3),
    Vst_volgnr bigint
);

    comment on column BAS_DAM_DEELNAME_ADRES.Adressoort is 'ADRESSOORT';
    comment on column BAS_DAM_DEELNAME_ADRES.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DEELNAME_ADRES.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DEELNAME_ADRES.Dda_id is 'DDA_ID';
    comment on column BAS_DAM_DEELNAME_ADRES.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_DEELNAME_ADRES.Kkr_afwijkend is 'KKR_AFWIJKEND';
    comment on column BAS_DAM_DEELNAME_ADRES.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_DEELNAME_ADRES.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_DEELNAME_ADRES.Rae_id is 'RAE_ID';
    comment on column BAS_DAM_DEELNAME_ADRES.Ras_id is 'RAS_ID';
    comment on column BAS_DAM_DEELNAME_ADRES.Rel_id is 'REL_ID';
    comment on column BAS_DAM_DEELNAME_ADRES.Rol_cd is 'ROL_CD';
    comment on column BAS_DAM_DEELNAME_ADRES.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_DAM_DEELNAME_COM_ADRES;
CREATE TABLE BAS_DAM_DEELNAME_COM_ADRES (
    techId INTEGER PRIMARY KEY,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dda_id bigint,
    Dos_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rae_id bigint,
    Rca_id bigint,
    Rel_id bigint,
    Rol_cd varchar (3),
    Vst_volgnr bigint
);

    comment on column BAS_DAM_DEELNAME_COM_ADRES.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Dda_id is 'DDA_ID';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Rae_id is 'RAE_ID';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Rca_id is 'RCA_ID';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Rel_id is 'REL_ID';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Rol_cd is 'ROL_CD';
    comment on column BAS_DAM_DEELNAME_COM_ADRES.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_DAM_DEELNAME;
CREATE TABLE BAS_DAM_DEELNAME (
    techId INTEGER PRIMARY KEY,
    Afwijking_cd varchar (6),
    Bic varchar (11),
    Bic_cd varchar (8),
    Contract_cd varchar (30),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dam_project_deelname varchar (1),
    Deelnamenaam varchar (625),
    Dos_id bigint,
    Ed_deelnemer_id bigint,
    Edeelnemer_id bigint,
    Einddatum timestamp,
    Elektronisch_corresponderen_JN varchar (1),
    Fisc_eenheid varchar (1),
    Geclaimd numeric(26,6),
    Geclaimd_NLG numeric(26,6),
    Gedeclareerd numeric(26,6),
    Gedeclareerd_NLG numeric(26,6),
    Gerealiseerd numeric(26,6),
    Gerealiseerd_NLG numeric(26,6),
    Geschoond numeric(26,6),
    Geschoond_NLG numeric(26,6),
    IBAN varchar (34),
    Ingediend numeric(26,6),
    Ingediend_NLG numeric(26,6),
    Kkr_statutair varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Niet_sepa_betalen varchar (1),
    Org_id bigint,
    Org_naam varchar (625),
    Pom_ranking varchar (1),
    Rel_id bigint,
    Rel_id_rekening bigint,
    Rol_cd varchar (3),
    Startdatum timestamp,
    Totaal_decl_deelname numeric(26,6),
    Totaal_uitb_deelname numeric(26,6),
    Verklaring_gewenst_JN varchar (1),
    Vst_volgnr bigint
);

    comment on column BAS_DAM_DEELNAME.Afwijking_cd is 'AFWIJKING_CD';
    comment on column BAS_DAM_DEELNAME.Bic is 'BIC';
    comment on column BAS_DAM_DEELNAME.Bic_cd is 'BICCODE';
    comment on column BAS_DAM_DEELNAME.Contract_cd is 'CONTRACT_CD';
    comment on column BAS_DAM_DEELNAME.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DEELNAME.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DEELNAME.Dam_project_deelname is 'DAM_PROJECT_DEELNAME';
    comment on column BAS_DAM_DEELNAME.Deelnamenaam is 'DEELNAMENAAM';
    comment on column BAS_DAM_DEELNAME.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_DEELNAME.Ed_deelnemer_id is 'ED_DEELNEMER_ID';
    comment on column BAS_DAM_DEELNAME.Edeelnemer_id is 'EDEELNEMER_ID';
    comment on column BAS_DAM_DEELNAME.Einddatum is 'EINDDATUM';
    comment on column BAS_DAM_DEELNAME.Elektronisch_corresponderen_JN is 'ELEKTRONISCH_CORRESPONDEREN_JN';
    comment on column BAS_DAM_DEELNAME.Fisc_eenheid is 'FISC_EENHEID_JN';
    comment on column BAS_DAM_DEELNAME.Geclaimd is 'GECLAIMD';
    comment on column BAS_DAM_DEELNAME.Geclaimd_NLG is 'GECLAIMD_NLG';
    comment on column BAS_DAM_DEELNAME.Gedeclareerd is 'GEDECLAREERD';
    comment on column BAS_DAM_DEELNAME.Gedeclareerd_NLG is 'GEDECLAREERD_NLG';
    comment on column BAS_DAM_DEELNAME.Gerealiseerd is 'GEREALISEERD';
    comment on column BAS_DAM_DEELNAME.Gerealiseerd_NLG is 'GEREALISEERD_NLG';
    comment on column BAS_DAM_DEELNAME.Geschoond is 'GESCHOOND';
    comment on column BAS_DAM_DEELNAME.Geschoond_NLG is 'GESCHOOND_NLG';
    comment on column BAS_DAM_DEELNAME.IBAN is 'IBAN';
    comment on column BAS_DAM_DEELNAME.Ingediend is 'INGEDIEND';
    comment on column BAS_DAM_DEELNAME.Ingediend_NLG is 'INGEDIEND_NLG';
    comment on column BAS_DAM_DEELNAME.Kkr_statutair is 'KKR_STATUTAIR';
    comment on column BAS_DAM_DEELNAME.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_DEELNAME.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_DEELNAME.Niet_sepa_betalen is 'NIET_SEPA_BETALEN';
    comment on column BAS_DAM_DEELNAME.Org_id is 'ORG_ID';
    comment on column BAS_DAM_DEELNAME.Org_naam is 'ORG_NAAM';
    comment on column BAS_DAM_DEELNAME.Pom_ranking is 'POM_RANKING';
    comment on column BAS_DAM_DEELNAME.Rel_id is 'REL_ID';
    comment on column BAS_DAM_DEELNAME.Rel_id_rekening is 'REL_ID_REKENING';
    comment on column BAS_DAM_DEELNAME.Rol_cd is 'ROL_CD';
    comment on column BAS_DAM_DEELNAME.Startdatum is 'STARTDATUM';
    comment on column BAS_DAM_DEELNAME.Totaal_decl_deelname is 'TOTAAL_DECL_DEELNAME';
    comment on column BAS_DAM_DEELNAME.Totaal_uitb_deelname is 'TOTAAL_UITB_DEELNAME';
    comment on column BAS_DAM_DEELNAME.Verklaring_gewenst_JN is 'VERKLARING_GEWENST_JN';
    comment on column BAS_DAM_DEELNAME.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_DAM_DOS_BUDGETREGEL;
CREATE TABLE BAS_DAM_DOS_BUDGETREGEL (
    techId INTEGER PRIMARY KEY,
    Dos_id bigint,
    Tra_id bigint,
    Volgnummer bigint,
    Ovk_nr varchar (20),
    Rpt_nr bigint,
    Bgt_cd varchar (1),
    Verleend numeric(24,6),
    Ingetrokken numeric(24,6),
    Gedeclareerd numeric(24,6),
    Betaald numeric(24,6),
    Vastgesteld numeric(24,6),
    Openstaand numeric(24,6),
    Opeisbaar numeric(24,6),
    Def_verleend numeric(24,6),
    Def_ingetrokken numeric(24,6),
    Def_gedeclareerd numeric(24,6),
    Def_openstaand numeric(24,6),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rpe_datum_van timestamp,
    Neg_einddeclaratie numeric(24,6),
    Prg_id bigint,
    Reg_id bigint,
    Reg_nr smallint,
    Afl_neg_einddeclaratie numeric(24,6),
    Def_neg_einddeclaratie numeric(24,6),
    Cvk_id bigint,
    Vpl_volgnummer smallint,
    Rpt_nr_oud varchar (20),
    Per_Deelnemer varchar (1)
);

    comment on column BAS_DAM_DOS_BUDGETREGEL.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Tra_id is 'TRA_ID';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Volgnummer is 'VOLGNUMMER';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Ovk_nr is 'OVK_NR';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Rpt_nr is 'RPT_NR';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Bgt_cd is 'BGT_CD';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Verleend is 'VERLEEND';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Ingetrokken is 'INGETROKKEN';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Gedeclareerd is 'GEDECLAREERD';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Betaald is 'BETAALD';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Vastgesteld is 'VASTGESTELD';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Openstaand is 'OPENSTAAND';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Opeisbaar is 'OPEISBAAR';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Def_verleend is 'DEF_VERLEEND';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Def_ingetrokken is 'DEF_INGETROKKEN';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Def_gedeclareerd is 'DEF_GEDECLAREERD';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Def_openstaand is 'DEF_OPENSTAAND';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Rpe_datum_van is 'RPE_DATUM_VAN';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Neg_einddeclaratie is 'NEG_EINDDECLARATIE';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Prg_id is 'PRG_ID';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Reg_id is 'REG_ID';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Reg_nr is 'REG_NR';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Afl_neg_einddeclaratie is 'AFL_NEG_EINDDECLARATIE';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Def_neg_einddeclaratie is 'DEF_NEG_EINDDECLARATIE';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Cvk_id is 'CVK_ID';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Vpl_volgnummer is 'VPL_VOLGNUMMER';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Rpt_nr_oud is 'RPT_NR_OUD';
    comment on column BAS_DAM_DOS_BUDGETREGEL.Per_Deelnemer is 'PER_DEELNEMER';

DROP TABLE IF EXISTS BAS_DAM_DOSSIER_IN_GROEP;
CREATE TABLE BAS_DAM_DOSSIER_IN_GROEP (
    techId INTEGER PRIMARY KEY,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Ddg_id bigint,
    Dds_id bigint,
    Dos_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column BAS_DAM_DOSSIER_IN_GROEP.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DOSSIER_IN_GROEP.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DOSSIER_IN_GROEP.Ddg_id is 'DDG_ID';
    comment on column BAS_DAM_DOSSIER_IN_GROEP.Dds_id is 'DDS_ID';
    comment on column BAS_DAM_DOSSIER_IN_GROEP.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_DOSSIER_IN_GROEP.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_DOSSIER_IN_GROEP.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_DAM_DOSSIER_NOTITIE;
CREATE TABLE BAS_DAM_DOSSIER_NOTITIE (
    techId INTEGER PRIMARY KEY,
    Afgehandeld varchar (1),
    Bezoeknr smallint,
    Cor_id_no bigint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (2048),
    Notitietype_naam varchar (50),
    Rel_id bigint
);

    comment on column BAS_DAM_DOSSIER_NOTITIE.Afgehandeld is 'AFGEHANDELD';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Bezoeknr is 'BEZOEKNR';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Cor_id_no is 'COR_ID_NO';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Notitie is 'NOTITIE';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Notitietype_naam is 'NOTITIETYPE_NAAM';
    comment on column BAS_DAM_DOSSIER_NOTITIE.Rel_id is 'REL_ID';

DROP TABLE IF EXISTS BAS_DAM_DOSSIER;
CREATE TABLE BAS_DAM_DOSSIER (
    techId INTEGER PRIMARY KEY,
    Aangevraagd_bedrag numeric(26,6),
    Aantal_dagenopschorting bigint,
    Aantal_ICT_projecten smallint,
    Aantal_SO_projecten smallint,
    Aantal_SO_werknemers bigint,
    Aantal_SO_zlf smallint,
    Aanvang_dat timestamp,
    Aanvraag_volgnr integer,
    Aanvraagsoort varchar (10),
    Acceptatie_sts varchar (1),
    Afdrachtsvermindering varchar (1),
    Afhandeldatum timestamp,
    Afhandelwijze varchar (512),
    Afl_neg_einddeclaratie numeric(24,6),
    Akkoord_verlenen varchar (1),
    aut_verwerkt_imp varchar (1),
    Auth_id_indiener bigint,
    Auth_id_ondertekenaar bigint,
    Auth_prg_id bigint,
    BAS_advies varchar (512),
    Batchstatuscert varchar (1),
    Batchstatusref varchar (1),
    Batchstatusstat varchar (1),
    Behandelingsronde smallint,
    Beoordelingswijze varchar (4),
    Berekende_rente numeric(24,6),
    Beslissing_cd varchar (2),
    Checksum bigint,
    Classificatie varchar (10),
    Cluster_nr smallint,
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
    Dos_id bigint,
    Dos_id_aanvulling bigint,
    Dosprio bigint,
    ED_Aanvraag_id bigint,
    Eerste_jr_aflossing integer,
    Eind_dat timestamp,
    Eindmaand integer,
    Extern_aanvraag_id bigint,
    Extern_dossier_id bigint,
    Extrene_bron_cd varchar (10),
    Gecommitteerd_zegge varchar (100),
    Gem_uurloon numeric(24,6),
    Hand_bewerkt_imp varchar (1),
    Handtekening_ok varchar (1),
    Hoofd_dos_id bigint,
    Id_van_de_doos bigint,
    Id_van_de_doos_na_de_import bigint,
    Importlijst varchar (240),
    Indienings_dat timestamp,
    Indienings_tijd timestamp,
    Indienkanaal varchar (1),
    Ingezien varchar (1),
    Inkoopcat_cd varchar (6),
    Inleen_binnen_Fiscale_eenheid varchar (1),
    Meldingnummer_IRWA varchar (30),
    Jaar integer,
    Jaardossier_bron_dos_id bigint,
    Jaardossier_dos_id bigint,
    Korte_titel varchar (25),
    Krat_nr bigint,
    Laatste_jr_aflossing integer,
    Laatste_pcs_id bigint,
    Landnaam varchar (60),
    LB_nummer_komt_overeen varchar (1),
    Machtiging_JN varchar (1),
    Mdw_cd varchar (30),
    Mentorterugkoppeling varchar (1),
    Mutatie_dat timestamp,
    Mutatie_dat_vst timestamp,
    Mutatie_user varchar (30),
    Mutatie_user_vst varchar (30),
    Naar_batchrun bigint,
    Neg_einddeclaratie numeric(24,6),
    Notities varchar (2048),
    Octrooien integer,
    Offertebedrag numeric(26,6),
    Cerhoud_id_Ondertekenaar bigint,
    Ontvangstdatum timestamp,
    Oorspr_einddatum timestamp,
    Overige_subsidie varchar (1),
    Opdrachtvorm_cd varchar (3),
    Perc_verrekenen integer,
    Periode_nr smallint,
    Prioriteit smallint,
    Prioriteitsdatum timestamp,
    Projectomschrijving varchar (2048),
    Ranking integer,
    RDA_Afhandeling_forfaitair varchar (1),
    RDA_aangevraagd varchar (1),
    Referentie varchar (10),
    Reg_id bigint,
    Reg_nr smallint,
    Rel_id_Aanvrager bigint,
    Rente_perc numeric(7,2),
    Samenwerkingsverband1 varchar (1),
    Samenwerkingsverband2 varchar (1),
    SO_loon numeric(26,6),
    Begrote_SO_loonsom numeric(26,6),
    SO_uren bigint,
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
    Technisch_succes smallint,
    Technisch_Cor_id bigint,
    Titel varchar (200),
    Afgelost_op_onvoorw_hoofdsom numeric(26,6),
    Afgelost_op_onvoorw_rente numeric(26,6),
    Totaal_afgelost_op_hoofdsom numeric(26,6),
    Totaal_ontvangen_rente numeric(26,6),
    Totaal_bijgeschreven_rente numeric(26,6),
    Direct_opeisbare_vordering numeric(26,6),
    Direct_opeisbare_hoofdsom numeric(24,6),
    Direct_opeisbare_rente numeric(24,6),
    Totaal_gecommitteerd_bedrag numeric(26,6),
    Zegge_Totaal_gecommitteerd varchar (100),
    Totaal_gedeclareerd_bedrag numeric(26,6),
    Totaal_geschoonde_kosten numeric(24,6),
    Totale_hoofdsom numeric(26,6),
    Totaal_ingetrokken_bedrag numeric(24,6),
    Kwijtsch_onvoorw_hoofdsom numeric(26,6),
    Kwijtsch_onvoorw_rente numeric(26,6),
    Kwijtsch_direct_opeisbaar numeric(24,6),
    Kwijtsch_voorw_hoofdsom numeric(24,6),
    Kwijtsch_voorw_rente numeric(24,6),
    Totaal_kwijtgescholden_bedrag numeric(26,6),
    Totaal_openstaand_bedrag numeric(26,6),
    Direct_opeisbaar_gesteld numeric(26,6),
    Totaal_uitbetaald numeric(26,6),
    Totaal_verleend_bedrag numeric(24,6),
    Uitlening_binnen_Fisc_eenheid varchar (1),
    Uurloon_jaar integer,
    Vaststellen_batch varchar (1),
    Vergoedingsperc numeric(7,2),
    Volgnr_LB smallint,
    Voorlopig_gecommitteerd numeric(24,6),
    Voorlopig_gedeclareerd numeric(24,6),
    Vorig_aanvraag_bedrijf_nr bigint,
    Vorig_aanvraagjaar integer,
    Vorig_aanvraagnummer varchar (40),
    Vorie_aanvraagperiode smallint,
    Vorig_aanvraag_volgnr integer,
    Vaststelling_conform_aanvraag varchar (1),
    VV_Aanvraagnummer varchar (12),
    Wel_akkoord_niet_verlenen varchar (1),
    Aangeboden_aan_ZER varchar (1)
);

    comment on column BAS_DAM_DOSSIER.Aangevraagd_bedrag is 'AANGEVRAAGD_BEDRAG';
    comment on column BAS_DAM_DOSSIER.Aantal_dagenopschorting is 'AANTAL_DAGENOPSCHORTING';
    comment on column BAS_DAM_DOSSIER.Aantal_ICT_projecten is 'AANTAL_ICT_PROJECTEN';
    comment on column BAS_DAM_DOSSIER.Aantal_SO_projecten is 'AANTAL_SO_PROJECTEN';
    comment on column BAS_DAM_DOSSIER.Aantal_SO_werknemers is 'AANTAL_SO_WERKNEMERS';
    comment on column BAS_DAM_DOSSIER.Aantal_SO_zlf is 'AANTAL_SO_ZLF';
    comment on column BAS_DAM_DOSSIER.Aanvang_dat is 'AANVANG_DAT';
    comment on column BAS_DAM_DOSSIER.Aanvraag_volgnr is 'AANVRAAG_VOLG_NR';
    comment on column BAS_DAM_DOSSIER.Aanvraagsoort is 'AANVRAAGSOORT';
    comment on column BAS_DAM_DOSSIER.Acceptatie_sts is 'ACCEPTATIE_STS';
    comment on column BAS_DAM_DOSSIER.Afdrachtsvermindering is 'AFDRACHTSVERMINDERING';
    comment on column BAS_DAM_DOSSIER.Afhandeldatum is 'AFHANDELDATUM';
    comment on column BAS_DAM_DOSSIER.Afhandelwijze is 'AFHANDELWIJZE';
    comment on column BAS_DAM_DOSSIER.Afl_neg_einddeclaratie is 'AFL_NEG_EINDDECLARATIE';
    comment on column BAS_DAM_DOSSIER.Akkoord_verlenen is 'AKKOORD_VERLENEN';
    comment on column BAS_DAM_DOSSIER.aut_verwerkt_imp is 'AUT_VERWERKT_IMP';
    comment on column BAS_DAM_DOSSIER.Auth_id_indiener is 'AUTH_ID_INDIENER';
    comment on column BAS_DAM_DOSSIER.Auth_id_ondertekenaar is 'AUTH_ID_ONDERTEKENAAR';
    comment on column BAS_DAM_DOSSIER.Auth_prg_id is 'AUTH_PRG_ID';
    comment on column BAS_DAM_DOSSIER.BAS_advies is 'BAS_ADVIES';
    comment on column BAS_DAM_DOSSIER.Batchstatuscert is 'BATCHSTATUSCERT';
    comment on column BAS_DAM_DOSSIER.Batchstatusref is 'BATCHSTATUSREF';
    comment on column BAS_DAM_DOSSIER.Batchstatusstat is 'BATCHSTATUSSTAT';
    comment on column BAS_DAM_DOSSIER.Behandelingsronde is 'BEHANDELINGSRONDE';
    comment on column BAS_DAM_DOSSIER.Beoordelingswijze is 'BEOORDELINGSWIJZE';
    comment on column BAS_DAM_DOSSIER.Berekende_rente is 'BEREKENDE_RENTE';
    comment on column BAS_DAM_DOSSIER.Beslissing_cd is 'BESLISSING_CD';
    comment on column BAS_DAM_DOSSIER.Checksum is 'CHECKSUM';
    comment on column BAS_DAM_DOSSIER.Classificatie is 'CLASSIFICATIE';
    comment on column BAS_DAM_DOSSIER.Cluster_nr is 'CLUSTER_NR';
    comment on column BAS_DAM_DOSSIER.Controle_activiteit is 'CNTR_ACT';
    comment on column BAS_DAM_DOSSIER.Commercieel_perspectief is 'COMM_PERS';
    comment on column BAS_DAM_DOSSIER.Contractjaar is 'CONTRACTJAAR';
    comment on column BAS_DAM_DOSSIER.Conversiedossier is 'CONVERSIE_JN';
    comment on column BAS_DAM_DOSSIER.Correspondentie_via_email is 'CORRESPONDENTIE_VIA_EMAIL';
    comment on column BAS_DAM_DOSSIER.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DOSSIER.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DOSSIER.Jaardossier_WBSO is 'DAM_WBSO_JAARDOSSIER';
    comment on column BAS_DAM_DOSSIER.Datum_in is 'DATUM_IN';
    comment on column BAS_DAM_DOSSIER.Datum_renteberekening is 'DATUM_RENTEBEREKENING';
    comment on column BAS_DAM_DOSSIER.Datum_status is 'DATUM_STATUS';
    comment on column BAS_DAM_DOSSIER.Volgnr_diskette is 'DISK_VOLGNR';
    comment on column BAS_DAM_DOSSIER.Volgnr_diskette_na_import is 'DISK_VOLGNR_IMP';
    comment on column BAS_DAM_DOSSIER.Dos_cd is 'DOS_CD';
    comment on column BAS_DAM_DOSSIER.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_DOSSIER.Dos_id_aanvulling is 'DOS_ID_AANVULLING';
    comment on column BAS_DAM_DOSSIER.Dosprio is 'DOSPRIO';
    comment on column BAS_DAM_DOSSIER.ED_Aanvraag_id is 'ED_AANVRAAG_ID';
    comment on column BAS_DAM_DOSSIER.Eerste_jr_aflossing is 'EERSTE_JR_AFL';
    comment on column BAS_DAM_DOSSIER.Eind_dat is 'EIND_DAT';
    comment on column BAS_DAM_DOSSIER.Eindmaand is 'EINDMAAND';
    comment on column BAS_DAM_DOSSIER.Extern_aanvraag_id is 'EXTERN_AANVRAAG_ID';
    comment on column BAS_DAM_DOSSIER.Extern_dossier_id is 'EXTERN_DOSSIER_ID';
    comment on column BAS_DAM_DOSSIER.Extrene_bron_cd is 'EXTERNE_BRON_CD';
    comment on column BAS_DAM_DOSSIER.Gecommitteerd_zegge is 'GECOMMITTEERD_ZEGGE';
    comment on column BAS_DAM_DOSSIER.Gem_uurloon is 'GEM_UURLOON';
    comment on column BAS_DAM_DOSSIER.Hand_bewerkt_imp is 'HAND_BEWERKT_IMP';
    comment on column BAS_DAM_DOSSIER.Handtekening_ok is 'HANDTEKENING_OK';
    comment on column BAS_DAM_DOSSIER.Hoofd_dos_id is 'HOOFD_DOS_ID';
    comment on column BAS_DAM_DOSSIER.Id_van_de_doos is 'IDS_ID';
    comment on column BAS_DAM_DOSSIER.Id_van_de_doos_na_de_import is 'IDS_ID_IMP';
    comment on column BAS_DAM_DOSSIER.Importlijst is 'IMPORTLIJST';
    comment on column BAS_DAM_DOSSIER.Indienings_dat is 'INDIENINGS_DAT';
    comment on column BAS_DAM_DOSSIER.Indienings_tijd is 'INDIENINGS_TIJD';
    comment on column BAS_DAM_DOSSIER.Indienkanaal is 'INDIENKANAAL';
    comment on column BAS_DAM_DOSSIER.Ingezien is 'INGEZIEN';
    comment on column BAS_DAM_DOSSIER.Inkoopcat_cd is 'INKOOPCAT_CD';
    comment on column BAS_DAM_DOSSIER.Inleen_binnen_Fiscale_eenheid is 'INLEEN_FE_JN';
    comment on column BAS_DAM_DOSSIER.Meldingnummer_IRWA is 'IRWA_NR';
    comment on column BAS_DAM_DOSSIER.Jaar is 'JAAR';
    comment on column BAS_DAM_DOSSIER.Jaardossier_bron_dos_id is 'JAARDOSSIER_BRON_DOS_ID';
    comment on column BAS_DAM_DOSSIER.Jaardossier_dos_id is 'JAARDOSSIER_DOS_ID';
    comment on column BAS_DAM_DOSSIER.Korte_titel is 'KORTE_TITEL';
    comment on column BAS_DAM_DOSSIER.Krat_nr is 'KRAT_NR';
    comment on column BAS_DAM_DOSSIER.Laatste_jr_aflossing is 'LAATSTE_JR_AFL';
    comment on column BAS_DAM_DOSSIER.Laatste_pcs_id is 'LAATSTE_PCS_ID';
    comment on column BAS_DAM_DOSSIER.Landnaam is 'LANDNAAM';
    comment on column BAS_DAM_DOSSIER.LB_nummer_komt_overeen is 'LBNUMMERKOMTOVEREEN';
    comment on column BAS_DAM_DOSSIER.Machtiging_JN is 'MACHTIGING_JN';
    comment on column BAS_DAM_DOSSIER.Mdw_cd is 'MDW_CD';
    comment on column BAS_DAM_DOSSIER.Mentorterugkoppeling is 'MENTORTERUGKOPPELING';
    comment on column BAS_DAM_DOSSIER.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_DOSSIER.Mutatie_dat_vst is 'MUTATIE_DAT_VST';
    comment on column BAS_DAM_DOSSIER.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_DOSSIER.Mutatie_user_vst is 'MUTATIE_USER_VST';
    comment on column BAS_DAM_DOSSIER.Naar_batchrun is 'NAAR_RUN';
    comment on column BAS_DAM_DOSSIER.Neg_einddeclaratie is 'NEG_EINDDECLARATIE';
    comment on column BAS_DAM_DOSSIER.Notities is 'NOTITIES';
    comment on column BAS_DAM_DOSSIER.Octrooien is 'OCTROOIEN';
    comment on column BAS_DAM_DOSSIER.Offertebedrag is 'OFFERTEBEDRAG';
    comment on column BAS_DAM_DOSSIER.Cerhoud_id_Ondertekenaar is 'ONDERTEKENCERTHOUDID';
    comment on column BAS_DAM_DOSSIER.Ontvangstdatum is 'ONTVANGSTDATUM';
    comment on column BAS_DAM_DOSSIER.Oorspr_einddatum is 'OORSPR_EIND_DAT';
    comment on column BAS_DAM_DOSSIER.Overige_subsidie is 'OVERIGE_SUBS_JN';
    comment on column BAS_DAM_DOSSIER.Opdrachtvorm_cd is 'OVM_CD';
    comment on column BAS_DAM_DOSSIER.Perc_verrekenen is 'PERC_VERREKENEN';
    comment on column BAS_DAM_DOSSIER.Periode_nr is 'PERIODE_NR';
    comment on column BAS_DAM_DOSSIER.Prioriteit is 'PRIORITEIT';
    comment on column BAS_DAM_DOSSIER.Prioriteitsdatum is 'PRIORITEITSDATUM';
    comment on column BAS_DAM_DOSSIER.Projectomschrijving is 'PRO_OMS';
    comment on column BAS_DAM_DOSSIER.Ranking is 'RANKING';
    comment on column BAS_DAM_DOSSIER.RDA_Afhandeling_forfaitair is 'RDA_AFH_FORFAITAIR_JN';
    comment on column BAS_DAM_DOSSIER.RDA_aangevraagd is 'RDA_JN';
    comment on column BAS_DAM_DOSSIER.Referentie is 'REFERENTIE';
    comment on column BAS_DAM_DOSSIER.Reg_id is 'REG_ID';
    comment on column BAS_DAM_DOSSIER.Reg_nr is 'REG_NR';
    comment on column BAS_DAM_DOSSIER.Rel_id_Aanvrager is 'REL_ID_ANV';
    comment on column BAS_DAM_DOSSIER.Rente_perc is 'RENTE_PCT';
    comment on column BAS_DAM_DOSSIER.Samenwerkingsverband1 is 'SAMENWERKING';
    comment on column BAS_DAM_DOSSIER.Samenwerkingsverband2 is 'SAMENWERKINGSVERBAND';
    comment on column BAS_DAM_DOSSIER.SO_loon is 'SO_LOON';
    comment on column BAS_DAM_DOSSIER.Begrote_SO_loonsom is 'SO_LOONSOM_BEGROOT';
    comment on column BAS_DAM_DOSSIER.SO_uren is 'SO_UREN';
    comment on column BAS_DAM_DOSSIER.Startmaand is 'STARTMAAND';
    comment on column BAS_DAM_DOSSIER.Statuscode is 'STATUS';
    comment on column BAS_DAM_DOSSIER.Status_cert is 'STATUS_CERT';
    comment on column BAS_DAM_DOSSIER.Status_oud is 'STATUS_OUD';
    comment on column BAS_DAM_DOSSIER.status_SO_uurloon is 'STATUS_SO_UURLOON';
    comment on column BAS_DAM_DOSSIER.Status_TT is 'STATUS_TT';
    comment on column BAS_DAM_DOSSIER.Statusgroep is 'STATUSGROEP';
    comment on column BAS_DAM_DOSSIER.Statustermijn is 'STATUSTERMIJN';
    comment on column BAS_DAM_DOSSIER.Status_E_Diensten is 'STS_E_INDIENEN';
    comment on column BAS_DAM_DOSSIER.Status_E_Loket is 'STS_E_LOKET';
    comment on column BAS_DAM_DOSSIER.Technisch_succes is 'TECHN_SUCC';
    comment on column BAS_DAM_DOSSIER.Technisch_Cor_id is 'TECHNISCH_COR_ID';
    comment on column BAS_DAM_DOSSIER.Titel is 'TITEL';
    comment on column BAS_DAM_DOSSIER.Afgelost_op_onvoorw_hoofdsom is 'TOTAAL_AFL_DIP_HFDS';
    comment on column BAS_DAM_DOSSIER.Afgelost_op_onvoorw_rente is 'TOTAAL_AFL_DIP_RENTE';
    comment on column BAS_DAM_DOSSIER.Totaal_afgelost_op_hoofdsom is 'TOTAAL_AFL_HOOFDSOM';
    comment on column BAS_DAM_DOSSIER.Totaal_ontvangen_rente is 'TOTAAL_AFL_RENTE';
    comment on column BAS_DAM_DOSSIER.Totaal_bijgeschreven_rente is 'TOTAAL_BIJGESCHR_RENTE';
    comment on column BAS_DAM_DOSSIER.Direct_opeisbare_vordering is 'TOTAAL_DIP';
    comment on column BAS_DAM_DOSSIER.Direct_opeisbare_hoofdsom is 'TOTAAL_DIP_HFDS';
    comment on column BAS_DAM_DOSSIER.Direct_opeisbare_rente is 'TOTAAL_DIP_RENTE';
    comment on column BAS_DAM_DOSSIER.Totaal_gecommitteerd_bedrag is 'TOTAAL_GECOMMITTEERD';
    comment on column BAS_DAM_DOSSIER.Zegge_Totaal_gecommitteerd is 'TOTAAL_GECOMMITTEERD_ZEGGE';
    comment on column BAS_DAM_DOSSIER.Totaal_gedeclareerd_bedrag is 'TOTAAL_GEDECLAREERD';
    comment on column BAS_DAM_DOSSIER.Totaal_geschoonde_kosten is 'TOTAAL_GESCHOOND';
    comment on column BAS_DAM_DOSSIER.Totale_hoofdsom is 'TOTAAL_HOOFDSOM';
    comment on column BAS_DAM_DOSSIER.Totaal_ingetrokken_bedrag is 'TOTAAL_INGETROKKEN';
    comment on column BAS_DAM_DOSSIER.Kwijtsch_onvoorw_hoofdsom is 'TOTAAL_KWIJ_DIP_HFDS';
    comment on column BAS_DAM_DOSSIER.Kwijtsch_onvoorw_rente is 'TOTAAL_KWIJ_DIP_RENTE';
    comment on column BAS_DAM_DOSSIER.Kwijtsch_direct_opeisbaar is 'TOTAAL_KWIJTSCH_DIP';
    comment on column BAS_DAM_DOSSIER.Kwijtsch_voorw_hoofdsom is 'TOTAAL_KWIJTSCH_HFDS';
    comment on column BAS_DAM_DOSSIER.Kwijtsch_voorw_rente is 'TOTAAL_KWIJTSCH_RENTE';
    comment on column BAS_DAM_DOSSIER.Totaal_kwijtgescholden_bedrag is 'TOTAAL_KWIJTSCHELDING';
    comment on column BAS_DAM_DOSSIER.Totaal_openstaand_bedrag is 'TOTAAL_OPENSTAAND';
    comment on column BAS_DAM_DOSSIER.Direct_opeisbaar_gesteld is 'TOTAAL_OVR_RENTE';
    comment on column BAS_DAM_DOSSIER.Totaal_uitbetaald is 'TOTAAL_UITBETAALD';
    comment on column BAS_DAM_DOSSIER.Totaal_verleend_bedrag is 'TOTAAL_VERLEEND';
    comment on column BAS_DAM_DOSSIER.Uitlening_binnen_Fisc_eenheid is 'UITLENING_FE_JN';
    comment on column BAS_DAM_DOSSIER.Uurloon_jaar is 'UURLOON_JAAR';
    comment on column BAS_DAM_DOSSIER.Vaststellen_batch is 'VASTSTELLEN_JN';
    comment on column BAS_DAM_DOSSIER.Vergoedingsperc is 'VERGOEDINGS_PERC';
    comment on column BAS_DAM_DOSSIER.Volgnr_LB is 'VOLG_NR_LB';
    comment on column BAS_DAM_DOSSIER.Voorlopig_gecommitteerd is 'VOORLOPIG_GECOMMITTEERD';
    comment on column BAS_DAM_DOSSIER.Voorlopig_gedeclareerd is 'VOORLOPIG_GEDECLAREERD';
    comment on column BAS_DAM_DOSSIER.Vorig_aanvraag_bedrijf_nr is 'VORIG_AANVRAAG_BEDRIJF_NR';
    comment on column BAS_DAM_DOSSIER.Vorig_aanvraagjaar is 'VORIG_AANVRAAGJAAR';
    comment on column BAS_DAM_DOSSIER.Vorig_aanvraagnummer is 'VORIG_AANVRAAGNUMMER';
    comment on column BAS_DAM_DOSSIER.Vorie_aanvraagperiode is 'VORIG_AANVRAAGPERIODE';
    comment on column BAS_DAM_DOSSIER.Vorig_aanvraag_volgnr is 'VORIG_AANVRAAGVOLG_NR';
    comment on column BAS_DAM_DOSSIER.Vaststelling_conform_aanvraag is 'VST_CONFORM_ANV_JN';
    comment on column BAS_DAM_DOSSIER.VV_Aanvraagnummer is 'VVAANVRAAGNUMMER';
    comment on column BAS_DAM_DOSSIER.Wel_akkoord_niet_verlenen is 'WEL_AKK_NIET_VERL';
    comment on column BAS_DAM_DOSSIER.Aangeboden_aan_ZER is 'ZER_AANGEBODEN';

DROP TABLE IF EXISTS BAS_DAM_DOSSIERGROEP;
CREATE TABLE BAS_DAM_DOSSIERGROEP (
    techId INTEGER PRIMARY KEY,
    Ddg_id bigint,
    Age_id bigint,
    Naam varchar (30),
    Toelichting varchar (2048),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_DAM_DOSSIERGROEP.Ddg_id is 'DDG_ID';
    comment on column BAS_DAM_DOSSIERGROEP.Age_id is 'AGE_ID';
    comment on column BAS_DAM_DOSSIERGROEP.Naam is 'NAAM';
    comment on column BAS_DAM_DOSSIERGROEP.Toelichting is 'TOELICHTING';
    comment on column BAS_DAM_DOSSIERGROEP.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_DOSSIERGROEP.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_DOSSIERGROEP.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_DOSSIERGROEP.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_DAM_LOKATIEADRES;
CREATE TABLE BAS_DAM_LOKATIEADRES (
    techId INTEGER PRIMARY KEY,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    DLS_id bigint,
    Lok_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    RAE_id bigint,
    RAS_id bigint
);

    comment on column BAS_DAM_LOKATIEADRES.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_LOKATIEADRES.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_LOKATIEADRES.DLS_id is 'DLS_ID';
    comment on column BAS_DAM_LOKATIEADRES.Lok_id is 'LOK_ID';
    comment on column BAS_DAM_LOKATIEADRES.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_LOKATIEADRES.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_LOKATIEADRES.RAE_id is 'RAE_ID';
    comment on column BAS_DAM_LOKATIEADRES.RAS_id is 'RAS_ID';

DROP TABLE IF EXISTS BAS_DAM_MDW_INTERN_HIST;
CREATE TABLE BAS_DAM_MDW_INTERN_HIST (
    techId INTEGER PRIMARY KEY,
    Dos_id bigint,
    Prg_id bigint,
    Mdw_id bigint,
    Rol_cd varchar (3),
    Datum_van timestamp,
    Datum_tot timestamp,
    Behandelend varchar (1),
    Notitie varchar (2048),
    Mdw_id_voorheen bigint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column BAS_DAM_MDW_INTERN_HIST.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_MDW_INTERN_HIST.Prg_id is 'PRG_ID';
    comment on column BAS_DAM_MDW_INTERN_HIST.Mdw_id is 'MDW_ID';
    comment on column BAS_DAM_MDW_INTERN_HIST.Rol_cd is 'ROL_CD';
    comment on column BAS_DAM_MDW_INTERN_HIST.Datum_van is 'DATUM_VAN';
    comment on column BAS_DAM_MDW_INTERN_HIST.Datum_tot is 'DATUM_TOT';
    comment on column BAS_DAM_MDW_INTERN_HIST.Behandelend is 'BEHANDELEND';
    comment on column BAS_DAM_MDW_INTERN_HIST.Notitie is 'NOTITIE';
    comment on column BAS_DAM_MDW_INTERN_HIST.Mdw_id_voorheen is 'MDW_ID_VOORHEEN';
    comment on column BAS_DAM_MDW_INTERN_HIST.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_MDW_INTERN_HIST.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_MDW_INTERN_HIST.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_MDW_INTERN_HIST.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_DAM_MDW_INTERN;
CREATE TABLE BAS_DAM_MDW_INTERN (
    techId INTEGER PRIMARY KEY,
    Behandelend varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id bigint,
    Mdw_id bigint,
    Mdw_id_voorheen bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (2048),
    Prg_id bigint,
    Rol_cd varchar (3)
);

    comment on column BAS_DAM_MDW_INTERN.Behandelend is 'BEHANDELEND';
    comment on column BAS_DAM_MDW_INTERN.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_MDW_INTERN.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_MDW_INTERN.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_MDW_INTERN.Mdw_id is 'MDW_ID';
    comment on column BAS_DAM_MDW_INTERN.Mdw_id_voorheen is 'MDW_ID_VOORHEEN';
    comment on column BAS_DAM_MDW_INTERN.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_MDW_INTERN.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_MDW_INTERN.Notitie is 'NOTITIE';
    comment on column BAS_DAM_MDW_INTERN.Prg_id is 'PRG_ID';
    comment on column BAS_DAM_MDW_INTERN.Rol_cd is 'ROL_CD';

DROP TABLE IF EXISTS BAS_DAM_STATUSHISTORIE;
CREATE TABLE BAS_DAM_STATUSHISTORIE (
    techId INTEGER PRIMARY KEY,
    Commentaar varchar (2048),
    Cor_id_tot bigint,
    Cor_id_van bigint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Datum_tot timestamp,
    Datum_van timestamp,
    Dos_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ssg_cd varchar (1),
    Sts_cd varchar (3),
    Volg_nr bigint
);

    comment on column BAS_DAM_STATUSHISTORIE.Commentaar is 'COMMENTAAR';
    comment on column BAS_DAM_STATUSHISTORIE.Cor_id_tot is 'COR_ID_TOT';
    comment on column BAS_DAM_STATUSHISTORIE.Cor_id_van is 'COR_ID_VAN';
    comment on column BAS_DAM_STATUSHISTORIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_STATUSHISTORIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_STATUSHISTORIE.Datum_tot is 'DATUM_TOT';
    comment on column BAS_DAM_STATUSHISTORIE.Datum_van is 'DATUM_VAN';
    comment on column BAS_DAM_STATUSHISTORIE.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_STATUSHISTORIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_STATUSHISTORIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_STATUSHISTORIE.Ssg_cd is 'SSG_CD';
    comment on column BAS_DAM_STATUSHISTORIE.Sts_cd is 'STS_CD';
    comment on column BAS_DAM_STATUSHISTORIE.Volg_nr is 'VOLG_NR';

DROP TABLE IF EXISTS BAS_DAM_TERMIJN_PARAAF_NOTITIE;
CREATE TABLE BAS_DAM_TERMIJN_PARAAF_NOTITIE (
    techId INTEGER PRIMARY KEY,
    Cor_id bigint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ter_id bigint,
    Toelichting varchar (2048)
);

    comment on column BAS_DAM_TERMIJN_PARAAF_NOTITIE.Cor_id is 'COR_ID';
    comment on column BAS_DAM_TERMIJN_PARAAF_NOTITIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_TERMIJN_PARAAF_NOTITIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_TERMIJN_PARAAF_NOTITIE.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_TERMIJN_PARAAF_NOTITIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_TERMIJN_PARAAF_NOTITIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_TERMIJN_PARAAF_NOTITIE.Ter_id is 'TER_ID';
    comment on column BAS_DAM_TERMIJN_PARAAF_NOTITIE.Toelichting is 'TOELICHTING';

DROP TABLE IF EXISTS BAS_DAM_TERMIJN;
CREATE TABLE BAS_DAM_TERMIJN (
    techId INTEGER PRIMARY KEY,
    Aanvullende_voorwaarden varchar (1),
    Actie varchar (2048),
    Actie_dat timestamp,
    Con_id bigint,
    Cor_id bigint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id bigint,
    Dossiergroep_ter_id bigint,
    Mdw_id varchar (12),
    Mdw_id_afgemeld bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (2048),
    Opgevoerd_dat timestamp,
    Opschortend_jn varchar (1),
    Prg_id bigint,
    Reactie_cd varchar (3),
    Rol_cd varchar (3),
    Ter_id bigint,
    Voldaan_dat timestamp,
    Volgorde_paraaf smallint
);

    comment on column BAS_DAM_TERMIJN.Aanvullende_voorwaarden is 'AANVULLENDE_VOORWAARDEN';
    comment on column BAS_DAM_TERMIJN.Actie is 'ACTIE';
    comment on column BAS_DAM_TERMIJN.Actie_dat is 'ACTIE_DAT';
    comment on column BAS_DAM_TERMIJN.Con_id is 'CON_ID';
    comment on column BAS_DAM_TERMIJN.Cor_id is 'COR_ID';
    comment on column BAS_DAM_TERMIJN.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_DAM_TERMIJN.Creatie_user is 'CREATIE_USER';
    comment on column BAS_DAM_TERMIJN.Dos_id is 'DOS_ID';
    comment on column BAS_DAM_TERMIJN.Dossiergroep_ter_id is 'DOSSIERGROEP_TER_ID';
    comment on column BAS_DAM_TERMIJN.Mdw_id is 'MDW_ID';
    comment on column BAS_DAM_TERMIJN.Mdw_id_afgemeld is 'MDW_ID_AFGEMELD';
    comment on column BAS_DAM_TERMIJN.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_DAM_TERMIJN.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_DAM_TERMIJN.Notitie is 'NOTITIE';
    comment on column BAS_DAM_TERMIJN.Opgevoerd_dat is 'OPGEVOERD_DAT';
    comment on column BAS_DAM_TERMIJN.Opschortend_jn is 'OPSCHORTEND_JN';
    comment on column BAS_DAM_TERMIJN.Prg_id is 'PRG_ID';
    comment on column BAS_DAM_TERMIJN.Reactie_cd is 'REACTIE_CD';
    comment on column BAS_DAM_TERMIJN.Rol_cd is 'ROL_CD';
    comment on column BAS_DAM_TERMIJN.Ter_id is 'TER_ID';
    comment on column BAS_DAM_TERMIJN.Voldaan_dat is 'VOLDAAN_DAT';
    comment on column BAS_DAM_TERMIJN.Volgorde_paraaf is 'VOLGORDE_PARAAF';

DROP TABLE IF EXISTS DAR_COR_BERICHT_BIJLAGE;

DROP TABLE IF EXISTS BAS_FAM_DECLARATIE;
CREATE TABLE BAS_FAM_DECLARATIE (
    techId INTEGER PRIMARY KEY,
    Tra_id bigint,
    Begindatum timestamp,
    Einddatum timestamp,
    Totaal_ingediend numeric(24,6),
    Totaal_geschoond numeric(24,6),
    Vergoedings_pct numeric(7,2),
    Betalingsverzoeknummer varchar (40),
    Afgerekend_jn varchar (1),
    Periodiek_jn varchar (1),
    Betaalritme_tra_id bigint,
    Betaaldata_volgnr bigint,
    Creditering_op_tra_id bigint,
    Netto_verstrekking numeric(24,6),
    Bruto_vergoeding numeric(24,6),
    Verrekenen_nj varchar (1)
);

    comment on column BAS_FAM_DECLARATIE.Tra_id is 'TRA_ID';
    comment on column BAS_FAM_DECLARATIE.Begindatum is 'BEGINDATUM';
    comment on column BAS_FAM_DECLARATIE.Einddatum is 'EINDDATUM';
    comment on column BAS_FAM_DECLARATIE.Totaal_ingediend is 'TOTAAL_INGEDIEND';
    comment on column BAS_FAM_DECLARATIE.Totaal_geschoond is 'TOTAAL_GESCHOOND';
    comment on column BAS_FAM_DECLARATIE.Vergoedings_pct is 'VERGOEDINGS_PCT';
    comment on column BAS_FAM_DECLARATIE.Betalingsverzoeknummer is 'BETALINGSVERZOEKNUMMER';
    comment on column BAS_FAM_DECLARATIE.Afgerekend_jn is 'AFGEREKEND_JN';
    comment on column BAS_FAM_DECLARATIE.Periodiek_jn is 'PERIODIEK_JN';
    comment on column BAS_FAM_DECLARATIE.Betaalritme_tra_id is 'BETAALRITME_TRA_ID';
    comment on column BAS_FAM_DECLARATIE.Betaaldata_volgnr is 'BETAALDATA_VOLGNR';
    comment on column BAS_FAM_DECLARATIE.Creditering_op_tra_id is 'CREDITERING_OP_TRA_ID';
    comment on column BAS_FAM_DECLARATIE.Netto_verstrekking is 'NETTO_VERSTREKKING';
    comment on column BAS_FAM_DECLARATIE.Bruto_vergoeding is 'BRUTO_VERGOEDING';
    comment on column BAS_FAM_DECLARATIE.Verrekenen_nj is 'VERREKENEN_NJ';

DROP TABLE IF EXISTS BAS_FAM_STATUSHISTORIE;
CREATE TABLE BAS_FAM_STATUSHISTORIE (
    techId INTEGER PRIMARY KEY,
    Commentaar varchar (2048),
    Datum_van timestamp,
    Datum_tot timestamp,
    Dos_id bigint,
    Ssg_cd varchar (1),
    Sts_cd varchar (3),
    Tra_id bigint,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_FAM_STATUSHISTORIE.Commentaar is 'COMMENTAAR';
    comment on column BAS_FAM_STATUSHISTORIE.Datum_van is 'DATUM_VAN';
    comment on column BAS_FAM_STATUSHISTORIE.Datum_tot is 'DATUM_TOT';
    comment on column BAS_FAM_STATUSHISTORIE.Dos_id is 'DOS_ID';
    comment on column BAS_FAM_STATUSHISTORIE.Ssg_cd is 'SSG_CD';
    comment on column BAS_FAM_STATUSHISTORIE.Sts_cd is 'STS_CD';
    comment on column BAS_FAM_STATUSHISTORIE.Tra_id is 'TRA_ID';
    comment on column BAS_FAM_STATUSHISTORIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_FAM_STATUSHISTORIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_FAM_STATUSHISTORIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_FAM_STATUSHISTORIE.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_FAM_TRANSACTIE_REGEL;
CREATE TABLE BAS_FAM_TRANSACTIE_REGEL (
    techId INTEGER PRIMARY KEY,
    Tra_id bigint,
    Rpt_nr bigint,
    Ovk_nr varchar (20),
    Bgt_cd varchar (1),
    Rpe_datum_van timestamp,
    Vpl_tra_id bigint,
    Prg_id bigint,
    Vpl_volgnummer smallint,
    Jaar integer,
    Reg_id bigint,
    Reg_nr smallint,
    Bedrag numeric(24,6),
    Valutadatum timestamp,
    Iban varchar (34),
    Bic varchar (11),
    Omhang_jaar integer,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Cvk_id_geselecteerd bigint,
    Cvk_id_verwerkt bigint,
    Volgnummer bigint,
    Gecorrigeerd_jn varchar (1),
    Rpt_nr_oud varchar (20),
    Naar_oracle varchar (1),
    Boeking varchar (1),
    Imvb varchar (1)
);

    comment on column BAS_FAM_TRANSACTIE_REGEL.Tra_id is 'TRA_ID';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Rpt_nr is 'RPT_NR';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Ovk_nr is 'OVK_NR';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Bgt_cd is 'BGT_CD';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Rpe_datum_van is 'RPE_DATUM_VAN';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Vpl_tra_id is 'VPL_TRA_ID';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Prg_id is 'PRG_ID';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Vpl_volgnummer is 'VPL_VOLGNUMMER';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Jaar is 'JAAR';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Reg_id is 'REG_ID';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Reg_nr is 'REG_NR';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Bedrag is 'BEDRAG';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Valutadatum is 'VALUTADATUM';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Iban is 'IBAN';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Bic is 'BIC';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Omhang_jaar is 'OMHANG_JAAR';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Creatie_user is 'CREATIE_USER';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Cvk_id_geselecteerd is 'CVK_ID_GESELECTEERD';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Cvk_id_verwerkt is 'CVK_ID_VERWERKT';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Volgnummer is 'VOLGNUMMER';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Gecorrigeerd_jn is 'GECORRIGEERD_JN';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Rpt_nr_oud is 'RPT_NR_OUD';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Naar_oracle is 'NAAR_ORACLE';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Boeking is 'BOEKING';
    comment on column BAS_FAM_TRANSACTIE_REGEL.Imvb is 'IMVB';

DROP TABLE IF EXISTS BAS_FAM_TRANSACTIE;
CREATE TABLE BAS_FAM_TRANSACTIE (
    techId INTEGER PRIMARY KEY,
    Volgnummer smallint,
    Tra_id bigint,
    Prg_id bigint,
    Jaar integer,
    Dos_id bigint,
    Tra_cd varchar (3),
    Reden varchar (8000),
    bedrag numeric(24,6),
    Bedrag_nlg numeric(24,6),
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
    Correctie_volgnr smallint,
    Tra_id_van bigint,
    Vst_id bigint,
    Rel_id bigint,
    Rol_cd varchar (3),
    Datum_acc_afd timestamp,
    Referentie varchar (10),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Bedrag_ex_btw numeric(24,6),
    Vst_volgnr bigint,
    Duurzaam_jn varchar (1),
    Run_id bigint,
    Fam_vordering varchar (1),
    Fam_vordering_afhandeling varchar (1),
    Vordering_tra_id bigint,
    Storneren varchar (1),
    Vordering_bedrag numeric(24,6),
    Afgelost numeric(24,6),
    Kwijtgescholden numeric(24,6),
    Tmp_vordering_id bigint,
    Omhang_jaar integer,
    Omhang_jn varchar (1),
    Tra_id_rv bigint,
    Tra_id_dcv bigint,
    Jz_id bigint,
    Afreken_tra_id bigint,
    Correctie_bedrag_bob numeric(24,6),
    Vordering_status varchar (3),
    On_hold varchar (255),
    Termijn_uitstel timestamp,
    Tra_id_ean_eap bigint
);

    comment on column BAS_FAM_TRANSACTIE.Volgnummer is 'VOLGNUMMER';
    comment on column BAS_FAM_TRANSACTIE.Tra_id is 'TRA_ID';
    comment on column BAS_FAM_TRANSACTIE.Prg_id is 'PRG_ID';
    comment on column BAS_FAM_TRANSACTIE.Jaar is 'JAAR';
    comment on column BAS_FAM_TRANSACTIE.Dos_id is 'DOS_ID';
    comment on column BAS_FAM_TRANSACTIE.Tra_cd is 'TRA_CD';
    comment on column BAS_FAM_TRANSACTIE.Reden is 'REDEN';
    comment on column BAS_FAM_TRANSACTIE.bedrag is 'BEDRAG';
    comment on column BAS_FAM_TRANSACTIE.Bedrag_nlg is 'BEDRAG_NLG';
    comment on column BAS_FAM_TRANSACTIE.Datum is 'DATUM';
    comment on column BAS_FAM_TRANSACTIE.Valutadatum is 'VALUTADATUM';
    comment on column BAS_FAM_TRANSACTIE.Fam_verplichting is 'FAM_VERPLICHTING';
    comment on column BAS_FAM_TRANSACTIE.Fam_declaratie is 'FAM_DECLARATIE';
    comment on column BAS_FAM_TRANSACTIE.Fam_bij_rente is 'FAM_BIJ_RENTE';
    comment on column BAS_FAM_TRANSACTIE.Fam_kwijtschelding is 'FAM_KWIJTSCHELDING';
    comment on column BAS_FAM_TRANSACTIE.Fam_rest_voorschot is 'FAM_REST_VOORSCHOT';
    comment on column BAS_FAM_TRANSACTIE.Fam_overboeking is 'FAM_OVERBOEKING';
    comment on column BAS_FAM_TRANSACTIE.Fam_aflossing is 'FAM_AFLOSSING';
    comment on column BAS_FAM_TRANSACTIE.Fam_budgetmutatie is 'FAM_BUDGETMUTATIE';
    comment on column BAS_FAM_TRANSACTIE.Fam_rest_aflossing is 'FAM_REST_AFLOSSING';
    comment on column BAS_FAM_TRANSACTIE.Fam_betaalritme is 'FAM_BETAALRITME';
    comment on column BAS_FAM_TRANSACTIE.Sts_cd is 'STS_CD';
    comment on column BAS_FAM_TRANSACTIE.Ssg_cd is 'SSG_CD';
    comment on column BAS_FAM_TRANSACTIE.Correctie is 'CORRECTIE';
    comment on column BAS_FAM_TRANSACTIE.Correctie_volgnr is 'CORRECTIE_VOLGNR';
    comment on column BAS_FAM_TRANSACTIE.Tra_id_van is 'TRA_ID_VAN';
    comment on column BAS_FAM_TRANSACTIE.Vst_id is 'VST_ID';
    comment on column BAS_FAM_TRANSACTIE.Rel_id is 'REL_ID';
    comment on column BAS_FAM_TRANSACTIE.Rol_cd is 'ROL_CD';
    comment on column BAS_FAM_TRANSACTIE.Datum_acc_afd is 'DATUM_ACC_AFD';
    comment on column BAS_FAM_TRANSACTIE.Referentie is 'REFERENTIE';
    comment on column BAS_FAM_TRANSACTIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_FAM_TRANSACTIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_FAM_TRANSACTIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_FAM_TRANSACTIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_FAM_TRANSACTIE.Bedrag_ex_btw is 'BEDRAG_EX_BTW';
    comment on column BAS_FAM_TRANSACTIE.Vst_volgnr is 'VST_VOLGNR';
    comment on column BAS_FAM_TRANSACTIE.Duurzaam_jn is 'DUURZAAM_JN';
    comment on column BAS_FAM_TRANSACTIE.Run_id is 'RUN_ID';
    comment on column BAS_FAM_TRANSACTIE.Fam_vordering is 'FAM_VORDERING';
    comment on column BAS_FAM_TRANSACTIE.Fam_vordering_afhandeling is 'FAM_VORDERING_AFHANDELING';
    comment on column BAS_FAM_TRANSACTIE.Vordering_tra_id is 'VORDERING_TRA_ID';
    comment on column BAS_FAM_TRANSACTIE.Storneren is 'STORNEREN';
    comment on column BAS_FAM_TRANSACTIE.Vordering_bedrag is 'VORDERING_BEDRAG';
    comment on column BAS_FAM_TRANSACTIE.Afgelost is 'AFGELOST';
    comment on column BAS_FAM_TRANSACTIE.Kwijtgescholden is 'KWIJTGESCHOLDEN';
    comment on column BAS_FAM_TRANSACTIE.Tmp_vordering_id is 'TMP_VORDERING_ID';
    comment on column BAS_FAM_TRANSACTIE.Omhang_jaar is 'OMHANG_JAAR';
    comment on column BAS_FAM_TRANSACTIE.Omhang_jn is 'OMHANG_JN';
    comment on column BAS_FAM_TRANSACTIE.Tra_id_rv is 'TRA_ID_RV';
    comment on column BAS_FAM_TRANSACTIE.Tra_id_dcv is 'TRA_ID_DCV';
    comment on column BAS_FAM_TRANSACTIE.Jz_id is 'JZ_ID';
    comment on column BAS_FAM_TRANSACTIE.Afreken_tra_id is 'AFREKEN_TRA_ID';
    comment on column BAS_FAM_TRANSACTIE.Correctie_bedrag_bob is 'CORRECTIE_BEDRAG_BOB';
    comment on column BAS_FAM_TRANSACTIE.Vordering_status is 'VORDERING_STATUS';
    comment on column BAS_FAM_TRANSACTIE.On_hold is 'ON_HOLD';
    comment on column BAS_FAM_TRANSACTIE.Termijn_uitstel is 'TERMIJN_UITSTEL';
    comment on column BAS_FAM_TRANSACTIE.Tra_id_ean_eap is 'TRA_ID_EAN_EAP';

DROP TABLE IF EXISTS BAS_FAM_VERPLICHTING;
CREATE TABLE BAS_FAM_VERPLICHTING (
    techId INTEGER PRIMARY KEY,
    Tra_id bigint,
    Reg_id bigint,
    Reg_nr smallint,
    Verplichtingssoort varchar (1),
    Omschrijving varchar (30),
    Totaal_ingediend numeric(24,6),
    Gevraagd numeric(24,6),
    Totaal_geschoond numeric(24,6),
    Vergoedings_pct numeric(7,2),
    Intake_datum timestamp,
    Nota_datum timestamp,
    Panel_datum timestamp,
    Overige_subsidie numeric(24,6),
    Ikb_naam varchar (10),
    Inkoopbevinding varchar (30),
    Inkoopbevinding_user varchar (30),
    Betalingsverzoeknummer varchar (40)
);

    comment on column BAS_FAM_VERPLICHTING.Tra_id is 'TRA_ID';
    comment on column BAS_FAM_VERPLICHTING.Reg_id is 'REG_ID';
    comment on column BAS_FAM_VERPLICHTING.Reg_nr is 'REG_NR';
    comment on column BAS_FAM_VERPLICHTING.Verplichtingssoort is 'VERPLICHTINGSSOORT';
    comment on column BAS_FAM_VERPLICHTING.Omschrijving is 'OMSCHRIJVING';
    comment on column BAS_FAM_VERPLICHTING.Totaal_ingediend is 'TOTAAL_INGEDIEND';
    comment on column BAS_FAM_VERPLICHTING.Gevraagd is 'GEVRAAGD';
    comment on column BAS_FAM_VERPLICHTING.Totaal_geschoond is 'TOTAAL_GESCHOOND';
    comment on column BAS_FAM_VERPLICHTING.Vergoedings_pct is 'VERGOEDINGS_PCT';
    comment on column BAS_FAM_VERPLICHTING.Intake_datum is 'INTAKE_DATUM';
    comment on column BAS_FAM_VERPLICHTING.Nota_datum is 'NOTA_DATUM';
    comment on column BAS_FAM_VERPLICHTING.Panel_datum is 'PANEL_DATUM';
    comment on column BAS_FAM_VERPLICHTING.Overige_subsidie is 'OVERIGE_SUBSIDIE';
    comment on column BAS_FAM_VERPLICHTING.Ikb_naam is 'IKB_NAAM';
    comment on column BAS_FAM_VERPLICHTING.Inkoopbevinding is 'INKOOPBEVINDING';
    comment on column BAS_FAM_VERPLICHTING.Inkoopbevinding_user is 'INKOOPBEVINDING_USER';
    comment on column BAS_FAM_VERPLICHTING.Betalingsverzoeknummer is 'BETALINGSVERZOEKNUMMER';

DROP TABLE IF EXISTS BAS_IOM_FUNCTIE;
CREATE TABLE BAS_IOM_FUNCTIE (
    techId INTEGER PRIMARY KEY,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Fun_cd varchar (7),
    Fun_oms varchar (50),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column BAS_IOM_FUNCTIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_IOM_FUNCTIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_IOM_FUNCTIE.Fun_cd is 'FUN_CD';
    comment on column BAS_IOM_FUNCTIE.Fun_oms is 'FUN_OMS';
    comment on column BAS_IOM_FUNCTIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_IOM_FUNCTIE.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_IOM_LOCATIE;
CREATE TABLE BAS_IOM_LOCATIE (
    techId INTEGER PRIMARY KEY,
    Loc_cd varchar (2),
    Omschrijving varchar (34),
    Actief varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column BAS_IOM_LOCATIE.Loc_cd is 'LOC_CD';
    comment on column BAS_IOM_LOCATIE.Omschrijving is 'OMSCHRIJVING';
    comment on column BAS_IOM_LOCATIE.Actief is 'ACTIEF';
    comment on column BAS_IOM_LOCATIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_IOM_LOCATIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_IOM_LOCATIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_IOM_LOCATIE.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_IOM_MEDEWERKER;
CREATE TABLE BAS_IOM_MEDEWERKER (
    techId INTEGER PRIMARY KEY,
    Aanspreeknaam varchar (50),
    Achternaam varchar (25),
    Actief varchar (1),
    Banknaam varchar (50),
    Beveiligingspas varchar (1),
    Beveiligingspasnr varchar (6),
    Bic varchar (11),
    Certhoud_id bigint,
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
    Mdw_handtekening_image varchar (4096),
    Mdw_id bigint,
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

    comment on column BAS_IOM_MEDEWERKER.Aanspreeknaam is 'AANSPREEKNAAM';
    comment on column BAS_IOM_MEDEWERKER.Achternaam is 'ACHTERNAAM';
    comment on column BAS_IOM_MEDEWERKER.Actief is 'ACTIEF';
    comment on column BAS_IOM_MEDEWERKER.Banknaam is 'BANKNAAM';
    comment on column BAS_IOM_MEDEWERKER.Beveiligingspas is 'BEVEILIGINGSPAS';
    comment on column BAS_IOM_MEDEWERKER.Beveiligingspasnr is 'BEVEILIGINGSPASNR';
    comment on column BAS_IOM_MEDEWERKER.Bic is 'BIC';
    comment on column BAS_IOM_MEDEWERKER.Certhoud_id is 'CERTHOUD_ID';
    comment on column BAS_IOM_MEDEWERKER.Certserienummer is 'CERTSERIENUMMER';
    comment on column BAS_IOM_MEDEWERKER.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_IOM_MEDEWERKER.Creatie_user is 'CREATIE_USER';
    comment on column BAS_IOM_MEDEWERKER.Datum_inlog is 'DATUM_INLOG';
    comment on column BAS_IOM_MEDEWERKER.Datum_uit_dienst is 'DATUM_UIT_DIENST';
    comment on column BAS_IOM_MEDEWERKER.Dienstverband is 'DIENSTVERBAND';
    comment on column BAS_IOM_MEDEWERKER.Eigen_vervoer_jn is 'EIGEN_VERVOER_JN';
    comment on column BAS_IOM_MEDEWERKER.Fun_cd is 'FUN_CD';
    comment on column BAS_IOM_MEDEWERKER.Geslacht is 'GESLACHT';
    comment on column BAS_IOM_MEDEWERKER.Iban is 'IBAN';
    comment on column BAS_IOM_MEDEWERKER.Inleen_jn is 'INLEEN_JN';
    comment on column BAS_IOM_MEDEWERKER.Loc_cd is 'LOC_CD';
    comment on column BAS_IOM_MEDEWERKER.Mdw_cd is 'MDW_CD';
    comment on column BAS_IOM_MEDEWERKER.Mdw_emailadres is 'MDW_EMAILADRES';
    comment on column BAS_IOM_MEDEWERKER.Mdw_handtekening is 'MDW_HANDTEKENING';
    comment on column BAS_IOM_MEDEWERKER.Mdw_handtekening_image is 'MDW_HANDTEKENING_IMAGE';
    comment on column BAS_IOM_MEDEWERKER.Mdw_id is 'MDW_ID';
    comment on column BAS_IOM_MEDEWERKER.Mobiel is 'MOBIEL';
    comment on column BAS_IOM_MEDEWERKER.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_IOM_MEDEWERKER.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_IOM_MEDEWERKER.Parkeerkaart is 'PARKEERKAART';
    comment on column BAS_IOM_MEDEWERKER.Plaatsnaam is 'PLAATSNAAM';
    comment on column BAS_IOM_MEDEWERKER.Standplaats is 'STANDPLAATS';
    comment on column BAS_IOM_MEDEWERKER.Telefoon is 'TELEFOON';
    comment on column BAS_IOM_MEDEWERKER.Titel_na_cd is 'TITEL_NA_CD';
    comment on column BAS_IOM_MEDEWERKER.Titel_voor_cd is 'TITEL_VOOR_CD';
    comment on column BAS_IOM_MEDEWERKER.Toestel_dh is 'TOESTEL_DH';
    comment on column BAS_IOM_MEDEWERKER.Toestel_zw is 'TOESTEL_ZW';
    comment on column BAS_IOM_MEDEWERKER.Tvs_cd_oud is 'TVS_CD_OUD';
    comment on column BAS_IOM_MEDEWERKER.Voorletters is 'VOORLETTERS';
    comment on column BAS_IOM_MEDEWERKER.Voornaam is 'VOORNAAM';
    comment on column BAS_IOM_MEDEWERKER.Voorvoegsel is 'VOORVOEGSEL';

DROP TABLE IF EXISTS BAS_IOM_MEDEWERKERROL;
CREATE TABLE BAS_IOM_MEDEWERKERROL (
    techId INTEGER PRIMARY KEY,
    Mdw_id bigint,
    Rol_cd varchar (3),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Actief varchar (1)
);

    comment on column BAS_IOM_MEDEWERKERROL.Mdw_id is 'MDW_ID';
    comment on column BAS_IOM_MEDEWERKERROL.Rol_cd is 'ROL_CD';
    comment on column BAS_IOM_MEDEWERKERROL.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_IOM_MEDEWERKERROL.Creatie_user is 'CREATIE_USER';
    comment on column BAS_IOM_MEDEWERKERROL.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_IOM_MEDEWERKERROL.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_IOM_MEDEWERKERROL.Actief is 'ACTIEF';

DROP TABLE IF EXISTS BAS_JZM_BEHANDELAAR;
CREATE TABLE BAS_JZM_BEHANDELAAR (
    techId INTEGER PRIMARY KEY,
    Mdw_id bigint,
    Jz_id bigint,
    Rol_cd varchar (3),
    Eigenaar varchar (1),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_JZM_BEHANDELAAR.Mdw_id is 'MDW_ID';
    comment on column BAS_JZM_BEHANDELAAR.Jz_id is 'JZ_ID';
    comment on column BAS_JZM_BEHANDELAAR.Rol_cd is 'ROL_CD';
    comment on column BAS_JZM_BEHANDELAAR.Eigenaar is 'EIGENAAR';
    comment on column BAS_JZM_BEHANDELAAR.Creatie_user is 'CREATIE_USER';
    comment on column BAS_JZM_BEHANDELAAR.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_BEHANDELAAR.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_JZM_BEHANDELAAR.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_JZM_BEROEP;
CREATE TABLE BAS_JZM_BEROEP (
    techId INTEGER PRIMARY KEY,
    Jz_id bigint,
    Bzr_id bigint,
    Zaaknummer varchar (30),
    Datum_zitting timestamp,
    Uitspraak varchar (25),
    Datum_uitspr timestamp,
    Bedrag_schade numeric(24,6),
    Bedrag_schade_nlg numeric(24,6),
    Datum_schade timestamp
);

    comment on column BAS_JZM_BEROEP.Jz_id is 'JZ_ID';
    comment on column BAS_JZM_BEROEP.Bzr_id is 'BZR_ID';
    comment on column BAS_JZM_BEROEP.Zaaknummer is 'ZAAKNUMMER';
    comment on column BAS_JZM_BEROEP.Datum_zitting is 'DATUM_ZITTING';
    comment on column BAS_JZM_BEROEP.Uitspraak is 'UITSPRAAK';
    comment on column BAS_JZM_BEROEP.Datum_uitspr is 'DATUM_UITSPR';
    comment on column BAS_JZM_BEROEP.Bedrag_schade is 'BEDRAG_SCHADE';
    comment on column BAS_JZM_BEROEP.Bedrag_schade_nlg is 'BEDRAG_SCHADE_NLG';
    comment on column BAS_JZM_BEROEP.Datum_schade is 'DATUM_SCHADE';

DROP TABLE IF EXISTS BAS_JZM_BEZWAAR;
CREATE TABLE BAS_JZM_BEZWAAR (
    techId INTEGER PRIMARY KEY,
    Jz_id bigint,
    Belasting_cd varchar (35),
    Datum_compleet timestamp,
    Wachttijd smallint,
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
    Reken_cor_id bigint,
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

    comment on column BAS_JZM_BEZWAAR.Jz_id is 'JZ_ID';
    comment on column BAS_JZM_BEZWAAR.Belasting_cd is 'BELASTING_CD';
    comment on column BAS_JZM_BEZWAAR.Datum_compleet is 'DATUM_COMPLEET';
    comment on column BAS_JZM_BEZWAAR.Wachttijd is 'WACHTTIJD';
    comment on column BAS_JZM_BEZWAAR.Datum_hoorzitting_org is 'DATUM_HOORZITTING_ORG';
    comment on column BAS_JZM_BEZWAAR.Tijd_hoorzitting_org is 'TIJD_HOORZITTING_ORG';
    comment on column BAS_JZM_BEZWAAR.Datum_hoorzitting is 'DATUM_HOORZITTING';
    comment on column BAS_JZM_BEZWAAR.Tijd_hoorzitting is 'TIJD_HOORZITTING';
    comment on column BAS_JZM_BEZWAAR.App_verschenen is 'APP_VERSCHENEN';
    comment on column BAS_JZM_BEZWAAR.Datum_ontvangst is 'DATUM_ONTVANGST';
    comment on column BAS_JZM_BEZWAAR.Datum_vragenbrief is 'DATUM_VRAGENBRIEF';
    comment on column BAS_JZM_BEZWAAR.Wett_termijn_7_1 is 'WETT_TERMIJN_7_1';
    comment on column BAS_JZM_BEZWAAR.Wett_termijn_7_3 is 'WETT_TERMIJN_7_3';
    comment on column BAS_JZM_BEZWAAR.Wett_termijn_datum is 'WETT_TERMIJN_DATUM';
    comment on column BAS_JZM_BEZWAAR.Uitstel_datum is 'UITSTEL_DATUM';
    comment on column BAS_JZM_BEZWAAR.Overschrijding_datum is 'OVERSCHRIJDING_DATUM';
    comment on column BAS_JZM_BEZWAAR.Primair_lid_3 is 'PRIMAIR_LID_3';
    comment on column BAS_JZM_BEZWAAR.Reken_cor_id is 'REKEN_COR_ID';
    comment on column BAS_JZM_BEZWAAR.Reken_wett_termijn_7_1 is 'REKEN_WETT_TERMIJN_7_1';
    comment on column BAS_JZM_BEZWAAR.Adviescommissie is 'ADVIESCOMMISSIE';
    comment on column BAS_JZM_BEZWAAR.Datum_1e_heropname_schade is 'DATUM_1E_HEROPNAME_SCHADE';
    comment on column BAS_JZM_BEZWAAR.Tijd_1e_heropname_schade is 'TIJD_1E_HEROPNAME_SCHADE';
    comment on column BAS_JZM_BEZWAAR.Datum_2e_heropname_schade is 'DATUM_2E_HEROPNAME_SCHADE';
    comment on column BAS_JZM_BEZWAAR.Tijd_2e_heropname_schade is 'TIJD_2E_HEROPNAME_SCHADE';
    comment on column BAS_JZM_BEZWAAR.Datum_orig_schouw is 'DATUM_ORIG_SCHOUW';
    comment on column BAS_JZM_BEZWAAR.Tijd_orig_schouw is 'TIJD_ORIG_SCHOUW';
    comment on column BAS_JZM_BEZWAAR.Datum_def_schouw is 'DATUM_DEF_SCHOUW';
    comment on column BAS_JZM_BEZWAAR.Tijd_def_schouw is 'TIJD_DEF_SCHOUW';

DROP TABLE IF EXISTS BAS_JZM_BEZWAAR_TERMIJN_HIST;
CREATE TABLE BAS_JZM_BEZWAAR_TERMIJN_HIST (
    techId INTEGER PRIMARY KEY,
    Jz_id bigint,
    Vanaf_datum timestamp,
    Volg_nr bigint,
    Jz_nr varchar (6),
    Cor_id bigint,
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

    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Jz_id is 'JZ_ID';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Vanaf_datum is 'VANAF_DATUM';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Volg_nr is 'VOLG_NR';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Jz_nr is 'JZ_NR';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Cor_id is 'COR_ID';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Wijziging_in is 'WIJZIGING_IN';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Sts_cd is 'STS_CD';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Wett_termijn_7_1 is 'WETT_TERMIJN_7_1';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Wett_termijn_7_3 is 'WETT_TERMIJN_7_3';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Uitstel_datum is 'UITSTEL_DATUM';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Overschrijding_datum is 'OVERSCHRIJDING_DATUM';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Creatie_user is 'CREATIE_USER';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_JZM_BEZWAAR_TERMIJN_HIST.Adviescommissie is 'ADVIESCOMMISSIE';

DROP TABLE IF EXISTS BAS_JZM_BOB_WIZARD;
CREATE TABLE BAS_JZM_BOB_WIZARD (
    techId INTEGER PRIMARY KEY,
    Jz_id bigint,
    Verleen_bedrag numeric(26,6),
    Betaal_bedrag numeric(26,6),
    Vaststelling_bedrag numeric(26,6),
    Tra_cd_1 varchar (3),
    Bedrag_tra_cd_1 numeric(24,6),
    Tra_cd_2 varchar (3),
    Bedrag_tra_cd_2 numeric(24,6),
    Tra_cd_3 varchar (3),
    Bedrag_tra_cd_3 numeric(24,6),
    Sts_cd_voor varchar (3),
    Sts_cd_na varchar (3),
    Verleend_voor numeric(24,6),
    Gedeclareerd_voor numeric(24,6),
    Betaald_voor numeric(24,6),
    Ingetrokken_voor numeric(24,6),
    Open_vordering_voor numeric(24,6),
    Open_verlening_voor numeric(24,6),
    Verleen_na numeric(24,6),
    Gedeclareerd_na numeric(24,6),
    Betaald_na numeric(24,6),
    Ingetrokken_na numeric(24,6),
    Open_vordering_na numeric(24,6),
    Open_verlening_na numeric(24,6),
    Aanmaken_bob varchar (1),
    Verwijder_trans varchar (1),
    Cst_cd varchar (8),
    Cst_cd_beschikking varchar (8),
    Cor_id_beschikking bigint,
    Tra_id_beschikking_1 bigint,
    Tra_cd_beschikking_1 varchar (3),
    Tra_bedrag_beschikking_1 numeric(24,6),
    Tra_id_beschikking_2 bigint,
    Tra_cd_beschikking_2 varchar (3),
    Tra_bedrag_beschikking_2 numeric(24,6),
    Tra_id_afd bigint,
    Bedrag_afspraak_afd numeric(24,6),
    Datum_afspraak_afd timestamp,
    Datum_afd timestamp,
    Tra_cd_afd varchar (3),
    Vordering_tra_id_afd bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Creatie_dat timestamp,
    Creatie_user varchar (30)
);

    comment on column BAS_JZM_BOB_WIZARD.Jz_id is 'JZ_ID';
    comment on column BAS_JZM_BOB_WIZARD.Verleen_bedrag is 'VERLEEN_BEDRAG';
    comment on column BAS_JZM_BOB_WIZARD.Betaal_bedrag is 'BETAAL_BEDRAG';
    comment on column BAS_JZM_BOB_WIZARD.Vaststelling_bedrag is 'VASTSTELLING_BEDRAG';
    comment on column BAS_JZM_BOB_WIZARD.Tra_cd_1 is 'TRA_CD_1';
    comment on column BAS_JZM_BOB_WIZARD.Bedrag_tra_cd_1 is 'BEDRAG_TRA_CD_1';
    comment on column BAS_JZM_BOB_WIZARD.Tra_cd_2 is 'TRA_CD_2';
    comment on column BAS_JZM_BOB_WIZARD.Bedrag_tra_cd_2 is 'BEDRAG_TRA_CD_2';
    comment on column BAS_JZM_BOB_WIZARD.Tra_cd_3 is 'TRA_CD_3';
    comment on column BAS_JZM_BOB_WIZARD.Bedrag_tra_cd_3 is 'BEDRAG_TRA_CD_3';
    comment on column BAS_JZM_BOB_WIZARD.Sts_cd_voor is 'STS_CD_VOOR';
    comment on column BAS_JZM_BOB_WIZARD.Sts_cd_na is 'STS_CD_NA';
    comment on column BAS_JZM_BOB_WIZARD.Verleend_voor is 'VERLEEND_VOOR';
    comment on column BAS_JZM_BOB_WIZARD.Gedeclareerd_voor is 'GEDECLAREERD_VOOR';
    comment on column BAS_JZM_BOB_WIZARD.Betaald_voor is 'BETAALD_VOOR';
    comment on column BAS_JZM_BOB_WIZARD.Ingetrokken_voor is 'INGETROKKEN_VOOR';
    comment on column BAS_JZM_BOB_WIZARD.Open_vordering_voor is 'OPEN_VORDERING_VOOR';
    comment on column BAS_JZM_BOB_WIZARD.Open_verlening_voor is 'OPEN_VERLENING_VOOR';
    comment on column BAS_JZM_BOB_WIZARD.Verleen_na is 'VERLEEN_NA';
    comment on column BAS_JZM_BOB_WIZARD.Gedeclareerd_na is 'GEDECLAREERD_NA';
    comment on column BAS_JZM_BOB_WIZARD.Betaald_na is 'BETAALD_NA';
    comment on column BAS_JZM_BOB_WIZARD.Ingetrokken_na is 'INGETROKKEN_NA';
    comment on column BAS_JZM_BOB_WIZARD.Open_vordering_na is 'OPEN_VORDERING_NA';
    comment on column BAS_JZM_BOB_WIZARD.Open_verlening_na is 'OPEN_VERLENING_NA';
    comment on column BAS_JZM_BOB_WIZARD.Aanmaken_bob is 'AANMAKEN_BOB';
    comment on column BAS_JZM_BOB_WIZARD.Verwijder_trans is 'VERWIJDER_TRANS';
    comment on column BAS_JZM_BOB_WIZARD.Cst_cd is 'CST_CD';
    comment on column BAS_JZM_BOB_WIZARD.Cst_cd_beschikking is 'CST_CD_BESCHIKKING';
    comment on column BAS_JZM_BOB_WIZARD.Cor_id_beschikking is 'COR_ID_BESCHIKKING';
    comment on column BAS_JZM_BOB_WIZARD.Tra_id_beschikking_1 is 'TRA_ID_BESCHIKKING_1';
    comment on column BAS_JZM_BOB_WIZARD.Tra_cd_beschikking_1 is 'TRA_CD_BESCHIKKING_1';
    comment on column BAS_JZM_BOB_WIZARD.Tra_bedrag_beschikking_1 is 'TRA_BEDRAG_BESCHIKKING_1';
    comment on column BAS_JZM_BOB_WIZARD.Tra_id_beschikking_2 is 'TRA_ID_BESCHIKKING_2';
    comment on column BAS_JZM_BOB_WIZARD.Tra_cd_beschikking_2 is 'TRA_CD_BESCHIKKING_2';
    comment on column BAS_JZM_BOB_WIZARD.Tra_bedrag_beschikking_2 is 'TRA_BEDRAG_BESCHIKKING_2';
    comment on column BAS_JZM_BOB_WIZARD.Tra_id_afd is 'TRA_ID_AFD';
    comment on column BAS_JZM_BOB_WIZARD.Bedrag_afspraak_afd is 'BEDRAG_AFSPRAAK_AFD';
    comment on column BAS_JZM_BOB_WIZARD.Datum_afspraak_afd is 'DATUM_AFSPRAAK_AFD';
    comment on column BAS_JZM_BOB_WIZARD.Datum_afd is 'DATUM_AFD';
    comment on column BAS_JZM_BOB_WIZARD.Tra_cd_afd is 'TRA_CD_AFD';
    comment on column BAS_JZM_BOB_WIZARD.Vordering_tra_id_afd is 'VORDERING_TRA_ID_AFD';
    comment on column BAS_JZM_BOB_WIZARD.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_JZM_BOB_WIZARD.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_JZM_BOB_WIZARD.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_BOB_WIZARD.Creatie_user is 'CREATIE_USER';

DROP TABLE IF EXISTS BAS_JZM_BRIEF_FUNCTIE;
CREATE TABLE BAS_JZM_BRIEF_FUNCTIE (
    techId INTEGER PRIMARY KEY,
    Fnc_cd varchar (3),
    Oms varchar (64),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column BAS_JZM_BRIEF_FUNCTIE.Fnc_cd is 'FNC_CD';
    comment on column BAS_JZM_BRIEF_FUNCTIE.Oms is 'OMS';
    comment on column BAS_JZM_BRIEF_FUNCTIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_BRIEF_FUNCTIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_JZM_BRIEF_FUNCTIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_JZM_BRIEF_FUNCTIE.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_JZM_FUNCTIE_VAN_BRIEF;
CREATE TABLE BAS_JZM_FUNCTIE_VAN_BRIEF (
    techId INTEGER PRIMARY KEY,
    Fnc_cd varchar (3),
    Cst_cd varchar (8),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column BAS_JZM_FUNCTIE_VAN_BRIEF.Fnc_cd is 'FNC_CD';
    comment on column BAS_JZM_FUNCTIE_VAN_BRIEF.Cst_cd is 'CST_CD';
    comment on column BAS_JZM_FUNCTIE_VAN_BRIEF.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_FUNCTIE_VAN_BRIEF.Creatie_user is 'CREATIE_USER';
    comment on column BAS_JZM_FUNCTIE_VAN_BRIEF.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_JZM_FUNCTIE_VAN_BRIEF.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_JZM_PROCEDURE;
CREATE TABLE BAS_JZM_PROCEDURE (
    techId INTEGER PRIMARY KEY,
    Jaar integer,
    Volgnr integer,
    Jz_nr varchar (6),
    Jz_id bigint,
    Sts_cd varchar (3),
    Ssg_cd varchar (1),
    Dos_id bigint,
    Cor_id bigint,
    Dos_sts_cd varchar (3),
    Dos_ssg_cd varchar (1),
    Indieningsdatum timestamp,
    Datum_dos_jz timestamp,
    Actiedatum timestamp,
    Afhandeldatum timestamp,
    notities varchar (256),
    Proc_type varchar (3),
    Jzm_bezwaar varchar (1),
    Jzm_beroep varchar (1),
    Jzm_hoger_beroep varchar (1),
    Jzm_verz_schadeverg varchar (1),
    Actuele_beh_mdw_id bigint,
    Actuele_beh_rol_cd varchar (3),
    Problematiekcode smallint,
    Bedrag_bob numeric(24,6),
    Aard_bob varchar (1),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Technisch_cor_id bigint,
    Hoofdproces varchar (10)
);

    comment on column BAS_JZM_PROCEDURE.Jaar is 'JAAR';
    comment on column BAS_JZM_PROCEDURE.Volgnr is 'VOLGNR';
    comment on column BAS_JZM_PROCEDURE.Jz_nr is 'JZ_NR';
    comment on column BAS_JZM_PROCEDURE.Jz_id is 'JZ_ID';
    comment on column BAS_JZM_PROCEDURE.Sts_cd is 'STS_CD';
    comment on column BAS_JZM_PROCEDURE.Ssg_cd is 'SSG_CD';
    comment on column BAS_JZM_PROCEDURE.Dos_id is 'DOS_ID';
    comment on column BAS_JZM_PROCEDURE.Cor_id is 'COR_ID';
    comment on column BAS_JZM_PROCEDURE.Dos_sts_cd is 'DOS_STS_CD';
    comment on column BAS_JZM_PROCEDURE.Dos_ssg_cd is 'DOS_SSG_CD';
    comment on column BAS_JZM_PROCEDURE.Indieningsdatum is 'INDIENINGSDATUM';
    comment on column BAS_JZM_PROCEDURE.Datum_dos_jz is 'DATUM_DOS_JZ';
    comment on column BAS_JZM_PROCEDURE.Actiedatum is 'ACTIEDATUM';
    comment on column BAS_JZM_PROCEDURE.Afhandeldatum is 'AFHANDELDATUM';
    comment on column BAS_JZM_PROCEDURE.notities is 'NOTITIES';
    comment on column BAS_JZM_PROCEDURE.Proc_type is 'PROC_TYPE';
    comment on column BAS_JZM_PROCEDURE.Jzm_bezwaar is 'JZM_BEZWAAR';
    comment on column BAS_JZM_PROCEDURE.Jzm_beroep is 'JZM_BEROEP';
    comment on column BAS_JZM_PROCEDURE.Jzm_hoger_beroep is 'JZM_HOGER_BEROEP';
    comment on column BAS_JZM_PROCEDURE.Jzm_verz_schadeverg is 'JZM_VERZ_SCHADEVERG';
    comment on column BAS_JZM_PROCEDURE.Actuele_beh_mdw_id is 'ACTUELE_BEH_MDW_ID';
    comment on column BAS_JZM_PROCEDURE.Actuele_beh_rol_cd is 'ACTUELE_BEH_ROL_CD';
    comment on column BAS_JZM_PROCEDURE.Problematiekcode is 'PROBLEMATIEKCODE';
    comment on column BAS_JZM_PROCEDURE.Bedrag_bob is 'BEDRAG_BOB';
    comment on column BAS_JZM_PROCEDURE.Aard_bob is 'AARD_BOB';
    comment on column BAS_JZM_PROCEDURE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_JZM_PROCEDURE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_PROCEDURE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_JZM_PROCEDURE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_JZM_PROCEDURE.Technisch_cor_id is 'TECHNISCH_COR_ID';
    comment on column BAS_JZM_PROCEDURE.Hoofdproces is 'HOOFDPROCES';

DROP TABLE IF EXISTS BAS_JZM_REACTIE_TERMIJN;
CREATE TABLE BAS_JZM_REACTIE_TERMIJN (
    techId INTEGER PRIMARY KEY,
    Rol_cd varchar (3),
    Cst_cd varchar (8),
    Reactie_cd varchar (3),
    Termijn integer,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_JZM_REACTIE_TERMIJN.Rol_cd is 'ROL_CD';
    comment on column BAS_JZM_REACTIE_TERMIJN.Cst_cd is 'CST_CD';
    comment on column BAS_JZM_REACTIE_TERMIJN.Reactie_cd is 'REACTIE_CD';
    comment on column BAS_JZM_REACTIE_TERMIJN.Termijn is 'TERMIJN';
    comment on column BAS_JZM_REACTIE_TERMIJN.Creatie_user is 'CREATIE_USER';
    comment on column BAS_JZM_REACTIE_TERMIJN.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_REACTIE_TERMIJN.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_JZM_REACTIE_TERMIJN.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_JZM_STATUSREGEL;
CREATE TABLE BAS_JZM_STATUSREGEL (
    techId INTEGER PRIMARY KEY,
    Datum_van timestamp,
    Datum_tot timestamp,
    Jz_id bigint,
    Sts_cd varchar (3),
    Ssg_cd varchar (1),
    Commentaar varchar (2048),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Cor_id_van bigint,
    Cor_id_tot bigint,
    Volg_nr bigint
);

    comment on column BAS_JZM_STATUSREGEL.Datum_van is 'DATUM_VAN';
    comment on column BAS_JZM_STATUSREGEL.Datum_tot is 'DATUM_TOT';
    comment on column BAS_JZM_STATUSREGEL.Jz_id is 'JZ_ID';
    comment on column BAS_JZM_STATUSREGEL.Sts_cd is 'STS_CD';
    comment on column BAS_JZM_STATUSREGEL.Ssg_cd is 'SSG_CD';
    comment on column BAS_JZM_STATUSREGEL.Commentaar is 'COMMENTAAR';
    comment on column BAS_JZM_STATUSREGEL.Creatie_user is 'CREATIE_USER';
    comment on column BAS_JZM_STATUSREGEL.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_STATUSREGEL.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_JZM_STATUSREGEL.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_JZM_STATUSREGEL.Cor_id_van is 'COR_ID_VAN';
    comment on column BAS_JZM_STATUSREGEL.Cor_id_tot is 'COR_ID_TOT';
    comment on column BAS_JZM_STATUSREGEL.Volg_nr is 'VOLG_NR';

DROP TABLE IF EXISTS BAS_JZM_UITSPRAAK;
CREATE TABLE BAS_JZM_UITSPRAAK (
    techId INTEGER PRIMARY KEY,
    Uitspraak varchar (25),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_JZM_UITSPRAAK.Uitspraak is 'UITSPRAAK';
    comment on column BAS_JZM_UITSPRAAK.Creatie_user is 'CREATIE_USER';
    comment on column BAS_JZM_UITSPRAAK.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_JZM_UITSPRAAK.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_JZM_UITSPRAAK.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_OBJ_LOKATIE;
CREATE TABLE BAS_OBJ_LOKATIE (
    techId INTEGER PRIMARY KEY,
    Bik_cd varchar (9),
    Bik_oms varchar (200),
    Bouwtype varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Dos_id bigint,
    EobjectLocatie_id bigint,
    Extra_gegevens varchar (255),
    Huisnr varchar (30),
    Huisnr_toevoeging varchar (12),
    Lok_id bigint,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Naam varchar (100),
    Plaats varchar (30),
    Postcode varchar (6),
    Prg_id bigint,
    Provincie varchar (30),
    Straat varchar (60)
);

    comment on column BAS_OBJ_LOKATIE.Bik_cd is 'BIK_CD';
    comment on column BAS_OBJ_LOKATIE.Bik_oms is 'BIK_OMS';
    comment on column BAS_OBJ_LOKATIE.Bouwtype is 'BOUWTYPE';
    comment on column BAS_OBJ_LOKATIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_OBJ_LOKATIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_OBJ_LOKATIE.Dos_id is 'DOS_ID';
    comment on column BAS_OBJ_LOKATIE.EobjectLocatie_id is 'EOBJECTLOCATIE_ID';
    comment on column BAS_OBJ_LOKATIE.Extra_gegevens is 'EXTRA_GEGEVENS';
    comment on column BAS_OBJ_LOKATIE.Huisnr is 'HUISNR';
    comment on column BAS_OBJ_LOKATIE.Huisnr_toevoeging is 'HUISNR_TOEVOEGING';
    comment on column BAS_OBJ_LOKATIE.Lok_id is 'LOK_ID';
    comment on column BAS_OBJ_LOKATIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_OBJ_LOKATIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_OBJ_LOKATIE.Naam is 'NAAM';
    comment on column BAS_OBJ_LOKATIE.Plaats is 'PLAATS';
    comment on column BAS_OBJ_LOKATIE.Postcode is 'POSTCODE';
    comment on column BAS_OBJ_LOKATIE.Prg_id is 'PRG_ID';
    comment on column BAS_OBJ_LOKATIE.Provincie is 'PROVINCIE';
    comment on column BAS_OBJ_LOKATIE.Straat is 'STRAAT';

DROP TABLE IF EXISTS BAS_PCT_MUT;
CREATE TABLE BAS_PCT_MUT (
    techId INTEGER PRIMARY KEY,
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

    comment on column BAS_PCT_MUT.Mutatie_srt is 'MUTATIE_SRT';
    comment on column BAS_PCT_MUT.Mutatie_ind is 'MUTATIE_IND';
    comment on column BAS_PCT_MUT.Old_cijfer is 'OLD_CIJFER';
    comment on column BAS_PCT_MUT.Old_letter is 'OLD_LETTER';
    comment on column BAS_PCT_MUT.Old_reeksindicatie is 'OLD_REEKSINDICATIE';
    comment on column BAS_PCT_MUT.Old_codebreekpunt_van is 'OLD_CODEBREEKPUNT_VAN';
    comment on column BAS_PCT_MUT.Old_codebreekpunt_tm is 'OLD_CODEBREEKPUNT_TM';
    comment on column BAS_PCT_MUT.Old_woonplaatsnaam_ptt is 'OLD_WOONPLAATSNAAM_PTT';
    comment on column BAS_PCT_MUT.Old_woonplaatsnaam_nen is 'OLD_WOONPLAATSNAAM_NEN';
    comment on column BAS_PCT_MUT.Old_straatnaam_ptt is 'OLD_STRAATNAAM_PTT';
    comment on column BAS_PCT_MUT.Old_straatnaam_nen is 'OLD_STRAATNAAM_NEN';
    comment on column BAS_PCT_MUT.Old_straatnaam_off is 'OLD_STRAATNAAM_OFF';
    comment on column BAS_PCT_MUT.Old_extract_woonplaats is 'OLD_EXTRACT_WOONPLAATS';
    comment on column BAS_PCT_MUT.Old_extract_straatnaam is 'OLD_EXTRACT_STRAATNAAM';
    comment on column BAS_PCT_MUT.Old_gemeentecode is 'OLD_GEMEENTECODE';
    comment on column BAS_PCT_MUT.Old_gemeentenaam is 'OLD_GEMEENTENAAM';
    comment on column BAS_PCT_MUT.Old_provinciecode is 'OLD_PROVINCIECODE';
    comment on column BAS_PCT_MUT.Old_cebuco_code is 'OLD_CEBUCO_CODE';
    comment on column BAS_PCT_MUT.New_cijfer is 'NEW_CIJFER';
    comment on column BAS_PCT_MUT.New_letter is 'NEW_LETTER';
    comment on column BAS_PCT_MUT.New_reeksindicatie is 'NEW_REEKSINDICATIE';
    comment on column BAS_PCT_MUT.New_codebreekpunt_van is 'NEW_CODEBREEKPUNT_VAN';
    comment on column BAS_PCT_MUT.New_codebreekpunt_tm is 'NEW_CODEBREEKPUNT_TM';
    comment on column BAS_PCT_MUT.New_woonplaatsnaam_ptt is 'NEW_WOONPLAATSNAAM_PTT';
    comment on column BAS_PCT_MUT.New_woonplaatsnaam_nen is 'NEW_WOONPLAATSNAAM_NEN';
    comment on column BAS_PCT_MUT.New_straatnaam_ptt is 'NEW_STRAATNAAM_PTT';
    comment on column BAS_PCT_MUT.New_straatnaam_nen is 'NEW_STRAATNAAM_NEN';
    comment on column BAS_PCT_MUT.New_straatnaam_off is 'NEW_STRAATNAAM_OFF';
    comment on column BAS_PCT_MUT.New_extract_woonplaats is 'NEW_EXTRACT_WOONPLAATS';
    comment on column BAS_PCT_MUT.New_extract_straatnaam is 'NEW_EXTRACT_STRAATNAAM';
    comment on column BAS_PCT_MUT.New_gemeentecode is 'NEW_GEMEENTECODE';
    comment on column BAS_PCT_MUT.New_gemeentenaam is 'NEW_GEMEENTENAAM';
    comment on column BAS_PCT_MUT.New_provinciecode is 'NEW_PROVINCIECODE';
    comment on column BAS_PCT_MUT.New_cebuco_code is 'NEW_CEBUCO_CODE';

DROP TABLE IF EXISTS BAS_PCT;
CREATE TABLE BAS_PCT (
    techId INTEGER PRIMARY KEY,
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

    comment on column BAS_PCT.Cijfer is 'CIJFER';
    comment on column BAS_PCT.Letter is 'LETTER';
    comment on column BAS_PCT.Reeksindicatie is 'REEKSINDICATIE';
    comment on column BAS_PCT.Codebreekpunt_van is 'CODEBREEKPUNT_VAN';
    comment on column BAS_PCT.Codebreekpunt_tm is 'CODEBREEKPUNT_TM';
    comment on column BAS_PCT.Woonplaatsnaam_ptt is 'WOONPLAATSNAAM_PTT';
    comment on column BAS_PCT.Woonplaatsnaam_nen is 'WOONPLAATSNAAM_NEN';
    comment on column BAS_PCT.Straatnaam_ptt is 'STRAATNAAM_PTT';
    comment on column BAS_PCT.Straatnaam_nen is 'STRAATNAAM_NEN';
    comment on column BAS_PCT.Straatnaam_off is 'STRAATNAAM_OFF';
    comment on column BAS_PCT.Extract_woonplaats is 'EXTRACT_WOONPLAATS';
    comment on column BAS_PCT.Extract_straatnaam is 'EXTRACT_STRAATNAAM';
    comment on column BAS_PCT.Gemeentecode is 'GEMEENTECODE';
    comment on column BAS_PCT.Gemeentenaam is 'GEMEENTENAAM';
    comment on column BAS_PCT.Provinciecode is 'PROVINCIECODE';
    comment on column BAS_PCT.Cebuco_code is 'CEBUCO_CODE';

DROP TABLE IF EXISTS BAS_RBM_ADRES_RELATIE;
CREATE TABLE BAS_RBM_ADRES_RELATIE (
    techId INTEGER PRIMARY KEY,
    Adressoort varchar (3),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Kkr_gevalideerd varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rae_id bigint,
    Ras_id bigint,
    Rel_id bigint,
    Vst_volgnr bigint
);

    comment on column BAS_RBM_ADRES_RELATIE.Adressoort is 'ADRESSOORT';
    comment on column BAS_RBM_ADRES_RELATIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_ADRES_RELATIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_ADRES_RELATIE.Kkr_gevalideerd is 'KKR_GEVALIDEERD';
    comment on column BAS_RBM_ADRES_RELATIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_ADRES_RELATIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_ADRES_RELATIE.Rae_id is 'RAE_ID';
    comment on column BAS_RBM_ADRES_RELATIE.Ras_id is 'RAS_ID';
    comment on column BAS_RBM_ADRES_RELATIE.Rel_id is 'REL_ID';
    comment on column BAS_RBM_ADRES_RELATIE.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_RBM_ADRES;
CREATE TABLE BAS_RBM_ADRES (
    techId INTEGER PRIMARY KEY,
    Barcode varchar (25),
    Creatie_dat timestamp,
    creatie_user varchar (30),
    Huisnr bigint,
    Huisnr_toe varchar (12),
    Ias_id bigint,
    Landnaam varchar (60),
    Locatie_oms varchar (100),
    Mutatie_dat timestamp,
    mutatie_user varchar (30),
    Plaatsnaam varchar (80),
    Postcd varchar (12),
    Prov_cd varchar (2),
    Ras_id bigint,
    Straat varchar (60),
    Validatie varchar (1)
);

    comment on column BAS_RBM_ADRES.Barcode is 'BARCODE';
    comment on column BAS_RBM_ADRES.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_ADRES.creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_ADRES.Huisnr is 'HUISNR';
    comment on column BAS_RBM_ADRES.Huisnr_toe is 'HUISNR_TOE';
    comment on column BAS_RBM_ADRES.Ias_id is 'IAS_ID';
    comment on column BAS_RBM_ADRES.Landnaam is 'LANDNAAM';
    comment on column BAS_RBM_ADRES.Locatie_oms is 'LOCATIE_OMS';
    comment on column BAS_RBM_ADRES.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_ADRES.mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_ADRES.Plaatsnaam is 'PLAATSNAAM';
    comment on column BAS_RBM_ADRES.Postcd is 'POST_CD';
    comment on column BAS_RBM_ADRES.Prov_cd is 'PROV_CD';
    comment on column BAS_RBM_ADRES.Ras_id is 'RAS_ID';
    comment on column BAS_RBM_ADRES.Straat is 'STRAAT';
    comment on column BAS_RBM_ADRES.Validatie is 'VALIDATIE';

DROP TABLE IF EXISTS BAS_RBM_COM_ADRES_CP;
CREATE TABLE BAS_RBM_COM_ADRES_CP (
    techId INTEGER PRIMARY KEY,
    Creatie_dat timestamp,
    creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Org_id bigint,
    Per_id bigint,
    Rav_id bigint,
    Rca_id bigint
);

    comment on column BAS_RBM_COM_ADRES_CP.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_COM_ADRES_CP.creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_COM_ADRES_CP.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_COM_ADRES_CP.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_COM_ADRES_CP.Org_id is 'ORG_ID';
    comment on column BAS_RBM_COM_ADRES_CP.Per_id is 'PER_ID';
    comment on column BAS_RBM_COM_ADRES_CP.Rav_id is 'RAV_ID';
    comment on column BAS_RBM_COM_ADRES_CP.Rca_id is 'RCA_ID';

DROP TABLE IF EXISTS BAS_RBM_COM_ADRES_RELATIE;
CREATE TABLE BAS_RBM_COM_ADRES_RELATIE (
    techId INTEGER PRIMARY KEY,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rae_id bigint,
    Rca_id bigint,
    Rel_id bigint,
    Vst_volgnr bigint
);

    comment on column BAS_RBM_COM_ADRES_RELATIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_COM_ADRES_RELATIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_COM_ADRES_RELATIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_COM_ADRES_RELATIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_COM_ADRES_RELATIE.Rae_id is 'RAE_ID';
    comment on column BAS_RBM_COM_ADRES_RELATIE.Rca_id is 'RCA_ID';
    comment on column BAS_RBM_COM_ADRES_RELATIE.Rel_id is 'REL_ID';
    comment on column BAS_RBM_COM_ADRES_RELATIE.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_RBM_COM_ADRES;
CREATE TABLE BAS_RBM_COM_ADRES (
    techId INTEGER PRIMARY KEY,
    Com_Cd varchar (6),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rca_id bigint,
    Telnr_email varchar (60),
    Referentie varchar (10)
);

    comment on column BAS_RBM_COM_ADRES.Com_Cd is 'COM_CD';
    comment on column BAS_RBM_COM_ADRES.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_COM_ADRES.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_COM_ADRES.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_COM_ADRES.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_COM_ADRES.Rca_id is 'RCA_ID';
    comment on column BAS_RBM_COM_ADRES.Telnr_email is 'TELNR_EMAIL';
    comment on column BAS_RBM_COM_ADRES.Referentie is 'REFERENTIE';

DROP TABLE IF EXISTS BAS_RBM_CONTACTPERSOON;
CREATE TABLE BAS_RBM_CONTACTPERSOON (
    techId INTEGER PRIMARY KEY,
    Afdeling varchar (60),
    Certhoud_id bigint,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Functie varchar (30),
    Kkr_relatie_id varchar (36),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Notitie varchar (256),
    Org_id bigint,
    Per_id bigint,
    Ref_kkr_relatie_id varchar (36),
    Status_contactpersoon varchar (1),
    Validatie varchar (1)
);

    comment on column BAS_RBM_CONTACTPERSOON.Afdeling is 'AFDELING';
    comment on column BAS_RBM_CONTACTPERSOON.Certhoud_id is 'CERTHOUD_ID';
    comment on column BAS_RBM_CONTACTPERSOON.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_CONTACTPERSOON.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_CONTACTPERSOON.Functie is 'FUNCTIE';
    comment on column BAS_RBM_CONTACTPERSOON.Kkr_relatie_id is 'KKR_RELATIE_ID';
    comment on column BAS_RBM_CONTACTPERSOON.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_CONTACTPERSOON.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_CONTACTPERSOON.Notitie is 'NOTITIE';
    comment on column BAS_RBM_CONTACTPERSOON.Org_id is 'ORG_ID';
    comment on column BAS_RBM_CONTACTPERSOON.Per_id is 'PER_ID';
    comment on column BAS_RBM_CONTACTPERSOON.Ref_kkr_relatie_id is 'REF_KKR_RELATIE_ID';
    comment on column BAS_RBM_CONTACTPERSOON.Status_contactpersoon is 'STATUS_CONTACTPERSOON';
    comment on column BAS_RBM_CONTACTPERSOON.Validatie is 'VALIDATIE';

DROP TABLE IF EXISTS BAS_RBM_CP_VESTIGING;
CREATE TABLE BAS_RBM_CP_VESTIGING (
    techId INTEGER PRIMARY KEY,
    Org_id bigint,
    Per_id bigint,
    Vst_volgnr bigint
);

    comment on column BAS_RBM_CP_VESTIGING.Org_id is 'ORG_ID';
    comment on column BAS_RBM_CP_VESTIGING.Per_id is 'PER_ID';
    comment on column BAS_RBM_CP_VESTIGING.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_RBM_ORG_BSI;
CREATE TABLE BAS_RBM_ORG_BSI (
    techId INTEGER PRIMARY KEY,
    Rel_id bigint,
    Bsi_cd varchar (7),
    Volg_nr smallint,
    Begindatum timestamp,
    Einddatum timestamp,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_RBM_ORG_BSI.Rel_id is 'REL_ID';
    comment on column BAS_RBM_ORG_BSI.Bsi_cd is 'BSI_CD';
    comment on column BAS_RBM_ORG_BSI.Volg_nr is 'VOLG_NR';
    comment on column BAS_RBM_ORG_BSI.Begindatum is 'BEGINDATUM';
    comment on column BAS_RBM_ORG_BSI.Einddatum is 'EINDDATUM';
    comment on column BAS_RBM_ORG_BSI.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_ORG_BSI.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_ORG_BSI.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_ORG_BSI.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_RBM_ORG_FAILLIET;
CREATE TABLE BAS_RBM_ORG_FAILLIET (
    techId INTEGER PRIMARY KEY,
    Kvk_nr varchar (12),
    Graydon_bedrijfsnr bigint,
    Kvk_dossiernr integer,
    Kvk_kamernr smallint,
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

    comment on column BAS_RBM_ORG_FAILLIET.Kvk_nr is 'KVK_NR';
    comment on column BAS_RBM_ORG_FAILLIET.Graydon_bedrijfsnr is 'GRAYDON_BEDRIJFSNR';
    comment on column BAS_RBM_ORG_FAILLIET.Kvk_dossiernr is 'KVK_DOSSIERNR';
    comment on column BAS_RBM_ORG_FAILLIET.Kvk_kamernr is 'KVK_KAMERNR';
    comment on column BAS_RBM_ORG_FAILLIET.Kvk_subdossiernr is 'KVK_SUBDOSSIERNR';
    comment on column BAS_RBM_ORG_FAILLIET.Naam is 'NAAM';
    comment on column BAS_RBM_ORG_FAILLIET.Handelsnaam is 'HANDELSNAAM';
    comment on column BAS_RBM_ORG_FAILLIET.Straatnaam_postbus is 'STRAATNAAM_POSTBUS';
    comment on column BAS_RBM_ORG_FAILLIET.Huisnr_postbusnr is 'HUISNR_POSTBUSNR';
    comment on column BAS_RBM_ORG_FAILLIET.Huisnr_toevoeging is 'HUISNR_TOEVOEGING';
    comment on column BAS_RBM_ORG_FAILLIET.Postcode is 'POSTCODE';
    comment on column BAS_RBM_ORG_FAILLIET.Woonplaats is 'WOONPLAATS';
    comment on column BAS_RBM_ORG_FAILLIET.Land is 'LAND';
    comment on column BAS_RBM_ORG_FAILLIET.Actuele_faillisement_cd is 'ACTUELE_FAILLISEMENT_CD';
    comment on column BAS_RBM_ORG_FAILLIET.Actuele_status is 'ACTUELE_STATUS';
    comment on column BAS_RBM_ORG_FAILLIET.Actuele_opheffings_cd is 'ACTUELE_OPHEFFINGS_CD';

DROP TABLE IF EXISTS BAS_RBM_ORG_JAAR;
CREATE TABLE BAS_RBM_ORG_JAAR (
    techId INTEGER PRIMARY KEY,
    Rel_id bigint,
    Jaar integer,
    Aantal_werknemers integer,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Omzet numeric(26,6),
    Loonsom numeric(26,6),
    So_loonsom numeric(26,6),
    Max_so_vermindering numeric(26,6),
    Peildatum timestamp,
    Aantal_so_werknemers bigint,
    Bron varchar (12),
    Senterniveau_jn varchar (1),
    Lb_verm_voorlopig numeric(26,6),
    Lb_vermindering_eindafrekening numeric(26,6),
    Balanstotaal numeric(26,6)
);

    comment on column BAS_RBM_ORG_JAAR.Rel_id is 'REL_ID';
    comment on column BAS_RBM_ORG_JAAR.Jaar is 'JAAR';
    comment on column BAS_RBM_ORG_JAAR.Aantal_werknemers is 'AANTAL_WERKNEMERS';
    comment on column BAS_RBM_ORG_JAAR.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_ORG_JAAR.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_ORG_JAAR.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_ORG_JAAR.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_ORG_JAAR.Omzet is 'OMZET';
    comment on column BAS_RBM_ORG_JAAR.Loonsom is 'LOONSOM';
    comment on column BAS_RBM_ORG_JAAR.So_loonsom is 'SO_LOONSOM';
    comment on column BAS_RBM_ORG_JAAR.Max_so_vermindering is 'MAX_SO_VERMINDERING';
    comment on column BAS_RBM_ORG_JAAR.Peildatum is 'PEILDATUM';
    comment on column BAS_RBM_ORG_JAAR.Aantal_so_werknemers is 'AANTAL_SO_WERKNEMERS';
    comment on column BAS_RBM_ORG_JAAR.Bron is 'BRON';
    comment on column BAS_RBM_ORG_JAAR.Senterniveau_jn is 'SENTERNIVEAU_JN';
    comment on column BAS_RBM_ORG_JAAR.Lb_verm_voorlopig is 'LB_VERM_VOORLOPIG';
    comment on column BAS_RBM_ORG_JAAR.Lb_vermindering_eindafrekening is 'LB_VERMINDERING_EINDAFREKENING';
    comment on column BAS_RBM_ORG_JAAR.Balanstotaal is 'BALANSTOTAAL';

DROP TABLE IF EXISTS BAS_RBM_ORG_NAAM;
CREATE TABLE BAS_RBM_ORG_NAAM (
    techId INTEGER PRIMARY KEY,
    Org_id bigint,
    Org_naam varchar (625),
    Org_naam_type varchar (1),
    Sushi_foutmelding varchar (200),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Kkr_gevalideerd varchar (1)
);

    comment on column BAS_RBM_ORG_NAAM.Org_id is 'ORG_ID';
    comment on column BAS_RBM_ORG_NAAM.Org_naam is 'ORG_NAAM';
    comment on column BAS_RBM_ORG_NAAM.Org_naam_type is 'ORG_NAAM_TYPE';
    comment on column BAS_RBM_ORG_NAAM.Sushi_foutmelding is 'SUSHI_FOUTMELDING';
    comment on column BAS_RBM_ORG_NAAM.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_ORG_NAAM.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_ORG_NAAM.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_ORG_NAAM.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_ORG_NAAM.Kkr_gevalideerd is 'KKR_GEVALIDEERD';

DROP TABLE IF EXISTS BAS_RBM_ORG;
CREATE TABLE BAS_RBM_ORG (
    techId INTEGER PRIMARY KEY,
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
    Rel_id bigint,
    Rvm_cd varchar (5),
    Status_org varchar (1),
    Volg_nr_LB smallint,
    Voortzetting_van_rel_id varchar (12),
    VPB_IB_nummer varchar (35),
    IB_VPB_Plichtig varchar (1)
);

    comment on column BAS_RBM_ORG.Bik_Cd is 'BIK_CD';
    comment on column BAS_RBM_ORG.Bron_jr is 'BRON_JR';
    comment on column BAS_RBM_ORG.BTW_nummer is 'BTW_NUMMER';
    comment on column BAS_RBM_ORG.BTW_plichtig is 'BTWPL_JN';
    comment on column BAS_RBM_ORG.IB_plichtig_sinds is 'IB_PLICHTIG_SINDS';
    comment on column BAS_RBM_ORG.Jaar_oprichting is 'JAAR_OPRICHTING';
    comment on column BAS_RBM_ORG.Kkr_RSIN_afwijkend is 'KKR_RSIN_AFWIJKEND';
    comment on column BAS_RBM_ORG.KVK_nr is 'KVK_NR';
    comment on column BAS_RBM_ORG.Naam is 'NAAM';
    comment on column BAS_RBM_ORG.Notitie is 'NOTITIE';
    comment on column BAS_RBM_ORG.Rel_id is 'REL_ID';
    comment on column BAS_RBM_ORG.Rvm_cd is 'RVM_CD';
    comment on column BAS_RBM_ORG.Status_org is 'STATUS_ORG';
    comment on column BAS_RBM_ORG.Volg_nr_LB is 'VOLG_NR_LB';
    comment on column BAS_RBM_ORG.Voortzetting_van_rel_id is 'VOORTZETTING_VAN_REL_ID';
    comment on column BAS_RBM_ORG.VPB_IB_nummer is 'VPB_IB_NUMMER';
    comment on column BAS_RBM_ORG.IB_VPB_Plichtig is 'VPB_PLICHTIG_JN';

DROP TABLE IF EXISTS BAS_RBM_PERSOON;
CREATE TABLE BAS_RBM_PERSOON (
    techId INTEGER PRIMARY KEY,
    Aanhef varchar (10),
    Aanlevernaam varchar (625),
    Aanspreeknaam varchar (625),
    Achternaam varchar (414),
    Foutmelding varchar (100),
    Geboortedatum timestamp,
    Geslacht varchar (1),
    Import_contactpersonen_id bigint,
    Notitie varchar (256),
    Rbm_persoon_contact varchar (1),
    Rbm_persoon_particulier varchar (1),
    Rel_id bigint,
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

    comment on column BAS_RBM_PERSOON.Aanhef is 'AANHEF';
    comment on column BAS_RBM_PERSOON.Aanlevernaam is 'AANLEVERNAAM';
    comment on column BAS_RBM_PERSOON.Aanspreeknaam is 'AANSPREEKNAAM';
    comment on column BAS_RBM_PERSOON.Achternaam is 'ACHTERNAAM';
    comment on column BAS_RBM_PERSOON.Foutmelding is 'FOUTMELDING';
    comment on column BAS_RBM_PERSOON.Geboortedatum is 'GEBOORTEDATUM';
    comment on column BAS_RBM_PERSOON.Geslacht is 'GESLACHT';
    comment on column BAS_RBM_PERSOON.Import_contactpersonen_id is 'ICE_ID';
    comment on column BAS_RBM_PERSOON.Notitie is 'NOTITIE';
    comment on column BAS_RBM_PERSOON.Rbm_persoon_contact is 'RBM_PERSOON_CONTACT';
    comment on column BAS_RBM_PERSOON.Rbm_persoon_particulier is 'RBM_PERSOON_PARTICULIER';
    comment on column BAS_RBM_PERSOON.Rel_id is 'REL_ID';
    comment on column BAS_RBM_PERSOON.Status_persoon is 'STATUS_PERSOON';
    comment on column BAS_RBM_PERSOON.Sushi_foutmelding is 'SUSHI_FOUTMELDING';
    comment on column BAS_RBM_PERSOON.Taal is 'TAAL';
    comment on column BAS_RBM_PERSOON.Titels_na is 'TITELS_NA';
    comment on column BAS_RBM_PERSOON.Titels_voor is 'TITELS_VOOR';
    comment on column BAS_RBM_PERSOON.Tussenvoegsels is 'TUSSENVOEGSELS';
    comment on column BAS_RBM_PERSOON.Validatie is 'VALIDATIE';
    comment on column BAS_RBM_PERSOON.Voorletters is 'VOORLETTERS';
    comment on column BAS_RBM_PERSOON.Voornaam is 'VOORNAAM';
    comment on column BAS_RBM_PERSOON.XML_String is 'XML_STRING';

DROP TABLE IF EXISTS BAS_RBM_REKENINGNRS;
CREATE TABLE BAS_RBM_REKENINGNRS (
    techId INTEGER PRIMARY KEY,
    Banknaam varchar (50),
    Bic varchar (11),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Externe_bron_cd varchar (10),
    Goedkeuring_sts varchar (1),
    Iban varchar (34),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rel_id bigint,
    User_akkoord varchar (30)
);

    comment on column BAS_RBM_REKENINGNRS.Banknaam is 'BANKNAAM';
    comment on column BAS_RBM_REKENINGNRS.Bic is 'BIC';
    comment on column BAS_RBM_REKENINGNRS.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_REKENINGNRS.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_REKENINGNRS.Externe_bron_cd is 'EXTERNE_BRON_CD';
    comment on column BAS_RBM_REKENINGNRS.Goedkeuring_sts is 'GOEDKEURING_STS';
    comment on column BAS_RBM_REKENINGNRS.Iban is 'IBAN';
    comment on column BAS_RBM_REKENINGNRS.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_REKENINGNRS.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_REKENINGNRS.Rel_id is 'REL_ID';
    comment on column BAS_RBM_REKENINGNRS.User_akkoord is 'USER_AKKOORD';

DROP TABLE IF EXISTS BAS_RBM_REKNR_MUT;
CREATE TABLE BAS_RBM_REKNR_MUT (
    techId INTEGER PRIMARY KEY,
    Rel_id bigint,
    Volgnummer bigint,
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

    comment on column BAS_RBM_REKNR_MUT.Rel_id is 'REL_ID';
    comment on column BAS_RBM_REKNR_MUT.Volgnummer is 'VOLGNUMMER';
    comment on column BAS_RBM_REKNR_MUT.Org_banknaam is 'ORG_BANKNAAM';
    comment on column BAS_RBM_REKNR_MUT.Org_bankgironr is 'ORG_BANKGIRONR';
    comment on column BAS_RBM_REKNR_MUT.New_banknaam is 'NEW_BANKNAAM';
    comment on column BAS_RBM_REKNR_MUT.New_bankgironr is 'NEW_BANKGIRONR';
    comment on column BAS_RBM_REKNR_MUT.Gebruiker is 'GEBRUIKER';
    comment on column BAS_RBM_REKNR_MUT.Datum_mutatie is 'DATUM_MUTATIE';
    comment on column BAS_RBM_REKNR_MUT.Iban is 'IBAN';
    comment on column BAS_RBM_REKNR_MUT.New_iban is 'NEW_IBAN';
    comment on column BAS_RBM_REKNR_MUT.Bic is 'BIC';
    comment on column BAS_RBM_REKNR_MUT.New_bic is 'NEW_BIC';
    comment on column BAS_RBM_REKNR_MUT.Org_user_akkoord is 'ORG_USER_AKKOORD';
    comment on column BAS_RBM_REKNR_MUT.New_user_akkoord is 'NEW_USER_AKKOORD';
    comment on column BAS_RBM_REKNR_MUT.Org_goedkeuring_sts is 'ORG_GOEDKEURING_STS';
    comment on column BAS_RBM_REKNR_MUT.New_goedkeuring_sts is 'NEW_GOEDKEURING_STS';
    comment on column BAS_RBM_REKNR_MUT.Externe_bron_cd is 'EXTERNE_BRON_CD';

DROP TABLE IF EXISTS BAS_RBM_RELATIE;
CREATE TABLE BAS_RBM_RELATIE (
    techId INTEGER PRIMARY KEY,
    Actief varchar (1),
    Auth_id bigint,
    Belastingeenheid smallint,
    Creatie_dat timestamp,
    creatie_user varchar (30),
    Fiscaalnr varchar (10),
    IdE_id bigint,
    Invoer_id bigint,
    KR_Gevalideerd varchar (1),
    Kkr_Relatie_id varchar (10),
    Mutatie_dat timestamp,
    mutatie_user varchar (30),
    Rbm_org varchar (1),
    Rbm_persoon varchar (1),
    Ref_kkr_relatie_id varchar (10),
    Rel_id bigint,
    Relatietype varchar (1)
);

    comment on column BAS_RBM_RELATIE.Actief is 'ACTIEF';
    comment on column BAS_RBM_RELATIE.Auth_id is 'AUTH_ID';
    comment on column BAS_RBM_RELATIE.Belastingeenheid is 'BELASTINGEENHEID_CD';
    comment on column BAS_RBM_RELATIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_RELATIE.creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_RELATIE.Fiscaalnr is 'FISCAAL_NR';
    comment on column BAS_RBM_RELATIE.IdE_id is 'IDE_ID';
    comment on column BAS_RBM_RELATIE.Invoer_id is 'INVOER_ID';
    comment on column BAS_RBM_RELATIE.KR_Gevalideerd is 'KKR_GEVALIDEERD';
    comment on column BAS_RBM_RELATIE.Kkr_Relatie_id is 'KKR_RELATIE_ID';
    comment on column BAS_RBM_RELATIE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_RELATIE.mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_RELATIE.Rbm_org is 'RBM_ORG';
    comment on column BAS_RBM_RELATIE.Rbm_persoon is 'RBM_PERSOON';
    comment on column BAS_RBM_RELATIE.Ref_kkr_relatie_id is 'REF_KKR_RELATIE_ID';
    comment on column BAS_RBM_RELATIE.Rel_id is 'REL_ID';
    comment on column BAS_RBM_RELATIE.Relatietype is 'RELATIETYPE';

DROP TABLE IF EXISTS BAS_RBM_SBI_ORG;
CREATE TABLE BAS_RBM_SBI_ORG (
    techId INTEGER PRIMARY KEY,
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Hoofdactiviteit varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Rel_id bigint,
    Sbi_cd bigint
);

    comment on column BAS_RBM_SBI_ORG.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_SBI_ORG.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_SBI_ORG.Hoofdactiviteit is 'HOOFDACTIVITEIT';
    comment on column BAS_RBM_SBI_ORG.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_SBI_ORG.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_SBI_ORG.Rel_id is 'REL_ID';
    comment on column BAS_RBM_SBI_ORG.Sbi_cd is 'SBI_CD';

DROP TABLE IF EXISTS BAS_RBM_VESTIGING;
CREATE TABLE BAS_RBM_VESTIGING (
    techId INTEGER PRIMARY KEY,
    Actief varchar (1),
    Auth_id bigint,
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
    Rel_id bigint,
    Vest_naam varchar (625),
    Vestigings_nummer varchar (12),
    Vst_volgnr bigint
);

    comment on column BAS_RBM_VESTIGING.Actief is 'ACTIEF';
    comment on column BAS_RBM_VESTIGING.Auth_id is 'AUTH_ID';
    comment on column BAS_RBM_VESTIGING.Bik_cd is 'BIK_CD';
    comment on column BAS_RBM_VESTIGING.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RBM_VESTIGING.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RBM_VESTIGING.Hoofd_neven is 'HOOFD_NEVEN';
    comment on column BAS_RBM_VESTIGING.Kkr_conversie is 'KKR_CONVERSIE';
    comment on column BAS_RBM_VESTIGING.Kkr_gevalideerd is 'KKR_GEVALIDEERD';
    comment on column BAS_RBM_VESTIGING.Kkr_gevonden is 'KKR_GEVONDEN';
    comment on column BAS_RBM_VESTIGING.Kkr_relatie_id is 'KKR_RELATIE_ID';
    comment on column BAS_RBM_VESTIGING.Kkr_verversingsdatum is 'KKR_VERVERSINGSDATUM';
    comment on column BAS_RBM_VESTIGING.KvK_volgnr is 'KVK_VOLGNR';
    comment on column BAS_RBM_VESTIGING.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RBM_VESTIGING.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RBM_VESTIGING.Ref_Kkr_relatie_id is 'REF_KKR_RELATIE_ID';
    comment on column BAS_RBM_VESTIGING.Rel_id is 'REL_ID';
    comment on column BAS_RBM_VESTIGING.Vest_naam is 'VEST_NAAM';
    comment on column BAS_RBM_VESTIGING.Vestigings_nummer is 'VESTIGING_NUMMER';
    comment on column BAS_RBM_VESTIGING.Vst_volgnr is 'VST_VOLGNR';

DROP TABLE IF EXISTS BAS_RDM_BUDGETONDERVERDELING;
CREATE TABLE BAS_RDM_BUDGETONDERVERDELING (
    techId INTEGER PRIMARY KEY,
    Bgt_cd varchar (1),
    Budget numeric(26,6),
    Budget_uitputting numeric(24,6),
    Correctie_budget numeric(26,6),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Jaar integer,
    Koppelen_jn varchar (1),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ovk_nr varchar (20),
    Reg_id bigint,
    Rpe_datum_van timestamp,
    Rpt_nr bigint,
    Verdeeld_budget numeric(26,6),
    Vrij_budget numeric(24,6)
);

    comment on column BAS_RDM_BUDGETONDERVERDELING.Bgt_cd is 'BGT_CD';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Budget is 'BUDGET';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Budget_uitputting is 'BUDGET_UITPUTTING';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Correctie_budget is 'CORRECTIE_BUDGET';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Jaar is 'JAAR';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Koppelen_jn is 'KOPPELEN_JN';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Ovk_nr is 'OVK_NR';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Reg_id is 'REG_ID';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Rpe_datum_van is 'RPE_DATUM_VAN';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Rpt_nr is 'RPT_NR';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Verdeeld_budget is 'VERDEELD_BUDGET';
    comment on column BAS_RDM_BUDGETONDERVERDELING.Vrij_budget is 'VRIJ_BUDGET';

DROP TABLE IF EXISTS BAS_RDM_CLASSIFICATIE;
CREATE TABLE BAS_RDM_CLASSIFICATIE (
    techId INTEGER PRIMARY KEY,
    Prg_id bigint,
    Class_cd varchar (10),
    Class_oms varchar (100),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_RDM_CLASSIFICATIE.Prg_id is 'PRG_ID';
    comment on column BAS_RDM_CLASSIFICATIE.Class_cd is 'CLASS_CD';
    comment on column BAS_RDM_CLASSIFICATIE.Class_oms is 'CLASS_OMS';
    comment on column BAS_RDM_CLASSIFICATIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_CLASSIFICATIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_CLASSIFICATIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_CLASSIFICATIE.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_RDM_JAARBUDGET;
CREATE TABLE BAS_RDM_JAARBUDGET (
    techId INTEGER PRIMARY KEY,
    Afgesloten varchar (1),
    Bgt_cd varchar (1),
    Budget_uitputting numeric(24,6),
    Correctie_budget numeric(26,6),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Datum_van timestamp,
    Jaar integer,
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Ovk_nr varchar (20),
    Rpt_nr bigint,
    Tot_budget numeric(26,6),
    Verdeeld_budget numeric(26,6),
    Verdeeld_jn varchar (1),
    Vrij_budget numeric(24,6)
);

    comment on column BAS_RDM_JAARBUDGET.Afgesloten is 'AFGESLOTEN';
    comment on column BAS_RDM_JAARBUDGET.Bgt_cd is 'BGT_CD';
    comment on column BAS_RDM_JAARBUDGET.Budget_uitputting is 'BUDGET_UITPUTTING';
    comment on column BAS_RDM_JAARBUDGET.Correctie_budget is 'CORRECTIE_BUDGET';
    comment on column BAS_RDM_JAARBUDGET.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_JAARBUDGET.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_JAARBUDGET.Datum_van is 'DATUM_VAN';
    comment on column BAS_RDM_JAARBUDGET.Jaar is 'JAAR';
    comment on column BAS_RDM_JAARBUDGET.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_JAARBUDGET.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_JAARBUDGET.Ovk_nr is 'OVK_NR';
    comment on column BAS_RDM_JAARBUDGET.Rpt_nr is 'RPT_NR';
    comment on column BAS_RDM_JAARBUDGET.Tot_budget is 'TOT_BUDGET';
    comment on column BAS_RDM_JAARBUDGET.Verdeeld_budget is 'VERDEELD_BUDGET';
    comment on column BAS_RDM_JAARBUDGET.Verdeeld_jn is 'VERDEELD_JN';
    comment on column BAS_RDM_JAARBUDGET.Vrij_budget is 'VRIJ_BUDGET';

DROP TABLE IF EXISTS BAS_RDM_MANDAAT;
CREATE TABLE BAS_RDM_MANDAAT (
    techId INTEGER PRIMARY KEY,
    Mdt_id bigint,
    Middelen_type varchar (2),
    Mandaat_srt varchar (2),
    Max_bedrag numeric(24,6),
    Rdm_mandaat_rol varchar (1),
    Rdm_mandaat_mdw varchar (1),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Mdw_id bigint,
    Reg_id bigint,
    Rol_cd varchar (3)
);

    comment on column BAS_RDM_MANDAAT.Mdt_id is 'MDT_ID';
    comment on column BAS_RDM_MANDAAT.Middelen_type is 'MIDDELEN_TYPE';
    comment on column BAS_RDM_MANDAAT.Mandaat_srt is 'MANDAAT_SRT';
    comment on column BAS_RDM_MANDAAT.Max_bedrag is 'MAX_BEDRAG';
    comment on column BAS_RDM_MANDAAT.Rdm_mandaat_rol is 'RDM_MANDAAT_ROL';
    comment on column BAS_RDM_MANDAAT.Rdm_mandaat_mdw is 'RDM_MANDAAT_MDW';
    comment on column BAS_RDM_MANDAAT.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_MANDAAT.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_MANDAAT.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_MANDAAT.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_MANDAAT.Mdw_id is 'MDW_ID';
    comment on column BAS_RDM_MANDAAT.Reg_id is 'REG_ID';
    comment on column BAS_RDM_MANDAAT.Rol_cd is 'ROL_CD';

DROP TABLE IF EXISTS BAS_RDM_OVEREENKOMST_DOCUMENT;
CREATE TABLE BAS_RDM_OVEREENKOMST_DOCUMENT (
    techId INTEGER PRIMARY KEY,
    Ovk_nr varchar (20),
    Doc_naam varchar (255),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Bgt_cd varchar (1),
    Rpt_nr bigint,
    Datum_van timestamp
);

    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Ovk_nr is 'OVK_NR';
    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Doc_naam is 'DOC_NAAM';
    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Bgt_cd is 'BGT_CD';
    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Rpt_nr is 'RPT_NR';
    comment on column BAS_RDM_OVEREENKOMST_DOCUMENT.Datum_van is 'DATUM_VAN';

DROP TABLE IF EXISTS BAS_RDM_PERIODE;
CREATE TABLE BAS_RDM_PERIODE (
    techId INTEGER PRIMARY KEY,
    Ovk_nr varchar (20),
    Rpt_nr bigint,
    Bgt_cd varchar (1),
    Datum_van timestamp,
    Datum_tot timestamp,
    Kopieer_periode varchar (1),
    Auto_sap_jn varchar (1),
    Comm_rente_pct numeric(7,2),
    Beschik_datum timestamp,
    Tot_budget numeric(26,6),
    Verdeeld_budget numeric(26,6),
    Omschrijving varchar (60),
    Prg_cd varchar (12),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Bdg_verdelen_100_pct_dp varchar (1),
    Bdg_verdelen_100_pct_th varchar (1),
    Iban varchar (34),
    Bic varchar (11),
    Imvb numeric(26,6),
    Correctie_code varchar (5),
    Auto_oracle varchar (1),
    Boeking varchar (1),
    Fin_soort varchar (1),
    Kenmerk_lijn varchar (20),
    Aflossing numeric(26,6)
);

    comment on column BAS_RDM_PERIODE.Ovk_nr is 'OVK_NR';
    comment on column BAS_RDM_PERIODE.Rpt_nr is 'RPT_NR';
    comment on column BAS_RDM_PERIODE.Bgt_cd is 'BGT_CD';
    comment on column BAS_RDM_PERIODE.Datum_van is 'DATUM_VAN';
    comment on column BAS_RDM_PERIODE.Datum_tot is 'DATUM_TOT';
    comment on column BAS_RDM_PERIODE.Kopieer_periode is 'KOPIEER_PERIODE';
    comment on column BAS_RDM_PERIODE.Auto_sap_jn is 'AUTO_SAP_JN';
    comment on column BAS_RDM_PERIODE.Comm_rente_pct is 'COMM_RENTE_PCT';
    comment on column BAS_RDM_PERIODE.Beschik_datum is 'BESCHIK_DATUM';
    comment on column BAS_RDM_PERIODE.Tot_budget is 'TOT_BUDGET';
    comment on column BAS_RDM_PERIODE.Verdeeld_budget is 'VERDEELD_BUDGET';
    comment on column BAS_RDM_PERIODE.Omschrijving is 'OMSCHRIJVING';
    comment on column BAS_RDM_PERIODE.Prg_cd is 'PRG_CD';
    comment on column BAS_RDM_PERIODE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_PERIODE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_PERIODE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_PERIODE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_PERIODE.Bdg_verdelen_100_pct_dp is 'BDG_VERDELEN_100_PCT_DP';
    comment on column BAS_RDM_PERIODE.Bdg_verdelen_100_pct_th is 'BDG_VERDELEN_100_PCT_TH';
    comment on column BAS_RDM_PERIODE.Iban is 'IBAN';
    comment on column BAS_RDM_PERIODE.Bic is 'BIC';
    comment on column BAS_RDM_PERIODE.Imvb is 'IMVB';
    comment on column BAS_RDM_PERIODE.Correctie_code is 'CORRECTIE_CODE';
    comment on column BAS_RDM_PERIODE.Auto_oracle is 'AUTO_ORACLE';
    comment on column BAS_RDM_PERIODE.Boeking is 'BOEKING';
    comment on column BAS_RDM_PERIODE.Fin_soort is 'FIN_SOORT';
    comment on column BAS_RDM_PERIODE.Kenmerk_lijn is 'KENMERK_LIJN';
    comment on column BAS_RDM_PERIODE.Aflossing is 'AFLOSSING';

DROP TABLE IF EXISTS BAS_RDM_PRG_OVEREENKOMST;
CREATE TABLE BAS_RDM_PRG_OVEREENKOMST (
    techId INTEGER PRIMARY KEY,
    Prg_id bigint,
    Ovk_nr varchar (20),
    Datum_van timestamp,
    Datum_tot timestamp,
    Inhoud varchar (2048),
    Status varchar (1),
    Contractdatum timestamp,
    Totaal_budget numeric(26,6),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Mjp_jn varchar (1),
    Ovk_budget_controle varchar (1),
    Vrij_budget numeric(24,6),
    Budget_uitputting numeric(26,6)
);

    comment on column BAS_RDM_PRG_OVEREENKOMST.Prg_id is 'PRG_ID';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Ovk_nr is 'OVK_NR';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Datum_van is 'DATUM_VAN';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Datum_tot is 'DATUM_TOT';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Inhoud is 'INHOUD';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Status is 'STATUS';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Contractdatum is 'CONTRACTDATUM';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Totaal_budget is 'TOTAAL_BUDGET';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Mjp_jn is 'MJP_JN';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Ovk_budget_controle is 'OVK_BUDGET_CONTROLE';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Vrij_budget is 'VRIJ_BUDGET';
    comment on column BAS_RDM_PRG_OVEREENKOMST.Budget_uitputting is 'BUDGET_UITPUTTING';

DROP TABLE IF EXISTS BAS_RDM_PROGRAMMAMEDEWERKERROL;
CREATE TABLE BAS_RDM_PROGRAMMAMEDEWERKERROL (
    techId INTEGER PRIMARY KEY,
    Prg_id bigint,
    Mdw_id bigint,
    Auth_mdw_cd varchar (30),
    Rol_cd varchar (3),
    Actief varchar (1),
    Opmerking varchar (255),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Senioriteit varchar (30),
    Mentor_id bigint,
    Vervang_id bigint,
    Vervang_rol varchar (3),
    Acc_id bigint,
    Mdw_id_parf_naar bigint,
    Mentor_rol_cd varchar (3)
);

    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Prg_id is 'PRG_ID';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Mdw_id is 'MDW_ID';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Auth_mdw_cd is 'AUTH_MDW_CD';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Rol_cd is 'ROL_CD';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Actief is 'ACTIEF';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Opmerking is 'OPMERKING';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Senioriteit is 'SENIORITEIT';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Mentor_id is 'MENTOR_ID';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Vervang_id is 'VERVANG_ID';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Vervang_rol is 'VERVANG_ROL';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Acc_id is 'ACC_ID';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Mdw_id_parf_naar is 'MDW_ID_PARF_NAAR';
    comment on column BAS_RDM_PROGRAMMAMEDEWERKERROL.Mentor_rol_cd is 'MENTOR_ROL_CD';

DROP TABLE IF EXISTS BAS_RDM_REGELING;
CREATE TABLE BAS_RDM_REGELING (
    techId INTEGER PRIMARY KEY,
    Reg_id bigint,
    Reg_cd varchar (20),
    Reg_oms varchar (120),
    Prg_id bigint,
    Thema varchar (1),
    Rap_freq smallint,
    Ingangs_datum timestamp,
    Pub_datum timestamp,
    Eind_datum timestamp,
    Reg_document varchar (50),
    Betaalmodule varchar (1),
    Regelingscontrole varchar (1),
    Ic_helptekst varchar (2048),
    Geblokkeerd_jn varchar (1),
    Min_id bigint,
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp,
    Reg_prefix varchar (6),
    Volg_nr bigint,
    Mail_bericht_parafering varchar (1),
    Reg_mail_adres varchar (60),
    Reg_geen_dig_parafering varchar (1),
    Fin_schermen varchar (1),
    Budgetbewaking_pct bigint,
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

    comment on column BAS_RDM_REGELING.Reg_id is 'REG_ID';
    comment on column BAS_RDM_REGELING.Reg_cd is 'REG_CD';
    comment on column BAS_RDM_REGELING.Reg_oms is 'REG_OMS';
    comment on column BAS_RDM_REGELING.Prg_id is 'PRG_ID';
    comment on column BAS_RDM_REGELING.Thema is 'THEMA';
    comment on column BAS_RDM_REGELING.Rap_freq is 'RAP_FREQ';
    comment on column BAS_RDM_REGELING.Ingangs_datum is 'INGANGS_DATUM';
    comment on column BAS_RDM_REGELING.Pub_datum is 'PUB_DATUM';
    comment on column BAS_RDM_REGELING.Eind_datum is 'EIND_DATUM';
    comment on column BAS_RDM_REGELING.Reg_document is 'REG_DOCUMENT';
    comment on column BAS_RDM_REGELING.Betaalmodule is 'BETAALMODULE';
    comment on column BAS_RDM_REGELING.Regelingscontrole is 'REGELINGSCONTROLE';
    comment on column BAS_RDM_REGELING.Ic_helptekst is 'IC_HELPTEKST';
    comment on column BAS_RDM_REGELING.Geblokkeerd_jn is 'GEBLOKKEERD_JN';
    comment on column BAS_RDM_REGELING.Min_id is 'MIN_ID';
    comment on column BAS_RDM_REGELING.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_REGELING.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_REGELING.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_REGELING.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_REGELING.Reg_prefix is 'REG_PREFIX';
    comment on column BAS_RDM_REGELING.Volg_nr is 'VOLG_NR';
    comment on column BAS_RDM_REGELING.Mail_bericht_parafering is 'MAIL_BERICHT_PARAFERING';
    comment on column BAS_RDM_REGELING.Reg_mail_adres is 'REG_MAIL_ADRES';
    comment on column BAS_RDM_REGELING.Reg_geen_dig_parafering is 'REG_GEEN_DIG_PARAFERING';
    comment on column BAS_RDM_REGELING.Fin_schermen is 'FIN_SCHERMEN';
    comment on column BAS_RDM_REGELING.Budgetbewaking_pct is 'BUDGETBEWAKING_PCT';
    comment on column BAS_RDM_REGELING.Budgetbewaking_hard is 'BUDGETBEWAKING_HARD';
    comment on column BAS_RDM_REGELING.Dig_parf_mand is 'DIG_PARF_MAND';
    comment on column BAS_RDM_REGELING.Cst_set_cd is 'CST_SET_CD';
    comment on column BAS_RDM_REGELING.Auto_samenvoeg_jn is 'AUTO_SAMENVOEG_JN';
    comment on column BAS_RDM_REGELING.Fpc_status is 'FPC_STATUS';
    comment on column BAS_RDM_REGELING.Dcp_automatisch_jn is 'DCP_AUTOMATISCH_JN';
    comment on column BAS_RDM_REGELING.Paraf_mandat_pr_rol_jn is 'PARAF_MANDAT_PR_ROL_JN';
    comment on column BAS_RDM_REGELING.Dos_referentie_jaar is 'DOS_REFERENTIE_JAAR';
    comment on column BAS_RDM_REGELING.Auto_insert_sde_jn is 'AUTO_INSERT_SDE_JN';
    comment on column BAS_RDM_REGELING.Ingangsdatum_zer is 'INGANGSDATUM_ZER';

DROP TABLE IF EXISTS BAS_RDM_REGPAR_BUDGONDVERD;
CREATE TABLE BAS_RDM_REGPAR_BUDGONDVERD (
    techId INTEGER PRIMARY KEY,
    Ovk_nr varchar (20),
    Rpt_nr bigint,
    Bgt_cd varchar (1),
    Rpe_datum_van timestamp,
    Jaar integer,
    Reg_id bigint,
    Reg_nr smallint,
    Budget numeric(26,6),
    Budget_uitputting numeric(24,6),
    Koppelen_jn varchar (1),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30),
    Correctie_budget numeric(26,6),
    Vrij_budget numeric(24,6),
    Rpt_nr_oud varchar (20)
);

    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Ovk_nr is 'OVK_NR';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Rpt_nr is 'RPT_NR';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Bgt_cd is 'BGT_CD';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Rpe_datum_van is 'RPE_DATUM_VAN';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Jaar is 'JAAR';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Reg_id is 'REG_ID';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Reg_nr is 'REG_NR';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Budget is 'BUDGET';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Budget_uitputting is 'BUDGET_UITPUTTING';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Koppelen_jn is 'KOPPELEN_JN';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Correctie_budget is 'CORRECTIE_BUDGET';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Vrij_budget is 'VRIJ_BUDGET';
    comment on column BAS_RDM_REGPAR_BUDGONDVERD.Rpt_nr_oud is 'RPT_NR_OUD';

DROP TABLE IF EXISTS BAS_RDM_STATUSOVERG_BIJ_BRIEF;
CREATE TABLE BAS_RDM_STATUSOVERG_BIJ_BRIEF (
    techId INTEGER PRIMARY KEY,
    Reg_id bigint,
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

    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Reg_id is 'REG_ID';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Status_van is 'STATUS_VAN';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Statusgroep is 'STATUSGROEP';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Status_naar is 'STATUS_NAAR';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Cst_cd is 'CST_CD';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_STATUSOVERG_BIJ_BRIEF.Xps_cd is 'XPS_CD';

DROP TABLE IF EXISTS BAS_RDM_VARIABELE;
CREATE TABLE BAS_RDM_VARIABELE (
    techId INTEGER PRIMARY KEY,
    Reg_id bigint,
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

    comment on column BAS_RDM_VARIABELE.Reg_id is 'REG_ID';
    comment on column BAS_RDM_VARIABELE.Code is 'CODE';
    comment on column BAS_RDM_VARIABELE.Begindatum is 'BEGINDATUM';
    comment on column BAS_RDM_VARIABELE.Inhoud is 'INHOUD';
    comment on column BAS_RDM_VARIABELE.Toelichting is 'TOELICHTING';
    comment on column BAS_RDM_VARIABELE.Einddatum is 'EINDDATUM';
    comment on column BAS_RDM_VARIABELE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_RDM_VARIABELE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_RDM_VARIABELE.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_RDM_VARIABELE.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_STM_BSI;
CREATE TABLE BAS_STM_BSI (
    techId INTEGER PRIMARY KEY,
    Startdatum timestamp,
    Einddatum timestamp,
    Bsi_cd varchar (7),
    Bsi_oms varchar (100),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_STM_BSI.Startdatum is 'STARTDATUM';
    comment on column BAS_STM_BSI.Einddatum is 'EINDDATUM';
    comment on column BAS_STM_BSI.Bsi_cd is 'BSI_CD';
    comment on column BAS_STM_BSI.Bsi_oms is 'BSI_OMS';
    comment on column BAS_STM_BSI.Creatie_user is 'CREATIE_USER';
    comment on column BAS_STM_BSI.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_STM_BSI.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_STM_BSI.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_STM_REACTIE;
CREATE TABLE BAS_STM_REACTIE (
    techId INTEGER PRIMARY KEY,
    Reactie_cd varchar (3),
    Reactie_oms varchar (60),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_STM_REACTIE.Reactie_cd is 'REACTIE_CD';
    comment on column BAS_STM_REACTIE.Reactie_oms is 'REACTIE_OMS';
    comment on column BAS_STM_REACTIE.Creatie_user is 'CREATIE_USER';
    comment on column BAS_STM_REACTIE.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_STM_REACTIE.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_STM_REACTIE.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_STM_ROL;
CREATE TABLE BAS_STM_ROL (
    techId INTEGER PRIMARY KEY,
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

    comment on column BAS_STM_ROL.Rol_cd is 'ROL_CD';
    comment on column BAS_STM_ROL.Rol_oms is 'ROL_OMS';
    comment on column BAS_STM_ROL.Interne_rol is 'INTERNE_ROL';
    comment on column BAS_STM_ROL.Externe_rol is 'EXTERNE_ROL';
    comment on column BAS_STM_ROL.Organisatie_rol is 'ORGANISATIE_ROL';
    comment on column BAS_STM_ROL.Controller is 'CONTROLLER';
    comment on column BAS_STM_ROL.Creatie_user is 'CREATIE_USER';
    comment on column BAS_STM_ROL.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_STM_ROL.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_STM_ROL.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_STM_ROL.Type_rol is 'TYPE_ROL';
    comment on column BAS_STM_ROL.Ed_rol_cd is 'ED_ROL_CD';
    comment on column BAS_STM_ROL.Ed_rol_oms is 'ED_ROL_OMS';

DROP TABLE IF EXISTS BAS_STM_SBI;
CREATE TABLE BAS_STM_SBI (
    techId INTEGER PRIMARY KEY,
    Sbi_cd bigint,
    Sbi_oms varchar (500),
    Creatie_dat timestamp,
    Creatie_user varchar (30),
    Mutatie_dat timestamp,
    Mutatie_user varchar (30)
);

    comment on column BAS_STM_SBI.Sbi_cd is 'SBI_CD';
    comment on column BAS_STM_SBI.Sbi_oms is 'SBI_OMS';
    comment on column BAS_STM_SBI.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_STM_SBI.Creatie_user is 'CREATIE_USER';
    comment on column BAS_STM_SBI.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_STM_SBI.Mutatie_user is 'MUTATIE_USER';

DROP TABLE IF EXISTS BAS_STM_STATUS;
CREATE TABLE BAS_STM_STATUS (
    techId INTEGER PRIMARY KEY,
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

    comment on column BAS_STM_STATUS.Sts_cd is 'STS_CD';
    comment on column BAS_STM_STATUS.Sts_oms is 'STS_OMS';
    comment on column BAS_STM_STATUS.Ssg_cd is 'SSG_CD';
    comment on column BAS_STM_STATUS.Creatie_user is 'CREATIE_USER';
    comment on column BAS_STM_STATUS.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_STM_STATUS.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_STM_STATUS.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_STM_STATUS.Sts_e_indienen is 'STS_E_INDIENEN';
    comment on column BAS_STM_STATUS.Eindstatus is 'EINDSTATUS';
    comment on column BAS_STM_STATUS.Sts_e_loket is 'STS_E_LOKET';

DROP TABLE IF EXISTS BAS_STM_STATUSOVERG_BIJ_BRIEF;
CREATE TABLE BAS_STM_STATUSOVERG_BIJ_BRIEF (
    techId INTEGER PRIMARY KEY,
    Van_status varchar (3),
    naar_status varchar (3),
    Ssg_cd varchar (1),
    Cst_cd varchar (8),
    Creatie_user varchar (30),
    Creatie_dat timestamp,
    Mutatie_user varchar (30),
    Mutatie_dat timestamp
);

    comment on column BAS_STM_STATUSOVERG_BIJ_BRIEF.Van_status is 'VAN_STATUS';
    comment on column BAS_STM_STATUSOVERG_BIJ_BRIEF.naar_status is 'NAAR_STATUS';
    comment on column BAS_STM_STATUSOVERG_BIJ_BRIEF.Ssg_cd is 'SSG_CD';
    comment on column BAS_STM_STATUSOVERG_BIJ_BRIEF.Cst_cd is 'CST_CD';
    comment on column BAS_STM_STATUSOVERG_BIJ_BRIEF.Creatie_user is 'CREATIE_USER';
    comment on column BAS_STM_STATUSOVERG_BIJ_BRIEF.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_STM_STATUSOVERG_BIJ_BRIEF.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_STM_STATUSOVERG_BIJ_BRIEF.Mutatie_dat is 'MUTATIE_DAT';

DROP TABLE IF EXISTS BAS_VKM_TOEGEV_VAR_VELD_WAARDE;
CREATE TABLE BAS_VKM_TOEGEV_VAR_VELD_WAARDE (
    techId INTEGER PRIMARY KEY,
    Vkt_id bigint,
    Fysieke_naam varchar (30),
    Waarde varchar (60),
    Volgorde bigint
);

    comment on column BAS_VKM_TOEGEV_VAR_VELD_WAARDE.Vkt_id is 'VKT_ID';
    comment on column BAS_VKM_TOEGEV_VAR_VELD_WAARDE.Fysieke_naam is 'FYSIEKE_NAAM';
    comment on column BAS_VKM_TOEGEV_VAR_VELD_WAARDE.Waarde is 'WAARDE';
    comment on column BAS_VKM_TOEGEV_VAR_VELD_WAARDE.Volgorde is 'VOLGORDE';

DROP TABLE IF EXISTS BAS_VKM_TOEGEVOEGD_VAR_VELD;
CREATE TABLE BAS_VKM_TOEGEVOEGD_VAR_VELD (
    techId INTEGER PRIMARY KEY,
    Vkt_id bigint,
    Fysieke_naam varchar (30),
    Datum_start timestamp,
    Datum_einde timestamp,
    Volgorde bigint,
    Verplicht_jn varchar (1),
    Prompt varchar (40),
    Min_waarde numeric(14,2),
    Max_waarde numeric(14,2),
    Default_waarde varchar (40),
    Helptekst varchar (72)
);

    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Vkt_id is 'VKT_ID';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Fysieke_naam is 'FYSIEKE_NAAM';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Datum_start is 'DATUM_START';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Datum_einde is 'DATUM_EINDE';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Volgorde is 'VOLGORDE';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Verplicht_jn is 'VERPLICHT_JN';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Prompt is 'PROMPT';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Min_waarde is 'MIN_WAARDE';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Max_waarde is 'MAX_WAARDE';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Default_waarde is 'DEFAULT_WAARDE';
    comment on column BAS_VKM_TOEGEVOEGD_VAR_VELD.Helptekst is 'HELPTEKST';

DROP TABLE IF EXISTS BAS_VKM_VAR_GEGEVENS;
CREATE TABLE BAS_VKM_VAR_GEGEVENS (
    techId INTEGER PRIMARY KEY,
    BEDRAG_01 numeric(24,6),
    BEDRAG_02 numeric(24,6),
    BEDRAG_03 numeric(24,6),
    BEDRAG_04 numeric(24,6),
    BEDRAG_05 numeric(24,6),
    BEDRAG_06 numeric(24,6),
    BEDRAG_07 numeric(24,6),
    BEDRAG_08 numeric(24,6),
    BEDRAG_09 numeric(24,6),
    BEDRAG_10 numeric(24,6),
    BEDRAG_11 numeric(24,6),
    BEDRAG_12 numeric(24,6),
    BEDRAG_13 numeric(24,6),
    BEDRAG_14 numeric(24,6),
    BEDRAG_15 numeric(24,6),
    BEDRAG_16 numeric(24,6),
    BEDRAG_17 numeric(24,6),
    BEDRAG_18 numeric(24,6),
    BEDRAG_19 numeric(24,6),
    BEDRAG_20 numeric(24,6),
    BEDRAG_21 numeric(24,6),
    BEDRAG_22 numeric(24,6),
    BEDRAG_23 numeric(24,6),
    BEDRAG_24 numeric(24,6),
    BEDRAG_25 numeric(24,6),
    BEDRAG_26 numeric(24,6),
    BEDRAG_27 numeric(24,6),
    BEDRAG_28 numeric(24,6),
    BEDRAG_29 numeric(24,6),
    BEDRAG_30 numeric(24,6),
    BEDRAG_31 numeric(24,6),
    BEDRAG_32 numeric(24,6),
    BEDRAG_33 numeric(24,6),
    BEDRAG_34 numeric(24,6),
    BEDRAG_35 numeric(24,6),
    BEDRAG_36 numeric(24,6),
    BEDRAG_37 numeric(24,6),
    BEDRAG_38 numeric(24,6),
    BEDRAG_39 numeric(24,6),
    BEDRAG_40 numeric(24,6),
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
    INT_01 bigint,
    INT_02 bigint,
    INT_03 bigint,
    INT_04 bigint,
    INT_05 bigint,
    INT_06 bigint,
    INT_07 bigint,
    INT_08 bigint,
    INT_09 bigint,
    INT_10 bigint,
    INT_11 bigint,
    INT_12 bigint,
    INT_13 bigint,
    INT_14 bigint,
    INT_15 bigint,
    INT_16 bigint,
    INT_17 bigint,
    INT_18 bigint,
    INT_19 bigint,
    INT_20 bigint,
    INT_21 bigint,
    INT_22 bigint,
    INT_23 bigint,
    INT_24 bigint,
    INT_25 bigint,
    INT_26 bigint,
    INT_27 bigint,
    INT_28 bigint,
    INT_29 bigint,
    INT_30 bigint,
    INT_31 bigint,
    INT_32 bigint,
    INT_33 bigint,
    INT_34 bigint,
    INT_35 bigint,
    INT_36 bigint,
    INT_37 bigint,
    INT_38 bigint,
    INT_39 bigint,
    INT_40 bigint,
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
    NUMERIEK_01 numeric(22,8),
    NUMERIEK_02 numeric(22,8),
    NUMERIEK_03 numeric(22,8),
    NUMERIEK_04 numeric(22,8),
    NUMERIEK_05 numeric(22,8),
    NUMERIEK_06 numeric(22,8),
    NUMERIEK_07 numeric(22,8),
    NUMERIEK_08 numeric(22,8),
    NUMERIEK_09 numeric(22,8),
    NUMERIEK_10 numeric(22,8),
    NUMERIEK_11 numeric(22,8),
    NUMERIEK_12 numeric(22,8),
    NUMERIEK_13 numeric(22,8),
    NUMERIEK_14 numeric(22,8),
    NUMERIEK_15 numeric(22,8),
    NUMERIEK_16 numeric(22,8),
    NUMERIEK_17 numeric(22,8),
    NUMERIEK_18 numeric(22,8),
    NUMERIEK_19 numeric(22,8),
    NUMERIEK_20 numeric(22,8),
    NUMERIEK_21 numeric(22,8),
    NUMERIEK_22 numeric(22,8),
    NUMERIEK_23 numeric(22,8),
    NUMERIEK_24 numeric(22,8),
    NUMERIEK_25 numeric(22,8),
    NUMERIEK_26 numeric(22,8),
    NUMERIEK_27 numeric(22,8),
    NUMERIEK_28 numeric(22,8),
    NUMERIEK_29 numeric(22,8),
    NUMERIEK_30 numeric(22,8),
    NUMERIEK_31 numeric(22,8),
    NUMERIEK_32 numeric(22,8),
    NUMERIEK_33 numeric(22,8),
    NUMERIEK_34 numeric(22,8),
    NUMERIEK_35 numeric(22,8),
    NUMERIEK_36 numeric(22,8),
    NUMERIEK_37 numeric(22,8),
    NUMERIEK_38 numeric(22,8),
    NUMERIEK_39 numeric(22,8),
    NUMERIEK_40 numeric(22,8),
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
    VGS_ID bigint,
    VVG_VKM_VAR_GEGEVENS_DOS varchar (1),
    VVG_VKM_VAR_GEGEVENS_PRG varchar (1),
    VVG_VKT_ID bigint,
    VVG_DOS_ID bigint
);

    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_01 is 'BEDRAG_01';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_02 is 'BEDRAG_02';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_03 is 'BEDRAG_03';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_04 is 'BEDRAG_04';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_05 is 'BEDRAG_05';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_06 is 'BEDRAG_06';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_07 is 'BEDRAG_07';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_08 is 'BEDRAG_08';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_09 is 'BEDRAG_09';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_10 is 'BEDRAG_10';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_11 is 'BEDRAG_11';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_12 is 'BEDRAG_12';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_13 is 'BEDRAG_13';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_14 is 'BEDRAG_14';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_15 is 'BEDRAG_15';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_16 is 'BEDRAG_16';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_17 is 'BEDRAG_17';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_18 is 'BEDRAG_18';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_19 is 'BEDRAG_19';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_20 is 'BEDRAG_20';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_21 is 'BEDRAG_21';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_22 is 'BEDRAG_22';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_23 is 'BEDRAG_23';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_24 is 'BEDRAG_24';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_25 is 'BEDRAG_25';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_26 is 'BEDRAG_26';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_27 is 'BEDRAG_27';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_28 is 'BEDRAG_28';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_29 is 'BEDRAG_29';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_30 is 'BEDRAG_30';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_31 is 'BEDRAG_31';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_32 is 'BEDRAG_32';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_33 is 'BEDRAG_33';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_34 is 'BEDRAG_34';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_35 is 'BEDRAG_35';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_36 is 'BEDRAG_36';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_37 is 'BEDRAG_37';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_38 is 'BEDRAG_38';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_39 is 'BEDRAG_39';
    comment on column BAS_VKM_VAR_GEGEVENS.BEDRAG_40 is 'BEDRAG_40';
    comment on column BAS_VKM_VAR_GEGEVENS.Creatie_dat is 'CREATIE_DAT';
    comment on column BAS_VKM_VAR_GEGEVENS.Creatie_user is 'CREATIE_USER';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_01 is 'DATUM_01';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_02 is 'DATUM_02';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_03 is 'DATUM_03';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_04 is 'DATUM_04';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_05 is 'DATUM_05';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_06 is 'DATUM_06';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_07 is 'DATUM_07';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_08 is 'DATUM_08';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_09 is 'DATUM_09';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_10 is 'DATUM_10';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_11 is 'DATUM_11';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_12 is 'DATUM_12';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_13 is 'DATUM_13';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_14 is 'DATUM_14';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_15 is 'DATUM_15';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_16 is 'DATUM_16';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_17 is 'DATUM_17';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_18 is 'DATUM_18';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_19 is 'DATUM_19';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_20 is 'DATUM_20';
    comment on column BAS_VKM_VAR_GEGEVENS.DATUM_AANMAAK is 'DATUM_AANMAAK';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_01 is 'DROPDOWNLIST_01';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_02 is 'DROPDOWNLIST_02';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_03 is 'DROPDOWNLIST_03';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_04 is 'DROPDOWNLIST_04';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_05 is 'DROPDOWNLIST_05';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_06 is 'DROPDOWNLIST_06';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_07 is 'DROPDOWNLIST_07';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_08 is 'DROPDOWNLIST_08';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_09 is 'DROPDOWNLIST_09';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_10 is 'DROPDOWNLIST_10';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_11 is 'DROPDOWNLIST_11';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_12 is 'DROPDOWNLIST_12';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_13 is 'DROPDOWNLIST_13';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_14 is 'DROPDOWNLIST_14';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_15 is 'DROPDOWNLIST_15';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_16 is 'DROPDOWNLIST_16';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_17 is 'DROPDOWNLIST_17';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_18 is 'DROPDOWNLIST_18';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_19 is 'DROPDOWNLIST_19';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_20 is 'DROPDOWNLIST_20';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_21 is 'DROPDOWNLIST_21';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_22 is 'DROPDOWNLIST_22';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_23 is 'DROPDOWNLIST_23';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_24 is 'DROPDOWNLIST_24';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_25 is 'DROPDOWNLIST_25';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_26 is 'DROPDOWNLIST_26';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_27 is 'DROPDOWNLIST_27';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_28 is 'DROPDOWNLIST_28';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_29 is 'DROPDOWNLIST_29';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_30 is 'DROPDOWNLIST_30';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_31 is 'DROPDOWNLIST_31';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_32 is 'DROPDOWNLIST_32';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_33 is 'DROPDOWNLIST_33';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_34 is 'DROPDOWNLIST_34';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_35 is 'DROPDOWNLIST_35';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_36 is 'DROPDOWNLIST_36';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_37 is 'DROPDOWNLIST_37';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_38 is 'DROPDOWNLIST_38';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_39 is 'DROPDOWNLIST_39';
    comment on column BAS_VKM_VAR_GEGEVENS.DROPDOWNLIST_40 is 'DROPDOWNLIST_40';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_01 is 'INT_01';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_02 is 'INT_02';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_03 is 'INT_03';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_04 is 'INT_04';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_05 is 'INT_05';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_06 is 'INT_06';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_07 is 'INT_07';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_08 is 'INT_08';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_09 is 'INT_09';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_10 is 'INT_10';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_11 is 'INT_11';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_12 is 'INT_12';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_13 is 'INT_13';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_14 is 'INT_14';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_15 is 'INT_15';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_16 is 'INT_16';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_17 is 'INT_17';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_18 is 'INT_18';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_19 is 'INT_19';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_20 is 'INT_20';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_21 is 'INT_21';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_22 is 'INT_22';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_23 is 'INT_23';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_24 is 'INT_24';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_25 is 'INT_25';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_26 is 'INT_26';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_27 is 'INT_27';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_28 is 'INT_28';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_29 is 'INT_29';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_30 is 'INT_30';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_31 is 'INT_31';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_32 is 'INT_32';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_33 is 'INT_33';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_34 is 'INT_34';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_35 is 'INT_35';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_36 is 'INT_36';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_37 is 'INT_37';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_38 is 'INT_38';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_39 is 'INT_39';
    comment on column BAS_VKM_VAR_GEGEVENS.INT_40 is 'INT_40';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_01 is 'JA_NEE_01';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_02 is 'JA_NEE_02';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_03 is 'JA_NEE_03';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_04 is 'JA_NEE_04';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_05 is 'JA_NEE_05';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_06 is 'JA_NEE_06';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_07 is 'JA_NEE_07';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_08 is 'JA_NEE_08';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_09 is 'JA_NEE_09';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_10 is 'JA_NEE_10';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_11 is 'JA_NEE_11';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_12 is 'JA_NEE_12';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_13 is 'JA_NEE_13';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_14 is 'JA_NEE_14';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_15 is 'JA_NEE_15';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_16 is 'JA_NEE_16';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_17 is 'JA_NEE_17';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_18 is 'JA_NEE_18';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_19 is 'JA_NEE_19';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_20 is 'JA_NEE_20';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_21 is 'JA_NEE_21';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_22 is 'JA_NEE_22';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_23 is 'JA_NEE_23';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_24 is 'JA_NEE_24';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_25 is 'JA_NEE_25';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_26 is 'JA_NEE_26';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_27 is 'JA_NEE_27';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_28 is 'JA_NEE_28';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_29 is 'JA_NEE_29';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_30 is 'JA_NEE_30';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_01 is 'JA_NEE_NVT_01';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_02 is 'JA_NEE_NVT_02';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_03 is 'JA_NEE_NVT_03';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_04 is 'JA_NEE_NVT_04';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_05 is 'JA_NEE_NVT_05';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_06 is 'JA_NEE_NVT_06';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_07 is 'JA_NEE_NVT_07';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_08 is 'JA_NEE_NVT_08';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_09 is 'JA_NEE_NVT_09';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_10 is 'JA_NEE_NVT_10';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_11 is 'JA_NEE_NVT_11';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_12 is 'JA_NEE_NVT_12';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_13 is 'JA_NEE_NVT_13';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_14 is 'JA_NEE_NVT_14';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_15 is 'JA_NEE_NVT_15';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_16 is 'JA_NEE_NVT_16';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_17 is 'JA_NEE_NVT_17';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_18 is 'JA_NEE_NVT_18';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_19 is 'JA_NEE_NVT_19';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_NVT_20 is 'JA_NEE_NVT_20';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_01 is 'JA_NEE_ONB_01';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_02 is 'JA_NEE_ONB_02';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_03 is 'JA_NEE_ONB_03';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_04 is 'JA_NEE_ONB_04';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_05 is 'JA_NEE_ONB_05';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_06 is 'JA_NEE_ONB_06';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_07 is 'JA_NEE_ONB_07';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_08 is 'JA_NEE_ONB_08';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_09 is 'JA_NEE_ONB_09';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_10 is 'JA_NEE_ONB_10';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_11 is 'JA_NEE_ONB_11';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_12 is 'JA_NEE_ONB_12';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_13 is 'JA_NEE_ONB_13';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_14 is 'JA_NEE_ONB_14';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_15 is 'JA_NEE_ONB_15';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_16 is 'JA_NEE_ONB_16';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_17 is 'JA_NEE_ONB_17';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_18 is 'JA_NEE_ONB_18';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_19 is 'JA_NEE_ONB_19';
    comment on column BAS_VKM_VAR_GEGEVENS.JA_NEE_ONB_20 is 'JA_NEE_ONB_20';
    comment on column BAS_VKM_VAR_GEGEVENS.Mutatie_dat is 'MUTATIE_DAT';
    comment on column BAS_VKM_VAR_GEGEVENS.Mutatie_user is 'MUTATIE_USER';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_01 is 'NUMERIEK_01';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_02 is 'NUMERIEK_02';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_03 is 'NUMERIEK_03';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_04 is 'NUMERIEK_04';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_05 is 'NUMERIEK_05';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_06 is 'NUMERIEK_06';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_07 is 'NUMERIEK_07';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_08 is 'NUMERIEK_08';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_09 is 'NUMERIEK_09';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_10 is 'NUMERIEK_10';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_11 is 'NUMERIEK_11';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_12 is 'NUMERIEK_12';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_13 is 'NUMERIEK_13';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_14 is 'NUMERIEK_14';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_15 is 'NUMERIEK_15';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_16 is 'NUMERIEK_16';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_17 is 'NUMERIEK_17';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_18 is 'NUMERIEK_18';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_19 is 'NUMERIEK_19';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_20 is 'NUMERIEK_20';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_21 is 'NUMERIEK_21';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_22 is 'NUMERIEK_22';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_23 is 'NUMERIEK_23';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_24 is 'NUMERIEK_24';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_25 is 'NUMERIEK_25';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_26 is 'NUMERIEK_26';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_27 is 'NUMERIEK_27';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_28 is 'NUMERIEK_28';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_29 is 'NUMERIEK_29';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_30 is 'NUMERIEK_30';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_31 is 'NUMERIEK_31';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_32 is 'NUMERIEK_32';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_33 is 'NUMERIEK_33';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_34 is 'NUMERIEK_34';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_35 is 'NUMERIEK_35';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_36 is 'NUMERIEK_36';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_37 is 'NUMERIEK_37';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_38 is 'NUMERIEK_38';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_39 is 'NUMERIEK_39';
    comment on column BAS_VKM_VAR_GEGEVENS.NUMERIEK_40 is 'NUMERIEK_40';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_01 is 'OPTIONBUTTON_01';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_02 is 'OPTIONBUTTON_02';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_03 is 'OPTIONBUTTON_03';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_04 is 'OPTIONBUTTON_04';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_05 is 'OPTIONBUTTON_05';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_06 is 'OPTIONBUTTON_06';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_07 is 'OPTIONBUTTON_07';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_08 is 'OPTIONBUTTON_08';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_09 is 'OPTIONBUTTON_09';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_10 is 'OPTIONBUTTON_10';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_11 is 'OPTIONBUTTON_11';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_12 is 'OPTIONBUTTON_12';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_13 is 'OPTIONBUTTON_13';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_14 is 'OPTIONBUTTON_14';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_15 is 'OPTIONBUTTON_15';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_16 is 'OPTIONBUTTON_16';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_17 is 'OPTIONBUTTON_17';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_18 is 'OPTIONBUTTON_18';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_19 is 'OPTIONBUTTON_19';
    comment on column BAS_VKM_VAR_GEGEVENS.OPTIONBUTTON_20 is 'OPTIONBUTTON_20';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_01 is 'TEKSTBLOK_01';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_02 is 'TEKSTBLOK_02';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_03 is 'TEKSTBLOK_03';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_04 is 'TEKSTBLOK_04';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_05 is 'TEKSTBLOK_05';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_06 is 'TEKSTBLOK_06';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_07 is 'TEKSTBLOK_07';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_08 is 'TEKSTBLOK_08';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_09 is 'TEKSTBLOK_09';
    comment on column BAS_VKM_VAR_GEGEVENS.TEKSTBLOK_10 is 'TEKSTBLOK_10';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_01 is 'VARCHAR_60_01';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_02 is 'VARCHAR_60_02';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_03 is 'VARCHAR_60_03';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_04 is 'VARCHAR_60_04';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_05 is 'VARCHAR_60_05';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_06 is 'VARCHAR_60_06';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_07 is 'VARCHAR_60_07';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_08 is 'VARCHAR_60_08';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_09 is 'VARCHAR_60_09';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_10 is 'VARCHAR_60_10';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_11 is 'VARCHAR_60_11';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_12 is 'VARCHAR_60_12';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_13 is 'VARCHAR_60_13';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_14 is 'VARCHAR_60_14';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_15 is 'VARCHAR_60_15';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_16 is 'VARCHAR_60_16';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_17 is 'VARCHAR_60_17';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_18 is 'VARCHAR_60_18';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_19 is 'VARCHAR_60_19';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_20 is 'VARCHAR_60_20';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_21 is 'VARCHAR_60_21';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_22 is 'VARCHAR_60_22';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_23 is 'VARCHAR_60_23';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_24 is 'VARCHAR_60_24';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_25 is 'VARCHAR_60_25';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_26 is 'VARCHAR_60_26';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_27 is 'VARCHAR_60_27';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_28 is 'VARCHAR_60_28';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_29 is 'VARCHAR_60_29';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_30 is 'VARCHAR_60_30';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_31 is 'VARCHAR_60_31';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_32 is 'VARCHAR_60_32';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_33 is 'VARCHAR_60_33';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_34 is 'VARCHAR_60_34';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_35 is 'VARCHAR_60_35';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_36 is 'VARCHAR_60_36';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_37 is 'VARCHAR_60_37';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_38 is 'VARCHAR_60_38';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_39 is 'VARCHAR_60_39';
    comment on column BAS_VKM_VAR_GEGEVENS.VARCHAR_60_40 is 'VARCHAR_60_40';
    comment on column BAS_VKM_VAR_GEGEVENS.VGS_ID is 'VGS_ID';
    comment on column BAS_VKM_VAR_GEGEVENS.VVG_VKM_VAR_GEGEVENS_DOS is 'VKM_VAR_GEGEVENS_DOS';
    comment on column BAS_VKM_VAR_GEGEVENS.VVG_VKM_VAR_GEGEVENS_PRG is 'VKM_VAR_GEGEVENS_PRG';
    comment on column BAS_VKM_VAR_GEGEVENS.VVG_VKT_ID is 'VKT_ID';
    comment on column BAS_VKM_VAR_GEGEVENS.VVG_DOS_ID is 'DOS_ID';

DROP TABLE IF EXISTS BAS_VKM_VAR_KAART;
CREATE TABLE BAS_VKM_VAR_KAART (
    techId INTEGER PRIMARY KEY,
    Vkt_id bigint,
    Kaart_naam varchar (30),
    Datum_start timestamp,
    Datum_einde timestamp,
    Omschrijving varchar (2000),
    Vkm_var_kaart_dos varchar (1),
    Vkm_var_kaart_prg varchar (1),
    Prg_id bigint,
    Reg_id bigint,
    Reg_id_regpar bigint,
    Reg_Nr smallint,
    Vkm_var_kaart_dos_prg varchar (1),
    Vkm_var_kaart_dos_reg varchar (1),
    Vkm_var_kaart_dos_regpar varchar (1),
    Geblokkeerd varchar (1),
    Copy_jn varchar (1)
);

    comment on column BAS_VKM_VAR_KAART.Vkt_id is 'VKT_ID';
    comment on column BAS_VKM_VAR_KAART.Kaart_naam is 'KAART_NAAM';
    comment on column BAS_VKM_VAR_KAART.Datum_start is 'DATUM_START';
    comment on column BAS_VKM_VAR_KAART.Datum_einde is 'DATUM_EINDE';
    comment on column BAS_VKM_VAR_KAART.Omschrijving is 'OMSCHRIJVING';
    comment on column BAS_VKM_VAR_KAART.Vkm_var_kaart_dos is 'VKM_VAR_KAART_DOS';
    comment on column BAS_VKM_VAR_KAART.Vkm_var_kaart_prg is 'VKM_VAR_KAART_PRG';
    comment on column BAS_VKM_VAR_KAART.Prg_id is 'PRG_ID';
    comment on column BAS_VKM_VAR_KAART.Reg_id is 'REG_ID';
    comment on column BAS_VKM_VAR_KAART.Reg_id_regpar is 'REG_ID_REGPAR';
    comment on column BAS_VKM_VAR_KAART.Reg_Nr is 'REG_NR';
    comment on column BAS_VKM_VAR_KAART.Vkm_var_kaart_dos_prg is 'VKM_VAR_KAART_DOS_PRG';
    comment on column BAS_VKM_VAR_KAART.Vkm_var_kaart_dos_reg is 'VKM_VAR_KAART_DOS_REG';
    comment on column BAS_VKM_VAR_KAART.Vkm_var_kaart_dos_regpar is 'VKM_VAR_KAART_DOS_REGPAR';
    comment on column BAS_VKM_VAR_KAART.Geblokkeerd is 'GEBLOKKEERD';
    comment on column BAS_VKM_VAR_KAART.Copy_jn is 'COPY_JN';

