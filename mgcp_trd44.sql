CREATE SCHEMA mgcp;
CREATE SCHEMA domains;

CREATE EXTENSION postgis;
SET search_path TO pg_catalog,public,mgcp,domains;

CREATE TABLE public.db_metadata(
	 edgvversion varchar(50) NOT NULL DEFAULT 'MGCP',
	 dbimplversion varchar(50) NOT NULL DEFAULT 'TRD4 v4.4',
	 CONSTRAINT edgvversioncheck CHECK (edgvversion = 'MGCP')
);
INSERT INTO public.db_metadata (edgvversion, dbimplversion) VALUES ('MGCP','TRD4 v4.4');

CREATE TABLE domains.booleano (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT booleano_pk PRIMARY KEY (code)
);

INSERT INTO domains.booleano (code,code_name) VALUES (1,'Sim');
INSERT INTO domains.booleano (code,code_name) VALUES (2,'Não');
INSERT INTO domains.booleano (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.tipo_veg (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_veg_pk PRIMARY KEY (code)
);

INSERT INTO domains.tipo_veg (code,code_name) VALUES (101,'Extração mineral');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (102,'Brejo (sem árvores, pouca humidade)');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (103,'Brejo (sem árvores, muita humidade)');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (104,'Pântano (com árvores, muita humidade)');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (105,'Arroz');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (106,'Terreno exposto');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (107,'Vegetação cultivada');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (108,'Pomar');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (109,'Vinhedo');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (110,'Lúpulo');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (111,'Campo');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (112,'Cana');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (113,'Arbustos');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (114,'Floresta');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (115,'Desmatamento');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (116,'Mangue');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (117,'Clareira');
INSERT INTO domains.tipo_veg (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CCT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CCT_pk PRIMARY KEY (code)
);

INSERT INTO domains.CCT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CCT (code,code_name) VALUES (1,'Open');
INSERT INTO domains.CCT (code,code_name) VALUES (2,'Partial');
INSERT INTO domains.CCT (code,code_name) VALUES (3,'Moveable');
INSERT INTO domains.CCT (code,code_name) VALUES (4,'Complete');
INSERT INTO domains.CCT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.CCT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.BOT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT BOT_pk PRIMARY KEY (code)
);

