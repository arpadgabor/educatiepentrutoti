-- Adminer 4.7.6 PostgreSQL dump

CREATE SEQUENCE articles_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START  CACHE 1;

CREATE TABLE "public"."articles" (
    "id" integer DEFAULT nextval('articles_id_seq') NOT NULL,
    "title" character varying(255) NOT NULL,
    "excerpt" character varying(255),
    "content" text,
    "slug" character varying(255),
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "articles_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "articles_slug_unique" UNIQUE ("slug")
) WITH (oids = false);


CREATE SEQUENCE attendees_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 75 CACHE 1;

CREATE TABLE "public"."attendees" (
    "id" integer DEFAULT nextval('attendees_id_seq') NOT NULL,
    "firstName" character varying(255),
    "lastName" character varying(255),
    "email" character varying(255),
    "phone" character varying(255),
    "facebook" character varying(255),
    "attended" boolean,
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "event" integer,
    CONSTRAINT "attendees_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "attendees" ("id", "firstName", "lastName", "email", "phone", "facebook", "attended", "created_at", "updated_at", "event") VALUES
(60,	'Andrei ',	'Flore',	'andrei.flore@lsfetc.ro',	'0744207057',	'https://www.facebook.com/flore.andrei.37',	'1',	'2020-05-04 12:15:40.259+00',	'2020-05-04 12:15:40.267+00',	1),
(51,	'Irina',	'Duma',	'irina@anosr.ro',	'0741206393',	NULL,	NULL,	'2020-05-02 10:06:08.419+00',	'2020-05-02 10:06:08.424+00',	3),
(33,	'Cosmin ',	'Diaconu',	'diaconu.cosmin2000@yahoo.com',	'0765357193',	NULL,	NULL,	'2020-04-30 14:04:28.703+00',	'2020-04-30 15:51:29.942+00',	1),
(17,	'Ioana',	'Tufar',	'ioanatufar@gmail.com',	'0765269787 ',	NULL,	'1',	'2020-04-25 08:00:31.471+00',	'2020-05-05 13:52:46.043+00',	2),
(16,	'Stefan',	'Cosmescu',	'cosmescustefanc@gmail.com',	'0754760187',	NULL,	NULL,	'2020-04-20 18:49:05.395+00',	'2020-04-20 18:49:05.404+00',	1),
(52,	'Catalina',	'Sava',	'cathysava@gmail.com',	'0721608489',	'sava catalina',	'1',	'2020-05-02 22:48:11.856+00',	'2020-05-05 13:52:46.043+00',	2),
(18,	'Marian',	'Padure',	'marian.padure@ubbcluj.ro',	'0723245385',	'https://www.facebook.com/paduremarian/',	'1',	'2020-04-28 00:02:21.133+00',	'2020-05-05 13:52:46.043+00',	2),
(20,	'Marian',	'Padure',	'marian.padure@ubbcluj.ro',	'0723245385',	'https://www.facebook.com/paduremarian/',	NULL,	'2020-04-28 00:02:56.222+00',	'2020-04-28 00:02:56.228+00',	1),
(22,	'Mihai',	'Lungu',	'mihai_muscel@yahoo.com',	'0722884238',	'https://www.facebook.com/mihai.muscel',	'1',	'2020-04-28 14:59:31.041+00',	'2020-04-29 08:43:11.036+00',	3),
(23,	'Irina-Cristiana',	'Ionete',	'irinaionete00@gmail.com',	'0735154898',	'https://m.facebook.com/irina.ionete.71',	NULL,	'2020-04-28 22:29:03.939+00',	'2020-04-28 22:29:03.946+00',	1),
(68,	'Sabina',	'Bucur',	'sabina.bucur@umfcd.ro',	'0758750980',	NULL,	'1',	'2020-05-05 10:43:37.619+00',	'2020-05-05 10:43:37.627+00',	3),
(19,	'Marian',	'Padure',	'marian.padure@ubbcluj.ro',	'0723245385',	'https://www.facebook.com/paduremarian/',	NULL,	'2020-04-28 00:02:41.545+00',	'2020-04-29 08:43:11.036+00',	3),
(25,	'Irina-Cristiana',	'Ionete',	'irinaionete00@gmail.com',	'0735154898',	'https://m.facebook.com/irina.ionete.71',	NULL,	'2020-04-28 22:29:39.48+00',	'2020-04-29 08:43:11.036+00',	3),
(34,	'Tamara',	'Ciobanu',	'tamara@anosr.ro',	'0724654840',	'',	NULL,	'2020-04-30 22:05:18.903+00',	'2020-05-01 08:23:01.185+00',	3),
(59,	'Vlad',	'Vătău',	'vlad.vatau@lsfetc.ro',	'0743041216',	'https://www.facebook.com/vlad.vatau/',	'1',	'2020-05-04 11:35:21.695+00',	'2020-05-04 11:35:21.702+00',	1),
(40,	'Raluca',	'Cărare',	'carare.raluca27@gmail.com',	'0728955544',	NULL,	NULL,	'2020-05-01 09:09:03.9+00',	'2020-05-01 09:09:03.912+00',	3),
(41,	'Cristina',	'Capăta ',	'cristina.capata9@gmail.com',	'0766526729',	'facebook.com/cristina.capata',	NULL,	'2020-05-01 09:09:06.701+00',	'2020-05-01 09:09:06.705+00',	1),
(42,	'Denisa',	'Pap',	'papdeni11@gmail.com',	'0766449377',	'-',	NULL,	'2020-05-01 12:35:26.301+00',	'2020-05-01 12:35:26.309+00',	1),
(44,	'Denisa',	'Pap',	'papdeni11@gmail.com',	'0766449377',	'-',	NULL,	'2020-05-01 12:36:31.934+00',	'2020-05-01 12:36:31.941+00',	3),
(45,	'Alexandru',	'Dărău',	'daraualexandru@gmail.com',	'0730819607',	'https://www.facebook.com/alex.darau',	NULL,	'2020-05-01 15:36:19.341+00',	'2020-05-01 15:36:19.349+00',	3),
(50,	'Irina',	'Duma',	'irina@anosr.ro',	'0741206393',	'',	'1',	'2020-05-02 10:05:50.472+00',	'2020-05-02 10:05:50.48+00',	1),
(62,	'Ruxandra',	'Blaga',	'ruxandramaria6@gmail.com',	'07534750810',	'https://www.facebook.com/ruxandrablaga',	'1',	'2020-05-04 13:13:05.415+00',	'2020-05-04 13:13:05.423+00',	1),
(49,	'Diana',	'Belc ',	'diana.belc99@gmail.com',	'0735566339',	NULL,	NULL,	'2020-05-02 09:41:44.617+00',	'2020-05-02 09:41:44.623+00',	3),
(54,	'Marcu Adrian',	'Berca',	'adrianhelpcenter@gmail.com',	'+40771350136',	'https://www.facebook.com/ady.berca/',	NULL,	'2020-05-04 01:18:29.687+00',	'2020-05-04 01:18:29.695+00',	1),
(46,	'Alexandru',	'Dărău',	'daraualexandru@gmail.com',	'0730819607',	'https://www.facebook.com/alex.darau',	'1',	'2020-05-01 15:36:58.563+00',	'2020-05-01 15:36:58.568+00',	1),
(37,	'Mihai',	'Lungu',	'mihai_muscel@yahoo.com',	'0722884238',	'https://www.facebook.com/mihai.muscel',	'1',	'2020-05-01 06:28:56.739+00',	'2020-05-01 06:28:56.745+00',	1),
(35,	'Tamara',	'Ciobanu',	'tamara@anosr.ro',	'0724654840',	NULL,	'1',	'2020-04-30 22:05:35.944+00',	'2020-04-30 22:05:35.951+00',	1),
(61,	'Andrea',	'Medrea',	'andrea.medrea@lsfetc.ro',	'0737048212',	'https://www.facebook.com/andrea.medrea.16',	'1',	'2020-05-04 12:42:59.375+00',	'2020-05-04 12:42:59.382+00',	1),
(63,	'Alina',	'Covaliuc',	'covaliucalina@yahoo.com',	'+40 (748) 531 895',	'',	NULL,	'2020-05-04 13:16:03.755+00',	'2020-05-04 13:45:07.935+00',	1),
(47,	'Diana',	'Belc ',	'diana.belc99@gmail.com',	'0735566339',	NULL,	'1',	'2020-05-02 09:40:46.554+00',	'2020-05-02 09:40:46.56+00',	1),
(32,	'Marta-Iozefina',	'Bencze',	'martaiozefina2011@gmail.com',	'0747919166',	'https://www.facebook.com/marta.iozefina',	'1',	'2020-04-30 13:59:23.269+00',	'2020-04-30 13:59:23.276+00',	1),
(57,	'Daniel',	'Marilă',	'daniel.marila@lsfetc.ro',	'0765073505',	NULL,	'1',	'2020-05-04 11:29:24.335+00',	'2020-05-04 11:29:24.343+00',	1),
(39,	'Raluca',	'Cărare',	'carare.raluca27@gmail.com',	'0728955544',	NULL,	'1',	'2020-05-01 09:06:20.164+00',	'2020-05-01 09:06:20.169+00',	1),
(24,	'Irina-Cristiana',	'Ionete',	'irinaionete00@gmail.com',	'0735154898',	'https://m.facebook.com/irina.ionete.71',	NULL,	'2020-04-28 22:29:23.971+00',	'2020-05-05 13:52:46.043+00',	2),
(26,	'Nuți ',	'Gălețeanu ',	'nutinine@gmail.com',	'0762456635',	NULL,	NULL,	'2020-04-29 11:52:01.53+00',	'2020-05-05 13:52:46.043+00',	2),
(27,	'Claudia',	'Roșu',	'rosu_c13@yahoo.com',	'0749650555',	NULL,	NULL,	'2020-04-29 12:30:54.8+00',	'2020-05-05 13:52:46.043+00',	2),
(28,	'Claudia ',	'Lungu',	'sue_claudy@yahoo.com',	'0754633374',	'https://www.facebook.com/claudia.ella8',	NULL,	'2020-04-29 12:31:37.78+00',	'2020-05-05 13:52:46.043+00',	2),
(29,	'Elisabeta',	'Stoica',	'shuxumu@yahoo.com',	'0754961656',	'Stoica Elisabeta',	NULL,	'2020-04-29 14:04:18.047+00',	'2020-05-05 13:52:46.043+00',	2),
(43,	'Denisa',	'Pap',	'papdeni11@gmail.com',	'0766449377',	'-',	NULL,	'2020-05-01 12:36:11.248+00',	'2020-05-05 13:52:46.043+00',	2),
(48,	'Diana',	'Belc ',	'diana.belc99@gmail.com',	'0735566339',	NULL,	NULL,	'2020-05-02 09:41:26.562+00',	'2020-05-05 13:52:46.043+00',	2),
(53,	'Lavinia',	'Jingaroiu',	'lavinia.jingaroiu@yahoo.com',	'0729170339',	'lavinia.jingaroiu@yahoo.com',	NULL,	'2020-05-03 17:50:01.727+00',	'2020-05-05 13:52:46.043+00',	2),
(70,	'Silvia',	'Denghel',	'Silviadenghel@gmail.comcom',	'0752484292',	'0752484292',	NULL,	'2020-05-05 12:15:11.475+00',	'2020-05-05 13:52:46.043+00',	2),
(72,	'Georgel',	'Crețu',	'cretugeorge08@gmail.com',	'0740651242',	NULL,	NULL,	'2020-05-05 13:02:54.049+00',	'2020-05-05 13:52:46.043+00',	2),
(56,	'Radu',	'Catana',	'catana.radu1999@gmail.com',	'0770207278',	'https://m.facebook.com/radu.catana.31',	'1',	'2020-05-04 07:57:52.635+00',	'2020-05-05 13:52:46.043+00',	2),
(69,	'Carolina',	'Verok',	'verokcarolina@gmail.com',	'0725778858',	NULL,	'1',	'2020-05-05 10:58:18.208+00',	'2020-05-05 13:52:46.043+00',	2),
(55,	'cristian',	'chiratcu ',	'chiratcu.cristi18@gmail.com',	'0748962842',	'nu am',	'1',	'2020-05-04 07:53:37.311+00',	'2020-05-05 13:52:46.043+00',	2),
(74,	'Lavinia',	'Chitu',	'marialavinia_chitu@yahoo.com',	'0752373391',	'233715',	'1',	'2020-05-05 13:54:00.399+00',	'2020-05-05 13:54:00.405+00',	2),
(71,	'Daniel',	'Lolici',	'lolicidaniel10@gmail.com',	'0742117035',	'Lolici Daniel',	'1',	'2020-05-05 13:02:22.795+00',	'2020-05-05 13:52:46.043+00',	2),
(73,	'Andrei Cristian',	'Spanachi',	'wx_andrew_xw@yahoo.com',	'0725 768 661',	'https://www.facebook.com/iSpanchrs',	'1',	'2020-05-05 13:49:00.451+00',	'2020-05-05 13:52:46.043+00',	2),
(64,	'Alina',	'Covaliuc',	'covaliucalina@yahoo.com',	'+40 (748) 531 895',	NULL,	'1',	'2020-05-04 13:17:56.128+00',	'2020-05-05 13:52:46.043+00',	2),
(58,	'Cristina ',	'Ciubotaru ',	'cristina.ciubotaru@umfcd.ro',	'0746098010',	NULL,	'1',	'2020-05-04 11:32:11.483+00',	'2020-05-05 13:52:46.043+00',	2),
(38,	'Raluca',	'Cărare',	'carare.raluca27@gmail.com',	'0728955544',	NULL,	'1',	'2020-05-01 09:05:25.001+00',	'2020-05-05 13:52:46.043+00',	2),
(75,	'Mihai',	'Lungu',	'',	'',	'',	'1',	'2020-04-29 12:31:37.78+00',	'2020-05-05 13:52:46.043+00',	2),
(30,	'Marinela',	'Axinte',	'iulynela@yahoo.com',	'0727 629 138 ',	'MariNela Axinte',	'1',	'2020-04-29 15:42:23.971+00',	'2020-05-05 13:52:46.043+00',	2),
(36,	'Tamara',	'Ciobanu',	'tamara@anosr.ro',	'0724654840',	NULL,	'1',	'2020-04-30 22:05:49.825+00',	'2020-05-05 13:52:46.043+00',	2),
(66,	'Gavrilă',	'Codruța ',	'gavrilacodruta@gmail.com',	'0745596780',	NULL,	'1',	'2020-05-04 19:01:28.864+00',	'2020-05-05 13:52:46.043+00',	2);

CREATE SEQUENCE attendees_events__events_attendees_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START  CACHE 1;

CREATE TABLE "public"."attendees_events__events_attendees" (
    "id" integer DEFAULT nextval('attendees_events__events_attendees_id_seq') NOT NULL,
    "attendee_id" integer,
    "event_id" integer,
    CONSTRAINT "attendees_events__events_attendees_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


CREATE SEQUENCE blogs_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 2 CACHE 1;

CREATE TABLE "public"."blogs" (
    "id" integer DEFAULT nextval('blogs_id_seq') NOT NULL,
    "headline" character varying(255) NOT NULL,
    "excerpt" character varying(255) NOT NULL,
    "content" text,
    "slug" character varying(255) NOT NULL,
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "category" integer,
    CONSTRAINT "blogs_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "blogs_slug_unique" UNIQUE ("slug")
) WITH (oids = false);

INSERT INTO "blogs" ("id", "headline", "excerpt", "content", "slug", "created_at", "updated_at", "category") VALUES
(1,	'Cu ce se confruntă studenții cu dizabilități locomotorii?',	'Accesul în instituții, săli de cursuri sau seminarii, cărți electronice, sunt doar câteva din problemele cu care se confruntă.',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat massa justo, hendrerit consequat purus scelerisque pharetra. Mauris convallis convallis varius. Donec tempus lacinia odio, posuere rutrum justo pretium vehicula. Phasellus in felis dui. Maecenas eleifend sit amet nulla ac blandit. In eu velit et sem viverra tempus. Vivamus sem mi, egestas sed dictum in, finibus at eros. Nulla libero quam, luctus vel volutpat vel, porta quis nibh. In fringilla suscipit lectus eget aliquet.

# Lorem ipsum dolor sit amet

Mauris nulla quam, rutrum quis porttitor non, lobortis at tellus. Integer ullamcorper, leo non varius pretium, lacus ligula convallis libero, vitae molestie ipsum elit id dui. Sed ut convallis magna, in blandit diam. Sed pharetra magna sit amet ex accumsan aliquet. Etiam quis ornare lorem. Suspendisse nec urna vel nunc interdum lobortis at eu velit. Nulla ultrices, sapien quis finibus pharetra, dolor velit ullamcorper lectus, vel elementum purus lacus in libero. Etiam ac diam quis magna tempor ornare eget ut sapien. Integer maximus fermentum libero, non tincidunt elit vehicula quis. Praesent tempor ipsum nec fringilla scelerisque. Aenean porttitor odio porttitor mauris tincidunt faucibus.

Nam vitae feugiat nisi, ut mollis magna. Ut molestie fringilla mi et tristique. Aliquam vitae odio vitae ante eleifend volutpat. Maecenas massa quam, venenatis vitae fermentum in, malesuada in magna. Vivamus ultrices, ex sit amet gravida mattis, enim quam interdum orci, vitae congue augue mi vitae nisi. Duis luctus finibus diam at finibus. Nam luctus sit amet orci eget sodales. Nunc et pellentesque nibh. Aenean vitae blandit ante. Nullam porta lectus ut odio rutrum mollis.

Generated 3 paragraphs, 252 words, 1670 bytes of [Lorem Ipsum](https://www.lipsum.com/feed/html).',	'cu-ce-se-confrunta-studentii-cu-dizabilitati-locomotorii',	'2020-05-09 11:11:34.4+00',	'2020-05-09 11:11:34.412+00',	1),
(2,	'Un alt articol super blanao',	'Si aici este o descriere si mai blanao',	'# The standard Lorem Ipsum passage, used since the 1500s

"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

# Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC

"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. 

1. Lorem
    * Dolor sit amet
    * voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia
2. Ipsum de Finibus Bonorum et Malorum

Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"

## 1914 translation by H. Rackham

"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"

![Imagine de exemplu](https://images.unsplash.com/photo-1587613991394-51450cb21333?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80)',	'un-alt-articol-super-blanao',	'2020-05-09 14:08:59.655+00',	'2020-05-09 14:31:10.397+00',	2);

CREATE SEQUENCE categories_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 3 CACHE 1;

CREATE TABLE "public"."categories" (
    "id" integer DEFAULT nextval('categories_id_seq') NOT NULL,
    "name" character varying(255) NOT NULL,
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "categories_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "categories" ("id", "name", "created_at", "updated_at") VALUES
(1,	'Concluzii',	'2020-05-09 11:01:52.692+00',	'2020-05-09 11:01:52.692+00'),
(2,	'Anunț',	'2020-05-09 11:02:01.471+00',	'2020-05-09 11:04:01.888+00'),
(3,	'Articol',	'2020-05-09 11:04:19.421+00',	'2020-05-09 11:04:19.421+00');

CREATE SEQUENCE core_store_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 59 CACHE 1;

CREATE TABLE "public"."core_store" (
    "id" integer DEFAULT nextval('core_store_id_seq') NOT NULL,
    "key" character varying(255),
    "value" text,
    "type" character varying(255),
    "environment" character varying(255),
    "tag" character varying(255),
    CONSTRAINT "core_store_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "core_store" ("id", "key", "value", "type", "environment", "tag") VALUES
(1,	'db_model_users-permissions_permission',	'{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false}}',	'object',	NULL,	NULL),
(2,	'db_model_strapi_webhooks',	'{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}',	'object',	NULL,	NULL),
(3,	'db_model_core_store',	'{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}',	'object',	NULL,	NULL),
(5,	'db_model_strapi_administrator',	'{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"required":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"blocked":{"type":"boolean","default":false,"configurable":false}}',	'object',	NULL,	NULL),
(6,	'db_model_users-permissions_role',	'{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true}}',	'object',	NULL,	NULL),
(7,	'db_model_users-permissions_user',	'{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(9,	'plugin_users-permissions_grant',	'{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","redirect_uri":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback"},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]}}',	'object',	'',	''),
(10,	'plugin_upload_provider',	'{"provider":"local","name":"Local server","enabled":true,"sizeLimit":1000000}',	'object',	'development',	''),
(11,	'plugin_email_provider',	'{"provider":"sendmail","name":"Sendmail","auth":{"sendmail_default_from":{"label":"Sendmail Default From","type":"text"},"sendmail_default_replyto":{"label":"Sendmail Default Reply-To","type":"text"}}}',	'object',	'development',	''),
(12,	'plugin_content_manager_configuration_content_types::plugins::users-permissions.role',	'{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}',	'object',	'',	''),
(8,	'db_model_upload_file_morph',	'{"upload_file_id":{"type":"integer"},"related_id":{"type":"integer"},"related_type":{"type":"text"},"field":{"type":"text"}}',	'object',	NULL,	NULL),
(15,	'plugin_content_manager_configuration_content_types::plugins::upload.file',	'{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"sha256":{"edit":{"label":"Sha256","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Sha256","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","hash","sha256"],"edit":[[{"name":"name","size":6},{"name":"hash","size":6}],[{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"sha256","size":6}]],"editRelations":["related"]}}',	'object',	'',	''),
(13,	'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission',	'{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}',	'object',	'',	''),
(14,	'plugin_content_manager_configuration_content_types::plugins::users-permissions.user',	'{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}',	'object',	'',	''),
(16,	'plugin_content_manager_configuration_content_types::strapi::administrator',	'{"uid":"strapi::administrator","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","blocked"],"editRelations":[],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"blocked","size":4}]]}}',	'object',	'',	''),
(17,	'plugin_users-permissions_email',	'{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\n\n<p>But don’t worry! You can use the following link to reset your password:</p>\n\n<p><%= URL %>?code=<%= TOKEN %></p>\n\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\n\n<p>You have to confirm your email address. Please click on the link below.</p>\n\n<p><%= URL %>?confirmation=<%= CODE %></p>\n\n<p>Thanks.</p>"}}}',	'object',	'',	''),
(18,	'plugin_users-permissions_advanced',	'{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_confirmation_redirection":"http://0.0.0.0:1337/admin","email_reset_password":"http://0.0.0.0:1337/admin","default_role":"authenticated"}',	'object',	'',	''),
(22,	'db_model_attendees_events__events_attendees',	'{"attendee_id":{"type":"integer"},"event_id":{"type":"integer"}}',	'object',	NULL,	NULL),
(24,	'db_model_settings',	'{"name":{"type":"string"},"value":{"type":"string"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(21,	'db_model_attendees',	'{"firstName":{"type":"string"},"lastName":{"type":"string"},"email":{"type":"email"},"phone":{"type":"string"},"facebook":{"type":"string"},"attended":{"type":"boolean","default":false},"event":{"via":"attendees","model":"events"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(28,	'db_model_partners',	'{"name":{"type":"string"},"URL":{"type":"text"},"category":{"type":"string"},"logo":{"model":"file","via":"related","plugin":"upload","required":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(30,	'db_model_articles',	'{"title":{"type":"string","required":true},"excerpt":{"type":"string"},"image":{"model":"file","via":"related","plugin":"upload","required":false},"content":{"type":"richtext"},"slug":{"type":"uid","targetField":"title"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(32,	'plugin_content_manager_configuration_content_types::application::events.events',	'{"uid":"application::events.events","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description_meta":{"edit":{"label":"Description_meta","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description_meta","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"showImage":{"edit":{"label":"ShowImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShowImage","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"location":{"edit":{"label":"Location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Location","searchable":true,"sortable":true}},"location_url":{"edit":{"label":"Location_url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Location_url","searchable":true,"sortable":true}},"attendees":{"edit":{"label":"Attendees","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstName"},"list":{"label":"Attendees","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description_meta","image"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"description_meta","size":6},{"name":"date","size":6}],[{"name":"location","size":6},{"name":"location_url","size":6}],[{"name":"description","size":12}],[{"name":"image","size":6},{"name":"showImage","size":4}]],"editRelations":["attendees"]}}',	'object',	'',	''),
(26,	'db_model_subscribers',	'{"email":{"type":"email"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(33,	'plugin_content_manager_configuration_content_types::application::subscribers.subscribers',	'{"uid":"application::subscribers.subscribers","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"email","size":6}]]}}',	'object',	'',	''),
(37,	'plugin_content_manager_configuration_content_types::application::meta.meta',	'{"uid":"application::meta.meta","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"path","defaultSortBy":"path","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Path","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","path","description","title"],"editRelations":[],"edit":[[{"name":"path","size":6},{"name":"description","size":6}],[{"name":"title","size":6},{"name":"image","size":6}]]}}',	'object',	'',	''),
(38,	'db_model_one_signal_hooks',	'{"event":{"type":"string"},"userId":{"type":"string"},"heading":{"type":"string"},"content":{"type":"string"},"url":{"type":"string"},"data":{"type":"json"},"action":{"type":"string"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(40,	'db_model_pages',	'{"title":{"type":"string"},"description_meta":{"type":"string"},"content":{"type":"richtext"},"image":{"model":"file","via":"related","plugin":"upload","required":false},"showImage":{"type":"boolean"},"slug":{"type":"uid","targetField":"title"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(36,	'db_model_metas',	'{"path":{"type":"string"},"description":{"type":"string"},"title":{"type":"string"},"image":{"model":"file","via":"related","plugin":"upload","required":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(19,	'db_model_events',	'{"name":{"type":"string"},"description_meta":{"type":"string","required":true,"default":"Description that will appear in Facebook preview"},"description":{"type":"richtext","default":"This uses markdown, check out Wikipedia to see more: https://en.wikipedia.org/wiki/Markdown#Example"},"image":{"model":"file","via":"related","plugin":"upload","required":false},"showImage":{"type":"boolean","default":true},"slug":{"type":"uid","targetField":"name"},"date":{"type":"datetime","required":true},"location":{"type":"string","default":"not required, but delete this"},"location_url":{"type":"string","default":"same as <location>"},"attendees":{"collection":"attendees","via":"event","isVirtual":true},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(41,	'plugin_content_manager_configuration_content_types::application::pages.pages',	'{"uid":"application::pages.pages","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description_meta":{"edit":{"label":"Description_meta","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description_meta","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"showImage":{"edit":{"label":"ShowImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShowImage","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description_meta","image"],"editRelations":[],"edit":[[{"name":"title","size":6},{"name":"description_meta","size":6}],[{"name":"content","size":12}],[{"name":"image","size":6},{"name":"showImage","size":4}],[{"name":"slug","size":6}]]}}',	'object',	'',	''),
(42,	'plugin_email_provider',	'{"provider":"sendmail","name":"Sendmail","auth":{"sendmail_default_from":{"label":"Sendmail Default From","type":"text"},"sendmail_default_replyto":{"label":"Sendmail Default Reply-To","type":"text"}}}',	'object',	'production',	''),
(43,	'plugin_email_provider',	'{"provider":"sendmail","name":"Sendmail","auth":{"sendmail_default_from":{"label":"Sendmail Default From","type":"text"},"sendmail_default_replyto":{"label":"Sendmail Default Reply-To","type":"text"}}}',	'object',	'staging',	''),
(34,	'plugin_content_manager_configuration_content_types::application::attendees.attendees',	'{"uid":"application::attendees.attendees","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":20,"mainField":"firstName","defaultSortBy":"created_at","defaultSortOrder":"DESC"},"metadatas":{"lastName":{"edit":{"label":"LastName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LastName","searchable":true,"sortable":true}},"facebook":{"edit":{"label":"Facebook","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Facebook","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"phone":{"edit":{"label":"Phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Phone","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}},"attended":{"edit":{"label":"Attended","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Attended","searchable":true,"sortable":true}},"event":{"edit":{"label":"Event","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Event","searchable":false,"sortable":false}},"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstName":{"edit":{"label":"FirstName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FirstName","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}}},"layouts":{"list":["created_at","firstName","lastName","email","phone"],"edit":[[{"name":"firstName","size":6},{"name":"lastName","size":6}],[{"name":"email","size":6},{"name":"phone","size":6}],[{"name":"facebook","size":6},{"name":"attended","size":4}]],"editRelations":["event"]}}',	'object',	'',	''),
(49,	'db_model_blogs',	'{"headline":{"type":"string","required":true},"excerpt":{"type":"string","required":true},"content":{"type":"richtext"},"image":{"model":"file","via":"related","plugin":"upload","required":false},"slug":{"type":"uid","targetField":"headline","required":true},"category":{"via":"blogs","model":"category"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(44,	'plugin_documentation_config',	'{"restrictedAccess":true,"password":"$2a$10$HQhcshKag00dvRpiU1LhReMe4MfhiuvxCIk8s9K00wPaGeHWiYWd2"}',	'object',	'',	''),
(46,	'plugin_content_manager_configuration_content_types::application::redirects.redirects',	'{"uid":"application::redirects.redirects","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"path","defaultSortBy":"path","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Path","searchable":true,"sortable":true}},"destination":{"edit":{"label":"Destination","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Destination","searchable":true,"sortable":true}},"views":{"edit":{"label":"Views","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Views","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","path","destination","views"],"editRelations":[],"edit":[[{"name":"path","size":6},{"name":"destination","size":6}],[{"name":"views","size":4}]]}}',	'object',	'',	''),
(47,	'db_model_navigations',	'{"text":{"type":"string","required":true},"path":{"type":"string","required":true},"enabled":{"type":"boolean","default":false,"required":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(45,	'db_model_redirects',	'{"path":{"type":"string","required":true,"unique":true},"destination":{"type":"string","required":true},"views":{"type":"integer","default":0},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(51,	'db_model_categories',	'{"name":{"type":"string","required":true},"blogs":{"collection":"blog","via":"category","isVirtual":true},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(50,	'plugin_content_manager_configuration_content_types::application::blog.blog',	'{"uid":"application::blog.blog","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"headline","defaultSortBy":"headline","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"headline":{"edit":{"label":"Headline","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Headline","searchable":true,"sortable":true}},"excerpt":{"edit":{"label":"Excerpt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Excerpt","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Category","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","headline","excerpt","image"],"edit":[[{"name":"headline","size":6},{"name":"excerpt","size":6}],[{"name":"content","size":12}],[{"name":"image","size":6},{"name":"slug","size":6}]],"editRelations":["category"]}}',	'object',	'',	''),
(53,	'db_model_messages',	'{"email":{"type":"email","required":true},"fullName":{"type":"string"},"message":{"type":"text","required":true},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(54,	'plugin_content_manager_configuration_content_types::application::messages.messages',	'{"uid":"application::messages.messages","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"fullName","defaultSortBy":"fullName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"fullName":{"edit":{"label":"FullName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FullName","searchable":true,"sortable":true}},"message":{"edit":{"label":"Message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Message","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","fullName","message"],"editRelations":[],"edit":[[{"name":"email","size":6},{"name":"fullName","size":6}],[{"name":"message","size":6}]]}}',	'object',	'',	''),
(55,	'plugin_upload_settings',	'{"sizeOptimization":true,"responsiveDimensions":true}',	'object',	'production',	''),
(4,	'db_model_upload_file',	'{"name":{"type":"string","configurable":false,"required":true},"hash":{"type":"string","configurable":false,"required":true},"sha256":{"type":"string","configurable":false},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}',	'object',	NULL,	NULL),
(58,	'plugin_content_manager_configuration_content_types::application::navigations.navigations',	'{"uid":"application::navigations.navigations","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Path","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","path","enabled"],"editRelations":[],"edit":[[{"name":"text","size":6},{"name":"path","size":6}],[{"name":"enabled","size":4}]]}}',	'object',	'',	''),
(59,	'plugin_content_manager_configuration_content_types::application::category.category',	'{"uid":"application::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"blogs":{"edit":{"label":"Blogs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"headline"},"list":{"label":"Blogs","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"editRelations":["blogs"],"edit":[[{"name":"name","size":6}]]}}',	'object',	'',	'');

CREATE SEQUENCE events_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 3 CACHE 1;

CREATE TABLE "public"."events" (
    "id" integer DEFAULT nextval('events_id_seq') NOT NULL,
    "name" character varying(255),
    "description_meta" character varying(255) NOT NULL,
    "description" text,
    "date" timestamptz NOT NULL,
    "showImage" boolean,
    "location" character varying(255),
    "location_url" character varying(255),
    "slug" character varying(255),
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "events_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "events_slug_unique" UNIQUE ("slug")
) WITH (oids = false);

INSERT INTO "events" ("id", "name", "description_meta", "description", "date", "showImage", "location", "location_url", "slug", "created_at", "updated_at") VALUES
(3,	'Consultare online - dizabilități vizuale',	'Consultare online - universități accesibile pentru dizabilități vizuale',	'Te invităm la o discuție legată de adaptările pe care universitatea ta le-a făcut sau ar trebui să le facă pentru primirea studenților cu dizabilități **`vizuale`** cu brațele deschise! 🤗 

Deși suntem izolați la domiciliu în această perioadă, nu ne oprește nimic să fim în continuare uniți și productivi, având mediul online de partea noastră. 💻

Acum, mai mult ca oricând, avem suficient timp pe care-l putem investi în schimbările pe care ni le dorim cu toții cu privire la integrarea persoanelor cu dizabilități în mediul educațional. 📚

Observațiile tale cu privire la provocările cu care se confruntă acești studenți ne pot ajuta să luăm măsurile necesare pentru a sprijini accesul la procesul educațional al persoanelor cu dizabilități într-un mod echitabil. 🗣⚖️

Pentru a ni te alătura, ai nevoie de o conexiune stabilă la Internet și de o pereche de căști. De restul ne ocupăm noi! 😉',	'2020-05-06 14:00:00+00',	'1',	'',	'',	'consultare-online-dizabilitati-vizuale',	'2020-04-20 16:06:44.644+00',	'2020-04-20 17:23:28.094+00'),
(1,	'Consultare online - dizabilități locomotorii',	'Consultări online cu studenți cu tematica dizabilităților locomotorii în educație',	'Te invităm la o discuție legată de adaptările pe care universitatea ta le-a făcut sau ar trebui să le facă pentru primirea studenților cu dizabilități **`locomotorii`** cu brațele deschise! 🤗 

Deși suntem izolați la domiciliu în această perioadă, nu ne oprește nimic să fim în continuare uniți și productivi, având mediul online de partea noastră. 💻

Acum, mai mult ca oricând, avem suficient timp pe care-l putem investi în schimbările pe care ni le dorim cu toții cu privire la integrarea persoanelor cu dizabilități în mediul educațional. 📚

Observațiile tale cu privire la provocările cu care se confruntă acești studenți ne pot ajuta să luăm măsurile necesare pentru a sprijini accesul la procesul educațional al persoanelor cu dizabilități într-un mod echitabil. 🗣⚖️

Pentru a ni te alătura, ai nevoie de o conexiune stabilă la Internet și de o pereche de căști. De restul ne ocupăm noi! 😉',	'2020-05-04 14:00:00+00',	'1',	'',	'',	'consultare-cu-studenti-despre-dizabilitati-locomotorii',	'2020-04-12 12:48:01.029+00',	'2020-04-20 17:22:57.491+00'),
(2,	'Consultare online - dizabilități auditive',	'Consultare online - universități accesibile pentru dizabilități auditive',	'Te invităm la o discuție legată de adaptările pe care universitatea ta le-a făcut sau ar trebui să le facă pentru primirea studenților cu dizabilități **`auditive`** cu brațele deschise! 🤗 

Deși suntem izolați la domiciliu în această perioadă, nu ne oprește nimic să fim în continuare uniți și productivi, având mediul online de partea noastră. 💻

Acum, mai mult ca oricând, avem suficient timp pe care-l putem investi în schimbările pe care ni le dorim cu toții cu privire la integrarea persoanelor cu dizabilități în mediul educațional. 📚

Observațiile tale cu privire la provocările cu care se confruntă acești studenți ne pot ajuta să luăm măsurile necesare pentru a sprijini accesul la procesul educațional al persoanelor cu dizabilități într-un mod echitabil. 🗣⚖️

Pentru a ni te alătura, ai nevoie de o conexiune stabilă la Internet și de o pereche de căști. De restul ne ocupăm noi! 😉',	'2020-05-05 14:00:00+00',	'1',	'',	'',	'consultare-online-dizabilitati-auditive',	'2020-04-20 16:05:41.706+00',	'2020-04-20 17:23:18.246+00');

CREATE SEQUENCE messages_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 3 CACHE 1;

CREATE TABLE "public"."messages" (
    "id" integer DEFAULT nextval('messages_id_seq') NOT NULL,
    "email" character varying(255) NOT NULL,
    "fullName" character varying(255),
    "message" text NOT NULL,
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "messages_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


CREATE SEQUENCE metas_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 4 CACHE 1;

CREATE TABLE "public"."metas" (
    "id" integer DEFAULT nextval('metas_id_seq') NOT NULL,
    "path" character varying(255),
    "description" character varying(255),
    "title" character varying(255),
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "metas_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "metas" ("id", "path", "description", "title", "created_at", "updated_at") VALUES
(1,	'/home',	'Un proiect dedicat persoanelor cu dizabilități. Accesiblitatea e problema, nu dizabilitatea.',	'Educație pentru toți',	'2020-04-12 23:19:40.929+00',	'2020-05-09 16:03:03.332+00'),
(2,	'/events',	'Evenimentele nostre, trecute și viitoare.',	'Evenimente | Educație pentru toți',	'2020-04-12 23:20:19.925+00',	'2020-05-09 16:03:13.75+00'),
(4,	'/contact',	'Contactează echipa Educație pentru toți!',	'Contact | Educație pentru toți',	'2020-05-09 16:08:40.235+00',	'2020-05-09 16:08:40.235+00'),
(3,	'/blog',	'Urmărește evoluția proiectului pe blog-ul nostru!',	'Blog | Educație pentru toți',	'2020-05-09 14:12:34.595+00',	'2020-05-09 16:02:52.548+00');

CREATE SEQUENCE navigations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 5 CACHE 1;

CREATE TABLE "public"."navigations" (
    "id" integer DEFAULT nextval('navigations_id_seq') NOT NULL,
    "text" character varying(255) NOT NULL,
    "path" character varying(255) NOT NULL,
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "enabled" boolean,
    CONSTRAINT "navigations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "navigations" ("id", "text", "path", "created_at", "updated_at", "enabled") VALUES
(1,	'Acasă',	'/',	'2020-05-04 19:34:01.133+00',	'2020-05-09 14:38:38.317+00',	'1'),
(2,	'Evenimente',	'/events?utm_source=website&utm_medium=navigation&utm_campaign=general',	'2020-05-04 19:34:29.607+00',	'2020-05-09 14:38:41.051+00',	'1'),
(4,	'Blog',	'/blog',	'2020-05-09 15:44:50.471+00',	'2020-05-09 15:44:50.471+00',	'0'),
(5,	'Contact',	'/contact',	'2020-05-09 15:44:58.275+00',	'2020-05-09 15:44:58.275+00',	'0');

CREATE SEQUENCE one_signal_hooks_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 4 CACHE 1;

CREATE TABLE "public"."one_signal_hooks" (
    "id" integer DEFAULT nextval('one_signal_hooks_id_seq') NOT NULL,
    "event" character varying(255),
    "userId" character varying(255),
    "heading" character varying(255),
    "content" character varying(255),
    "url" character varying(255),
    "data" jsonb,
    "action" character varying(255),
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "one_signal_hooks_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "one_signal_hooks" ("id", "event", "userId", "heading", "content", "url", "data", "action", "created_at", "updated_at") VALUES
(4,	'notification.displayed',	'c1300e6f-09eb-46fe-ac1e-1fccfd246768',	'Consultare online - dizabilități auditive | Educație pentru Toți',	'Ne bucurăm că vrei să te implici!',	'https://educatiepentrutoti.ro/?_osp=do_not_open',	'{"__isOneSignalWelcomeNotification": true}',	NULL,	'2020-05-04 16:44:22.307+00',	'2020-05-04 16:44:22.307+00');

CREATE SEQUENCE pages_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 2 CACHE 1;

CREATE TABLE "public"."pages" (
    "id" integer DEFAULT nextval('pages_id_seq') NOT NULL,
    "title" character varying(255),
    "description_meta" character varying(255),
    "content" text,
    "showImage" boolean,
    "slug" character varying(255),
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "pages_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "pages_slug_unique" UNIQUE ("slug")
) WITH (oids = false);

INSERT INTO "pages" ("id", "title", "description_meta", "content", "showImage", "slug", "created_at", "updated_at") VALUES
(2,	'A short survey - Erasmus+',	'Help us figure out how to make life as a disabled person better.',	'***Educație pentru toți*** (in English "*Education for all*") is an initiative to promote equal access to higher education for people with **physical, visual and auditive disabilities**. Through this survey we aim to gather information about universities that offer infrastructure for students with these disabilities.

# [Complete our survey!](https://google.com)',	NULL,	'a-short-survey-erasmus',	'2020-05-03 16:12:14.554+00',	'2020-05-12 18:10:51.642+00'),
(1,	'Prelucrarea datelor cu caracter personal',	'Cum folosim datele cu caracter personal',	'```Ultima actualizare: 14 aprilie, 2020```

Ne bucurăm că dorești, la fel de mult ca noi, să ajuți comunitatea educațională a persoanelor cu dizabilități. Faptul că ne acorzi access la datele tale personale ne obligă să fim prudenți și vrem să te asigurăm că nu vom folosi datele tale în nici un alt scop decât cele menționate aici.

# Pe scurt

Proiectul „*Educație pentru toți*” este organizat de grupul de inițiativă „*Student pentru societate*” finanțat prin [Corpul European de Solidaritate](https://europa.eu/youth/solidarity_ro). Evenimentele noastre fiind finanțate din fonduri publice, suntem nevoiți să demonstrăm că evenimentele noastre chiar au avut loc, au avut participanți iar rezultatele au fost notate. Pentru a putea demonstra că evenimentele s-au întâmplat, avem nevoie de datele participanților de contact, care, dacă va fi cazul, vor putea atesta prezența lor la eveniment ca dovadă.

## Tipuri de date

În cadrul formularelor de înscriere la evenimente sunt necesare următoarele date personale:

- Nume;
- Prenume;
- Număr de telefon;
- Email.

În plus, este opțională adăugarea și unui link către contul dumneavoastră de Facebook.

## Prelucrarea datelor

Datele enunțate mai sus vor fi folosite exclusiv pentru contactarea voastră de către noi (organizatorii Educație pentru toți), dar și de către [ANPCDEFP](https://anpcdefp.ro/). De asemenea, datele dumneavoastră vor fi folosite pentru a întocmi liste de prezență la evenimentele desfășurate, pentru a putea demonstra că acestea într-adevăr s-au întâmplat.

## Stocarea datelor

Datele sunt stocate într-un server închiriat din Germania.

## Ștergerea datelor

Puteți cere oricând ștergerea datelor dumneavoastră din baza noastră de date. Ne puteți scrie pe [Facebook](https://www.facebook.com/educatiepentrutoti.ro/) sau, dacă nu veți dori să mai primiți mail-uri, în continuare, după ce s-a încheiat evenimentul la care v-ați înscris, acestea se vor șterge automat.

# [Cookie-uri](https://ro.wikipedia.org/wiki/Cookie)

Folosim 2 servicii care servesc cookie-uri, mai exact: [Google Analytics](https://analytics.google.com/) și [OneSignal](https://onesignal.com/). Nici una dintre acestea nu poate avea acces la datele voastre personale, acestea fiind folosite pentru:

- Google Analytics: Monitorizarea traficului pe site (numărul de accesări, care pagini sunt vizitate, de unde vin accesările);
- OneSignal: Modul de notificări în browser, pentru care trebuie să vă dați acordul să le primiți.

Bineînțeles, o dată ce ați accesat site-ul sunteți anunțat despre Cookie-uri, și le puteți dezactiva în momentul respectiv. Dacă doriți să le activați sau chiar să le dezactivați, vă puteți șterge cookie-urile din setările browser-ului.

',	NULL,	'date-personale',	'2020-04-13 14:51:04.815+00',	'2020-04-14 13:15:54.401+00');

CREATE SEQUENCE partners_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START  CACHE 1;

CREATE TABLE "public"."partners" (
    "id" integer DEFAULT nextval('partners_id_seq') NOT NULL,
    "name" character varying(255),
    "URL" text,
    "category" character varying(255),
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "partners_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


CREATE SEQUENCE redirects_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 4 CACHE 1;

CREATE TABLE "public"."redirects" (
    "id" integer DEFAULT nextval('redirects_id_seq') NOT NULL,
    "path" character varying(255) NOT NULL,
    "destination" character varying(255) NOT NULL,
    "views" integer,
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "redirects_path_unique" UNIQUE ("path"),
    CONSTRAINT "redirects_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "redirects" ("id", "path", "destination", "views", "created_at", "updated_at") VALUES
(4,	'esc',	'https://europa.eu/youth/solidarity_ro',	4,	'2020-04-13 22:49:56.168+00',	'2020-05-05 12:15:23.537+00'),
(2,	'comunitate',	'https://www.facebook.com/groups/educatiepentrutoti.comunitate/',	23,	'2020-04-13 22:45:39.861+00',	'2020-05-06 15:28:59.452+00'),
(3,	'facebook',	'https://www.facebook.com/educatiepentrutoti.ro/',	33,	'2020-04-13 22:46:05.897+00',	'2020-05-06 17:00:50.599+00'),
(1,	'voluntari',	'https://www.facebook.com/groups/468751033736387/',	15,	'2020-04-13 22:45:28.544+00',	'2020-05-08 13:06:53.813+00');

CREATE SEQUENCE settings_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."settings" (
    "id" integer DEFAULT nextval('settings_id_seq') NOT NULL,
    "name" character varying(255),
    "value" character varying(255),
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "settings_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "settings" ("id", "name", "value", "created_at", "updated_at") VALUES
(1,	'showSubscribe',	'true',	'2020-04-12 22:29:27.509+00',	'2020-04-12 22:29:27.509+00');

CREATE SEQUENCE strapi_administrator_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 2 CACHE 1;

CREATE TABLE "public"."strapi_administrator" (
    "id" integer DEFAULT nextval('strapi_administrator_id_seq') NOT NULL,
    "username" character varying(255) NOT NULL,
    "email" character varying(255) NOT NULL,
    "password" character varying(255) NOT NULL,
    "resetPasswordToken" character varying(255),
    "blocked" boolean,
    CONSTRAINT "strapi_administrator_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "strapi_administrator_username_unique" UNIQUE ("username")
) WITH (oids = false);

INSERT INTO "strapi_administrator" ("id", "username", "email", "password", "resetPasswordToken", "blocked") VALUES
(1,	'arpad.gabor',	'hello@arpadgabor.com',	'$2a$10$Kxl9A4mIpSlnyZlWAukaV.C.YFscI0NZMMBBLY/lnc4.rpAZV7SkW',	NULL,	NULL),
(2,	'educatiepentrutoti',	'educatiepentrutoti@gmail.com',	'$2a$10$C4.cDU845tN.JwEZukKkU.eXOKJd9hcB6.CpmTMOXih3wfSC2UVPe',	NULL,	'0');

CREATE SEQUENCE strapi_webhooks_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START  CACHE 1;

CREATE TABLE "public"."strapi_webhooks" (
    "id" integer DEFAULT nextval('strapi_webhooks_id_seq') NOT NULL,
    "name" character varying(255),
    "url" text,
    "headers" jsonb,
    "events" jsonb,
    "enabled" boolean,
    CONSTRAINT "strapi_webhooks_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


CREATE SEQUENCE subscribers_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 11 CACHE 1;

CREATE TABLE "public"."subscribers" (
    "id" integer DEFAULT nextval('subscribers_id_seq') NOT NULL,
    "email" character varying(255),
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "subscribers_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "subscribers" ("id", "email", "created_at", "updated_at") VALUES
(1,	'hello@arpadgabor.com',	'2020-04-12 18:42:00.585+00',	'2020-04-12 18:42:00.585+00'),
(3,	'mihai_muscel@yahoo.com',	'2020-04-28 15:00:10.281+00',	'2020-04-28 15:00:10.281+00'),
(4,	'floreadaniela77@yahoo.com',	'2020-04-28 17:33:31.909+00',	'2020-04-28 17:33:31.909+00'),
(5,	'fulopdental@yahoo.com',	'2020-04-29 04:13:48.067+00',	'2020-04-29 04:13:48.067+00'),
(6,	'stefanceausu63@gmail.com',	'2020-04-29 15:35:36.538+00',	'2020-04-29 15:35:36.538+00'),
(7,	'larisasuci83@gmail.com',	'2020-04-30 07:57:59.764+00',	'2020-04-30 07:57:59.764+00'),
(8,	'martaiozefina2011@gmail.com',	'2020-04-30 13:59:48.05+00',	'2020-04-30 13:59:48.05+00'),
(9,	'elenaliliana277@yahoo.com',	'2020-05-03 18:56:58.427+00',	'2020-05-03 18:56:58.427+00'),
(10,	'alinanaca185@yahoo.com',	'2020-05-03 21:39:45.73+00',	'2020-05-03 21:39:45.73+00'),
(11,	'wx_andrew_xw@yahoo.com',	'2020-05-03 21:39:50.548+00',	'2020-05-03 21:39:50.548+00');

CREATE SEQUENCE upload_file_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 21 CACHE 1;

CREATE TABLE "public"."upload_file" (
    "id" integer DEFAULT nextval('upload_file_id_seq') NOT NULL,
    "name" character varying(255) NOT NULL,
    "hash" character varying(255) NOT NULL,
    "sha256" character varying(255),
    "ext" character varying(255),
    "mime" character varying(255) NOT NULL,
    "size" numeric(10,2) NOT NULL,
    "url" character varying(255) NOT NULL,
    "provider" character varying(255) NOT NULL,
    "provider_metadata" jsonb,
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "alternativeText" character varying(255),
    "caption" character varying(255),
    "width" integer,
    "height" integer,
    "formats" jsonb,
    "previewUrl" character varying(255),
    CONSTRAINT "upload_file_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "upload_file" ("id", "name", "hash", "sha256", "ext", "mime", "size", "url", "provider", "provider_metadata", "created_at", "updated_at", "alternativeText", "caption", "width", "height", "formats", "previewUrl") VALUES
(1,	'you-x-ventures-6awfTPLGaCE-unsplash (1).jpg',	'c4c7fda282d941ad93ba5f02f4b38dbf',	'wSZssCqa_pwnRTShh7zno9fhL7AWJ9IuEEefk7EeHJI',	'.jpg',	'image/jpeg',	1654.13,	'/uploads/c4c7fda282d941ad93ba5f02f4b38dbf.jpg',	'local',	NULL,	'2020-04-12 12:48:01.244+00',	'2020-04-12 12:48:01.244+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(2,	'og-preview.png',	'475eed0fc60c422388b062537f2ec04a',	'GaSTehAD5e82CPpY0s47ZJVSPYBdCwnkbXxaMOnR-pA',	'.png',	'image/png',	50.11,	'/uploads/475eed0fc60c422388b062537f2ec04a.png',	'local',	NULL,	'2020-04-12 23:19:40.982+00',	'2020-04-12 23:19:40.982+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(3,	'Evenimente.jpg',	'82747255a7224ab7b60a13258695e5eb',	'72HRiBLnIj4PDAKpKUFoU8oq9X1YmhD6hSJEJyaq0ao',	'.jpg',	'image/jpeg',	44.98,	'/uploads/82747255a7224ab7b60a13258695e5eb.jpg',	'local',	NULL,	'2020-04-12 23:20:19.983+00',	'2020-04-12 23:20:19.983+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(4,	'motto.jpg',	'3ddefc668604421cb92c34d805e8068e',	'2iuXYdNhQFkPfaRkgxJgoyD_k32b5L8Yaqs6iUcW4TM',	'.jpg',	'image/jpeg',	61.94,	'/uploads/3ddefc668604421cb92c34d805e8068e.jpg',	'local',	NULL,	'2020-04-13 00:03:28.329+00',	'2020-04-13 00:03:28.329+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(5,	'motto.jpg',	'711b289af6ec424a95fcdf665fdfecf5',	'VZrAhIn0jIlv4NFKajMZqPzLgRuxw2Siw0y3ldecqec',	'.jpg',	'image/jpeg',	271.09,	'/uploads/711b289af6ec424a95fcdf665fdfecf5.jpg',	'local',	NULL,	'2020-04-13 00:04:53.277+00',	'2020-04-13 00:04:53.277+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(6,	'Evenimente.jpg',	'eeeb31fe137c4d6a88108d52d3d24b95',	'AJTjU5uIqtayoQLq0CQsFQ7601zEVWlxAHFrT_1kNDk',	'.jpg',	'image/jpeg',	190.81,	'/uploads/eeeb31fe137c4d6a88108d52d3d24b95.jpg',	'local',	NULL,	'2020-04-13 00:05:01.866+00',	'2020-04-13 00:05:01.866+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(7,	'image.png',	'dd4df8bf26644201b998e36a4257595d',	'J6CAE2E4T7fa9vx39mwzcyofkXPwrq6I0y7IqWVFadc',	'.png',	'image/png',	8.97,	'/uploads/dd4df8bf26644201b998e36a4257595d.png',	'local',	NULL,	'2020-04-13 14:50:40.647+00',	'2020-04-13 14:50:40.647+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(8,	'image.png',	'e4416279cdb342c38cff33d73e1ce823',	'J6CAE2E4T7fa9vx39mwzcyofkXPwrq6I0y7IqWVFadc',	'.png',	'image/png',	8.97,	'/uploads/e4416279cdb342c38cff33d73e1ce823.png',	'local',	NULL,	'2020-04-13 14:50:44.04+00',	'2020-04-13 14:50:44.04+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(9,	'c4c7fda282d941ad93ba5f02f4b38dbf.jpg',	'8884774ca28e45c3bbc0d2b74bab479e',	'NVQnI59UyZhWhQWTmksaauyj1kZXOW46mSzpC4z-W-U',	'.jpg',	'image/jpeg',	598.29,	'/uploads/8884774ca28e45c3bbc0d2b74bab479e.jpg',	'local',	NULL,	'2020-04-15 13:01:43.338+00',	'2020-04-15 13:01:43.338+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(10,	'YW4v0qr - Imgur.jpg',	'03258f9d55b249e3a4aff8d936cddc6e',	'LVkd_wn-hwPwXyQZo0WP6K+irOMQZA0NxTJJudZ0U6s',	'.jpg',	'image/jpeg',	98.99,	'/uploads/03258f9d55b249e3a4aff8d936cddc6e.jpg',	'local',	NULL,	'2020-04-15 13:06:03.268+00',	'2020-04-15 13:06:03.268+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(11,	'consultare online-1.png',	'34e785d7a3c74ecc94e96f8f9672c51f',	'Ry-s_kAu97inJR8JDFPtXF5g0kjDu2rUDvCa9W42Jzg',	'.png',	'image/png',	180.44,	'/uploads/34e785d7a3c74ecc94e96f8f9672c51f.png',	'local',	NULL,	'2020-04-20 16:03:19.366+00',	'2020-04-20 16:03:19.366+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(12,	'consultare online-2.png',	'176555c488fa4b90a5d8d5c39c4ec9d6',	'62lFypEc9-oEcUhdYzMlFgFR-Af1Lkt2uXDieCAPB2w',	'.png',	'image/png',	142.71,	'/uploads/176555c488fa4b90a5d8d5c39c4ec9d6.png',	'local',	NULL,	'2020-04-20 16:03:19.397+00',	'2020-04-20 16:03:19.397+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(13,	'consultare online-3.png',	'71f3a2998f3d4368b7ca077de3279a7f',	'r9u8BkYRcoRCOXZCz6-mjPlODu05UpczusXEpiVUso4',	'.png',	'image/png',	140.81,	'/uploads/71f3a2998f3d4368b7ca077de3279a7f.png',	'local',	NULL,	'2020-04-20 16:03:19.395+00',	'2020-04-20 16:03:19.395+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(14,	'consultare online-1.png',	'b51ea5c2195f4fce8c68df3d54f8d41f',	'Ry-s_kAu97inJR8JDFPtXF5g0kjDu2rUDvCa9W42Jzg',	'.png',	'image/png',	180.44,	'/uploads/b51ea5c2195f4fce8c68df3d54f8d41f.png',	'local',	NULL,	'2020-04-20 16:03:46.485+00',	'2020-04-20 16:03:46.485+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(15,	'consultare online-3.png',	'73054fd4e7f74866a2b12a1148b1f769',	'r9u8BkYRcoRCOXZCz6-mjPlODu05UpczusXEpiVUso4',	'.png',	'image/png',	140.81,	'/uploads/73054fd4e7f74866a2b12a1148b1f769.png',	'local',	NULL,	'2020-04-20 16:05:41.737+00',	'2020-04-20 16:05:41.737+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(16,	'consultare online-2.png',	'5863b5f091474205b5ccca29a3caf6db',	'62lFypEc9-oEcUhdYzMlFgFR-Af1Lkt2uXDieCAPB2w',	'.png',	'image/png',	142.71,	'/uploads/5863b5f091474205b5ccca29a3caf6db.png',	'local',	NULL,	'2020-04-20 16:06:44.669+00',	'2020-04-20 16:06:44.669+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(17,	'_DSC9999.jpg',	'681d0f1c9eed4681b147401fb7257cc1',	'BCkd6G0kam1hSaW0NWf-S-OT5xSKQzKmH3F2ulU2JUY',	'.jpg',	'image/jpeg',	984.05,	'/uploads/681d0f1c9eed4681b147401fb7257cc1.jpg',	'local',	NULL,	'2020-05-09 11:11:34.451+00',	'2020-05-09 11:11:34.451+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(18,	'crayons.jpg',	'304bb93171f548109ae5d2c9cf89724b',	'irkAXniew6GU1PB6iPoYSLqRLebpvVQuolUr_+am0o4',	'.jpg',	'image/jpeg',	1005.60,	'/uploads/304bb93171f548109ae5d2c9cf89724b.jpg',	'local',	NULL,	'2020-05-09 14:08:59.696+00',	'2020-05-09 14:08:59.696+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(19,	'1690367.jpg',	'ffcb97af8fe44cb88c5c8ec032bd60ed',	'BhCVAX113YR9Hjy0Bp7_aALc7LSLJLWqTw0uH57XAaA',	'.jpg',	'image/jpeg',	291.64,	'/uploads/ffcb97af8fe44cb88c5c8ec032bd60ed.jpg',	'local',	NULL,	'2020-05-09 14:12:34.62+00',	'2020-05-09 14:12:34.62+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(20,	'contact.jpg',	'5cf2ed50de494b1f86a7355c4dc10f55',	'dPXyVl2S-x1WK2QrDwBBQeNsOZke4zil5dnxKBcrLoU',	'.jpg',	'image/jpeg',	195.69,	'/uploads/5cf2ed50de494b1f86a7355c4dc10f55.jpg',	'local',	NULL,	'2020-05-09 16:08:40.271+00',	'2020-05-09 16:08:40.271+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(21,	'blog.jpg',	'c6c51bb169bb4b06a03586e8d52b1bcc',	'Wy8O5X746IFuZBXYhZbewU6pw3P-2C146lrALcFr8X4',	'.jpg',	'image/jpeg',	164.76,	'/uploads/c6c51bb169bb4b06a03586e8d52b1bcc.jpg',	'local',	NULL,	'2020-05-09 16:08:56.74+00',	'2020-05-09 16:08:56.74+00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL);

CREATE SEQUENCE upload_file_morph_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 16 CACHE 1;

CREATE TABLE "public"."upload_file_morph" (
    "id" integer DEFAULT nextval('upload_file_morph_id_seq') NOT NULL,
    "upload_file_id" integer,
    "related_id" integer,
    "related_type" text,
    "field" text,
    "order" integer,
    CONSTRAINT "upload_file_morph_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "upload_file_morph" ("id", "upload_file_id", "related_id", "related_type", "field", "order") VALUES
(5,	5,	1,	'metas',	'image',	NULL),
(6,	6,	2,	'metas',	'image',	NULL),
(9,	14,	1,	'events',	'image',	NULL),
(10,	15,	2,	'events',	'image',	NULL),
(11,	16,	3,	'events',	'image',	NULL),
(12,	17,	1,	'blogs',	'image',	NULL),
(13,	18,	2,	'blogs',	'image',	NULL),
(15,	20,	4,	'metas',	'image',	NULL),
(16,	21,	3,	'metas',	'image',	NULL);

CREATE SEQUENCE "users-permissions_permission_id_seq" INCREMENT  MINVALUE  MAXVALUE  START  CACHE ;

CREATE TABLE "public"."users-permissions_permission" (
    "id" integer DEFAULT nextval('"users-permissions_permission_id_seq"') NOT NULL,
    "type" character varying(255) NOT NULL,
    "controller" character varying(255) NOT NULL,
    "action" character varying(255) NOT NULL,
    "enabled" boolean NOT NULL,
    "policy" character varying(255),
    "role" integer,
    CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "users-permissions_permission" ("id", "type", "controller", "action", "enabled", "policy", "role") VALUES
(1,	'content-type-builder',	'componentcategories',	'editcategory',	'0',	'',	1),
(2,	'content-type-builder',	'componentcategories',	'deletecategory',	'0',	'',	1),
(3,	'content-type-builder',	'components',	'getcomponent',	'0',	'',	1),
(4,	'content-type-builder',	'components',	'createcomponent',	'0',	'',	1),
(6,	'content-type-builder',	'components',	'updatecomponent',	'0',	'',	1),
(7,	'content-type-builder',	'components',	'deletecomponent',	'0',	'',	1),
(5,	'content-type-builder',	'components',	'getcomponents',	'0',	'',	1),
(8,	'content-type-builder',	'connections',	'getconnections',	'0',	'',	1),
(9,	'content-type-builder',	'contenttypes',	'getcontenttypes',	'0',	'',	1),
(10,	'content-type-builder',	'contenttypes',	'getcontenttype',	'0',	'',	1),
(11,	'content-type-builder',	'contenttypes',	'createcontenttype',	'0',	'',	1),
(12,	'content-type-builder',	'contenttypes',	'updatecontenttype',	'0',	'',	1),
(13,	'content-type-builder',	'contenttypes',	'deletecontenttype',	'0',	'',	1),
(14,	'content-manager',	'components',	'listcomponents',	'0',	'',	1),
(15,	'content-manager',	'components',	'findcomponent',	'0',	'',	1),
(16,	'content-manager',	'components',	'updatecomponent',	'0',	'',	1),
(17,	'content-manager',	'contentmanager',	'generateuid',	'0',	'',	1),
(18,	'content-manager',	'contentmanager',	'find',	'0',	'',	1),
(19,	'content-manager',	'contentmanager',	'checkuidavailability',	'0',	'',	1),
(20,	'content-manager',	'contentmanager',	'findone',	'0',	'',	1),
(21,	'content-manager',	'contentmanager',	'count',	'0',	'',	1),
(22,	'content-manager',	'contentmanager',	'create',	'0',	'',	1),
(23,	'content-manager',	'contentmanager',	'update',	'0',	'',	1),
(24,	'content-manager',	'contentmanager',	'delete',	'0',	'',	1),
(25,	'content-manager',	'contentmanager',	'deletemany',	'0',	'',	1),
(26,	'content-manager',	'contenttypes',	'listcontenttypes',	'0',	'',	1),
(27,	'content-manager',	'contenttypes',	'findcontenttype',	'0',	'',	1),
(28,	'content-manager',	'contenttypes',	'updatecontenttype',	'0',	'',	1),
(29,	'users-permissions',	'auth',	'callback',	'0',	'',	1),
(30,	'users-permissions',	'auth',	'changepassword',	'0',	'',	1),
(32,	'users-permissions',	'auth',	'forgotpassword',	'0',	'',	1),
(31,	'users-permissions',	'auth',	'connect',	'1',	'',	1),
(34,	'users-permissions',	'auth',	'emailconfirmation',	'0',	'',	1),
(33,	'users-permissions',	'auth',	'register',	'0',	'',	1),
(35,	'users-permissions',	'auth',	'sendemailconfirmation',	'0',	'',	1),
(36,	'users-permissions',	'user',	'find',	'0',	'',	1),
(37,	'users-permissions',	'user',	'me',	'1',	'',	1),
(38,	'users-permissions',	'user',	'findone',	'0',	'',	1),
(39,	'users-permissions',	'user',	'create',	'0',	'',	1),
(42,	'users-permissions',	'user',	'destroyall',	'0',	'',	1),
(41,	'users-permissions',	'user',	'destroy',	'0',	'',	1),
(40,	'users-permissions',	'user',	'update',	'0',	'',	1),
(43,	'users-permissions',	'userspermissions',	'deleteprovider',	'0',	'',	1),
(44,	'users-permissions',	'userspermissions',	'deleterole',	'0',	'',	1),
(45,	'users-permissions',	'userspermissions',	'getpermissions',	'0',	'',	1),
(46,	'users-permissions',	'userspermissions',	'getpolicies',	'0',	'',	1),
(47,	'users-permissions',	'userspermissions',	'createrole',	'0',	'',	1),
(48,	'users-permissions',	'userspermissions',	'getrole',	'0',	'',	1),
(49,	'users-permissions',	'userspermissions',	'getroles',	'0',	'',	1),
(51,	'users-permissions',	'userspermissions',	'index',	'0',	'',	1),
(50,	'users-permissions',	'userspermissions',	'getroutes',	'0',	'',	1),
(52,	'users-permissions',	'userspermissions',	'searchusers',	'0',	'',	1),
(53,	'users-permissions',	'userspermissions',	'updaterole',	'0',	'',	1),
(55,	'users-permissions',	'userspermissions',	'getemailtemplate',	'0',	'',	1),
(56,	'users-permissions',	'userspermissions',	'updateemailtemplate',	'0',	'',	1),
(57,	'users-permissions',	'userspermissions',	'getadvancedsettings',	'0',	'',	1),
(54,	'users-permissions',	'userspermissions',	'init',	'1',	'',	1),
(58,	'users-permissions',	'userspermissions',	'updateadvancedsettings',	'0',	'',	1),
(59,	'users-permissions',	'userspermissions',	'getproviders',	'0',	'',	1),
(63,	'email',	'email',	'send',	'0',	'',	1),
(62,	'email',	'email',	'getenvironments',	'0',	'',	1),
(61,	'email',	'email',	'getsettings',	'0',	'',	1),
(64,	'email',	'email',	'updatesettings',	'0',	'',	1),
(65,	'upload',	'upload',	'upload',	'0',	'',	1),
(66,	'users-permissions',	'userspermissions',	'updateproviders',	'0',	'',	1),
(67,	'upload',	'upload',	'getsettings',	'0',	'',	1),
(68,	'upload',	'upload',	'updatesettings',	'0',	'',	1),
(70,	'upload',	'upload',	'findone',	'0',	'',	1),
(71,	'upload',	'upload',	'count',	'0',	'',	1),
(69,	'upload',	'upload',	'find',	'0',	'',	1),
(72,	'content-type-builder',	'componentcategories',	'editcategory',	'0',	'',	2),
(75,	'content-type-builder',	'componentcategories',	'deletecategory',	'0',	'',	2),
(74,	'upload',	'upload',	'destroy',	'0',	'',	1),
(73,	'upload',	'upload',	'search',	'0',	'',	1),
(77,	'content-type-builder',	'components',	'getcomponents',	'0',	'',	2),
(76,	'content-type-builder',	'components',	'getcomponent',	'0',	'',	2),
(219,	'application',	'events',	'count',	'0',	'',	1),
(228,	'application',	'events',	'create',	'0',	'',	2),
(78,	'content-type-builder',	'components',	'createcomponent',	'0',	'',	2),
(229,	'application',	'events',	'update',	'0',	'',	2),
(86,	'content-type-builder',	'contenttypes',	'deletecontenttype',	'0',	'',	2),
(88,	'content-manager',	'components',	'findcomponent',	'0',	'',	2),
(95,	'content-manager',	'contentmanager',	'create',	'0',	'',	2),
(98,	'content-manager',	'contentmanager',	'deletemany',	'0',	'',	2),
(106,	'users-permissions',	'auth',	'register',	'1',	'',	2),
(105,	'users-permissions',	'auth',	'forgotpassword',	'1',	'',	2),
(110,	'users-permissions',	'user',	'me',	'1',	'',	2),
(116,	'users-permissions',	'userspermissions',	'createrole',	'0',	'',	2),
(120,	'users-permissions',	'userspermissions',	'getpolicies',	'0',	'',	2),
(122,	'users-permissions',	'userspermissions',	'init',	'1',	'',	2),
(135,	'email',	'email',	'send',	'0',	'',	2),
(137,	'email',	'email',	'updatesettings',	'0',	'',	2),
(142,	'upload',	'upload',	'findone',	'0',	'',	2),
(239,	'application',	'subscribers',	'count',	'0',	'',	2),
(250,	'application',	'attendees',	'count',	'1',	'',	2),
(87,	'content-manager',	'components',	'listcomponents',	'0',	'',	2),
(93,	'content-manager',	'contentmanager',	'findone',	'0',	'',	2),
(99,	'content-manager',	'contenttypes',	'listcontenttypes',	'0',	'',	2),
(109,	'users-permissions',	'user',	'find',	'0',	'',	2),
(117,	'users-permissions',	'userspermissions',	'deleteprovider',	'0',	'',	2),
(127,	'users-permissions',	'userspermissions',	'updaterole',	'0',	'',	2),
(136,	'email',	'email',	'getsettings',	'0',	'',	2),
(146,	'upload',	'upload',	'search',	'0',	'',	2),
(220,	'application',	'events',	'find',	'0',	'',	1),
(231,	'application',	'subscribers',	'find',	'0',	'',	1),
(242,	'application',	'subscribers',	'delete',	'0',	'',	2),
(251,	'application',	'attendees',	'find',	'0',	'',	1),
(240,	'application',	'subscribers',	'create',	'1',	'',	2),
(271,	'application',	'meta',	'update',	'0',	'',	1),
(291,	'application',	'pages',	'findone',	'0',	'',	1),
(299,	'application',	'pages',	'update',	'0',	'',	1),
(309,	'documentation',	'documentation',	'index',	'0',	'',	2),
(318,	'application',	'redirects',	'create',	'0',	'',	1),
(326,	'application',	'redirects',	'create',	'0',	'',	2),
(345,	'application',	'blog',	'update',	'0',	'',	1),
(373,	'application',	'messages',	'find',	'0',	'',	2),
(365,	'application',	'messages',	'find',	'0',	'',	1),
(411,	'application',	'navigations',	'findone',	'0',	'',	1),
(422,	'application',	'category',	'update',	'0',	'',	2),
(80,	'content-type-builder',	'connections',	'getconnections',	'0',	'',	2),
(89,	'content-manager',	'components',	'updatecomponent',	'0',	'',	2),
(102,	'users-permissions',	'auth',	'callback',	'1',	'',	2),
(115,	'users-permissions',	'user',	'destroy',	'0',	'',	2),
(126,	'users-permissions',	'userspermissions',	'searchusers',	'0',	'',	2),
(134,	'email',	'email',	'getenvironments',	'0',	'',	2),
(143,	'upload',	'upload',	'destroy',	'0',	'',	2),
(221,	'application',	'events',	'create',	'0',	'',	1),
(230,	'application',	'events',	'delete',	'0',	'',	2),
(232,	'application',	'subscribers',	'findone',	'0',	'',	1),
(241,	'application',	'subscribers',	'update',	'0',	'',	2),
(243,	'application',	'attendees',	'update',	'0',	'',	1),
(252,	'application',	'attendees',	'create',	'1',	'',	2),
(272,	'application',	'meta',	'delete',	'0',	'',	1),
(278,	'application',	'meta',	'delete',	'0',	'',	2),
(292,	'application',	'pages',	'count',	'0',	'',	1),
(300,	'application',	'pages',	'create',	'0',	'',	2),
(310,	'documentation',	'documentation',	'updatesettings',	'0',	'',	1),
(317,	'application',	'redirects',	'delete',	'0',	'',	1),
(319,	'application',	'redirects',	'findone',	'0',	'',	1),
(328,	'application',	'redirects',	'update',	'1',	'',	2),
(346,	'application',	'blog',	'delete',	'0',	'',	1),
(351,	'application',	'blog',	'update',	'0',	'',	2),
(366,	'application',	'messages',	'findone',	'0',	'',	1),
(374,	'application',	'messages',	'delete',	'0',	'',	1),
(412,	'application',	'navigations',	'find',	'0',	'',	1),
(417,	'upload',	'upload',	'getenvironments',	'0',	'',	1),
(430,	'upload',	'upload',	'getenvironments',	'0',	'',	2),
(79,	'content-type-builder',	'components',	'updatecomponent',	'0',	'',	2),
(97,	'content-manager',	'contentmanager',	'delete',	'0',	'',	2),
(108,	'users-permissions',	'auth',	'sendemailconfirmation',	'0',	'',	2),
(119,	'users-permissions',	'userspermissions',	'deleterole',	'0',	'',	2),
(128,	'users-permissions',	'userspermissions',	'getemailtemplate',	'0',	'',	2),
(138,	'upload',	'upload',	'upload',	'0',	'',	2),
(222,	'application',	'events',	'findone',	'0',	'',	1),
(233,	'application',	'subscribers',	'count',	'0',	'',	1),
(244,	'application',	'attendees',	'create',	'0',	'',	1),
(273,	'application',	'meta',	'find',	'1',	'',	2),
(293,	'application',	'pages',	'create',	'0',	'',	1),
(303,	'documentation',	'documentation',	'getinfos',	'0',	'',	1),
(311,	'documentation',	'documentation',	'deletedoc',	'0',	'',	1),
(313,	'documentation',	'documentation',	'login',	'0',	'',	2),
(320,	'application',	'redirects',	'find',	'0',	'',	1),
(413,	'application',	'navigations',	'count',	'0',	'',	1),
(405,	'application',	'category',	'findone',	'0',	'',	1),
(347,	'application',	'blog',	'find',	'1',	'',	2),
(367,	'application',	'messages',	'create',	'0',	'',	1),
(376,	'application',	'messages',	'delete',	'0',	'',	2),
(418,	'application',	'category',	'find',	'0',	'',	2),
(420,	'application',	'category',	'count',	'0',	'',	2),
(428,	'application',	'navigations',	'update',	'0',	'',	2),
(81,	'content-type-builder',	'components',	'deletecomponent',	'0',	'',	2),
(91,	'content-manager',	'contentmanager',	'find',	'0',	'',	2),
(101,	'users-permissions',	'auth',	'changepassword',	'1',	'',	2),
(111,	'users-permissions',	'user',	'findone',	'0',	'',	2),
(125,	'users-permissions',	'userspermissions',	'getroutes',	'0',	'',	2),
(132,	'users-permissions',	'userspermissions',	'getproviders',	'0',	'',	2),
(141,	'upload',	'upload',	'count',	'0',	'',	2),
(223,	'application',	'events',	'update',	'0',	'',	1),
(234,	'application',	'subscribers',	'create',	'0',	'',	1),
(245,	'application',	'attendees',	'findone',	'0',	'',	1),
(424,	'application',	'navigations',	'find',	'1',	'',	2),
(274,	'application',	'meta',	'findone',	'0',	'',	2),
(294,	'application',	'pages',	'find',	'1',	'',	2),
(304,	'documentation',	'documentation',	'index',	'0',	'',	1),
(312,	'documentation',	'documentation',	'regeneratedoc',	'0',	'',	1),
(315,	'documentation',	'documentation',	'deletedoc',	'0',	'',	2),
(321,	'application',	'redirects',	'count',	'0',	'',	1),
(406,	'application',	'category',	'create',	'0',	'',	1),
(348,	'application',	'blog',	'findone',	'0',	'',	2),
(368,	'application',	'messages',	'update',	'0',	'',	1),
(414,	'application',	'navigations',	'create',	'0',	'',	1),
(416,	'application',	'navigations',	'delete',	'0',	'',	1),
(427,	'application',	'navigations',	'findone',	'0',	'',	2),
(82,	'content-type-builder',	'contenttypes',	'getcontenttypes',	'0',	'',	2),
(90,	'content-manager',	'contentmanager',	'checkuidavailability',	'0',	'',	2),
(100,	'content-manager',	'contenttypes',	'findcontenttype',	'0',	'',	2),
(114,	'users-permissions',	'user',	'destroyall',	'0',	'',	2),
(124,	'users-permissions',	'userspermissions',	'index',	'0',	'',	2),
(130,	'users-permissions',	'userspermissions',	'getadvancedsettings',	'0',	'',	2),
(140,	'upload',	'upload',	'getsettings',	'0',	'',	2),
(224,	'application',	'events',	'delete',	'0',	'',	1),
(235,	'application',	'subscribers',	'update',	'0',	'',	1),
(246,	'application',	'attendees',	'count',	'0',	'',	1),
(267,	'application',	'meta',	'findone',	'0',	'',	1),
(275,	'application',	'meta',	'count',	'0',	'',	2),
(277,	'application',	'meta',	'update',	'0',	'',	2),
(295,	'application',	'pages',	'findone',	'0',	'',	2),
(305,	'documentation',	'documentation',	'loginview',	'0',	'',	1),
(314,	'documentation',	'documentation',	'regeneratedoc',	'0',	'',	2),
(322,	'application',	'redirects',	'findone',	'0',	'',	2),
(349,	'application',	'blog',	'count',	'0',	'',	2),
(341,	'application',	'blog',	'find',	'0',	'',	1),
(352,	'application',	'blog',	'delete',	'0',	'',	2),
(369,	'application',	'messages',	'count',	'0',	'',	1),
(407,	'application',	'category',	'delete',	'0',	'',	1),
(421,	'application',	'category',	'create',	'0',	'',	2),
(429,	'application',	'navigations',	'delete',	'0',	'',	2),
(83,	'content-type-builder',	'contenttypes',	'getcontenttype',	'0',	'',	2),
(92,	'content-manager',	'contentmanager',	'generateuid',	'0',	'',	2),
(103,	'content-manager',	'contenttypes',	'updatecontenttype',	'0',	'',	2),
(113,	'users-permissions',	'user',	'create',	'0',	'',	2),
(121,	'users-permissions',	'userspermissions',	'getrole',	'0',	'',	2),
(131,	'users-permissions',	'userspermissions',	'updateadvancedsettings',	'0',	'',	2),
(145,	'upload',	'upload',	'find',	'0',	'',	2),
(236,	'application',	'subscribers',	'delete',	'0',	'',	1),
(247,	'application',	'attendees',	'delete',	'0',	'',	1),
(253,	'application',	'attendees',	'update',	'0',	'',	2),
(225,	'application',	'events',	'find',	'1',	'',	2),
(268,	'application',	'meta',	'count',	'0',	'',	1),
(276,	'application',	'meta',	'create',	'0',	'',	2),
(296,	'application',	'pages',	'find',	'0',	'',	1),
(306,	'documentation',	'documentation',	'login',	'0',	'',	1),
(316,	'documentation',	'documentation',	'updatesettings',	'0',	'',	2),
(323,	'application',	'redirects',	'count',	'0',	'',	2),
(342,	'application',	'blog',	'findone',	'0',	'',	1),
(350,	'application',	'blog',	'create',	'0',	'',	2),
(370,	'application',	'messages',	'findone',	'0',	'',	2),
(375,	'application',	'messages',	'update',	'0',	'',	2),
(408,	'application',	'category',	'count',	'0',	'',	1),
(423,	'application',	'category',	'delete',	'0',	'',	2),
(84,	'content-type-builder',	'contenttypes',	'updatecontenttype',	'0',	'',	2),
(94,	'content-manager',	'contentmanager',	'count',	'0',	'',	2),
(104,	'users-permissions',	'auth',	'connect',	'1',	'',	2),
(112,	'users-permissions',	'user',	'update',	'0',	'',	2),
(123,	'users-permissions',	'userspermissions',	'getroles',	'0',	'',	2),
(133,	'users-permissions',	'userspermissions',	'updateproviders',	'0',	'',	2),
(144,	'upload',	'upload',	'updatesettings',	'0',	'',	2),
(226,	'application',	'events',	'findone',	'0',	'',	2),
(237,	'application',	'subscribers',	'find',	'0',	'',	2),
(248,	'application',	'attendees',	'find',	'0',	'',	2),
(269,	'application',	'meta',	'find',	'0',	'',	1),
(297,	'application',	'pages',	'count',	'0',	'',	2),
(301,	'application',	'pages',	'update',	'0',	'',	2),
(307,	'documentation',	'documentation',	'loginview',	'0',	'',	2),
(327,	'application',	'redirects',	'delete',	'0',	'',	2),
(324,	'application',	'redirects',	'find',	'1',	'',	2),
(343,	'application',	'blog',	'count',	'0',	'',	1),
(371,	'application',	'messages',	'count',	'0',	'',	2),
(409,	'application',	'category',	'find',	'0',	'',	1),
(415,	'application',	'navigations',	'update',	'0',	'',	1),
(425,	'application',	'navigations',	'create',	'0',	'',	2),
(85,	'content-type-builder',	'contenttypes',	'createcontenttype',	'0',	'',	2),
(96,	'content-manager',	'contentmanager',	'update',	'0',	'',	2),
(107,	'users-permissions',	'auth',	'emailconfirmation',	'1',	'',	2),
(118,	'users-permissions',	'userspermissions',	'getpermissions',	'0',	'',	2),
(129,	'users-permissions',	'userspermissions',	'updateemailtemplate',	'0',	'',	2),
(238,	'application',	'subscribers',	'findone',	'0',	'',	2),
(249,	'application',	'attendees',	'findone',	'0',	'',	2),
(254,	'application',	'attendees',	'delete',	'0',	'',	2),
(227,	'application',	'events',	'count',	'1',	'',	2),
(270,	'application',	'meta',	'create',	'0',	'',	1),
(325,	'application',	'redirects',	'update',	'0',	'',	1),
(298,	'application',	'pages',	'delete',	'0',	'',	1),
(302,	'application',	'pages',	'delete',	'0',	'',	2),
(308,	'documentation',	'documentation',	'getinfos',	'0',	'',	2),
(344,	'application',	'blog',	'create',	'0',	'',	1),
(372,	'application',	'messages',	'create',	'1',	'',	2),
(410,	'application',	'category',	'update',	'0',	'',	1),
(419,	'application',	'category',	'findone',	'0',	'',	2),
(426,	'application',	'navigations',	'count',	'0',	'',	2);

CREATE SEQUENCE "users-permissions_role_id_seq" INCREMENT  MINVALUE  MAXVALUE  START  CACHE ;

CREATE TABLE "public"."users-permissions_role" (
    "id" integer DEFAULT nextval('"users-permissions_role_id_seq"') NOT NULL,
    "name" character varying(255) NOT NULL,
    "description" character varying(255),
    "type" character varying(255),
    CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "users-permissions_role_type_unique" UNIQUE ("type")
) WITH (oids = false);

INSERT INTO "users-permissions_role" ("id", "name", "description", "type") VALUES
(1,	'Authenticated',	'Default role given to authenticated user.',	'authenticated'),
(2,	'Public',	'Default role given to unauthenticated user.',	'public');

CREATE SEQUENCE "users-permissions_user_id_seq" INCREMENT  MINVALUE  MAXVALUE  START  CACHE ;

CREATE TABLE "public"."users-permissions_user" (
    "id" integer DEFAULT nextval('"users-permissions_user_id_seq"') NOT NULL,
    "username" character varying(255) NOT NULL,
    "email" character varying(255) NOT NULL,
    "provider" character varying(255),
    "password" character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmed" boolean,
    "blocked" boolean,
    "role" integer,
    "created_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamptz DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "users-permissions_user_username_unique" UNIQUE ("username")
) WITH (oids = false);


-- 2020-05-12 23:52:27.534649+00
