CREATE TABLE admin (
    idrad INTEGER NOT NULL
);

ALTER TABLE admin ADD CONSTRAINT admin_pk PRIMARY KEY ( idrad );

CREATE TABLE anamneza (
    stetnenavike VARCHAR2(50 CHAR),
    alergije     VARCHAR2(50 CHAR),
    razdolaska   VARCHAR2(50),
    idizv        INTEGER NOT NULL
);

ALTER TABLE anamneza ADD CONSTRAINT anamneza_pk PRIMARY KEY ( idizv );

CREATE TABLE bira_se (
    idrad  INTEGER NOT NULL,
    idpreg INTEGER NOT NULL,
    idpac  INTEGER NOT NULL
);

ALTER TABLE bira_se ADD CONSTRAINT bira_se_pk PRIMARY KEY ( idrad );

CREATE TABLE bolest (
    sifrabol       VARCHAR2(5 CHAR) NOT NULL,
    nazivbol       VARCHAR2(20 CHAR) NOT NULL,
    klasbol        VARCHAR2(20 CHAR) NOT NULL,
    opisbol        VARCHAR2(50 CHAR),
    idizv INTEGER NOT NULL
);

ALTER TABLE bolest ADD CONSTRAINT bolest_pk PRIMARY KEY ( sifrabol );

CREATE TABLE cenovnik (
    datpoc DATE NOT NULL,
    datzav DATE,
    iznos  NUMBER NOT NULL,
    idtp   INTEGER NOT NULL
);

ALTER TABLE cenovnik ADD CONSTRAINT cenovnik_pk PRIMARY KEY ( datpoc,
                                                              idtp );

CREATE TABLE clan_porodice (
    idcp      INTEGER NOT NULL,
    srodstvo  VARCHAR2(20 CHAR),
    idpac     INTEGER NOT NULL,
    imeclana  VARCHAR2(20),
    prezclana VARCHAR2(20)
);

ALTER TABLE clan_porodice ADD CONSTRAINT clan_porodice_pk PRIMARY KEY ( idcp,
                                                                        idpac );

CREATE TABLE dijagnoza (
    sifrabol VARCHAR2(5 CHAR) NOT NULL,
    idpreg   INTEGER NOT NULL,
    idpac    INTEGER NOT NULL,
    opisdij  VARCHAR2(60) NOT NULL
);

ALTER TABLE dijagnoza
    ADD CONSTRAINT dijagnoza_pk PRIMARY KEY ( sifrabol,
                                              idpreg,
                                              idpac );

CREATE TABLE doza (
    idlek   INTEGER NOT NULL,
    iddoze  INTEGER NOT NULL,
    brdan   INTEGER NOT NULL,
    klkputa VARCHAR2(60 CHAR) NOT NULL
);

ALTER TABLE doza ADD CONSTRAINT doza_pk PRIMARY KEY ( idlek, iddoze );

CREATE TABLE izvestaj (
    idizv       INTEGER NOT NULL,
    datizv      DATE NOT NULL,
    idpreg      INTEGER NOT NULL,
    idpac       INTEGER NOT NULL,
    visus_l     VARCHAR2(20 CHAR),
    visus_d     VARCHAR2(20 CHAR),
    pritisak_l  VARCHAR2(20 CHAR),
    pritisak_d  VARCHAR2(20 CHAR),
    predseg_l   VARCHAR2(20 CHAR),
    predseg_d   VARCHAR2(20 CHAR),
    zadseg_l    VARCHAR2(20 CHAR),
    zadseg_d    VARCHAR2(20 CHAR),
    kolvid_l    VARCHAR2(20 CHAR),
    kolvid_d    VARCHAR2(20 CHAR),
    skijasko_l  VARCHAR2(20 CHAR),
    skijasko_d  VARCHAR2(20 CHAR),
    shiremr_l   VARCHAR2(20 CHAR),
    shiremr_d   VARCHAR2(20 CHAR),
    strabo_l    VARCHAR2(20 CHAR),
    strabo_d    VARCHAR2(20 CHAR),
    gonioskop_l VARCHAR2(20 CHAR),
    gonioskop_d VARCHAR2(20 CHAR),
    vidpolj_l   VARCHAR2(20 CHAR),
    vidpolj_d   VARCHAR2(20 CHAR)
);

