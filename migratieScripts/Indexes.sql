

drop index if exists BAS_AOM_TRANSACTIETYPE_idx01;
create index BAS_AOM_TRANSACTIETYPE_idx01 on BAS_AOM_TRANSACTIETYPE
   ( tra_cd asc );

drop index if exists BAS_COR_CORRESPONDENTIE_idx01;
create index BAS_COR_CORRESPONDENTIE_idx01 on BAS_COR_CORRESPONDENTIE
   ( DOS_ID asc );

drop index if exists BAS_COR_TRANSACTIEGROEP_BIJ_BRF_idx01;
create index BAS_COR_TRANSACTIEGROEP_BIJ_BRF_idx01 on BAS_COR_TRANSACTIEGROEP_BIJ_BRF
   ( DOS_ID asc );

drop index if exists BAS_DAM_CONT_BIJ_DLN_COM_ADR_idx01;
create index BAS_DAM_CONT_BIJ_DLN_COM_ADR_idx01 on BAS_DAM_CONT_BIJ_DLN_COM_ADR
   ( DOS_ID asc );

drop index if exists BAS_DAM_CONTACT_BIJ_DEELNAME_idx01;
create index BAS_DAM_CONTACT_BIJ_DEELNAME_idx01 on BAS_DAM_CONTACT_BIJ_DEELNAME
   ( DOS_ID asc );

drop index if exists BAS_DAM_DECLARATIE_idx01;
create index BAS_DAM_DECLARATIE_idx01 on BAS_DAM_DECLARATIE
   ( DOS_ID asc );

drop index if exists BAS_DAM_DEELNAME_ADRES_idx01;
create index BAS_DAM_DEELNAME_ADRES_idx01 on BAS_DAM_DEELNAME_ADRES
   ( DOS_ID asc );

drop index if exists BAS_DAM_DEELNAME_COM_ADRES_idx01;
create index BAS_DAM_DEELNAME_COM_ADRES_idx01 on BAS_DAM_DEELNAME_COM_ADRES
   ( DOS_ID asc );

drop index if exists BAS_DAM_DEELNAME_idx01;
create index BAS_DAM_DEELNAME_idx01 on BAS_DAM_DEELNAME
   ( DOS_ID asc );

drop index if exists BAS_DAM_DOS_BUDGETREGEL_idx01;
create index BAS_DAM_DOS_BUDGETREGEL_idx01 on BAS_DAM_DOS_BUDGETREGEL
   ( DOS_ID asc );

drop index if exists BAS_DAM_DOSSIER_IN_GROEP_idx01;
create index BAS_DAM_DOSSIER_IN_GROEP_idx01 on BAS_DAM_DOSSIER_IN_GROEP
   ( DOS_ID asc );

drop index if exists BAS_DAM_DOSSIER_NOTITIE_idx01;
create index BAS_DAM_DOSSIER_NOTITIE_idx01 on BAS_DAM_DOSSIER_NOTITIE
   ( DOS_ID asc );

drop index if exists BAS_DAM_DOSSIER_idx01;
create index BAS_DAM_DOSSIER_idx01 on BAS_DAM_DOSSIER
   ( DOS_ID asc );

drop index if exists BAS_DAM_MDW_INTERN_HIST_idx01;
create index BAS_DAM_MDW_INTERN_HIST_idx01 on BAS_DAM_MDW_INTERN_HIST
   ( DOS_ID asc );

drop index if exists BAS_DAM_MDW_INTERN_idx01;
create index BAS_DAM_MDW_INTERN_idx01 on BAS_DAM_MDW_INTERN
   ( DOS_ID asc, ROL_CD asc );

drop index if exists BAS_DAM_STATUSHISTORIE_idx01;
create index BAS_DAM_STATUSHISTORIE_idx01 on BAS_DAM_STATUSHISTORIE
   ( DOS_ID asc, STS_CD asc );

drop index if exists BAS_DAM_TERMIJN_PARAAF_NOTITIE_idx01;
create index BAS_DAM_TERMIJN_PARAAF_NOTITIE_idx01 on BAS_DAM_TERMIJN_PARAAF_NOTITIE
   ( DOS_ID asc );

drop index if exists BAS_DAM_TERMIJN_idx01;
create index BAS_DAM_TERMIJN_idx01 on BAS_DAM_TERMIJN
   ( DOS_ID asc, COR_ID asc );

drop index if exists BAS_DAM_TERMIJN_idx02;
create index BAS_DAM_TERMIJN_idx02 on BAS_DAM_TERMIJN
   ( COR_ID asc );

drop index if exists BAS_FAM_STATUSHISTORIE_idx01;
create index BAS_FAM_STATUSHISTORIE_idx01 on BAS_FAM_STATUSHISTORIE
   ( DOS_ID asc );

drop index if exists BAS_FAM_TRANSACTIE_idx01;
create index BAS_FAM_TRANSACTIE_idx01 on BAS_FAM_TRANSACTIE
   ( DOS_ID asc );

drop index if exists BAS_JZM_PROCEDURE_idx01;
create index BAS_JZM_PROCEDURE_idx01 on BAS_JZM_PROCEDURE
   ( DOS_ID asc );

drop index if exists BAS_IOM_MEDEWERKER_idx01;
create index BAS_IOM_MEDEWERKER_idx01 on BAS_IOM_MEDEWERKER
   ( Mdw_id asc );

drop index if exists BAS_OBJ_LOKATIE_idx01;
create index BAS_OBJ_LOKATIE_idx01 on BAS_OBJ_LOKATIE
   ( DOS_ID asc );

drop index if exists Bas_Fam_Transactie_idx01;
create index Bas_Fam_Transactie_idx01 on Bas_Fam_Transactie 
   ( TRA_ID asc );

drop index if exists BAS_FAM_TRANSACTIE_REGEL_idx01;
create index BAS_FAM_TRANSACTIE_REGEL_idx01 on BAS_FAM_TRANSACTIE_REGEL 
   ( TRA_ID asc, Rpt_nr asc );


drop index if exists BAS_VKM_VAR_GEGEVENS_idx01;
create index BAS_VKM_VAR_GEGEVENS_idx01 on BAS_VKM_VAR_GEGEVENS
   ( VVG_DOS_ID asc, VVG_VKT_ID asc );