INSERT INTO domains.BOT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.BOT (code,code_name) VALUES (4,'Bascule');
INSERT INTO domains.BOT (code,code_name) VALUES (10,'Swing-bridge');
INSERT INTO domains.BOT (code,code_name) VALUES (11,'Lift-bridge');
INSERT INTO domains.BOT (code,code_name) VALUES (12,'Retractable');
INSERT INTO domains.BOT (code,code_name) VALUES (17,'Fixed');
INSERT INTO domains.BOT (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.BOT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.TID (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT TID_pk PRIMARY KEY (code)
);

INSERT INTO domains.TID (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.TID (code,code_name) VALUES (1000,'Non-Tidal');
INSERT INTO domains.TID (code,code_name) VALUES (1001,'Tidal/Tidal Fluctuating');
INSERT INTO domains.TID (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.BOC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT BOC_pk PRIMARY KEY (code)
);

INSERT INTO domains.BOC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.BOC (code,code_name) VALUES (7,'Cranberry Bog');
INSERT INTO domains.BOC (code,code_name) VALUES (14,'Peat Bog');
INSERT INTO domains.BOC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.BOC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.WLE (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT WLE_pk PRIMARY KEY (code)
);

INSERT INTO domains.WLE (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.WLE (code,code_name) VALUES (1,'Partly Submerged');
INSERT INTO domains.WLE (code,code_name) VALUES (2,'Always Dry');
INSERT INTO domains.WLE (code,code_name) VALUES (3,'Always Submerged');
INSERT INTO domains.WLE (code,code_name) VALUES (4,'Covers and Uncovers');
INSERT INTO domains.WLE (code,code_name) VALUES (8,'Floating');
INSERT INTO domains.WLE (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.WLE (code,code_name) VALUES (999,'Other');
INSERT INTO domains.WLE (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RAC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RAC_pk PRIMARY KEY (code)
);

INSERT INTO domains.RAC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RAC (code,code_name) VALUES (1,'Dome Enclosed');
INSERT INTO domains.RAC (code,code_name) VALUES (2,'Mast Mounted');
INSERT INTO domains.RAC (code,code_name) VALUES (4,'Radome on Tower');
INSERT INTO domains.RAC (code,code_name) VALUES (5,'Scanner');
INSERT INTO domains.RAC (code,code_name) VALUES (6,'Tower Mounted');
INSERT INTO domains.RAC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.RAC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.PRM (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT PRM_pk PRIMARY KEY (code)
);

INSERT INTO domains.PRM (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.PRM (code,code_name) VALUES (1000,'Temporary');
INSERT INTO domains.PRM (code,code_name) VALUES (1001,'Permanent');
INSERT INTO domains.PRM (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RIR (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RIR_pk PRIMARY KEY (code)
);

INSERT INTO domains.RIR (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RIR (code,code_name) VALUES (1000,'Separated from road');
INSERT INTO domains.RIR (code,code_name) VALUES (1001,'In road');
INSERT INTO domains.RIR (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.WTC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT WTC_pk PRIMARY KEY (code)
);

INSERT INTO domains.WTC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.WTC (code,code_name) VALUES (1,'All-weather');
INSERT INTO domains.WTC (code,code_name) VALUES (2,'Fair-weather');
INSERT INTO domains.WTC (code,code_name) VALUES (3,'Winter Only');
INSERT INTO domains.WTC (code,code_name) VALUES (5,'Closed in Winter');
INSERT INTO domains.WTC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RAY (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RAY_pk PRIMARY KEY (code)
);

INSERT INTO domains.RAY (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RAY (code,code_name) VALUES (1,'Bicycle');
INSERT INTO domains.RAY (code,code_name) VALUES (2,'Camel');
INSERT INTO domains.RAY (code,code_name) VALUES (3,'Greyhound');
INSERT INTO domains.RAY (code,code_name) VALUES (4,'Harness');
INSERT INTO domains.RAY (code,code_name) VALUES (5,'Horse');
INSERT INTO domains.RAY (code,code_name) VALUES (6,'Ice Skate');
INSERT INTO domains.RAY (code,code_name) VALUES (7,'Motor Vehicle');
INSERT INTO domains.RAY (code,code_name) VALUES (8,'Roller Skate');
INSERT INTO domains.RAY (code,code_name) VALUES (9,'Track and Field');
INSERT INTO domains.RAY (code,code_name) VALUES (999,'Other');
INSERT INTO domains.RAY (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.HAF (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT HAF_pk PRIMARY KEY (code)
);

INSERT INTO domains.HAF (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.HAF (code,code_name) VALUES (1,'Heliport');
INSERT INTO domains.HAF (code,code_name) VALUES (2,'Land Aerodrome');
INSERT INTO domains.HAF (code,code_name) VALUES (3,'Hospital');
INSERT INTO domains.HAF (code,code_name) VALUES (4,'Non-hospital Building');
INSERT INTO domains.HAF (code,code_name) VALUES (6,'Rig');
INSERT INTO domains.HAF (code,code_name) VALUES (9,'Offshore Construction');
INSERT INTO domains.HAF (code,code_name) VALUES (999,'Other');
INSERT INTO domains.HAF (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FIC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FIC_pk PRIMARY KEY (code)
);

INSERT INTO domains.FIC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FIC (code,code_name) VALUES (1,'Mound');
INSERT INTO domains.FIC (code,code_name) VALUES (2,'Fill');
INSERT INTO domains.FIC (code,code_name) VALUES (3,'Dyke');
INSERT INTO domains.FIC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.FIC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.THC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT THC_pk PRIMARY KEY (code)
);

INSERT INTO domains.THC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.THC (code,code_name) VALUES (1,'Aeronautical');
INSERT INTO domains.THC (code,code_name) VALUES (2,'Vegetation');
INSERT INTO domains.THC (code,code_name) VALUES (3,'Utilities');
INSERT INTO domains.THC (code,code_name) VALUES (4,'Population');
INSERT INTO domains.THC (code,code_name) VALUES (5,'Physiography');
INSERT INTO domains.THC (code,code_name) VALUES (6,'Industry');
INSERT INTO domains.THC (code,code_name) VALUES (7,'Ground Transportation');
INSERT INTO domains.THC (code,code_name) VALUES (8,'Elevation');
INSERT INTO domains.THC (code,code_name) VALUES (9,'Boundaries');
INSERT INTO domains.THC (code,code_name) VALUES (10,'Waterbodies');
INSERT INTO domains.THC (code,code_name) VALUES (11,'Maritime');
INSERT INTO domains.THC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.BAL (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT BAL_pk PRIMARY KEY (code)
);

INSERT INTO domains.BAL (code,code_name) VALUES (1,'First-order');
INSERT INTO domains.BAL (code,code_name) VALUES (2,'Second-order');
INSERT INTO domains.BAL (code,code_name) VALUES (3,'Third-order');
INSERT INTO domains.BAL (code,code_name) VALUES (4,'Fourth-order');
INSERT INTO domains.BAL (code,code_name) VALUES (5,'Undifferentiated');
INSERT INTO domains.BAL (code,code_name) VALUES (999,'Other');
INSERT INTO domains.BAL (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SFS (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SFS_pk PRIMARY KEY (code)
);

INSERT INTO domains.SFS (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SFS (code,code_name) VALUES (1,'Fair');
INSERT INTO domains.SFS (code,code_name) VALUES (3,'Good');
INSERT INTO domains.SFS (code,code_name) VALUES (5,'Poor');
INSERT INTO domains.SFS (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.SFS (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FFP (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FFP_pk PRIMARY KEY (code)
);

INSERT INTO domains.FFP (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FFP (code,code_name) VALUES (3,'Terraced');
INSERT INTO domains.FFP (code,code_name) VALUES (999,'Other');
INSERT INTO domains.FFP (code,code_name) VALUES (2,'Regular');
INSERT INTO domains.FFP (code,code_name) VALUES (5,'Intermingled Trees');
INSERT INTO domains.FFP (code,code_name) VALUES (6,'Treeless');
INSERT INTO domains.FFP (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FFN (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FFN_pk PRIMARY KEY (code)
);

INSERT INTO domains.FFN (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FFN (code,code_name) VALUES (2,'Agriculture');
INSERT INTO domains.FFN (code,code_name) VALUES (99,'Manufacturing');
INSERT INTO domains.FFN (code,code_name) VALUES (105,'Oil-mill');
INSERT INTO domains.FFN (code,code_name) VALUES (107,'Grain Milling');
INSERT INTO domains.FFN (code,code_name) VALUES (161,'Sawmilling');
INSERT INTO domains.FFN (code,code_name) VALUES (171,'Paper-mill');
INSERT INTO domains.FFN (code,code_name) VALUES (192,'Petroleum Refining');
INSERT INTO domains.FFN (code,code_name) VALUES (241,'Steel Mill');
INSERT INTO domains.FFN (code,code_name) VALUES (290,'Motor Vehicle Manufacture');
INSERT INTO domains.FFN (code,code_name) VALUES (330,'General Repair');
INSERT INTO domains.FFN (code,code_name) VALUES (341,'Aircraft Repair');
INSERT INTO domains.FFN (code,code_name) VALUES (343,'Motor Vehicle Repair');
INSERT INTO domains.FFN (code,code_name) VALUES (350,'Utilities');
INSERT INTO domains.FFN (code,code_name) VALUES (351,'Power Generation');
INSERT INTO domains.FFN (code,code_name) VALUES (355,'Cooling');
INSERT INTO domains.FFN (code,code_name) VALUES (362,'Water Treatment');
INSERT INTO domains.FFN (code,code_name) VALUES (440,'Commerce');
INSERT INTO domains.FFN (code,code_name) VALUES (470,'Petrol Sale');
INSERT INTO domains.FFN (code,code_name) VALUES (475,'Market');
INSERT INTO domains.FFN (code,code_name) VALUES (480,'Transport');
INSERT INTO domains.FFN (code,code_name) VALUES (481,'Terminal');
INSERT INTO domains.FFN (code,code_name) VALUES (486,'Signalling');
INSERT INTO domains.FFN (code,code_name) VALUES (501,'Pumping');
INSERT INTO domains.FFN (code,code_name) VALUES (511,'Maritime Pilotage');
INSERT INTO domains.FFN (code,code_name) VALUES (513,'Harbour Control');
INSERT INTO domains.FFN (code,code_name) VALUES (530,'Warehousing and Storage');
INSERT INTO domains.FFN (code,code_name) VALUES (535,'Motor Vehicle Parking');
INSERT INTO domains.FFN (code,code_name) VALUES (540,'Postal Activities');
INSERT INTO domains.FFN (code,code_name) VALUES (550,'Accommodation');
INSERT INTO domains.FFN (code,code_name) VALUES (563,'Residence');
INSERT INTO domains.FFN (code,code_name) VALUES (572,'Restaurant');
INSERT INTO domains.FFN (code,code_name) VALUES (582,'Print Publishing');
INSERT INTO domains.FFN (code,code_name) VALUES (601,'Radio Broadcasting');
INSERT INTO domains.FFN (code,code_name) VALUES (604,'Television Broadcasting');
INSERT INTO domains.FFN (code,code_name) VALUES (610,'Telecommunications');
INSERT INTO domains.FFN (code,code_name) VALUES (626,'Satellite Ground Control');
INSERT INTO domains.FFN (code,code_name) VALUES (643,'Retail Banking');
INSERT INTO domains.FFN (code,code_name) VALUES (720,'Scientific Research and Development');
INSERT INTO domains.FFN (code,code_name) VALUES (721,'Observation Station');
INSERT INTO domains.FFN (code,code_name) VALUES (722,'Weather Station');
INSERT INTO domains.FFN (code,code_name) VALUES (730,'Wind Tunnel');
INSERT INTO domains.FFN (code,code_name) VALUES (781,'Guard');
INSERT INTO domains.FFN (code,code_name) VALUES (810,'Administration');
INSERT INTO domains.FFN (code,code_name) VALUES (811,'Government');
INSERT INTO domains.FFN (code,code_name) VALUES (815,'Palace');
INSERT INTO domains.FFN (code,code_name) VALUES (825,'Diplomacy');
INSERT INTO domains.FFN (code,code_name) VALUES (827,'Embassy');
INSERT INTO domains.FFN (code,code_name) VALUES (835,'Defence Activities');
INSERT INTO domains.FFN (code,code_name) VALUES (841,'Law Enforcement');
INSERT INTO domains.FFN (code,code_name) VALUES (843,'Imprisonment');
INSERT INTO domains.FFN (code,code_name) VALUES (845,'Firefighting');
INSERT INTO domains.FFN (code,code_name) VALUES (850,'Education');
INSERT INTO domains.FFN (code,code_name) VALUES (855,'Higher Education');
INSERT INTO domains.FFN (code,code_name) VALUES (859,'Institution');
INSERT INTO domains.FFN (code,code_name) VALUES (860,'Human Health Activities');
INSERT INTO domains.FFN (code,code_name) VALUES (861,'In-patient Care');
INSERT INTO domains.FFN (code,code_name) VALUES (887,'Social Work');
INSERT INTO domains.FFN (code,code_name) VALUES (891,'Theatre');
INSERT INTO domains.FFN (code,code_name) VALUES (892,'Auditorium');
INSERT INTO domains.FFN (code,code_name) VALUES (893,'Community Centre');
INSERT INTO domains.FFN (code,code_name) VALUES (894,'Opera House');
INSERT INTO domains.FFN (code,code_name) VALUES (902,'Library');
INSERT INTO domains.FFN (code,code_name) VALUES (905,'Museum');
INSERT INTO domains.FFN (code,code_name) VALUES (912,'Sports Centre');
INSERT INTO domains.FFN (code,code_name) VALUES (919,'Animal Boarding');
INSERT INTO domains.FFN (code,code_name) VALUES (930,'Religious Activities');
INSERT INTO domains.FFN (code,code_name) VALUES (931,'Place of Worship');
INSERT INTO domains.FFN (code,code_name) VALUES (955,'Yacht-club');
INSERT INTO domains.FFN (code,code_name) VALUES (999,'Other');
INSERT INTO domains.FFN (code,code_name) VALUES (907,'Botanical and/or Zoological Reserve Activities');
INSERT INTO domains.FFN (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.MZN (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT MZN_pk PRIMARY KEY (code)
);

INSERT INTO domains.MZN (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.MZN (code,code_name) VALUES (3,'Opencast');
INSERT INTO domains.MZN (code,code_name) VALUES (4,'Placer');
INSERT INTO domains.MZN (code,code_name) VALUES (5,'Prospect');
INSERT INTO domains.MZN (code,code_name) VALUES (6,'Area Strip-mine');
INSERT INTO domains.MZN (code,code_name) VALUES (8,'Peatery');
INSERT INTO domains.MZN (code,code_name) VALUES (9,'Below Surface');
INSERT INTO domains.MZN (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.EET (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT EET_pk PRIMARY KEY (code)
);

INSERT INTO domains.EET (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.EET (code,code_name) VALUES (1,'Battery');
INSERT INTO domains.EET (code,code_name) VALUES (2,'Military Parapet');
INSERT INTO domains.EET (code,code_name) VALUES (3,'Military Trench');
INSERT INTO domains.EET (code,code_name) VALUES (4,'Rampart');
INSERT INTO domains.EET (code,code_name) VALUES (5,'Redoubt');
INSERT INTO domains.EET (code,code_name) VALUES (999,'Other');
INSERT INTO domains.EET (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CRA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CRA_pk PRIMARY KEY (code)
);

INSERT INTO domains.CRA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CRA (code,code_name) VALUES (2,'Bridge Crane');
INSERT INTO domains.CRA (code,code_name) VALUES (3,'Rotating Crane');
INSERT INTO domains.CRA (code,code_name) VALUES (7,'Tower Crane');
INSERT INTO domains.CRA (code,code_name) VALUES (99,'Container Crane');
INSERT INTO domains.CRA (code,code_name) VALUES (999,'Other');
INSERT INTO domains.CRA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FUC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FUC_pk PRIMARY KEY (code)
);

INSERT INTO domains.FUC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FUC (code,code_name) VALUES (1,'Industrial');
INSERT INTO domains.FUC (code,code_name) VALUES (2,'Commercial');
INSERT INTO domains.FUC (code,code_name) VALUES (4,'Residential');
INSERT INTO domains.FUC (code,code_name) VALUES (19,'Urbanized Multi-functional');
INSERT INTO domains.FUC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.FUC (code,code_name) VALUES (8,'Refugee');
INSERT INTO domains.FUC (code,code_name) VALUES (13,'Recreational');
INSERT INTO domains.FUC (code,code_name) VALUES (20,'Transportation');
INSERT INTO domains.FUC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FUN (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FUN_pk PRIMARY KEY (code)
);

INSERT INTO domains.FUN (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FUN (code,code_name) VALUES (1,'Under Construction');
INSERT INTO domains.FUN (code,code_name) VALUES (2,'Abandoned');
INSERT INTO domains.FUN (code,code_name) VALUES (3,'Destroyed');
INSERT INTO domains.FUN (code,code_name) VALUES (4,'Dismantled');
INSERT INTO domains.FUN (code,code_name) VALUES (6,'Fully Functional');
INSERT INTO domains.FUN (code,code_name) VALUES (13,'Damaged');
INSERT INTO domains.FUN (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.WFT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT WFT_pk PRIMARY KEY (code)
);

INSERT INTO domains.WFT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.WFT (code,code_name) VALUES (2,'Walled-in');
INSERT INTO domains.WFT (code,code_name) VALUES (3,'Artesian');
INSERT INTO domains.WFT (code,code_name) VALUES (6,'Dug');
INSERT INTO domains.WFT (code,code_name) VALUES (7,'Drilled');
INSERT INTO domains.WFT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.WFT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CRM (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CRM_pk PRIMARY KEY (code)
);

INSERT INTO domains.CRM (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CRM (code,code_name) VALUES (1,'Fixed');
INSERT INTO domains.CRM (code,code_name) VALUES (2,'Travelling');
INSERT INTO domains.CRM (code,code_name) VALUES (3,'Floating');
INSERT INTO domains.CRM (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RTA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RTA_pk PRIMARY KEY (code)
);

INSERT INTO domains.RTA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RTA (code,code_name) VALUES (1,'Single Arrangement');
INSERT INTO domains.RTA (code,code_name) VALUES (2,'Double Arrangement');
INSERT INTO domains.RTA (code,code_name) VALUES (3,'Multiple Arrangements');
INSERT INTO domains.RTA (code,code_name) VALUES (4,'Juxtaposition');
INSERT INTO domains.RTA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SCC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SCC_pk PRIMARY KEY (code)
);

INSERT INTO domains.SCC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SCC (code,code_name) VALUES (10,'Salty');
INSERT INTO domains.SCC (code,code_name) VALUES (11,'Fresh');
INSERT INTO domains.SCC (code,code_name) VALUES (12,'Brackish');
INSERT INTO domains.SCC (code,code_name) VALUES (1,'Alkaline');
INSERT INTO domains.SCC (code,code_name) VALUES (4,'Mineral');
INSERT INTO domains.SCC (code,code_name) VALUES (9,'Potable');
INSERT INTO domains.SCC (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.SCC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.SCC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.GEC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT GEC_pk PRIMARY KEY (code)
);

INSERT INTO domains.GEC (code,code_name) VALUES (5,'Area of No Sovereignty');
INSERT INTO domains.GEC (code,code_name) VALUES (7,'Demilitarized Zone (DMZ)');
INSERT INTO domains.GEC (code,code_name) VALUES (8,'Zone of Occupation');
INSERT INTO domains.GEC (code,code_name) VALUES (9,'Leased Area');
INSERT INTO domains.GEC (code,code_name) VALUES (10,'Political Entity');
INSERT INTO domains.GEC (code,code_name) VALUES (11,'Dependent Political Entity');
INSERT INTO domains.GEC (code,code_name) VALUES (12,'Freely Associated State');
INSERT INTO domains.GEC (code,code_name) VALUES (13,'Independent Political Entity');
INSERT INTO domains.GEC (code,code_name) VALUES (14,'Semi-independent Political Entity');
INSERT INTO domains.GEC (code,code_name) VALUES (15,'Economic Region');
INSERT INTO domains.GEC (code,code_name) VALUES (16,'Territory');
INSERT INTO domains.GEC (code,code_name) VALUES (17,'Buffer Zone');
INSERT INTO domains.GEC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.LSP (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT LSP_pk PRIMARY KEY (code)
);

INSERT INTO domains.LSP (code,code_name) VALUES (1,'Generic Administrative Boundary');
INSERT INTO domains.LSP (code,code_name) VALUES (2,'Provisional Administrative Line');
INSERT INTO domains.LSP (code,code_name) VALUES (3,'Armistice Line');
INSERT INTO domains.LSP (code,code_name) VALUES (4,'Line of Control');
INSERT INTO domains.LSP (code,code_name) VALUES (5,'Demarcation Line');
INSERT INTO domains.LSP (code,code_name) VALUES (6,'Line of Convenience');
INSERT INTO domains.LSP (code,code_name) VALUES (7,'Cease Fire Line');
INSERT INTO domains.LSP (code,code_name) VALUES (8,'Convention Line');
INSERT INTO domains.LSP (code,code_name) VALUES (9,'Claim Line');
INSERT INTO domains.LSP (code,code_name) VALUES (10,'Intercolonial Line');
INSERT INTO domains.LSP (code,code_name) VALUES (11,'Interentity Line');
INSERT INTO domains.LSP (code,code_name) VALUES (12,'Line of Adjacency');
INSERT INTO domains.LSP (code,code_name) VALUES (13,'Line of Withdrawal');
INSERT INTO domains.LSP (code,code_name) VALUES (14,'Military Disengagement Line');
INSERT INTO domains.LSP (code,code_name) VALUES (15,'Treaty Line');
INSERT INTO domains.LSP (code,code_name) VALUES (16,'UNCLOS Claim Boundary');
INSERT INTO domains.LSP (code,code_name) VALUES (17,'Generic International Boundary');
INSERT INTO domains.LSP (code,code_name) VALUES (999,'Other');
INSERT INTO domains.LSP (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.TTC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT TTC_pk PRIMARY KEY (code)
);

INSERT INTO domains.TTC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.TTC (code,code_name) VALUES (1,'Bridge Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (2,'Observation Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (5,'Light Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (6,'Water Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (8,'Cooling Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (10,'Lookout Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (12,'Fire Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (16,'Control Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (18,'Communication Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (19,'Cell Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (21,'Guard Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (22,'Industrial Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (23,'Drop Tower');
INSERT INTO domains.TTC (code,code_name) VALUES (26,'Mine Shaft Superstructure');
INSERT INTO domains.TTC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.TTC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.HCT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT HCT_pk PRIMARY KEY (code)
);

INSERT INTO domains.HCT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.HCT (code,code_name) VALUES (1,'Primary Route');
INSERT INTO domains.HCT (code,code_name) VALUES (2,'Secondary Route');
INSERT INTO domains.HCT (code,code_name) VALUES (3,'National Motorway');
INSERT INTO domains.HCT (code,code_name) VALUES (4,'Local Route');
INSERT INTO domains.HCT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.PBY (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT PBY_pk PRIMARY KEY (code)
);

INSERT INTO domains.PBY (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.PBY (code,code_name) VALUES (8,'Refuse');
INSERT INTO domains.PBY (code,code_name) VALUES (15,'Slag');
INSERT INTO domains.PBY (code,code_name) VALUES (17,'Spoil');
INSERT INTO domains.PBY (code,code_name) VALUES (999,'Other');
INSERT INTO domains.PBY (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.TRE (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT TRE_pk PRIMARY KEY (code)
);

INSERT INTO domains.TRE (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.TRE (code,code_name) VALUES (1,'Deciduous');
INSERT INTO domains.TRE (code,code_name) VALUES (2,'Evergreen');
INSERT INTO domains.TRE (code,code_name) VALUES (3,'Mixed');
INSERT INTO domains.TRE (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.AFA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT AFA_pk PRIMARY KEY (code)
);

INSERT INTO domains.AFA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.AFA (code,code_name) VALUES (19,'Helipad');
INSERT INTO domains.AFA (code,code_name) VALUES (41,'None Available');
INSERT INTO domains.AFA (code,code_name) VALUES (999,'Other');
INSERT INTO domains.AFA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.VGT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT VGT_pk PRIMARY KEY (code)
);

INSERT INTO domains.VGT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.VGT (code,code_name) VALUES (1,'Cone');
INSERT INTO domains.VGT (code,code_name) VALUES (2,'Cinder Cone');
INSERT INTO domains.VGT (code,code_name) VALUES (3,'Shield');
INSERT INTO domains.VGT (code,code_name) VALUES (4,'Caldera');
INSERT INTO domains.VGT (code,code_name) VALUES (5,'Composite');
INSERT INTO domains.VGT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.VGT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.TRS (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT TRS_pk PRIMARY KEY (code)
);

INSERT INTO domains.TRS (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.TRS (code,code_name) VALUES (1,'Aeronautical');
INSERT INTO domains.TRS (code,code_name) VALUES (2,'Aqueduct');
INSERT INTO domains.TRS (code,code_name) VALUES (4,'Bus');
INSERT INTO domains.TRS (code,code_name) VALUES (5,'Canal');
INSERT INTO domains.TRS (code,code_name) VALUES (7,'Maritime');
INSERT INTO domains.TRS (code,code_name) VALUES (9,'Pedestrian');
INSERT INTO domains.TRS (code,code_name) VALUES (10,'Pipeline');
INSERT INTO domains.TRS (code,code_name) VALUES (12,'Railway');
INSERT INTO domains.TRS (code,code_name) VALUES (13,'Road');
INSERT INTO domains.TRS (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.TRS (code,code_name) VALUES (999,'Other');
INSERT INTO domains.TRS (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CSP (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CSP_pk PRIMARY KEY (code)
);

INSERT INTO domains.CSP (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CSP (code,code_name) VALUES (13,'Dry Crop');
INSERT INTO domains.CSP (code,code_name) VALUES (34,'Tea');
INSERT INTO domains.CSP (code,code_name) VALUES (37,'Vegetable Crop');
INSERT INTO domains.CSP (code,code_name) VALUES (45,'Cotton');
INSERT INTO domains.CSP (code,code_name) VALUES (999,'Other');
INSERT INTO domains.CSP (code,code_name) VALUES (15,'Fruit Tree');
INSERT INTO domains.CSP (code,code_name) VALUES (29,'Rubber');
INSERT INTO domains.CSP (code,code_name) VALUES (41,'Banana');
INSERT INTO domains.CSP (code,code_name) VALUES (113,'Nut');
INSERT INTO domains.CSP (code,code_name) VALUES (157,'Palm');
INSERT INTO domains.CSP (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RWC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RWC_pk PRIMARY KEY (code)
);

INSERT INTO domains.RWC (code,code_name) VALUES (1,'High Speed Rail');
INSERT INTO domains.RWC (code,code_name) VALUES (2,'Main Line');
INSERT INTO domains.RWC (code,code_name) VALUES (3,'Branch-line');
INSERT INTO domains.RWC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.OPC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT OPC_pk PRIMARY KEY (code)
);

INSERT INTO domains.OPC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.OPC (code,code_name) VALUES (2,'Production Platform');
INSERT INTO domains.OPC (code,code_name) VALUES (3,'Observation Platform');
INSERT INTO domains.OPC (code,code_name) VALUES (4,'Articulated Loading Platform (ALP)');
INSERT INTO domains.OPC (code,code_name) VALUES (9,'Accommodation Platform');
INSERT INTO domains.OPC (code,code_name) VALUES (10,'Navigation Aid Support');
INSERT INTO domains.OPC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.OPC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SSC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SSC_pk PRIMARY KEY (code)
);

INSERT INTO domains.SSC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SSC (code,code_name) VALUES (12,'Pyramidal');
INSERT INTO domains.SSC (code,code_name) VALUES (77,'Arched');
INSERT INTO domains.SSC (code,code_name) VALUES (97,'Statue');
INSERT INTO domains.SSC (code,code_name) VALUES (109,'Obelisk');
INSERT INTO domains.SSC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.SSC (code,code_name) VALUES (2,'Horizontal Capped Cylindrical');
INSERT INTO domains.SSC (code,code_name) VALUES (4,'Vertical Capped Cylindrical');
INSERT INTO domains.SSC (code,code_name) VALUES (17,'Spherical');
INSERT INTO domains.SSC (code,code_name) VALUES (59,'Cylindrical with Framework');
INSERT INTO domains.SSC (code,code_name) VALUES (65,'Cylindrical with Flat top');
INSERT INTO domains.SSC (code,code_name) VALUES (88,'Spherical on Column');
INSERT INTO domains.SSC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SUC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SUC_pk PRIMARY KEY (code)
);

INSERT INTO domains.SUC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SUC (code,code_name) VALUES (1,'Snow Shed');
INSERT INTO domains.SUC (code,code_name) VALUES (2,'Rock Shed');
INSERT INTO domains.SUC (code,code_name) VALUES (4,'Rock and Snow Shed');
INSERT INTO domains.SUC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.SUC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.ATC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT ATC_pk PRIMARY KEY (code)
);

INSERT INTO domains.ATC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.ATC (code,code_name) VALUES (1,'Qanat Shaft');
INSERT INTO domains.ATC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.COD (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT COD_pk PRIMARY KEY (code)
);

INSERT INTO domains.COD (code,code_name) VALUES (1000,'Limits and Information Unknown');
INSERT INTO domains.COD (code,code_name) VALUES (1001,'Limits and Information Known');
INSERT INTO domains.COD (code,code_name) VALUES (1,'Limits and Information Known');
INSERT INTO domains.COD (code,code_name) VALUES (2,'Limits and Information Unknown');
INSERT INTO domains.COD (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.REL (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT REL_pk PRIMARY KEY (code)
);

INSERT INTO domains.REL (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.REL (code,code_name) VALUES (1,'Buddhism');
INSERT INTO domains.REL (code,code_name) VALUES (2,'Islam');
INSERT INTO domains.REL (code,code_name) VALUES (4,'Christian');
INSERT INTO domains.REL (code,code_name) VALUES (5,'Judaism');
INSERT INTO domains.REL (code,code_name) VALUES (999,'Other');
INSERT INTO domains.REL (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SMC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SMC_pk PRIMARY KEY (code)
);

INSERT INTO domains.SMC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SMC (code,code_name) VALUES (73,'Pebbles');
INSERT INTO domains.SMC (code,code_name) VALUES (88,'Sand');
INSERT INTO domains.SMC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.SMC (code,code_name) VALUES (84,'Rock');
INSERT INTO domains.SMC (code,code_name) VALUES (104,'Soil');
INSERT INTO domains.SMC (code,code_name) VALUES (5,'Asphalt');
INSERT INTO domains.SMC (code,code_name) VALUES (8,'Boulders');
INSERT INTO domains.SMC (code,code_name) VALUES (21,'Concrete');
INSERT INTO domains.SMC (code,code_name) VALUES (46,'Gravel');
INSERT INTO domains.SMC (code,code_name) VALUES (52,'Lava');
INSERT INTO domains.SMC (code,code_name) VALUES (55,'Loess');
INSERT INTO domains.SMC (code,code_name) VALUES (65,'Mud');
INSERT INTO domains.SMC (code,code_name) VALUES (67,'Oil');
INSERT INTO domains.SMC (code,code_name) VALUES (87,'Salt');
INSERT INTO domains.SMC (code,code_name) VALUES (103,'Frozen Water');
INSERT INTO domains.SMC (code,code_name) VALUES (120,'Sand and Gravel');
INSERT INTO domains.SMC (code,code_name) VALUES (122,'Evaporite');
INSERT INTO domains.SMC (code,code_name) VALUES (124,'Sand and Boulders');
INSERT INTO domains.SMC (code,code_name) VALUES (126,'Sand and Mud');
INSERT INTO domains.SMC (code,code_name) VALUES (257,'Ice');
INSERT INTO domains.SMC (code,code_name) VALUES (258,'Snow');
INSERT INTO domains.SMC (code,code_name) VALUES (269,'Limestone');
INSERT INTO domains.SMC (code,code_name) VALUES (14,'Cinders');
INSERT INTO domains.SMC (code,code_name) VALUES (16,'Clay');
INSERT INTO domains.SMC (code,code_name) VALUES (85,'Rubber');
INSERT INTO domains.SMC (code,code_name) VALUES (274,'Sod');
INSERT INTO domains.SMC (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.SMC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SUY (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SUY_pk PRIMARY KEY (code)
);

INSERT INTO domains.SUY (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SUY (code,code_name) VALUES (1,'Astronomic Position');
INSERT INTO domains.SUY (code,code_name) VALUES (2,'Benchmark');
INSERT INTO domains.SUY (code,code_name) VALUES (3,'Cadastral Control Point');
INSERT INTO domains.SUY (code,code_name) VALUES (4,'Camera Station');
INSERT INTO domains.SUY (code,code_name) VALUES (5,'Geodetic Point');
INSERT INTO domains.SUY (code,code_name) VALUES (6,'Gravity Point');
INSERT INTO domains.SUY (code,code_name) VALUES (7,'Magnetic Station');
INSERT INTO domains.SUY (code,code_name) VALUES (8,'Theodolite Station');
INSERT INTO domains.SUY (code,code_name) VALUES (9,'Tidal Benchmark');
INSERT INTO domains.SUY (code,code_name) VALUES (999,'Other');
INSERT INTO domains.SUY (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CON (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CON_pk PRIMARY KEY (code)
);

INSERT INTO domains.CON (code,code_name) VALUES (35,'Road Interchange');
INSERT INTO domains.CON (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.CON (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.LFA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT LFA_pk PRIMARY KEY (code)
);

INSERT INTO domains.LFA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.LFA (code,code_name) VALUES (15,'ALSF-I');
INSERT INTO domains.LFA (code,code_name) VALUES (16,'ALSF-II');
INSERT INTO domains.LFA (code,code_name) VALUES (17,'SSALF');
INSERT INTO domains.LFA (code,code_name) VALUES (18,'SSALR');
INSERT INTO domains.LFA (code,code_name) VALUES (19,'MALSF');
INSERT INTO domains.LFA (code,code_name) VALUES (20,'MALSR');
INSERT INTO domains.LFA (code,code_name) VALUES (999,'Other');
INSERT INTO domains.LFA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SEP (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SEP_pk PRIMARY KEY (code)
);

INSERT INTO domains.SEP (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SEP (code,code_name) VALUES (1000,'Absent');
INSERT INTO domains.SEP (code,code_name) VALUES (1001,'Present');
INSERT INTO domains.SEP (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RRC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RRC_pk PRIMARY KEY (code)
);

INSERT INTO domains.RRC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RRC (code,code_name) VALUES (2,'Carline');
INSERT INTO domains.RRC (code,code_name) VALUES (6,'Underground Railway');
INSERT INTO domains.RRC (code,code_name) VALUES (8,'Logging');
INSERT INTO domains.RRC (code,code_name) VALUES (14,'Tramway');
INSERT INTO domains.RRC (code,code_name) VALUES (15,'Funicular');
INSERT INTO domains.RRC (code,code_name) VALUES (32,'Automated Transit System');
INSERT INTO domains.RRC (code,code_name) VALUES (33,'Long-haul');
INSERT INTO domains.RRC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.RRC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RRA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RRA_pk PRIMARY KEY (code)
);

INSERT INTO domains.RRA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RRA (code,code_name) VALUES (1,'Electrified Track');
INSERT INTO domains.RRA (code,code_name) VALUES (3,'Overhead Electrified');
INSERT INTO domains.RRA (code,code_name) VALUES (4,'Non-electrified');
INSERT INTO domains.RRA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.HWT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT HWT_pk PRIMARY KEY (code)
);

INSERT INTO domains.HWT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.HWT (code,code_name) VALUES (2,'Cathedral');
INSERT INTO domains.HWT (code,code_name) VALUES (3,'Chapel');
INSERT INTO domains.HWT (code,code_name) VALUES (4,'Church');
INSERT INTO domains.HWT (code,code_name) VALUES (5,'Marabout');
INSERT INTO domains.HWT (code,code_name) VALUES (6,'Minaret');
INSERT INTO domains.HWT (code,code_name) VALUES (7,'Religious Community');
INSERT INTO domains.HWT (code,code_name) VALUES (9,'Mosque');
INSERT INTO domains.HWT (code,code_name) VALUES (11,'Pagoda');
INSERT INTO domains.HWT (code,code_name) VALUES (14,'Shrine');
INSERT INTO domains.HWT (code,code_name) VALUES (15,'Tabernacle');
INSERT INTO domains.HWT (code,code_name) VALUES (16,'Temple');
INSERT INTO domains.HWT (code,code_name) VALUES (20,'Synagogue');
INSERT INTO domains.HWT (code,code_name) VALUES (21,'Stupa');
INSERT INTO domains.HWT (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.HWT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.HWT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.BSC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT BSC_pk PRIMARY KEY (code)
);

INSERT INTO domains.BSC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.BSC (code,code_name) VALUES (1,'Open Spandrel Arch');
INSERT INTO domains.BSC (code,code_name) VALUES (2,'Cantilever');
INSERT INTO domains.BSC (code,code_name) VALUES (3,'Deck');
INSERT INTO domains.BSC (code,code_name) VALUES (5,'Floating');
INSERT INTO domains.BSC (code,code_name) VALUES (6,'Girder');
INSERT INTO domains.BSC (code,code_name) VALUES (7,'Tower Suspension');
INSERT INTO domains.BSC (code,code_name) VALUES (8,'Truss');
INSERT INTO domains.BSC (code,code_name) VALUES (9,'Suspension');
INSERT INTO domains.BSC (code,code_name) VALUES (12,'Transporter');
INSERT INTO domains.BSC (code,code_name) VALUES (15,'Slab');
INSERT INTO domains.BSC (code,code_name) VALUES (16,'Stringer Beam');
INSERT INTO domains.BSC (code,code_name) VALUES (19,'Bowstring-bridge');
INSERT INTO domains.BSC (code,code_name) VALUES (26,'Closed Spandrel Arch');
INSERT INTO domains.BSC (code,code_name) VALUES (27,'Cable Stayed');
INSERT INTO domains.BSC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.BSC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SDT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SDT_pk PRIMARY KEY (code)
);

INSERT INTO domains.SDT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SDT (code,code_name) VALUES (1,'Crescent');
INSERT INTO domains.SDT (code,code_name) VALUES (2,'Dome');
INSERT INTO domains.SDT (code,code_name) VALUES (3,'Transverse');
INSERT INTO domains.SDT (code,code_name) VALUES (4,'Linear');
INSERT INTO domains.SDT (code,code_name) VALUES (5,'Parabolic');
INSERT INTO domains.SDT (code,code_name) VALUES (6,'Ripple');
INSERT INTO domains.SDT (code,code_name) VALUES (7,'Star');
INSERT INTO domains.SDT (code,code_name) VALUES (8,'Dome and Transverse');
INSERT INTO domains.SDT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.ELA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT ELA_pk PRIMARY KEY (code)
);

INSERT INTO domains.ELA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.ELA (code,code_name) VALUES (1,'Accurate');
INSERT INTO domains.ELA (code,code_name) VALUES (2,'Approximate');
INSERT INTO domains.ELA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.VEG (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT VEG_pk PRIMARY KEY (code)
);

INSERT INTO domains.VEG (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.VEG (code,code_name) VALUES (8,'Grassland');
INSERT INTO domains.VEG (code,code_name) VALUES (9,'Grassland with Trees');
INSERT INTO domains.VEG (code,code_name) VALUES (999,'Other');
INSERT INTO domains.VEG (code,code_name) VALUES (50,'Wood');
INSERT INTO domains.VEG (code,code_name) VALUES (51,'Herb and Brush');
INSERT INTO domains.VEG (code,code_name) VALUES (75,'Brush');
INSERT INTO domains.VEG (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FMM (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FMM_pk PRIMARY KEY (code)
);

INSERT INTO domains.FMM (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FMM (code,code_name) VALUES (1,'Fallow');
INSERT INTO domains.FMM (code,code_name) VALUES (3,'Permanent');
INSERT INTO domains.FMM (code,code_name) VALUES (4,'Slash and Burn');
INSERT INTO domains.FMM (code,code_name) VALUES (5,'Permanent Irrigation');
INSERT INTO domains.FMM (code,code_name) VALUES (999,'Other');
INSERT INTO domains.FMM (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FRT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FRT_pk PRIMARY KEY (code)
);

INSERT INTO domains.FRT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FRT (code,code_name) VALUES (1,'Small Arms');
INSERT INTO domains.FRT (code,code_name) VALUES (2,'Tank');
INSERT INTO domains.FRT (code,code_name) VALUES (3,'Field Artillery');
INSERT INTO domains.FRT (code,code_name) VALUES (4,'Grenade');
INSERT INTO domains.FRT (code,code_name) VALUES (5,'Demolition Area');
INSERT INTO domains.FRT (code,code_name) VALUES (6,'Impact Area');
INSERT INTO domains.FRT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.FRT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CDA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CDA_pk PRIMARY KEY (code)
);

INSERT INTO domains.CDA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CDA (code,code_name) VALUES (1000,'Uncovered');
INSERT INTO domains.CDA (code,code_name) VALUES (1001,'Covered');
INSERT INTO domains.CDA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.STA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT STA_pk PRIMARY KEY (code)
);

INSERT INTO domains.STA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.STA (code,code_name) VALUES (1,'Coast Guard Station');
INSERT INTO domains.STA (code,code_name) VALUES (2,'Fireboat Station');
INSERT INTO domains.STA (code,code_name) VALUES (3,'Water-police Station');
INSERT INTO domains.STA (code,code_name) VALUES (4,'Ice Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (5,'Rescue Station');
INSERT INTO domains.STA (code,code_name) VALUES (6,'Port Control Station');
INSERT INTO domains.STA (code,code_name) VALUES (11,'Pilot Station');
INSERT INTO domains.STA (code,code_name) VALUES (13,'Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (15,'Storm Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (17,'Tide Station');
INSERT INTO domains.STA (code,code_name) VALUES (19,'Time Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (21,'Weather Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (27,'Tidal Stream Station');
INSERT INTO domains.STA (code,code_name) VALUES (28,'Traffic Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (29,'Bridge Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (30,'Lock Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (32,'International Port Signals Station');
INSERT INTO domains.STA (code,code_name) VALUES (33,'Military Practice Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (35,'Warning Signal Station');
INSERT INTO domains.STA (code,code_name) VALUES (36,'Radar Surveillance Station');
INSERT INTO domains.STA (code,code_name) VALUES (37,'Pilot Lookout Station');
INSERT INTO domains.STA (code,code_name) VALUES (999,'Other');
INSERT INTO domains.STA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RGC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RGC_pk PRIMARY KEY (code)
);

INSERT INTO domains.RGC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RGC (code,code_name) VALUES (1,'Broad');
INSERT INTO domains.RGC (code,code_name) VALUES (2,'Narrow');
INSERT INTO domains.RGC (code,code_name) VALUES (3,'Standard');
INSERT INTO domains.RGC (code,code_name) VALUES (6,'Monorail');
INSERT INTO domains.RGC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.MES (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT MES_pk PRIMARY KEY (code)
);

INSERT INTO domains.MES (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.MES (code,code_name) VALUES (1000,'Without Median');
INSERT INTO domains.MES (code,code_name) VALUES (1001,'With Median');
INSERT INTO domains.MES (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.MGCP_ACC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT MGCP_ACC_pk PRIMARY KEY (code)
);

INSERT INTO domains.MGCP_ACC (code,code_name) VALUES (1,'Accurate');
INSERT INTO domains.MGCP_ACC (code,code_name) VALUES (2,'Approximate');
INSERT INTO domains.MGCP_ACC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.ORD (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT ORD_pk PRIMARY KEY (code)
);

INSERT INTO domains.ORD (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.ORD (code,code_name) VALUES (1,'First');
INSERT INTO domains.ORD (code,code_name) VALUES (2,'Second');
INSERT INTO domains.ORD (code,code_name) VALUES (3,'Third');
INSERT INTO domains.ORD (code,code_name) VALUES (4,'Fourth');
INSERT INTO domains.ORD (code,code_name) VALUES (5,'Fifth');
INSERT INTO domains.ORD (code,code_name) VALUES (999,'Other');
INSERT INTO domains.ORD (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.TUC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT TUC_pk PRIMARY KEY (code)
);

INSERT INTO domains.TUC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.TUC (code,code_name) VALUES (25,'Cargo');
INSERT INTO domains.TUC (code,code_name) VALUES (26,'Passenger');
INSERT INTO domains.TUC (code,code_name) VALUES (45,'General');
INSERT INTO domains.TUC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.TUC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.WST (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT WST_pk PRIMARY KEY (code)
);

INSERT INTO domains.WST (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.WST (code,code_name) VALUES (1,'Dissipating');
INSERT INTO domains.WST (code,code_name) VALUES (2,'Disappearing');
INSERT INTO domains.WST (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.WST (code,code_name) VALUES (999,'Other');
INSERT INTO domains.WST (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.LOC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT LOC_pk PRIMARY KEY (code)
);

INSERT INTO domains.LOC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.LOC (code,code_name) VALUES (40,'Below Ground Surface');
INSERT INTO domains.LOC (code,code_name) VALUES (44,'On Surface');
INSERT INTO domains.LOC (code,code_name) VALUES (45,'Above Surface');
INSERT INTO domains.LOC (code,code_name) VALUES (17,'On Waterbody Bottom');
INSERT INTO domains.LOC (code,code_name) VALUES (23,'Below Waterbody Bottom');
INSERT INTO domains.LOC (code,code_name) VALUES (46,'Above Waterbody Bottom');
INSERT INTO domains.LOC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.USE (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT USE_pk PRIMARY KEY (code)
);

INSERT INTO domains.USE (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.USE (code,code_name) VALUES (7,'Tribal');
INSERT INTO domains.USE (code,code_name) VALUES (16,'City');
INSERT INTO domains.USE (code,code_name) VALUES (23,'International');
INSERT INTO domains.USE (code,code_name) VALUES (26,'Primary/1st Order');
INSERT INTO domains.USE (code,code_name) VALUES (30,'Secondary/2nd Order');
INSERT INTO domains.USE (code,code_name) VALUES (31,'Tertiary/3rd Order');
INSERT INTO domains.USE (code,code_name) VALUES (32,'Insular');
INSERT INTO domains.USE (code,code_name) VALUES (70,'Reserve/Reservation');
INSERT INTO domains.USE (code,code_name) VALUES (141,'Forest Preserve');
INSERT INTO domains.USE (code,code_name) VALUES (155,'Prohibited Area');
INSERT INTO domains.USE (code,code_name) VALUES (999,'Other');
INSERT INTO domains.USE (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.TOS (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT TOS_pk PRIMARY KEY (code)
);

INSERT INTO domains.TOS (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.TOS (code,code_name) VALUES (1,'A'' Frame');
INSERT INTO domains.TOS (code,code_name) VALUES (2,'H'' Frame');
INSERT INTO domains.TOS (code,code_name) VALUES (3,'I'' Frame');
INSERT INTO domains.TOS (code,code_name) VALUES (4,'T'' Frame');
INSERT INTO domains.TOS (code,code_name) VALUES (5,'Y'' Frame');
INSERT INTO domains.TOS (code,code_name) VALUES (6,'Mast');
INSERT INTO domains.TOS (code,code_name) VALUES (999,'Other');
INSERT INTO domains.TOS (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.AZC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT AZC_pk PRIMARY KEY (code)
);

INSERT INTO domains.AZC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.AZC (code,code_name) VALUES (1000,'Natural');
INSERT INTO domains.AZC (code,code_name) VALUES (1001,'Man-made');
INSERT INTO domains.AZC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FHC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FHC_pk PRIMARY KEY (code)
);

INSERT INTO domains.FHC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FHC (code,code_name) VALUES (3,'Ferry Terminal');
INSERT INTO domains.FHC (code,code_name) VALUES (4,'Fishing Harbour');
INSERT INTO domains.FHC (code,code_name) VALUES (5,'Marina');
INSERT INTO domains.FHC (code,code_name) VALUES (6,'Naval Base');
INSERT INTO domains.FHC (code,code_name) VALUES (7,'Tanker Terminal');
INSERT INTO domains.FHC (code,code_name) VALUES (10,'Container Terminal');
INSERT INTO domains.FHC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.FHC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CAT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CAT_pk PRIMARY KEY (code)
);

INSERT INTO domains.CAT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CAT (code,code_name) VALUES (2,'Chair-lift');
INSERT INTO domains.CAT (code,code_name) VALUES (5,'Aerial Tramway');
INSERT INTO domains.CAT (code,code_name) VALUES (6,'Gondola Lift');
INSERT INTO domains.CAT (code,code_name) VALUES (8,'Industrial Ropeway');
INSERT INTO domains.CAT (code,code_name) VALUES (9,'Material Tramway');
INSERT INTO domains.CAT (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.CAT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.CAT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.HYP (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT HYP_pk PRIMARY KEY (code)
);

INSERT INTO domains.HYP (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.HYP (code,code_name) VALUES (1,'Perennial');
INSERT INTO domains.HYP (code,code_name) VALUES (2,'Intermittent');
INSERT INTO domains.HYP (code,code_name) VALUES (4,'Dry');
INSERT INTO domains.HYP (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.HYP (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.GNC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT GNC_pk PRIMARY KEY (code)
);

INSERT INTO domains.GNC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.GNC (code,code_name) VALUES (2,'Flood Barrage Gate');
INSERT INTO domains.GNC (code,code_name) VALUES (4,'Lock Gate');
INSERT INTO domains.GNC (code,code_name) VALUES (5,'Dyke Gate');
INSERT INTO domains.GNC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.GNC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.BAC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT BAC_pk PRIMARY KEY (code)
);

INSERT INTO domains.BAC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.BAC (code,code_name) VALUES (1,'Sparse');
INSERT INTO domains.BAC (code,code_name) VALUES (2,'Dense');
INSERT INTO domains.BAC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CAB (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CAB_pk PRIMARY KEY (code)
);

INSERT INTO domains.CAB (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CAB (code,code_name) VALUES (2,'Power Line');
INSERT INTO domains.CAB (code,code_name) VALUES (6,'Transmission Line');
INSERT INTO domains.CAB (code,code_name) VALUES (8,'Communication Line');
INSERT INTO domains.CAB (code,code_name) VALUES (998,'Not Applicable');
INSERT INTO domains.CAB (code,code_name) VALUES (999,'Other');
INSERT INTO domains.CAB (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CAA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CAA_pk PRIMARY KEY (code)
);

INSERT INTO domains.CAA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CAA (code,code_name) VALUES (3,'Private');
INSERT INTO domains.CAA (code,code_name) VALUES (5,'Military');
INSERT INTO domains.CAA (code,code_name) VALUES (7,'Joint Military and Civilian');
INSERT INTO domains.CAA (code,code_name) VALUES (16,'Civilian');
INSERT INTO domains.CAA (code,code_name) VALUES (999,'Other');
INSERT INTO domains.CAA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.HQC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT HQC_pk PRIMARY KEY (code)
);

INSERT INTO domains.HQC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.HQC (code,code_name) VALUES (1,'Index Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (2,'Intermediate Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (3,'Half Auxiliary Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (4,'Form Line');
INSERT INTO domains.HQC (code,code_name) VALUES (5,'Depression Index Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (6,'Depression Intermediate Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (7,'Approximate Index Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (8,'Mound Index Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (9,'Mound Intermediate Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (12,'Approximate Intermediate Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (14,'Quarter Auxiliary Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (19,'Intermediate Carrying Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (20,'Auxiliary Carrying Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (21,'Index Carrying Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (22,'Depression Auxiliary Contour');
INSERT INTO domains.HQC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.HQC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.MD_SOURCE (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT MD_SOURCE_pk PRIMARY KEY (code)
);

INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (1,'ADRG');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (2,'AAFIF');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (3,'CHUM');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (4,'City Graphic');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (5,'Combat Chart');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (6,'CADRG');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (7,'CIB1');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (8,'CIB5');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (10,'DNC');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (11,'DPF');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (16,'DTOP 1');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (17,'DTOP 2');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (18,'DTOP 3');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (19,'DTOP 4');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (20,'DTOP 5');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (21,'DVOF');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (22,'FFD');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (24,'Land Cover');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (25,'GeoNames');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (26,'GPS');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (27,'ICM');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (29,'NTM Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (30,'Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (31,'ITD');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (32,'IVD');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (33,'International Boundaries');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (34,'JOG');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (36,'LWD');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (37,'MC&G');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (38,'MSD 1');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (39,'MSD 2');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (40,'MSD 3');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (41,'MSD 4');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (42,'MSD 5');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (43,'MIDB');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (44,'Native Data');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (45,'Native Map');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (46,'Medical Facilities');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (47,'NATE');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (48,'Planning Graphic');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (50,'SRTM');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (51,'Site Map');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (59,'UN Data');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (60,'UVMap');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (61,'VITD');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (62,'VMap 0');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (63,'VMap 1');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (64,'VMap 2');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (65,'WVS Plus');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (85,'SPOT HRG Digital Terrain Model');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (92,'Vector Data');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (93,'1:25k Vector Data');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (94,'1:50k Vector Data');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (95,'1:100k Vector Data');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (110,'Very High Resolution Commercial Monoscopic Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (111,'Very High Resolution Commercial Stereoscopic Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (112,'High Resolution Commercial Monoscopic Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (113,'High Resolution Commercial Stereoscopic Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (114,'Medium Resolution Commercial Monoscopic Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (115,'Medium Resolution Commercial Stereoscopic Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (116,'Low Resolution Commercial Monoscopic Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (117,'Low Resolution Commercial Stereoscopic Imagery');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (118,'Map 1:25k');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (119,'Map 1:50k');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (120,'Map 1:100k');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (121,'Routing Data');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (996,'Multiple');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (997,'Unpopulated');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (999,'Other');
INSERT INTO domains.MD_SOURCE (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SWT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SWT_pk PRIMARY KEY (code)
);

INSERT INTO domains.SWT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SWT (code,code_name) VALUES (4,'Spring');
INSERT INTO domains.SWT (code,code_name) VALUES (5,'Water-hole');
INSERT INTO domains.SWT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.SWT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.PPC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT PPC_pk PRIMARY KEY (code)
);

INSERT INTO domains.PPC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.PPC (code,code_name) VALUES (1,'Hydro-electric');
INSERT INTO domains.PPC (code,code_name) VALUES (2,'Nuclear');
INSERT INTO domains.PPC (code,code_name) VALUES (3,'Solar');
INSERT INTO domains.PPC (code,code_name) VALUES (4,'Geothermal');
INSERT INTO domains.PPC (code,code_name) VALUES (5,'Wind');
INSERT INTO domains.PPC (code,code_name) VALUES (6,'Tidal');
INSERT INTO domains.PPC (code,code_name) VALUES (7,'Thermal');
INSERT INTO domains.PPC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.PPC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.PPO (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT PPO_pk PRIMARY KEY (code)
);

INSERT INTO domains.PPO (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.PPO (code,code_name) VALUES (9,'Bauxite');
INSERT INTO domains.PPO (code,code_name) VALUES (18,'Coal');
INSERT INTO domains.PPO (code,code_name) VALUES (26,'Copper');
INSERT INTO domains.PPO (code,code_name) VALUES (33,'Diamond');
INSERT INTO domains.PPO (code,code_name) VALUES (48,'Gold');
INSERT INTO domains.PPO (code,code_name) VALUES (58,'Iron');
INSERT INTO domains.PPO (code,code_name) VALUES (59,'Lead');
INSERT INTO domains.PPO (code,code_name) VALUES (65,'Manganese');
INSERT INTO domains.PPO (code,code_name) VALUES (89,'Quartz');
INSERT INTO domains.PPO (code,code_name) VALUES (95,'Salt');
INSERT INTO domains.PPO (code,code_name) VALUES (105,'Silver');
INSERT INTO domains.PPO (code,code_name) VALUES (120,'Uranium');
INSERT INTO domains.PPO (code,code_name) VALUES (126,'Zinc');
INSERT INTO domains.PPO (code,code_name) VALUES (999,'Other');
INSERT INTO domains.PPO (code,code_name) VALUES (17,'Clay');
INSERT INTO domains.PPO (code,code_name) VALUES (35,'Dolomite');
INSERT INTO domains.PPO (code,code_name) VALUES (50,'Granite');
INSERT INTO domains.PPO (code,code_name) VALUES (53,'Gravel');
INSERT INTO domains.PPO (code,code_name) VALUES (66,'Marble');
INSERT INTO domains.PPO (code,code_name) VALUES (93,'Rock');
INSERT INTO domains.PPO (code,code_name) VALUES (96,'Sand');
INSERT INTO domains.PPO (code,code_name) VALUES (110,'Stone');
INSERT INTO domains.PPO (code,code_name) VALUES (129,'Madrepore');
INSERT INTO domains.PPO (code,code_name) VALUES (996,'Multiple');
INSERT INTO domains.PPO (code,code_name) VALUES (16,'Chemical');
INSERT INTO domains.PPO (code,code_name) VALUES (45,'Gas');
INSERT INTO domains.PPO (code,code_name) VALUES (46,'Petrol');
INSERT INTO domains.PPO (code,code_name) VALUES (75,'Oil');
INSERT INTO domains.PPO (code,code_name) VALUES (101,'Sewage');
INSERT INTO domains.PPO (code,code_name) VALUES (122,'Water');
INSERT INTO domains.PPO (code,code_name) VALUES (2,'Aluminum');
INSERT INTO domains.PPO (code,code_name) VALUES (4,'Asphalt');
INSERT INTO domains.PPO (code,code_name) VALUES (13,'Brick');
INSERT INTO domains.PPO (code,code_name) VALUES (15,'Cement');
INSERT INTO domains.PPO (code,code_name) VALUES (21,'Coke');
INSERT INTO domains.PPO (code,code_name) VALUES (23,'Concrete');
INSERT INTO domains.PPO (code,code_name) VALUES (38,'Explosive');
INSERT INTO domains.PPO (code,code_name) VALUES (39,'Fish');
INSERT INTO domains.PPO (code,code_name) VALUES (41,'Food');
INSERT INTO domains.PPO (code,code_name) VALUES (47,'Glass');
INSERT INTO domains.PPO (code,code_name) VALUES (57,'Ice');
INSERT INTO domains.PPO (code,code_name) VALUES (63,'Lumber');
INSERT INTO domains.PPO (code,code_name) VALUES (69,'Metal');
INSERT INTO domains.PPO (code,code_name) VALUES (80,'Paper');
INSERT INTO domains.PPO (code,code_name) VALUES (84,'Plastic');
INSERT INTO domains.PPO (code,code_name) VALUES (90,'Radioactive Material');
INSERT INTO domains.PPO (code,code_name) VALUES (94,'Rubber');
INSERT INTO domains.PPO (code,code_name) VALUES (106,'Snow');
INSERT INTO domains.PPO (code,code_name) VALUES (109,'Steel');
INSERT INTO domains.PPO (code,code_name) VALUES (111,'Sugar');
INSERT INTO domains.PPO (code,code_name) VALUES (114,'Textile');
INSERT INTO domains.PPO (code,code_name) VALUES (117,'Tobacco');
INSERT INTO domains.PPO (code,code_name) VALUES (121,'Vegetation Product');
INSERT INTO domains.PPO (code,code_name) VALUES (136,'Biochemical');
INSERT INTO domains.PPO (code,code_name) VALUES (137,'Petrochemical');
INSERT INTO domains.PPO (code,code_name) VALUES (1,'Aircraft');
INSERT INTO domains.PPO (code,code_name) VALUES (3,'Ammunition');
INSERT INTO domains.PPO (code,code_name) VALUES (79,'Palm');
INSERT INTO domains.PPO (code,code_name) VALUES (83,'Petroleum');
INSERT INTO domains.PPO (code,code_name) VALUES (124,'Wood');
INSERT INTO domains.PPO (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RKF (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RKF_pk PRIMARY KEY (code)
);

INSERT INTO domains.RKF (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RKF (code,code_name) VALUES (1,'Columnar');
INSERT INTO domains.RKF (code,code_name) VALUES (3,'Pinnacle');
INSERT INTO domains.RKF (code,code_name) VALUES (999,'Other');
INSERT INTO domains.RKF (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FAC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FAC_pk PRIMARY KEY (code)
);

INSERT INTO domains.FAC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FAC (code,code_name) VALUES (1000,'Open');
INSERT INTO domains.FAC (code,code_name) VALUES (1001,'Solid Face');
INSERT INTO domains.FAC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.NST (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT NST_pk PRIMARY KEY (code)
);

INSERT INTO domains.NST (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.NST (code,code_name) VALUES (12,'Radio');
INSERT INTO domains.NST (code,code_name) VALUES (13,'Radio Telephone');
INSERT INTO domains.NST (code,code_name) VALUES (15,'Television (TV)');
INSERT INTO domains.NST (code,code_name) VALUES (16,'Microwave');
INSERT INTO domains.NST (code,code_name) VALUES (33,'Radio-telegraph');
INSERT INTO domains.NST (code,code_name) VALUES (999,'Other');
INSERT INTO domains.NST (code,code_name) VALUES (17,'Non-Directional Radio Beacon (NDB)');
INSERT INTO domains.NST (code,code_name) VALUES (18,'Non-Directional Radio Beacon (NDB) with Distance Measuring Equipment (DME) (NDB/DME)');
INSERT INTO domains.NST (code,code_name) VALUES (20,'VHF Omnidirectional Radio Beacon (VOR)');
INSERT INTO domains.NST (code,code_name) VALUES (21,'VHF Omnidirectional Radio Beacon (VOR) with Distance Measuring Equipment (DME) (VOR/DME)');
INSERT INTO domains.NST (code,code_name) VALUES (22,'VHF Omnidirectional Radio Beacon (VOR) with Tactical Air Navigation Aid (TACAN) (VORTAC)');
INSERT INTO domains.NST (code,code_name) VALUES (23,'Tactical Air Navigation Aid (TACAN)');
INSERT INTO domains.NST (code,code_name) VALUES (24,'Instrument Landing System (ILS)');
INSERT INTO domains.NST (code,code_name) VALUES (25,'Instrument Landing System (ILS) with Distance Measuring Equipment (DME) (ILS/DME)');
INSERT INTO domains.NST (code,code_name) VALUES (26,'Localizer (LOC)');
INSERT INTO domains.NST (code,code_name) VALUES (27,'Localizer (LOC) with Distance Measuring Equipment (DME) (LOC/DME)');
INSERT INTO domains.NST (code,code_name) VALUES (30,'Microwave Landing System (MLS)');
INSERT INTO domains.NST (code,code_name) VALUES (35,'Radar Antenna');
INSERT INTO domains.NST (code,code_name) VALUES (37,'Precision Approach Radar (PAR)');
INSERT INTO domains.NST (code,code_name) VALUES (38,'Aeronautical Radio');
INSERT INTO domains.NST (code,code_name) VALUES (58,'Distance Measuring Equipment (DME)');
INSERT INTO domains.NST (code,code_name) VALUES (74,'ILS Back Course');
INSERT INTO domains.NST (code,code_name) VALUES (75,'Localizer (LOC) Back Course Marker');
INSERT INTO domains.NST (code,code_name) VALUES (76,'Marker Radio Beacon (MKR)');
INSERT INTO domains.NST (code,code_name) VALUES (78,'Outer Marker (OM)');
INSERT INTO domains.NST (code,code_name) VALUES (79,'Middle Marker (MM)');
INSERT INTO domains.NST (code,code_name) VALUES (80,'Locator Outer Marker (LOM)');
INSERT INTO domains.NST (code,code_name) VALUES (81,'Locator Middle Marker (LMM)');
INSERT INTO domains.NST (code,code_name) VALUES (82,'Rotating Beacon Light');
INSERT INTO domains.NST (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CNS (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CNS_pk PRIMARY KEY (code)
);

INSERT INTO domains.CNS (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CNS (code,code_name) VALUES (1000,'Uncontrolled');
INSERT INTO domains.CNS (code,code_name) VALUES (1001,'Controlled');
INSERT INTO domains.CNS (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.SLT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT SLT_pk PRIMARY KEY (code)
);

INSERT INTO domains.SLT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.SLT (code,code_name) VALUES (6,'Mangrove');
INSERT INTO domains.SLT (code,code_name) VALUES (8,'Marshy');
INSERT INTO domains.SLT (code,code_name) VALUES (10,'Stony');
INSERT INTO domains.SLT (code,code_name) VALUES (11,'Building Rubble');
INSERT INTO domains.SLT (code,code_name) VALUES (13,'Sandy');
INSERT INTO domains.SLT (code,code_name) VALUES (14,'Shingly');
INSERT INTO domains.SLT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.SLT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.FPT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT FPT_pk PRIMARY KEY (code)
);

INSERT INTO domains.FPT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.FPT (code,code_name) VALUES (1,'Major');
INSERT INTO domains.FPT (code,code_name) VALUES (2,'Minor and Hard');
INSERT INTO domains.FPT (code,code_name) VALUES (3,'Minor and Soft');
INSERT INTO domains.FPT (code,code_name) VALUES (999,'Other');
INSERT INTO domains.FPT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.WCC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT WCC_pk PRIMARY KEY (code)
);

INSERT INTO domains.WCC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.WCC (code,code_name) VALUES (1,'Channelized Stream');
INSERT INTO domains.WCC (code,code_name) VALUES (2,'Braided Stream');
INSERT INTO domains.WCC (code,code_name) VALUES (3,'Gorge');
INSERT INTO domains.WCC (code,code_name) VALUES (4,'Wadi');
INSERT INTO domains.WCC (code,code_name) VALUES (7,'Normal Channel');
INSERT INTO domains.WCC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.ESC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT ESC_pk PRIMARY KEY (code)
);

INSERT INTO domains.ESC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.ESC (code,code_name) VALUES (1,'Land');
INSERT INTO domains.ESC (code,code_name) VALUES (2,'Snow Field and/or Ice-field');
INSERT INTO domains.ESC (code,code_name) VALUES (4,'Vegetation');
INSERT INTO domains.ESC (code,code_name) VALUES (5,'Inland Water');
INSERT INTO domains.ESC (code,code_name) VALUES (6,'Tidal Water');
INSERT INTO domains.ESC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.VSP (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT VSP_pk PRIMARY KEY (code)
);

INSERT INTO domains.VSP (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.VSP (code,code_name) VALUES (8,'Cypress');
INSERT INTO domains.VSP (code,code_name) VALUES (22,'Nipa');
INSERT INTO domains.VSP (code,code_name) VALUES (999,'Other');
INSERT INTO domains.VSP (code,code_name) VALUES (4,'Casuarina');
INSERT INTO domains.VSP (code,code_name) VALUES (6,'Conifer');
INSERT INTO domains.VSP (code,code_name) VALUES (10,'Eucalyptus');
INSERT INTO domains.VSP (code,code_name) VALUES (11,'Filao');
INSERT INTO domains.VSP (code,code_name) VALUES (25,'Palm');
INSERT INTO domains.VSP (code,code_name) VALUES (50,'Umbrella Thorn');
INSERT INTO domains.VSP (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.MCC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT MCC_pk PRIMARY KEY (code)
);

INSERT INTO domains.MCC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.MCC (code,code_name) VALUES (5,'Asphalt');
INSERT INTO domains.MCC (code,code_name) VALUES (9,'Brick');
INSERT INTO domains.MCC (code,code_name) VALUES (16,'Clay');
INSERT INTO domains.MCC (code,code_name) VALUES (20,'Composition');
INSERT INTO domains.MCC (code,code_name) VALUES (21,'Concrete');
INSERT INTO domains.MCC (code,code_name) VALUES (22,'Conglomerate');
INSERT INTO domains.MCC (code,code_name) VALUES (46,'Gravel');
INSERT INTO domains.MCC (code,code_name) VALUES (57,'Macadam');
INSERT INTO domains.MCC (code,code_name) VALUES (62,'Masonry');
INSERT INTO domains.MCC (code,code_name) VALUES (64,'Metal');
INSERT INTO domains.MCC (code,code_name) VALUES (72,'Part Metal');
INSERT INTO domains.MCC (code,code_name) VALUES (73,'Pebbles');
INSERT INTO domains.MCC (code,code_name) VALUES (77,'Prestressed Concrete');
INSERT INTO domains.MCC (code,code_name) VALUES (83,'Reinforced Concrete');
INSERT INTO domains.MCC (code,code_name) VALUES (84,'Rock');
INSERT INTO domains.MCC (code,code_name) VALUES (86,'Rubble');
INSERT INTO domains.MCC (code,code_name) VALUES (88,'Sand');
INSERT INTO domains.MCC (code,code_name) VALUES (104,'Soil');
INSERT INTO domains.MCC (code,code_name) VALUES (108,'Stone');
INSERT INTO domains.MCC (code,code_name) VALUES (117,'Wood');
INSERT INTO domains.MCC (code,code_name) VALUES (999,'Other');
INSERT INTO domains.MCC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RSA (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RSA_pk PRIMARY KEY (code)
);

INSERT INTO domains.RSA (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RSA (code,code_name) VALUES (1,'Spur');
INSERT INTO domains.RSA (code,code_name) VALUES (2,'Siding');
INSERT INTO domains.RSA (code,code_name) VALUES (3,'Passing');
INSERT INTO domains.RSA (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.PWC (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT PWC_pk PRIMARY KEY (code)
);

INSERT INTO domains.PWC (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.PWC (code,code_name) VALUES (1,'Pier');
INSERT INTO domains.PWC (code,code_name) VALUES (2,'Wharf');
INSERT INTO domains.PWC (code,code_name) VALUES (3,'Quay');
INSERT INTO domains.PWC (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.RST (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT RST_pk PRIMARY KEY (code)
);

INSERT INTO domains.RST (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.RST (code,code_name) VALUES (1,'Hard/Paved');
INSERT INTO domains.RST (code,code_name) VALUES (2,'Loose/Unpaved');
INSERT INTO domains.RST (code,code_name) VALUES (5,'Grass/Sod (Soft)');
INSERT INTO domains.RST (code,code_name) VALUES (6,'Unimproved');
INSERT INTO domains.RST (code,code_name) VALUES (999,'Other');
INSERT INTO domains.RST (code,code_name) VALUES (8,'Temporary');
INSERT INTO domains.RST (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE domains.CFT (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT CFT_pk PRIMARY KEY (code)
);

INSERT INTO domains.CFT (code,code_name) VALUES (0,'Unknown');
INSERT INTO domains.CFT (code,code_name) VALUES (7,'Elevation contour');
INSERT INTO domains.CFT (code,code_name) VALUES (8,'Drainage Limit');
INSERT INTO domains.CFT (code,code_name) VALUES (10,'Ridgeline');
INSERT INTO domains.CFT (code,code_name) VALUES (11,'Drainage Line');
INSERT INTO domains.CFT (code,code_name) VALUES (12,'Left Bank');
INSERT INTO domains.CFT (code,code_name) VALUES (13,'Right Bank');
INSERT INTO domains.CFT (code,code_name) VALUES (14,'Shoreline');
INSERT INTO domains.CFT (code,code_name) VALUES (15,'Lake Transec');
INSERT INTO domains.CFT (code,code_name) VALUES (16,'Meridian');
INSERT INTO domains.CFT (code,code_name) VALUES (17,'Median');
INSERT INTO domains.CFT (code,code_name) VALUES (18,'Parallel');
INSERT INTO domains.CFT (code,code_name) VALUES (19,'Straight Segmented');
INSERT INTO domains.CFT (code,code_name) VALUES (20,'Straight');
INSERT INTO domains.CFT (code,code_name) VALUES (33,'Anthropogeographic');
INSERT INTO domains.CFT (code,code_name) VALUES (9999,'A SER PREENCHIDO');

CREATE TABLE mgcp.pAA050(
	 id serial NOT NULL,
	 NFN varchar(255),
	 WFT smallint NOT NULL,
	 SCC smallint NOT NULL,
	 PPO smallint NOT NULL,
	 NAM varchar(255),
	 HYP smallint NOT NULL,
	 FUN smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAA050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAA050_geom ON mgcp.pAA050 USING gist (geom);

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_WFT_fk FOREIGN KEY (WFT)
	 REFERENCES domains.WFT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA050 ALTER COLUMN WFT SET DEFAULT 9999;

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_SCC_fk FOREIGN KEY (SCC)
	 REFERENCES domains.SCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_SCC_check 
	 CHECK (SCC = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 4 :: SMALLINT, 9 :: SMALLINT, 10 :: SMALLINT, 998 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAA050 ALTER COLUMN SCC SET DEFAULT 9999;

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 45 :: SMALLINT, 75 :: SMALLINT, 122 :: SMALLINT, 996 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAA050 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA050 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAA050
	 ADD CONSTRAINT pAA050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBH170(
	 id serial NOT NULL,
	 NAM varchar(255),
	 SWT smallint NOT NULL,
	 NFI varchar(255),
	 HYP smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBH170_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBH170_geom ON mgcp.pBH170 USING gist (geom);

ALTER TABLE mgcp.pBH170
	 ADD CONSTRAINT pBH170_SWT_fk FOREIGN KEY (SWT)
	 REFERENCES domains.SWT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH170 ALTER COLUMN SWT SET DEFAULT 9999;

ALTER TABLE mgcp.pBH170
	 ADD CONSTRAINT pBH170_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH170
	 ADD CONSTRAINT pBH170_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pBH170 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.pBH170
	 ADD CONSTRAINT pBH170_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH170 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBH170
	 ADD CONSTRAINT pBH170_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH170 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH020(
	 id serial NOT NULL,
	 NAM varchar(255),
	 WID real,
	 NFN varchar(255),
	 NFI varchar(255),
	 HYP smallint NOT NULL,
	 CDA smallint NOT NULL,
	 FUN smallint NOT NULL,
	 LOC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH020_geom ON mgcp.lBH020 USING gist (geom);

ALTER TABLE mgcp.lBH020
	 ADD CONSTRAINT lBH020_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH020
	 ADD CONSTRAINT lBH020_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBH020 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.lBH020
	 ADD CONSTRAINT lBH020_CDA_fk FOREIGN KEY (CDA)
	 REFERENCES domains.CDA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH020 ALTER COLUMN CDA SET DEFAULT 9999;

ALTER TABLE mgcp.lBH020
	 ADD CONSTRAINT lBH020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBH020
	 ADD CONSTRAINT lBH020_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH020
	 ADD CONSTRAINT lBH020_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBH020 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH020
	 ADD CONSTRAINT lBH020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH020
	 ADD CONSTRAINT lBH020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH030(
	 id serial NOT NULL,
	 HYP smallint NOT NULL,
	 WID real,
	 NFN varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 CDA smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH030_geom ON mgcp.lBH030 USING gist (geom);

ALTER TABLE mgcp.lBH030
	 ADD CONSTRAINT lBH030_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH030
	 ADD CONSTRAINT lBH030_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBH030 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.lBH030
	 ADD CONSTRAINT lBH030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBH030
	 ADD CONSTRAINT lBH030_CDA_fk FOREIGN KEY (CDA)
	 REFERENCES domains.CDA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH030 ALTER COLUMN CDA SET DEFAULT 9999;

ALTER TABLE mgcp.lBH030
	 ADD CONSTRAINT lBH030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH030
	 ADD CONSTRAINT lBH030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH140(
	 id serial NOT NULL,
	 NFN varchar(255),
	 WST smallint NOT NULL,
	 WID real,
	 WCC smallint NOT NULL,
	 TID smallint NOT NULL,
	 NFI varchar(255),
	 NAM varchar(255),
	 HYP smallint NOT NULL,
	 CDA smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH140_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH140_geom ON mgcp.lBH140 USING gist (geom);

ALTER TABLE mgcp.lBH140
	 ADD CONSTRAINT lBH140_WST_fk FOREIGN KEY (WST)
	 REFERENCES domains.WST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH140 ALTER COLUMN WST SET DEFAULT 9999;

ALTER TABLE mgcp.lBH140
	 ADD CONSTRAINT lBH140_WCC_fk FOREIGN KEY (WCC)
	 REFERENCES domains.WCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH140 ALTER COLUMN WCC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH140
	 ADD CONSTRAINT lBH140_TID_fk FOREIGN KEY (TID)
	 REFERENCES domains.TID (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH140 ALTER COLUMN TID SET DEFAULT 9999;

ALTER TABLE mgcp.lBH140
	 ADD CONSTRAINT lBH140_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH140
	 ADD CONSTRAINT lBH140_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBH140 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.lBH140
	 ADD CONSTRAINT lBH140_CDA_fk FOREIGN KEY (CDA)
	 REFERENCES domains.CDA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH140 ALTER COLUMN CDA SET DEFAULT 9999;

ALTER TABLE mgcp.lBH140
	 ADD CONSTRAINT lBH140_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH140 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH140
	 ADD CONSTRAINT lBH140_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH140 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH020(
	 id serial NOT NULL,
	 HYP smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 LOC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 CDA smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH020_geom ON mgcp.aBH020 USING gist (geom);

ALTER TABLE mgcp.aBH020
	 ADD CONSTRAINT aBH020_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH020
	 ADD CONSTRAINT aBH020_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH020 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.aBH020
	 ADD CONSTRAINT aBH020_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH020
	 ADD CONSTRAINT aBH020_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH020 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH020
	 ADD CONSTRAINT aBH020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBH020
	 ADD CONSTRAINT aBH020_CDA_fk FOREIGN KEY (CDA)
	 REFERENCES domains.CDA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH020 ALTER COLUMN CDA SET DEFAULT 9999;

ALTER TABLE mgcp.aBH020
	 ADD CONSTRAINT aBH020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH020
	 ADD CONSTRAINT aBH020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH030(
	 id serial NOT NULL,
	 NAM varchar(255),
	 HYP smallint NOT NULL,
	 NFI varchar(255),
	 CDA smallint NOT NULL,
	 NFN varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH030_geom ON mgcp.aBH030 USING gist (geom);

ALTER TABLE mgcp.aBH030
	 ADD CONSTRAINT aBH030_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH030
	 ADD CONSTRAINT aBH030_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH030 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.aBH030
	 ADD CONSTRAINT aBH030_CDA_fk FOREIGN KEY (CDA)
	 REFERENCES domains.CDA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH030 ALTER COLUMN CDA SET DEFAULT 9999;

ALTER TABLE mgcp.aBH030
	 ADD CONSTRAINT aBH030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBH030
	 ADD CONSTRAINT aBH030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH030
	 ADD CONSTRAINT aBH030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH140(
	 id serial NOT NULL,
	 NAM varchar(255),
	 WST smallint NOT NULL,
	 WCC smallint NOT NULL,
	 TID smallint NOT NULL,
	 NFI varchar(255),
	 HYP smallint NOT NULL,
	 CDA smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH140_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH140_geom ON mgcp.aBH140 USING gist (geom);

ALTER TABLE mgcp.aBH140
	 ADD CONSTRAINT aBH140_WST_fk FOREIGN KEY (WST)
	 REFERENCES domains.WST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH140 ALTER COLUMN WST SET DEFAULT 9999;

ALTER TABLE mgcp.aBH140
	 ADD CONSTRAINT aBH140_WCC_fk FOREIGN KEY (WCC)
	 REFERENCES domains.WCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH140 ALTER COLUMN WCC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH140
	 ADD CONSTRAINT aBH140_TID_fk FOREIGN KEY (TID)
	 REFERENCES domains.TID (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH140 ALTER COLUMN TID SET DEFAULT 9999;

ALTER TABLE mgcp.aBH140
	 ADD CONSTRAINT aBH140_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH140
	 ADD CONSTRAINT aBH140_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH140 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.aBH140
	 ADD CONSTRAINT aBH140_CDA_fk FOREIGN KEY (CDA)
	 REFERENCES domains.CDA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH140 ALTER COLUMN CDA SET DEFAULT 9999;

ALTER TABLE mgcp.aBH140
	 ADD CONSTRAINT aBH140_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH140 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH140
	 ADD CONSTRAINT aBH140_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH140 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aZD020(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aZD020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aZD020_geom ON mgcp.aZD020 USING gist (geom);

ALTER TABLE mgcp.aZD020
	 ADD CONSTRAINT aZD020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aZD020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aZD020
	 ADD CONSTRAINT aZD020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aZD020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAJ051(
	 id serial NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAJ051_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAJ051_geom ON mgcp.pAJ051 USING gist (geom);

ALTER TABLE mgcp.pAJ051
	 ADD CONSTRAINT pAJ051_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ051 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAJ051
	 ADD CONSTRAINT pAJ051_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ051 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAJ051
	 ADD CONSTRAINT pAJ051_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ051 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAT042(
	 id serial NOT NULL,
	 CAB smallint NOT NULL,
	 HGT real,
	 TOS smallint NOT NULL,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAT042_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAT042_geom ON mgcp.pAT042 USING gist (geom);

ALTER TABLE mgcp.pAT042
	 ADD CONSTRAINT pAT042_CAB_fk FOREIGN KEY (CAB)
	 REFERENCES domains.CAB (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT042 ALTER COLUMN CAB SET DEFAULT 9999;

ALTER TABLE mgcp.pAT042
	 ADD CONSTRAINT pAT042_TOS_fk FOREIGN KEY (TOS)
	 REFERENCES domains.TOS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT042 ALTER COLUMN TOS SET DEFAULT 9999;

ALTER TABLE mgcp.pAT042
	 ADD CONSTRAINT pAT042_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT042 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAT042
	 ADD CONSTRAINT pAT042_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT042 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAQ130(
	 id serial NOT NULL,
	 NAM varchar(255),
	 WID real,
	 TRS smallint NOT NULL,
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAQ130_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAQ130_geom ON mgcp.lAQ130 USING gist (geom);

ALTER TABLE mgcp.lAQ130
	 ADD CONSTRAINT lAQ130_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ130 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ130
	 ADD CONSTRAINT lAQ130_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ130 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ130
	 ADD CONSTRAINT lAQ130_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ130 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ130
	 ADD CONSTRAINT lAQ130_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ130 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAQ130(
	 id serial NOT NULL,
	 TRS smallint NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAQ130_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAQ130_geom ON mgcp.aAQ130 USING gist (geom);

ALTER TABLE mgcp.aAQ130
	 ADD CONSTRAINT aAQ130_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ130 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ130
	 ADD CONSTRAINT aAQ130_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ130 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ130
	 ADD CONSTRAINT aAQ130_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ130 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ130
	 ADD CONSTRAINT aAQ130_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ130 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBJ110(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBJ110_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBJ110_geom ON mgcp.aBJ110 USING gist (geom);

ALTER TABLE mgcp.aBJ110
	 ADD CONSTRAINT aBJ110_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ110 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBJ110
	 ADD CONSTRAINT aBJ110_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ110 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pEC030(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pEC030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pEC030_geom ON mgcp.pEC030 USING gist (geom);

ALTER TABLE mgcp.pEC030
	 ADD CONSTRAINT pEC030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pEC030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pEC030
	 ADD CONSTRAINT pEC030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pEC030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lEA020(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lEA020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lEA020_geom ON mgcp.lEA020 USING gist (geom);

ALTER TABLE mgcp.lEA020
	 ADD CONSTRAINT lEA020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lEA020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lEA020
	 ADD CONSTRAINT lEA020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lEA020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lEC030(
	 id serial NOT NULL,
	 TRE smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lEC030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lEC030_geom ON mgcp.lEC030 USING gist (geom);

ALTER TABLE mgcp.lEC030
	 ADD CONSTRAINT lEC030_TRE_fk FOREIGN KEY (TRE)
	 REFERENCES domains.TRE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lEC030 ALTER COLUMN TRE SET DEFAULT 9999;

ALTER TABLE mgcp.lEC030
	 ADD CONSTRAINT lEC030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lEC030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lEC030
	 ADD CONSTRAINT lEC030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lEC030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEC030(
	 id serial NOT NULL,
	 NFN varchar(255),
	 TRE smallint NOT NULL,
	 NFI varchar(255),
	 NAM varchar(255),
	 DMT real,
	 VSP smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEC030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEC030_geom ON mgcp.aEC030 USING gist (geom);

ALTER TABLE mgcp.aEC030
	 ADD CONSTRAINT aEC030_TRE_fk FOREIGN KEY (TRE)
	 REFERENCES domains.TRE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC030 ALTER COLUMN TRE SET DEFAULT 9999;

ALTER TABLE mgcp.aEC030
	 ADD CONSTRAINT aEC030_VSP_fk FOREIGN KEY (VSP)
	 REFERENCES domains.VSP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC030
	 ADD CONSTRAINT aEC030_VSP_check 
	 CHECK (VSP = ANY(ARRAY[0 :: SMALLINT, 4 :: SMALLINT, 6 :: SMALLINT, 8 :: SMALLINT, 10 :: SMALLINT, 11 :: SMALLINT, 25 :: SMALLINT, 50 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aEC030 ALTER COLUMN VSP SET DEFAULT 9999;

ALTER TABLE mgcp.aEC030
	 ADD CONSTRAINT aEC030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEC030
	 ADD CONSTRAINT aEC030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAC030(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 PPO smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAC030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAC030_geom ON mgcp.pAC030 USING gist (geom);

ALTER TABLE mgcp.pAC030
	 ADD CONSTRAINT pAC030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAC030
	 ADD CONSTRAINT pAC030_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC030
	 ADD CONSTRAINT pAC030_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 75 :: SMALLINT, 101 :: SMALLINT, 122 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAC030 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAC030
	 ADD CONSTRAINT pAC030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAC030
	 ADD CONSTRAINT pAC030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAJ030(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAJ030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAJ030_geom ON mgcp.pAJ030 USING gist (geom);

ALTER TABLE mgcp.pAJ030
	 ADD CONSTRAINT pAJ030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAJ030
	 ADD CONSTRAINT pAJ030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAC030(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 PPO smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAC030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAC030_geom ON mgcp.aAC030 USING gist (geom);

ALTER TABLE mgcp.aAC030
	 ADD CONSTRAINT aAC030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAC030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAC030
	 ADD CONSTRAINT aAC030_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAC030
	 ADD CONSTRAINT aAC030_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 75 :: SMALLINT, 101 :: SMALLINT, 122 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAC030 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAC030
	 ADD CONSTRAINT aAC030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAC030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAC030
	 ADD CONSTRAINT aAC030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAC030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAJ030(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAJ030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAJ030_geom ON mgcp.aAJ030 USING gist (geom);

ALTER TABLE mgcp.aAJ030
	 ADD CONSTRAINT aAJ030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAJ030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAJ030
	 ADD CONSTRAINT aAJ030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAJ030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH040(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH040_geom ON mgcp.aBH040 USING gist (geom);

ALTER TABLE mgcp.aBH040
	 ADD CONSTRAINT aBH040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBH040
	 ADD CONSTRAINT aBH040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH040
	 ADD CONSTRAINT aBH040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH050(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH050_geom ON mgcp.aBH050 USING gist (geom);

ALTER TABLE mgcp.aBH050
	 ADD CONSTRAINT aBH050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBH050
	 ADD CONSTRAINT aBH050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH050
	 ADD CONSTRAINT aBH050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH051(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH051_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH051_geom ON mgcp.aBH051 USING gist (geom);

ALTER TABLE mgcp.aBH051
	 ADD CONSTRAINT aBH051_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH051 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBH051
	 ADD CONSTRAINT aBH051_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH051 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH051
	 ADD CONSTRAINT aBH051_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH051 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAQ090(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAQ090_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAQ090_geom ON mgcp.pAQ090 USING gist (geom);

ALTER TABLE mgcp.pAQ090
	 ADD CONSTRAINT pAQ090_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ090 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ090
	 ADD CONSTRAINT pAQ090_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ090 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ090
	 ADD CONSTRAINT pAQ090_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ090 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAQ125(
	 id serial NOT NULL,
	 TUC smallint NOT NULL,
	 TRS smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAQ125_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAQ125_geom ON mgcp.pAQ125 USING gist (geom);

ALTER TABLE mgcp.pAQ125
	 ADD CONSTRAINT pAQ125_TUC_fk FOREIGN KEY (TUC)
	 REFERENCES domains.TUC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ125 ALTER COLUMN TUC SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ125
	 ADD CONSTRAINT pAQ125_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ125 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ125
	 ADD CONSTRAINT pAQ125_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ125 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ125
	 ADD CONSTRAINT pAQ125_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ125 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ125
	 ADD CONSTRAINT pAQ125_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ125 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAQ065(
	 id serial NOT NULL,
	 AOO real,
	 WID real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAQ065_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAQ065_geom ON mgcp.pAQ065 USING gist (geom);

ALTER TABLE mgcp.pAQ065
	 ADD CONSTRAINT pAQ065_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ065 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ065
	 ADD CONSTRAINT pAQ065_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ065 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAN076(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAN076_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAN076_geom ON mgcp.pAN076 USING gist (geom);

ALTER TABLE mgcp.pAN076
	 ADD CONSTRAINT pAN076_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAN076 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAN076
	 ADD CONSTRAINT pAN076_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAN076 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAL060(
	 id serial NOT NULL,
	 NFI varchar(255),
	 WID real,
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAL060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAL060_geom ON mgcp.lAL060 USING gist (geom);

ALTER TABLE mgcp.lAL060
	 ADD CONSTRAINT lAL060_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL060 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAL060
	 ADD CONSTRAINT lAL060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAL060
	 ADD CONSTRAINT lAL060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAQ125(
	 id serial NOT NULL,
	 NAM varchar(255),
	 TUC smallint NOT NULL,
	 TRS smallint NOT NULL,
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAQ125_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAQ125_geom ON mgcp.aAQ125 USING gist (geom);

ALTER TABLE mgcp.aAQ125
	 ADD CONSTRAINT aAQ125_TUC_fk FOREIGN KEY (TUC)
	 REFERENCES domains.TUC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ125 ALTER COLUMN TUC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ125
	 ADD CONSTRAINT aAQ125_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ125 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ125
	 ADD CONSTRAINT aAQ125_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ125 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ125
	 ADD CONSTRAINT aAQ125_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ125 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ125
	 ADD CONSTRAINT aAQ125_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ125 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAQ135(
	 id serial NOT NULL,
	 NFI varchar(255),
	 RST smallint NOT NULL,
	 NFN varchar(255),
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAQ135_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAQ135_geom ON mgcp.aAQ135 USING gist (geom);

ALTER TABLE mgcp.aAQ135
	 ADD CONSTRAINT aAQ135_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ135
	 ADD CONSTRAINT aAQ135_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAQ135 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ135
	 ADD CONSTRAINT aAQ135_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ135 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ135
	 ADD CONSTRAINT aAQ135_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ135 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ135
	 ADD CONSTRAINT aAQ135_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ135 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAQ140(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 RST smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAQ140_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAQ140_geom ON mgcp.aAQ140 USING gist (geom);

ALTER TABLE mgcp.aAQ140
	 ADD CONSTRAINT aAQ140_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ140 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ140
	 ADD CONSTRAINT aAQ140_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ140
	 ADD CONSTRAINT aAQ140_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAQ140 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ140
	 ADD CONSTRAINT aAQ140_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ140 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ140
	 ADD CONSTRAINT aAQ140_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ140 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL060(
	 id serial NOT NULL,
	 WID real,
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL060_geom ON mgcp.aAL060 USING gist (geom);

ALTER TABLE mgcp.aAL060
	 ADD CONSTRAINT aAL060_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL060 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAL060
	 ADD CONSTRAINT aAL060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL060
	 ADD CONSTRAINT aAL060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAN076(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAN076_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAN076_geom ON mgcp.aAN076 USING gist (geom);

ALTER TABLE mgcp.aAN076
	 ADD CONSTRAINT aAN076_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAN076 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAN076
	 ADD CONSTRAINT aAN076_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAN076 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAP050(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NAM varchar(255),
	 WTC smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAP050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAP050_geom ON mgcp.lAP050 USING gist (geom);

ALTER TABLE mgcp.lAP050
	 ADD CONSTRAINT lAP050_WTC_fk FOREIGN KEY (WTC)
	 REFERENCES domains.WTC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP050
	 ADD CONSTRAINT lAP050_WTC_check 
	 CHECK (WTC = ANY(ARRAY[0 :: SMALLINT, 2 :: SMALLINT, 3 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAP050 ALTER COLUMN WTC SET DEFAULT 9999;

ALTER TABLE mgcp.lAP050
	 ADD CONSTRAINT lAP050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAP050
	 ADD CONSTRAINT lAP050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAP010(
	 id serial NOT NULL,
	 NAM varchar(255),
	 WTC smallint NOT NULL,
	 WD1 real,
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAP010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAP010_geom ON mgcp.lAP010 USING gist (geom);

ALTER TABLE mgcp.lAP010
	 ADD CONSTRAINT lAP010_WTC_fk FOREIGN KEY (WTC)
	 REFERENCES domains.WTC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP010
	 ADD CONSTRAINT lAP010_WTC_check 
	 CHECK (WTC = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 3 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAP010 ALTER COLUMN WTC SET DEFAULT 9999;

ALTER TABLE mgcp.lAP010
	 ADD CONSTRAINT lAP010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAP010
	 ADD CONSTRAINT lAP010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL241(
	 id serial NOT NULL,
	 NFI varchar(255),
	 VOI varchar(255),
	 TTC smallint NOT NULL,
	 NFN varchar(255),
	 HGT real,
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL241_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL241_geom ON mgcp.pAL241 USING gist (geom);

ALTER TABLE mgcp.pAL241
	 ADD CONSTRAINT pAL241_TTC_fk FOREIGN KEY (TTC)
	 REFERENCES domains.TTC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL241 ALTER COLUMN TTC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL241
	 ADD CONSTRAINT pAL241_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL241 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAL241
	 ADD CONSTRAINT pAL241_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL241 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL241
	 ADD CONSTRAINT pAL241_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL241 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pDB115(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pDB115_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pDB115_geom ON mgcp.pDB115 USING gist (geom);

ALTER TABLE mgcp.pDB115
	 ADD CONSTRAINT pDB115_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB115 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pDB115
	 ADD CONSTRAINT pDB115_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB115 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pDB180(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 VGT smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pDB180_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pDB180_geom ON mgcp.pDB180 USING gist (geom);

ALTER TABLE mgcp.pDB180
	 ADD CONSTRAINT pDB180_VGT_fk FOREIGN KEY (VGT)
	 REFERENCES domains.VGT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB180 ALTER COLUMN VGT SET DEFAULT 9999;

ALTER TABLE mgcp.pDB180
	 ADD CONSTRAINT pDB180_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB180 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pDB180
	 ADD CONSTRAINT pDB180_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB180 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aDB115(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aDB115_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aDB115_geom ON mgcp.aDB115 USING gist (geom);

ALTER TABLE mgcp.aDB115
	 ADD CONSTRAINT aDB115_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB115 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB115
	 ADD CONSTRAINT aDB115_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB115 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pZD040(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pZD040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pZD040_geom ON mgcp.pZD040 USING gist (geom);

ALTER TABLE mgcp.pZD040
	 ADD CONSTRAINT pZD040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pZD040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pZD040
	 ADD CONSTRAINT pZD040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pZD040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aFA100(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aFA100_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aFA100_geom ON mgcp.aFA100 USING gist (geom);

ALTER TABLE mgcp.aFA100
	 ADD CONSTRAINT aFA100_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aFA100 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aFA100
	 ADD CONSTRAINT aFA100_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aFA100 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAT060(
	 id serial NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAT060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAT060_geom ON mgcp.lAT060 USING gist (geom);

ALTER TABLE mgcp.lAT060
	 ADD CONSTRAINT lAT060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAT060
	 ADD CONSTRAINT lAT060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH015(
	 id serial NOT NULL,
	 BOC smallint NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH015_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH015_geom ON mgcp.aBH015 USING gist (geom);

ALTER TABLE mgcp.aBH015
	 ADD CONSTRAINT aBH015_BOC_fk FOREIGN KEY (BOC)
	 REFERENCES domains.BOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH015 ALTER COLUMN BOC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH015
	 ADD CONSTRAINT aBH015_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH015 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH015
	 ADD CONSTRAINT aBH015_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH015 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aED010(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 TID smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aED010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aED010_geom ON mgcp.aED010 USING gist (geom);

ALTER TABLE mgcp.aED010
	 ADD CONSTRAINT aED010_TID_fk FOREIGN KEY (TID)
	 REFERENCES domains.TID (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED010 ALTER COLUMN TID SET DEFAULT 9999;

ALTER TABLE mgcp.aED010
	 ADD CONSTRAINT aED010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aED010
	 ADD CONSTRAINT aED010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aED020(
	 id serial NOT NULL,
	 NAM varchar(255),
	 VSP smallint NOT NULL,
	 VEG smallint NOT NULL,
	 TRE smallint NOT NULL,
	 TID smallint NOT NULL,
	 NFI varchar(255),
	 DMT real,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aED020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aED020_geom ON mgcp.aED020 USING gist (geom);

ALTER TABLE mgcp.aED020
	 ADD CONSTRAINT aED020_VSP_fk FOREIGN KEY (VSP)
	 REFERENCES domains.VSP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED020
	 ADD CONSTRAINT aED020_VSP_check 
	 CHECK (VSP = ANY(ARRAY[0 :: SMALLINT, 8 :: SMALLINT, 22 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aED020 ALTER COLUMN VSP SET DEFAULT 9999;

ALTER TABLE mgcp.aED020
	 ADD CONSTRAINT aED020_VEG_fk FOREIGN KEY (VEG)
	 REFERENCES domains.VEG (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED020
	 ADD CONSTRAINT aED020_VEG_check 
	 CHECK (VEG = ANY(ARRAY[0 :: SMALLINT, 50 :: SMALLINT, 51 :: SMALLINT, 75 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aED020 ALTER COLUMN VEG SET DEFAULT 9999;

ALTER TABLE mgcp.aED020
	 ADD CONSTRAINT aED020_TRE_fk FOREIGN KEY (TRE)
	 REFERENCES domains.TRE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED020 ALTER COLUMN TRE SET DEFAULT 9999;

ALTER TABLE mgcp.aED020
	 ADD CONSTRAINT aED020_TID_fk FOREIGN KEY (TID)
	 REFERENCES domains.TID (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED020 ALTER COLUMN TID SET DEFAULT 9999;

ALTER TABLE mgcp.aED020
	 ADD CONSTRAINT aED020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aED020
	 ADD CONSTRAINT aED020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aED030(
	 id serial NOT NULL,
	 NFI varchar(255),
	 TID smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 DMT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aED030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aED030_geom ON mgcp.aED030 USING gist (geom);

ALTER TABLE mgcp.aED030
	 ADD CONSTRAINT aED030_TID_fk FOREIGN KEY (TID)
	 REFERENCES domains.TID (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED030 ALTER COLUMN TID SET DEFAULT 9999;

ALTER TABLE mgcp.aED030
	 ADD CONSTRAINT aED030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aED030
	 ADD CONSTRAINT aED030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aED030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAD030(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAD030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAD030_geom ON mgcp.pAD030 USING gist (geom);

ALTER TABLE mgcp.pAD030
	 ADD CONSTRAINT pAD030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAD030
	 ADD CONSTRAINT pAD030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAD030
	 ADD CONSTRAINT pAD030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAD030(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAD030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAD030_geom ON mgcp.aAD030 USING gist (geom);

ALTER TABLE mgcp.aAD030
	 ADD CONSTRAINT aAD030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAD030
	 ADD CONSTRAINT aAD030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAD030
	 ADD CONSTRAINT aAD030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAM040(
	 id serial NOT NULL,
	 VOI varchar(255),
	 PPO smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAM040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAM040_geom ON mgcp.pAM040 USING gist (geom);

ALTER TABLE mgcp.pAM040
	 ADD CONSTRAINT pAM040_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM040
	 ADD CONSTRAINT pAM040_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 18 :: SMALLINT, 21 :: SMALLINT, 53 :: SMALLINT, 69 :: SMALLINT, 95 :: SMALLINT, 96 :: SMALLINT, 110 :: SMALLINT, 996 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAM040 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAM040
	 ADD CONSTRAINT pAM040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAM040
	 ADD CONSTRAINT pAM040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAM060(
	 id serial NOT NULL,
	 PPO smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAM060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAM060_geom ON mgcp.pAM060 USING gist (geom);

ALTER TABLE mgcp.pAM060
	 ADD CONSTRAINT pAM060_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM060
	 ADD CONSTRAINT pAM060_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 3 :: SMALLINT, 16 :: SMALLINT, 38 :: SMALLINT, 46 :: SMALLINT, 90 :: SMALLINT, 120 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAM060 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAM060
	 ADD CONSTRAINT pAM060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAM060
	 ADD CONSTRAINT pAM060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAM070(
	 id serial NOT NULL,
	 VOI varchar(255),
	 SSC smallint NOT NULL,
	 PPO smallint NOT NULL,
	 FUN smallint NOT NULL,
	 LOC smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAM070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAM070_geom ON mgcp.pAM070 USING gist (geom);

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_SSC_fk FOREIGN KEY (SSC)
	 REFERENCES domains.SSC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_SSC_check 
	 CHECK (SSC = ANY(ARRAY[0 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 12 :: SMALLINT, 17 :: SMALLINT, 59 :: SMALLINT, 65 :: SMALLINT, 88 :: SMALLINT, 109 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAM070 ALTER COLUMN SSC SET DEFAULT 9999;

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 16 :: SMALLINT, 45 :: SMALLINT, 46 :: SMALLINT, 75 :: SMALLINT, 101 :: SMALLINT, 122 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAM070 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM070 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAM070 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAM070
	 ADD CONSTRAINT pAM070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAM010(
	 id serial NOT NULL,
	 NAM varchar(255),
	 PPO smallint NOT NULL,
	 NFI varchar(255),
	 LOC smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAM010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAM010_geom ON mgcp.aAM010 USING gist (geom);

ALTER TABLE mgcp.aAM010
	 ADD CONSTRAINT aAM010_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM010
	 ADD CONSTRAINT aAM010_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 3 :: SMALLINT, 16 :: SMALLINT, 18 :: SMALLINT, 21 :: SMALLINT, 38 :: SMALLINT, 45 :: SMALLINT, 46 :: SMALLINT, 53 :: SMALLINT, 75 :: SMALLINT, 79 :: SMALLINT, 80 :: SMALLINT, 83 :: SMALLINT, 84 :: SMALLINT, 90 :: SMALLINT, 95 :: SMALLINT, 96 :: SMALLINT, 101 :: SMALLINT, 110 :: SMALLINT, 120 :: SMALLINT, 122 :: SMALLINT, 124 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAM010 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAM010
	 ADD CONSTRAINT aAM010_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM010
	 ADD CONSTRAINT aAM010_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAM010 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM010
	 ADD CONSTRAINT aAM010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM010
	 ADD CONSTRAINT aAM010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAM040(
	 id serial NOT NULL,
	 VOI varchar(255),
	 PPO smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAM040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAM040_geom ON mgcp.aAM040 USING gist (geom);

ALTER TABLE mgcp.aAM040
	 ADD CONSTRAINT aAM040_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM040
	 ADD CONSTRAINT aAM040_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 18 :: SMALLINT, 21 :: SMALLINT, 53 :: SMALLINT, 69 :: SMALLINT, 95 :: SMALLINT, 96 :: SMALLINT, 110 :: SMALLINT, 996 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAM040 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAM040
	 ADD CONSTRAINT aAM040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM040
	 ADD CONSTRAINT aAM040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAM060(
	 id serial NOT NULL,
	 PPO smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAM060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAM060_geom ON mgcp.aAM060 USING gist (geom);

ALTER TABLE mgcp.aAM060
	 ADD CONSTRAINT aAM060_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM060
	 ADD CONSTRAINT aAM060_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 3 :: SMALLINT, 16 :: SMALLINT, 38 :: SMALLINT, 46 :: SMALLINT, 90 :: SMALLINT, 120 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAM060 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAM060
	 ADD CONSTRAINT aAM060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM060
	 ADD CONSTRAINT aAM060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAM070(
	 id serial NOT NULL,
	 VOI varchar(255),
	 SSC smallint NOT NULL,
	 PPO smallint NOT NULL,
	 LOC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAM070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAM070_geom ON mgcp.aAM070 USING gist (geom);

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_SSC_fk FOREIGN KEY (SSC)
	 REFERENCES domains.SSC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_SSC_check 
	 CHECK (SSC = ANY(ARRAY[0 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 12 :: SMALLINT, 17 :: SMALLINT, 59 :: SMALLINT, 65 :: SMALLINT, 88 :: SMALLINT, 109 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAM070 ALTER COLUMN SSC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 16 :: SMALLINT, 45 :: SMALLINT, 46 :: SMALLINT, 75 :: SMALLINT, 101 :: SMALLINT, 122 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAM070 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAM070 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM070 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM070
	 ADD CONSTRAINT aAM070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK090(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK090_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK090_geom ON mgcp.aAK090 USING gist (geom);

ALTER TABLE mgcp.aAK090
	 ADD CONSTRAINT aAK090_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK090 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK090
	 ADD CONSTRAINT aAK090_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK090 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK100(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK100_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK100_geom ON mgcp.aAK100 USING gist (geom);

ALTER TABLE mgcp.aAK100
	 ADD CONSTRAINT aAK100_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK100 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK100
	 ADD CONSTRAINT aAK100_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK100 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL210(
	 id serial NOT NULL,
	 SUC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL210_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL210_geom ON mgcp.pAL210 USING gist (geom);

ALTER TABLE mgcp.pAL210
	 ADD CONSTRAINT pAL210_SUC_fk FOREIGN KEY (SUC)
	 REFERENCES domains.SUC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL210 ALTER COLUMN SUC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL210
	 ADD CONSTRAINT pAL210_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL210 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL210
	 ADD CONSTRAINT pAL210_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL210 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAL210(
	 id serial NOT NULL,
	 WID real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAL210_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAL210_geom ON mgcp.lAL210 USING gist (geom);

ALTER TABLE mgcp.lAL210
	 ADD CONSTRAINT lAL210_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL210 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAL210
	 ADD CONSTRAINT lAL210_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL210 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBB041(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 MCC smallint NOT NULL,
	 WID real,
	 WLE smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBB041_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBB041_geom ON mgcp.lBB041 USING gist (geom);

ALTER TABLE mgcp.lBB041
	 ADD CONSTRAINT lBB041_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB041 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBB041
	 ADD CONSTRAINT lBB041_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB041 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB041
	 ADD CONSTRAINT lBB041_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB041 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.lBB041
	 ADD CONSTRAINT lBB041_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB041 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB041
	 ADD CONSTRAINT lBB041_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB041 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBB043(
	 id serial NOT NULL,
	 WID real,
	 WLE smallint NOT NULL,
	 MCC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBB043_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBB043_geom ON mgcp.lBB043 USING gist (geom);

ALTER TABLE mgcp.lBB043
	 ADD CONSTRAINT lBB043_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB043 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.lBB043
	 ADD CONSTRAINT lBB043_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB043 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB043
	 ADD CONSTRAINT lBB043_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB043 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBB043
	 ADD CONSTRAINT lBB043_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB043 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB043
	 ADD CONSTRAINT lBB043_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB043 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBB140(
	 id serial NOT NULL,
	 MCC smallint NOT NULL,
	 WID real,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBB140_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBB140_geom ON mgcp.lBB140 USING gist (geom);

ALTER TABLE mgcp.lBB140
	 ADD CONSTRAINT lBB140_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB140 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB140
	 ADD CONSTRAINT lBB140_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB140 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBB140
	 ADD CONSTRAINT lBB140_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB140 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB140
	 ADD CONSTRAINT lBB140_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB140 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBB230(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 MCC smallint NOT NULL,
	 WID real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBB230_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBB230_geom ON mgcp.lBB230 USING gist (geom);

ALTER TABLE mgcp.lBB230
	 ADD CONSTRAINT lBB230_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB230 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBB230
	 ADD CONSTRAINT lBB230_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB230 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB230
	 ADD CONSTRAINT lBB230_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB230 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB230
	 ADD CONSTRAINT lBB230_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB230 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBB041(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 MCC smallint NOT NULL,
	 WLE smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBB041_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBB041_geom ON mgcp.aBB041 USING gist (geom);

ALTER TABLE mgcp.aBB041
	 ADD CONSTRAINT aBB041_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB041 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBB041
	 ADD CONSTRAINT aBB041_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB041 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB041
	 ADD CONSTRAINT aBB041_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB041 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.aBB041
	 ADD CONSTRAINT aBB041_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB041 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB041
	 ADD CONSTRAINT aBB041_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB041 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBB043(
	 id serial NOT NULL,
	 WLE smallint NOT NULL,
	 MCC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBB043_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBB043_geom ON mgcp.aBB043 USING gist (geom);

ALTER TABLE mgcp.aBB043
	 ADD CONSTRAINT aBB043_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB043 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.aBB043
	 ADD CONSTRAINT aBB043_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB043 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB043
	 ADD CONSTRAINT aBB043_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB043 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBB043
	 ADD CONSTRAINT aBB043_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB043 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB043
	 ADD CONSTRAINT aBB043_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB043 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBB140(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 MCC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBB140_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBB140_geom ON mgcp.aBB140 USING gist (geom);

ALTER TABLE mgcp.aBB140
	 ADD CONSTRAINT aBB140_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB140 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBB140
	 ADD CONSTRAINT aBB140_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB140 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB140
	 ADD CONSTRAINT aBB140_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB140 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB140
	 ADD CONSTRAINT aBB140_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB140 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pGB050(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pGB050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pGB050_geom ON mgcp.pGB050 USING gist (geom);

ALTER TABLE mgcp.pGB050
	 ADD CONSTRAINT pGB050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pGB050
	 ADD CONSTRAINT pGB050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lGB050(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lGB050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lGB050_geom ON mgcp.lGB050 USING gist (geom);

ALTER TABLE mgcp.lGB050
	 ADD CONSTRAINT lGB050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lGB050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lGB050
	 ADD CONSTRAINT lGB050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lGB050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aGB015(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 RST smallint NOT NULL,
	 SFS smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aGB015_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aGB015_geom ON mgcp.aGB015 USING gist (geom);

ALTER TABLE mgcp.aGB015
	 ADD CONSTRAINT aGB015_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB015 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aGB015
	 ADD CONSTRAINT aGB015_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB015
	 ADD CONSTRAINT aGB015_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 5 :: SMALLINT, 6 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aGB015 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.aGB015
	 ADD CONSTRAINT aGB015_SFS_fk FOREIGN KEY (SFS)
	 REFERENCES domains.SFS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB015 ALTER COLUMN SFS SET DEFAULT 9999;

ALTER TABLE mgcp.aGB015
	 ADD CONSTRAINT aGB015_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB015 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aGB015
	 ADD CONSTRAINT aGB015_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB015 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aGB045(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 RST smallint NOT NULL,
	 SFS smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aGB045_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aGB045_geom ON mgcp.aGB045 USING gist (geom);

ALTER TABLE mgcp.aGB045
	 ADD CONSTRAINT aGB045_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB045 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aGB045
	 ADD CONSTRAINT aGB045_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB045
	 ADD CONSTRAINT aGB045_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 5 :: SMALLINT, 6 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aGB045 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.aGB045
	 ADD CONSTRAINT aGB045_SFS_fk FOREIGN KEY (SFS)
	 REFERENCES domains.SFS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB045 ALTER COLUMN SFS SET DEFAULT 9999;

ALTER TABLE mgcp.aGB045
	 ADD CONSTRAINT aGB045_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB045 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aGB045
	 ADD CONSTRAINT aGB045_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB045 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aGB055(
	 id serial NOT NULL,
	 RST smallint NOT NULL,
	 NAM varchar(255),
	 SFS smallint NOT NULL,
	 PRM smallint NOT NULL,
	 FUN smallint NOT NULL,
	 AOO real,
	 LEN real,
	 ZVA real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aGB055_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aGB055_geom ON mgcp.aGB055 USING gist (geom);

ALTER TABLE mgcp.aGB055
	 ADD CONSTRAINT aGB055_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB055
	 ADD CONSTRAINT aGB055_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 5 :: SMALLINT, 6 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aGB055 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.aGB055
	 ADD CONSTRAINT aGB055_SFS_fk FOREIGN KEY (SFS)
	 REFERENCES domains.SFS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB055 ALTER COLUMN SFS SET DEFAULT 9999;

ALTER TABLE mgcp.aGB055
	 ADD CONSTRAINT aGB055_PRM_fk FOREIGN KEY (PRM)
	 REFERENCES domains.PRM (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB055 ALTER COLUMN PRM SET DEFAULT 9999;

ALTER TABLE mgcp.aGB055
	 ADD CONSTRAINT aGB055_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB055 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aGB055
	 ADD CONSTRAINT aGB055_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB055 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aGB055
	 ADD CONSTRAINT aGB055_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB055 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aGB075(
	 id serial NOT NULL,
	 SFS smallint NOT NULL,
	 FUN smallint NOT NULL,
	 RST smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aGB075_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aGB075_geom ON mgcp.aGB075 USING gist (geom);

ALTER TABLE mgcp.aGB075
	 ADD CONSTRAINT aGB075_SFS_fk FOREIGN KEY (SFS)
	 REFERENCES domains.SFS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB075 ALTER COLUMN SFS SET DEFAULT 9999;

ALTER TABLE mgcp.aGB075
	 ADD CONSTRAINT aGB075_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB075 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aGB075
	 ADD CONSTRAINT aGB075_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB075
	 ADD CONSTRAINT aGB075_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 5 :: SMALLINT, 6 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aGB075 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.aGB075
	 ADD CONSTRAINT aGB075_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB075 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aGB075
	 ADD CONSTRAINT aGB075_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB075 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL200(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL200_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL200_geom ON mgcp.aAL200 USING gist (geom);

ALTER TABLE mgcp.aAL200
	 ADD CONSTRAINT aAL200_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL200 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL200
	 ADD CONSTRAINT aAL200_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL200 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAN060(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAN060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAN060_geom ON mgcp.aAN060 USING gist (geom);

ALTER TABLE mgcp.aAN060
	 ADD CONSTRAINT aAN060_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAN060 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAN060
	 ADD CONSTRAINT aAN060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAN060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAN060
	 ADD CONSTRAINT aAN060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAN060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAN075(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAN075_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAN075_geom ON mgcp.pAN075 USING gist (geom);

ALTER TABLE mgcp.pAN075
	 ADD CONSTRAINT pAN075_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAN075 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAN075
	 ADD CONSTRAINT pAN075_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAN075 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAN075
	 ADD CONSTRAINT pAN075_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAN075 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAP030(
	 id serial NOT NULL,
	 HCT smallint NOT NULL,
	 NAM varchar(255),
	 WTC smallint NOT NULL,
	 WD1 real,
	 SEP smallint NOT NULL,
	 RST smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 LOC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 CON smallint NOT NULL,
	 MES smallint NOT NULL,
	 LTN integer,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAP030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAP030_geom ON mgcp.lAP030 USING gist (geom);

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_HCT_fk FOREIGN KEY (HCT)
	 REFERENCES domains.HCT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030 ALTER COLUMN HCT SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_WTC_fk FOREIGN KEY (WTC)
	 REFERENCES domains.WTC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030 ALTER COLUMN WTC SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_SEP_fk FOREIGN KEY (SEP)
	 REFERENCES domains.SEP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030 ALTER COLUMN SEP SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 8 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAP030 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 17 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAP030 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_CON_fk FOREIGN KEY (CON)
	 REFERENCES domains.CON (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030 ALTER COLUMN CON SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_MES_fk FOREIGN KEY (MES)
	 REFERENCES domains.MES (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030 ALTER COLUMN MES SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAP030
	 ADD CONSTRAINT lAP030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAP030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAA040(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 VOI varchar(255),
	 NFN varchar(255),
	 FUN smallint NOT NULL,
	 PPO smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAA040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAA040_geom ON mgcp.pAA040 USING gist (geom);

ALTER TABLE mgcp.pAA040
	 ADD CONSTRAINT pAA040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAA040
	 ADD CONSTRAINT pAA040_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA040
	 ADD CONSTRAINT pAA040_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 45 :: SMALLINT, 75 :: SMALLINT, 122 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAA040 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAA040
	 ADD CONSTRAINT pAA040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAA040
	 ADD CONSTRAINT pAA040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAC020(
	 id serial NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAC020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAC020_geom ON mgcp.pAC020 USING gist (geom);

ALTER TABLE mgcp.pAC020
	 ADD CONSTRAINT pAC020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAC020
	 ADD CONSTRAINT pAC020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAC020
	 ADD CONSTRAINT pAC020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBH120(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBH120_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBH120_geom ON mgcp.pBH120 USING gist (geom);

ALTER TABLE mgcp.pBH120
	 ADD CONSTRAINT pBH120_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH120 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBH120
	 ADD CONSTRAINT pBH120_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH120 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBH145(
	 id serial NOT NULL,
	 WST smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBH145_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBH145_geom ON mgcp.pBH145 USING gist (geom);

ALTER TABLE mgcp.pBH145
	 ADD CONSTRAINT pBH145_WST_fk FOREIGN KEY (WST)
	 REFERENCES domains.WST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH145
	 ADD CONSTRAINT pBH145_WST_check 
	 CHECK (WST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pBH145 ALTER COLUMN WST SET DEFAULT 9999;

ALTER TABLE mgcp.pBH145
	 ADD CONSTRAINT pBH145_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH145 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBH145
	 ADD CONSTRAINT pBH145_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH145 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBH180(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBH180_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBH180_geom ON mgcp.pBH180 USING gist (geom);

ALTER TABLE mgcp.pBH180
	 ADD CONSTRAINT pBH180_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH180 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBH180
	 ADD CONSTRAINT pBH180_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH180 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH120(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH120_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH120_geom ON mgcp.lBH120 USING gist (geom);

ALTER TABLE mgcp.lBH120
	 ADD CONSTRAINT lBH120_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH120 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH120
	 ADD CONSTRAINT lBH120_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH120 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH180(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH180_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH180_geom ON mgcp.lBH180 USING gist (geom);

ALTER TABLE mgcp.lBH180
	 ADD CONSTRAINT lBH180_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH180 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH180
	 ADD CONSTRAINT lBH180_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH180 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH120(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH120_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH120_geom ON mgcp.aBH120 USING gist (geom);

ALTER TABLE mgcp.aBH120
	 ADD CONSTRAINT aBH120_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH120 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH120
	 ADD CONSTRAINT aBH120_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH120 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBB240(
	 id serial NOT NULL,
	 WLE smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBB240_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBB240_geom ON mgcp.aBB240 USING gist (geom);

ALTER TABLE mgcp.aBB240
	 ADD CONSTRAINT aBB240_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB240 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.aBB240
	 ADD CONSTRAINT aBB240_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB240 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBB240
	 ADD CONSTRAINT aBB240_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB240 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB240
	 ADD CONSTRAINT aBB240_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB240 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAN010(
	 id serial NOT NULL,
	 NFI varchar(255),
	 RTA smallint NOT NULL,
	 RRC smallint NOT NULL,
	 RRA smallint NOT NULL,
	 RIR smallint NOT NULL,
	 NFN varchar(255),
	 RWC smallint NOT NULL,
	 LTN integer,
	 LOC smallint NOT NULL,
	 GAW real,
	 FUN smallint NOT NULL,
	 RGC smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAN010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAN010_geom ON mgcp.lAN010 USING gist (geom);

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_RTA_fk FOREIGN KEY (RTA)
	 REFERENCES domains.RTA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN RTA SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_RRC_fk FOREIGN KEY (RRC)
	 REFERENCES domains.RRC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN RRC SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_RRA_fk FOREIGN KEY (RRA)
	 REFERENCES domains.RRA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN RRA SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_RIR_fk FOREIGN KEY (RIR)
	 REFERENCES domains.RIR (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN RIR SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_RWC_fk FOREIGN KEY (RWC)
	 REFERENCES domains.RWC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN RWC SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAN010 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_RGC_fk FOREIGN KEY (RGC)
	 REFERENCES domains.RGC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN RGC SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAN010
	 ADD CONSTRAINT lAN010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAN050(
	 id serial NOT NULL,
	 RSA smallint NOT NULL,
	 RRA smallint NOT NULL,
	 RGC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 GAW real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAN050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAN050_geom ON mgcp.lAN050 USING gist (geom);

ALTER TABLE mgcp.lAN050
	 ADD CONSTRAINT lAN050_RSA_fk FOREIGN KEY (RSA)
	 REFERENCES domains.RSA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN050 ALTER COLUMN RSA SET DEFAULT 9999;

ALTER TABLE mgcp.lAN050
	 ADD CONSTRAINT lAN050_RRA_fk FOREIGN KEY (RRA)
	 REFERENCES domains.RRA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN050 ALTER COLUMN RRA SET DEFAULT 9999;

ALTER TABLE mgcp.lAN050
	 ADD CONSTRAINT lAN050_RGC_fk FOREIGN KEY (RGC)
	 REFERENCES domains.RGC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN050
	 ADD CONSTRAINT lAN050_RGC_check 
	 CHECK (RGC = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 3 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAN050 ALTER COLUMN RGC SET DEFAULT 9999;

ALTER TABLE mgcp.lAN050
	 ADD CONSTRAINT lAN050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAN050
	 ADD CONSTRAINT lAN050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAN050
	 ADD CONSTRAINT lAN050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAN050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAQ116(
	 id serial NOT NULL,
	 PPO smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAQ116_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAQ116_geom ON mgcp.pAQ116 USING gist (geom);

ALTER TABLE mgcp.pAQ116
	 ADD CONSTRAINT pAQ116_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ116
	 ADD CONSTRAINT pAQ116_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 16 :: SMALLINT, 45 :: SMALLINT, 46 :: SMALLINT, 75 :: SMALLINT, 101 :: SMALLINT, 122 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAQ116 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ116
	 ADD CONSTRAINT pAQ116_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ116 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ116
	 ADD CONSTRAINT pAQ116_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ116 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ116
	 ADD CONSTRAINT pAQ116_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ116 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAA052(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAA052_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAA052_geom ON mgcp.aAA052 USING gist (geom);

ALTER TABLE mgcp.aAA052
	 ADD CONSTRAINT aAA052_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA052 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAA052
	 ADD CONSTRAINT aAA052_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA052 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAQ116(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 PPO smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAQ116_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAQ116_geom ON mgcp.aAQ116 USING gist (geom);

ALTER TABLE mgcp.aAQ116
	 ADD CONSTRAINT aAQ116_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ116 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ116
	 ADD CONSTRAINT aAQ116_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ116
	 ADD CONSTRAINT aAQ116_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 16 :: SMALLINT, 45 :: SMALLINT, 46 :: SMALLINT, 75 :: SMALLINT, 101 :: SMALLINT, 122 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAQ116 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ116
	 ADD CONSTRAINT aAQ116_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ116 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ116
	 ADD CONSTRAINT aAQ116_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ116 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAC000(
	 id serial NOT NULL,
	 NFI varchar(255),
	 VOI varchar(255),
	 PPO smallint NOT NULL,
	 NFN varchar(255),
	 HGT real,
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAC000_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAC000_geom ON mgcp.pAC000 USING gist (geom);

ALTER TABLE mgcp.pAC000
	 ADD CONSTRAINT pAC000_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC000
	 ADD CONSTRAINT pAC000_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 13 :: SMALLINT, 15 :: SMALLINT, 16 :: SMALLINT, 18 :: SMALLINT, 21 :: SMALLINT, 23 :: SMALLINT, 26 :: SMALLINT, 38 :: SMALLINT, 39 :: SMALLINT, 41 :: SMALLINT, 45 :: SMALLINT, 46 :: SMALLINT, 47 :: SMALLINT, 48 :: SMALLINT, 57 :: SMALLINT, 58 :: SMALLINT, 59 :: SMALLINT, 63 :: SMALLINT, 69 :: SMALLINT, 75 :: SMALLINT, 80 :: SMALLINT, 84 :: SMALLINT, 90 :: SMALLINT, 94 :: SMALLINT, 101 :: SMALLINT, 105 :: SMALLINT, 106 :: SMALLINT, 109 :: SMALLINT, 111 :: SMALLINT, 114 :: SMALLINT, 117 :: SMALLINT, 120 :: SMALLINT, 121 :: SMALLINT, 122 :: SMALLINT, 126 :: SMALLINT, 136 :: SMALLINT, 137 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAC000 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAC000
	 ADD CONSTRAINT pAC000_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC000 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAC000
	 ADD CONSTRAINT pAC000_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC000 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAC000
	 ADD CONSTRAINT pAC000_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAC000 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAC000(
	 id serial NOT NULL,
	 NAM varchar(255),
	 VOI varchar(255),
	 PPO smallint NOT NULL,
	 NFI varchar(255),
	 HGT real,
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAC000_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAC000_geom ON mgcp.aAC000 USING gist (geom);

ALTER TABLE mgcp.aAC000
	 ADD CONSTRAINT aAC000_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAC000
	 ADD CONSTRAINT aAC000_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 13 :: SMALLINT, 15 :: SMALLINT, 16 :: SMALLINT, 18 :: SMALLINT, 21 :: SMALLINT, 23 :: SMALLINT, 26 :: SMALLINT, 38 :: SMALLINT, 39 :: SMALLINT, 41 :: SMALLINT, 45 :: SMALLINT, 46 :: SMALLINT, 47 :: SMALLINT, 48 :: SMALLINT, 57 :: SMALLINT, 58 :: SMALLINT, 59 :: SMALLINT, 63 :: SMALLINT, 69 :: SMALLINT, 75 :: SMALLINT, 80 :: SMALLINT, 84 :: SMALLINT, 90 :: SMALLINT, 94 :: SMALLINT, 101 :: SMALLINT, 105 :: SMALLINT, 106 :: SMALLINT, 109 :: SMALLINT, 111 :: SMALLINT, 114 :: SMALLINT, 117 :: SMALLINT, 120 :: SMALLINT, 121 :: SMALLINT, 122 :: SMALLINT, 126 :: SMALLINT, 136 :: SMALLINT, 137 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAC000 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAC000
	 ADD CONSTRAINT aAC000_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAC000 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAC000
	 ADD CONSTRAINT aAC000_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAC000 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAC000
	 ADD CONSTRAINT aAC000_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAC000 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAD010(
	 id serial NOT NULL,
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 VOI varchar(255),
	 PPC smallint NOT NULL,
	 NFN varchar(255),
	 HGT real,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAD010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAD010_geom ON mgcp.pAD010 USING gist (geom);

ALTER TABLE mgcp.pAD010
	 ADD CONSTRAINT pAD010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAD010
	 ADD CONSTRAINT pAD010_PPC_fk FOREIGN KEY (PPC)
	 REFERENCES domains.PPC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD010 ALTER COLUMN PPC SET DEFAULT 9999;

ALTER TABLE mgcp.pAD010
	 ADD CONSTRAINT pAD010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAD010
	 ADD CONSTRAINT pAD010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAD020(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAD020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAD020_geom ON mgcp.pAD020 USING gist (geom);

ALTER TABLE mgcp.pAD020
	 ADD CONSTRAINT pAD020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAD020
	 ADD CONSTRAINT pAD020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAD020
	 ADD CONSTRAINT pAD020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAD050(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAD050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAD050_geom ON mgcp.pAD050 USING gist (geom);

ALTER TABLE mgcp.pAD050
	 ADD CONSTRAINT pAD050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAD050
	 ADD CONSTRAINT pAD050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAD050
	 ADD CONSTRAINT pAD050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAD050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAT030(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAT030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAT030_geom ON mgcp.lAT030 USING gist (geom);

ALTER TABLE mgcp.lAT030
	 ADD CONSTRAINT lAT030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAT030
	 ADD CONSTRAINT lAT030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAT030
	 ADD CONSTRAINT lAT030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAT041(
	 id serial NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 FUC smallint NOT NULL,
	 CAT smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAT041_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAT041_geom ON mgcp.lAT041 USING gist (geom);

ALTER TABLE mgcp.lAT041
	 ADD CONSTRAINT lAT041_FUC_fk FOREIGN KEY (FUC)
	 REFERENCES domains.FUC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT041
	 ADD CONSTRAINT lAT041_FUC_check 
	 CHECK (FUC = ANY(ARRAY[0 :: SMALLINT, 13 :: SMALLINT, 20 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAT041 ALTER COLUMN FUC SET DEFAULT 9999;

ALTER TABLE mgcp.lAT041
	 ADD CONSTRAINT lAT041_CAT_fk FOREIGN KEY (CAT)
	 REFERENCES domains.CAT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT041 ALTER COLUMN CAT SET DEFAULT 9999;

ALTER TABLE mgcp.lAT041
	 ADD CONSTRAINT lAT041_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT041 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAT041
	 ADD CONSTRAINT lAT041_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAT041 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAD010(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 VOI varchar(255),
	 NFN varchar(255),
	 FUN smallint NOT NULL,
	 PPC smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAD010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAD010_geom ON mgcp.aAD010 USING gist (geom);

ALTER TABLE mgcp.aAD010
	 ADD CONSTRAINT aAD010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAD010
	 ADD CONSTRAINT aAD010_PPC_fk FOREIGN KEY (PPC)
	 REFERENCES domains.PPC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD010 ALTER COLUMN PPC SET DEFAULT 9999;

ALTER TABLE mgcp.aAD010
	 ADD CONSTRAINT aAD010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAD010
	 ADD CONSTRAINT aAD010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAD050(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAD050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAD050_geom ON mgcp.aAD050 USING gist (geom);

ALTER TABLE mgcp.aAD050
	 ADD CONSTRAINT aAD050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAD050
	 ADD CONSTRAINT aAD050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAD050
	 ADD CONSTRAINT aAD050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAD050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL170(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL170_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL170_geom ON mgcp.aAL170 USING gist (geom);

ALTER TABLE mgcp.aAL170
	 ADD CONSTRAINT aAL170_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL170 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL170
	 ADD CONSTRAINT aAL170_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL170 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAQ113(
	 id serial NOT NULL,
	 RTA smallint NOT NULL,
	 PPO smallint NOT NULL,
	 FUN smallint NOT NULL,
	 LOC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAQ113_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAQ113_geom ON mgcp.lAQ113 USING gist (geom);

ALTER TABLE mgcp.lAQ113
	 ADD CONSTRAINT lAQ113_RTA_fk FOREIGN KEY (RTA)
	 REFERENCES domains.RTA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ113
	 ADD CONSTRAINT lAQ113_RTA_check 
	 CHECK (RTA = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 3 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAQ113 ALTER COLUMN RTA SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ113
	 ADD CONSTRAINT lAQ113_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ113
	 ADD CONSTRAINT lAQ113_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 16 :: SMALLINT, 45 :: SMALLINT, 46 :: SMALLINT, 75 :: SMALLINT, 101 :: SMALLINT, 122 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lAQ113 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ113
	 ADD CONSTRAINT lAQ113_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ113 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ113
	 ADD CONSTRAINT lAQ113_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ113 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ113
	 ADD CONSTRAINT lAQ113_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ113 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ113
	 ADD CONSTRAINT lAQ113_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ113 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAK190(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 MCC smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAK190_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAK190_geom ON mgcp.lAK190 USING gist (geom);

ALTER TABLE mgcp.lAK190
	 ADD CONSTRAINT lAK190_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK190 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAK190
	 ADD CONSTRAINT lAK190_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK190 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lAK190
	 ADD CONSTRAINT lAK190_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK190 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAK190
	 ADD CONSTRAINT lAK190_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK190 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBB190(
	 id serial NOT NULL,
	 FAC smallint NOT NULL,
	 WLE smallint NOT NULL,
	 WID real,
	 PWC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 MCC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBB190_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBB190_geom ON mgcp.lBB190 USING gist (geom);

ALTER TABLE mgcp.lBB190
	 ADD CONSTRAINT lBB190_FAC_fk FOREIGN KEY (FAC)
	 REFERENCES domains.FAC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB190 ALTER COLUMN FAC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB190
	 ADD CONSTRAINT lBB190_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB190 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.lBB190
	 ADD CONSTRAINT lBB190_PWC_fk FOREIGN KEY (PWC)
	 REFERENCES domains.PWC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB190 ALTER COLUMN PWC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB190
	 ADD CONSTRAINT lBB190_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB190 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBB190
	 ADD CONSTRAINT lBB190_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB190 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB190
	 ADD CONSTRAINT lBB190_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB190 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBB190
	 ADD CONSTRAINT lBB190_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBB190 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK190(
	 id serial NOT NULL,
	 MCC smallint NOT NULL,
	 NAM varchar(255),
	 NFN varchar(255),
	 FUN smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK190_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK190_geom ON mgcp.aAK190 USING gist (geom);

ALTER TABLE mgcp.aAK190
	 ADD CONSTRAINT aAK190_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK190 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK190
	 ADD CONSTRAINT aAK190_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK190 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAK190
	 ADD CONSTRAINT aAK190_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK190 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK190
	 ADD CONSTRAINT aAK190_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK190 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBB190(
	 id serial NOT NULL,
	 FAC smallint NOT NULL,
	 WLE smallint NOT NULL,
	 PWC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 MCC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBB190_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBB190_geom ON mgcp.aBB190 USING gist (geom);

ALTER TABLE mgcp.aBB190
	 ADD CONSTRAINT aBB190_FAC_fk FOREIGN KEY (FAC)
	 REFERENCES domains.FAC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB190 ALTER COLUMN FAC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB190
	 ADD CONSTRAINT aBB190_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB190 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.aBB190
	 ADD CONSTRAINT aBB190_PWC_fk FOREIGN KEY (PWC)
	 REFERENCES domains.PWC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB190 ALTER COLUMN PWC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB190
	 ADD CONSTRAINT aBB190_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB190 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBB190
	 ADD CONSTRAINT aBB190_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB190 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB190
	 ADD CONSTRAINT aBB190_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB190 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB190
	 ADD CONSTRAINT aBB190_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB190 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aDB180(
	 id serial NOT NULL,
	 NAM varchar(255),
	 VGT smallint NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aDB180_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aDB180_geom ON mgcp.aDB180 USING gist (geom);

ALTER TABLE mgcp.aDB180
	 ADD CONSTRAINT aDB180_VGT_fk FOREIGN KEY (VGT)
	 REFERENCES domains.VGT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB180 ALTER COLUMN VGT SET DEFAULT 9999;

ALTER TABLE mgcp.aDB180
	 ADD CONSTRAINT aDB180_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB180 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB180
	 ADD CONSTRAINT aDB180_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB180 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAF010(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAF010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAF010_geom ON mgcp.pAF010 USING gist (geom);

ALTER TABLE mgcp.pAF010
	 ADD CONSTRAINT pAF010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAF010
	 ADD CONSTRAINT pAF010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAF010
	 ADD CONSTRAINT pAF010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAF040(
	 id serial NOT NULL,
	 CRA smallint NOT NULL,
	 VOI varchar(255),
	 HGT real,
	 CRM smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAF040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAF040_geom ON mgcp.pAF040 USING gist (geom);

ALTER TABLE mgcp.pAF040
	 ADD CONSTRAINT pAF040_CRA_fk FOREIGN KEY (CRA)
	 REFERENCES domains.CRA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF040 ALTER COLUMN CRA SET DEFAULT 9999;

ALTER TABLE mgcp.pAF040
	 ADD CONSTRAINT pAF040_CRM_fk FOREIGN KEY (CRM)
	 REFERENCES domains.CRM (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF040 ALTER COLUMN CRM SET DEFAULT 9999;

ALTER TABLE mgcp.pAF040
	 ADD CONSTRAINT pAF040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAF040
	 ADD CONSTRAINT pAF040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAF040
	 ADD CONSTRAINT pAF040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAF070(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAF070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAF070_geom ON mgcp.pAF070 USING gist (geom);

ALTER TABLE mgcp.pAF070
	 ADD CONSTRAINT pAF070_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF070 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAF070
	 ADD CONSTRAINT pAF070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAF070
	 ADD CONSTRAINT pAF070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAF070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAJ050(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAJ050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAJ050_geom ON mgcp.pAJ050 USING gist (geom);

ALTER TABLE mgcp.pAJ050
	 ADD CONSTRAINT pAJ050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAJ050
	 ADD CONSTRAINT pAJ050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAJ050
	 ADD CONSTRAINT pAJ050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEC020(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEC020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEC020_geom ON mgcp.aEC020 USING gist (geom);

ALTER TABLE mgcp.aEC020
	 ADD CONSTRAINT aEC020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEC020
	 ADD CONSTRAINT aEC020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL140(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL140_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL140_geom ON mgcp.aAL140 USING gist (geom);

ALTER TABLE mgcp.aAL140
	 ADD CONSTRAINT aAL140_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL140 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL140
	 ADD CONSTRAINT aAL140_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL140 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pDB029(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pDB029_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pDB029_geom ON mgcp.pDB029 USING gist (geom);

ALTER TABLE mgcp.pDB029
	 ADD CONSTRAINT pDB029_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB029 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pDB029
	 ADD CONSTRAINT pDB029_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB029 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pDB150(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pDB150_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pDB150_geom ON mgcp.pDB150 USING gist (geom);

ALTER TABLE mgcp.pDB150
	 ADD CONSTRAINT pDB150_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB150 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pDB150
	 ADD CONSTRAINT pDB150_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB150 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL012(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL012_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL012_geom ON mgcp.pAL012 USING gist (geom);

ALTER TABLE mgcp.pAL012
	 ADD CONSTRAINT pAL012_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL012 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL012
	 ADD CONSTRAINT pAL012_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL012 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL105(
	 id serial NOT NULL,
	 FUC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL105_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL105_geom ON mgcp.pAL105 USING gist (geom);

ALTER TABLE mgcp.pAL105
	 ADD CONSTRAINT pAL105_FUC_fk FOREIGN KEY (FUC)
	 REFERENCES domains.FUC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL105
	 ADD CONSTRAINT pAL105_FUC_check 
	 CHECK (FUC = ANY(ARRAY[0 :: SMALLINT, 4 :: SMALLINT, 8 :: SMALLINT, 19 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAL105 ALTER COLUMN FUC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL105
	 ADD CONSTRAINT pAL105_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL105 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAL105
	 ADD CONSTRAINT pAL105_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL105 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL105
	 ADD CONSTRAINT pAL105_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL105 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL099(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL099_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL099_geom ON mgcp.pAL099 USING gist (geom);

ALTER TABLE mgcp.pAL099
	 ADD CONSTRAINT pAL099_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL099 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL099
	 ADD CONSTRAINT pAL099_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL099 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAJ110(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAJ110_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAJ110_geom ON mgcp.pAJ110 USING gist (geom);

ALTER TABLE mgcp.pAJ110
	 ADD CONSTRAINT pAJ110_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ110 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAJ110
	 ADD CONSTRAINT pAJ110_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ110 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAJ110
	 ADD CONSTRAINT pAJ110_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAJ110 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL019(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL019_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL019_geom ON mgcp.pAL019 USING gist (geom);

ALTER TABLE mgcp.pAL019
	 ADD CONSTRAINT pAL019_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL019 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL019
	 ADD CONSTRAINT pAL019_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL019 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL012(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL012_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL012_geom ON mgcp.aAL012 USING gist (geom);

ALTER TABLE mgcp.aAL012
	 ADD CONSTRAINT aAL012_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL012 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL012
	 ADD CONSTRAINT aAL012_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL012 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL105(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 FUC smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL105_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL105_geom ON mgcp.aAL105 USING gist (geom);

ALTER TABLE mgcp.aAL105
	 ADD CONSTRAINT aAL105_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL105 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAL105
	 ADD CONSTRAINT aAL105_FUC_fk FOREIGN KEY (FUC)
	 REFERENCES domains.FUC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL105
	 ADD CONSTRAINT aAL105_FUC_check 
	 CHECK (FUC = ANY(ARRAY[0 :: SMALLINT, 4 :: SMALLINT, 8 :: SMALLINT, 19 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAL105 ALTER COLUMN FUC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL105
	 ADD CONSTRAINT aAL105_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL105 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL105
	 ADD CONSTRAINT aAL105_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL105 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL010(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 FFN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL010_geom ON mgcp.aAL010 USING gist (geom);

ALTER TABLE mgcp.aAL010
	 ADD CONSTRAINT aAL010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAL010
	 ADD CONSTRAINT aAL010_FFN_fk FOREIGN KEY (FFN)
	 REFERENCES domains.FFN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL010
	 ADD CONSTRAINT aAL010_FFN_check 
	 CHECK (FFN = ANY(ARRAY[0 :: SMALLINT, 2 :: SMALLINT, 99 :: SMALLINT, 350 :: SMALLINT, 440 :: SMALLINT, 480 :: SMALLINT, 550 :: SMALLINT, 563 :: SMALLINT, 610 :: SMALLINT, 810 :: SMALLINT, 811 :: SMALLINT, 825 :: SMALLINT, 835 :: SMALLINT, 843 :: SMALLINT, 850 :: SMALLINT, 860 :: SMALLINT, 907 :: SMALLINT, 912 :: SMALLINT, 930 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAL010 ALTER COLUMN FFN SET DEFAULT 9999;

ALTER TABLE mgcp.aAL010
	 ADD CONSTRAINT aAL010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL010
	 ADD CONSTRAINT aAL010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL019(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL019_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL019_geom ON mgcp.aAL019 USING gist (geom);

ALTER TABLE mgcp.aAL019
	 ADD CONSTRAINT aAL019_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL019 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL019
	 ADD CONSTRAINT aAL019_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL019 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAJ110(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAJ110_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAJ110_geom ON mgcp.aAJ110 USING gist (geom);

ALTER TABLE mgcp.aAJ110
	 ADD CONSTRAINT aAJ110_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAJ110 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAJ110
	 ADD CONSTRAINT aAJ110_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAJ110 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAJ110
	 ADD CONSTRAINT aAJ110_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAJ110 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBI041(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 GNC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBI041_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBI041_geom ON mgcp.pBI041 USING gist (geom);

ALTER TABLE mgcp.pBI041
	 ADD CONSTRAINT pBI041_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI041 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pBI041
	 ADD CONSTRAINT pBI041_GNC_fk FOREIGN KEY (GNC)
	 REFERENCES domains.GNC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI041 ALTER COLUMN GNC SET DEFAULT 9999;

ALTER TABLE mgcp.pBI041
	 ADD CONSTRAINT pBI041_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI041 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBI041
	 ADD CONSTRAINT pBI041_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI041 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBI050(
	 id serial NOT NULL,
	 VOI varchar(255),
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBI050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBI050_geom ON mgcp.pBI050 USING gist (geom);

ALTER TABLE mgcp.pBI050
	 ADD CONSTRAINT pBI050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBI050
	 ADD CONSTRAINT pBI050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH110(
	 id serial NOT NULL,
	 LOC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH110_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH110_geom ON mgcp.lBH110 USING gist (geom);

ALTER TABLE mgcp.lBH110
	 ADD CONSTRAINT lBH110_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH110
	 ADD CONSTRAINT lBH110_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBH110 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH110
	 ADD CONSTRAINT lBH110_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH110 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH110
	 ADD CONSTRAINT lBH110_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH110 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBI041(
	 id serial NOT NULL,
	 GNC smallint NOT NULL,
	 WID real,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBI041_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBI041_geom ON mgcp.lBI041 USING gist (geom);

ALTER TABLE mgcp.lBI041
	 ADD CONSTRAINT lBI041_GNC_fk FOREIGN KEY (GNC)
	 REFERENCES domains.GNC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI041 ALTER COLUMN GNC SET DEFAULT 9999;

ALTER TABLE mgcp.lBI041
	 ADD CONSTRAINT lBI041_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI041 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBI041
	 ADD CONSTRAINT lBI041_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI041 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBI041
	 ADD CONSTRAINT lBI041_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI041 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAQ110(
	 id serial NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAQ110_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAQ110_geom ON mgcp.pAQ110 USING gist (geom);

ALTER TABLE mgcp.pAQ110
	 ADD CONSTRAINT pAQ110_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ110 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ110
	 ADD CONSTRAINT pAQ110_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ110 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pGA034(
	 id serial NOT NULL,
	 NST smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pGA034_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pGA034_geom ON mgcp.pGA034 USING gist (geom);

ALTER TABLE mgcp.pGA034
	 ADD CONSTRAINT pGA034_NST_fk FOREIGN KEY (NST)
	 REFERENCES domains.NST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGA034
	 ADD CONSTRAINT pGA034_NST_check 
	 CHECK (NST = ANY(ARRAY[0 :: SMALLINT, 17 :: SMALLINT, 18 :: SMALLINT, 20 :: SMALLINT, 21 :: SMALLINT, 22 :: SMALLINT, 23 :: SMALLINT, 24 :: SMALLINT, 25 :: SMALLINT, 26 :: SMALLINT, 27 :: SMALLINT, 30 :: SMALLINT, 33 :: SMALLINT, 35 :: SMALLINT, 37 :: SMALLINT, 38 :: SMALLINT, 58 :: SMALLINT, 74 :: SMALLINT, 75 :: SMALLINT, 76 :: SMALLINT, 78 :: SMALLINT, 79 :: SMALLINT, 80 :: SMALLINT, 81 :: SMALLINT, 82 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pGA034 ALTER COLUMN NST SET DEFAULT 9999;

ALTER TABLE mgcp.pGA034
	 ADD CONSTRAINT pGA034_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGA034 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pGA034
	 ADD CONSTRAINT pGA034_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGA034 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pGB485(
	 id serial NOT NULL,
	 LFA smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pGB485_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pGB485_geom ON mgcp.pGB485 USING gist (geom);

ALTER TABLE mgcp.pGB485
	 ADD CONSTRAINT pGB485_LFA_fk FOREIGN KEY (LFA)
	 REFERENCES domains.LFA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB485 ALTER COLUMN LFA SET DEFAULT 9999;

ALTER TABLE mgcp.pGB485
	 ADD CONSTRAINT pGB485_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB485 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pGB485
	 ADD CONSTRAINT pGB485_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB485 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pGB040(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pGB040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pGB040_geom ON mgcp.pGB040 USING gist (geom);

ALTER TABLE mgcp.pGB040
	 ADD CONSTRAINT pGB040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pGB040
	 ADD CONSTRAINT pGB040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pGB040
	 ADD CONSTRAINT pGB040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pGB220(
	 id serial NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pGB220_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pGB220_geom ON mgcp.pGB220 USING gist (geom);

ALTER TABLE mgcp.pGB220
	 ADD CONSTRAINT pGB220_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB220 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pGB220
	 ADD CONSTRAINT pGB220_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB220 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pSU001(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pSU001_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pSU001_geom ON mgcp.pSU001 USING gist (geom);

ALTER TABLE mgcp.pSU001
	 ADD CONSTRAINT pSU001_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pSU001 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pSU001
	 ADD CONSTRAINT pSU001_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pSU001 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pSU001
	 ADD CONSTRAINT pSU001_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pSU001 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAH025(
	 id serial NOT NULL,
	 EET smallint NOT NULL,
	 WID real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAH025_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAH025_geom ON mgcp.lAH025 USING gist (geom);

ALTER TABLE mgcp.lAH025
	 ADD CONSTRAINT lAH025_EET_fk FOREIGN KEY (EET)
	 REFERENCES domains.EET (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAH025 ALTER COLUMN EET SET DEFAULT 9999;

ALTER TABLE mgcp.lAH025
	 ADD CONSTRAINT lAH025_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAH025 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAH025
	 ADD CONSTRAINT lAH025_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAH025 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aSU001(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aSU001_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aSU001_geom ON mgcp.aSU001 USING gist (geom);

ALTER TABLE mgcp.aSU001
	 ADD CONSTRAINT aSU001_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aSU001 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aSU001
	 ADD CONSTRAINT aSU001_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aSU001 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aSU001
	 ADD CONSTRAINT aSU001_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aSU001 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL025(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL025_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL025_geom ON mgcp.pAL025 USING gist (geom);

ALTER TABLE mgcp.pAL025
	 ADD CONSTRAINT pAL025_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL025 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL025
	 ADD CONSTRAINT pAL025_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL025 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBI030(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBI030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBI030_geom ON mgcp.pBI030 USING gist (geom);

ALTER TABLE mgcp.pBI030
	 ADD CONSTRAINT pBI030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pBI030
	 ADD CONSTRAINT pBI030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBI030
	 ADD CONSTRAINT pBI030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBI040(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBI040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBI040_geom ON mgcp.pBI040 USING gist (geom);

ALTER TABLE mgcp.pBI040
	 ADD CONSTRAINT pBI040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pBI040
	 ADD CONSTRAINT pBI040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBI040
	 ADD CONSTRAINT pBI040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBI030(
	 id serial NOT NULL,
	 NFI varchar(255),
	 WID real,
	 NFN varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBI030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBI030_geom ON mgcp.lBI030 USING gist (geom);

ALTER TABLE mgcp.lBI030
	 ADD CONSTRAINT lBI030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBI030
	 ADD CONSTRAINT lBI030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBI030
	 ADD CONSTRAINT lBI030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBI040(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 WID real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBI040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBI040_geom ON mgcp.lBI040 USING gist (geom);

ALTER TABLE mgcp.lBI040
	 ADD CONSTRAINT lBI040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBI040
	 ADD CONSTRAINT lBI040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBI040
	 ADD CONSTRAINT lBI040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBI030(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBI030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBI030_geom ON mgcp.aBI030 USING gist (geom);

ALTER TABLE mgcp.aBI030
	 ADD CONSTRAINT aBI030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBI030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBI030
	 ADD CONSTRAINT aBI030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBI030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBI030
	 ADD CONSTRAINT aBI030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBI030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAH070(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAH070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAH070_geom ON mgcp.pAH070 USING gist (geom);

ALTER TABLE mgcp.pAH070
	 ADD CONSTRAINT pAH070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAH070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAH070
	 ADD CONSTRAINT pAH070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAH070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAK160(
	 id serial NOT NULL,
	 NAM varchar(255),
	 VOI varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 CCT smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAK160_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAK160_geom ON mgcp.pAK160 USING gist (geom);

ALTER TABLE mgcp.pAK160
	 ADD CONSTRAINT pAK160_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK160 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAK160
	 ADD CONSTRAINT pAK160_CCT_fk FOREIGN KEY (CCT)
	 REFERENCES domains.CCT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK160 ALTER COLUMN CCT SET DEFAULT 9999;

ALTER TABLE mgcp.pAK160
	 ADD CONSTRAINT pAK160_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK160 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAK160
	 ADD CONSTRAINT pAK160_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK160 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL030(
	 id serial NOT NULL,
	 REL smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL030_geom ON mgcp.pAL030 USING gist (geom);

ALTER TABLE mgcp.pAL030
	 ADD CONSTRAINT pAL030_REL_fk FOREIGN KEY (REL)
	 REFERENCES domains.REL (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL030 ALTER COLUMN REL SET DEFAULT 9999;

ALTER TABLE mgcp.pAL030
	 ADD CONSTRAINT pAL030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL030
	 ADD CONSTRAINT pAL030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL130(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NAM varchar(255),
	 VOI varchar(255),
	 SSC smallint NOT NULL,
	 HGT real,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL130_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL130_geom ON mgcp.pAL130 USING gist (geom);

ALTER TABLE mgcp.pAL130
	 ADD CONSTRAINT pAL130_SSC_fk FOREIGN KEY (SSC)
	 REFERENCES domains.SSC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL130
	 ADD CONSTRAINT pAL130_SSC_check 
	 CHECK (SSC = ANY(ARRAY[0 :: SMALLINT, 12 :: SMALLINT, 77 :: SMALLINT, 97 :: SMALLINT, 109 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAL130 ALTER COLUMN SSC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL130
	 ADD CONSTRAINT pAL130_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL130 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL130
	 ADD CONSTRAINT pAL130_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL130 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAK040(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 SMC smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAK040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAK040_geom ON mgcp.pAK040 USING gist (geom);

ALTER TABLE mgcp.pAK040
	 ADD CONSTRAINT pAK040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAK040
	 ADD CONSTRAINT pAK040_SMC_fk FOREIGN KEY (SMC)
	 REFERENCES domains.SMC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK040
	 ADD CONSTRAINT pAK040_SMC_check 
	 CHECK (SMC = ANY(ARRAY[0 :: SMALLINT, 5 :: SMALLINT, 14 :: SMALLINT, 16 :: SMALLINT, 21 :: SMALLINT, 85 :: SMALLINT, 88 :: SMALLINT, 104 :: SMALLINT, 274 :: SMALLINT, 998 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAK040 ALTER COLUMN SMC SET DEFAULT 9999;

ALTER TABLE mgcp.pAK040
	 ADD CONSTRAINT pAK040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAK040
	 ADD CONSTRAINT pAK040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAK150(
	 id serial NOT NULL,
	 VOI varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 AOO real,
	 HGT real,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAK150_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAK150_geom ON mgcp.pAK150 USING gist (geom);

ALTER TABLE mgcp.pAK150
	 ADD CONSTRAINT pAK150_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK150 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAK150
	 ADD CONSTRAINT pAK150_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK150 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAK170(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAK170_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAK170_geom ON mgcp.pAK170 USING gist (geom);

ALTER TABLE mgcp.pAK170
	 ADD CONSTRAINT pAK170_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK170 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAK170
	 ADD CONSTRAINT pAK170_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAK170 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAK130(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 RAY smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAK130_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAK130_geom ON mgcp.lAK130 USING gist (geom);

ALTER TABLE mgcp.lAK130
	 ADD CONSTRAINT lAK130_RAY_fk FOREIGN KEY (RAY)
	 REFERENCES domains.RAY (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK130 ALTER COLUMN RAY SET DEFAULT 9999;

ALTER TABLE mgcp.lAK130
	 ADD CONSTRAINT lAK130_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK130 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAK130
	 ADD CONSTRAINT lAK130_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK130 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAK130
	 ADD CONSTRAINT lAK130_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK130 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAQ075(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAQ075_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAQ075_geom ON mgcp.lAQ075 USING gist (geom);

ALTER TABLE mgcp.lAQ075
	 ADD CONSTRAINT lAQ075_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ075 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ075
	 ADD CONSTRAINT lAQ075_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ075 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAK150(
	 id serial NOT NULL,
	 NAM varchar(255),
	 WID real,
	 VOI varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAK150_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAK150_geom ON mgcp.lAK150 USING gist (geom);

ALTER TABLE mgcp.lAK150
	 ADD CONSTRAINT lAK150_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK150 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAK150
	 ADD CONSTRAINT lAK150_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAK150 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAJ010(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAJ010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAJ010_geom ON mgcp.aAJ010 USING gist (geom);

ALTER TABLE mgcp.aAJ010
	 ADD CONSTRAINT aAJ010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAJ010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAJ010
	 ADD CONSTRAINT aAJ010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAJ010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK030(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK030_geom ON mgcp.aAK030 USING gist (geom);

ALTER TABLE mgcp.aAK030
	 ADD CONSTRAINT aAK030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAK030
	 ADD CONSTRAINT aAK030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK030
	 ADD CONSTRAINT aAK030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK060(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK060_geom ON mgcp.aAK060 USING gist (geom);

ALTER TABLE mgcp.aAK060
	 ADD CONSTRAINT aAK060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK060
	 ADD CONSTRAINT aAK060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK120(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK120_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK120_geom ON mgcp.aAK120 USING gist (geom);

ALTER TABLE mgcp.aAK120
	 ADD CONSTRAINT aAK120_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK120 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK120
	 ADD CONSTRAINT aAK120_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK120 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK160(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 VOI varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 HGT real,
	 CCT smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK160_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK160_geom ON mgcp.aAK160 USING gist (geom);

ALTER TABLE mgcp.aAK160
	 ADD CONSTRAINT aAK160_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK160 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAK160
	 ADD CONSTRAINT aAK160_CCT_fk FOREIGN KEY (CCT)
	 REFERENCES domains.CCT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK160 ALTER COLUMN CCT SET DEFAULT 9999;

ALTER TABLE mgcp.aAK160
	 ADD CONSTRAINT aAK160_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK160 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK160
	 ADD CONSTRAINT aAK160_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK160 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK180(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK180_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK180_geom ON mgcp.aAK180 USING gist (geom);

ALTER TABLE mgcp.aAK180
	 ADD CONSTRAINT aAK180_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK180 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK180
	 ADD CONSTRAINT aAK180_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK180 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL030(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 REL smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL030_geom ON mgcp.aAL030 USING gist (geom);

ALTER TABLE mgcp.aAL030
	 ADD CONSTRAINT aAL030_REL_fk FOREIGN KEY (REL)
	 REFERENCES domains.REL (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL030 ALTER COLUMN REL SET DEFAULT 9999;

ALTER TABLE mgcp.aAL030
	 ADD CONSTRAINT aAL030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL030
	 ADD CONSTRAINT aAL030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK040(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 SMC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK040_geom ON mgcp.aAK040 USING gist (geom);

ALTER TABLE mgcp.aAK040
	 ADD CONSTRAINT aAK040_SMC_fk FOREIGN KEY (SMC)
	 REFERENCES domains.SMC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK040
	 ADD CONSTRAINT aAK040_SMC_check 
	 CHECK (SMC = ANY(ARRAY[0 :: SMALLINT, 5 :: SMALLINT, 14 :: SMALLINT, 16 :: SMALLINT, 21 :: SMALLINT, 85 :: SMALLINT, 88 :: SMALLINT, 104 :: SMALLINT, 274 :: SMALLINT, 998 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAK040 ALTER COLUMN SMC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK040
	 ADD CONSTRAINT aAK040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAK040
	 ADD CONSTRAINT aAK040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK040
	 ADD CONSTRAINT aAK040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aFA015(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FRT smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aFA015_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aFA015_geom ON mgcp.aFA015 USING gist (geom);

ALTER TABLE mgcp.aFA015
	 ADD CONSTRAINT aFA015_FRT_fk FOREIGN KEY (FRT)
	 REFERENCES domains.FRT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aFA015 ALTER COLUMN FRT SET DEFAULT 9999;

ALTER TABLE mgcp.aFA015
	 ADD CONSTRAINT aFA015_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aFA015 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aFA015
	 ADD CONSTRAINT aFA015_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aFA015 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aFA015
	 ADD CONSTRAINT aFA015_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aFA015 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAI030(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAI030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAI030_geom ON mgcp.aAI030 USING gist (geom);

ALTER TABLE mgcp.aAI030
	 ADD CONSTRAINT aAI030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAI030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAI030
	 ADD CONSTRAINT aAI030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAI030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAK170(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAK170_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAK170_geom ON mgcp.aAK170 USING gist (geom);

ALTER TABLE mgcp.aAK170
	 ADD CONSTRAINT aAK170_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK170 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAK170
	 ADD CONSTRAINT aAK170_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAK170 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBJ030(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBJ030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBJ030_geom ON mgcp.aBJ030 USING gist (geom);

ALTER TABLE mgcp.aBJ030
	 ADD CONSTRAINT aBJ030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBJ030
	 ADD CONSTRAINT aBJ030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBJ100(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBJ100_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBJ100_geom ON mgcp.aBJ100 USING gist (geom);

ALTER TABLE mgcp.aBJ100
	 ADD CONSTRAINT aBJ100_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ100 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBJ100
	 ADD CONSTRAINT aBJ100_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ100 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBJ060(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBJ060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBJ060_geom ON mgcp.pBJ060 USING gist (geom);

ALTER TABLE mgcp.pBJ060
	 ADD CONSTRAINT pBJ060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBJ060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBJ060
	 ADD CONSTRAINT pBJ060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBJ060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pDB160(
	 id serial NOT NULL,
	 RKF smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pDB160_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pDB160_geom ON mgcp.pDB160 USING gist (geom);

ALTER TABLE mgcp.pDB160
	 ADD CONSTRAINT pDB160_RKF_fk FOREIGN KEY (RKF)
	 REFERENCES domains.RKF (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB160 ALTER COLUMN RKF SET DEFAULT 9999;

ALTER TABLE mgcp.pDB160
	 ADD CONSTRAINT pDB160_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB160 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pDB160
	 ADD CONSTRAINT pDB160_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pDB160 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBJ040(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBJ040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBJ040_geom ON mgcp.lBJ040 USING gist (geom);

ALTER TABLE mgcp.lBJ040
	 ADD CONSTRAINT lBJ040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBJ040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBJ040
	 ADD CONSTRAINT lBJ040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBJ040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB110(
	 id serial NOT NULL,
	 NFN varchar(255),
	 WID real,
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB110_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB110_geom ON mgcp.lDB110 USING gist (geom);

ALTER TABLE mgcp.lDB110
	 ADD CONSTRAINT lDB110_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB110 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB110
	 ADD CONSTRAINT lDB110_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB110 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB200(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB200_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB200_geom ON mgcp.lDB200 USING gist (geom);

ALTER TABLE mgcp.lDB200
	 ADD CONSTRAINT lDB200_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB200 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB200
	 ADD CONSTRAINT lDB200_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB200 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBJ031(
	 id serial NOT NULL,
	 WID real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBJ031_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBJ031_geom ON mgcp.lBJ031 USING gist (geom);

ALTER TABLE mgcp.lBJ031
	 ADD CONSTRAINT lBJ031_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBJ031 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBJ031
	 ADD CONSTRAINT lBJ031_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBJ031 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB061(
	 id serial NOT NULL,
	 WID real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB061_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB061_geom ON mgcp.lDB061 USING gist (geom);

ALTER TABLE mgcp.lDB061
	 ADD CONSTRAINT lDB061_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB061 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB061
	 ADD CONSTRAINT lDB061_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB061 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB100(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB100_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB100_geom ON mgcp.lDB100 USING gist (geom);

ALTER TABLE mgcp.lDB100
	 ADD CONSTRAINT lDB100_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB100 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB100
	 ADD CONSTRAINT lDB100_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB100 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB160(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB160_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB160_geom ON mgcp.lDB160 USING gist (geom);

ALTER TABLE mgcp.lDB160
	 ADD CONSTRAINT lDB160_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB160 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB160
	 ADD CONSTRAINT lDB160_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB160 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aDB200(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aDB200_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aDB200_geom ON mgcp.aDB200 USING gist (geom);

ALTER TABLE mgcp.aDB200
	 ADD CONSTRAINT aDB200_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB200 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB200
	 ADD CONSTRAINT aDB200_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB200 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBJ031(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBJ031_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBJ031_geom ON mgcp.aBJ031 USING gist (geom);

ALTER TABLE mgcp.aBJ031
	 ADD CONSTRAINT aBJ031_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ031 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBJ031
	 ADD CONSTRAINT aBJ031_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ031 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aDB061(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aDB061_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aDB061_geom ON mgcp.aDB061 USING gist (geom);

ALTER TABLE mgcp.aDB061
	 ADD CONSTRAINT aDB061_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB061 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB061
	 ADD CONSTRAINT aDB061_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB061 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBJ020(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBJ020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBJ020_geom ON mgcp.aBJ020 USING gist (geom);

ALTER TABLE mgcp.aBJ020
	 ADD CONSTRAINT aBJ020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBJ020
	 ADD CONSTRAINT aBJ020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBJ020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aDB160(
	 id serial NOT NULL,
	 RKF smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aDB160_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aDB160_geom ON mgcp.aDB160 USING gist (geom);

ALTER TABLE mgcp.aDB160
	 ADD CONSTRAINT aDB160_RKF_fk FOREIGN KEY (RKF)
	 REFERENCES domains.RKF (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB160 ALTER COLUMN RKF SET DEFAULT 9999;

ALTER TABLE mgcp.aDB160
	 ADD CONSTRAINT aDB160_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB160 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB160
	 ADD CONSTRAINT aDB160_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB160 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH160(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH160_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH160_geom ON mgcp.aBH160 USING gist (geom);

ALTER TABLE mgcp.aBH160
	 ADD CONSTRAINT aBH160_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH160 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH160
	 ADD CONSTRAINT aBH160_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH160 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aDB170(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 SDO real,
	 NAM varchar(255),
	 SDT smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aDB170_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aDB170_geom ON mgcp.aDB170 USING gist (geom);

ALTER TABLE mgcp.aDB170
	 ADD CONSTRAINT aDB170_SDT_fk FOREIGN KEY (SDT)
	 REFERENCES domains.SDT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB170 ALTER COLUMN SDT SET DEFAULT 9999;

ALTER TABLE mgcp.aDB170
	 ADD CONSTRAINT aDB170_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB170 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB170
	 ADD CONSTRAINT aDB170_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB170 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH080(
	 id serial NOT NULL,
	 NAM varchar(255),
	 SCC smallint NOT NULL,
	 NFI varchar(255),
	 HYP smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH080_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH080_geom ON mgcp.aBH080 USING gist (geom);

ALTER TABLE mgcp.aBH080
	 ADD CONSTRAINT aBH080_SCC_fk FOREIGN KEY (SCC)
	 REFERENCES domains.SCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH080
	 ADD CONSTRAINT aBH080_SCC_check 
	 CHECK (SCC = ANY(ARRAY[0 :: SMALLINT, 10 :: SMALLINT, 11 :: SMALLINT, 12 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH080 ALTER COLUMN SCC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH080
	 ADD CONSTRAINT aBH080_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH080
	 ADD CONSTRAINT aBH080_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH080 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.aBH080
	 ADD CONSTRAINT aBH080_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH080 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH080
	 ADD CONSTRAINT aBH080_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH080 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH130(
	 id serial NOT NULL,
	 HYP smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH130_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH130_geom ON mgcp.aBH130 USING gist (geom);

ALTER TABLE mgcp.aBH130
	 ADD CONSTRAINT aBH130_HYP_fk FOREIGN KEY (HYP)
	 REFERENCES domains.HYP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH130
	 ADD CONSTRAINT aBH130_HYP_check 
	 CHECK (HYP = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH130 ALTER COLUMN HYP SET DEFAULT 9999;

ALTER TABLE mgcp.aBH130
	 ADD CONSTRAINT aBH130_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH130 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBH130
	 ADD CONSTRAINT aBH130_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH130 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH130
	 ADD CONSTRAINT aBH130_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH130 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH090(
	 id serial NOT NULL,
	 CNS smallint NOT NULL,
	 AZC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH090_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH090_geom ON mgcp.aBH090 USING gist (geom);

ALTER TABLE mgcp.aBH090
	 ADD CONSTRAINT aBH090_CNS_fk FOREIGN KEY (CNS)
	 REFERENCES domains.CNS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH090 ALTER COLUMN CNS SET DEFAULT 9999;

ALTER TABLE mgcp.aBH090
	 ADD CONSTRAINT aBH090_AZC_fk FOREIGN KEY (AZC)
	 REFERENCES domains.AZC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH090 ALTER COLUMN AZC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH090
	 ADD CONSTRAINT aBH090_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH090 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH090
	 ADD CONSTRAINT aBH090_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH090 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAF020(
	 id serial NOT NULL,
	 HGT real,
	 FUN smallint NOT NULL,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAF020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAF020_geom ON mgcp.lAF020 USING gist (geom);

ALTER TABLE mgcp.lAF020
	 ADD CONSTRAINT lAF020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAF020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAF020
	 ADD CONSTRAINT lAF020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAF020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAF020
	 ADD CONSTRAINT lAF020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAF020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH060(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 LOC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH060_geom ON mgcp.lBH060 USING gist (geom);

ALTER TABLE mgcp.lBH060
	 ADD CONSTRAINT lBH060_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH060 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBH060
	 ADD CONSTRAINT lBH060_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH060
	 ADD CONSTRAINT lBH060_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBH060 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH060
	 ADD CONSTRAINT lBH060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH060
	 ADD CONSTRAINT lBH060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lFA090(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lFA090_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lFA090_geom ON mgcp.lFA090 USING gist (geom);

ALTER TABLE mgcp.lFA090
	 ADD CONSTRAINT lFA090_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lFA090 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lFA090
	 ADD CONSTRAINT lFA090_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lFA090 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBB155(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 STA smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBB155_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBB155_geom ON mgcp.pBB155 USING gist (geom);

ALTER TABLE mgcp.pBB155
	 ADD CONSTRAINT pBB155_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBB155 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pBB155
	 ADD CONSTRAINT pBB155_STA_fk FOREIGN KEY (STA)
	 REFERENCES domains.STA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBB155 ALTER COLUMN STA SET DEFAULT 9999;

ALTER TABLE mgcp.pBB155
	 ADD CONSTRAINT pBB155_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBB155 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBB155
	 ADD CONSTRAINT pBB155_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBB155 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBB005(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 FHC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBB005_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBB005_geom ON mgcp.aBB005 USING gist (geom);

ALTER TABLE mgcp.aBB005
	 ADD CONSTRAINT aBB005_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB005 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBB005
	 ADD CONSTRAINT aBB005_FHC_fk FOREIGN KEY (FHC)
	 REFERENCES domains.FHC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB005 ALTER COLUMN FHC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB005
	 ADD CONSTRAINT aBB005_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB005 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB005
	 ADD CONSTRAINT aBB005_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB005 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBB090(
	 id serial NOT NULL,
	 MCC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBB090_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBB090_geom ON mgcp.aBB090 USING gist (geom);

ALTER TABLE mgcp.aBB090
	 ADD CONSTRAINT aBB090_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB090 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB090
	 ADD CONSTRAINT aBB090_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB090 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBB090
	 ADD CONSTRAINT aBB090_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB090 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBB090
	 ADD CONSTRAINT aBB090_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBB090 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aDA010(
	 id serial NOT NULL,
	 SMC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aDA010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aDA010_geom ON mgcp.aDA010 USING gist (geom);

ALTER TABLE mgcp.aDA010
	 ADD CONSTRAINT aDA010_SMC_fk FOREIGN KEY (SMC)
	 REFERENCES domains.SMC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDA010
	 ADD CONSTRAINT aDA010_SMC_check 
	 CHECK (SMC = ANY(ARRAY[0 :: SMALLINT, 5 :: SMALLINT, 8 :: SMALLINT, 21 :: SMALLINT, 46 :: SMALLINT, 52 :: SMALLINT, 55 :: SMALLINT, 65 :: SMALLINT, 67 :: SMALLINT, 84 :: SMALLINT, 87 :: SMALLINT, 88 :: SMALLINT, 103 :: SMALLINT, 104 :: SMALLINT, 120 :: SMALLINT, 122 :: SMALLINT, 124 :: SMALLINT, 126 :: SMALLINT, 257 :: SMALLINT, 258 :: SMALLINT, 269 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aDA010 ALTER COLUMN SMC SET DEFAULT 9999;

ALTER TABLE mgcp.aDA010
	 ADD CONSTRAINT aDA010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDA010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aDA010
	 ADD CONSTRAINT aDA010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDA010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEB010(
	 id serial NOT NULL,
	 NAM varchar(255),
	 VEG smallint NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEB010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEB010_geom ON mgcp.aEB010 USING gist (geom);

ALTER TABLE mgcp.aEB010
	 ADD CONSTRAINT aEB010_VEG_fk FOREIGN KEY (VEG)
	 REFERENCES domains.VEG (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEB010
	 ADD CONSTRAINT aEB010_VEG_check 
	 CHECK (VEG = ANY(ARRAY[0 :: SMALLINT, 8 :: SMALLINT, 9 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aEB010 ALTER COLUMN VEG SET DEFAULT 9999;

ALTER TABLE mgcp.aEB010
	 ADD CONSTRAINT aEB010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEB010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEB010
	 ADD CONSTRAINT aEB010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEB010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEB020(
	 id serial NOT NULL,
	 DMB real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEB020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEB020_geom ON mgcp.aEB020 USING gist (geom);

ALTER TABLE mgcp.aEB020
	 ADD CONSTRAINT aEB020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEB020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEB020
	 ADD CONSTRAINT aEB020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEB020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEC010(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEC010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEC010_geom ON mgcp.aEC010 USING gist (geom);

ALTER TABLE mgcp.aEC010
	 ADD CONSTRAINT aEC010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEC010
	 ADD CONSTRAINT aEC010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAH050(
	 id serial NOT NULL,
	 VOI varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 HGT real,
	 FUN smallint NOT NULL,
	 MCC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAH050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAH050_geom ON mgcp.pAH050 USING gist (geom);

ALTER TABLE mgcp.pAH050
	 ADD CONSTRAINT pAH050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAH050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAH050
	 ADD CONSTRAINT pAH050_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAH050 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.pAH050
	 ADD CONSTRAINT pAH050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAH050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAH050
	 ADD CONSTRAINT pAH050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAH050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAH050(
	 id serial NOT NULL,
	 NAM varchar(255),
	 VOI varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 HGT real,
	 MCC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAH050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAH050_geom ON mgcp.aAH050 USING gist (geom);

ALTER TABLE mgcp.aAH050
	 ADD CONSTRAINT aAH050_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAH050 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aAH050
	 ADD CONSTRAINT aAH050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAH050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAH050
	 ADD CONSTRAINT aAH050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAH050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAH050
	 ADD CONSTRAINT aAH050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAH050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBH070(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 RST smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBH070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBH070_geom ON mgcp.pBH070 USING gist (geom);

ALTER TABLE mgcp.pBH070
	 ADD CONSTRAINT pBH070_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH070
	 ADD CONSTRAINT pBH070_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pBH070 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.pBH070
	 ADD CONSTRAINT pBH070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBH070
	 ADD CONSTRAINT pBH070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH070(
	 id serial NOT NULL,
	 NAM varchar(255),
	 RST smallint NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH070_geom ON mgcp.lBH070 USING gist (geom);

ALTER TABLE mgcp.lBH070
	 ADD CONSTRAINT lBH070_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH070
	 ADD CONSTRAINT lBH070_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBH070 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.lBH070
	 ADD CONSTRAINT lBH070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH070
	 ADD CONSTRAINT lBH070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEC040(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEC040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEC040_geom ON mgcp.aEC040 USING gist (geom);

ALTER TABLE mgcp.aEC040
	 ADD CONSTRAINT aEC040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEC040
	 ADD CONSTRAINT aEC040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEC060(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEC060_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEC060_geom ON mgcp.aEC060 USING gist (geom);

ALTER TABLE mgcp.aEC060
	 ADD CONSTRAINT aEC060_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC060 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEC060
	 ADD CONSTRAINT aEC060_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEC060 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAQ070(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 TRS smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAQ070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAQ070_geom ON mgcp.pAQ070 USING gist (geom);

ALTER TABLE mgcp.pAQ070
	 ADD CONSTRAINT pAQ070_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ070 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ070
	 ADD CONSTRAINT pAQ070_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ070 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ070
	 ADD CONSTRAINT pAQ070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAQ070
	 ADD CONSTRAINT pAQ070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAQ070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAQ070(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 TRS smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAQ070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAQ070_geom ON mgcp.lAQ070 USING gist (geom);

ALTER TABLE mgcp.lAQ070
	 ADD CONSTRAINT lAQ070_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ070 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ070
	 ADD CONSTRAINT lAQ070_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ070 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ070
	 ADD CONSTRAINT lAQ070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ070
	 ADD CONSTRAINT lAQ070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAA010(
	 id serial NOT NULL,
	 MZN smallint NOT NULL,
	 PPO smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAA010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAA010_geom ON mgcp.pAA010 USING gist (geom);

ALTER TABLE mgcp.pAA010
	 ADD CONSTRAINT pAA010_MZN_fk FOREIGN KEY (MZN)
	 REFERENCES domains.MZN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA010 ALTER COLUMN MZN SET DEFAULT 9999;

ALTER TABLE mgcp.pAA010
	 ADD CONSTRAINT pAA010_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA010
	 ADD CONSTRAINT pAA010_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 9 :: SMALLINT, 18 :: SMALLINT, 26 :: SMALLINT, 33 :: SMALLINT, 48 :: SMALLINT, 58 :: SMALLINT, 59 :: SMALLINT, 65 :: SMALLINT, 89 :: SMALLINT, 95 :: SMALLINT, 105 :: SMALLINT, 120 :: SMALLINT, 126 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAA010 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAA010
	 ADD CONSTRAINT pAA010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAA010
	 ADD CONSTRAINT pAA010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAA010
	 ADD CONSTRAINT pAA010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAA012(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 PPO smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAA012_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAA012_geom ON mgcp.pAA012 USING gist (geom);

ALTER TABLE mgcp.pAA012
	 ADD CONSTRAINT pAA012_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA012 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAA012
	 ADD CONSTRAINT pAA012_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA012
	 ADD CONSTRAINT pAA012_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 17 :: SMALLINT, 35 :: SMALLINT, 50 :: SMALLINT, 53 :: SMALLINT, 66 :: SMALLINT, 93 :: SMALLINT, 96 :: SMALLINT, 110 :: SMALLINT, 129 :: SMALLINT, 996 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAA012 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.pAA012
	 ADD CONSTRAINT pAA012_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA012 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAA012
	 ADD CONSTRAINT pAA012_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAA012 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAA010(
	 id serial NOT NULL,
	 PPO smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 MZN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAA010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAA010_geom ON mgcp.aAA010 USING gist (geom);

ALTER TABLE mgcp.aAA010
	 ADD CONSTRAINT aAA010_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA010
	 ADD CONSTRAINT aAA010_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 9 :: SMALLINT, 18 :: SMALLINT, 26 :: SMALLINT, 33 :: SMALLINT, 48 :: SMALLINT, 58 :: SMALLINT, 59 :: SMALLINT, 65 :: SMALLINT, 89 :: SMALLINT, 95 :: SMALLINT, 105 :: SMALLINT, 120 :: SMALLINT, 126 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAA010 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAA010
	 ADD CONSTRAINT aAA010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAA010
	 ADD CONSTRAINT aAA010_MZN_fk FOREIGN KEY (MZN)
	 REFERENCES domains.MZN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA010 ALTER COLUMN MZN SET DEFAULT 9999;

ALTER TABLE mgcp.aAA010
	 ADD CONSTRAINT aAA010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAA010
	 ADD CONSTRAINT aAA010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAA012(
	 id serial NOT NULL,
	 NFI varchar(255),
	 PPO smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAA012_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAA012_geom ON mgcp.aAA012 USING gist (geom);

ALTER TABLE mgcp.aAA012
	 ADD CONSTRAINT aAA012_PPO_fk FOREIGN KEY (PPO)
	 REFERENCES domains.PPO (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA012
	 ADD CONSTRAINT aAA012_PPO_check 
	 CHECK (PPO = ANY(ARRAY[0 :: SMALLINT, 17 :: SMALLINT, 35 :: SMALLINT, 50 :: SMALLINT, 53 :: SMALLINT, 66 :: SMALLINT, 93 :: SMALLINT, 96 :: SMALLINT, 110 :: SMALLINT, 129 :: SMALLINT, 996 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAA012 ALTER COLUMN PPO SET DEFAULT 9999;

ALTER TABLE mgcp.aAA012
	 ADD CONSTRAINT aAA012_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA012 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAA012
	 ADD CONSTRAINT aAA012_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA012 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAA012
	 ADD CONSTRAINT aAA012_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAA012 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH155(
	 id serial NOT NULL,
	 AZC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH155_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH155_geom ON mgcp.aBH155 USING gist (geom);

ALTER TABLE mgcp.aBH155
	 ADD CONSTRAINT aBH155_AZC_fk FOREIGN KEY (AZC)
	 REFERENCES domains.AZC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH155 ALTER COLUMN AZC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH155
	 ADD CONSTRAINT aBH155_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH155 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH155
	 ADD CONSTRAINT aBH155_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH155 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH150(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH150_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH150_geom ON mgcp.aBH150 USING gist (geom);

ALTER TABLE mgcp.aBH150
	 ADD CONSTRAINT aBH150_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH150 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH150
	 ADD CONSTRAINT aBH150_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH150 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAQ063(
	 id serial NOT NULL,
	 MCC smallint NOT NULL,
	 TRS smallint NOT NULL,
	 WLE smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAQ063_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAQ063_geom ON mgcp.lAQ063 USING gist (geom);

ALTER TABLE mgcp.lAQ063
	 ADD CONSTRAINT lAQ063_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ063 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ063
	 ADD CONSTRAINT lAQ063_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ063 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ063
	 ADD CONSTRAINT lAQ063_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ063 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ063
	 ADD CONSTRAINT lAQ063_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ063 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ063
	 ADD CONSTRAINT lAQ063_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ063 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB070(
	 id serial NOT NULL,
	 WID real,
	 TRS smallint NOT NULL,
	 SMC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB070_geom ON mgcp.lDB070 USING gist (geom);

ALTER TABLE mgcp.lDB070
	 ADD CONSTRAINT lDB070_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB070 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.lDB070
	 ADD CONSTRAINT lDB070_SMC_fk FOREIGN KEY (SMC)
	 REFERENCES domains.SMC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB070
	 ADD CONSTRAINT lDB070_SMC_check 
	 CHECK (SMC = ANY(ARRAY[0 :: SMALLINT, 84 :: SMALLINT, 104 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lDB070 ALTER COLUMN SMC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB070
	 ADD CONSTRAINT lDB070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB070
	 ADD CONSTRAINT lDB070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB090(
	 id serial NOT NULL,
	 TRS smallint NOT NULL,
	 WID real,
	 FIC smallint NOT NULL,
	 MCC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB090_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB090_geom ON mgcp.lDB090 USING gist (geom);

ALTER TABLE mgcp.lDB090
	 ADD CONSTRAINT lDB090_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB090 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.lDB090
	 ADD CONSTRAINT lDB090_FIC_fk FOREIGN KEY (FIC)
	 REFERENCES domains.FIC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB090
	 ADD CONSTRAINT lDB090_FIC_check 
	 CHECK (FIC = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 3 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lDB090 ALTER COLUMN FIC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB090
	 ADD CONSTRAINT lDB090_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB090 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB090
	 ADD CONSTRAINT lDB090_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB090 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB090
	 ADD CONSTRAINT lDB090_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB090 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB071(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB071_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB071_geom ON mgcp.lDB071 USING gist (geom);

ALTER TABLE mgcp.lDB071
	 ADD CONSTRAINT lDB071_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB071 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB071
	 ADD CONSTRAINT lDB071_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB071 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aDB090(
	 id serial NOT NULL,
	 FIC smallint NOT NULL,
	 MCC smallint NOT NULL,
	 TRS smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aDB090_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aDB090_geom ON mgcp.aDB090 USING gist (geom);

ALTER TABLE mgcp.aDB090
	 ADD CONSTRAINT aDB090_FIC_fk FOREIGN KEY (FIC)
	 REFERENCES domains.FIC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB090 ALTER COLUMN FIC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB090
	 ADD CONSTRAINT aDB090_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB090 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB090
	 ADD CONSTRAINT aDB090_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB090 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.aDB090
	 ADD CONSTRAINT aDB090_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB090 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aDB090
	 ADD CONSTRAINT aDB090_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aDB090 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAB000(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 PBY smallint NOT NULL,
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 VOI varchar(255),
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAB000_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAB000_geom ON mgcp.aAB000 USING gist (geom);

ALTER TABLE mgcp.aAB000
	 ADD CONSTRAINT aAB000_PBY_fk FOREIGN KEY (PBY)
	 REFERENCES domains.PBY (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAB000 ALTER COLUMN PBY SET DEFAULT 9999;

ALTER TABLE mgcp.aAB000
	 ADD CONSTRAINT aAB000_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAB000 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAB000
	 ADD CONSTRAINT aAB000_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAB000 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAB000
	 ADD CONSTRAINT aAB000_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAB000 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAB010(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAB010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAB010_geom ON mgcp.aAB010 USING gist (geom);

ALTER TABLE mgcp.aAB010
	 ADD CONSTRAINT aAB010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAB010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAB010
	 ADD CONSTRAINT aAB010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAB010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAB010
	 ADD CONSTRAINT aAB010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAB010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBD100(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBD100_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBD100_geom ON mgcp.pBD100 USING gist (geom);

ALTER TABLE mgcp.pBD100
	 ADD CONSTRAINT pBD100_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD100 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBD100
	 ADD CONSTRAINT pBD100_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD100 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBD110(
	 id serial NOT NULL,
	 OPC smallint NOT NULL,
	 VOI varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 AFA smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBD110_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBD110_geom ON mgcp.pBD110 USING gist (geom);

ALTER TABLE mgcp.pBD110
	 ADD CONSTRAINT pBD110_OPC_fk FOREIGN KEY (OPC)
	 REFERENCES domains.OPC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD110 ALTER COLUMN OPC SET DEFAULT 9999;

ALTER TABLE mgcp.pBD110
	 ADD CONSTRAINT pBD110_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD110 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pBD110
	 ADD CONSTRAINT pBD110_AFA_fk FOREIGN KEY (AFA)
	 REFERENCES domains.AFA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD110 ALTER COLUMN AFA SET DEFAULT 9999;

ALTER TABLE mgcp.pBD110
	 ADD CONSTRAINT pBD110_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD110 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBD110
	 ADD CONSTRAINT pBD110_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD110 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBD130(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 WLE smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBD130_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBD130_geom ON mgcp.pBD130 USING gist (geom);

ALTER TABLE mgcp.pBD130
	 ADD CONSTRAINT pBD130_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD130 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.pBD130
	 ADD CONSTRAINT pBD130_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD130 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBD130
	 ADD CONSTRAINT pBD130_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD130 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBD180(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBD180_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBD180_geom ON mgcp.pBD180 USING gist (geom);

ALTER TABLE mgcp.pBD180
	 ADD CONSTRAINT pBD180_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD180 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBD180
	 ADD CONSTRAINT pBD180_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBD180 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBD120(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFN varchar(255),
	 WLE smallint NOT NULL,
	 NFI varchar(255),
	 COD smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBD120_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBD120_geom ON mgcp.lBD120 USING gist (geom);

ALTER TABLE mgcp.lBD120
	 ADD CONSTRAINT lBD120_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBD120 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.lBD120
	 ADD CONSTRAINT lBD120_COD_fk FOREIGN KEY (COD)
	 REFERENCES domains.COD (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBD120
	 ADD CONSTRAINT lBD120_COD_check 
	 CHECK (COD = ANY(ARRAY[1000 :: SMALLINT, 1001 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBD120 ALTER COLUMN COD SET DEFAULT 9999;

ALTER TABLE mgcp.lBD120
	 ADD CONSTRAINT lBD120_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBD120 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBD120
	 ADD CONSTRAINT lBD120_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBD120 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBD100(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBD100_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBD100_geom ON mgcp.aBD100 USING gist (geom);

ALTER TABLE mgcp.aBD100
	 ADD CONSTRAINT aBD100_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBD100 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBD100
	 ADD CONSTRAINT aBD100_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBD100 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBD120(
	 id serial NOT NULL,
	 COD smallint NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 WLE smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBD120_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBD120_geom ON mgcp.aBD120 USING gist (geom);

ALTER TABLE mgcp.aBD120
	 ADD CONSTRAINT aBD120_COD_fk FOREIGN KEY (COD)
	 REFERENCES domains.COD (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBD120
	 ADD CONSTRAINT aBD120_COD_check 
	 CHECK (COD = ANY(ARRAY[1000 :: SMALLINT, 1001 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBD120 ALTER COLUMN COD SET DEFAULT 9999;

ALTER TABLE mgcp.aBD120
	 ADD CONSTRAINT aBD120_WLE_fk FOREIGN KEY (WLE)
	 REFERENCES domains.WLE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBD120 ALTER COLUMN WLE SET DEFAULT 9999;

ALTER TABLE mgcp.aBD120
	 ADD CONSTRAINT aBD120_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBD120 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBD120
	 ADD CONSTRAINT aBD120_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBD120 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBI020(
	 id serial NOT NULL,
	 MCC smallint NOT NULL,
	 VOI varchar(255),
	 TRS smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 HGT real,
	 FUN smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBI020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBI020_geom ON mgcp.pBI020 USING gist (geom);

ALTER TABLE mgcp.pBI020
	 ADD CONSTRAINT pBI020_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI020 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.pBI020
	 ADD CONSTRAINT pBI020_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI020 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.pBI020
	 ADD CONSTRAINT pBI020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pBI020
	 ADD CONSTRAINT pBI020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBI020
	 ADD CONSTRAINT pBI020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBI020(
	 id serial NOT NULL,
	 MCC smallint NOT NULL,
	 WID real,
	 VOI varchar(255),
	 TRS smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 HGT real,
	 FUN smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBI020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBI020_geom ON mgcp.lBI020 USING gist (geom);

ALTER TABLE mgcp.lBI020
	 ADD CONSTRAINT lBI020_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI020 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lBI020
	 ADD CONSTRAINT lBI020_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI020 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.lBI020
	 ADD CONSTRAINT lBI020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBI020
	 ADD CONSTRAINT lBI020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBI020
	 ADD CONSTRAINT lBI020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBI020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH165(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH165_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH165_geom ON mgcp.lBH165 USING gist (geom);

ALTER TABLE mgcp.lBH165
	 ADD CONSTRAINT lBH165_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH165 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH165
	 ADD CONSTRAINT lBH165_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH165 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBI020(
	 id serial NOT NULL,
	 MCC smallint NOT NULL,
	 VOI varchar(255),
	 TRS smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 HGT real,
	 FUN smallint NOT NULL,
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBI020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBI020_geom ON mgcp.aBI020 USING gist (geom);

ALTER TABLE mgcp.aBI020
	 ADD CONSTRAINT aBI020_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBI020 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aBI020
	 ADD CONSTRAINT aBI020_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBI020 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.aBI020
	 ADD CONSTRAINT aBI020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBI020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBI020
	 ADD CONSTRAINT aBI020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBI020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBI020
	 ADD CONSTRAINT aBI020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBI020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH165(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH165_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH165_geom ON mgcp.aBH165 USING gist (geom);

ALTER TABLE mgcp.aBH165
	 ADD CONSTRAINT aBH165_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH165 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH165
	 ADD CONSTRAINT aBH165_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH165 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH135(
	 id serial NOT NULL,
	 FFP smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH135_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH135_geom ON mgcp.aBH135 USING gist (geom);

ALTER TABLE mgcp.aBH135
	 ADD CONSTRAINT aBH135_FFP_fk FOREIGN KEY (FFP)
	 REFERENCES domains.FFP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH135
	 ADD CONSTRAINT aBH135_FFP_check 
	 CHECK (FFP = ANY(ARRAY[0 :: SMALLINT, 3 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH135 ALTER COLUMN FFP SET DEFAULT 9999;

ALTER TABLE mgcp.aBH135
	 ADD CONSTRAINT aBH135_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH135 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH135
	 ADD CONSTRAINT aBH135_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH135 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEA010(
	 id serial NOT NULL,
	 FMM smallint NOT NULL,
	 FFP smallint NOT NULL,
	 DMT real,
	 CSP smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEA010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEA010_geom ON mgcp.aEA010 USING gist (geom);

ALTER TABLE mgcp.aEA010
	 ADD CONSTRAINT aEA010_FMM_fk FOREIGN KEY (FMM)
	 REFERENCES domains.FMM (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA010 ALTER COLUMN FMM SET DEFAULT 9999;

ALTER TABLE mgcp.aEA010
	 ADD CONSTRAINT aEA010_FFP_fk FOREIGN KEY (FFP)
	 REFERENCES domains.FFP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA010 ALTER COLUMN FFP SET DEFAULT 9999;

ALTER TABLE mgcp.aEA010
	 ADD CONSTRAINT aEA010_CSP_fk FOREIGN KEY (CSP)
	 REFERENCES domains.CSP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA010
	 ADD CONSTRAINT aEA010_CSP_check 
	 CHECK (CSP = ANY(ARRAY[0 :: SMALLINT, 13 :: SMALLINT, 34 :: SMALLINT, 37 :: SMALLINT, 45 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aEA010 ALTER COLUMN CSP SET DEFAULT 9999;

ALTER TABLE mgcp.aEA010
	 ADD CONSTRAINT aEA010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEA010
	 ADD CONSTRAINT aEA010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEA040(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 DMT real,
	 CSP smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEA040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEA040_geom ON mgcp.aEA040 USING gist (geom);

ALTER TABLE mgcp.aEA040
	 ADD CONSTRAINT aEA040_CSP_fk FOREIGN KEY (CSP)
	 REFERENCES domains.CSP (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA040
	 ADD CONSTRAINT aEA040_CSP_check 
	 CHECK (CSP = ANY(ARRAY[0 :: SMALLINT, 15 :: SMALLINT, 29 :: SMALLINT, 41 :: SMALLINT, 113 :: SMALLINT, 157 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aEA040 ALTER COLUMN CSP SET DEFAULT 9999;

ALTER TABLE mgcp.aEA040
	 ADD CONSTRAINT aEA040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEA040
	 ADD CONSTRAINT aEA040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEA050(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEA050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEA050_geom ON mgcp.aEA050 USING gist (geom);

ALTER TABLE mgcp.aEA050
	 ADD CONSTRAINT aEA050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEA050
	 ADD CONSTRAINT aEA050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aEA055(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aEA055_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aEA055_geom ON mgcp.aEA055 USING gist (geom);

ALTER TABLE mgcp.aEA055
	 ADD CONSTRAINT aEA055_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA055 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aEA055
	 ADD CONSTRAINT aEA055_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aEA055 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAT010(
	 id serial NOT NULL,
	 VOI varchar(255),
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAT010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAT010_geom ON mgcp.pAT010 USING gist (geom);

ALTER TABLE mgcp.pAT010
	 ADD CONSTRAINT pAT010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAT010
	 ADD CONSTRAINT pAT010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAT045(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFN varchar(255),
	 RAC smallint NOT NULL,
	 NFI varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAT045_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAT045_geom ON mgcp.pAT045 USING gist (geom);

ALTER TABLE mgcp.pAT045
	 ADD CONSTRAINT pAT045_RAC_fk FOREIGN KEY (RAC)
	 REFERENCES domains.RAC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT045 ALTER COLUMN RAC SET DEFAULT 9999;

ALTER TABLE mgcp.pAT045
	 ADD CONSTRAINT pAT045_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT045 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAT045
	 ADD CONSTRAINT pAT045_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT045 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAT045
	 ADD CONSTRAINT pAT045_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAT045 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAT050(
	 id serial NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 NST smallint NOT NULL,
	 NFN varchar(255),
	 FUN smallint NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAT050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAT050_geom ON mgcp.aAT050 USING gist (geom);

ALTER TABLE mgcp.aAT050
	 ADD CONSTRAINT aAT050_NST_fk FOREIGN KEY (NST)
	 REFERENCES domains.NST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAT050
	 ADD CONSTRAINT aAT050_NST_check 
	 CHECK (NST = ANY(ARRAY[0 :: SMALLINT, 12 :: SMALLINT, 13 :: SMALLINT, 15 :: SMALLINT, 16 :: SMALLINT, 33 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAT050 ALTER COLUMN NST SET DEFAULT 9999;

ALTER TABLE mgcp.aAT050
	 ADD CONSTRAINT aAT050_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAT050 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAT050
	 ADD CONSTRAINT aAT050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAT050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAT050
	 ADD CONSTRAINT aAT050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAT050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBA050(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 SMC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBA050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBA050_geom ON mgcp.pBA050 USING gist (geom);

ALTER TABLE mgcp.pBA050
	 ADD CONSTRAINT pBA050_SMC_fk FOREIGN KEY (SMC)
	 REFERENCES domains.SMC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBA050
	 ADD CONSTRAINT pBA050_SMC_check 
	 CHECK (SMC = ANY(ARRAY[0 :: SMALLINT, 73 :: SMALLINT, 88 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pBA050 ALTER COLUMN SMC SET DEFAULT 9999;

ALTER TABLE mgcp.pBA050
	 ADD CONSTRAINT pBA050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBA050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBA050
	 ADD CONSTRAINT pBA050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBA050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBA010(
	 id serial NOT NULL,
	 SLT smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBA010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBA010_geom ON mgcp.lBA010 USING gist (geom);

ALTER TABLE mgcp.lBA010
	 ADD CONSTRAINT lBA010_SLT_fk FOREIGN KEY (SLT)
	 REFERENCES domains.SLT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBA010 ALTER COLUMN SLT SET DEFAULT 9999;

ALTER TABLE mgcp.lBA010
	 ADD CONSTRAINT lBA010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBA010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBA010
	 ADD CONSTRAINT lBA010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBA010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBA030(
	 id serial NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBA030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBA030_geom ON mgcp.aBA030 USING gist (geom);

ALTER TABLE mgcp.aBA030
	 ADD CONSTRAINT aBA030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBA030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBA030
	 ADD CONSTRAINT aBA030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBA030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBA040(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 NA2 varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBA040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBA040_geom ON mgcp.aBA040 USING gist (geom);

ALTER TABLE mgcp.aBA040
	 ADD CONSTRAINT aBA040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBA040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBA040
	 ADD CONSTRAINT aBA040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBA040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBA050(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 NFN varchar(255),
	 SMC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBA050_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBA050_geom ON mgcp.aBA050 USING gist (geom);

ALTER TABLE mgcp.aBA050
	 ADD CONSTRAINT aBA050_SMC_fk FOREIGN KEY (SMC)
	 REFERENCES domains.SMC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBA050
	 ADD CONSTRAINT aBA050_SMC_check 
	 CHECK (SMC = ANY(ARRAY[0 :: SMALLINT, 73 :: SMALLINT, 88 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBA050 ALTER COLUMN SMC SET DEFAULT 9999;

ALTER TABLE mgcp.aBA050
	 ADD CONSTRAINT aBA050_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBA050 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBA050
	 ADD CONSTRAINT aBA050_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBA050 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBI010(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBI010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBI010_geom ON mgcp.pBI010 USING gist (geom);

ALTER TABLE mgcp.pBI010
	 ADD CONSTRAINT pBI010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBI010
	 ADD CONSTRAINT pBI010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBI010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL020(
	 id serial NOT NULL,
	 NAM varchar(255),
	 ORD smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 FUC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 BAC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL020_geom ON mgcp.pAL020 USING gist (geom);

ALTER TABLE mgcp.pAL020
	 ADD CONSTRAINT pAL020_ORD_fk FOREIGN KEY (ORD)
	 REFERENCES domains.ORD (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL020 ALTER COLUMN ORD SET DEFAULT 9999;

ALTER TABLE mgcp.pAL020
	 ADD CONSTRAINT pAL020_FUC_fk FOREIGN KEY (FUC)
	 REFERENCES domains.FUC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL020
	 ADD CONSTRAINT pAL020_FUC_check 
	 CHECK (FUC = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 19 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAL020 ALTER COLUMN FUC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL020
	 ADD CONSTRAINT pAL020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAL020
	 ADD CONSTRAINT pAL020_BAC_fk FOREIGN KEY (BAC)
	 REFERENCES domains.BAC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL020 ALTER COLUMN BAC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL020
	 ADD CONSTRAINT pAL020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL020
	 ADD CONSTRAINT pAL020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL020(
	 id serial NOT NULL,
	 NFN varchar(255),
	 ORD smallint NOT NULL,
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 BAC smallint NOT NULL,
	 FUC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL020_geom ON mgcp.aAL020 USING gist (geom);

ALTER TABLE mgcp.aAL020
	 ADD CONSTRAINT aAL020_ORD_fk FOREIGN KEY (ORD)
	 REFERENCES domains.ORD (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL020 ALTER COLUMN ORD SET DEFAULT 9999;

ALTER TABLE mgcp.aAL020
	 ADD CONSTRAINT aAL020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAL020
	 ADD CONSTRAINT aAL020_BAC_fk FOREIGN KEY (BAC)
	 REFERENCES domains.BAC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL020 ALTER COLUMN BAC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL020
	 ADD CONSTRAINT aAL020_FUC_fk FOREIGN KEY (FUC)
	 REFERENCES domains.FUC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL020
	 ADD CONSTRAINT aAL020_FUC_check 
	 CHECK (FUC = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 4 :: SMALLINT, 19 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAL020 ALTER COLUMN FUC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL020
	 ADD CONSTRAINT aAL020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL020
	 ADD CONSTRAINT aAL020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL208(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 NAM varchar(255),
	 NFI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL208_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL208_geom ON mgcp.aAL208 USING gist (geom);

ALTER TABLE mgcp.aAL208
	 ADD CONSTRAINT aAL208_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL208 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAL208
	 ADD CONSTRAINT aAL208_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL208 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL208
	 ADD CONSTRAINT aAL208_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL208 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAL015(
	 id serial NOT NULL,
	 HWT smallint NOT NULL,
	 VOI varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 FFN smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAL015_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAL015_geom ON mgcp.pAL015 USING gist (geom);

ALTER TABLE mgcp.pAL015
	 ADD CONSTRAINT pAL015_HWT_fk FOREIGN KEY (HWT)
	 REFERENCES domains.HWT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL015 ALTER COLUMN HWT SET DEFAULT 9999;

ALTER TABLE mgcp.pAL015
	 ADD CONSTRAINT pAL015_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL015 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAL015
	 ADD CONSTRAINT pAL015_FFN_fk FOREIGN KEY (FFN)
	 REFERENCES domains.FFN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL015
	 ADD CONSTRAINT pAL015_FFN_check 
	 CHECK (FFN = ANY(ARRAY[0 :: SMALLINT, 2 :: SMALLINT, 99 :: SMALLINT, 105 :: SMALLINT, 107 :: SMALLINT, 161 :: SMALLINT, 171 :: SMALLINT, 192 :: SMALLINT, 241 :: SMALLINT, 290 :: SMALLINT, 330 :: SMALLINT, 341 :: SMALLINT, 343 :: SMALLINT, 350 :: SMALLINT, 351 :: SMALLINT, 355 :: SMALLINT, 362 :: SMALLINT, 440 :: SMALLINT, 470 :: SMALLINT, 475 :: SMALLINT, 480 :: SMALLINT, 481 :: SMALLINT, 486 :: SMALLINT, 501 :: SMALLINT, 511 :: SMALLINT, 513 :: SMALLINT, 530 :: SMALLINT, 535 :: SMALLINT, 540 :: SMALLINT, 550 :: SMALLINT, 563 :: SMALLINT, 572 :: SMALLINT, 582 :: SMALLINT, 601 :: SMALLINT, 604 :: SMALLINT, 610 :: SMALLINT, 626 :: SMALLINT, 643 :: SMALLINT, 720 :: SMALLINT, 721 :: SMALLINT, 722 :: SMALLINT, 730 :: SMALLINT, 781 :: SMALLINT, 810 :: SMALLINT, 811 :: SMALLINT, 815 :: SMALLINT, 825 :: SMALLINT, 827 :: SMALLINT, 835 :: SMALLINT, 841 :: SMALLINT, 843 :: SMALLINT, 845 :: SMALLINT, 850 :: SMALLINT, 855 :: SMALLINT, 859 :: SMALLINT, 860 :: SMALLINT, 861 :: SMALLINT, 887 :: SMALLINT, 891 :: SMALLINT, 892 :: SMALLINT, 893 :: SMALLINT, 894 :: SMALLINT, 902 :: SMALLINT, 905 :: SMALLINT, 912 :: SMALLINT, 919 :: SMALLINT, 930 :: SMALLINT, 931 :: SMALLINT, 955 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pAL015 ALTER COLUMN FFN SET DEFAULT 9999;

ALTER TABLE mgcp.pAL015
	 ADD CONSTRAINT pAL015_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL015 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAL015
	 ADD CONSTRAINT pAL015_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAL015 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAL015(
	 id serial NOT NULL,
	 FFN smallint NOT NULL,
	 VOI varchar(255),
	 NFN varchar(255),
	 NFI varchar(255),
	 NAM varchar(255),
	 HWT smallint NOT NULL,
	 FUN smallint NOT NULL,
	 HGT real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAL015_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAL015_geom ON mgcp.aAL015 USING gist (geom);

ALTER TABLE mgcp.aAL015
	 ADD CONSTRAINT aAL015_FFN_fk FOREIGN KEY (FFN)
	 REFERENCES domains.FFN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL015
	 ADD CONSTRAINT aAL015_FFN_check 
	 CHECK (FFN = ANY(ARRAY[0 :: SMALLINT, 2 :: SMALLINT, 99 :: SMALLINT, 105 :: SMALLINT, 107 :: SMALLINT, 161 :: SMALLINT, 171 :: SMALLINT, 192 :: SMALLINT, 241 :: SMALLINT, 290 :: SMALLINT, 330 :: SMALLINT, 341 :: SMALLINT, 343 :: SMALLINT, 350 :: SMALLINT, 351 :: SMALLINT, 355 :: SMALLINT, 362 :: SMALLINT, 440 :: SMALLINT, 470 :: SMALLINT, 475 :: SMALLINT, 480 :: SMALLINT, 481 :: SMALLINT, 486 :: SMALLINT, 501 :: SMALLINT, 511 :: SMALLINT, 513 :: SMALLINT, 530 :: SMALLINT, 535 :: SMALLINT, 540 :: SMALLINT, 550 :: SMALLINT, 563 :: SMALLINT, 572 :: SMALLINT, 582 :: SMALLINT, 601 :: SMALLINT, 604 :: SMALLINT, 610 :: SMALLINT, 626 :: SMALLINT, 643 :: SMALLINT, 720 :: SMALLINT, 721 :: SMALLINT, 722 :: SMALLINT, 730 :: SMALLINT, 781 :: SMALLINT, 810 :: SMALLINT, 811 :: SMALLINT, 815 :: SMALLINT, 825 :: SMALLINT, 827 :: SMALLINT, 835 :: SMALLINT, 841 :: SMALLINT, 843 :: SMALLINT, 845 :: SMALLINT, 850 :: SMALLINT, 855 :: SMALLINT, 859 :: SMALLINT, 860 :: SMALLINT, 861 :: SMALLINT, 887 :: SMALLINT, 891 :: SMALLINT, 892 :: SMALLINT, 893 :: SMALLINT, 894 :: SMALLINT, 902 :: SMALLINT, 905 :: SMALLINT, 912 :: SMALLINT, 919 :: SMALLINT, 930 :: SMALLINT, 931 :: SMALLINT, 955 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aAL015 ALTER COLUMN FFN SET DEFAULT 9999;

ALTER TABLE mgcp.aAL015
	 ADD CONSTRAINT aAL015_HWT_fk FOREIGN KEY (HWT)
	 REFERENCES domains.HWT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL015 ALTER COLUMN HWT SET DEFAULT 9999;

ALTER TABLE mgcp.aAL015
	 ADD CONSTRAINT aAL015_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL015 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAL015
	 ADD CONSTRAINT aAL015_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL015 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAL015
	 ADD CONSTRAINT aAL015_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAL015 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAQ040(
	 id serial NOT NULL,
	 TRS smallint NOT NULL,
	 NFI varchar(255),
	 WID real,
	 VOI varchar(255),
	 OHB real,
	 NOS integer,
	 NFN varchar(255),
	 MCC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 BSC smallint NOT NULL,
	 BOT smallint NOT NULL,
	 NAM varchar(255),
	 WD1 real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAQ040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAQ040_geom ON mgcp.lAQ040 USING gist (geom);

ALTER TABLE mgcp.lAQ040
	 ADD CONSTRAINT lAQ040_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ040 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ040
	 ADD CONSTRAINT lAQ040_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ040 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ040
	 ADD CONSTRAINT lAQ040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ040
	 ADD CONSTRAINT lAQ040_BSC_fk FOREIGN KEY (BSC)
	 REFERENCES domains.BSC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ040 ALTER COLUMN BSC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ040
	 ADD CONSTRAINT lAQ040_BOT_fk FOREIGN KEY (BOT)
	 REFERENCES domains.BOT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ040 ALTER COLUMN BOT SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ040
	 ADD CONSTRAINT lAQ040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAQ040
	 ADD CONSTRAINT lAQ040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAQ040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAQ040(
	 id serial NOT NULL,
	 NAM varchar(255),
	 NFI varchar(255),
	 VOI varchar(255),
	 TRS smallint NOT NULL,
	 OHB real,
	 NFN varchar(255),
	 MCC smallint NOT NULL,
	 BOT smallint NOT NULL,
	 BSC smallint NOT NULL,
	 NOS integer,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAQ040_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAQ040_geom ON mgcp.aAQ040 USING gist (geom);

ALTER TABLE mgcp.aAQ040
	 ADD CONSTRAINT aAQ040_TRS_fk FOREIGN KEY (TRS)
	 REFERENCES domains.TRS (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ040 ALTER COLUMN TRS SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ040
	 ADD CONSTRAINT aAQ040_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ040 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ040
	 ADD CONSTRAINT aAQ040_BOT_fk FOREIGN KEY (BOT)
	 REFERENCES domains.BOT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ040 ALTER COLUMN BOT SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ040
	 ADD CONSTRAINT aAQ040_BSC_fk FOREIGN KEY (BSC)
	 REFERENCES domains.BSC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ040 ALTER COLUMN BSC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ040
	 ADD CONSTRAINT aAQ040_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ040 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ040
	 ADD CONSTRAINT aAQ040_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ040 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAQ040
	 ADD CONSTRAINT aAQ040_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAQ040 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lDB010(
	 id serial NOT NULL,
	 NFI varchar(255),
	 NFN varchar(255),
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lDB010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lDB010_geom ON mgcp.lDB010 USING gist (geom);

ALTER TABLE mgcp.lDB010
	 ADD CONSTRAINT lDB010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lDB010
	 ADD CONSTRAINT lDB010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lDB010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAL070(
	 id serial NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAL070_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAL070_geom ON mgcp.lAL070 USING gist (geom);

ALTER TABLE mgcp.lAL070
	 ADD CONSTRAINT lAL070_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL070 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAL070
	 ADD CONSTRAINT lAL070_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL070 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lAL260(
	 id serial NOT NULL,
	 WID real,
	 MCC smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lAL260_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lAL260_geom ON mgcp.lAL260 USING gist (geom);

ALTER TABLE mgcp.lAL260
	 ADD CONSTRAINT lAL260_MCC_fk FOREIGN KEY (MCC)
	 REFERENCES domains.MCC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL260 ALTER COLUMN MCC SET DEFAULT 9999;

ALTER TABLE mgcp.lAL260
	 ADD CONSTRAINT lAL260_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL260 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lAL260
	 ADD CONSTRAINT lAL260_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lAL260 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pBH010(
	 id serial NOT NULL,
	 ATC smallint NOT NULL,
	 FUN smallint NOT NULL,
	 LEN real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pBH010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pBH010_geom ON mgcp.pBH010 USING gist (geom);

ALTER TABLE mgcp.pBH010
	 ADD CONSTRAINT pBH010_ATC_fk FOREIGN KEY (ATC)
	 REFERENCES domains.ATC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH010 ALTER COLUMN ATC SET DEFAULT 9999;

ALTER TABLE mgcp.pBH010
	 ADD CONSTRAINT pBH010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pBH010
	 ADD CONSTRAINT pBH010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pBH010
	 ADD CONSTRAINT pBH010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pBH010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.lBH010(
	 id serial NOT NULL,
	 LOC smallint NOT NULL,
	 WID real,
	 NAM varchar(255),
	 NFI varchar(255),
	 CDA smallint NOT NULL,
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT lBH010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX lBH010_geom ON mgcp.lBH010 USING gist (geom);

ALTER TABLE mgcp.lBH010
	 ADD CONSTRAINT lBH010_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH010
	 ADD CONSTRAINT lBH010_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.lBH010 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH010
	 ADD CONSTRAINT lBH010_CDA_fk FOREIGN KEY (CDA)
	 REFERENCES domains.CDA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH010 ALTER COLUMN CDA SET DEFAULT 9999;

ALTER TABLE mgcp.lBH010
	 ADD CONSTRAINT lBH010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.lBH010
	 ADD CONSTRAINT lBH010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.lBH010
	 ADD CONSTRAINT lBH010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.lBH010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aBH010(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 NFN varchar(255),
	 NFI varchar(255),
	 LOC smallint NOT NULL,
	 CDA smallint NOT NULL,
	 NAM varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aBH010_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aBH010_geom ON mgcp.aBH010 USING gist (geom);

ALTER TABLE mgcp.aBH010
	 ADD CONSTRAINT aBH010_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH010 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aBH010
	 ADD CONSTRAINT aBH010_LOC_fk FOREIGN KEY (LOC)
	 REFERENCES domains.LOC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH010
	 ADD CONSTRAINT aBH010_LOC_check 
	 CHECK (LOC = ANY(ARRAY[0 :: SMALLINT, 40 :: SMALLINT, 44 :: SMALLINT, 45 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aBH010 ALTER COLUMN LOC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH010
	 ADD CONSTRAINT aBH010_CDA_fk FOREIGN KEY (CDA)
	 REFERENCES domains.CDA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH010 ALTER COLUMN CDA SET DEFAULT 9999;

ALTER TABLE mgcp.aBH010
	 ADD CONSTRAINT aBH010_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH010 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aBH010
	 ADD CONSTRAINT aBH010_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aBH010 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAM020(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAM020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAM020_geom ON mgcp.pAM020 USING gist (geom);

ALTER TABLE mgcp.pAM020
	 ADD CONSTRAINT pAM020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAM020
	 ADD CONSTRAINT pAM020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAM020
	 ADD CONSTRAINT pAM020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pAM030(
	 id serial NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pAM030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pAM030_geom ON mgcp.pAM030 USING gist (geom);

ALTER TABLE mgcp.pAM030
	 ADD CONSTRAINT pAM030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pAM030
	 ADD CONSTRAINT pAM030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pAM030
	 ADD CONSTRAINT pAM030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pAM030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAM020(
	 id serial NOT NULL,
	 VOI varchar(255),
	 HGT real,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAM020_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAM020_geom ON mgcp.aAM020 USING gist (geom);

ALTER TABLE mgcp.aAM020
	 ADD CONSTRAINT aAM020_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM020 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAM020
	 ADD CONSTRAINT aAM020_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM020 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM020
	 ADD CONSTRAINT aAM020_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM020 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aAM030(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 HGT real,
	 VOI varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aAM030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aAM030_geom ON mgcp.aAM030 USING gist (geom);

ALTER TABLE mgcp.aAM030
	 ADD CONSTRAINT aAM030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aAM030
	 ADD CONSTRAINT aAM030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aAM030
	 ADD CONSTRAINT aAM030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aAM030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pGB030(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 HAF smallint NOT NULL,
	 RST smallint NOT NULL,
	 ZVA real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pGB030_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pGB030_geom ON mgcp.pGB030 USING gist (geom);

ALTER TABLE mgcp.pGB030
	 ADD CONSTRAINT pGB030_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB030 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pGB030
	 ADD CONSTRAINT pGB030_HAF_fk FOREIGN KEY (HAF)
	 REFERENCES domains.HAF (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB030 ALTER COLUMN HAF SET DEFAULT 9999;

ALTER TABLE mgcp.pGB030
	 ADD CONSTRAINT pGB030_RST_fk FOREIGN KEY (RST)
	 REFERENCES domains.RST (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB030
	 ADD CONSTRAINT pGB030_RST_check 
	 CHECK (RST = ANY(ARRAY[0 :: SMALLINT, 1 :: SMALLINT, 2 :: SMALLINT, 5 :: SMALLINT, 6 :: SMALLINT, 999 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.pGB030 ALTER COLUMN RST SET DEFAULT 9999;

ALTER TABLE mgcp.pGB030
	 ADD CONSTRAINT pGB030_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB030 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pGB030
	 ADD CONSTRAINT pGB030_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB030 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pGB065(
	 id serial NOT NULL,
	 IKO varchar(255),
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 CAA smallint NOT NULL,
	 ZVA real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pGB065_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pGB065_geom ON mgcp.pGB065 USING gist (geom);

ALTER TABLE mgcp.pGB065
	 ADD CONSTRAINT pGB065_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB065 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pGB065
	 ADD CONSTRAINT pGB065_CAA_fk FOREIGN KEY (CAA)
	 REFERENCES domains.CAA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB065 ALTER COLUMN CAA SET DEFAULT 9999;

ALTER TABLE mgcp.pGB065
	 ADD CONSTRAINT pGB065_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB065 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pGB065
	 ADD CONSTRAINT pGB065_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB065 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.pGB230(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT pGB230_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX pGB230_geom ON mgcp.pGB230 USING gist (geom);

ALTER TABLE mgcp.pGB230
	 ADD CONSTRAINT pGB230_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB230 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.pGB230
	 ADD CONSTRAINT pGB230_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB230 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.pGB230
	 ADD CONSTRAINT pGB230_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.pGB230 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aGB005(
	 id serial NOT NULL,
	 CAA smallint NOT NULL,
	 COD smallint NOT NULL,
	 FPT smallint NOT NULL,
	 FUN smallint NOT NULL,
	 IKO varchar(255),
	 NAM varchar(255),
	 ZVA real,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aGB005_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aGB005_geom ON mgcp.aGB005 USING gist (geom);

ALTER TABLE mgcp.aGB005
	 ADD CONSTRAINT aGB005_CAA_fk FOREIGN KEY (CAA)
	 REFERENCES domains.CAA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB005 ALTER COLUMN CAA SET DEFAULT 9999;

ALTER TABLE mgcp.aGB005
	 ADD CONSTRAINT aGB005_COD_fk FOREIGN KEY (COD)
	 REFERENCES domains.COD (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB005
	 ADD CONSTRAINT aGB005_COD_check 
	 CHECK (COD = ANY(ARRAY[1000 :: SMALLINT, 1001 :: SMALLINT, 9999 :: SMALLINT])); 
ALTER TABLE mgcp.aGB005 ALTER COLUMN COD SET DEFAULT 9999;

ALTER TABLE mgcp.aGB005
	 ADD CONSTRAINT aGB005_FPT_fk FOREIGN KEY (FPT)
	 REFERENCES domains.FPT (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB005 ALTER COLUMN FPT SET DEFAULT 9999;

ALTER TABLE mgcp.aGB005
	 ADD CONSTRAINT aGB005_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB005 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aGB005
	 ADD CONSTRAINT aGB005_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB005 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aGB005
	 ADD CONSTRAINT aGB005_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB005 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aGB035(
	 id serial NOT NULL,
	 CAA smallint NOT NULL,
	 ZVA real,
	 NAM varchar(255),
	 FUN smallint NOT NULL,
	 IKO varchar(255),
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aGB035_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aGB035_geom ON mgcp.aGB035 USING gist (geom);

ALTER TABLE mgcp.aGB035
	 ADD CONSTRAINT aGB035_CAA_fk FOREIGN KEY (CAA)
	 REFERENCES domains.CAA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB035 ALTER COLUMN CAA SET DEFAULT 9999;

ALTER TABLE mgcp.aGB035
	 ADD CONSTRAINT aGB035_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB035 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aGB035
	 ADD CONSTRAINT aGB035_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB035 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aGB035
	 ADD CONSTRAINT aGB035_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB035 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aGB065(
	 id serial NOT NULL,
	 ZVA real,
	 NAM varchar(255),
	 IKO varchar(255),
	 CAA smallint NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aGB065_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aGB065_geom ON mgcp.aGB065 USING gist (geom);

ALTER TABLE mgcp.aGB065
	 ADD CONSTRAINT aGB065_CAA_fk FOREIGN KEY (CAA)
	 REFERENCES domains.CAA (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB065 ALTER COLUMN CAA SET DEFAULT 9999;

ALTER TABLE mgcp.aGB065
	 ADD CONSTRAINT aGB065_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB065 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aGB065
	 ADD CONSTRAINT aGB065_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB065 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aGB065
	 ADD CONSTRAINT aGB065_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB065 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aGB230(
	 id serial NOT NULL,
	 FUN smallint NOT NULL,
	 ACC smallint NOT NULL,
	 CCN varchar(255),
	 SDV varchar(255),
	 SDP varchar(255),
	 SRT smallint NOT NULL,
	 TXT varchar(255),
	 UID varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT aGB230_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aGB230_geom ON mgcp.aGB230 USING gist (geom);

ALTER TABLE mgcp.aGB230
	 ADD CONSTRAINT aGB230_FUN_fk FOREIGN KEY (FUN)
	 REFERENCES domains.FUN (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB230 ALTER COLUMN FUN SET DEFAULT 9999;

ALTER TABLE mgcp.aGB230
	 ADD CONSTRAINT aGB230_ACC_fk FOREIGN KEY (ACC)
	 REFERENCES domains.MGCP_ACC (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB230 ALTER COLUMN ACC SET DEFAULT 9999;

ALTER TABLE mgcp.aGB230
	 ADD CONSTRAINT aGB230_SRT_fk FOREIGN KEY (SRT)
	 REFERENCES domains.MD_SOURCE (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aGB230 ALTER COLUMN SRT SET DEFAULT 9999;

CREATE TABLE mgcp.aquisicao_limite_vegetacao_l(
	 id serial NOT NULL,
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT aquisicao_limite_vegetacao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_limite_vegetacao_l_geom ON mgcp.aquisicao_limite_vegetacao_l USING gist (geom);

CREATE TABLE mgcp.aquisicao_centroide_vegetacao_p(
	 id serial NOT NULL,
	 tipo smallint NOT NULL,
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT aquisicao_centroide_vegetacao_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_centroide_vegetacao_p_geom ON mgcp.aquisicao_centroide_vegetacao_p USING gist (geom);

ALTER TABLE mgcp.aquisicao_centroide_vegetacao_p
	 ADD CONSTRAINT aquisicao_centroide_vegetacao_p_tipo_fk FOREIGN KEY (tipo)
	 REFERENCES domains.tipo_veg (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.aquisicao_centroide_vegetacao_p ALTER COLUMN tipo SET DEFAULT 9999;

CREATE TABLE mgcp.val_transportes_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT val_transportes_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_transportes_a_geom ON mgcp.val_transportes_a USING gist (geom);

CREATE TABLE mgcp.val_transportes_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT val_transportes_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_transportes_l_geom ON mgcp.val_transportes_l USING gist (geom);

CREATE TABLE mgcp.val_transportes_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT val_transportes_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_transportes_p_geom ON mgcp.val_transportes_p USING gist (geom);

CREATE TABLE mgcp.val_hidrografia_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT val_hidrografia_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_hidrografia_a_geom ON mgcp.val_hidrografia_a USING gist (geom);

CREATE TABLE mgcp.val_hidrografia_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT val_hidrografia_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_hidrografia_l_geom ON mgcp.val_hidrografia_l USING gist (geom);

CREATE TABLE mgcp.val_hidrografia_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT val_hidrografia_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_hidrografia_p_geom ON mgcp.val_hidrografia_p USING gist (geom);

CREATE TABLE mgcp.val_edificacao_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT val_edificacao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_edificacao_a_geom ON mgcp.val_edificacao_a USING gist (geom);

CREATE TABLE mgcp.val_edificacao_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT val_edificacao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_edificacao_l_geom ON mgcp.val_edificacao_l USING gist (geom);

CREATE TABLE mgcp.val_edificacao_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT val_edificacao_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_edificacao_p_geom ON mgcp.val_edificacao_p USING gist (geom);

CREATE TABLE mgcp.val_vegetacao_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT val_vegetacao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_vegetacao_a_geom ON mgcp.val_vegetacao_a USING gist (geom);

CREATE TABLE mgcp.val_vegetacao_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT val_vegetacao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_vegetacao_l_geom ON mgcp.val_vegetacao_l USING gist (geom);

CREATE TABLE mgcp.val_vegetacao_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT val_vegetacao_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX val_vegetacao_p_geom ON mgcp.val_vegetacao_p USING gist (geom);

CREATE TABLE mgcp.rev_vegetacao_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT rev_vegetacao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_vegetacao_a_geom ON mgcp.rev_vegetacao_a USING gist (geom);

ALTER TABLE mgcp.rev_vegetacao_a
	 ADD CONSTRAINT rev_vegetacao_a_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_vegetacao_a ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_vegetacao_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT rev_vegetacao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_vegetacao_l_geom ON mgcp.rev_vegetacao_l USING gist (geom);

ALTER TABLE mgcp.rev_vegetacao_l
	 ADD CONSTRAINT rev_vegetacao_l_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_vegetacao_l ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_vegetacao_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT rev_vegetacao_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_vegetacao_p_geom ON mgcp.rev_vegetacao_p USING gist (geom);

ALTER TABLE mgcp.rev_vegetacao_p
	 ADD CONSTRAINT rev_vegetacao_p_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_vegetacao_p ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_edificacao_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT rev_edificacao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_edificacao_a_geom ON mgcp.rev_edificacao_a USING gist (geom);

ALTER TABLE mgcp.rev_edificacao_a
	 ADD CONSTRAINT rev_edificacao_a_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_edificacao_a ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_edificacao_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT rev_edificacao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_edificacao_l_geom ON mgcp.rev_edificacao_l USING gist (geom);

ALTER TABLE mgcp.rev_edificacao_l
	 ADD CONSTRAINT rev_edificacao_l_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_edificacao_l ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_edificacao_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT rev_edificacao_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_edificacao_p_geom ON mgcp.rev_edificacao_p USING gist (geom);

ALTER TABLE mgcp.rev_edificacao_p
	 ADD CONSTRAINT rev_edificacao_p_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_edificacao_p ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_transportes_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT rev_transportes_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_transportes_a_geom ON mgcp.rev_transportes_a USING gist (geom);

ALTER TABLE mgcp.rev_transportes_a
	 ADD CONSTRAINT rev_transportes_a_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_transportes_a ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_transportes_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT rev_transportes_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_transportes_l_geom ON mgcp.rev_transportes_l USING gist (geom);

ALTER TABLE mgcp.rev_transportes_l
	 ADD CONSTRAINT rev_transportes_l_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_transportes_l ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_transportes_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT rev_transportes_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_transportes_p_geom ON mgcp.rev_transportes_p USING gist (geom);

ALTER TABLE mgcp.rev_transportes_p
	 ADD CONSTRAINT rev_transportes_p_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_transportes_p ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_hidrografia_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiPolygon, 4326),
	 CONSTRAINT rev_hidrografia_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_hidrografia_a_geom ON mgcp.rev_hidrografia_a USING gist (geom);

ALTER TABLE mgcp.rev_hidrografia_a
	 ADD CONSTRAINT rev_hidrografia_a_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_hidrografia_a ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_hidrografia_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiLinestring, 4326),
	 CONSTRAINT rev_hidrografia_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_hidrografia_l_geom ON mgcp.rev_hidrografia_l USING gist (geom);

ALTER TABLE mgcp.rev_hidrografia_l
	 ADD CONSTRAINT rev_hidrografia_l_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_hidrografia_l ALTER COLUMN corrigido SET DEFAULT 9999;

CREATE TABLE mgcp.rev_hidrografia_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 geom geometry(MultiPoint, 4326),
	 CONSTRAINT rev_hidrografia_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_hidrografia_p_geom ON mgcp.rev_hidrografia_p USING gist (geom);

ALTER TABLE mgcp.rev_hidrografia_p
	 ADD CONSTRAINT rev_hidrografia_p_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES domains.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE mgcp.rev_hidrografia_p ALTER COLUMN corrigido SET DEFAULT 9999;