CREATE UNIQUE INDEX izvestaj__idx ON
    izvestaj (
        idpreg
    ASC,
        idpac
    ASC );

ALTER TABLE izvestaj ADD CONSTRAINT izvestaj_pk PRIMARY KEY ( idizv );

CREATE TABLE je_imao (
    sifrabol VARCHAR2(5 CHAR) NOT NULL,
    idcp     INTEGER NOT NULL,
    idpac    INTEGER NOT NULL,
    idizv    INTEGER NOT NULL
);

ALTER TABLE je_imao
    ADD CONSTRAINT je_imao_pk PRIMARY KEY ( sifrabol,
                                            idcp,
                                            idpac );

CREATE TABLE laboratorija (
    iduput INTEGER NOT NULL
);

ALTER TABLE laboratorija ADD CONSTRAINT laboratorija_pk PRIMARY KEY ( iduput );

CREATE TABLE lek (
    idlek  INTEGER NOT NULL,
    nazlek VARCHAR2(20 CHAR) NOT NULL,
    sastav VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE lek ADD CONSTRAINT lek_pk PRIMARY KEY ( idlek );

CREATE TABLE lek_anamneza (
    idlek INTEGER NOT NULL,
    idizv INTEGER NOT NULL
);

ALTER TABLE lek_anamneza ADD CONSTRAINT lek_anamneza_pk PRIMARY KEY ( idlek,
                                                                      idizv );

CREATE TABLE lekar (
    idspec INTEGER NOT NULL,
    idrad  INTEGER NOT NULL
);

ALTER TABLE lekar ADD CONSTRAINT lekar_pk PRIMARY KEY ( idrad );

CREATE TABLE med_sestra (
    idrad INTEGER NOT NULL
);

ALTER TABLE med_sestra ADD CONSTRAINT med_sestra_pk PRIMARY KEY ( idrad );

CREATE TABLE objekat (
    idoft     INTEGER NOT NULL,
    idobj     INTEGER NOT NULL,
    nazivobj  VARCHAR2(20) NOT NULL,
    idrad     INTEGER,
    adresaobj VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE objekat ADD CONSTRAINT objekat_pk PRIMARY KEY ( idoft,
                                                            idobj );

CREATE TABLE ordinacija (
    idoft     INTEGER NOT NULL,
    nazivoft  VARCHAR2(20 CHAR) NOT NULL,
    adresaoft VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE ordinacija ADD CONSTRAINT ordinacija_pk PRIMARY KEY ( idoft );

CREATE TABLE pacijent (
    idpac      INTEGER NOT NULL,
    imepac     VARCHAR2(20 CHAR) NOT NULL,
    prezpac    VARCHAR2(20 CHAR) NOT NULL,
    datrodjpac DATE NOT NULL,
    emailpac   VARCHAR2(30 CHAR) NOT NULL,
    lozpac     VARCHAR2(30 CHAR) NOT NULL,
    pol        VARCHAR2(10) NOT NULL
);

ALTER TABLE pacijent
    ADD CHECK ( pol IN ( 'muski', 'zenski' ) );

ALTER TABLE pacijent ADD CONSTRAINT pacijent_pk PRIMARY KEY ( idpac );

CREATE TABLE pregled (
    idpreg     INTEGER NOT NULL,
    datpreg    DATE NOT NULL,
    idtp       INTEGER NOT NULL,
    idpac      INTEGER NOT NULL,
    statuspreg VARCHAR2(10) NOT NULL
);

ALTER TABLE pregled
    ADD CHECK ( statuspreg IN ( 'ND', 'obavljen', 'zakazan' ) );

ALTER TABLE pregled ADD CONSTRAINT pregled_pk PRIMARY KEY ( idpreg,
                                                            idpac );

CREATE TABLE radnik (
    idoft      INTEGER NOT NULL,
    idobj      INTEGER NOT NULL,
    idrad      INTEGER NOT NULL,
    datzap     DATE NOT NULL,
    tiprad     VARCHAR2(30) NOT NULL,
    imerad     VARCHAR2(20 CHAR) NOT NULL,
    prezrad    VARCHAR2(20 CHAR) NOT NULL,
    datrodjrad DATE NOT NULL,
    emailrad   VARCHAR2(30 CHAR) NOT NULL,
    lozrad     VARCHAR2(30 CHAR) NOT NULL,
    pol        VARCHAR2(10) NOT NULL
);

ALTER TABLE radnik
    ADD CONSTRAINT ch_inh_radnik CHECK ( tiprad IN ( 'administrator', 'lekar', 'medicinskasestra' ) );

ALTER TABLE radnik
    ADD CHECK ( pol IN ( 'muski', 'zenski' ) );

ALTER TABLE radnik ADD CONSTRAINT radnik_pk PRIMARY KEY ( idrad );

CREATE TABLE spec_pregled (
    iduput INTEGER NOT NULL,
    idspec INTEGER NOT NULL
);

ALTER TABLE spec_pregled ADD CONSTRAINT spec_pregled_pk PRIMARY KEY ( iduput );

CREATE TABLE specijalnost (
    idspec    INTEGER NOT NULL,
    nazivspec VARCHAR2(30 CHAR) NOT NULL,
    opisspec  CLOB
);

ALTER TABLE specijalnost ADD CONSTRAINT specijalnost_pk PRIMARY KEY ( idspec );

CREATE TABLE stac_lecenje (
    iduput INTEGER NOT NULL,
    razlog VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE stac_lecenje ADD CONSTRAINT stac_lecenje_pk PRIMARY KEY ( iduput );

CREATE TABLE terapija (
    sifrabol VARCHAR2(5 CHAR) NOT NULL,
    idpreg   INTEGER NOT NULL,
    idpac    INTEGER NOT NULL
);

ALTER TABLE terapija
    ADD CONSTRAINT terapija_pk PRIMARY KEY ( sifrabol,
                                             idpreg,
                                             idpac );

CREATE TABLE terapija_doza (
    idlek    INTEGER NOT NULL,
    iddoze   INTEGER NOT NULL,
    sifrabol VARCHAR2(5 CHAR) NOT NULL,
    idpreg   INTEGER NOT NULL,
    idpac    INTEGER NOT NULL
);

ALTER TABLE terapija_doza
    ADD CONSTRAINT terapija_doza_pk PRIMARY KEY ( idlek,
                                                  iddoze,
                                                  sifrabol,
                                                  idpreg,
                                                  idpac );

CREATE TABLE tip_pregleda (
    idtp       INTEGER NOT NULL,
    nazivtip   VARCHAR2(30 CHAR) NOT NULL,
    opistp     CLOB,
    trajanjetp INTEGER NOT NULL
);

ALTER TABLE tip_pregleda ADD CONSTRAINT tip_pregleda_pk PRIMARY KEY ( idtp );

CREATE TABLE tip_uredjaja (
    idtipu  INTEGER NOT NULL,
    naztipu VARCHAR2(20) NOT NULL
);

ALTER TABLE tip_uredjaja ADD CONSTRAINT tip_uredjaja_pk PRIMARY KEY ( idtipu );

CREATE TABLE tipp_lab (
    idtp   INTEGER NOT NULL,
    iduput INTEGER NOT NULL
);

ALTER TABLE tipp_lab ADD CONSTRAINT tipp_lab_pk PRIMARY KEY ( idtp,
                                                              iduput );

CREATE TABLE tipu_lab (
    idtipu INTEGER NOT NULL,
    iduput INTEGER NOT NULL
);

ALTER TABLE tipu_lab ADD CONSTRAINT tipu_lab_pk PRIMARY KEY ( idtipu,
                                                              iduput );

CREATE TABLE uput (
    iduput   INTEGER NOT NULL,
    idpreg   INTEGER NOT NULL,
    idpac    INTEGER NOT NULL,
    idoft    INTEGER NOT NULL,
    idobj    INTEGER NOT NULL,
    tipuputa VARCHAR2(30) NOT NULL
);

ALTER TABLE uput
    ADD CHECK ( tipuputa IN ( 'laboratorija', 'specpregled', 'staclecenje' ) );

ALTER TABLE uput ADD CONSTRAINT uput_pk PRIMARY KEY ( iduput );

CREATE TABLE uredjaj (
    idoft      INTEGER NOT NULL,
    idobj      INTEGER NOT NULL,
    iduredj    INTEGER NOT NULL,
    nazivuredj VARCHAR2(35 CHAR) NOT NULL,
    idtipu     INTEGER NOT NULL
);

ALTER TABLE uredjaj
    ADD CONSTRAINT uredjaj_pk PRIMARY KEY ( idoft,
                                            idobj,
                                            iduredj );

ALTER TABLE admin
    ADD CONSTRAINT admin_radnik_fk FOREIGN KEY ( idrad )
        REFERENCES radnik ( idrad );

ALTER TABLE anamneza
    ADD CONSTRAINT anamneza_izvestaj_fk FOREIGN KEY ( idizv )
        REFERENCES izvestaj ( idizv );

ALTER TABLE bira_se
    ADD CONSTRAINT bira_se_lekar_fk FOREIGN KEY ( idrad )
        REFERENCES lekar ( idrad );

ALTER TABLE bira_se
    ADD CONSTRAINT bira_se_pregled_fk FOREIGN KEY ( idpreg,
                                                    idpac )
        REFERENCES pregled ( idpreg,
                             idpac );

ALTER TABLE bolest
    ADD CONSTRAINT bolest_anamneza_fk FOREIGN KEY ( idizv )
        REFERENCES anamneza ( idizv );

ALTER TABLE cenovnik
    ADD CONSTRAINT cenovnik_tip_pregleda_fk FOREIGN KEY ( idtp )
        REFERENCES tip_pregleda ( idtp );

ALTER TABLE clan_porodice
    ADD CONSTRAINT clan_porodice_pacijent_fk FOREIGN KEY ( idpac )
        REFERENCES pacijent ( idpac );

ALTER TABLE dijagnoza
    ADD CONSTRAINT dijagnoza_bolest_fk FOREIGN KEY ( sifrabol )
        REFERENCES bolest ( sifrabol );

ALTER TABLE dijagnoza
    ADD CONSTRAINT dijagnoza_pregled_fk FOREIGN KEY ( idpreg,
                                                      idpac )
        REFERENCES pregled ( idpreg,
                             idpac );

ALTER TABLE doza
    ADD CONSTRAINT doza_lek_fk FOREIGN KEY ( idlek )
        REFERENCES lek ( idlek );

ALTER TABLE izvestaj
    ADD CONSTRAINT izvestaj_pregled_fk FOREIGN KEY ( idpreg,
                                                     idpac )
        REFERENCES pregled ( idpreg,
                             idpac );

ALTER TABLE je_imao
    ADD CONSTRAINT je_imao_anamneza_fk FOREIGN KEY ( idizv )
        REFERENCES anamneza ( idizv );

ALTER TABLE je_imao
    ADD CONSTRAINT je_imao_bolest_fk FOREIGN KEY ( sifrabol )
        REFERENCES bolest ( sifrabol );

ALTER TABLE je_imao
    ADD CONSTRAINT je_imao_clan_porodice_fk FOREIGN KEY ( idcp,
                                                          idpac )
        REFERENCES clan_porodice ( idcp,
                                   idpac );

ALTER TABLE laboratorija
    ADD CONSTRAINT laboratorija_uput_fk FOREIGN KEY ( iduput )
        REFERENCES uput ( iduput );

ALTER TABLE lek_anamneza
    ADD CONSTRAINT lek_anamneza_anamneza_fk FOREIGN KEY ( idizv )
        REFERENCES anamneza ( idizv );

ALTER TABLE lek_anamneza
    ADD CONSTRAINT lek_anamneza_lek_fk FOREIGN KEY ( idlek )
        REFERENCES lek ( idlek );

ALTER TABLE lekar
    ADD CONSTRAINT lekar_radnik_fk FOREIGN KEY ( idrad )
        REFERENCES radnik ( idrad );

ALTER TABLE lekar
    ADD CONSTRAINT lekar_specijalnost_fk FOREIGN KEY ( idspec )
        REFERENCES specijalnost ( idspec );

ALTER TABLE med_sestra
    ADD CONSTRAINT med_sestra_radnik_fk FOREIGN KEY ( idrad )
        REFERENCES radnik ( idrad );

ALTER TABLE objekat
    ADD CONSTRAINT objekat_bira_se_fk FOREIGN KEY ( idrad )
        REFERENCES bira_se ( idrad );

ALTER TABLE objekat
    ADD CONSTRAINT objekat_ordinacija_fk FOREIGN KEY ( idoft )
        REFERENCES ordinacija ( idoft );

ALTER TABLE pregled
    ADD CONSTRAINT pregled_pacijent_fk FOREIGN KEY ( idpac )
        REFERENCES pacijent ( idpac );

ALTER TABLE pregled
    ADD CONSTRAINT pregled_tip_pregleda_fk FOREIGN KEY ( idtp )
        REFERENCES tip_pregleda ( idtp );

ALTER TABLE radnik
    ADD CONSTRAINT radnik_objekat_fk FOREIGN KEY ( idoft,
                                                   idobj )
        REFERENCES objekat ( idoft,
                             idobj );

ALTER TABLE spec_pregled
    ADD CONSTRAINT spec_pregled_specijalnost_fk FOREIGN KEY ( idspec )
        REFERENCES specijalnost ( idspec );

ALTER TABLE spec_pregled
    ADD CONSTRAINT spec_pregled_uput_fk FOREIGN KEY ( iduput )
        REFERENCES uput ( iduput );

ALTER TABLE stac_lecenje
    ADD CONSTRAINT stac_lecenje_uput_fk FOREIGN KEY ( iduput )
        REFERENCES uput ( iduput );

ALTER TABLE terapija
    ADD CONSTRAINT terapija_dijagnoza_fk FOREIGN KEY ( sifrabol,
                                                       idpreg,
                                                       idpac )
        REFERENCES dijagnoza ( sifrabol,
                               idpreg,
                               idpac );

ALTER TABLE terapija_doza
    ADD CONSTRAINT terapija_doza_doza_fk FOREIGN KEY ( idlek, iddoze )
        REFERENCES doza ( idlek, iddoze);

ALTER TABLE terapija_doza
    ADD CONSTRAINT terapija_doza_terapija_fk FOREIGN KEY ( sifrabol,
                                                           idpreg,
                                                           idpac )
        REFERENCES terapija ( sifrabol,
                              idpreg,
                              idpac );

ALTER TABLE tipp_lab
    ADD CONSTRAINT tipp_lab_laboratorija_fk FOREIGN KEY ( iduput )
        REFERENCES laboratorija ( iduput );

ALTER TABLE tipp_lab
    ADD CONSTRAINT tipp_lab_tip_pregleda_fk FOREIGN KEY ( idtp )
        REFERENCES tip_pregleda ( idtp );

ALTER TABLE tipu_lab
    ADD CONSTRAINT tipu_lab_laboratorija_fk FOREIGN KEY ( iduput )
        REFERENCES laboratorija ( iduput );

ALTER TABLE tipu_lab
    ADD CONSTRAINT tipu_lab_tip_uredjaja_fk FOREIGN KEY ( idtipu )
        REFERENCES tip_uredjaja ( idtipu );

ALTER TABLE uput
    ADD CONSTRAINT uput_objekat_fk FOREIGN KEY ( idoft,
                                                 idobj )
        REFERENCES objekat ( idoft,
                             idobj );

ALTER TABLE uput
    ADD CONSTRAINT uput_pregled_fk FOREIGN KEY ( idpreg,
                                                 idpac )
        REFERENCES pregled ( idpreg,
                             idpac );

ALTER TABLE uredjaj
    ADD CONSTRAINT uredjaj_objekat_fk FOREIGN KEY ( idoft,
                                                    idobj )
        REFERENCES objekat ( idoft,
                             idobj );

ALTER TABLE uredjaj
    ADD CONSTRAINT uredjaj_tip_uredjaja_fk FOREIGN KEY ( idtipu )
        REFERENCES tip_uredjaja ( idtipu );

CREATE OR REPLACE TRIGGER arc_fkarc_1_admin BEFORE
    INSERT OR UPDATE OF idrad ON admin
    FOR EACH ROW
DECLARE
    d VARCHAR2(30);
BEGIN
    SELECT
        a.tiprad
    INTO d
    FROM
        radnik a
    WHERE
        a.idrad = :new.idrad;

    IF ( d IS NULL OR d <> 'administrator' ) THEN
        raise_application_error(-20223, 'FK ADMIN_RADNIK_FK in Table ADMIN violates Arc constraint on Table RADNIK - discriminator column tiprad doesn''t have value ''administrator'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_1_lekar BEFORE
    INSERT OR UPDATE OF idrad ON lekar
    FOR EACH ROW
DECLARE
    d VARCHAR2(30);
BEGIN
    SELECT
        a.tiprad
    INTO d
    FROM
        radnik a
    WHERE
        a.idrad = :new.idrad;

    IF ( d IS NULL OR d <> 'lekar' ) THEN
        raise_application_error(-20223, 'FK LEKAR_RADNIK_FK in Table LEKAR violates Arc constraint on Table RADNIK - discriminator column tiprad doesn''t have value ''lekar'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_1_med_sestra BEFORE
    INSERT OR UPDATE OF idrad ON med_sestra
    FOR EACH ROW
DECLARE
    d VARCHAR2(30);
BEGIN
    SELECT
        a.tiprad
    INTO d
    FROM
        radnik a
    WHERE
        a.idrad = :new.idrad;

    IF ( d IS NULL OR d <> 'medicinskasestra' ) THEN
        raise_application_error(-20223, 'FK MED_SESTRA_RADNIK_FK in Table MED_SESTRA violates Arc constraint on Table RADNIK - discriminator column tiprad doesn''t have value ''medicinskasestra'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_2_stac_lecenje BEFORE
    INSERT OR UPDATE OF iduput ON stac_lecenje
    FOR EACH ROW
DECLARE
    d VARCHAR2(30);
BEGIN
    SELECT
        a.tipuputa
    INTO d
    FROM
        uput a
    WHERE
        a.iduput = :new.iduput;

    IF ( d IS NULL OR d <> 'staclecenje' ) THEN
        raise_application_error(-20223, 'FK STAC_LECENJE_UPUT_FK in Table STAC_LECENJE violates Arc constraint on Table UPUT - discriminator column tipuputa doesn''t have value ''staclecenje'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_2_spec_pregled BEFORE
    INSERT OR UPDATE OF iduput ON spec_pregled
    FOR EACH ROW
DECLARE
    d VARCHAR2(30);
BEGIN
    SELECT
        a.tipuputa
    INTO d
    FROM
        uput a
    WHERE
        a.iduput = :new.iduput;

    IF ( d IS NULL OR d <> 'specpregled' ) THEN
        raise_application_error(-20223, 'FK SPEC_PREGLED_UPUT_FK in Table SPEC_PREGLED violates Arc constraint on Table UPUT - discriminator column tipuputa doesn''t have value ''specpregled'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_2_laboratorija BEFORE
    INSERT OR UPDATE OF iduput ON laboratorija
    FOR EACH ROW
DECLARE
    d VARCHAR2(30);
BEGIN
    SELECT
        a.tipuputa
    INTO d
    FROM
        uput a
    WHERE
        a.iduput = :new.iduput;

    IF ( d IS NULL OR d <> 'laboratorija' ) THEN
        raise_application_error(-20223, 'FK LABORATORIJA_UPUT_FK in Table LABORATORIJA violates Arc constraint on Table UPUT - discriminator column tipuputa doesn''t have value ''laboratorija'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/
