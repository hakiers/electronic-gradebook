-- Dane dla bazy egradebook
-- Data eksportu: Sun Jun  8 18:49:04 CEST 2025

SET session_replication_role = replica;

COPY class_profile FROM stdin;
1	1A	Klasa 1A
2	1B	Klasa 1B - mat-przyr
3	2A	Klasa 2A - humanist
4	2B	Klasa 2B - mat-przyr
5	3A	Klasa 3A - humanist
\.

COPY users FROM stdin;
1	admin	$2b$12$fbaxeKjhrf6cbUeWTzmHZeRiKu4bmd.a.P.nKFAap2KI/MH5rFVf2	admin
2	stoltman.norbert	$2b$12$Uad429GSG7m0yOkcWwQmxuUkc3nz6YEaJtlXOEdQQpDfpbM/eZ0Xa	teacher
3	sarota.daniel	$2b$12$pnfLjSaYpD0Z7XBWbGuc3O2EjVO3Ad.qfnR0qDjfiNvphIX..5NJ6	teacher
4	nasiadka.eliza	$2b$12$A9tE4GU6rNKS3MNqXAl.e.DUmoEWgtfS.BHPCIMrnqoMp/DTYooJ2	teacher
5	korpal.igor	$2b$12$QV0yu1QEoG73gM9xUmnXJ.g7YHIIsRmm0hb6QtaCY866iF1Iqb.2O	teacher
6	cherek.błażej	$2b$12$Raqm79mjH.PTeM0J9KmZOeLCthQaKhv6wDiINnAUBVmm/e.g8jGui	teacher
7	kalka.witold	$2b$12$fuIRopEGMRaidy86ns1He.68HIV4BB7u.iPqG0jOsh/UUG.LTVjay	teacher
8	prucnal.janina	$2b$12$hQXZcHDUTBvDLlC7sorZeuw6vWNiKzJdI14.FADpN/dCD/k.8Tw3K	teacher
9	loba.oskar	$2b$12$f/CqhIyUYcUreD0dnHl2UeslGZX9uFfwky.wlq8D3y7XHRh/fWika	teacher
10	kajak.ada	$2b$12$PGQln9XR8oHTo8AqNbpvYuvR/mMgaEhGMBPPLjvh19ZOZDd5lRob.	teacher
11	golda.liwia	$2b$12$Qcqp77tFbX6XJZpXwllyIu90i8UDofqt9u1R3BjSUiGHtPv.gmDTm	teacher
12	capała.anita	$2b$12$qbWUWSh9BfzXGD470fJeu.0vYPis063ZQLvDrBrI3Sf81r43LjW92	teacher
13	furga.tobiasz	$2b$12$tOlv0FK0SBl03ICe8u30tOE2uYzfmgoFRXbkiL/TYbUNaay2HqUPW	teacher
14	harasimiuk.cyprian	$2b$12$pcqzK.2LO460OrMylPmdMOgf9fji.hd2HZ8UcIGd9GG5spAojZJGi	teacher
15	burzawa.błażej	$2b$12$9brEIwQ4CiEySfjgoQGaKexG6IWmR4C2FkrCPjCePMgt53SOVfC1q	teacher
16	basaj.wiktor	$2b$12$5VfamnPKOXXREeIMdpz7kuWuKwKjuZKoe6OKKFi20kADmZWxW2jF6	teacher
17	cader.blanka.0	$2b$12$9R41BFK7doUqvXBXLdr8B.VjCWfbCpaj0KoYldf1GiH3VgHuP3vyO	student
18	cader.tobiasz.r0	$2b$12$rpPD8ssjMX7tng58cPFU3elHVGHKjdvCe9mg31xl.2mXh81cJ2zaS	parent
19	kopczyk.malwina.1	$2b$12$.d1k2OMpk2LetldTC4pJWeee1S1319XPeySRlZvUiFdUKSHXyT33O	student
20	kopczyk.julita.r0	$2b$12$9k11WOx9cRff3ITT3oHejeTYgq3xKGHvjlcSQEM2rv7IKp4GsyjLS	parent
21	ostapiuk.igor.2	$2b$12$eDeL/It24TDnUgXP6REdrePv3Cp6MU9i6c2hT1imWVkKmtEIjb5JS	student
22	ostapiuk.ada.r0	$2b$12$9Uw5CA0ZJIIUnuIflFIlNeOpKHsnkgjnmL9cfwIaQ1fJ3wp7ygTRm	parent
23	ostapiuk.ewa.r1	$2b$12$fQ06wEem/DRYt8yULzphfeONGnZ34mx3Z4K7LB7mMNO7Pnzc3wlpy	parent
24	dyczko.franciszek.3	$2b$12$/i1xmg4qv3Dm1QAJdMrzBOSopJSC.lke.P6uDGYx7Te4S6of./UOG	student
25	dyczko.tomasz.r0	$2b$12$oGjAoAm.Tm0hSzPqAeLAA.0Eni6GqNra7UjfSZrKHHQRcnx1fyhOa	parent
26	dyczko.urszula.r1	$2b$12$yJtv8KPe7CryP.j/OI5Fhu4gCHLBgXQSvrBmakc43hfJZaPZFAh0u	parent
27	fidura.jeremi.4	$2b$12$wdWpcarf5mmKf6.rgtSGV.W7sc0OGejcOPPyDFDGj7jxJpESdPDgG	student
28	fidura.blanka.r0	$2b$12$tvXhWVpqFdfFBkDO3R5Z3.IczxPIow7ls8msIwdKR6FzOb.2Kku3m	parent
29	fidura.julita.r1	$2b$12$5DFGl6S/Bul9Wq3awFtss.dN3msrBfODOXd2qJoCRSEx4UQyXSE/.	parent
30	kopyto.antoni.5	$2b$12$sLhvTRRQk5vPW7wFmkcc4ejdXulrXXdsESH2QOF.fqjqVx6ovMw5S	student
31	kopyto.jacek.r0	$2b$12$vCEzF7bnxmYk6cqxduM9ket0YJxsUuuqGiA2iShj0B4REQjzgU54m	parent
32	kopyto.lidia.r1	$2b$12$mFRjbu1AYEfR.E38Dwz15etUwrpJsfSfIqUPsjr6cqQKvDeRAl/eK	parent
33	wocial.ida.6	$2b$12$Ag3VTLTEq.dRCZYwocoP/.2PcsHlxe9WzG3xcba0DaxDsN/71pJ7K	student
34	wocial.lidia.r0	$2b$12$SrSILeeIOadXXqHXDoIdtu1b2TXNEbOmR42M4fACGdHiVfrH8A62y	parent
35	wocial.natasza.r1	$2b$12$Sl0MhdQBiMVSmcZ5Atbfr.oyJM.NXXZWjtYWlqDRFcIho1Kpqfip6	parent
36	kulma.maks.7	$2b$12$ZiJU8IepwKKuYijMSYAbS.HVALEmWiUIFAs4SFe7fxLo0pHER3YjK	student
37	kulma.nikodem.r0	$2b$12$J24ygbNjVkKzhJ8.YvGgNOFdnXh.P9plVskhrkSqo.t.PnvxzE51O	parent
38	kostro.sara.8	$2b$12$Y4Uh/F2tZ2p60HgAqReHQOD2i2K9xtik8Fynr0TgRwXafOZCPkAzi	student
39	kostro.ida.r0	$2b$12$7STpM5P.Gx50D66Yk4Pdm.UMVDCZpSgeQCfKvinAZ9GWO1yikKPZi	parent
40	litwiniuk.daniel.9	$2b$12$yK8KZPWQO4AzVAzSZvse4.F3iA9QFr5GCLxIEGaCYzaMyGsMjgIqe	student
41	litwiniuk.alex.r0	$2b$12$DMkHtgUr7YIlJGL1xC48keHSOlbkm/BYhIE7heLWzm23wxzcIDo7G	parent
42	litwiniuk.oskar.r1	$2b$12$vveU02EZ6IGEpE5zjO7Jg.ncqVGR3aCYHHMbfJf/.EgvEZgtNNb/6	parent
43	michnowicz.maks.10	$2b$12$B7A3/J4yevbAfN.MHiHWLevj5cDe1UKWOFEtuO5AOuM64rCrKfG2.	student
44	michnowicz.paweł.r0	$2b$12$dEJGkIJ0zxavI1QYC8n1A.KxzYHbHLB2.LaPHrggCqAIxTpt9wJPy	parent
45	michnowicz.melania.r1	$2b$12$rIXBO7ldSS/8GyDpuI8xx.7QpN.sfYjgOeG6FukSuDyy6eXOrSYkG	parent
46	plewnia.agnieszka.11	$2b$12$8EPzsl0pc1Xq1qURACuPuemf10MeM8G.BznbASsFB3cVTjGcfTEHK	student
47	plewnia.cyprian.r0	$2b$12$80N9WFoKPCCf4hKT3Mey0OmN4c5k4bvyOHGkdzN1X68l1IFLyAOfi	parent
48	plewnia.karol.r1	$2b$12$CBn1AAMrcQMUcNxKFcAFw.S1vg7h0zlyaNQBYpqLXOdxl9CVl4kXG	parent
49	paśnik.tymoteusz.12	$2b$12$aQmKe4kPUO61wX3gbZ1vxuRDzvSVmpzJxqBmJ/97crLCWvUN5sOmu	student
50	paśnik.franciszek.r0	$2b$12$bb/ZUI0uSE5v2UBmXoX92ehup9Nl371AGenc4rExOIWGmJTrntWyO	parent
51	siedlaczek.leonard.13	$2b$12$ml6UtX34aTTr6CiQi4MTfuF3am5LaPBDadZSlu1FBQvz/ihZ7FQVO	student
52	siedlaczek.fryderyk.r0	$2b$12$PJbzwCiGQGQGwUBjq7/Dz.jxya3RpjJVQuNaaDPTdjfBGg8Qlv3U.	parent
53	siedlaczek.klara.r1	$2b$12$gdaONk1HcyJmoi8HQMqLhunUOKp3JQ47B/DoyPYE9bNgXAk7HCJNS	parent
54	andziak.ewa.14	$2b$12$IPALoEvpp98.SjNcLRsLUOhwaIVEsyG8VVLXwjMeNHMeZyOB/DLyC	student
55	andziak.błażej.r0	$2b$12$b/rvBq1zPV.LBrfoi1mhEe94r7Bc7Ay8PPUrjHPFJNZL1sOtbFsSu	parent
56	andziak.borys.r1	$2b$12$fUufVOIl27UQUWYPEvJ.ueMFKLdIOT2GDhKbMh2OkfwCMnqt874uW	parent
57	wawrzyńczyk.karol.15	$2b$12$CB5Yj3L9Cqg2iqXW0HC3PeOZhub08iQgktRW0gLhPDRdeitpc/3Nq	student
58	wawrzyńczyk.maciej.r0	$2b$12$CeJvF.tE255aF1wwI85cZejW3CMwa9ToxRfjDNdKe/Ib9/Z.zBdmi	parent
59	wawrzyńczyk.błażej.r1	$2b$12$KKbykDgUCZ7Kep80U0.mrOHMFswuA4oSB3b6f1nkvWshESwJHGDt.	parent
60	hnat.marianna.16	$2b$12$RRhIWSDDW9MuGp2N.d6YkuiyyYprIoZdVUkEd7qMOsNdYHkRjCbyu	student
61	hnat.dariusz.r0	$2b$12$kXtVabpzRCIqQdmJvcKY/uH1TXJJjzbbw/r3Vft0gGJVe6Icw48QG	parent
62	szczerek.apolonia.17	$2b$12$cA/9vgvruQtreOhEpEGTj.0YlR6dHBMbFvJQ3HmjvIDUmofOOBXQ.	student
63	szczerek.marcin.r0	$2b$12$xAqviNahvnJVe2nwROjiv.Q3qT7B0JbZyvJxYnv3q4QE3Sxc/7sv.	parent
64	serwa.wojciech.18	$2b$12$LHrq1pqB4FmStFJL2JTswecTxINYQHhdagXd09hHQloLJoHH168Ey	student
65	serwa.blanka.r0	$2b$12$FOwh7nZATDMNRKZAQg934.4yCAGSiGP0ArSBnJV6cWUv3DzJgTLu.	parent
66	bartkowicz.tymon.19	$2b$12$nmSu0.0xqBJqSOznEZRtT.XHhIhDm7fYyrkSU.QcR7ao21m0RChzW	student
67	bartkowicz.tobiasz.r0	$2b$12$tIIB8VtFOpMFJk4e/yhWouSViJyWW5knRLjyX9bJuy3TczrihxLwe	parent
68	windak.melania.0	$2b$12$.IsXABtCwB5NHuCzBB9sm./xylZOWgNkbEi0kNHSCLbTlO0W6B1W.	student
69	windak.malwina.r0	$2b$12$W7TtluwP52kUKgdh8isEv.Jbxh41ZF/J67iBrdU/.Mj7elAtURes.	parent
70	windak.borys.r1	$2b$12$lm4qq/zxxqgwKjqax3AVTuwa9AsZn5x8Q3oW6TGhyGTGYSG2G.qtq	parent
71	twardosz.julita.1	$2b$12$YXV6BSFFtJ2qge5n014LauK5Um6BngRfG60toRlIUz4Y6xDsvZmIm	student
72	twardosz.maciej.r0	$2b$12$U3nIjouE7zfYtNLmyLq0P.KuNCsWLixuC6Obn1GqsIXYrIiHrHTTa	parent
73	twardosz.alan.r1	$2b$12$6ZAfBcz9hUzNmLJZH6RLbOnXwfOhc3uH0qNQ9LzVVUhbd8Y8j00au	parent
74	obiała.albert.2	$2b$12$RXII.l8WuuP44JUz3Uw0puYJe3Zi5uX6Q/sPDXixZ6d3xVA7t2VSu	student
75	obiała.marika.r0	$2b$12$gMsKysDB2rfA.KMhYr1.tehwhCy6aXkeMIgrPqUE3AtMPbwxe55HK	parent
76	żabka.adam.3	$2b$12$LO6OVgvoFk4ZcvBQWLDAZOZGJdgt/6achFeT0nIM4bF.5cQGOSHAi	student
77	żabka.blanka.r0	$2b$12$QwimJk7z9hBLMOYR3pJWC.pkQhRVmYOIXj4dOdb8hANCBwQJ0xhAK	parent
78	żabka.kacper.r1	$2b$12$fUU83rRh3lKgaQvZCGa5O.oe6qWzf5SVzZ5VjPpXFu9Jft5x15e72	parent
79	szymonik.olgierd.4	$2b$12$3bOXsUz.geAP5ulHS3VTquegn63QKY4F/JXFV6cRQmTBhn/L0waTu	student
80	szymonik.agnieszka.r0	$2b$12$UHCf9iLNkLg3mEXjV7CYQeOpuhGevK2WtM5JdRNnQ32W1rDCmZpOu	parent
81	borkiewicz.jacek.5	$2b$12$LBv.SwIxmeph9O.hI0F6GOmODiZB453zdiBjIKoz0iveH5g.Y5gza	student
82	borkiewicz.fabian.r0	$2b$12$Wm/lY73pb5DlOKzmydGPUuiu1OntY4dFFMOSSRgTrdbZaTgdJiyXS	parent
83	potyrała.sandra.6	$2b$12$LNrHVuSjW9IlVheRkYJtueDCjEFIhljGNwivnIgO3A.dm9uK2N5SG	student
84	potyrała.marika.r0	$2b$12$taC8nEJ5tjOTfIukaANtEeerjX/HwgOLgZdSAd03lOwniauGMkOn.	parent
85	potyrała.antoni.r1	$2b$12$1nVvqh.xvgg.aGsjLL0VDOpBZn.VDIvf3wpQUJI7yJ59JMXNp/z3i	parent
86	kapuścik.daniel.7	$2b$12$tGQojkKWI8tcV8eAN6WQFe/6qiSKDq2hE33vVgpFE96SoMxiwGBle	student
87	kapuścik.bruno.r0	$2b$12$xcWw/AjKcsMuCwsgItLjF.zqMhW5oDaXjgHGxeFtu.wqj.LBhr0Ai	parent
88	babiuch.tymoteusz.8	$2b$12$sQfI4GSFu6khvUGmHgdkle9jIKkhxz7cdeonSdHOO4H1oC3m6wZ2m	student
89	babiuch.bianka.r0	$2b$12$dJG98/26PkADMHQUR2SZf.jv0vV9eHGbbQl8pxppbcgJc5wqady2a	parent
90	babiuch.oliwier.r1	$2b$12$tKzVqd7NqFhsBybV2uXuk.v1T9xKT5HySRCiUI9NU9ygNPGmbr1Fq	parent
91	kurtyka.ida.9	$2b$12$dgsXOlNJPUJygrT3xUeshuzqyIhGkyqcwLcN3O0HpDdYscTRopc9a	student
92	kurtyka.konstanty.r0	$2b$12$16jGQwoZqNAoVGck8xXOderrVT4a8GNhYvV5dZUMqmb2HNiT7sI.i	parent
93	żołądkiewicz.stanisław.10	$2b$12$57AEOA3XRW5njEtr9j.J2O6UUi3SiZOo8xMUR4saF2YdQ1rYcnrhm	student
94	żołądkiewicz.antoni.r0	$2b$12$9Ij4ysaTZ4AE5SWf2OHamuRN7uhNCFDgb4rB1n/HWyFYSMRtblK0m	parent
95	żołądkiewicz.sylwia.r1	$2b$12$RQ4L9b2TA4xQ14XpCYkRieIldTKgw44cIPJHdPm3qDs.xeObPCZXm	parent
96	szumacher.ryszard.11	$2b$12$0FlbA5MsXYcP4JwA58cHA.vSOM5MNPJ72pdyzvFDDSEqne6V0B4u6	student
97	szumacher.eliza.r0	$2b$12$ycieqOYPeupHcqj1uwlVX.Tql8sbVwhCX9i/vP4LDozrkfGkJCz.y	parent
98	steuer.jacek.12	$2b$12$F1fKIcUcih7cHGaYYc6RTewKJ9CMvfJqs9u917S1Rn41HO1.Z2tYK	student
99	steuer.cezary.r0	$2b$12$1hpZ/a5iL8DbkMmFt2qXMuYh2.eEu2Do/dMX2vUN3NJyWhYU5fXEG	parent
100	steuer.krzysztof.r1	$2b$12$dKocjut4UJiFB.BIYwXT1uukzuZZLu56V9V.uv1/fyZDI2/1bx..6	parent
101	lemiesz.mariusz.13	$2b$12$3UJ9k8DHibQruiInqkcHe.Gt6wKr5fZqnI1XhoTVRIkC/FR47nYN6	student
102	lemiesz.ewelina.r0	$2b$12$YYohZ5uTOJFC1BKqsmpN2eCXxYeccPluLeXj1cdlWw8JOzD5lfhJi	parent
103	harasimiuk.mieszko.14	$2b$12$AHCgeS9lBCZZwMgcL3nOOOh12iOn69bp.z9NbFk3RG.RaGL67M.6S	student
104	harasimiuk.maks.r0	$2b$12$58X1IBw4G9T2maoU7A7ORu.5dhOuItUMoZ.AKLR89HN4EZdd2Ttvm	parent
105	dziewa.maks.15	$2b$12$09HDD3Ed.oOKXHGfIXTHHOTlip7p8asf0WvWhQM87s5FR50BV5WEi	student
106	dziewa.bruno.r0	$2b$12$88s8t91Sh4yJGLcvZKZlmuBPQav.42wnb79zUNtD3mf6mYRwGqkz6	parent
107	dziewa.miłosz.r1	$2b$12$8ufW/HWAmnR1HshiRmT3iOQW7kmoo7mvxlQnTYrSjXu4FYZFKPuzG	parent
108	melka.rozalia.16	$2b$12$Fnr451sRKEh4rxECt/6zY.ZWfHbCuWNFkXs5ddSmnZ1QpvoNE6FGi	student
109	melka.anita.r0	$2b$12$S2VbWCU4xXWVdb9CxUgyx.EuZZE0hP9P52x3BKenNexVjv.aVxq1a	parent
110	melka.blanka.r1	$2b$12$4dLn96LrllFSTqY9IPFZPu/Gg2Z598/f7Evol8SfFxN.t2Sa.6KyW	parent
111	radzewicz.agnieszka.17	$2b$12$Vi06S8.0VLW0ZlGrqU1aX.csD/vrk28TEDCV7sYgH76tEsT6YUFLm	student
112	radzewicz.adam.r0	$2b$12$UYSGk9UFbuvm7DdVSPthXOZI4JvrZW.V6iOiZ/7YQ2N24nPZFvLyS	parent
113	zawal.aleks.18	$2b$12$UdhjE61CAUVUTWmgu0t9buCAJNrzg7a6TG9AzgGnonGdoyIGdSOti	student
114	zawal.michał.r0	$2b$12$.91te3jeZN.Xj2k2IYOjCONgvauAWdEBkXpFQbV10S85NgbfdVVYu	parent
115	zawal.nataniel.r1	$2b$12$hgxp.ANJMJISr8HaMJ1D8eZmqxNryMu9aEchiSxXGKOkfSQmlv5/6	parent
116	fidler.malwina.19	$2b$12$cGLjxJy6TLKtmu3EtwP5puV87tcyRnQ6dicMb9TuT6CUUMf3yx6pS	student
117	fidler.marcel.r0	$2b$12$R5yRJ.6LRCnmjgx.F14eoeOkqF1qaNztwXRO38jtd/e1K2o6/jveO	parent
118	winek.filip.0	$2b$12$Fb61B6WSSQe5Hs.riRJWFOdofyVP/M4LtMTGkGvPal0FsXAEZwIXG	student
119	winek.aniela.r0	$2b$12$zkIsuMoTC1tVPTV.xbYE7eVXt4d19Nd..r/FLhQKc7/udQ2WZFkdi	parent
120	winek.angelika.r1	$2b$12$WFsGelUObZPZAoPo/pYRdeBhZ8kec2XWNOxEPFDGl3rUX.J06eAMy	parent
121	szyma.sonia.1	$2b$12$Melps1waB54SHy/rTfp1euZ.fDoddvyZ5RJRon990ihsx2WtjAYYC	student
122	szyma.kornelia.r0	$2b$12$Y1KO.YAOVM86CeARtNDDpeIs9i3EPTHNSLhOs6nhEq5XWtTw1FcR2	parent
123	patalas.angelika.2	$2b$12$pGUDuvuy1J7PAcUD7OLv3ObVZwpLL/LT6lgG.DXm0IgpdB6BrEmna	student
124	patalas.liwia.r0	$2b$12$nekhwiKE92BHlp4/GdG1hOMihlZO5YRFT1agcTZsgmFuetVqqV6UK	parent
125	aleksander.artur.3	$2b$12$6aLoV3WOIF8Y3Lu8LLNcWujRuLGF2FS0q9SDYJtrvGloWVOtsjKva	student
126	aleksander.janina.r0	$2b$12$3X1Gm6Lt7OTfCOBC.4K/nuDVMQo0LEECwXuu3cR1PRGFdIVl/LHBG	parent
127	aleksander.bruno.r1	$2b$12$OlVX1szV3uYmRN9.cbI0GeHdqf.HhAc5HnDcv.kkUUga.apVkN0uO	parent
128	kędziorek.kacper.4	$2b$12$BLVuAW5ivRG7NRNd49DJAuNbI7/6vzaH2yU9OJqIDcusgkW0j5PcG	student
129	kędziorek.kamil.r0	$2b$12$FD0hewZgIGKugk5cSgIO/Oq6ZerJB1AzI8zKSHKQkTv1gIW..9fMa	parent
130	kędziorek.gabriel.r1	$2b$12$enq4Cw6woGKRflZQGc6eE.XtyjkLfSQwazb.iXYdhGi1plkDOm4Vq	parent
131	stochel.wojciech.5	$2b$12$1aY3eQDkJzMPNCMuaP06ZeEaiKw/Byfaa8ZqagPZOQMcrjKyl3l6K	student
132	stochel.grzegorz.r0	$2b$12$rLOzY7e6PGcgFVFpz3VLEOpsgtm1iZIIXxr.7BS0tP2ekPgIyQDSC	parent
133	panuś.ewelina.6	$2b$12$y7qsSYhYQ76YL9Gu7WFhau5lzmXQMIF.NOaqKzL78VGA5bZ0Ie3D6	student
134	panuś.nikodem.r0	$2b$12$2NytrslfJlK/vXzqYyYrSO8kdv.nnOa.n65nUwfz79vKXFnYmZUZO	parent
135	dynak.alan.7	$2b$12$M1JilJKmiDQaITTME8llaueqFrZeVUhMa10yWUJovKIuxZpRE.e9a	student
136	dynak.kacper.r0	$2b$12$dVTjiI7cVsCWelwWzzcuMO2RF6H2DGPUxhQ1/E7C8ytTUk9v56.vq	parent
137	dynak.julita.r1	$2b$12$8qfWmyPK0a7X.Zmquj/OsO5JuNyD502qVbMTTn0BJD6usKfK5cowG	parent
138	wasil.sandra.8	$2b$12$NFdmPFz2jFzQfeDjrYHG2OJRaKy7leES17Q5.LPDPdfJ.HL4DbQ12	student
139	wasil.kalina.r0	$2b$12$4KVdNnxh6LYPCDKDE7d7TeScVojY2iWFGKixSXDjcsuma11SQFqrq	parent
140	wasil.błażej.r1	$2b$12$yW9GsvxFml4tvI32r21Xce5bZvRtmOfy6HiHGguu0BaOCWvi1.XkW	parent
141	płodzień.kazimierz.9	$2b$12$OGSFXxzcjJQFOqezf8pZpu8tMP/tl8WSRiyFk5m6T8BII/zD6AWUu	student
142	płodzień.borys.r0	$2b$12$ANuW0B8Cd.TxpHA21I1gDehY.MsRcCVvd0JZjPTCmAD.ukQaEXwU6	parent
143	kubieniec.sara.10	$2b$12$kDVxFvJEQch4WuZCXLCkGeWWvzsZQZ7YmTYV8mW5jgww6Xxy1qbTO	student
144	kubieniec.alan.r0	$2b$12$egNAxJ/pzeadlidL.fsp4eH2.Symi3.oHXj/mNh.us.REmFAaKoSy	parent
145	kubieniec.eryk.r1	$2b$12$mE7EoC297kLnL1kfVc.eLOCjTSnmZC/ExRENfRu9790eOQpgZuEJC	parent
146	bździuch.iwo.11	$2b$12$ddpW.mE/Q5dcaBfGHn0AyOZsWP9C9TP.wwYuqR2cARnKcT8jAbhx.	student
147	bździuch.monika.r0	$2b$12$66Os3sovdkljDECcvCl.DeBR5qNhp151TBbQmw1V2GMakMBiaudWK	parent
148	neska.ignacy.12	$2b$12$S.ZLqfxW2kl3aXyT0/x1Buat6JTko81HS21iaKT8qYYwgFZnPQuWS	student
149	neska.angelika.r0	$2b$12$1t1g8Exv/LiN9d1x2DnoquvrWcAvZJAs1H13/gNjJZQC3vH8QQI2K	parent
150	neska.szymon.r1	$2b$12$YghmK1e0Y6qnpfvPjRqfH.l6AdARilRoFeTeOyMM5sXxQnc3USlu6	parent
151	stosik.krystian.13	$2b$12$srSbAXJ932YKGTzVR4ndKOc64olS4vhwbGnzxuE50gwtKDxx/LbwO	student
152	stosik.radosław.r0	$2b$12$T6jPu.Evz4d9fPNxLCsCoO4XvHQUdN1wmQ8hsC2OO4Y0fwC5gB7Gq	parent
153	siciarz.franciszek.14	$2b$12$i1HKqNjGu28VgJawS8Caou3XTFE/lI27m6qllKyw7.PEovxtmGfQG	student
154	siciarz.anna maria.r0	$2b$12$zh5kw8gHLMW6y54t9QTfDu9xy44dgzeEwSsN6v6c7Wdp61WuTIBFa	parent
155	kukier.karina.15	$2b$12$RIkvx.ViUkxMH5c0ACRGuOoe8MpBd2jg95e9eFSqaErlKXZhLZMIS	student
156	kukier.emil.r0	$2b$12$hO14IKWPeP.43.uMTqiE1ePdJW6UYo8WjIVf5gu03LfvYppuBHuvK	parent
157	kukier.kamila.r1	$2b$12$s1yPU6L1S9T0jlqN43UhTezNYU6gH8xk4YSAtcEi17SQszic.CDFC	parent
158	kołaczyk.kajetan.16	$2b$12$LbhRhYj2ePkB4yuahQ3/SeZ2NsRQGb/J6bmRtuZ3oB9NjstYB.44W	student
159	kołaczyk.radosław.r0	$2b$12$t86EYJigafA40sVSzBcHUeS2NcisAQxrPSaYCDFsHFm0OYfhgysXG	parent
160	kołaczyk.dagmara.r1	$2b$12$s0nai7rVhmURyJmoXBv5zOxrIKd5JhgoMrW66s8YRjOe2THDCwG1a	parent
161	holeksa.jędrzej.17	$2b$12$nfAwKW18YAirtJU.1EUuE.KvVxqQxV.2Mmm8A4ZipzQonYY8j1cLm	student
162	holeksa.julianna.r0	$2b$12$10Sqi2ZkEoxlAEkuaA7mp.a0Wf3YioTn/DC7SLMxhjg9X748VT0a6	parent
163	holeksa.maciej.r1	$2b$12$B/hGbw/8XfcLPO0acVpJ..zQAhpeDIr3sCbfZiPPaWcScNRFNGwqS	parent
164	jarosik.dagmara.18	$2b$12$KAIp21R1PAkVBnw9hrzqTOTUi.Y2GTfGIdA86D9rRieHv0e9t5C4S	student
165	jarosik.krystyna.r0	$2b$12$YRYmw63gGyRhxiO9PO.utecYRvjPpPdnP0ij5DwUECuoAgJFaC8la	parent
166	gołoś.krzysztof.19	$2b$12$xDqienQJ2gZFQ.VpOha5Bee8JVHVI2JeRaE.l0xM2kxXBlAI8M5n6	student
167	gołoś.adrianna.r0	$2b$12$Xpx7Ut6GqNlUlsZVL1M3wO8A5DoMHv3/xb3tpLkV/jNOXbiCfAmyK	parent
168	gołoś.sandra.r1	$2b$12$zZLlymEDfdvvPOUI1on3v.Cim8/Hw/xWDEtsDIZUeGNepI/xB/Pr2	parent
169	golonko.angelika.0	$2b$12$7GwZOH8o7J9Rc1RsYBvzkORpNknM.l.X.7PkuTFBlVV3T8YthXpMi	student
170	golonko.witold.r0	$2b$12$mHKb/N/4YWlZEQsq4so2FeGTb/hiZsOJsNDM674DWWhfk0Zp3tsru	parent
171	golonko.eliza.r1	$2b$12$/avtYy4limkyVrHwxgbdAei6/Ie9aARSQvhnDzj.30NhBNLZAFdw2	parent
172	ryndak.adam.1	$2b$12$twDoILINj7chVaGEH2TZBO2tc/962YdO1RoUGs849qpuLEj5hJK/i	student
173	ryndak.apolonia.r0	$2b$12$WgIQrgzpZIfmzZEehRy/Me5hfzRTaQBJr.7kaLwf1JA7RLQ1WVbPi	parent
174	szyguła.maksymilian.2	$2b$12$NhVnIvoRJ/HGcIIbj7UxHe9SWZZLF6kBdzkZPaYj6W.NpQEek3DC2	student
175	szyguła.jerzy.r0	$2b$12$h0f5DJG2IEz/3OcqZZfy7uzgdnXSp7ouzWrV07AplqgeRDzaYfQXi	parent
176	szyguła.nataniel.r1	$2b$12$nKCCoNo8wrrg5tEe.NfNHeXbGEkGP7.7finhMJCXwTt8zE3n6BMMm	parent
177	kuran.aleksander.3	$2b$12$T9ckQdULOgVZqucIxe1BEObGNtyjI5nY8PNDIbyvpWvSSnrtjq0fS	student
178	kuran.dominik.r0	$2b$12$1Pjq4eWGPfVkzO1yAnWc6OL/E1KEGaMbfzRgCYFOEuh4/POHFy0WO	parent
179	szarzec.leonard.4	$2b$12$JIV3p1W0CiKPdLmW75r0NujaOvY/nIhlJB31ZJbDJuZ2U3BS4yknO	student
180	szarzec.miłosz.r0	$2b$12$MqV/2MLeQQ7H59xihTefZuIITII89aj7OQmQdRnu8BJZF2SnatFeC	parent
181	domek.malwina.5	$2b$12$JzSi0QjRJ19HNV4Qlb2M3.RnSmQ5Rdqi7KcsqoKMDaxK0JqdGK3P6	student
182	domek.ignacy.r0	$2b$12$QjvlPBAFjAUEn34CKcLfq.0LKHkli64JfXaztMqhozXbzaaZj482W	parent
183	domek.julianna.r1	$2b$12$Vd2B2by/unbTseK9ASb6IODhcne7MT/hHAmNg80qisenDUctDqQNa	parent
184	powałka.konstanty.6	$2b$12$FPXQ9q1Z9pc7JYz8fxigd.kFxnwFTVuUhS53TpuwK/sKceINf4D6K	student
185	powałka.józef.r0	$2b$12$C8R8GMTl8Ce9FA9aj1yDme7L4cJPm0Izm4S0jOYeUGvjoeZKORNv.	parent
186	mularz.tobiasz.7	$2b$12$1p7gwvi/TGIKgQiu70SNqe1z9zdLBeOIE2JV1Tz/4yfdUjvkRYrKm	student
187	mularz.marcin.r0	$2b$12$6BUXrpBjxxvBtLYCRkWY2.ueR8vzwFRo6Mg6Bhlp39XVef9bS6r2q	parent
188	obiała.urszula.8	$2b$12$MgtB2zTjfJS3/uJ37RnON.Icmf3iKCmSLOmNejT12zVqW825gotLm	student
189	obiała.marcelina.r0	$2b$12$xg5UMvAFl19JBIN.tafbr.VGsmmlQWkRg.ng9ZXGvhPvtwHrCdI3O	parent
190	obiała.franciszek.r1	$2b$12$IX.3oeUYHNqw9ooePXWlKenX.PoUom8iynyGlH2AJEJoYhdqYDjBW	parent
191	zimoląg.eryk.9	$2b$12$sE.4Kxwe56aydTJqLatV4.9zUITF/bHBz/Qsq980G9I6tMGPIHHPG	student
192	zimoląg.mieszko.r0	$2b$12$vKgToQjtZKlkEU1qH/6sjODh7vfzjR69Q2tNRacXTrk81jKk0bfcW	parent
193	zimoląg.justyna.r1	$2b$12$q8zh3uPsgksHTbQZqKX2uOi8Zr6fkxppfUppa2XvwzbYgOmksFQd.	parent
194	klaja.tymoteusz.10	$2b$12$qsBfAWGFNirRfpd12Pca7.K9XNqCeurtD2JPClPSiAOZBwx8L5Q2y	student
195	klaja.leonard.r0	$2b$12$WG3ReH/2bQm.g2VmliEHzO6fZqlF9U8jDPUYGF5p.B9YUTWuSnm2C	parent
196	heba.marcel.11	$2b$12$zddTEHBYIfPY30UHaPWOvel1xKJvO5OUAXIk7JkwBk8f9Oj6Je6Au	student
197	heba.tymon.r0	$2b$12$lvllGo7P0DCO7mwjLoUkJexTepWc9eO3Eu2Y2djoCGNZsJ3lux5I.	parent
198	heba.maurycy.r1	$2b$12$GJN1u9G9jmfWtmgTE1oieugOQCHOM8GvR6huDebkEz.cZhpQmud5W	parent
199	bieleń.kamila.12	$2b$12$VUOu8NAVWHcZgsN0ouLD3OEfUFnVBkZGmDqWXcc6HkATXtLdO68Hi	student
200	bieleń.bianka.r0	$2b$12$M/CSFgVWVcpN8BSKNT017.F8evkVJez6jgE9cFlorclnU.Ltkbt1O	parent
201	chłąd.marianna.13	$2b$12$ACf/.gbVz6BXsbjIE3tEcetgfHd9KMnM0tJe9PLoK28N7JCULN9Wu	student
202	chłąd.justyna.r0	$2b$12$Xr9FL.gc5VjorYRSXAvhruSdAwFTzJCj/yBzLmhu0gaiKnABt.CCy	parent
203	powierża.kalina.14	$2b$12$5wDAC8RaXC2yomCAmjfqn.hrCmVhoHrahDdqze.S1cIm0bo1xJHbW	student
204	powierża.cezary.r0	$2b$12$aG2KRxyE2BsShx3DUioIXevrhVO6Nfs85sIcr.EHDNiFG7dVEpveS	parent
205	lindner.kajetan.15	$2b$12$0fOB.MW4mUUZvXJ8jb1ID.rFGPuOFAsPzWRaibi5IDnlL3hqVuYvq	student
206	lindner.liwia.r0	$2b$12$S3fejGMEl4TBsgyUUZS4pudLbf0pa22BG1burQoZfxCctLksmrA5O	parent
207	hałka.róża.16	$2b$12$yIiXQ/OTdmV1XtjsEXiCg.wc0xFA/8pMurEPQtHHtzU.QK6mOseyO	student
208	hałka.szymon.r0	$2b$12$.PwMFvF0IbdflPoKe8oEyeAFTatqwcbGFWO/OYEJ75IVB3LXGVs4G	parent
209	hałka.antoni.r1	$2b$12$EDIiXlSA9AhJNe.F6BUV9.zgd8o8VZP0z1OcFsxuxyRu1olHU7RTu	parent
210	rzeźniczek.nicole.17	$2b$12$mIL/wDsHkLiNGrCuYR76wOLmCokDfldjbklhAQzaWChj3hYhNld7K	student
211	rzeźniczek.artur.r0	$2b$12$kmerm7/vdGW4bVeiZqoXJOTRbxTzc1SU6PO7zFY7ZGqmWIRVIUn8a	parent
212	rzeźniczek.nicole.r1	$2b$12$X4Ax3zI7ypIpx1tmnDhdFuFh0O5qz8tyAwEPcG0Rb8wCiPVvtJE6u	parent
213	chachaj.tadeusz.18	$2b$12$qqrlfoJqtUerV0hEEIGVPeg5bkS/SCcyUGPPZjxfypheUBzr9pSwe	student
214	chachaj.jeremi.r0	$2b$12$aTbbWgK.gdTPxboJYdNUh.p.RKIBkAsDjFn20FuPMElMNik9jNHyi	parent
215	chachaj.patryk.r1	$2b$12$X.hRT5G5vpmpMO4yDFlenuwRjYDa59/Ztts4RFDM99mcUYDQMK86C	parent
216	ulfik.jan.19	$2b$12$M6G7aLwnpnTcRuF5gYtlOex.ZlEaolEm5eK4sE2IfKMDyOT7h.0Ye	student
217	ulfik.malwina.r0	$2b$12$tCnm7csIB4LgX22txIdE9OgDkfJ7rOF3pLyg41wmOWffqb0L29ciK	parent
218	dykas.justyna.0	$2b$12$brjueW/oHTmi/zoow.BlPuhNpAJAx.H7tRVV5K8VycHV.sYQtRlzi	student
219	dykas.tola.r0	$2b$12$Zvk/i0vKdpb.ClP1YMoM/eFinjRMwtraJz0ua2mj8lD/qXcSQry7C	parent
220	makaruk.nataniel.1	$2b$12$Mste6h0i.EafHGzsoi8XROiQhlOrR3WwZW74PtAiOjpHA4CoWSzCm	student
221	makaruk.przemysław.r0	$2b$12$CpunyLScgku3ZRA5mQz3a.qK2H4rpeOsFPu/1J.XVm8EV56Y706B.	parent
222	makaruk.angelika.r1	$2b$12$St6Sd4WjD9vyhkIik2F3a.K3LmhQiV3gJV8lWISScxoZD0d1D03sO	parent
223	pytko.kajetan.2	$2b$12$a7PKz9VuvaWkb7nAPT8SHuRtZABbYZ9G7JmujvaA9QfMhT.c9xTI.	student
224	pytko.kamil.r0	$2b$12$qNM6kiftjfuOo7upi0mfheE5BFap6D8lTYmLveBMYkSQJ3T8mVdM6	parent
225	pytko.sylwia.r1	$2b$12$me3GtMyiX5WKHejc3JFKt.uTJwpOM.KEj0T.2mFEnjcDQCkflkQq6	parent
226	fyda.oskar.3	$2b$12$UXVYdMshZkM0kRQCEeCay.gDKEh2WHfmwrTVOh8DLSP8ei1bvXHLi	student
227	fyda.ksawery.r0	$2b$12$S9iq0RYPnMkk2sOaJF0wMuL7iwLg1USIkqGCAwAII2r9Gdb6tsPoq	parent
228	fyda.oskar.r1	$2b$12$.yhECpqBLWZy8mnRq1p11Owzzje2Iovvie45s.brfOjBhClISh2bC	parent
229	szkopek.eliza.4	$2b$12$grehmKUvvcuNbFLWKekPVuyUNAFXM2TcOhrZ5vvy598gDwj7qkWcC	student
230	szkopek.angelika.r0	$2b$12$FMxpM.0zY20Bj/h41BI1WuS3RApVqsgU4m670uH1K/qh/bwXr2Oo6	parent
231	bieniak.marianna.5	$2b$12$6kDIvSU8rT.yuzpMaukX2Of6HvpLoH9Kg1gFxLxEiDrkSCFzho8sG	student
232	bieniak.ryszard.r0	$2b$12$3xyymkg4fiNtvZmTQsD5OOnt6otM5nUbrcHBeq8tHF7xY3CByj7GK	parent
233	bieniak.ksawery.r1	$2b$12$fedD3y7hEJuL73/OPVuUsOCQ09QqJfkQqjfHxc1A5P.6c9g2eZj1i	parent
234	mućka.daniel.6	$2b$12$gWzUN25YS7BafkC78MTmZufXXbOU4kq.2Ztmr4Iqyjdn35rnI7Oqq	student
235	mućka.dagmara.r0	$2b$12$k7aIxpI6PcJotjhX4ghfbex6WEsKMV9KCNphKM.8ka36c0jSltCVW	parent
236	mućka.dominik.r1	$2b$12$8l5HHIWrQgHebENIqd.j9.Z05dndEVbt3SHQ.DRoNYeiiu9kAg4/G	parent
237	dumała.kornel.7	$2b$12$h2bqsp/mjWduuXmzxFxZmOiTDS/d2rSfzqKdDpsrZDWNMAZe6DErG	student
238	dumała.jerzy.r0	$2b$12$PRlIl.J8iCE0YRdi/6hRWOyc/z41ZFhFva4AG.Z9.sA83KhZqVoQq	parent
239	wojciech.olaf.8	$2b$12$w7Lvf9Wz6hcTogs94dtjNuafVZThByfVHGHRF9yypRf7rjRQc/n.m	student
240	wojciech.olga.r0	$2b$12$M9bCUjMsJ3PF6/n7KrXKOe8VVu53gqnQoXYntJKlIkSDKcOStKsOm	parent
241	wojciech.leon.r1	$2b$12$WSGxVnCjeKUmxxsBtpp01.dgZ5GkdMo.eIIEHajuneWaLBFW.bvWO	parent
242	glaza.natan.9	$2b$12$ISuSoKGhkpNl5nzDrwB7AelrOiKNRzsdwSgNP.fbpqLPssZ.EhLlm	student
243	glaza.norbert.r0	$2b$12$VwjwX92aqVLCTnVVxVRX6O2TcK3zaen2MvW5fqK03DUHjLBE2NZey	parent
244	szmuc.karol.10	$2b$12$snp2njueAqnzSHYA4LuQNOsQU3ehslNHwQCMaW1z0eG1d8CyHjDaC	student
245	szmuc.apolonia.r0	$2b$12$kZUSaxJC5oGDP.lKgXmZieLqSi97tI1qAEEf0IA1bwudlp160RO4q	parent
246	szmuc.stanisław.r1	$2b$12$UptGEM2VZSQ0CZbbvAhDn.H56NhiRXfDjyORszRUVOfDya/TrHecG	parent
247	miąsko.patryk.11	$2b$12$MOEvwzaFQ6DOSRzdKKZigONBYIO/ot9JEM/YTlk14MatQud/2Cu7C	student
248	miąsko.andrzej.r0	$2b$12$wH9LKDJEv3qRWlZlF0AlI.iUh2scnzVjadt6FL91AJIJy2OVVxeTu	parent
249	spólnik.sylwia.12	$2b$12$gNvTgbPUwJVU4KJ9/FokKOSqxiw1hJ7KRUTFXvGKjltJ1QhO91W0u	student
250	spólnik.dorota.r0	$2b$12$I.8UFodKCxsSbnhUmrm5z.eikV12NipDPF7WpPxQvy6n783rwyYBG	parent
251	nojman.szymon.13	$2b$12$ON0PrYD0/Difdf6Oo7PBAObYI66IotuxB5SLZl2UaQ.5tuPc4.vYO	student
252	nojman.olgierd.r0	$2b$12$eamjPz0MZiTNKgnSM4Vv.e3a3zx38l.zwnoRK5lM2Ed7UlIn7sRCK	parent
253	proć.kornel.14	$2b$12$3iZyjMZGdDpOsE/Im4Xa.O4lljr05VkkR7vpQ9fFPotMltRyKXbQW	student
254	proć.hubert.r0	$2b$12$47iDmcNbjRI.gVxCchJSTuh9gcDv2RZqo7Ou6kHacJjISGSIXWbr2	parent
255	proć.sara.r1	$2b$12$AsUiP.N2Hk6LFfyvmAijmugRx9Itugp8mdgdLeH59dWaxBgw7SPoG	parent
256	krzysiek.liwia.15	$2b$12$Uxu7.wm0NTgyggqrtsQPP.O5mKlV8b4tE7OqGuzDILZRzWO9X3dJu	student
257	krzysiek.roksana.r0	$2b$12$M0WHpYFr7bN63sjvaNvK0uC.ea0ia/XPET48jqhiWRxs6vW7V1wZq	parent
258	organiściak.sebastian.16	$2b$12$AGVxRR/aF0PeaYnU/oMLKOLVGsYeY1cG.EKdy6DMKL7T/44/0Rf7K	student
259	organiściak.paweł.r0	$2b$12$WJGgnkBySPNbobEdAqdGs.jFIAxFsbSOi639oBKPmDUODLcc1k7m6	parent
260	hajduga.eliza.17	$2b$12$ueY4i7VM0WGVZkhvo3aQHO//9P4N54ucowYHiWVt/Zkd7UQehrpVW	student
261	hajduga.konstanty.r0	$2b$12$o0GPxv.kCrvmSyS5kqCwEOfuvqGKm4W4cVj94REHkHtfE519cq0Da	parent
262	tomaszuk.leon.18	$2b$12$tfxrbrxVLFDgRR6QSZDT/evo0rwroI2tYUbbV6DgmbiXPukCtsSpS	student
263	tomaszuk.filip.r0	$2b$12$oz2mC4pdB5rvhqeBDzrd6OnZiAmYFnC4SJglYBa1w3lbe48YPv8gS	parent
264	tomaszuk.nikodem.r1	$2b$12$8wYph15xLv7wBEk41HAJM.Odz0vDb.y/ZoGne.JCg6mYqjB4ycKTC	parent
265	budner.jan.19	$2b$12$EVthhIONszxd5ult.taxIur0TMOZhzYsCC2DpkVwi3q77yG1/3dFu	student
266	budner.maciej.r0	$2b$12$UhTNFdD5WKhzk/OKwhIXNOu7dJ.0t0mQkG2Z.cNzTn7TkSvYdTk0W	parent
\.

COPY subjects FROM stdin;
1	Matematyka
2	Język polski
3	Język angielski
4	Historia
5	Geografia
6	Biologia
7	Chemia
8	Fizyka
9	Informatyka
10	Wychowanie fizyczne
11	WOS
12	Język niemiecki
13	Plastyka
14	Muzyka
15	Etyka
\.

COPY teachers FROM stdin;
1	2
2	3
3	4
4	5
5	6
6	7
7	8
8	9
9	10
10	11
11	12
12	13
13	14
14	15
15	16
\.

COPY parents FROM stdin;
1	18
2	20
3	22
4	23
5	25
6	26
7	28
8	29
9	31
10	32
11	34
12	35
13	37
14	39
15	41
16	42
17	44
18	45
19	47
20	48
21	50
22	52
23	53
24	55
25	56
26	58
27	59
28	61
29	63
30	65
31	67
32	69
33	70
34	72
35	73
36	75
37	77
38	78
39	80
40	82
41	84
42	85
43	87
44	89
45	90
46	92
47	94
48	95
49	97
50	99
51	100
52	102
53	104
54	106
55	107
56	109
57	110
58	112
59	114
60	115
61	117
62	119
63	120
64	122
65	124
66	126
67	127
68	129
69	130
70	132
71	134
72	136
73	137
74	139
75	140
76	142
77	144
78	145
79	147
80	149
81	150
82	152
83	154
84	156
85	157
86	159
87	160
88	162
89	163
90	165
91	167
92	168
93	170
94	171
95	173
96	175
97	176
98	178
99	180
100	182
101	183
102	185
103	187
104	189
105	190
106	192
107	193
108	195
109	197
110	198
111	200
112	202
113	204
114	206
115	208
116	209
117	211
118	212
119	214
120	215
121	217
122	219
123	221
124	222
125	224
126	225
127	227
128	228
129	230
130	232
131	233
132	235
133	236
134	238
135	240
136	241
137	243
138	245
139	246
140	248
141	250
142	252
143	254
144	255
145	257
146	259
147	261
148	263
149	264
150	266
\.

COPY contact_info FROM stdin;
1	1	+48 22 01	admin@szkola.edu.pl	ul. Storczykowa 29/03\n27-449 Żyrardów
2	2	884242815	stoltman.norbert@szkola.edu.pl	al. Odrzańska 125\n16-952 Krosno
3	3	510721163	sarota.daniel@szkola.edu.pl	ul. Górna 89/24\n98-527 Nysa
4	4	+48789692	nasiadka.eliza@szkola.edu.pl	plac Południowa 27\n40-968 Mława
5	5	+48799914	korpal.igor@szkola.edu.pl	ulica Głowackiego 51\n76-194 Kętrzyn
6	6	+48536390	cherek.błażej@szkola.edu.pl	ulica Graniczna 70/48\n82-359 Lębork
7	7	325233707	kalka.witold@szkola.edu.pl	ulica Jesionowa 06\n40-999 Bielsk Podlaski
8	8	+48737840	prucnal.janina@szkola.edu.pl	ulica Łabędzia 570\n96-640 Nowy Sącz
9	9	323217721	loba.oskar@szkola.edu.pl	ulica Dworcowa 17/28\n61-693 Środa Wielkopolska
10	10	+48578010	kajak.ada@szkola.edu.pl	pl. Mazowiecka 434\n48-881 Rybnik
11	11	322143324	golda.liwia@szkola.edu.pl	aleja Plater 009\n78-016 Szczecinek
12	12	792003573	capała.anita@szkola.edu.pl	plac Jarzębinowa 27/99\n76-635 Bielsk Podlaski
13	13	+48506109	furga.tobiasz@szkola.edu.pl	aleja Rataja 08\n61-345 Bartoszyce
14	14	783881085	harasimiuk.cyprian@szkola.edu.pl	al. Orkana 346\n88-762 Radomsko
15	15	+48798327	burzawa.błażej@szkola.edu.pl	ulica Spacerowa 07\n93-366 Starogard Gdański
16	16	508996131	basaj.wiktor@szkola.edu.pl	ulica Częstochowska 500\n95-077 Wągrowiec
17	17	+48578516	cader.blanka.0@gmail.com	ul. Lazurowa 60\n55-152 Dąbrowa Górnicza
18	18	784889195	cader.tobiasz.r0@gmail.com	ul. Okulickiego 472\n44-731 Oświęcim
19	19	786682726	kopczyk.malwina.1@gmail.com	plac Modrzewiowa 70\n50-396 Piaseczno
20	20	697564317	kopczyk.julita.r0@gmail.com	plac Rubinowa 82\n11-547 Myszków
21	21	328525695	ostapiuk.igor.2@gmail.com	aleja Szymanowskiego 27/10\n07-372 Lębork
22	22	+48733412	ostapiuk.ada.r0@gmail.com	al. Kilińskiego 79/26\n30-799 Katowice
23	23	724119533	ostapiuk.ewa.r1@gmail.com	ulica Wyzwolenia 74/58\n50-629 Tychy
24	24	+48220810	dyczko.franciszek.3@gmail.com	plac Chopina 55/41\n65-862 Tarnobrzeg
25	25	730868755	dyczko.tomasz.r0@gmail.com	ul. Kilińskiego 567\n31-690 Słupsk
26	26	787832591	dyczko.urszula.r1@gmail.com	ul. Klasztorna 16/21\n34-738 Nowy Targ
27	27	+48321041	fidura.jeremi.4@gmail.com	al. Kossaka 657\n32-502 Koszalin
28	28	+48505723	fidura.blanka.r0@gmail.com	ulica Hutnicza 739\n55-972 Koło
29	29	+48888380	fidura.julita.r1@gmail.com	al. Niecała 409\n53-253 Słupsk
30	30	+48723631	kopyto.antoni.5@gmail.com	plac Poniatowskiego 01/26\n69-869 Suwałki
31	31	+48690377	kopyto.jacek.r0@gmail.com	al. Baczynskiego 49\n82-312 Kluczbork
32	32	608308145	kopyto.lidia.r1@gmail.com	aleja Żeromskiego 31\n04-733 Wołomin
33	33	796583692	wocial.ida.6@gmail.com	al. Władysława Jagiełły 690\n80-848 Chojnice
34	34	+48508044	wocial.lidia.r0@gmail.com	ulica Owocowa 22\n46-987 Żory
35	35	+48665424	wocial.natasza.r1@gmail.com	ul. Kościelna 02/58\n37-659 Polkowice
36	36	221694585	kulma.maks.7@gmail.com	ul. Plażowa 38/28\n46-321 Nysa
37	37	+48732919	kulma.nikodem.r0@gmail.com	al. Borówkowa 20/76\n31-858 Inowrocław
38	38	+48503211	kostro.sara.8@gmail.com	pl. Pułaskiego 07/33\n49-898 Świebodzice
39	39	229008128	kostro.ida.r0@gmail.com	al. Częstochowska 61/92\n98-735 Ostrołęka
40	40	577622876	litwiniuk.daniel.9@gmail.com	al. Łabędzia 37/87\n66-882 Bielawa
41	41	+48889093	litwiniuk.alex.r0@gmail.com	pl. Parkowa 87\n74-274 Dzierżoniów
42	42	+48665187	litwiniuk.oskar.r1@gmail.com	ul. Skargi 51\n60-543 Sieradz
43	43	+48517337	michnowicz.maks.10@gmail.com	ulica Krasickiego 129\n46-590 Mielec
44	44	666699325	michnowicz.paweł.r0@gmail.com	ulica Fabryczna 227\n89-641 Puławy
45	45	+48889679	michnowicz.melania.r1@gmail.com	aleja Plażowa 427\n99-945 Świdnik
46	46	+48532265	plewnia.agnieszka.11@gmail.com	ulica Sokola 63\n22-089 Wałbrzych
47	47	794248323	plewnia.cyprian.r0@gmail.com	al. Skłodowskiej-Curie 000\n10-373 Bolesławiec
48	48	+48727660	plewnia.karol.r1@gmail.com	ulica Liliowa 73/03\n71-666 Bielsk Podlaski
49	49	694769983	paśnik.tymoteusz.12@gmail.com	ulica Skrajna 108\n97-435 Słupsk
50	50	697620189	paśnik.franciszek.r0@gmail.com	pl. Irysowa 48/01\n65-073 Sandomierz
51	51	+48780716	siedlaczek.leonard.13@gmail.com	ulica Skośna 24/69\n83-033 Rzeszów
52	52	502768559	siedlaczek.fryderyk.r0@gmail.com	al. Grottgera 258\n80-578 Jelenia Góra
53	53	883331886	siedlaczek.klara.r1@gmail.com	plac Wyszyńskiego 45/48\n78-063 Katowice
54	54	790698861	andziak.ewa.14@gmail.com	al. Solidarnosci 435\n34-757 Racibórz
55	55	697280676	andziak.błażej.r0@gmail.com	plac Głogowa 219\n91-371 Żyrardów
56	56	+48507169	andziak.borys.r1@gmail.com	plac Wodna 69\n52-846 Nowy Targ
57	57	724458909	wawrzyńczyk.karol.15@gmail.com	ulica Rycerska 55/78\n73-412 Chełm
58	58	798644602	wawrzyńczyk.maciej.r0@gmail.com	aleja Władysława Jagiełły 38/14\n05-431 Środa Wielkopolska
59	59	504889514	wawrzyńczyk.błażej.r1@gmail.com	ul. Sucharskiego 686\n67-302 Pruszcz Gdański
60	60	+48721919	hnat.marianna.16@gmail.com	plac Gałczynskiego 03/93\n33-947 Piaseczno
61	61	669537762	hnat.dariusz.r0@gmail.com	aleja Kazimierza Wielkiego 49/00\n19-832 Ostrów Wielkopolski
62	62	795637756	szczerek.apolonia.17@gmail.com	aleja Dąbrowskiej 43/89\n51-050 Toruń
63	63	505485373	szczerek.marcin.r0@gmail.com	al. Partyzantów 57\n25-937 Rybnik
64	64	570512805	serwa.wojciech.18@gmail.com	plac Czereśniowa 559\n86-015 Jawor
65	65	723312655	serwa.blanka.r0@gmail.com	ulica Konopnickiej 98/20\n64-879 Nowa Sól
66	66	699864359	bartkowicz.tymon.19@gmail.com	pl. Wspólna 74\n49-397 Zamość
67	67	+48572385	bartkowicz.tobiasz.r0@gmail.com	al. Poziomkowa 01/57\n33-669 Wołomin
68	68	+48511721	windak.melania.0@gmail.com	ul. Grzybowa 22\n59-854 Gdynia
69	69	795977479	windak.malwina.r0@gmail.com	al. Żwirowa 674\n05-136 Koszalin
70	70	+48729176	windak.borys.r1@gmail.com	ul. Kielecka 86\n03-018 Pszczyna
71	71	604992491	twardosz.julita.1@gmail.com	aleja Bociania 546\n83-683 Bartoszyce
72	72	606850842	twardosz.maciej.r0@gmail.com	al. Robotnicza 84\n92-611 Nowa Sól
73	73	609323828	twardosz.alan.r1@gmail.com	plac Hallera 707\n49-084 Sandomierz
74	74	+48502501	obiała.albert.2@gmail.com	pl. Sadowa 57/25\n43-738 Września
75	75	+48786568	obiała.marika.r0@gmail.com	ulica Makowa 245\n29-343 Stalowa Wola
76	76	+48609450	żabka.adam.3@gmail.com	aleja Górna 05\n19-286 Nowa Ruda
77	77	579936136	żabka.blanka.r0@gmail.com	plac Stolarska 626\n59-495 Katowice
78	78	792384571	żabka.kacper.r1@gmail.com	ulica Brzozowa 375\n72-964 Wrocław
79	79	+48607922	szymonik.olgierd.4@gmail.com	plac Krasińskiego 39\n16-218 Polkowice
80	80	727510312	szymonik.agnieszka.r0@gmail.com	aleja Jesienna 04\n55-533 Tarnów
81	81	+48509377	borkiewicz.jacek.5@gmail.com	plac Korczaka 674\n34-285 Stalowa Wola
82	82	+48518195	borkiewicz.fabian.r0@gmail.com	al. Wypoczynkowa 834\n87-850 Zawiercie
83	83	+48328863	potyrała.sandra.6@gmail.com	ulica Graniczna 070\n45-406 Dębica
84	84	786803513	potyrała.marika.r0@gmail.com	ul. Pałacowa 29\n19-921 Chorzów
85	85	699168046	potyrała.antoni.r1@gmail.com	al. Miodowa 14/69\n34-263 Płock
86	86	+48534271	kapuścik.daniel.7@gmail.com	al. Słowackiego 926\n25-330 Gliwice
87	87	576490197	kapuścik.bruno.r0@gmail.com	plac Lipowa 99/26\n24-948 Świętochłowice
88	88	691465887	babiuch.tymoteusz.8@gmail.com	plac Strzelecka 17\n72-760 Pszczyna
89	89	507769624	babiuch.bianka.r0@gmail.com	aleja Kościuszki 92/45\n10-560 Rumia
90	90	723666446	babiuch.oliwier.r1@gmail.com	pl. Orkana 29/63\n47-634 Chorzów
91	91	607929056	kurtyka.ida.9@gmail.com	ulica Średnia 25/60\n41-965 Kutno
92	92	576933057	kurtyka.konstanty.r0@gmail.com	ul. Górna 91/10\n32-315 Sandomierz
93	93	+48732330	żołądkiewicz.stanisław.10@gmail.com	aleja Gałczynskiego 98/94\n66-025 Katowice
94	94	+48519406	żołądkiewicz.antoni.r0@gmail.com	pl. Poprzeczna 93/11\n94-634 Ostrowiec Świętokrzyski
95	95	+48736015	żołądkiewicz.sylwia.r1@gmail.com	pl. Koralowa 62/12\n34-577 Wodzisław Śląski
96	96	507191172	szumacher.ryszard.11@gmail.com	al. Grabowa 043\n45-427 Oława
97	97	600133959	szumacher.eliza.r0@gmail.com	aleja Kolonia 66\n77-067 Jelenia Góra
98	98	+48729826	steuer.jacek.12@gmail.com	pl. Magnoliowa 485\n67-608 Zambrów
99	99	699524122	steuer.cezary.r0@gmail.com	plac Modrzewiowa 24\n03-099 Lubin
100	100	+48889389	steuer.krzysztof.r1@gmail.com	aleja Powstańców Śląskich 56/26\n68-728 Lubartów
101	101	+48794691	lemiesz.mariusz.13@gmail.com	ul. Toruńska 50\n95-855 Inowrocław
102	102	693094848	lemiesz.ewelina.r0@gmail.com	plac Truskawkowa 72\n60-185 Żywiec
103	103	570412430	harasimiuk.mieszko.14@gmail.com	pl. Okulickiego 29\n57-123 Zawiercie
104	104	+48606281	harasimiuk.maks.r0@gmail.com	plac Gałczynskiego 19/45\n22-988 Gdańsk
105	105	+48781016	dziewa.maks.15@gmail.com	pl. Konarskiego 18\n65-388 Gdańsk
106	106	+48730060	dziewa.bruno.r0@gmail.com	plac Sowia 53/80\n19-963 Giżycko
107	107	693400630	dziewa.miłosz.r1@gmail.com	aleja Rzeczna 780\n15-147 Lubliniec
108	108	662514030	melka.rozalia.16@gmail.com	ulica Zakole 61/43\n07-807 Ruda Śląska
109	109	782377704	melka.anita.r0@gmail.com	plac Rózana 66\n68-510 Police
110	110	220117159	melka.blanka.r1@gmail.com	al. Dąbrowskiego 71/42\n06-209 Rumia
111	111	323349052	radzewicz.agnieszka.17@gmail.com	pl. Krzywa 98/69\n47-414 Katowice
112	112	+48327412	radzewicz.adam.r0@gmail.com	ulica Wczasowa 62\n45-266 Gorzów Wielkopolski
113	113	732779336	zawal.aleks.18@gmail.com	al. Targowa 32\n70-321 Sochaczew
114	114	+48720006	zawal.michał.r0@gmail.com	ul. Wilcza 604\n17-758 Sochaczew
115	115	+48886310	zawal.nataniel.r1@gmail.com	aleja Paderewskiego 29\n18-634 Jelenia Góra
116	116	794296173	fidler.malwina.19@gmail.com	ul. Lazurowa 06\n97-180 Czeladź
117	117	+48329923	fidler.marcel.r0@gmail.com	pl. Listopada 57/41\n33-032 Wałbrzych
118	118	735383671	winek.filip.0@gmail.com	ulica Porzeczkowa 51/63\n29-950 Piotrków Trybunalski
119	119	576049858	winek.aniela.r0@gmail.com	ul. Matejki 88/82\n93-231 Skierniewice
120	120	+48570823	winek.angelika.r1@gmail.com	aleja Szmaragdowa 569\n52-368 Szczecinek
121	121	+48503094	szyma.sonia.1@gmail.com	aleja Irysowa 02/23\n55-584 Wyszków
122	122	721344090	szyma.kornelia.r0@gmail.com	ulica Myśliwska 87\n12-353 Lubin
123	123	+48507897	patalas.angelika.2@gmail.com	ul. Myśliwska 10/91\n01-159 Bochnia
124	124	661229690	patalas.liwia.r0@gmail.com	pl. Łanowa 648\n32-053 Tomaszów Mazowiecki
125	125	324622689	aleksander.artur.3@gmail.com	ulica Lazurowa 021\n17-544 Sandomierz
126	126	505140729	aleksander.janina.r0@gmail.com	ul. Gałczynskiego 19\n26-662 Lębork
127	127	726209265	aleksander.bruno.r1@gmail.com	al. Wrocławska 99\n46-971 Bielsko-Biała
128	128	692232694	kędziorek.kacper.4@gmail.com	plac Kolejowa 55/30\n87-939 Iława
129	129	519564492	kędziorek.kamil.r0@gmail.com	ulica Chabrowa 69\n47-365 Turek
130	130	+48530645	kędziorek.gabriel.r1@gmail.com	al. Stycznia 69\n28-618 Iława
131	131	+48533225	stochel.wojciech.5@gmail.com	pl. Jałowcowa 10\n34-770 Radomsko
132	132	+48889013	stochel.grzegorz.r0@gmail.com	pl. Paderewskiego 496\n31-254 Kraków
133	133	732270338	panuś.ewelina.6@gmail.com	pl. Spacerowa 131\n04-566 Bełchatów
134	134	326854148	panuś.nikodem.r0@gmail.com	aleja Wiejska 43/46\n25-143 Tychy
135	135	+48600696	dynak.alan.7@gmail.com	ulica Torowa 58/56\n79-780 Siedlce
136	136	222425780	dynak.kacper.r0@gmail.com	pl. Słoneczna 68\n98-156 Kraśnik
137	137	+48538372	dynak.julita.r1@gmail.com	plac Skośna 91/51\n67-065 Chorzów
138	138	+48511991	wasil.sandra.8@gmail.com	plac Klasztorna 81\n29-034 Lubartów
139	139	322566806	wasil.kalina.r0@gmail.com	al. Sarnia 15\n30-372 Mikołów
140	140	+48328291	wasil.błażej.r1@gmail.com	al. Cedrowa 53/58\n43-364 Police
141	141	+48883867	płodzień.kazimierz.9@gmail.com	pl. Sadowa 57\n90-836 Elbląg
142	142	+48660127	płodzień.borys.r0@gmail.com	plac Zielna 84\n23-740 Mińsk Mazowiecki
143	143	+48515557	kubieniec.sara.10@gmail.com	ulica Łączna 945\n28-176 Otwock
144	144	509409410	kubieniec.alan.r0@gmail.com	ul. Agrestowa 76\n19-171 Ruda Śląska
145	145	+48515124	kubieniec.eryk.r1@gmail.com	plac Przechodnia 01/62\n21-725 Płock
146	146	519164902	bździuch.iwo.11@gmail.com	pl. Wodna 33/58\n54-218 Łaziska Górne
147	147	538862907	bździuch.monika.r0@gmail.com	plac Rolnicza 32\n57-312 Chojnice
148	148	+48723388	neska.ignacy.12@gmail.com	aleja Kasprowicza 767\n59-587 Przemyśl
149	149	795428769	neska.angelika.r0@gmail.com	plac Długa 97/89\n04-191 Reda
150	150	517733117	neska.szymon.r1@gmail.com	aleja Sportowa 08/72\n66-531 Leszno
151	151	+48790512	stosik.krystian.13@gmail.com	al. Orzeszkowej 55/38\n26-520 Brzeg
152	152	512980484	stosik.radosław.r0@gmail.com	ulica Piwna 05/77\n79-225 Opole
153	153	+48324396	siciarz.franciszek.14@gmail.com	pl. Leśna 75/49\n25-198 Gdańsk
154	154	326675049	siciarz.anna maria.r0@gmail.com	ul. Sarnia 56/02\n85-093 Żary
155	155	228335552	kukier.karina.15@gmail.com	plac Storczykowa 20\n05-705 Bolesławiec
156	156	+48733131	kukier.emil.r0@gmail.com	ul. Południowa 54\n60-838 Elbląg
157	157	577707301	kukier.kamila.r1@gmail.com	pl. Klasztorna 870\n40-896 Lublin
158	158	222845968	kołaczyk.kajetan.16@gmail.com	aleja Spokojna 67\n75-464 Zgorzelec
159	159	505790178	kołaczyk.radosław.r0@gmail.com	al. Sucharskiego 74\n30-201 Gdynia
160	160	+48738755	kołaczyk.dagmara.r1@gmail.com	pl. Korfantego 51/71\n96-766 Sopot
161	161	603899315	holeksa.jędrzej.17@gmail.com	ul. Zapolskiej 58\n82-812 Leszno
162	162	323136453	holeksa.julianna.r0@gmail.com	plac Górna 003\n47-849 Zielona Góra
163	163	+48516484	holeksa.maciej.r1@gmail.com	aleja Borowa 612\n82-770 Jarocin
164	164	609774991	jarosik.dagmara.18@gmail.com	ulica Harcerska 966\n55-688 Jawor
165	165	+48790968	jarosik.krystyna.r0@gmail.com	pl. Orzeszkowej 258\n46-870 Będzin
166	166	+48321135	gołoś.krzysztof.19@gmail.com	ul. Kwiatowa 268\n36-592 Czechowice-Dziedzice
167	167	+48508241	gołoś.adrianna.r0@gmail.com	pl. Południowa 88/08\n23-388 Lubliniec
168	168	+48727324	gołoś.sandra.r1@gmail.com	pl. Leszczynowa 60\n33-068 Wrocław
169	169	+48661908	golonko.angelika.0@gmail.com	plac Szmaragdowa 06/02\n26-777 Pruszcz Gdański
170	170	+48226919	golonko.witold.r0@gmail.com	ul. Hutnicza 96\n86-733 Toruń
171	171	609759978	golonko.eliza.r1@gmail.com	ulica Tylna 12/30\n28-396 Świebodzice
172	172	+48513042	ryndak.adam.1@gmail.com	pl. Skłodowskiej-Curie 69/48\n55-315 Dębica
173	173	888921343	ryndak.apolonia.r0@gmail.com	ul. Turkusowa 34\n80-743 Bartoszyce
174	174	663700041	szyguła.maksymilian.2@gmail.com	al. Kolonia 349\n18-437 Wałbrzych
175	175	667866625	szyguła.jerzy.r0@gmail.com	aleja Żabia 96\n42-964 Koło
176	176	728176421	szyguła.nataniel.r1@gmail.com	ulica Miarki 78\n40-546 Turek
177	177	+48229523	kuran.aleksander.3@gmail.com	plac Szewska 44/71\n73-120 Bartoszyce
178	178	+48736023	kuran.dominik.r0@gmail.com	al. Nadbrzeżna 914\n18-040 Wrocław
179	179	+48323138	szarzec.leonard.4@gmail.com	aleja Konwaliowa 61\n79-889 Kielce
180	180	509701595	szarzec.miłosz.r0@gmail.com	plac Jarzębinowa 954\n54-388 Swarzędz
181	181	+48786152	domek.malwina.5@gmail.com	al. Kalinowa 080\n01-685 Przemyśl
182	182	786901506	domek.ignacy.r0@gmail.com	ulica Skośna 486\n70-243 Łuków
183	183	787065266	domek.julianna.r1@gmail.com	ulica Miła 28/96\n37-365 Zawiercie
184	184	608072681	powałka.konstanty.6@gmail.com	ulica Jeziorna 59\n39-211 Oświęcim
185	185	+48690410	powałka.józef.r0@gmail.com	al. Osiedlowa 09\n80-883 Chrzanów
186	186	+48536040	mularz.tobiasz.7@gmail.com	aleja Chmielna 818\n65-936 Piła
187	187	692845768	mularz.marcin.r0@gmail.com	al. Zakątek 18/29\n35-154 Wołomin
188	188	+48696417	obiała.urszula.8@gmail.com	aleja Piekarska 54\n57-574 Kalisz
189	189	+48605880	obiała.marcelina.r0@gmail.com	pl. Daleka 71/23\n52-477 Pruszków
190	190	+48662702	obiała.franciszek.r1@gmail.com	ul. Brzechwy 29/33\n59-199 Oława
191	191	+48664877	zimoląg.eryk.9@gmail.com	pl. Storczykowa 41/91\n56-010 Jasło
192	192	+48321869	zimoląg.mieszko.r0@gmail.com	aleja Narutowicza 51\n48-642 Kwidzyn
193	193	723857070	zimoląg.justyna.r1@gmail.com	plac Lelewela 98/09\n48-150 Czerwionka-Leszczyny
194	194	534361158	klaja.tymoteusz.10@gmail.com	aleja Kazimierza Wielkiego 593\n59-559 Sopot
195	195	736247726	klaja.leonard.r0@gmail.com	pl. Kowalska 10/59\n57-780 Kluczbork
196	196	724843787	heba.marcel.11@gmail.com	ul. Wiązowa 840\n24-311 Czechowice-Dziedzice
197	197	+48887864	heba.tymon.r0@gmail.com	plac Topolowa 222\n72-738 Wągrowiec
198	198	328088956	heba.maurycy.r1@gmail.com	ulica Krasińskiego 09/52\n92-267 Otwock
199	199	695410000	bieleń.kamila.12@gmail.com	ul. Mokra 10/07\n31-343 Elbląg
200	200	880295272	bieleń.bianka.r0@gmail.com	plac Wojska Polskiego 29/46\n24-724 Ząbki
201	201	+48515281	chłąd.marianna.13@gmail.com	ul. Zapolskiej 78/10\n92-840 Tarnowskie Góry
202	202	+48781960	chłąd.justyna.r0@gmail.com	al. Harcerska 571\n95-697 Szczecin
203	203	507045609	powierża.kalina.14@gmail.com	plac Sucharskiego 479\n08-306 Leszno
204	204	+48600473	powierża.cezary.r0@gmail.com	aleja Handlowa 70\n04-012 Szczecin
205	205	+48327783	lindner.kajetan.15@gmail.com	ulica Mieszka I 19\n75-536 Siemianowice Śląskie
206	206	516630254	lindner.liwia.r0@gmail.com	ul. Żytnia 60/09\n21-847 Piotrków Trybunalski
207	207	790737740	hałka.róża.16@gmail.com	al. Sportowa 50\n48-885 Sieradz
208	208	+48224033	hałka.szymon.r0@gmail.com	al. Królewska 63\n10-640 Świdnica
209	209	534373693	hałka.antoni.r1@gmail.com	aleja Paderewskiego 59/18\n99-290 Siemianowice Śląskie
210	210	600593364	rzeźniczek.nicole.17@gmail.com	pl. Kreta 150\n10-141 Jelenia Góra
211	211	+48794394	rzeźniczek.artur.r0@gmail.com	ulica Ptasia 86\n60-233 Mława
212	212	+48572855	rzeźniczek.nicole.r1@gmail.com	plac Lipca 89/63\n62-680 Świdnik
213	213	575611432	chachaj.tadeusz.18@gmail.com	aleja Dojazdowa 99\n84-632 Wejherowo
214	214	508339640	chachaj.jeremi.r0@gmail.com	plac Nałkowskiej 87\n23-493 Rzeszów
215	215	787010748	chachaj.patryk.r1@gmail.com	aleja Solidarnosci 23\n73-949 Legionowo
216	216	+48505271	ulfik.jan.19@gmail.com	plac Łabędzia 57/32\n16-780 Siemianowice Śląskie
217	217	663899393	ulfik.malwina.r0@gmail.com	pl. Złota 34\n66-939 Leszno
218	218	+48502591	dykas.justyna.0@gmail.com	pl. Kolonia 24/47\n52-402 Sieradz
219	219	+48663757	dykas.tola.r0@gmail.com	al. Rubinowa 49/68\n70-728 Częstochowa
220	220	323299752	makaruk.nataniel.1@gmail.com	ulica Poziomkowa 52/46\n40-409 Łaziska Górne
221	221	+48788669	makaruk.przemysław.r0@gmail.com	al. Pułaskiego 55\n45-386 Czerwionka-Leszczyny
222	222	+48667019	makaruk.angelika.r1@gmail.com	ulica Wodna 752\n57-761 Chorzów
223	223	+48228175	pytko.kajetan.2@gmail.com	ul. Wyszyńskiego 51/84\n13-500 Zielona Góra
224	224	530763355	pytko.kamil.r0@gmail.com	ul. Listopada 73/48\n81-011 Ostrów Mazowiecka
225	225	+48690042	pytko.sylwia.r1@gmail.com	al. Skargi 48/91\n63-103 Biłgoraj
226	226	+48575608	fyda.oskar.3@gmail.com	ul. Strażacka 17\n10-616 Przemyśl
227	227	+48606967	fyda.ksawery.r0@gmail.com	ul. Akacjowa 62\n79-825 Świdnik
228	228	739027287	fyda.oskar.r1@gmail.com	ul. Orzechowa 292\n72-286 Łuków
229	229	+48882430	szkopek.eliza.4@gmail.com	ul. Leszczynowa 718\n91-547 Mława
230	230	+48511131	szkopek.angelika.r0@gmail.com	ul. Szmaragdowa 198\n44-116 Konin
231	231	793209857	bieniak.marianna.5@gmail.com	plac Andersa 87\n20-819 Sandomierz
232	232	514452853	bieniak.ryszard.r0@gmail.com	plac Kopernika 489\n90-568 Sandomierz
233	233	508793879	bieniak.ksawery.r1@gmail.com	al. Rolna 314\n59-265 Poznań
234	234	695158566	mućka.daniel.6@gmail.com	ul. Kolejowa 346\n57-434 Ostrów Wielkopolski
235	235	792693023	mućka.dagmara.r0@gmail.com	ulica Lubelska 041\n82-544 Goleniów
236	236	572759117	mućka.dominik.r1@gmail.com	al. Zdrojowa 76\n43-586 Zakopane
237	237	+48501162	dumała.kornel.7@gmail.com	aleja Grabowa 32/89\n03-868 Żywiec
238	238	+48534978	dumała.jerzy.r0@gmail.com	aleja Klasztorna 044\n56-713 Chorzów
239	239	+48600675	wojciech.olaf.8@gmail.com	ul. Korczaka 084\n61-789 Mińsk Mazowiecki
240	240	+48513814	wojciech.olga.r0@gmail.com	plac Wypoczynkowa 259\n78-805 Nowy Dwór Mazowiecki
241	241	722282528	wojciech.leon.r1@gmail.com	al. Królewska 801\n96-912 Nowy Targ
242	242	501746884	glaza.natan.9@gmail.com	al. Kolorowa 66\n54-879 Koszalin
243	243	884522204	glaza.norbert.r0@gmail.com	ul. Kruczkowskiego 75\n66-363 Opole
244	244	+48572054	szmuc.karol.10@gmail.com	aleja Krzywa 98\n86-987 Grodzisk Mazowiecki
245	245	691530379	szmuc.apolonia.r0@gmail.com	aleja Willowa 663\n58-110 Kętrzyn
246	246	324234439	szmuc.stanisław.r1@gmail.com	ul. Szarych Szeregów 64\n02-286 Siedlce
247	247	+48328318	miąsko.patryk.11@gmail.com	pl. Turkusowa 56\n41-108 Chełm
248	248	572680349	miąsko.andrzej.r0@gmail.com	ul. Wiązowa 466\n51-820 Kutno
249	249	784028604	spólnik.sylwia.12@gmail.com	aleja Szafirowa 208\n08-656 Zawiercie
250	250	791569999	spólnik.dorota.r0@gmail.com	ulica Orzeszkowej 415\n80-434 Mława
251	251	510267801	nojman.szymon.13@gmail.com	plac Wyspiańskiego 833\n28-520 Koło
252	252	+48881806	nojman.olgierd.r0@gmail.com	aleja Graniczna 71\n42-200 Giżycko
253	253	+48735483	proć.kornel.14@gmail.com	ulica Okulickiego 393\n49-947 Starachowice
254	254	+48662143	proć.hubert.r0@gmail.com	al. Zachodnia 77\n29-746 Jasło
255	255	+48505927	proć.sara.r1@gmail.com	al. Graniczna 191\n58-294 Zgorzelec
256	256	+48697536	krzysiek.liwia.15@gmail.com	ul. Żytnia 67/80\n75-054 Przemyśl
257	257	662817578	krzysiek.roksana.r0@gmail.com	pl. Maczka 39\n64-004 Ostrów Mazowiecka
258	258	578465677	organiściak.sebastian.16@gmail.com	pl. Składowa 04\n33-902 Lublin
259	259	+48321916	organiściak.paweł.r0@gmail.com	al. Młynarska 382\n89-752 Głogów
260	260	502993314	hajduga.eliza.17@gmail.com	ul. Lisia 55/17\n79-315 Bielawa
261	261	737447812	hajduga.konstanty.r0@gmail.com	aleja Sarnia 75/60\n97-771 Siedlce
262	262	+48576283	tomaszuk.leon.18@gmail.com	aleja Górnicza 58/33\n81-775 Nowy Dwór Mazowiecki
263	263	780206308	tomaszuk.filip.r0@gmail.com	pl. Miodowa 80\n45-149 Piaseczno
264	264	+48881966	tomaszuk.nikodem.r1@gmail.com	plac Osiedlowa 28\n56-904 Grodzisk Mazowiecki
265	265	320530291	budner.jan.19@gmail.com	al. Zwycięstwa 518\n34-548 Łaziska Górne
266	266	220571861	budner.maciej.r0@gmail.com	plac Sienkiewicza 45/13\n08-411 Olsztyn
\.

COPY personal_data FROM stdin;
1	1	Administrator	Systemu	93090612329
2	2	Norbert	Stoltman	68111981650
3	3	Daniel	Sarota	70030829366
4	4	Eliza	Nasiadka	91020449719
5	5	Igor	Korpal	61081097101
6	6	Błażej	Cherek	76031781452
7	7	Witold	Kalka	94031311082
8	8	Janina	Prucnal	91060387419
9	9	Oskar	Loba	75061574768
10	10	Ada	Kajak	63082370263
11	11	Liwia	Golda	82102094732
12	12	Anita	Capała	66041937497
13	13	Tobiasz	Furga	63052620303
14	14	Cyprian	Harasimiuk	93112435075
15	15	Błażej	Burzawa	95020675419
16	16	Wiktor	Basaj	89020970452
17	17	Blanka	Cader	09242574629
18	18	Tobiasz	Cader	74100854658
19	19	Malwina	Kopczyk	09240677560
20	20	Julita	Kopczyk	89032144221
21	21	Igor	Ostapiuk	09270539511
22	22	Ada	Ostapiuk	73071065744
23	23	Ewa	Ostapiuk	85051318898
24	24	Franciszek	Dyczko	10222343490
25	25	Tomasz	Dyczko	85032636074
26	26	Urszula	Dyczko	73030967654
27	27	Jeremi	Fidura	08261627477
28	28	Blanka	Fidura	76062729669
29	29	Julita	Fidura	79090693694
30	30	Antoni	Kopyto	08292962330
31	31	Jacek	Kopyto	72021525820
32	32	Lidia	Kopyto	87011354094
33	33	Ida	Wocial	09271766107
34	34	Lidia	Wocial	80010114069
35	35	Natasza	Wocial	79121219259
36	36	Maks	Kulma	09311322582
37	37	Nikodem	Kulma	79121258212
38	38	Sara	Kostro	08312226925
39	39	Ida	Kostro	74090818182
40	40	Daniel	Litwiniuk	09210654346
41	41	Alex	Litwiniuk	77071571388
42	42	Oskar	Litwiniuk	88062622798
43	43	Maks	Michnowicz	09280311941
44	44	Paweł	Michnowicz	78092850083
45	45	Melania	Michnowicz	86061713998
46	46	Agnieszka	Plewnia	08293080613
47	47	Cyprian	Plewnia	81051475724
48	48	Karol	Plewnia	86083177929
49	49	Tymoteusz	Paśnik	10211188813
50	50	Franciszek	Paśnik	84111150517
51	51	Leonard	Siedlaczek	08300570438
52	52	Fryderyk	Siedlaczek	72042034798
53	53	Klara	Siedlaczek	73081718858
54	54	Ewa	Andziak	10251563951
55	55	Błażej	Andziak	72051637016
56	56	Borys	Andziak	72062458538
57	57	Karol	Wawrzyńczyk	10211817896
58	58	Maciej	Wawrzyńczyk	85082494965
59	59	Błażej	Wawrzyńczyk	82061483655
60	60	Marianna	Hnat	09231637634
61	61	Dariusz	Hnat	87081527587
62	62	Apolonia	Szczerek	08301583860
63	63	Marcin	Szczerek	86092622544
64	64	Wojciech	Serwa	09272952684
65	65	Blanka	Serwa	88112231042
66	66	Tymon	Bartkowicz	10252265432
67	67	Tobiasz	Bartkowicz	72020925980
68	68	Melania	Windak	08261988934
69	69	Malwina	Windak	88021589779
70	70	Borys	Windak	83070786788
71	71	Julita	Twardosz	08210421220
72	72	Maciej	Twardosz	83101055920
73	73	Alan	Twardosz	86021215816
74	74	Albert	Obiała	09221859833
75	75	Marika	Obiała	79112540876
76	76	Adam	Żabka	09220336137
77	77	Blanka	Żabka	83102721468
78	78	Kacper	Żabka	71032747702
79	79	Olgierd	Szymonik	08321642019
80	80	Agnieszka	Szymonik	72081283593
81	81	Jacek	Borkiewicz	07310669404
82	82	Fabian	Borkiewicz	89030132242
83	83	Sandra	Potyrała	07281477503
84	84	Marika	Potyrała	80071295585
85	85	Antoni	Potyrała	85012662770
86	86	Daniel	Kapuścik	07320356309
87	87	Bruno	Kapuścik	69121022368
88	88	Tymoteusz	Babiuch	08251456753
89	89	Bianka	Babiuch	80091993423
90	90	Oliwier	Babiuch	70092729240
91	91	Ida	Kurtyka	09241253837
92	92	Konstanty	Kurtyka	71103092597
93	93	Stanisław	Żołądkiewicz	08311979794
94	94	Antoni	Żołądkiewicz	83012688501
95	95	Sylwia	Żołądkiewicz	76010275396
96	96	Ryszard	Szumacher	08320734467
97	97	Eliza	Szumacher	89020953213
98	98	Jacek	Steuer	08222837127
99	99	Cezary	Steuer	82090958940
100	100	Krzysztof	Steuer	83040212396
101	101	Mariusz	Lemiesz	08221562053
102	102	Ewelina	Lemiesz	83112787142
103	103	Mieszko	Harasimiuk	08252566738
104	104	Maks	Harasimiuk	75102162310
105	105	Maks	Dziewa	08262972552
106	106	Bruno	Dziewa	77020772198
107	107	Miłosz	Dziewa	69061637420
108	108	Rozalia	Melka	09241738527
109	109	Anita	Melka	84101471798
110	110	Blanka	Melka	84122054057
111	111	Agnieszka	Radzewicz	09231286746
112	112	Adam	Radzewicz	84022798097
113	113	Aleks	Zawal	07320134895
114	114	Michał	Zawal	84052754797
115	115	Nataniel	Zawal	75051897729
116	116	Malwina	Fidler	08221983348
117	117	Marcel	Fidler	88122374618
118	118	Filip	Winek	07251886760
119	119	Aniela	Winek	79060747895
120	120	Angelika	Winek	87081048817
121	121	Sonia	Szyma	08252660029
122	122	Kornelia	Szyma	82111452264
123	123	Angelika	Patalas	07232872135
124	124	Liwia	Patalas	79011885049
125	125	Artur	Aleksander	07300767316
126	126	Janina	Aleksander	70111369103
127	127	Bruno	Aleksander	74080228397
128	128	Kacper	Kędziorek	07261621887
129	129	Kamil	Kędziorek	89011362884
130	130	Gabriel	Kędziorek	71072467831
131	131	Wojciech	Stochel	06271211781
132	132	Grzegorz	Stochel	85052619301
133	133	Ewelina	Panuś	07220345340
134	134	Nikodem	Panuś	86112480091
135	135	Alan	Dynak	07291971763
136	136	Kacper	Dynak	75101714426
137	137	Julita	Dynak	72103079687
138	138	Sandra	Wasil	06271195966
139	139	Kalina	Wasil	90030597911
140	140	Błażej	Wasil	87040546800
141	141	Kazimierz	Płodzień	07211519408
142	142	Borys	Płodzień	80062756068
143	143	Sara	Kubieniec	08220916709
144	144	Alan	Kubieniec	77091084824
145	145	Eryk	Kubieniec	89092757331
146	146	Iwo	Bździuch	08220274850
147	147	Monika	Bździuch	70100168382
148	148	Ignacy	Neska	07272548654
149	149	Angelika	Neska	87060817683
150	150	Szymon	Neska	72041642648
151	151	Krystian	Stosik	07322918422
152	152	Radosław	Stosik	84050491124
153	153	Franciszek	Siciarz	07250336457
154	154	Anna Maria	Siciarz	88011825746
155	155	Karina	Kukier	06271870568
156	156	Emil	Kukier	79061854488
157	157	Kamila	Kukier	86012917273
158	158	Kajetan	Kołaczyk	08240182764
159	159	Radosław	Kołaczyk	90012089188
160	160	Dagmara	Kołaczyk	78083173579
161	161	Jędrzej	Holeksa	07271322475
162	162	Julianna	Holeksa	77042687427
163	163	Maciej	Holeksa	83053096152
164	164	Dagmara	Jarosik	07323073971
165	165	Krystyna	Jarosik	83061421478
166	166	Krzysztof	Gołoś	08252311970
167	167	Adrianna	Gołoś	76022979145
168	168	Sandra	Gołoś	72010672287
169	169	Angelika	Golonko	07222376164
170	170	Witold	Golonko	70100591351
171	171	Eliza	Golonko	69112382860
172	172	Adam	Ryndak	06302820414
173	173	Apolonia	Ryndak	90032491831
174	174	Maksymilian	Szyguła	06292146390
175	175	Jerzy	Szyguła	72121895917
176	176	Nataniel	Szyguła	86083191400
177	177	Aleksander	Kuran	07221582885
178	178	Dominik	Kuran	83091923270
179	179	Leonard	Szarzec	05261574150
180	180	Miłosz	Szarzec	71070850602
181	181	Malwina	Domek	05320822338
182	182	Ignacy	Domek	71112237996
183	183	Julianna	Domek	83051423417
184	184	Konstanty	Powałka	07240910890
185	185	Józef	Powałka	73013153823
186	186	Tobiasz	Mularz	06300191518
187	187	Marcin	Mularz	74041279510
188	188	Urszula	Obiała	07222597158
189	189	Marcelina	Obiała	79111845392
190	190	Franciszek	Obiała	83061759940
191	191	Eryk	Zimoląg	05312258314
192	192	Mieszko	Zimoląg	78062258628
193	193	Justyna	Zimoląg	71090910654
194	194	Tymoteusz	Klaja	06240943178
195	195	Leonard	Klaja	88022987774
196	196	Marcel	Heba	06242793696
197	197	Tymon	Heba	79032162776
198	198	Maurycy	Heba	72121298277
199	199	Kamila	Bieleń	05282135923
200	200	Bianka	Bieleń	80051042277
201	201	Marianna	Chłąd	06290955642
202	202	Justyna	Chłąd	82051394415
203	203	Kalina	Powierża	06240172521
204	204	Cezary	Powierża	78100543736
205	205	Kajetan	Lindner	06251170628
206	206	Liwia	Lindner	87022134148
207	207	Róża	Hałka	07253017786
208	208	Szymon	Hałka	77071118457
209	209	Antoni	Hałka	84092839452
210	210	Nicole	Rzeźniczek	05280212893
211	211	Artur	Rzeźniczek	84072697506
212	212	Nicole	Rzeźniczek	81051874684
213	213	Tadeusz	Chachaj	05272288071
214	214	Jeremi	Chachaj	75052429325
215	215	Patryk	Chachaj	76072331742
216	216	Jan	Ulfik	06261257641
217	217	Malwina	Ulfik	83102375261
218	218	Justyna	Dykas	04290827453
219	219	Tola	Dykas	74061836342
220	220	Nataniel	Makaruk	05312840704
221	221	Przemysław	Makaruk	77022656050
222	222	Angelika	Makaruk	84090332087
223	223	Kajetan	Pytko	06231676955
224	224	Kamil	Pytko	86020148904
225	225	Sylwia	Pytko	88072634787
226	226	Oskar	Fyda	05320162751
227	227	Ksawery	Fyda	70051380309
228	228	Oskar	Fyda	73120127764
229	229	Eliza	Szkopek	06253169998
230	230	Angelika	Szkopek	73062586058
231	231	Marianna	Bieniak	04270816334
232	232	Ryszard	Bieniak	73050688270
233	233	Ksawery	Bieniak	89092923707
234	234	Daniel	Mućka	04261261071
235	235	Dagmara	Mućka	84111760314
236	236	Dominik	Mućka	79102873281
237	237	Kornel	Dumała	05250587019
238	238	Jerzy	Dumała	74101378003
239	239	Olaf	Wojciech	05320697736
240	240	Olga	Wojciech	82052246384
241	241	Leon	Wojciech	78121055959
242	242	Natan	Glaza	06252588220
243	243	Norbert	Glaza	82052741056
244	244	Karol	Szmuc	05232176471
245	245	Apolonia	Szmuc	88101449474
246	246	Stanisław	Szmuc	74021252935
247	247	Patryk	Miąsko	04302841462
248	248	Andrzej	Miąsko	85020133572
249	249	Sylwia	Spólnik	05301490220
250	250	Dorota	Spólnik	90031243309
251	251	Szymon	Nojman	05311491208
252	252	Olgierd	Nojman	75021926165
253	253	Kornel	Proć	05231771240
254	254	Hubert	Proć	72072266680
255	255	Sara	Proć	90052388618
256	256	Liwia	Krzysiek	05211947485
257	257	Roksana	Krzysiek	89092673329
258	258	Sebastian	Organiściak	04282415020
259	259	Paweł	Organiściak	75101497842
260	260	Eliza	Hajduga	05301952218
261	261	Konstanty	Hajduga	75112424817
262	262	Leon	Tomaszuk	05271618451
263	263	Filip	Tomaszuk	79110984070
264	264	Nikodem	Tomaszuk	88091645845
265	265	Jan	Budner	05282218095
266	266	Maciej	Budner	78062312702
\.

COPY classes FROM stdin;
1	1	1	2024
2	2	2	2024
3	3	3	2024
4	4	4	2024
5	5	5	2024
\.

COPY subject_groups FROM stdin;
1	1	1	1
2	1	2	1
3	1	3	1
4	1	3	2
5	1	4	1
6	1	5	1
7	1	6	1
8	1	7	1
9	1	8	1
10	1	9	1
11	1	9	2
12	1	10	1
13	1	10	2
14	1	11	1
15	1	12	1
16	1	13	1
17	1	14	1
18	1	15	1
19	2	1	1
20	2	2	1
21	2	3	1
22	2	3	2
23	2	4	1
24	2	5	1
25	2	6	1
26	2	7	1
27	2	8	1
28	2	9	1
29	2	9	2
30	2	10	1
31	2	10	2
32	2	11	1
33	2	12	1
34	2	13	1
35	2	14	1
36	2	15	1
37	3	1	1
38	3	2	1
39	3	3	1
40	3	3	2
41	3	4	1
42	3	5	1
43	3	6	1
44	3	7	1
45	3	8	1
46	3	9	1
47	3	9	2
48	3	10	1
49	3	10	2
50	3	11	1
51	3	12	1
52	3	13	1
53	3	14	1
54	3	15	1
55	4	1	1
56	4	2	1
57	4	3	1
58	4	3	2
59	4	4	1
60	4	5	1
61	4	6	1
62	4	7	1
63	4	8	1
64	4	9	1
65	4	9	2
66	4	10	1
67	4	10	2
68	4	11	1
69	4	12	1
70	4	13	1
71	4	14	1
72	4	15	1
73	5	1	1
74	5	2	1
75	5	3	1
76	5	3	2
77	5	4	1
78	5	5	1
79	5	6	1
80	5	7	1
81	5	8	1
82	5	9	1
83	5	9	2
84	5	10	1
85	5	10	2
86	5	11	1
87	5	12	1
88	5	13	1
89	5	14	1
90	5	15	1
\.

COPY students FROM stdin;
1	17	1
2	19	1
3	21	1
4	24	1
5	27	1
6	30	1
7	33	1
9	38	1
11	43	1
12	46	1
13	49	1
14	51	1
15	54	1
16	57	1
17	60	1
18	62	1
20	66	1
21	68	2
22	71	2
23	74	2
24	76	2
26	81	2
27	83	2
28	86	2
29	88	2
30	91	2
31	93	2
32	96	2
33	98	2
34	101	2
35	103	2
36	105	2
37	108	2
38	111	2
40	116	2
41	118	3
42	121	3
43	123	3
44	125	3
45	128	3
46	131	3
50	141	3
51	143	3
52	146	3
53	148	3
54	151	3
55	153	3
56	155	3
57	158	3
58	161	3
59	164	3
60	166	3
61	169	4
62	172	4
63	174	4
64	177	4
65	179	4
67	184	4
68	186	4
69	188	4
70	191	4
71	194	4
72	196	4
73	199	4
75	203	4
76	205	4
77	207	4
78	210	4
79	213	4
80	216	4
81	218	5
82	220	5
83	223	5
84	226	5
85	229	5
86	231	5
87	234	5
88	237	5
89	239	5
90	242	5
91	244	5
92	247	5
93	249	5
94	251	5
95	253	5
96	256	5
97	258	5
98	260	5
99	262	5
100	265	5
48	135	4
10	40	4
19	64	5
74	201	3
66	181	3
49	138	4
25	79	5
8	36	2
47	133	2
39	113	3
\.

COPY class_schedule FROM stdin;
1	1	6	1	1	4	1	201
2	1	6	1	1	5	6	309
3	1	6	1	1	2	4	302
4	1	6	1	1	5	2	208
5	1	2	3	3	1	7	309
6	1	2	3	3	3	7	209
7	1	2	3	3	5	3	106
8	1	2	3	4	1	8	307
9	1	2	3	4	3	5	102
10	1	2	3	4	1	1	303
11	1	5	4	5	3	3	306
12	1	5	4	5	1	3	103
13	1	14	7	8	4	7	204
14	1	14	7	8	2	5	103
15	1	2	8	9	2	8	108
16	1	2	8	9	3	8	106
17	1	14	9	10	3	1	203
18	1	14	9	10	2	1	109
19	1	14	9	11	4	8	208
20	1	14	9	11	4	6	208
21	1	11	10	12	1	2	205
22	1	11	10	12	2	6	102
23	1	11	10	12	2	3	208
24	1	11	10	13	1	6	302
25	1	11	10	13	5	7	309
26	1	11	10	13	4	2	302
27	1	11	11	14	5	1	202
28	1	11	11	14	5	4	103
29	1	3	12	15	1	5	107
30	1	3	12	15	4	4	206
31	1	5	13	16	3	2	103
32	1	5	13	16	1	4	201
33	1	5	14	17	3	6	110
34	1	5	14	17	2	2	110
35	1	14	15	18	2	7	204
36	1	14	15	18	3	4	207
37	2	6	1	19	3	6	105
38	2	6	1	19	1	2	306
39	2	6	1	19	3	1	205
40	2	6	1	19	3	5	308
41	2	2	3	21	3	3	305
42	2	2	3	21	3	2	302
43	2	2	3	21	2	7	210
44	2	2	3	22	4	2	308
45	2	2	3	22	2	6	105
46	2	2	3	22	2	4	207
47	2	5	4	23	4	7	207
48	2	5	4	23	5	7	207
49	2	10	7	26	5	5	110
50	2	10	7	26	5	6	208
51	2	2	8	27	4	6	203
52	2	2	8	27	1	6	103
53	2	14	9	28	2	2	107
54	2	14	9	28	1	7	208
55	2	14	9	29	1	8	309
56	2	14	9	29	5	1	305
57	2	11	10	30	3	4	110
58	2	11	10	30	4	4	105
59	2	11	10	30	1	5	201
60	2	11	10	31	1	3	205
61	2	11	10	31	2	5	104
62	2	11	10	31	5	8	302
63	2	11	11	32	4	1	110
64	2	11	11	32	5	3	101
65	2	3	12	33	2	8	104
66	2	3	12	33	5	4	106
67	2	5	13	34	4	3	301
68	2	5	13	34	2	3	203
69	2	5	14	35	1	1	205
70	2	5	14	35	3	8	207
71	2	14	15	36	5	2	203
72	2	14	15	36	1	4	205
73	3	9	3	39	5	6	110
74	3	9	3	39	3	3	202
75	3	9	3	39	5	5	304
76	3	9	3	40	4	4	203
77	3	9	3	40	5	8	106
78	3	9	3	40	3	1	306
79	3	9	5	42	1	3	109
80	3	9	5	42	1	7	205
81	3	14	7	44	1	6	305
82	3	14	7	44	4	2	107
83	3	3	8	45	2	1	204
84	3	3	8	45	3	7	202
85	3	14	9	46	1	5	203
86	3	14	9	46	4	3	206
87	3	14	9	47	5	7	106
88	3	14	9	47	1	1	302
89	3	3	12	51	1	2	208
90	3	3	12	51	4	1	108
91	3	4	14	53	2	5	206
92	3	4	14	53	2	8	103
93	3	14	15	54	2	4	307
94	3	14	15	54	3	6	101
95	4	10	3	57	2	3	304
96	4	10	3	57	1	3	201
97	4	10	3	57	3	6	205
98	4	10	3	58	3	1	206
99	4	10	3	58	4	3	307
100	4	10	3	58	3	4	210
101	4	1	4	59	1	5	205
102	4	1	4	59	1	6	206
103	4	1	5	60	2	7	302
104	4	1	5	60	5	7	109
105	4	10	7	62	3	5	309
106	4	10	7	62	4	7	203
107	4	8	10	66	1	4	204
108	4	8	10	66	4	4	103
109	4	8	10	66	2	8	101
110	4	8	10	67	1	7	101
111	4	8	10	67	4	2	306
112	4	8	10	67	3	8	102
113	4	4	12	69	1	2	302
114	4	4	12	69	2	1	310
115	4	4	14	71	4	5	103
116	4	4	14	71	1	1	104
117	5	12	2	74	3	5	110
118	5	12	2	74	4	2	101
119	5	12	2	74	5	8	208
120	5	12	2	74	4	5	109
121	5	10	3	75	2	8	201
122	5	10	3	75	1	2	108
123	5	10	3	75	4	6	304
124	5	10	3	76	2	2	203
125	5	10	3	76	5	4	101
126	5	10	3	76	4	8	207
127	5	10	7	80	2	6	209
128	5	10	7	80	5	1	310
129	5	13	8	81	4	3	209
130	5	13	8	81	5	7	110
131	5	12	11	86	2	3	309
132	5	12	11	86	2	5	308
133	5	7	14	89	4	4	207
134	5	7	14	89	5	5	103
\.

COPY attendance FROM stdin;
1	1	1	2025-06-06	presence
2	1	2	2025-06-06	excused absence
3	1	3	2025-06-06	presence
4	1	4	2025-06-06	excused absence
5	1	5	2025-06-06	presence
6	2	1	2025-06-06	presence
7	2	2	2025-06-06	presence
8	2	3	2025-06-06	excused absence
9	2	4	2025-06-06	presence
10	2	5	2025-06-06	presence
11	3	1	2025-06-06	presence
12	3	2	2025-06-06	presence
13	3	3	2025-06-06	presence
14	3	4	2025-06-06	presence
15	3	5	2025-06-06	presence
16	4	1	2025-06-06	presence
17	4	2	2025-06-06	presence
18	4	3	2025-06-06	presence
19	4	4	2025-06-06	presence
20	4	5	2025-06-06	presence
21	5	1	2025-06-06	presence
22	5	2	2025-06-06	late
23	5	3	2025-06-06	presence
24	5	4	2025-06-06	presence
25	5	5	2025-06-06	presence
26	6	1	2025-06-06	presence
27	6	2	2025-06-06	presence
28	6	3	2025-06-06	presence
29	6	4	2025-06-06	presence
30	6	5	2025-06-06	presence
31	7	1	2025-06-06	presence
32	7	2	2025-06-06	presence
33	7	3	2025-06-06	presence
34	7	4	2025-06-06	presence
35	7	5	2025-06-06	excused absence
36	8	1	2025-06-06	presence
37	8	2	2025-06-06	presence
38	8	3	2025-06-06	presence
39	8	4	2025-06-06	presence
40	8	5	2025-06-06	presence
41	9	1	2025-06-06	presence
42	9	2	2025-06-06	presence
43	9	3	2025-06-06	presence
44	9	4	2025-06-06	presence
45	9	5	2025-06-06	presence
46	10	1	2025-06-06	presence
47	10	2	2025-06-06	presence
48	10	3	2025-06-06	presence
49	10	4	2025-06-06	presence
50	10	5	2025-06-06	presence
51	11	1	2025-06-06	presence
52	11	2	2025-06-06	presence
53	11	3	2025-06-06	presence
54	11	4	2025-06-06	presence
55	11	5	2025-06-06	presence
56	12	1	2025-06-06	late
57	12	2	2025-06-06	presence
58	12	3	2025-06-06	presence
59	12	4	2025-06-06	presence
60	12	5	2025-06-06	presence
61	13	1	2025-06-06	excused absence
62	13	2	2025-06-06	presence
63	13	3	2025-06-06	presence
64	13	4	2025-06-06	presence
65	13	5	2025-06-06	presence
66	14	1	2025-06-06	presence
67	14	2	2025-06-06	presence
68	14	3	2025-06-06	presence
69	14	4	2025-06-06	absence
70	14	5	2025-06-06	presence
71	15	1	2025-06-06	presence
72	15	2	2025-06-06	presence
73	15	3	2025-06-06	presence
74	15	4	2025-06-06	presence
75	15	5	2025-06-06	presence
76	16	1	2025-06-06	presence
77	16	2	2025-06-06	excused absence
78	16	3	2025-06-06	presence
79	16	4	2025-06-06	presence
80	16	5	2025-06-06	presence
81	17	1	2025-06-06	excused absence
82	17	2	2025-06-06	presence
83	17	3	2025-06-06	presence
84	17	4	2025-06-06	excused absence
85	17	5	2025-06-06	presence
86	18	1	2025-06-06	presence
87	18	2	2025-06-06	presence
88	18	3	2025-06-06	presence
89	18	4	2025-06-06	presence
90	18	5	2025-06-06	presence
91	19	1	2025-06-06	presence
92	19	2	2025-06-06	presence
93	19	3	2025-06-06	presence
94	19	4	2025-06-06	presence
95	19	5	2025-06-06	presence
96	20	1	2025-06-06	presence
97	20	2	2025-06-06	presence
98	20	3	2025-06-06	presence
99	20	4	2025-06-06	late
100	20	5	2025-06-06	absence
101	21	37	2025-06-06	absence
102	21	38	2025-06-06	presence
103	21	39	2025-06-06	excused absence
104	21	40	2025-06-06	presence
105	21	41	2025-06-06	presence
106	22	37	2025-06-06	presence
107	22	38	2025-06-06	presence
108	22	39	2025-06-06	presence
109	22	40	2025-06-06	presence
110	22	41	2025-06-06	presence
111	23	37	2025-06-06	presence
112	23	38	2025-06-06	presence
113	23	39	2025-06-06	presence
114	23	40	2025-06-06	presence
115	23	41	2025-06-06	presence
116	24	37	2025-06-06	presence
117	24	38	2025-06-06	presence
118	24	39	2025-06-06	presence
119	24	40	2025-06-06	presence
120	24	41	2025-06-06	presence
121	25	37	2025-06-06	presence
122	25	38	2025-06-06	absence
123	25	39	2025-06-06	presence
124	25	40	2025-06-06	excused absence
125	25	41	2025-06-06	presence
126	26	37	2025-06-06	presence
127	26	38	2025-06-06	presence
128	26	39	2025-06-06	presence
129	26	40	2025-06-06	absence
130	26	41	2025-06-06	presence
131	27	37	2025-06-06	presence
132	27	38	2025-06-06	presence
133	27	39	2025-06-06	late
134	27	40	2025-06-06	presence
135	27	41	2025-06-06	presence
136	28	37	2025-06-06	presence
137	28	38	2025-06-06	presence
138	28	39	2025-06-06	presence
139	28	40	2025-06-06	presence
140	28	41	2025-06-06	presence
141	29	37	2025-06-06	presence
142	29	38	2025-06-06	presence
143	29	39	2025-06-06	late
144	29	40	2025-06-06	presence
145	29	41	2025-06-06	absence
146	30	37	2025-06-06	presence
147	30	38	2025-06-06	presence
148	30	39	2025-06-06	presence
149	30	40	2025-06-06	late
150	30	41	2025-06-06	presence
151	31	37	2025-06-06	presence
152	31	38	2025-06-06	presence
153	31	39	2025-06-06	presence
154	31	40	2025-06-06	presence
155	31	41	2025-06-06	excused absence
156	32	37	2025-06-06	absence
157	32	38	2025-06-06	presence
158	32	39	2025-06-06	presence
159	32	40	2025-06-06	presence
160	32	41	2025-06-06	presence
161	33	37	2025-06-06	absence
162	33	38	2025-06-06	presence
163	33	39	2025-06-06	late
164	33	40	2025-06-06	presence
165	33	41	2025-06-06	absence
166	34	37	2025-06-06	presence
167	34	38	2025-06-06	presence
168	34	39	2025-06-06	excused absence
169	34	40	2025-06-06	late
170	34	41	2025-06-06	presence
171	35	37	2025-06-06	presence
172	35	38	2025-06-06	presence
173	35	39	2025-06-06	presence
174	35	40	2025-06-06	presence
175	35	41	2025-06-06	presence
176	36	37	2025-06-06	presence
177	36	38	2025-06-06	presence
178	36	39	2025-06-06	excused absence
179	36	40	2025-06-06	presence
180	36	41	2025-06-06	presence
181	37	37	2025-06-06	presence
182	37	38	2025-06-06	presence
183	37	39	2025-06-06	presence
184	37	40	2025-06-06	late
185	37	41	2025-06-06	presence
186	38	37	2025-06-06	presence
187	38	38	2025-06-06	presence
188	38	39	2025-06-06	presence
189	38	40	2025-06-06	presence
190	38	41	2025-06-06	presence
191	39	37	2025-06-06	presence
192	39	38	2025-06-06	presence
193	39	39	2025-06-06	presence
194	39	40	2025-06-06	absence
195	39	41	2025-06-06	presence
196	40	37	2025-06-06	absence
197	40	38	2025-06-06	presence
198	40	39	2025-06-06	presence
199	40	40	2025-06-06	presence
200	40	41	2025-06-06	presence
201	41	73	2025-06-06	presence
202	41	74	2025-06-06	presence
203	41	75	2025-06-06	presence
204	41	76	2025-06-06	presence
205	41	77	2025-06-06	presence
206	42	73	2025-06-06	presence
207	42	74	2025-06-06	late
208	42	75	2025-06-06	presence
209	42	76	2025-06-06	presence
210	42	77	2025-06-06	presence
211	43	73	2025-06-06	presence
212	43	74	2025-06-06	presence
213	43	75	2025-06-06	presence
214	43	76	2025-06-06	presence
215	43	77	2025-06-06	presence
216	44	73	2025-06-06	presence
217	44	74	2025-06-06	presence
218	44	75	2025-06-06	presence
219	44	76	2025-06-06	presence
220	44	77	2025-06-06	presence
221	45	73	2025-06-06	presence
222	45	74	2025-06-06	presence
223	45	75	2025-06-06	presence
224	45	76	2025-06-06	presence
225	45	77	2025-06-06	late
226	46	73	2025-06-06	presence
227	46	74	2025-06-06	presence
228	46	75	2025-06-06	presence
229	46	76	2025-06-06	presence
230	46	77	2025-06-06	presence
231	47	73	2025-06-06	excused absence
232	47	74	2025-06-06	presence
233	47	75	2025-06-06	presence
234	47	76	2025-06-06	presence
235	47	77	2025-06-06	presence
236	48	73	2025-06-06	presence
237	48	74	2025-06-06	presence
238	48	75	2025-06-06	presence
239	48	76	2025-06-06	late
240	48	77	2025-06-06	presence
241	49	73	2025-06-06	presence
242	49	74	2025-06-06	presence
243	49	75	2025-06-06	presence
244	49	76	2025-06-06	presence
245	49	77	2025-06-06	presence
246	50	73	2025-06-06	presence
247	50	74	2025-06-06	presence
248	50	75	2025-06-06	presence
249	50	76	2025-06-06	presence
250	50	77	2025-06-06	presence
251	51	73	2025-06-06	presence
252	51	74	2025-06-06	presence
253	51	75	2025-06-06	presence
254	51	76	2025-06-06	presence
255	51	77	2025-06-06	presence
256	52	73	2025-06-06	presence
257	52	74	2025-06-06	presence
258	52	75	2025-06-06	late
259	52	76	2025-06-06	presence
260	52	77	2025-06-06	presence
261	53	73	2025-06-06	presence
262	53	74	2025-06-06	presence
263	53	75	2025-06-06	presence
264	53	76	2025-06-06	presence
265	53	77	2025-06-06	presence
266	54	73	2025-06-06	presence
267	54	74	2025-06-06	absence
268	54	75	2025-06-06	presence
269	54	76	2025-06-06	excused absence
270	54	77	2025-06-06	presence
271	55	73	2025-06-06	presence
272	55	74	2025-06-06	presence
273	55	75	2025-06-06	presence
274	55	76	2025-06-06	presence
275	55	77	2025-06-06	presence
276	56	73	2025-06-06	presence
277	56	74	2025-06-06	presence
278	56	75	2025-06-06	presence
279	56	76	2025-06-06	absence
280	56	77	2025-06-06	presence
281	57	73	2025-06-06	absence
282	57	74	2025-06-06	late
283	57	75	2025-06-06	presence
284	57	76	2025-06-06	presence
285	57	77	2025-06-06	presence
286	58	73	2025-06-06	presence
287	58	74	2025-06-06	presence
288	58	75	2025-06-06	presence
289	58	76	2025-06-06	presence
290	58	77	2025-06-06	presence
291	59	73	2025-06-06	presence
292	59	74	2025-06-06	presence
293	59	75	2025-06-06	absence
294	59	76	2025-06-06	presence
295	59	77	2025-06-06	presence
296	60	73	2025-06-06	presence
297	60	74	2025-06-06	late
298	60	75	2025-06-06	presence
299	60	76	2025-06-06	presence
300	60	77	2025-06-06	presence
301	61	95	2025-06-06	presence
302	61	96	2025-06-06	presence
303	61	97	2025-06-06	presence
304	61	98	2025-06-06	presence
305	61	99	2025-06-06	presence
306	62	95	2025-06-06	presence
307	62	96	2025-06-06	late
308	62	97	2025-06-06	excused absence
309	62	98	2025-06-06	presence
310	62	99	2025-06-06	presence
311	63	95	2025-06-06	presence
312	63	96	2025-06-06	presence
313	63	97	2025-06-06	presence
314	63	98	2025-06-06	presence
315	63	99	2025-06-06	presence
316	64	95	2025-06-06	presence
317	64	96	2025-06-06	presence
318	64	97	2025-06-06	presence
319	64	98	2025-06-06	excused absence
320	64	99	2025-06-06	late
321	65	95	2025-06-06	presence
322	65	96	2025-06-06	presence
323	65	97	2025-06-06	presence
324	65	98	2025-06-06	late
325	65	99	2025-06-06	presence
326	66	95	2025-06-06	late
327	66	96	2025-06-06	excused absence
328	66	97	2025-06-06	presence
329	66	98	2025-06-06	presence
330	66	99	2025-06-06	absence
331	67	95	2025-06-06	presence
332	67	96	2025-06-06	presence
333	67	97	2025-06-06	excused absence
334	67	98	2025-06-06	presence
335	67	99	2025-06-06	presence
336	68	95	2025-06-06	presence
337	68	96	2025-06-06	presence
338	68	97	2025-06-06	presence
339	68	98	2025-06-06	excused absence
340	68	99	2025-06-06	presence
341	69	95	2025-06-06	presence
342	69	96	2025-06-06	presence
343	69	97	2025-06-06	presence
344	69	98	2025-06-06	presence
345	69	99	2025-06-06	excused absence
346	70	95	2025-06-06	presence
347	70	96	2025-06-06	presence
348	70	97	2025-06-06	presence
349	70	98	2025-06-06	late
350	70	99	2025-06-06	presence
351	71	95	2025-06-06	excused absence
352	71	96	2025-06-06	presence
353	71	97	2025-06-06	presence
354	71	98	2025-06-06	presence
355	71	99	2025-06-06	presence
356	72	95	2025-06-06	presence
357	72	96	2025-06-06	presence
358	72	97	2025-06-06	presence
359	72	98	2025-06-06	presence
360	72	99	2025-06-06	excused absence
361	73	95	2025-06-06	presence
362	73	96	2025-06-06	presence
363	73	97	2025-06-06	presence
364	73	98	2025-06-06	presence
365	73	99	2025-06-06	late
366	74	95	2025-06-06	presence
367	74	96	2025-06-06	late
368	74	97	2025-06-06	presence
369	74	98	2025-06-06	presence
370	74	99	2025-06-06	presence
371	75	95	2025-06-06	presence
372	75	96	2025-06-06	presence
373	75	97	2025-06-06	presence
374	75	98	2025-06-06	presence
375	75	99	2025-06-06	excused absence
376	76	95	2025-06-06	presence
377	76	96	2025-06-06	presence
378	76	97	2025-06-06	presence
379	76	98	2025-06-06	presence
380	76	99	2025-06-06	late
381	77	95	2025-06-06	presence
382	77	96	2025-06-06	presence
383	77	97	2025-06-06	presence
384	77	98	2025-06-06	presence
385	77	99	2025-06-06	absence
386	78	95	2025-06-06	presence
387	78	96	2025-06-06	presence
388	78	97	2025-06-06	late
389	78	98	2025-06-06	presence
390	78	99	2025-06-06	presence
391	79	95	2025-06-06	presence
392	79	96	2025-06-06	presence
393	79	97	2025-06-06	presence
394	79	98	2025-06-06	presence
395	79	99	2025-06-06	presence
396	80	95	2025-06-06	presence
397	80	96	2025-06-06	presence
398	80	97	2025-06-06	excused absence
399	80	98	2025-06-06	presence
400	80	99	2025-06-06	absence
401	81	117	2025-06-06	presence
402	81	118	2025-06-06	absence
403	81	119	2025-06-06	presence
404	81	120	2025-06-06	presence
405	81	121	2025-06-06	presence
406	82	117	2025-06-06	presence
407	82	118	2025-06-06	presence
408	82	119	2025-06-06	presence
409	82	120	2025-06-06	presence
410	82	121	2025-06-06	late
411	83	117	2025-06-06	presence
412	83	118	2025-06-06	presence
413	83	119	2025-06-06	presence
414	83	120	2025-06-06	presence
415	83	121	2025-06-06	presence
416	84	117	2025-06-06	presence
417	84	118	2025-06-06	presence
418	84	119	2025-06-06	late
419	84	120	2025-06-06	presence
420	84	121	2025-06-06	presence
421	85	117	2025-06-06	presence
422	85	118	2025-06-06	presence
423	85	119	2025-06-06	presence
424	85	120	2025-06-06	presence
425	85	121	2025-06-06	presence
426	86	117	2025-06-06	presence
427	86	118	2025-06-06	presence
428	86	119	2025-06-06	presence
429	86	120	2025-06-06	presence
430	86	121	2025-06-06	presence
431	87	117	2025-06-06	presence
432	87	118	2025-06-06	absence
433	87	119	2025-06-06	presence
434	87	120	2025-06-06	presence
435	87	121	2025-06-06	presence
436	88	117	2025-06-06	presence
437	88	118	2025-06-06	presence
438	88	119	2025-06-06	presence
439	88	120	2025-06-06	presence
440	88	121	2025-06-06	presence
441	89	117	2025-06-06	presence
442	89	118	2025-06-06	presence
443	89	119	2025-06-06	presence
444	89	120	2025-06-06	presence
445	89	121	2025-06-06	presence
446	90	117	2025-06-06	presence
447	90	118	2025-06-06	presence
448	90	119	2025-06-06	presence
449	90	120	2025-06-06	presence
450	90	121	2025-06-06	presence
451	91	117	2025-06-06	presence
452	91	118	2025-06-06	presence
453	91	119	2025-06-06	presence
454	91	120	2025-06-06	presence
455	91	121	2025-06-06	presence
456	92	117	2025-06-06	presence
457	92	118	2025-06-06	presence
458	92	119	2025-06-06	presence
459	92	120	2025-06-06	presence
460	92	121	2025-06-06	excused absence
461	93	117	2025-06-06	presence
462	93	118	2025-06-06	presence
463	93	119	2025-06-06	presence
464	93	120	2025-06-06	presence
465	93	121	2025-06-06	presence
466	94	117	2025-06-06	presence
467	94	118	2025-06-06	late
468	94	119	2025-06-06	presence
469	94	120	2025-06-06	presence
470	94	121	2025-06-06	presence
471	95	117	2025-06-06	presence
472	95	118	2025-06-06	presence
473	95	119	2025-06-06	presence
474	95	120	2025-06-06	presence
475	95	121	2025-06-06	excused absence
476	96	117	2025-06-06	presence
477	96	118	2025-06-06	presence
478	96	119	2025-06-06	presence
479	96	120	2025-06-06	excused absence
480	96	121	2025-06-06	presence
481	97	117	2025-06-06	presence
482	97	118	2025-06-06	presence
483	97	119	2025-06-06	presence
484	97	120	2025-06-06	presence
485	97	121	2025-06-06	late
486	98	117	2025-06-06	presence
487	98	118	2025-06-06	presence
488	98	119	2025-06-06	presence
489	98	120	2025-06-06	late
490	98	121	2025-06-06	presence
491	99	117	2025-06-06	presence
492	99	118	2025-06-06	absence
493	99	119	2025-06-06	presence
494	99	120	2025-06-06	presence
495	99	121	2025-06-06	presence
496	100	117	2025-06-06	presence
497	100	118	2025-06-06	presence
498	100	119	2025-06-06	presence
499	100	120	2025-06-06	absence
500	100	121	2025-06-06	late
501	1	1	2025-06-05	presence
502	1	2	2025-06-05	presence
503	1	3	2025-06-05	presence
504	1	4	2025-06-05	presence
505	1	5	2025-06-05	presence
506	2	1	2025-06-05	absence
507	2	2	2025-06-05	presence
508	2	3	2025-06-05	presence
509	2	4	2025-06-05	late
510	2	5	2025-06-05	excused absence
511	3	1	2025-06-05	presence
512	3	2	2025-06-05	presence
513	3	3	2025-06-05	presence
514	3	4	2025-06-05	presence
515	3	5	2025-06-05	presence
516	4	1	2025-06-05	absence
517	4	2	2025-06-05	presence
518	4	3	2025-06-05	presence
519	4	4	2025-06-05	presence
520	4	5	2025-06-05	presence
521	5	1	2025-06-05	presence
522	5	2	2025-06-05	presence
523	5	3	2025-06-05	presence
524	5	4	2025-06-05	presence
525	5	5	2025-06-05	presence
526	6	1	2025-06-05	absence
527	6	2	2025-06-05	presence
528	6	3	2025-06-05	presence
529	6	4	2025-06-05	presence
530	6	5	2025-06-05	presence
531	7	1	2025-06-05	presence
532	7	2	2025-06-05	excused absence
533	7	3	2025-06-05	presence
534	7	4	2025-06-05	excused absence
535	7	5	2025-06-05	presence
536	8	1	2025-06-05	late
537	8	2	2025-06-05	presence
538	8	3	2025-06-05	presence
539	8	4	2025-06-05	presence
540	8	5	2025-06-05	presence
541	9	1	2025-06-05	presence
542	9	2	2025-06-05	presence
543	9	3	2025-06-05	presence
544	9	4	2025-06-05	absence
545	9	5	2025-06-05	presence
546	10	1	2025-06-05	absence
547	10	2	2025-06-05	presence
548	10	3	2025-06-05	absence
549	10	4	2025-06-05	presence
550	10	5	2025-06-05	presence
551	11	1	2025-06-05	presence
552	11	2	2025-06-05	excused absence
553	11	3	2025-06-05	presence
554	11	4	2025-06-05	late
555	11	5	2025-06-05	presence
556	12	1	2025-06-05	presence
557	12	2	2025-06-05	presence
558	12	3	2025-06-05	presence
559	12	4	2025-06-05	presence
560	12	5	2025-06-05	presence
561	13	1	2025-06-05	absence
562	13	2	2025-06-05	presence
563	13	3	2025-06-05	absence
564	13	4	2025-06-05	presence
565	13	5	2025-06-05	presence
566	14	1	2025-06-05	presence
567	14	2	2025-06-05	presence
568	14	3	2025-06-05	presence
569	14	4	2025-06-05	presence
570	14	5	2025-06-05	presence
571	15	1	2025-06-05	presence
572	15	2	2025-06-05	presence
573	15	3	2025-06-05	presence
574	15	4	2025-06-05	presence
575	15	5	2025-06-05	presence
576	16	1	2025-06-05	presence
577	16	2	2025-06-05	presence
578	16	3	2025-06-05	presence
579	16	4	2025-06-05	presence
580	16	5	2025-06-05	presence
581	17	1	2025-06-05	presence
582	17	2	2025-06-05	presence
583	17	3	2025-06-05	presence
584	17	4	2025-06-05	presence
585	17	5	2025-06-05	presence
586	18	1	2025-06-05	presence
587	18	2	2025-06-05	presence
588	18	3	2025-06-05	presence
589	18	4	2025-06-05	late
590	18	5	2025-06-05	presence
591	19	1	2025-06-05	presence
592	19	2	2025-06-05	presence
593	19	3	2025-06-05	presence
594	19	4	2025-06-05	presence
595	19	5	2025-06-05	absence
596	20	1	2025-06-05	presence
597	20	2	2025-06-05	presence
598	20	3	2025-06-05	presence
599	20	4	2025-06-05	presence
600	20	5	2025-06-05	presence
601	21	37	2025-06-05	presence
602	21	38	2025-06-05	presence
603	21	39	2025-06-05	presence
604	21	40	2025-06-05	presence
605	21	41	2025-06-05	presence
606	22	37	2025-06-05	presence
607	22	38	2025-06-05	presence
608	22	39	2025-06-05	presence
609	22	40	2025-06-05	presence
610	22	41	2025-06-05	presence
611	23	37	2025-06-05	presence
612	23	38	2025-06-05	late
613	23	39	2025-06-05	presence
614	23	40	2025-06-05	excused absence
615	23	41	2025-06-05	presence
616	24	37	2025-06-05	presence
617	24	38	2025-06-05	presence
618	24	39	2025-06-05	presence
619	24	40	2025-06-05	presence
620	24	41	2025-06-05	presence
621	25	37	2025-06-05	presence
622	25	38	2025-06-05	presence
623	25	39	2025-06-05	presence
624	25	40	2025-06-05	presence
625	25	41	2025-06-05	excused absence
626	26	37	2025-06-05	presence
627	26	38	2025-06-05	late
628	26	39	2025-06-05	presence
629	26	40	2025-06-05	presence
630	26	41	2025-06-05	excused absence
631	27	37	2025-06-05	presence
632	27	38	2025-06-05	presence
633	27	39	2025-06-05	presence
634	27	40	2025-06-05	presence
635	27	41	2025-06-05	presence
636	28	37	2025-06-05	presence
637	28	38	2025-06-05	presence
638	28	39	2025-06-05	excused absence
639	28	40	2025-06-05	presence
640	28	41	2025-06-05	absence
641	29	37	2025-06-05	presence
642	29	38	2025-06-05	presence
643	29	39	2025-06-05	presence
644	29	40	2025-06-05	presence
645	29	41	2025-06-05	presence
646	30	37	2025-06-05	presence
647	30	38	2025-06-05	presence
648	30	39	2025-06-05	presence
649	30	40	2025-06-05	presence
650	30	41	2025-06-05	presence
651	31	37	2025-06-05	presence
652	31	38	2025-06-05	presence
653	31	39	2025-06-05	presence
654	31	40	2025-06-05	presence
655	31	41	2025-06-05	presence
656	32	37	2025-06-05	presence
657	32	38	2025-06-05	presence
658	32	39	2025-06-05	presence
659	32	40	2025-06-05	presence
660	32	41	2025-06-05	absence
661	33	37	2025-06-05	presence
662	33	38	2025-06-05	presence
663	33	39	2025-06-05	presence
664	33	40	2025-06-05	presence
665	33	41	2025-06-05	presence
666	34	37	2025-06-05	presence
667	34	38	2025-06-05	absence
668	34	39	2025-06-05	presence
669	34	40	2025-06-05	presence
670	34	41	2025-06-05	presence
671	35	37	2025-06-05	presence
672	35	38	2025-06-05	presence
673	35	39	2025-06-05	presence
674	35	40	2025-06-05	presence
675	35	41	2025-06-05	presence
676	36	37	2025-06-05	excused absence
677	36	38	2025-06-05	presence
678	36	39	2025-06-05	excused absence
679	36	40	2025-06-05	presence
680	36	41	2025-06-05	presence
681	37	37	2025-06-05	presence
682	37	38	2025-06-05	presence
683	37	39	2025-06-05	presence
684	37	40	2025-06-05	presence
685	37	41	2025-06-05	presence
686	38	37	2025-06-05	presence
687	38	38	2025-06-05	presence
688	38	39	2025-06-05	presence
689	38	40	2025-06-05	presence
690	38	41	2025-06-05	presence
691	39	37	2025-06-05	presence
692	39	38	2025-06-05	presence
693	39	39	2025-06-05	excused absence
694	39	40	2025-06-05	presence
695	39	41	2025-06-05	presence
696	40	37	2025-06-05	presence
697	40	38	2025-06-05	absence
698	40	39	2025-06-05	presence
699	40	40	2025-06-05	presence
700	40	41	2025-06-05	absence
701	41	73	2025-06-05	presence
702	41	74	2025-06-05	presence
703	41	75	2025-06-05	presence
704	41	76	2025-06-05	presence
705	41	77	2025-06-05	presence
706	42	73	2025-06-05	presence
707	42	74	2025-06-05	presence
708	42	75	2025-06-05	presence
709	42	76	2025-06-05	excused absence
710	42	77	2025-06-05	presence
711	43	73	2025-06-05	presence
712	43	74	2025-06-05	presence
713	43	75	2025-06-05	presence
714	43	76	2025-06-05	presence
715	43	77	2025-06-05	presence
716	44	73	2025-06-05	presence
717	44	74	2025-06-05	presence
718	44	75	2025-06-05	presence
719	44	76	2025-06-05	presence
720	44	77	2025-06-05	presence
721	45	73	2025-06-05	presence
722	45	74	2025-06-05	presence
723	45	75	2025-06-05	presence
724	45	76	2025-06-05	presence
725	45	77	2025-06-05	presence
726	46	73	2025-06-05	presence
727	46	74	2025-06-05	presence
728	46	75	2025-06-05	presence
729	46	76	2025-06-05	presence
730	46	77	2025-06-05	presence
731	47	73	2025-06-05	presence
732	47	74	2025-06-05	presence
733	47	75	2025-06-05	presence
734	47	76	2025-06-05	excused absence
735	47	77	2025-06-05	presence
736	48	73	2025-06-05	presence
737	48	74	2025-06-05	late
738	48	75	2025-06-05	presence
739	48	76	2025-06-05	presence
740	48	77	2025-06-05	presence
741	49	73	2025-06-05	presence
742	49	74	2025-06-05	presence
743	49	75	2025-06-05	late
744	49	76	2025-06-05	presence
745	49	77	2025-06-05	presence
746	50	73	2025-06-05	presence
747	50	74	2025-06-05	presence
748	50	75	2025-06-05	excused absence
749	50	76	2025-06-05	presence
750	50	77	2025-06-05	presence
751	51	73	2025-06-05	presence
752	51	74	2025-06-05	presence
753	51	75	2025-06-05	presence
754	51	76	2025-06-05	presence
755	51	77	2025-06-05	presence
756	52	73	2025-06-05	presence
757	52	74	2025-06-05	presence
758	52	75	2025-06-05	presence
759	52	76	2025-06-05	presence
760	52	77	2025-06-05	absence
761	53	73	2025-06-05	absence
762	53	74	2025-06-05	presence
763	53	75	2025-06-05	presence
764	53	76	2025-06-05	presence
765	53	77	2025-06-05	presence
766	54	73	2025-06-05	presence
767	54	74	2025-06-05	presence
768	54	75	2025-06-05	presence
769	54	76	2025-06-05	presence
770	54	77	2025-06-05	presence
771	55	73	2025-06-05	presence
772	55	74	2025-06-05	presence
773	55	75	2025-06-05	presence
774	55	76	2025-06-05	presence
775	55	77	2025-06-05	presence
776	56	73	2025-06-05	presence
777	56	74	2025-06-05	presence
778	56	75	2025-06-05	presence
779	56	76	2025-06-05	presence
780	56	77	2025-06-05	presence
781	57	73	2025-06-05	presence
782	57	74	2025-06-05	presence
783	57	75	2025-06-05	presence
784	57	76	2025-06-05	presence
785	57	77	2025-06-05	presence
786	58	73	2025-06-05	excused absence
787	58	74	2025-06-05	presence
788	58	75	2025-06-05	presence
789	58	76	2025-06-05	presence
790	58	77	2025-06-05	presence
791	59	73	2025-06-05	late
792	59	74	2025-06-05	absence
793	59	75	2025-06-05	excused absence
794	59	76	2025-06-05	presence
795	59	77	2025-06-05	presence
796	60	73	2025-06-05	presence
797	60	74	2025-06-05	presence
798	60	75	2025-06-05	presence
799	60	76	2025-06-05	presence
800	60	77	2025-06-05	presence
801	61	95	2025-06-05	presence
802	61	96	2025-06-05	presence
803	61	97	2025-06-05	presence
804	61	98	2025-06-05	presence
805	61	99	2025-06-05	presence
806	62	95	2025-06-05	presence
807	62	96	2025-06-05	presence
808	62	97	2025-06-05	presence
809	62	98	2025-06-05	presence
810	62	99	2025-06-05	presence
811	63	95	2025-06-05	presence
812	63	96	2025-06-05	presence
813	63	97	2025-06-05	presence
814	63	98	2025-06-05	presence
815	63	99	2025-06-05	presence
816	64	95	2025-06-05	presence
817	64	96	2025-06-05	presence
818	64	97	2025-06-05	presence
819	64	98	2025-06-05	presence
820	64	99	2025-06-05	presence
821	65	95	2025-06-05	presence
822	65	96	2025-06-05	presence
823	65	97	2025-06-05	presence
824	65	98	2025-06-05	presence
825	65	99	2025-06-05	presence
826	66	95	2025-06-05	presence
827	66	96	2025-06-05	late
828	66	97	2025-06-05	presence
829	66	98	2025-06-05	presence
830	66	99	2025-06-05	late
831	67	95	2025-06-05	presence
832	67	96	2025-06-05	presence
833	67	97	2025-06-05	presence
834	67	98	2025-06-05	presence
835	67	99	2025-06-05	presence
836	68	95	2025-06-05	presence
837	68	96	2025-06-05	presence
838	68	97	2025-06-05	presence
839	68	98	2025-06-05	presence
840	68	99	2025-06-05	presence
841	69	95	2025-06-05	presence
842	69	96	2025-06-05	presence
843	69	97	2025-06-05	late
844	69	98	2025-06-05	presence
845	69	99	2025-06-05	presence
846	70	95	2025-06-05	presence
847	70	96	2025-06-05	presence
848	70	97	2025-06-05	presence
849	70	98	2025-06-05	presence
850	70	99	2025-06-05	presence
851	71	95	2025-06-05	presence
852	71	96	2025-06-05	presence
853	71	97	2025-06-05	presence
854	71	98	2025-06-05	presence
855	71	99	2025-06-05	presence
856	72	95	2025-06-05	presence
857	72	96	2025-06-05	presence
858	72	97	2025-06-05	excused absence
859	72	98	2025-06-05	presence
860	72	99	2025-06-05	presence
861	73	95	2025-06-05	presence
862	73	96	2025-06-05	presence
863	73	97	2025-06-05	presence
864	73	98	2025-06-05	presence
865	73	99	2025-06-05	presence
866	74	95	2025-06-05	presence
867	74	96	2025-06-05	presence
868	74	97	2025-06-05	presence
869	74	98	2025-06-05	presence
870	74	99	2025-06-05	presence
871	75	95	2025-06-05	presence
872	75	96	2025-06-05	presence
873	75	97	2025-06-05	presence
874	75	98	2025-06-05	excused absence
875	75	99	2025-06-05	presence
876	76	95	2025-06-05	presence
877	76	96	2025-06-05	presence
878	76	97	2025-06-05	presence
879	76	98	2025-06-05	presence
880	76	99	2025-06-05	presence
881	77	95	2025-06-05	excused absence
882	77	96	2025-06-05	presence
883	77	97	2025-06-05	presence
884	77	98	2025-06-05	presence
885	77	99	2025-06-05	presence
886	78	95	2025-06-05	late
887	78	96	2025-06-05	presence
888	78	97	2025-06-05	presence
889	78	98	2025-06-05	presence
890	78	99	2025-06-05	presence
891	79	95	2025-06-05	presence
892	79	96	2025-06-05	presence
893	79	97	2025-06-05	presence
894	79	98	2025-06-05	late
895	79	99	2025-06-05	presence
896	80	95	2025-06-05	presence
897	80	96	2025-06-05	presence
898	80	97	2025-06-05	presence
899	80	98	2025-06-05	presence
900	80	99	2025-06-05	presence
901	81	117	2025-06-05	absence
902	81	118	2025-06-05	presence
903	81	119	2025-06-05	presence
904	81	120	2025-06-05	late
905	81	121	2025-06-05	presence
906	82	117	2025-06-05	presence
907	82	118	2025-06-05	excused absence
908	82	119	2025-06-05	presence
909	82	120	2025-06-05	presence
910	82	121	2025-06-05	presence
911	83	117	2025-06-05	presence
912	83	118	2025-06-05	presence
913	83	119	2025-06-05	presence
914	83	120	2025-06-05	presence
915	83	121	2025-06-05	presence
916	84	117	2025-06-05	presence
917	84	118	2025-06-05	presence
918	84	119	2025-06-05	presence
919	84	120	2025-06-05	presence
920	84	121	2025-06-05	presence
921	85	117	2025-06-05	presence
922	85	118	2025-06-05	presence
923	85	119	2025-06-05	presence
924	85	120	2025-06-05	presence
925	85	121	2025-06-05	excused absence
926	86	117	2025-06-05	late
927	86	118	2025-06-05	excused absence
928	86	119	2025-06-05	presence
929	86	120	2025-06-05	presence
930	86	121	2025-06-05	presence
931	87	117	2025-06-05	presence
932	87	118	2025-06-05	presence
933	87	119	2025-06-05	presence
934	87	120	2025-06-05	presence
935	87	121	2025-06-05	presence
936	88	117	2025-06-05	presence
937	88	118	2025-06-05	presence
938	88	119	2025-06-05	presence
939	88	120	2025-06-05	presence
940	88	121	2025-06-05	presence
941	89	117	2025-06-05	presence
942	89	118	2025-06-05	presence
943	89	119	2025-06-05	presence
944	89	120	2025-06-05	presence
945	89	121	2025-06-05	presence
946	90	117	2025-06-05	presence
947	90	118	2025-06-05	absence
948	90	119	2025-06-05	presence
949	90	120	2025-06-05	presence
950	90	121	2025-06-05	presence
951	91	117	2025-06-05	presence
952	91	118	2025-06-05	presence
953	91	119	2025-06-05	presence
954	91	120	2025-06-05	presence
955	91	121	2025-06-05	presence
956	92	117	2025-06-05	presence
957	92	118	2025-06-05	presence
958	92	119	2025-06-05	presence
959	92	120	2025-06-05	presence
960	92	121	2025-06-05	presence
961	93	117	2025-06-05	presence
962	93	118	2025-06-05	presence
963	93	119	2025-06-05	presence
964	93	120	2025-06-05	presence
965	93	121	2025-06-05	presence
966	94	117	2025-06-05	presence
967	94	118	2025-06-05	presence
968	94	119	2025-06-05	presence
969	94	120	2025-06-05	presence
970	94	121	2025-06-05	presence
971	95	117	2025-06-05	excused absence
972	95	118	2025-06-05	presence
973	95	119	2025-06-05	excused absence
974	95	120	2025-06-05	presence
975	95	121	2025-06-05	excused absence
976	96	117	2025-06-05	presence
977	96	118	2025-06-05	presence
978	96	119	2025-06-05	presence
979	96	120	2025-06-05	presence
980	96	121	2025-06-05	presence
981	97	117	2025-06-05	presence
982	97	118	2025-06-05	presence
983	97	119	2025-06-05	presence
984	97	120	2025-06-05	presence
985	97	121	2025-06-05	late
986	98	117	2025-06-05	presence
987	98	118	2025-06-05	presence
988	98	119	2025-06-05	presence
989	98	120	2025-06-05	presence
990	98	121	2025-06-05	presence
991	99	117	2025-06-05	presence
992	99	118	2025-06-05	presence
993	99	119	2025-06-05	presence
994	99	120	2025-06-05	presence
995	99	121	2025-06-05	presence
996	100	117	2025-06-05	presence
997	100	118	2025-06-05	presence
998	100	119	2025-06-05	presence
999	100	120	2025-06-05	presence
1000	100	121	2025-06-05	presence
1001	1	1	2025-06-04	late
1002	1	2	2025-06-04	presence
1003	1	3	2025-06-04	presence
1004	1	4	2025-06-04	presence
1005	1	5	2025-06-04	presence
1006	2	1	2025-06-04	presence
1007	2	2	2025-06-04	absence
1008	2	3	2025-06-04	presence
1009	2	4	2025-06-04	presence
1010	2	5	2025-06-04	presence
1011	3	1	2025-06-04	presence
1012	3	2	2025-06-04	late
1013	3	3	2025-06-04	absence
1014	3	4	2025-06-04	presence
1015	3	5	2025-06-04	presence
1016	4	1	2025-06-04	presence
1017	4	2	2025-06-04	presence
1018	4	3	2025-06-04	presence
1019	4	4	2025-06-04	late
1020	4	5	2025-06-04	presence
1021	5	1	2025-06-04	presence
1022	5	2	2025-06-04	presence
1023	5	3	2025-06-04	presence
1024	5	4	2025-06-04	presence
1025	5	5	2025-06-04	presence
1026	6	1	2025-06-04	presence
1027	6	2	2025-06-04	presence
1028	6	3	2025-06-04	presence
1029	6	4	2025-06-04	presence
1030	6	5	2025-06-04	presence
1031	7	1	2025-06-04	excused absence
1032	7	2	2025-06-04	presence
1033	7	3	2025-06-04	presence
1034	7	4	2025-06-04	presence
1035	7	5	2025-06-04	presence
1036	8	1	2025-06-04	presence
1037	8	2	2025-06-04	presence
1038	8	3	2025-06-04	presence
1039	8	4	2025-06-04	presence
1040	8	5	2025-06-04	late
1041	9	1	2025-06-04	presence
1042	9	2	2025-06-04	presence
1043	9	3	2025-06-04	presence
1044	9	4	2025-06-04	presence
1045	9	5	2025-06-04	presence
1046	10	1	2025-06-04	presence
1047	10	2	2025-06-04	presence
1048	10	3	2025-06-04	presence
1049	10	4	2025-06-04	presence
1050	10	5	2025-06-04	presence
1051	11	1	2025-06-04	presence
1052	11	2	2025-06-04	excused absence
1053	11	3	2025-06-04	presence
1054	11	4	2025-06-04	presence
1055	11	5	2025-06-04	presence
1056	12	1	2025-06-04	presence
1057	12	2	2025-06-04	presence
1058	12	3	2025-06-04	presence
1059	12	4	2025-06-04	presence
1060	12	5	2025-06-04	excused absence
1061	13	1	2025-06-04	presence
1062	13	2	2025-06-04	presence
1063	13	3	2025-06-04	absence
1064	13	4	2025-06-04	presence
1065	13	5	2025-06-04	presence
1066	14	1	2025-06-04	presence
1067	14	2	2025-06-04	absence
1068	14	3	2025-06-04	presence
1069	14	4	2025-06-04	presence
1070	14	5	2025-06-04	presence
1071	15	1	2025-06-04	presence
1072	15	2	2025-06-04	presence
1073	15	3	2025-06-04	presence
1074	15	4	2025-06-04	presence
1075	15	5	2025-06-04	presence
1076	16	1	2025-06-04	absence
1077	16	2	2025-06-04	presence
1078	16	3	2025-06-04	presence
1079	16	4	2025-06-04	presence
1080	16	5	2025-06-04	presence
1081	17	1	2025-06-04	presence
1082	17	2	2025-06-04	presence
1083	17	3	2025-06-04	presence
1084	17	4	2025-06-04	absence
1085	17	5	2025-06-04	presence
1086	18	1	2025-06-04	presence
1087	18	2	2025-06-04	presence
1088	18	3	2025-06-04	presence
1089	18	4	2025-06-04	presence
1090	18	5	2025-06-04	presence
1091	19	1	2025-06-04	presence
1092	19	2	2025-06-04	late
1093	19	3	2025-06-04	presence
1094	19	4	2025-06-04	presence
1095	19	5	2025-06-04	presence
1096	20	1	2025-06-04	presence
1097	20	2	2025-06-04	presence
1098	20	3	2025-06-04	presence
1099	20	4	2025-06-04	presence
1100	20	5	2025-06-04	presence
1101	21	37	2025-06-04	presence
1102	21	38	2025-06-04	presence
1103	21	39	2025-06-04	presence
1104	21	40	2025-06-04	presence
1105	21	41	2025-06-04	presence
1106	22	37	2025-06-04	presence
1107	22	38	2025-06-04	presence
1108	22	39	2025-06-04	late
1109	22	40	2025-06-04	presence
1110	22	41	2025-06-04	presence
1111	23	37	2025-06-04	presence
1112	23	38	2025-06-04	presence
1113	23	39	2025-06-04	presence
1114	23	40	2025-06-04	presence
1115	23	41	2025-06-04	presence
1116	24	37	2025-06-04	presence
1117	24	38	2025-06-04	presence
1118	24	39	2025-06-04	presence
1119	24	40	2025-06-04	excused absence
1120	24	41	2025-06-04	presence
1121	25	37	2025-06-04	presence
1122	25	38	2025-06-04	presence
1123	25	39	2025-06-04	presence
1124	25	40	2025-06-04	presence
1125	25	41	2025-06-04	presence
1126	26	37	2025-06-04	presence
1127	26	38	2025-06-04	presence
1128	26	39	2025-06-04	presence
1129	26	40	2025-06-04	presence
1130	26	41	2025-06-04	presence
1131	27	37	2025-06-04	presence
1132	27	38	2025-06-04	presence
1133	27	39	2025-06-04	presence
1134	27	40	2025-06-04	presence
1135	27	41	2025-06-04	late
1136	28	37	2025-06-04	presence
1137	28	38	2025-06-04	presence
1138	28	39	2025-06-04	presence
1139	28	40	2025-06-04	presence
1140	28	41	2025-06-04	presence
1141	29	37	2025-06-04	presence
1142	29	38	2025-06-04	presence
1143	29	39	2025-06-04	late
1144	29	40	2025-06-04	presence
1145	29	41	2025-06-04	presence
1146	30	37	2025-06-04	presence
1147	30	38	2025-06-04	absence
1148	30	39	2025-06-04	presence
1149	30	40	2025-06-04	presence
1150	30	41	2025-06-04	presence
1151	31	37	2025-06-04	presence
1152	31	38	2025-06-04	late
1153	31	39	2025-06-04	presence
1154	31	40	2025-06-04	absence
1155	31	41	2025-06-04	presence
1156	32	37	2025-06-04	presence
1157	32	38	2025-06-04	presence
1158	32	39	2025-06-04	presence
1159	32	40	2025-06-04	presence
1160	32	41	2025-06-04	presence
1161	33	37	2025-06-04	excused absence
1162	33	38	2025-06-04	presence
1163	33	39	2025-06-04	presence
1164	33	40	2025-06-04	presence
1165	33	41	2025-06-04	presence
1166	34	37	2025-06-04	presence
1167	34	38	2025-06-04	presence
1168	34	39	2025-06-04	absence
1169	34	40	2025-06-04	presence
1170	34	41	2025-06-04	presence
1171	35	37	2025-06-04	presence
1172	35	38	2025-06-04	presence
1173	35	39	2025-06-04	presence
1174	35	40	2025-06-04	presence
1175	35	41	2025-06-04	presence
1176	36	37	2025-06-04	presence
1177	36	38	2025-06-04	presence
1178	36	39	2025-06-04	presence
1179	36	40	2025-06-04	presence
1180	36	41	2025-06-04	presence
1181	37	37	2025-06-04	excused absence
1182	37	38	2025-06-04	absence
1183	37	39	2025-06-04	presence
1184	37	40	2025-06-04	presence
1185	37	41	2025-06-04	late
1186	38	37	2025-06-04	presence
1187	38	38	2025-06-04	absence
1188	38	39	2025-06-04	presence
1189	38	40	2025-06-04	presence
1190	38	41	2025-06-04	presence
1191	39	37	2025-06-04	presence
1192	39	38	2025-06-04	late
1193	39	39	2025-06-04	presence
1194	39	40	2025-06-04	presence
1195	39	41	2025-06-04	presence
1196	40	37	2025-06-04	presence
1197	40	38	2025-06-04	presence
1198	40	39	2025-06-04	presence
1199	40	40	2025-06-04	presence
1200	40	41	2025-06-04	presence
1201	41	73	2025-06-04	excused absence
1202	41	74	2025-06-04	presence
1203	41	75	2025-06-04	presence
1204	41	76	2025-06-04	presence
1205	41	77	2025-06-04	late
1206	42	73	2025-06-04	presence
1207	42	74	2025-06-04	presence
1208	42	75	2025-06-04	presence
1209	42	76	2025-06-04	presence
1210	42	77	2025-06-04	excused absence
1211	43	73	2025-06-04	absence
1212	43	74	2025-06-04	absence
1213	43	75	2025-06-04	presence
1214	43	76	2025-06-04	presence
1215	43	77	2025-06-04	late
1216	44	73	2025-06-04	presence
1217	44	74	2025-06-04	presence
1218	44	75	2025-06-04	presence
1219	44	76	2025-06-04	presence
1220	44	77	2025-06-04	presence
1221	45	73	2025-06-04	presence
1222	45	74	2025-06-04	presence
1223	45	75	2025-06-04	presence
1224	45	76	2025-06-04	presence
1225	45	77	2025-06-04	presence
1226	46	73	2025-06-04	presence
1227	46	74	2025-06-04	absence
1228	46	75	2025-06-04	presence
1229	46	76	2025-06-04	presence
1230	46	77	2025-06-04	late
1231	47	73	2025-06-04	presence
1232	47	74	2025-06-04	presence
1233	47	75	2025-06-04	presence
1234	47	76	2025-06-04	presence
1235	47	77	2025-06-04	presence
1236	48	73	2025-06-04	presence
1237	48	74	2025-06-04	presence
1238	48	75	2025-06-04	presence
1239	48	76	2025-06-04	excused absence
1240	48	77	2025-06-04	presence
1241	49	73	2025-06-04	presence
1242	49	74	2025-06-04	presence
1243	49	75	2025-06-04	presence
1244	49	76	2025-06-04	presence
1245	49	77	2025-06-04	presence
1246	50	73	2025-06-04	excused absence
1247	50	74	2025-06-04	presence
1248	50	75	2025-06-04	presence
1249	50	76	2025-06-04	presence
1250	50	77	2025-06-04	presence
1251	51	73	2025-06-04	presence
1252	51	74	2025-06-04	presence
1253	51	75	2025-06-04	presence
1254	51	76	2025-06-04	presence
1255	51	77	2025-06-04	presence
1256	52	73	2025-06-04	presence
1257	52	74	2025-06-04	presence
1258	52	75	2025-06-04	presence
1259	52	76	2025-06-04	presence
1260	52	77	2025-06-04	presence
1261	53	73	2025-06-04	presence
1262	53	74	2025-06-04	presence
1263	53	75	2025-06-04	presence
1264	53	76	2025-06-04	presence
1265	53	77	2025-06-04	presence
1266	54	73	2025-06-04	presence
1267	54	74	2025-06-04	presence
1268	54	75	2025-06-04	presence
1269	54	76	2025-06-04	presence
1270	54	77	2025-06-04	presence
1271	55	73	2025-06-04	presence
1272	55	74	2025-06-04	presence
1273	55	75	2025-06-04	excused absence
1274	55	76	2025-06-04	presence
1275	55	77	2025-06-04	presence
1276	56	73	2025-06-04	excused absence
1277	56	74	2025-06-04	presence
1278	56	75	2025-06-04	late
1279	56	76	2025-06-04	late
1280	56	77	2025-06-04	absence
1281	57	73	2025-06-04	presence
1282	57	74	2025-06-04	presence
1283	57	75	2025-06-04	presence
1284	57	76	2025-06-04	presence
1285	57	77	2025-06-04	presence
1286	58	73	2025-06-04	absence
1287	58	74	2025-06-04	presence
1288	58	75	2025-06-04	presence
1289	58	76	2025-06-04	presence
1290	58	77	2025-06-04	presence
1291	59	73	2025-06-04	presence
1292	59	74	2025-06-04	absence
1293	59	75	2025-06-04	presence
1294	59	76	2025-06-04	presence
1295	59	77	2025-06-04	presence
1296	60	73	2025-06-04	presence
1297	60	74	2025-06-04	presence
1298	60	75	2025-06-04	presence
1299	60	76	2025-06-04	presence
1300	60	77	2025-06-04	presence
1301	61	95	2025-06-04	presence
1302	61	96	2025-06-04	presence
1303	61	97	2025-06-04	presence
1304	61	98	2025-06-04	presence
1305	61	99	2025-06-04	presence
1306	62	95	2025-06-04	presence
1307	62	96	2025-06-04	presence
1308	62	97	2025-06-04	presence
1309	62	98	2025-06-04	presence
1310	62	99	2025-06-04	presence
1311	63	95	2025-06-04	presence
1312	63	96	2025-06-04	excused absence
1313	63	97	2025-06-04	presence
1314	63	98	2025-06-04	presence
1315	63	99	2025-06-04	presence
1316	64	95	2025-06-04	presence
1317	64	96	2025-06-04	presence
1318	64	97	2025-06-04	presence
1319	64	98	2025-06-04	presence
1320	64	99	2025-06-04	late
1321	65	95	2025-06-04	presence
1322	65	96	2025-06-04	presence
1323	65	97	2025-06-04	presence
1324	65	98	2025-06-04	presence
1325	65	99	2025-06-04	presence
1326	66	95	2025-06-04	absence
1327	66	96	2025-06-04	presence
1328	66	97	2025-06-04	presence
1329	66	98	2025-06-04	presence
1330	66	99	2025-06-04	presence
1331	67	95	2025-06-04	presence
1332	67	96	2025-06-04	presence
1333	67	97	2025-06-04	absence
1334	67	98	2025-06-04	presence
1335	67	99	2025-06-04	presence
1336	68	95	2025-06-04	presence
1337	68	96	2025-06-04	presence
1338	68	97	2025-06-04	presence
1339	68	98	2025-06-04	presence
1340	68	99	2025-06-04	presence
1341	69	95	2025-06-04	presence
1342	69	96	2025-06-04	presence
1343	69	97	2025-06-04	presence
1344	69	98	2025-06-04	presence
1345	69	99	2025-06-04	presence
1346	70	95	2025-06-04	excused absence
1347	70	96	2025-06-04	presence
1348	70	97	2025-06-04	presence
1349	70	98	2025-06-04	presence
1350	70	99	2025-06-04	absence
1351	71	95	2025-06-04	presence
1352	71	96	2025-06-04	presence
1353	71	97	2025-06-04	presence
1354	71	98	2025-06-04	presence
1355	71	99	2025-06-04	presence
1356	72	95	2025-06-04	presence
1357	72	96	2025-06-04	presence
1358	72	97	2025-06-04	presence
1359	72	98	2025-06-04	presence
1360	72	99	2025-06-04	presence
1361	73	95	2025-06-04	presence
1362	73	96	2025-06-04	presence
1363	73	97	2025-06-04	presence
1364	73	98	2025-06-04	presence
1365	73	99	2025-06-04	presence
1366	74	95	2025-06-04	presence
1367	74	96	2025-06-04	presence
1368	74	97	2025-06-04	presence
1369	74	98	2025-06-04	late
1370	74	99	2025-06-04	presence
1371	75	95	2025-06-04	presence
1372	75	96	2025-06-04	presence
1373	75	97	2025-06-04	presence
1374	75	98	2025-06-04	presence
1375	75	99	2025-06-04	late
1376	76	95	2025-06-04	presence
1377	76	96	2025-06-04	presence
1378	76	97	2025-06-04	presence
1379	76	98	2025-06-04	absence
1380	76	99	2025-06-04	presence
1381	77	95	2025-06-04	presence
1382	77	96	2025-06-04	presence
1383	77	97	2025-06-04	presence
1384	77	98	2025-06-04	presence
1385	77	99	2025-06-04	presence
1386	78	95	2025-06-04	presence
1387	78	96	2025-06-04	excused absence
1388	78	97	2025-06-04	presence
1389	78	98	2025-06-04	presence
1390	78	99	2025-06-04	presence
1391	79	95	2025-06-04	presence
1392	79	96	2025-06-04	presence
1393	79	97	2025-06-04	absence
1394	79	98	2025-06-04	presence
1395	79	99	2025-06-04	presence
1396	80	95	2025-06-04	presence
1397	80	96	2025-06-04	presence
1398	80	97	2025-06-04	late
1399	80	98	2025-06-04	presence
1400	80	99	2025-06-04	presence
1401	81	117	2025-06-04	presence
1402	81	118	2025-06-04	absence
1403	81	119	2025-06-04	presence
1404	81	120	2025-06-04	presence
1405	81	121	2025-06-04	presence
1406	82	117	2025-06-04	presence
1407	82	118	2025-06-04	presence
1408	82	119	2025-06-04	presence
1409	82	120	2025-06-04	presence
1410	82	121	2025-06-04	presence
1411	83	117	2025-06-04	presence
1412	83	118	2025-06-04	presence
1413	83	119	2025-06-04	presence
1414	83	120	2025-06-04	presence
1415	83	121	2025-06-04	absence
1416	84	117	2025-06-04	presence
1417	84	118	2025-06-04	late
1418	84	119	2025-06-04	presence
1419	84	120	2025-06-04	presence
1420	84	121	2025-06-04	presence
1421	85	117	2025-06-04	presence
1422	85	118	2025-06-04	presence
1423	85	119	2025-06-04	presence
1424	85	120	2025-06-04	presence
1425	85	121	2025-06-04	presence
1426	86	117	2025-06-04	presence
1427	86	118	2025-06-04	presence
1428	86	119	2025-06-04	presence
1429	86	120	2025-06-04	presence
1430	86	121	2025-06-04	presence
1431	87	117	2025-06-04	absence
1432	87	118	2025-06-04	presence
1433	87	119	2025-06-04	presence
1434	87	120	2025-06-04	presence
1435	87	121	2025-06-04	late
1436	88	117	2025-06-04	presence
1437	88	118	2025-06-04	presence
1438	88	119	2025-06-04	presence
1439	88	120	2025-06-04	presence
1440	88	121	2025-06-04	absence
1441	89	117	2025-06-04	presence
1442	89	118	2025-06-04	presence
1443	89	119	2025-06-04	presence
1444	89	120	2025-06-04	presence
1445	89	121	2025-06-04	presence
1446	90	117	2025-06-04	presence
1447	90	118	2025-06-04	presence
1448	90	119	2025-06-04	presence
1449	90	120	2025-06-04	presence
1450	90	121	2025-06-04	presence
1451	91	117	2025-06-04	presence
1452	91	118	2025-06-04	presence
1453	91	119	2025-06-04	presence
1454	91	120	2025-06-04	presence
1455	91	121	2025-06-04	presence
1456	92	117	2025-06-04	presence
1457	92	118	2025-06-04	presence
1458	92	119	2025-06-04	presence
1459	92	120	2025-06-04	presence
1460	92	121	2025-06-04	excused absence
1461	93	117	2025-06-04	late
1462	93	118	2025-06-04	presence
1463	93	119	2025-06-04	presence
1464	93	120	2025-06-04	presence
1465	93	121	2025-06-04	presence
1466	94	117	2025-06-04	presence
1467	94	118	2025-06-04	presence
1468	94	119	2025-06-04	absence
1469	94	120	2025-06-04	presence
1470	94	121	2025-06-04	presence
1471	95	117	2025-06-04	excused absence
1472	95	118	2025-06-04	presence
1473	95	119	2025-06-04	presence
1474	95	120	2025-06-04	presence
1475	95	121	2025-06-04	presence
1476	96	117	2025-06-04	presence
1477	96	118	2025-06-04	presence
1478	96	119	2025-06-04	presence
1479	96	120	2025-06-04	presence
1480	96	121	2025-06-04	late
1481	97	117	2025-06-04	presence
1482	97	118	2025-06-04	presence
1483	97	119	2025-06-04	presence
1484	97	120	2025-06-04	presence
1485	97	121	2025-06-04	presence
1486	98	117	2025-06-04	presence
1487	98	118	2025-06-04	presence
1488	98	119	2025-06-04	presence
1489	98	120	2025-06-04	presence
1490	98	121	2025-06-04	presence
1491	99	117	2025-06-04	presence
1492	99	118	2025-06-04	presence
1493	99	119	2025-06-04	presence
1494	99	120	2025-06-04	presence
1495	99	121	2025-06-04	presence
1496	100	117	2025-06-04	presence
1497	100	118	2025-06-04	presence
1498	100	119	2025-06-04	presence
1499	100	120	2025-06-04	presence
1500	100	121	2025-06-04	presence
1501	1	1	2025-06-03	presence
1502	1	2	2025-06-03	presence
1503	1	3	2025-06-03	presence
1504	1	4	2025-06-03	presence
1505	1	5	2025-06-03	presence
1506	2	1	2025-06-03	presence
1507	2	2	2025-06-03	presence
1508	2	3	2025-06-03	presence
1509	2	4	2025-06-03	presence
1510	2	5	2025-06-03	presence
1511	3	1	2025-06-03	presence
1512	3	2	2025-06-03	absence
1513	3	3	2025-06-03	presence
1514	3	4	2025-06-03	absence
1515	3	5	2025-06-03	absence
1516	4	1	2025-06-03	presence
1517	4	2	2025-06-03	absence
1518	4	3	2025-06-03	presence
1519	4	4	2025-06-03	presence
1520	4	5	2025-06-03	presence
1521	5	1	2025-06-03	absence
1522	5	2	2025-06-03	presence
1523	5	3	2025-06-03	presence
1524	5	4	2025-06-03	presence
1525	5	5	2025-06-03	presence
1526	6	1	2025-06-03	presence
1527	6	2	2025-06-03	late
1528	6	3	2025-06-03	presence
1529	6	4	2025-06-03	presence
1530	6	5	2025-06-03	presence
1531	7	1	2025-06-03	presence
1532	7	2	2025-06-03	presence
1533	7	3	2025-06-03	late
1534	7	4	2025-06-03	late
1535	7	5	2025-06-03	presence
1536	8	1	2025-06-03	presence
1537	8	2	2025-06-03	late
1538	8	3	2025-06-03	presence
1539	8	4	2025-06-03	presence
1540	8	5	2025-06-03	presence
1541	9	1	2025-06-03	presence
1542	9	2	2025-06-03	presence
1543	9	3	2025-06-03	presence
1544	9	4	2025-06-03	presence
1545	9	5	2025-06-03	presence
1546	10	1	2025-06-03	presence
1547	10	2	2025-06-03	presence
1548	10	3	2025-06-03	presence
1549	10	4	2025-06-03	presence
1550	10	5	2025-06-03	excused absence
1551	11	1	2025-06-03	presence
1552	11	2	2025-06-03	presence
1553	11	3	2025-06-03	presence
1554	11	4	2025-06-03	presence
1555	11	5	2025-06-03	presence
1556	12	1	2025-06-03	presence
1557	12	2	2025-06-03	presence
1558	12	3	2025-06-03	presence
1559	12	4	2025-06-03	presence
1560	12	5	2025-06-03	excused absence
1561	13	1	2025-06-03	presence
1562	13	2	2025-06-03	presence
1563	13	3	2025-06-03	presence
1564	13	4	2025-06-03	presence
1565	13	5	2025-06-03	presence
1566	14	1	2025-06-03	presence
1567	14	2	2025-06-03	presence
1568	14	3	2025-06-03	presence
1569	14	4	2025-06-03	presence
1570	14	5	2025-06-03	presence
1571	15	1	2025-06-03	presence
1572	15	2	2025-06-03	presence
1573	15	3	2025-06-03	presence
1574	15	4	2025-06-03	presence
1575	15	5	2025-06-03	presence
1576	16	1	2025-06-03	presence
1577	16	2	2025-06-03	presence
1578	16	3	2025-06-03	presence
1579	16	4	2025-06-03	absence
1580	16	5	2025-06-03	presence
1581	17	1	2025-06-03	presence
1582	17	2	2025-06-03	presence
1583	17	3	2025-06-03	presence
1584	17	4	2025-06-03	presence
1585	17	5	2025-06-03	presence
1586	18	1	2025-06-03	presence
1587	18	2	2025-06-03	presence
1588	18	3	2025-06-03	presence
1589	18	4	2025-06-03	late
1590	18	5	2025-06-03	presence
1591	19	1	2025-06-03	presence
1592	19	2	2025-06-03	presence
1593	19	3	2025-06-03	excused absence
1594	19	4	2025-06-03	presence
1595	19	5	2025-06-03	presence
1596	20	1	2025-06-03	presence
1597	20	2	2025-06-03	presence
1598	20	3	2025-06-03	presence
1599	20	4	2025-06-03	presence
1600	20	5	2025-06-03	presence
1601	21	37	2025-06-03	late
1602	21	38	2025-06-03	presence
1603	21	39	2025-06-03	presence
1604	21	40	2025-06-03	presence
1605	21	41	2025-06-03	presence
1606	22	37	2025-06-03	presence
1607	22	38	2025-06-03	presence
1608	22	39	2025-06-03	presence
1609	22	40	2025-06-03	presence
1610	22	41	2025-06-03	presence
1611	23	37	2025-06-03	presence
1612	23	38	2025-06-03	late
1613	23	39	2025-06-03	presence
1614	23	40	2025-06-03	presence
1615	23	41	2025-06-03	late
1616	24	37	2025-06-03	presence
1617	24	38	2025-06-03	presence
1618	24	39	2025-06-03	presence
1619	24	40	2025-06-03	presence
1620	24	41	2025-06-03	presence
1621	25	37	2025-06-03	presence
1622	25	38	2025-06-03	presence
1623	25	39	2025-06-03	presence
1624	25	40	2025-06-03	presence
1625	25	41	2025-06-03	presence
1626	26	37	2025-06-03	presence
1627	26	38	2025-06-03	presence
1628	26	39	2025-06-03	presence
1629	26	40	2025-06-03	presence
1630	26	41	2025-06-03	presence
1631	27	37	2025-06-03	presence
1632	27	38	2025-06-03	presence
1633	27	39	2025-06-03	presence
1634	27	40	2025-06-03	presence
1635	27	41	2025-06-03	presence
1636	28	37	2025-06-03	presence
1637	28	38	2025-06-03	presence
1638	28	39	2025-06-03	presence
1639	28	40	2025-06-03	presence
1640	28	41	2025-06-03	presence
1641	29	37	2025-06-03	presence
1642	29	38	2025-06-03	presence
1643	29	39	2025-06-03	presence
1644	29	40	2025-06-03	presence
1645	29	41	2025-06-03	presence
1646	30	37	2025-06-03	absence
1647	30	38	2025-06-03	presence
1648	30	39	2025-06-03	presence
1649	30	40	2025-06-03	presence
1650	30	41	2025-06-03	presence
1651	31	37	2025-06-03	presence
1652	31	38	2025-06-03	presence
1653	31	39	2025-06-03	late
1654	31	40	2025-06-03	presence
1655	31	41	2025-06-03	late
1656	32	37	2025-06-03	excused absence
1657	32	38	2025-06-03	presence
1658	32	39	2025-06-03	presence
1659	32	40	2025-06-03	presence
1660	32	41	2025-06-03	presence
1661	33	37	2025-06-03	presence
1662	33	38	2025-06-03	presence
1663	33	39	2025-06-03	presence
1664	33	40	2025-06-03	presence
1665	33	41	2025-06-03	presence
1666	34	37	2025-06-03	presence
1667	34	38	2025-06-03	presence
1668	34	39	2025-06-03	presence
1669	34	40	2025-06-03	presence
1670	34	41	2025-06-03	presence
1671	35	37	2025-06-03	presence
1672	35	38	2025-06-03	presence
1673	35	39	2025-06-03	presence
1674	35	40	2025-06-03	presence
1675	35	41	2025-06-03	presence
1676	36	37	2025-06-03	presence
1677	36	38	2025-06-03	presence
1678	36	39	2025-06-03	presence
1679	36	40	2025-06-03	excused absence
1680	36	41	2025-06-03	excused absence
1681	37	37	2025-06-03	presence
1682	37	38	2025-06-03	presence
1683	37	39	2025-06-03	presence
1684	37	40	2025-06-03	late
1685	37	41	2025-06-03	presence
1686	38	37	2025-06-03	presence
1687	38	38	2025-06-03	absence
1688	38	39	2025-06-03	presence
1689	38	40	2025-06-03	presence
1690	38	41	2025-06-03	presence
1691	39	37	2025-06-03	presence
1692	39	38	2025-06-03	presence
1693	39	39	2025-06-03	presence
1694	39	40	2025-06-03	presence
1695	39	41	2025-06-03	presence
1696	40	37	2025-06-03	presence
1697	40	38	2025-06-03	presence
1698	40	39	2025-06-03	presence
1699	40	40	2025-06-03	presence
1700	40	41	2025-06-03	presence
1701	41	73	2025-06-03	presence
1702	41	74	2025-06-03	presence
1703	41	75	2025-06-03	presence
1704	41	76	2025-06-03	presence
1705	41	77	2025-06-03	excused absence
1706	42	73	2025-06-03	late
1707	42	74	2025-06-03	presence
1708	42	75	2025-06-03	presence
1709	42	76	2025-06-03	presence
1710	42	77	2025-06-03	presence
1711	43	73	2025-06-03	excused absence
1712	43	74	2025-06-03	presence
1713	43	75	2025-06-03	presence
1714	43	76	2025-06-03	presence
1715	43	77	2025-06-03	presence
1716	44	73	2025-06-03	presence
1717	44	74	2025-06-03	presence
1718	44	75	2025-06-03	presence
1719	44	76	2025-06-03	presence
1720	44	77	2025-06-03	late
1721	45	73	2025-06-03	presence
1722	45	74	2025-06-03	presence
1723	45	75	2025-06-03	presence
1724	45	76	2025-06-03	presence
1725	45	77	2025-06-03	presence
1726	46	73	2025-06-03	presence
1727	46	74	2025-06-03	presence
1728	46	75	2025-06-03	presence
1729	46	76	2025-06-03	presence
1730	46	77	2025-06-03	presence
1731	47	73	2025-06-03	presence
1732	47	74	2025-06-03	presence
1733	47	75	2025-06-03	presence
1734	47	76	2025-06-03	presence
1735	47	77	2025-06-03	absence
1736	48	73	2025-06-03	presence
1737	48	74	2025-06-03	presence
1738	48	75	2025-06-03	presence
1739	48	76	2025-06-03	presence
1740	48	77	2025-06-03	presence
1741	49	73	2025-06-03	absence
1742	49	74	2025-06-03	presence
1743	49	75	2025-06-03	presence
1744	49	76	2025-06-03	presence
1745	49	77	2025-06-03	presence
1746	50	73	2025-06-03	presence
1747	50	74	2025-06-03	presence
1748	50	75	2025-06-03	presence
1749	50	76	2025-06-03	presence
1750	50	77	2025-06-03	presence
1751	51	73	2025-06-03	presence
1752	51	74	2025-06-03	presence
1753	51	75	2025-06-03	presence
1754	51	76	2025-06-03	presence
1755	51	77	2025-06-03	presence
1756	52	73	2025-06-03	excused absence
1757	52	74	2025-06-03	presence
1758	52	75	2025-06-03	presence
1759	52	76	2025-06-03	presence
1760	52	77	2025-06-03	presence
1761	53	73	2025-06-03	presence
1762	53	74	2025-06-03	presence
1763	53	75	2025-06-03	presence
1764	53	76	2025-06-03	presence
1765	53	77	2025-06-03	presence
1766	54	73	2025-06-03	presence
1767	54	74	2025-06-03	presence
1768	54	75	2025-06-03	late
1769	54	76	2025-06-03	presence
1770	54	77	2025-06-03	presence
1771	55	73	2025-06-03	presence
1772	55	74	2025-06-03	late
1773	55	75	2025-06-03	presence
1774	55	76	2025-06-03	late
1775	55	77	2025-06-03	presence
1776	56	73	2025-06-03	presence
1777	56	74	2025-06-03	presence
1778	56	75	2025-06-03	presence
1779	56	76	2025-06-03	presence
1780	56	77	2025-06-03	presence
1781	57	73	2025-06-03	presence
1782	57	74	2025-06-03	presence
1783	57	75	2025-06-03	presence
1784	57	76	2025-06-03	excused absence
1785	57	77	2025-06-03	presence
1786	58	73	2025-06-03	presence
1787	58	74	2025-06-03	presence
1788	58	75	2025-06-03	late
1789	58	76	2025-06-03	presence
1790	58	77	2025-06-03	presence
1791	59	73	2025-06-03	presence
1792	59	74	2025-06-03	presence
1793	59	75	2025-06-03	presence
1794	59	76	2025-06-03	presence
1795	59	77	2025-06-03	presence
1796	60	73	2025-06-03	presence
1797	60	74	2025-06-03	presence
1798	60	75	2025-06-03	presence
1799	60	76	2025-06-03	presence
1800	60	77	2025-06-03	presence
1801	61	95	2025-06-03	late
1802	61	96	2025-06-03	presence
1803	61	97	2025-06-03	presence
1804	61	98	2025-06-03	presence
1805	61	99	2025-06-03	presence
1806	62	95	2025-06-03	presence
1807	62	96	2025-06-03	presence
1808	62	97	2025-06-03	presence
1809	62	98	2025-06-03	presence
1810	62	99	2025-06-03	presence
1811	63	95	2025-06-03	presence
1812	63	96	2025-06-03	late
1813	63	97	2025-06-03	presence
1814	63	98	2025-06-03	absence
1815	63	99	2025-06-03	presence
1816	64	95	2025-06-03	presence
1817	64	96	2025-06-03	presence
1818	64	97	2025-06-03	presence
1819	64	98	2025-06-03	presence
1820	64	99	2025-06-03	presence
1821	65	95	2025-06-03	presence
1822	65	96	2025-06-03	presence
1823	65	97	2025-06-03	presence
1824	65	98	2025-06-03	presence
1825	65	99	2025-06-03	presence
1826	66	95	2025-06-03	late
1827	66	96	2025-06-03	presence
1828	66	97	2025-06-03	presence
1829	66	98	2025-06-03	presence
1830	66	99	2025-06-03	presence
1831	67	95	2025-06-03	presence
1832	67	96	2025-06-03	presence
1833	67	97	2025-06-03	presence
1834	67	98	2025-06-03	presence
1835	67	99	2025-06-03	presence
1836	68	95	2025-06-03	presence
1837	68	96	2025-06-03	excused absence
1838	68	97	2025-06-03	presence
1839	68	98	2025-06-03	presence
1840	68	99	2025-06-03	presence
1841	69	95	2025-06-03	presence
1842	69	96	2025-06-03	presence
1843	69	97	2025-06-03	presence
1844	69	98	2025-06-03	presence
1845	69	99	2025-06-03	presence
1846	70	95	2025-06-03	presence
1847	70	96	2025-06-03	presence
1848	70	97	2025-06-03	presence
1849	70	98	2025-06-03	presence
1850	70	99	2025-06-03	presence
1851	71	95	2025-06-03	presence
1852	71	96	2025-06-03	excused absence
1853	71	97	2025-06-03	presence
1854	71	98	2025-06-03	presence
1855	71	99	2025-06-03	presence
1856	72	95	2025-06-03	presence
1857	72	96	2025-06-03	presence
1858	72	97	2025-06-03	presence
1859	72	98	2025-06-03	presence
1860	72	99	2025-06-03	presence
1861	73	95	2025-06-03	presence
1862	73	96	2025-06-03	presence
1863	73	97	2025-06-03	presence
1864	73	98	2025-06-03	presence
1865	73	99	2025-06-03	presence
1866	74	95	2025-06-03	presence
1867	74	96	2025-06-03	presence
1868	74	97	2025-06-03	presence
1869	74	98	2025-06-03	presence
1870	74	99	2025-06-03	presence
1871	75	95	2025-06-03	presence
1872	75	96	2025-06-03	late
1873	75	97	2025-06-03	presence
1874	75	98	2025-06-03	excused absence
1875	75	99	2025-06-03	presence
1876	76	95	2025-06-03	excused absence
1877	76	96	2025-06-03	presence
1878	76	97	2025-06-03	absence
1879	76	98	2025-06-03	presence
1880	76	99	2025-06-03	presence
1881	77	95	2025-06-03	excused absence
1882	77	96	2025-06-03	presence
1883	77	97	2025-06-03	presence
1884	77	98	2025-06-03	presence
1885	77	99	2025-06-03	absence
1886	78	95	2025-06-03	presence
1887	78	96	2025-06-03	presence
1888	78	97	2025-06-03	presence
1889	78	98	2025-06-03	presence
1890	78	99	2025-06-03	presence
1891	79	95	2025-06-03	presence
1892	79	96	2025-06-03	presence
1893	79	97	2025-06-03	presence
1894	79	98	2025-06-03	presence
1895	79	99	2025-06-03	presence
1896	80	95	2025-06-03	presence
1897	80	96	2025-06-03	presence
1898	80	97	2025-06-03	presence
1899	80	98	2025-06-03	presence
1900	80	99	2025-06-03	presence
1901	81	117	2025-06-03	presence
1902	81	118	2025-06-03	presence
1903	81	119	2025-06-03	presence
1904	81	120	2025-06-03	presence
1905	81	121	2025-06-03	presence
1906	82	117	2025-06-03	presence
1907	82	118	2025-06-03	presence
1908	82	119	2025-06-03	absence
1909	82	120	2025-06-03	excused absence
1910	82	121	2025-06-03	presence
1911	83	117	2025-06-03	excused absence
1912	83	118	2025-06-03	excused absence
1913	83	119	2025-06-03	presence
1914	83	120	2025-06-03	presence
1915	83	121	2025-06-03	presence
1916	84	117	2025-06-03	presence
1917	84	118	2025-06-03	presence
1918	84	119	2025-06-03	presence
1919	84	120	2025-06-03	presence
1920	84	121	2025-06-03	presence
1921	85	117	2025-06-03	presence
1922	85	118	2025-06-03	absence
1923	85	119	2025-06-03	presence
1924	85	120	2025-06-03	presence
1925	85	121	2025-06-03	late
1926	86	117	2025-06-03	presence
1927	86	118	2025-06-03	presence
1928	86	119	2025-06-03	presence
1929	86	120	2025-06-03	absence
1930	86	121	2025-06-03	presence
1931	87	117	2025-06-03	absence
1932	87	118	2025-06-03	presence
1933	87	119	2025-06-03	presence
1934	87	120	2025-06-03	presence
1935	87	121	2025-06-03	presence
1936	88	117	2025-06-03	presence
1937	88	118	2025-06-03	late
1938	88	119	2025-06-03	presence
1939	88	120	2025-06-03	presence
1940	88	121	2025-06-03	late
1941	89	117	2025-06-03	presence
1942	89	118	2025-06-03	late
1943	89	119	2025-06-03	late
1944	89	120	2025-06-03	presence
1945	89	121	2025-06-03	presence
1946	90	117	2025-06-03	presence
1947	90	118	2025-06-03	presence
1948	90	119	2025-06-03	presence
1949	90	120	2025-06-03	absence
1950	90	121	2025-06-03	presence
1951	91	117	2025-06-03	late
1952	91	118	2025-06-03	presence
1953	91	119	2025-06-03	presence
1954	91	120	2025-06-03	presence
1955	91	121	2025-06-03	presence
1956	92	117	2025-06-03	presence
1957	92	118	2025-06-03	presence
1958	92	119	2025-06-03	presence
1959	92	120	2025-06-03	presence
1960	92	121	2025-06-03	presence
1961	93	117	2025-06-03	excused absence
1962	93	118	2025-06-03	presence
1963	93	119	2025-06-03	presence
1964	93	120	2025-06-03	presence
1965	93	121	2025-06-03	presence
1966	94	117	2025-06-03	absence
1967	94	118	2025-06-03	presence
1968	94	119	2025-06-03	presence
1969	94	120	2025-06-03	presence
1970	94	121	2025-06-03	absence
1971	95	117	2025-06-03	presence
1972	95	118	2025-06-03	presence
1973	95	119	2025-06-03	excused absence
1974	95	120	2025-06-03	presence
1975	95	121	2025-06-03	presence
1976	96	117	2025-06-03	presence
1977	96	118	2025-06-03	presence
1978	96	119	2025-06-03	presence
1979	96	120	2025-06-03	presence
1980	96	121	2025-06-03	presence
1981	97	117	2025-06-03	absence
1982	97	118	2025-06-03	presence
1983	97	119	2025-06-03	presence
1984	97	120	2025-06-03	presence
1985	97	121	2025-06-03	presence
1986	98	117	2025-06-03	excused absence
1987	98	118	2025-06-03	presence
1988	98	119	2025-06-03	presence
1989	98	120	2025-06-03	presence
1990	98	121	2025-06-03	presence
1991	99	117	2025-06-03	presence
1992	99	118	2025-06-03	presence
1993	99	119	2025-06-03	presence
1994	99	120	2025-06-03	presence
1995	99	121	2025-06-03	excused absence
1996	100	117	2025-06-03	presence
1997	100	118	2025-06-03	excused absence
1998	100	119	2025-06-03	presence
1999	100	120	2025-06-03	late
2000	100	121	2025-06-03	presence
2001	1	1	2025-06-02	presence
2002	1	2	2025-06-02	presence
2003	1	3	2025-06-02	presence
2004	1	4	2025-06-02	presence
2005	1	5	2025-06-02	absence
2006	2	1	2025-06-02	presence
2007	2	2	2025-06-02	presence
2008	2	3	2025-06-02	presence
2009	2	4	2025-06-02	presence
2010	2	5	2025-06-02	presence
2011	3	1	2025-06-02	presence
2012	3	2	2025-06-02	presence
2013	3	3	2025-06-02	presence
2014	3	4	2025-06-02	presence
2015	3	5	2025-06-02	presence
2016	4	1	2025-06-02	presence
2017	4	2	2025-06-02	excused absence
2018	4	3	2025-06-02	presence
2019	4	4	2025-06-02	presence
2020	4	5	2025-06-02	presence
2021	5	1	2025-06-02	presence
2022	5	2	2025-06-02	presence
2023	5	3	2025-06-02	presence
2024	5	4	2025-06-02	absence
2025	5	5	2025-06-02	presence
2026	6	1	2025-06-02	presence
2027	6	2	2025-06-02	presence
2028	6	3	2025-06-02	presence
2029	6	4	2025-06-02	presence
2030	6	5	2025-06-02	presence
2031	7	1	2025-06-02	presence
2032	7	2	2025-06-02	presence
2033	7	3	2025-06-02	presence
2034	7	4	2025-06-02	presence
2035	7	5	2025-06-02	presence
2036	8	1	2025-06-02	presence
2037	8	2	2025-06-02	presence
2038	8	3	2025-06-02	presence
2039	8	4	2025-06-02	presence
2040	8	5	2025-06-02	presence
2041	9	1	2025-06-02	presence
2042	9	2	2025-06-02	excused absence
2043	9	3	2025-06-02	late
2044	9	4	2025-06-02	absence
2045	9	5	2025-06-02	presence
2046	10	1	2025-06-02	presence
2047	10	2	2025-06-02	presence
2048	10	3	2025-06-02	presence
2049	10	4	2025-06-02	presence
2050	10	5	2025-06-02	absence
2051	11	1	2025-06-02	presence
2052	11	2	2025-06-02	presence
2053	11	3	2025-06-02	presence
2054	11	4	2025-06-02	presence
2055	11	5	2025-06-02	presence
2056	12	1	2025-06-02	absence
2057	12	2	2025-06-02	presence
2058	12	3	2025-06-02	presence
2059	12	4	2025-06-02	excused absence
2060	12	5	2025-06-02	presence
2061	13	1	2025-06-02	presence
2062	13	2	2025-06-02	presence
2063	13	3	2025-06-02	presence
2064	13	4	2025-06-02	presence
2065	13	5	2025-06-02	excused absence
2066	14	1	2025-06-02	presence
2067	14	2	2025-06-02	presence
2068	14	3	2025-06-02	presence
2069	14	4	2025-06-02	presence
2070	14	5	2025-06-02	absence
2071	15	1	2025-06-02	presence
2072	15	2	2025-06-02	presence
2073	15	3	2025-06-02	presence
2074	15	4	2025-06-02	absence
2075	15	5	2025-06-02	presence
2076	16	1	2025-06-02	presence
2077	16	2	2025-06-02	presence
2078	16	3	2025-06-02	presence
2079	16	4	2025-06-02	presence
2080	16	5	2025-06-02	presence
2081	17	1	2025-06-02	presence
2082	17	2	2025-06-02	excused absence
2083	17	3	2025-06-02	presence
2084	17	4	2025-06-02	presence
2085	17	5	2025-06-02	presence
2086	18	1	2025-06-02	presence
2087	18	2	2025-06-02	presence
2088	18	3	2025-06-02	presence
2089	18	4	2025-06-02	presence
2090	18	5	2025-06-02	excused absence
2091	19	1	2025-06-02	presence
2092	19	2	2025-06-02	presence
2093	19	3	2025-06-02	presence
2094	19	4	2025-06-02	presence
2095	19	5	2025-06-02	presence
2096	20	1	2025-06-02	presence
2097	20	2	2025-06-02	presence
2098	20	3	2025-06-02	presence
2099	20	4	2025-06-02	presence
2100	20	5	2025-06-02	presence
2101	21	37	2025-06-02	presence
2102	21	38	2025-06-02	presence
2103	21	39	2025-06-02	presence
2104	21	40	2025-06-02	presence
2105	21	41	2025-06-02	presence
2106	22	37	2025-06-02	presence
2107	22	38	2025-06-02	presence
2108	22	39	2025-06-02	presence
2109	22	40	2025-06-02	presence
2110	22	41	2025-06-02	presence
2111	23	37	2025-06-02	late
2112	23	38	2025-06-02	presence
2113	23	39	2025-06-02	presence
2114	23	40	2025-06-02	presence
2115	23	41	2025-06-02	absence
2116	24	37	2025-06-02	absence
2117	24	38	2025-06-02	absence
2118	24	39	2025-06-02	presence
2119	24	40	2025-06-02	presence
2120	24	41	2025-06-02	absence
2121	25	37	2025-06-02	presence
2122	25	38	2025-06-02	late
2123	25	39	2025-06-02	presence
2124	25	40	2025-06-02	presence
2125	25	41	2025-06-02	presence
2126	26	37	2025-06-02	presence
2127	26	38	2025-06-02	presence
2128	26	39	2025-06-02	presence
2129	26	40	2025-06-02	presence
2130	26	41	2025-06-02	excused absence
2131	27	37	2025-06-02	presence
2132	27	38	2025-06-02	presence
2133	27	39	2025-06-02	late
2134	27	40	2025-06-02	absence
2135	27	41	2025-06-02	presence
2136	28	37	2025-06-02	presence
2137	28	38	2025-06-02	presence
2138	28	39	2025-06-02	absence
2139	28	40	2025-06-02	presence
2140	28	41	2025-06-02	presence
2141	29	37	2025-06-02	presence
2142	29	38	2025-06-02	late
2143	29	39	2025-06-02	presence
2144	29	40	2025-06-02	presence
2145	29	41	2025-06-02	presence
2146	30	37	2025-06-02	presence
2147	30	38	2025-06-02	absence
2148	30	39	2025-06-02	presence
2149	30	40	2025-06-02	presence
2150	30	41	2025-06-02	presence
2151	31	37	2025-06-02	absence
2152	31	38	2025-06-02	presence
2153	31	39	2025-06-02	presence
2154	31	40	2025-06-02	presence
2155	31	41	2025-06-02	presence
2156	32	37	2025-06-02	absence
2157	32	38	2025-06-02	presence
2158	32	39	2025-06-02	absence
2159	32	40	2025-06-02	presence
2160	32	41	2025-06-02	presence
2161	33	37	2025-06-02	late
2162	33	38	2025-06-02	presence
2163	33	39	2025-06-02	presence
2164	33	40	2025-06-02	excused absence
2165	33	41	2025-06-02	presence
2166	34	37	2025-06-02	presence
2167	34	38	2025-06-02	late
2168	34	39	2025-06-02	presence
2169	34	40	2025-06-02	presence
2170	34	41	2025-06-02	absence
2171	35	37	2025-06-02	presence
2172	35	38	2025-06-02	presence
2173	35	39	2025-06-02	presence
2174	35	40	2025-06-02	presence
2175	35	41	2025-06-02	late
2176	36	37	2025-06-02	presence
2177	36	38	2025-06-02	presence
2178	36	39	2025-06-02	presence
2179	36	40	2025-06-02	presence
2180	36	41	2025-06-02	excused absence
2181	37	37	2025-06-02	presence
2182	37	38	2025-06-02	presence
2183	37	39	2025-06-02	presence
2184	37	40	2025-06-02	presence
2185	37	41	2025-06-02	absence
2186	38	37	2025-06-02	presence
2187	38	38	2025-06-02	presence
2188	38	39	2025-06-02	presence
2189	38	40	2025-06-02	presence
2190	38	41	2025-06-02	presence
2191	39	37	2025-06-02	presence
2192	39	38	2025-06-02	presence
2193	39	39	2025-06-02	presence
2194	39	40	2025-06-02	presence
2195	39	41	2025-06-02	presence
2196	40	37	2025-06-02	presence
2197	40	38	2025-06-02	presence
2198	40	39	2025-06-02	presence
2199	40	40	2025-06-02	presence
2200	40	41	2025-06-02	presence
2201	41	73	2025-06-02	presence
2202	41	74	2025-06-02	presence
2203	41	75	2025-06-02	presence
2204	41	76	2025-06-02	presence
2205	41	77	2025-06-02	presence
2206	42	73	2025-06-02	presence
2207	42	74	2025-06-02	presence
2208	42	75	2025-06-02	presence
2209	42	76	2025-06-02	presence
2210	42	77	2025-06-02	presence
2211	43	73	2025-06-02	presence
2212	43	74	2025-06-02	presence
2213	43	75	2025-06-02	presence
2214	43	76	2025-06-02	presence
2215	43	77	2025-06-02	absence
2216	44	73	2025-06-02	presence
2217	44	74	2025-06-02	excused absence
2218	44	75	2025-06-02	presence
2219	44	76	2025-06-02	presence
2220	44	77	2025-06-02	presence
2221	45	73	2025-06-02	presence
2222	45	74	2025-06-02	late
2223	45	75	2025-06-02	presence
2224	45	76	2025-06-02	presence
2225	45	77	2025-06-02	absence
2226	46	73	2025-06-02	presence
2227	46	74	2025-06-02	presence
2228	46	75	2025-06-02	presence
2229	46	76	2025-06-02	presence
2230	46	77	2025-06-02	presence
2231	47	73	2025-06-02	presence
2232	47	74	2025-06-02	presence
2233	47	75	2025-06-02	presence
2234	47	76	2025-06-02	presence
2235	47	77	2025-06-02	presence
2236	48	73	2025-06-02	presence
2237	48	74	2025-06-02	presence
2238	48	75	2025-06-02	presence
2239	48	76	2025-06-02	presence
2240	48	77	2025-06-02	presence
2241	49	73	2025-06-02	presence
2242	49	74	2025-06-02	presence
2243	49	75	2025-06-02	presence
2244	49	76	2025-06-02	presence
2245	49	77	2025-06-02	presence
2246	50	73	2025-06-02	presence
2247	50	74	2025-06-02	presence
2248	50	75	2025-06-02	presence
2249	50	76	2025-06-02	presence
2250	50	77	2025-06-02	presence
2251	51	73	2025-06-02	presence
2252	51	74	2025-06-02	late
2253	51	75	2025-06-02	presence
2254	51	76	2025-06-02	presence
2255	51	77	2025-06-02	late
2256	52	73	2025-06-02	presence
2257	52	74	2025-06-02	presence
2258	52	75	2025-06-02	presence
2259	52	76	2025-06-02	presence
2260	52	77	2025-06-02	presence
2261	53	73	2025-06-02	presence
2262	53	74	2025-06-02	presence
2263	53	75	2025-06-02	presence
2264	53	76	2025-06-02	absence
2265	53	77	2025-06-02	presence
2266	54	73	2025-06-02	presence
2267	54	74	2025-06-02	presence
2268	54	75	2025-06-02	late
2269	54	76	2025-06-02	presence
2270	54	77	2025-06-02	presence
2271	55	73	2025-06-02	presence
2272	55	74	2025-06-02	presence
2273	55	75	2025-06-02	presence
2274	55	76	2025-06-02	presence
2275	55	77	2025-06-02	presence
2276	56	73	2025-06-02	presence
2277	56	74	2025-06-02	presence
2278	56	75	2025-06-02	excused absence
2279	56	76	2025-06-02	presence
2280	56	77	2025-06-02	presence
2281	57	73	2025-06-02	presence
2282	57	74	2025-06-02	presence
2283	57	75	2025-06-02	late
2284	57	76	2025-06-02	presence
2285	57	77	2025-06-02	presence
2286	58	73	2025-06-02	presence
2287	58	74	2025-06-02	presence
2288	58	75	2025-06-02	presence
2289	58	76	2025-06-02	presence
2290	58	77	2025-06-02	presence
2291	59	73	2025-06-02	presence
2292	59	74	2025-06-02	presence
2293	59	75	2025-06-02	presence
2294	59	76	2025-06-02	presence
2295	59	77	2025-06-02	presence
2296	60	73	2025-06-02	presence
2297	60	74	2025-06-02	presence
2298	60	75	2025-06-02	presence
2299	60	76	2025-06-02	presence
2300	60	77	2025-06-02	presence
2301	61	95	2025-06-02	presence
2302	61	96	2025-06-02	presence
2303	61	97	2025-06-02	presence
2304	61	98	2025-06-02	presence
2305	61	99	2025-06-02	presence
2306	62	95	2025-06-02	presence
2307	62	96	2025-06-02	presence
2308	62	97	2025-06-02	presence
2309	62	98	2025-06-02	late
2310	62	99	2025-06-02	absence
2311	63	95	2025-06-02	presence
2312	63	96	2025-06-02	presence
2313	63	97	2025-06-02	presence
2314	63	98	2025-06-02	presence
2315	63	99	2025-06-02	presence
2316	64	95	2025-06-02	presence
2317	64	96	2025-06-02	presence
2318	64	97	2025-06-02	presence
2319	64	98	2025-06-02	presence
2320	64	99	2025-06-02	absence
2321	65	95	2025-06-02	presence
2322	65	96	2025-06-02	presence
2323	65	97	2025-06-02	presence
2324	65	98	2025-06-02	presence
2325	65	99	2025-06-02	presence
2326	66	95	2025-06-02	presence
2327	66	96	2025-06-02	excused absence
2328	66	97	2025-06-02	presence
2329	66	98	2025-06-02	presence
2330	66	99	2025-06-02	presence
2331	67	95	2025-06-02	presence
2332	67	96	2025-06-02	presence
2333	67	97	2025-06-02	presence
2334	67	98	2025-06-02	presence
2335	67	99	2025-06-02	presence
2336	68	95	2025-06-02	presence
2337	68	96	2025-06-02	presence
2338	68	97	2025-06-02	presence
2339	68	98	2025-06-02	presence
2340	68	99	2025-06-02	presence
2341	69	95	2025-06-02	presence
2342	69	96	2025-06-02	presence
2343	69	97	2025-06-02	presence
2344	69	98	2025-06-02	presence
2345	69	99	2025-06-02	presence
2346	70	95	2025-06-02	presence
2347	70	96	2025-06-02	presence
2348	70	97	2025-06-02	presence
2349	70	98	2025-06-02	presence
2350	70	99	2025-06-02	presence
2351	71	95	2025-06-02	presence
2352	71	96	2025-06-02	presence
2353	71	97	2025-06-02	presence
2354	71	98	2025-06-02	presence
2355	71	99	2025-06-02	presence
2356	72	95	2025-06-02	absence
2357	72	96	2025-06-02	absence
2358	72	97	2025-06-02	presence
2359	72	98	2025-06-02	absence
2360	72	99	2025-06-02	presence
2361	73	95	2025-06-02	presence
2362	73	96	2025-06-02	presence
2363	73	97	2025-06-02	presence
2364	73	98	2025-06-02	presence
2365	73	99	2025-06-02	presence
2366	74	95	2025-06-02	presence
2367	74	96	2025-06-02	presence
2368	74	97	2025-06-02	presence
2369	74	98	2025-06-02	presence
2370	74	99	2025-06-02	presence
2371	75	95	2025-06-02	excused absence
2372	75	96	2025-06-02	presence
2373	75	97	2025-06-02	excused absence
2374	75	98	2025-06-02	presence
2375	75	99	2025-06-02	presence
2376	76	95	2025-06-02	excused absence
2377	76	96	2025-06-02	presence
2378	76	97	2025-06-02	presence
2379	76	98	2025-06-02	presence
2380	76	99	2025-06-02	absence
2381	77	95	2025-06-02	presence
2382	77	96	2025-06-02	presence
2383	77	97	2025-06-02	presence
2384	77	98	2025-06-02	presence
2385	77	99	2025-06-02	presence
2386	78	95	2025-06-02	presence
2387	78	96	2025-06-02	presence
2388	78	97	2025-06-02	presence
2389	78	98	2025-06-02	presence
2390	78	99	2025-06-02	presence
2391	79	95	2025-06-02	presence
2392	79	96	2025-06-02	presence
2393	79	97	2025-06-02	presence
2394	79	98	2025-06-02	presence
2395	79	99	2025-06-02	presence
2396	80	95	2025-06-02	presence
2397	80	96	2025-06-02	presence
2398	80	97	2025-06-02	presence
2399	80	98	2025-06-02	presence
2400	80	99	2025-06-02	presence
2401	81	117	2025-06-02	presence
2402	81	118	2025-06-02	absence
2403	81	119	2025-06-02	presence
2404	81	120	2025-06-02	excused absence
2405	81	121	2025-06-02	presence
2406	82	117	2025-06-02	presence
2407	82	118	2025-06-02	late
2408	82	119	2025-06-02	presence
2409	82	120	2025-06-02	presence
2410	82	121	2025-06-02	presence
2411	83	117	2025-06-02	presence
2412	83	118	2025-06-02	presence
2413	83	119	2025-06-02	presence
2414	83	120	2025-06-02	excused absence
2415	83	121	2025-06-02	presence
2416	84	117	2025-06-02	presence
2417	84	118	2025-06-02	presence
2418	84	119	2025-06-02	presence
2419	84	120	2025-06-02	presence
2420	84	121	2025-06-02	late
2421	85	117	2025-06-02	presence
2422	85	118	2025-06-02	presence
2423	85	119	2025-06-02	presence
2424	85	120	2025-06-02	presence
2425	85	121	2025-06-02	presence
2426	86	117	2025-06-02	presence
2427	86	118	2025-06-02	presence
2428	86	119	2025-06-02	presence
2429	86	120	2025-06-02	presence
2430	86	121	2025-06-02	presence
2431	87	117	2025-06-02	presence
2432	87	118	2025-06-02	absence
2433	87	119	2025-06-02	presence
2434	87	120	2025-06-02	presence
2435	87	121	2025-06-02	presence
2436	88	117	2025-06-02	absence
2437	88	118	2025-06-02	presence
2438	88	119	2025-06-02	absence
2439	88	120	2025-06-02	presence
2440	88	121	2025-06-02	excused absence
2441	89	117	2025-06-02	presence
2442	89	118	2025-06-02	presence
2443	89	119	2025-06-02	presence
2444	89	120	2025-06-02	presence
2445	89	121	2025-06-02	presence
2446	90	117	2025-06-02	presence
2447	90	118	2025-06-02	presence
2448	90	119	2025-06-02	presence
2449	90	120	2025-06-02	presence
2450	90	121	2025-06-02	presence
2451	91	117	2025-06-02	presence
2452	91	118	2025-06-02	late
2453	91	119	2025-06-02	absence
2454	91	120	2025-06-02	presence
2455	91	121	2025-06-02	presence
2456	92	117	2025-06-02	presence
2457	92	118	2025-06-02	presence
2458	92	119	2025-06-02	presence
2459	92	120	2025-06-02	presence
2460	92	121	2025-06-02	presence
2461	93	117	2025-06-02	presence
2462	93	118	2025-06-02	presence
2463	93	119	2025-06-02	presence
2464	93	120	2025-06-02	presence
2465	93	121	2025-06-02	presence
2466	94	117	2025-06-02	presence
2467	94	118	2025-06-02	presence
2468	94	119	2025-06-02	presence
2469	94	120	2025-06-02	presence
2470	94	121	2025-06-02	presence
2471	95	117	2025-06-02	presence
2472	95	118	2025-06-02	presence
2473	95	119	2025-06-02	presence
2474	95	120	2025-06-02	presence
2475	95	121	2025-06-02	presence
2476	96	117	2025-06-02	presence
2477	96	118	2025-06-02	presence
2478	96	119	2025-06-02	absence
2479	96	120	2025-06-02	presence
2480	96	121	2025-06-02	presence
2481	97	117	2025-06-02	late
2482	97	118	2025-06-02	presence
2483	97	119	2025-06-02	presence
2484	97	120	2025-06-02	presence
2485	97	121	2025-06-02	presence
2486	98	117	2025-06-02	presence
2487	98	118	2025-06-02	presence
2488	98	119	2025-06-02	presence
2489	98	120	2025-06-02	presence
2490	98	121	2025-06-02	presence
2491	99	117	2025-06-02	late
2492	99	118	2025-06-02	presence
2493	99	119	2025-06-02	late
2494	99	120	2025-06-02	presence
2495	99	121	2025-06-02	presence
2496	100	117	2025-06-02	presence
2497	100	118	2025-06-02	presence
2498	100	119	2025-06-02	presence
2499	100	120	2025-06-02	presence
2500	100	121	2025-06-02	presence
2501	1	1	2025-05-30	presence
2502	1	2	2025-05-30	presence
2503	1	3	2025-05-30	presence
2504	1	4	2025-05-30	presence
2505	1	5	2025-05-30	late
2506	2	1	2025-05-30	presence
2507	2	2	2025-05-30	presence
2508	2	3	2025-05-30	presence
2509	2	4	2025-05-30	presence
2510	2	5	2025-05-30	presence
2511	3	1	2025-05-30	presence
2512	3	2	2025-05-30	presence
2513	3	3	2025-05-30	presence
2514	3	4	2025-05-30	excused absence
2515	3	5	2025-05-30	presence
2516	4	1	2025-05-30	presence
2517	4	2	2025-05-30	presence
2518	4	3	2025-05-30	late
2519	4	4	2025-05-30	presence
2520	4	5	2025-05-30	presence
2521	5	1	2025-05-30	presence
2522	5	2	2025-05-30	presence
2523	5	3	2025-05-30	presence
2524	5	4	2025-05-30	presence
2525	5	5	2025-05-30	presence
2526	6	1	2025-05-30	excused absence
2527	6	2	2025-05-30	presence
2528	6	3	2025-05-30	presence
2529	6	4	2025-05-30	presence
2530	6	5	2025-05-30	presence
2531	7	1	2025-05-30	presence
2532	7	2	2025-05-30	absence
2533	7	3	2025-05-30	presence
2534	7	4	2025-05-30	absence
2535	7	5	2025-05-30	presence
2536	8	1	2025-05-30	presence
2537	8	2	2025-05-30	presence
2538	8	3	2025-05-30	presence
2539	8	4	2025-05-30	presence
2540	8	5	2025-05-30	absence
2541	9	1	2025-05-30	presence
2542	9	2	2025-05-30	presence
2543	9	3	2025-05-30	presence
2544	9	4	2025-05-30	presence
2545	9	5	2025-05-30	presence
2546	10	1	2025-05-30	presence
2547	10	2	2025-05-30	excused absence
2548	10	3	2025-05-30	presence
2549	10	4	2025-05-30	presence
2550	10	5	2025-05-30	presence
2551	11	1	2025-05-30	presence
2552	11	2	2025-05-30	presence
2553	11	3	2025-05-30	presence
2554	11	4	2025-05-30	presence
2555	11	5	2025-05-30	late
2556	12	1	2025-05-30	absence
2557	12	2	2025-05-30	presence
2558	12	3	2025-05-30	presence
2559	12	4	2025-05-30	presence
2560	12	5	2025-05-30	presence
2561	13	1	2025-05-30	presence
2562	13	2	2025-05-30	presence
2563	13	3	2025-05-30	presence
2564	13	4	2025-05-30	late
2565	13	5	2025-05-30	presence
2566	14	1	2025-05-30	presence
2567	14	2	2025-05-30	presence
2568	14	3	2025-05-30	presence
2569	14	4	2025-05-30	presence
2570	14	5	2025-05-30	presence
2571	15	1	2025-05-30	presence
2572	15	2	2025-05-30	presence
2573	15	3	2025-05-30	presence
2574	15	4	2025-05-30	presence
2575	15	5	2025-05-30	presence
2576	16	1	2025-05-30	presence
2577	16	2	2025-05-30	presence
2578	16	3	2025-05-30	presence
2579	16	4	2025-05-30	presence
2580	16	5	2025-05-30	presence
2581	17	1	2025-05-30	presence
2582	17	2	2025-05-30	presence
2583	17	3	2025-05-30	presence
2584	17	4	2025-05-30	presence
2585	17	5	2025-05-30	presence
2586	18	1	2025-05-30	presence
2587	18	2	2025-05-30	presence
2588	18	3	2025-05-30	late
2589	18	4	2025-05-30	late
2590	18	5	2025-05-30	presence
2591	19	1	2025-05-30	presence
2592	19	2	2025-05-30	presence
2593	19	3	2025-05-30	presence
2594	19	4	2025-05-30	presence
2595	19	5	2025-05-30	presence
2596	20	1	2025-05-30	excused absence
2597	20	2	2025-05-30	presence
2598	20	3	2025-05-30	presence
2599	20	4	2025-05-30	presence
2600	20	5	2025-05-30	presence
2601	21	37	2025-05-30	presence
2602	21	38	2025-05-30	presence
2603	21	39	2025-05-30	absence
2604	21	40	2025-05-30	presence
2605	21	41	2025-05-30	presence
2606	22	37	2025-05-30	presence
2607	22	38	2025-05-30	presence
2608	22	39	2025-05-30	presence
2609	22	40	2025-05-30	presence
2610	22	41	2025-05-30	presence
2611	23	37	2025-05-30	late
2612	23	38	2025-05-30	presence
2613	23	39	2025-05-30	presence
2614	23	40	2025-05-30	late
2615	23	41	2025-05-30	presence
2616	24	37	2025-05-30	presence
2617	24	38	2025-05-30	excused absence
2618	24	39	2025-05-30	presence
2619	24	40	2025-05-30	absence
2620	24	41	2025-05-30	presence
2621	25	37	2025-05-30	absence
2622	25	38	2025-05-30	late
2623	25	39	2025-05-30	presence
2624	25	40	2025-05-30	presence
2625	25	41	2025-05-30	presence
2626	26	37	2025-05-30	presence
2627	26	38	2025-05-30	presence
2628	26	39	2025-05-30	presence
2629	26	40	2025-05-30	presence
2630	26	41	2025-05-30	presence
2631	27	37	2025-05-30	presence
2632	27	38	2025-05-30	presence
2633	27	39	2025-05-30	presence
2634	27	40	2025-05-30	presence
2635	27	41	2025-05-30	late
2636	28	37	2025-05-30	presence
2637	28	38	2025-05-30	presence
2638	28	39	2025-05-30	presence
2639	28	40	2025-05-30	presence
2640	28	41	2025-05-30	presence
2641	29	37	2025-05-30	presence
2642	29	38	2025-05-30	excused absence
2643	29	39	2025-05-30	presence
2644	29	40	2025-05-30	presence
2645	29	41	2025-05-30	presence
2646	30	37	2025-05-30	late
2647	30	38	2025-05-30	late
2648	30	39	2025-05-30	presence
2649	30	40	2025-05-30	excused absence
2650	30	41	2025-05-30	presence
2651	31	37	2025-05-30	absence
2652	31	38	2025-05-30	presence
2653	31	39	2025-05-30	presence
2654	31	40	2025-05-30	excused absence
2655	31	41	2025-05-30	presence
2656	32	37	2025-05-30	presence
2657	32	38	2025-05-30	presence
2658	32	39	2025-05-30	presence
2659	32	40	2025-05-30	excused absence
2660	32	41	2025-05-30	presence
2661	33	37	2025-05-30	presence
2662	33	38	2025-05-30	presence
2663	33	39	2025-05-30	presence
2664	33	40	2025-05-30	presence
2665	33	41	2025-05-30	presence
2666	34	37	2025-05-30	presence
2667	34	38	2025-05-30	presence
2668	34	39	2025-05-30	presence
2669	34	40	2025-05-30	presence
2670	34	41	2025-05-30	presence
2671	35	37	2025-05-30	presence
2672	35	38	2025-05-30	presence
2673	35	39	2025-05-30	presence
2674	35	40	2025-05-30	presence
2675	35	41	2025-05-30	presence
2676	36	37	2025-05-30	presence
2677	36	38	2025-05-30	presence
2678	36	39	2025-05-30	presence
2679	36	40	2025-05-30	presence
2680	36	41	2025-05-30	presence
2681	37	37	2025-05-30	presence
2682	37	38	2025-05-30	presence
2683	37	39	2025-05-30	presence
2684	37	40	2025-05-30	presence
2685	37	41	2025-05-30	presence
2686	38	37	2025-05-30	presence
2687	38	38	2025-05-30	presence
2688	38	39	2025-05-30	presence
2689	38	40	2025-05-30	presence
2690	38	41	2025-05-30	presence
2691	39	37	2025-05-30	presence
2692	39	38	2025-05-30	presence
2693	39	39	2025-05-30	presence
2694	39	40	2025-05-30	presence
2695	39	41	2025-05-30	presence
2696	40	37	2025-05-30	absence
2697	40	38	2025-05-30	presence
2698	40	39	2025-05-30	presence
2699	40	40	2025-05-30	presence
2700	40	41	2025-05-30	presence
2701	41	73	2025-05-30	presence
2702	41	74	2025-05-30	late
2703	41	75	2025-05-30	absence
2704	41	76	2025-05-30	excused absence
2705	41	77	2025-05-30	late
2706	42	73	2025-05-30	presence
2707	42	74	2025-05-30	presence
2708	42	75	2025-05-30	presence
2709	42	76	2025-05-30	presence
2710	42	77	2025-05-30	presence
2711	43	73	2025-05-30	presence
2712	43	74	2025-05-30	presence
2713	43	75	2025-05-30	presence
2714	43	76	2025-05-30	presence
2715	43	77	2025-05-30	presence
2716	44	73	2025-05-30	absence
2717	44	74	2025-05-30	presence
2718	44	75	2025-05-30	presence
2719	44	76	2025-05-30	presence
2720	44	77	2025-05-30	presence
2721	45	73	2025-05-30	presence
2722	45	74	2025-05-30	presence
2723	45	75	2025-05-30	presence
2724	45	76	2025-05-30	presence
2725	45	77	2025-05-30	late
2726	46	73	2025-05-30	presence
2727	46	74	2025-05-30	absence
2728	46	75	2025-05-30	presence
2729	46	76	2025-05-30	excused absence
2730	46	77	2025-05-30	presence
2731	47	73	2025-05-30	presence
2732	47	74	2025-05-30	presence
2733	47	75	2025-05-30	presence
2734	47	76	2025-05-30	presence
2735	47	77	2025-05-30	presence
2736	48	73	2025-05-30	presence
2737	48	74	2025-05-30	presence
2738	48	75	2025-05-30	presence
2739	48	76	2025-05-30	presence
2740	48	77	2025-05-30	presence
2741	49	73	2025-05-30	presence
2742	49	74	2025-05-30	late
2743	49	75	2025-05-30	presence
2744	49	76	2025-05-30	presence
2745	49	77	2025-05-30	presence
2746	50	73	2025-05-30	presence
2747	50	74	2025-05-30	presence
2748	50	75	2025-05-30	presence
2749	50	76	2025-05-30	presence
2750	50	77	2025-05-30	absence
2751	51	73	2025-05-30	presence
2752	51	74	2025-05-30	presence
2753	51	75	2025-05-30	presence
2754	51	76	2025-05-30	presence
2755	51	77	2025-05-30	presence
2756	52	73	2025-05-30	presence
2757	52	74	2025-05-30	presence
2758	52	75	2025-05-30	presence
2759	52	76	2025-05-30	excused absence
2760	52	77	2025-05-30	presence
2761	53	73	2025-05-30	excused absence
2762	53	74	2025-05-30	presence
2763	53	75	2025-05-30	presence
2764	53	76	2025-05-30	late
2765	53	77	2025-05-30	presence
2766	54	73	2025-05-30	presence
2767	54	74	2025-05-30	presence
2768	54	75	2025-05-30	presence
2769	54	76	2025-05-30	presence
2770	54	77	2025-05-30	presence
2771	55	73	2025-05-30	presence
2772	55	74	2025-05-30	presence
2773	55	75	2025-05-30	presence
2774	55	76	2025-05-30	presence
2775	55	77	2025-05-30	presence
2776	56	73	2025-05-30	absence
2777	56	74	2025-05-30	presence
2778	56	75	2025-05-30	presence
2779	56	76	2025-05-30	absence
2780	56	77	2025-05-30	presence
2781	57	73	2025-05-30	presence
2782	57	74	2025-05-30	absence
2783	57	75	2025-05-30	excused absence
2784	57	76	2025-05-30	presence
2785	57	77	2025-05-30	presence
2786	58	73	2025-05-30	presence
2787	58	74	2025-05-30	late
2788	58	75	2025-05-30	presence
2789	58	76	2025-05-30	presence
2790	58	77	2025-05-30	excused absence
2791	59	73	2025-05-30	presence
2792	59	74	2025-05-30	presence
2793	59	75	2025-05-30	presence
2794	59	76	2025-05-30	presence
2795	59	77	2025-05-30	presence
2796	60	73	2025-05-30	excused absence
2797	60	74	2025-05-30	presence
2798	60	75	2025-05-30	presence
2799	60	76	2025-05-30	excused absence
2800	60	77	2025-05-30	presence
2801	61	95	2025-05-30	excused absence
2802	61	96	2025-05-30	presence
2803	61	97	2025-05-30	presence
2804	61	98	2025-05-30	presence
2805	61	99	2025-05-30	presence
2806	62	95	2025-05-30	presence
2807	62	96	2025-05-30	presence
2808	62	97	2025-05-30	presence
2809	62	98	2025-05-30	presence
2810	62	99	2025-05-30	presence
2811	63	95	2025-05-30	presence
2812	63	96	2025-05-30	late
2813	63	97	2025-05-30	presence
2814	63	98	2025-05-30	absence
2815	63	99	2025-05-30	presence
2816	64	95	2025-05-30	presence
2817	64	96	2025-05-30	presence
2818	64	97	2025-05-30	presence
2819	64	98	2025-05-30	presence
2820	64	99	2025-05-30	presence
2821	65	95	2025-05-30	presence
2822	65	96	2025-05-30	presence
2823	65	97	2025-05-30	presence
2824	65	98	2025-05-30	presence
2825	65	99	2025-05-30	excused absence
2826	66	95	2025-05-30	late
2827	66	96	2025-05-30	presence
2828	66	97	2025-05-30	presence
2829	66	98	2025-05-30	presence
2830	66	99	2025-05-30	presence
2831	67	95	2025-05-30	presence
2832	67	96	2025-05-30	presence
2833	67	97	2025-05-30	excused absence
2834	67	98	2025-05-30	presence
2835	67	99	2025-05-30	presence
2836	68	95	2025-05-30	absence
2837	68	96	2025-05-30	presence
2838	68	97	2025-05-30	presence
2839	68	98	2025-05-30	presence
2840	68	99	2025-05-30	presence
2841	69	95	2025-05-30	late
2842	69	96	2025-05-30	excused absence
2843	69	97	2025-05-30	presence
2844	69	98	2025-05-30	absence
2845	69	99	2025-05-30	presence
2846	70	95	2025-05-30	presence
2847	70	96	2025-05-30	presence
2848	70	97	2025-05-30	presence
2849	70	98	2025-05-30	presence
2850	70	99	2025-05-30	presence
2851	71	95	2025-05-30	presence
2852	71	96	2025-05-30	presence
2853	71	97	2025-05-30	presence
2854	71	98	2025-05-30	excused absence
2855	71	99	2025-05-30	presence
2856	72	95	2025-05-30	presence
2857	72	96	2025-05-30	presence
2858	72	97	2025-05-30	presence
2859	72	98	2025-05-30	presence
2860	72	99	2025-05-30	presence
2861	73	95	2025-05-30	presence
2862	73	96	2025-05-30	late
2863	73	97	2025-05-30	presence
2864	73	98	2025-05-30	presence
2865	73	99	2025-05-30	presence
2866	74	95	2025-05-30	excused absence
2867	74	96	2025-05-30	excused absence
2868	74	97	2025-05-30	presence
2869	74	98	2025-05-30	presence
2870	74	99	2025-05-30	presence
2871	75	95	2025-05-30	presence
2872	75	96	2025-05-30	presence
2873	75	97	2025-05-30	absence
2874	75	98	2025-05-30	presence
2875	75	99	2025-05-30	presence
2876	76	95	2025-05-30	absence
2877	76	96	2025-05-30	presence
2878	76	97	2025-05-30	absence
2879	76	98	2025-05-30	excused absence
2880	76	99	2025-05-30	late
2881	77	95	2025-05-30	presence
2882	77	96	2025-05-30	presence
2883	77	97	2025-05-30	presence
2884	77	98	2025-05-30	presence
2885	77	99	2025-05-30	presence
2886	78	95	2025-05-30	presence
2887	78	96	2025-05-30	presence
2888	78	97	2025-05-30	presence
2889	78	98	2025-05-30	presence
2890	78	99	2025-05-30	presence
2891	79	95	2025-05-30	presence
2892	79	96	2025-05-30	presence
2893	79	97	2025-05-30	presence
2894	79	98	2025-05-30	presence
2895	79	99	2025-05-30	presence
2896	80	95	2025-05-30	presence
2897	80	96	2025-05-30	presence
2898	80	97	2025-05-30	presence
2899	80	98	2025-05-30	presence
2900	80	99	2025-05-30	presence
2901	81	117	2025-05-30	presence
2902	81	118	2025-05-30	presence
2903	81	119	2025-05-30	presence
2904	81	120	2025-05-30	presence
2905	81	121	2025-05-30	presence
2906	82	117	2025-05-30	presence
2907	82	118	2025-05-30	excused absence
2908	82	119	2025-05-30	presence
2909	82	120	2025-05-30	late
2910	82	121	2025-05-30	presence
2911	83	117	2025-05-30	absence
2912	83	118	2025-05-30	presence
2913	83	119	2025-05-30	presence
2914	83	120	2025-05-30	presence
2915	83	121	2025-05-30	presence
2916	84	117	2025-05-30	presence
2917	84	118	2025-05-30	presence
2918	84	119	2025-05-30	presence
2919	84	120	2025-05-30	presence
2920	84	121	2025-05-30	presence
2921	85	117	2025-05-30	presence
2922	85	118	2025-05-30	presence
2923	85	119	2025-05-30	presence
2924	85	120	2025-05-30	excused absence
2925	85	121	2025-05-30	presence
2926	86	117	2025-05-30	presence
2927	86	118	2025-05-30	presence
2928	86	119	2025-05-30	late
2929	86	120	2025-05-30	presence
2930	86	121	2025-05-30	presence
2931	87	117	2025-05-30	presence
2932	87	118	2025-05-30	presence
2933	87	119	2025-05-30	presence
2934	87	120	2025-05-30	excused absence
2935	87	121	2025-05-30	presence
2936	88	117	2025-05-30	presence
2937	88	118	2025-05-30	presence
2938	88	119	2025-05-30	presence
2939	88	120	2025-05-30	presence
2940	88	121	2025-05-30	late
2941	89	117	2025-05-30	late
2942	89	118	2025-05-30	presence
2943	89	119	2025-05-30	late
2944	89	120	2025-05-30	presence
2945	89	121	2025-05-30	presence
2946	90	117	2025-05-30	presence
2947	90	118	2025-05-30	presence
2948	90	119	2025-05-30	presence
2949	90	120	2025-05-30	presence
2950	90	121	2025-05-30	presence
2951	91	117	2025-05-30	presence
2952	91	118	2025-05-30	late
2953	91	119	2025-05-30	presence
2954	91	120	2025-05-30	presence
2955	91	121	2025-05-30	presence
2956	92	117	2025-05-30	presence
2957	92	118	2025-05-30	presence
2958	92	119	2025-05-30	presence
2959	92	120	2025-05-30	presence
2960	92	121	2025-05-30	presence
2961	93	117	2025-05-30	presence
2962	93	118	2025-05-30	presence
2963	93	119	2025-05-30	excused absence
2964	93	120	2025-05-30	presence
2965	93	121	2025-05-30	presence
2966	94	117	2025-05-30	presence
2967	94	118	2025-05-30	presence
2968	94	119	2025-05-30	presence
2969	94	120	2025-05-30	excused absence
2970	94	121	2025-05-30	presence
2971	95	117	2025-05-30	presence
2972	95	118	2025-05-30	excused absence
2973	95	119	2025-05-30	presence
2974	95	120	2025-05-30	late
2975	95	121	2025-05-30	presence
2976	96	117	2025-05-30	presence
2977	96	118	2025-05-30	presence
2978	96	119	2025-05-30	presence
2979	96	120	2025-05-30	presence
2980	96	121	2025-05-30	presence
2981	97	117	2025-05-30	presence
2982	97	118	2025-05-30	absence
2983	97	119	2025-05-30	presence
2984	97	120	2025-05-30	late
2985	97	121	2025-05-30	presence
2986	98	117	2025-05-30	excused absence
2987	98	118	2025-05-30	absence
2988	98	119	2025-05-30	presence
2989	98	120	2025-05-30	presence
2990	98	121	2025-05-30	late
2991	99	117	2025-05-30	presence
2992	99	118	2025-05-30	presence
2993	99	119	2025-05-30	presence
2994	99	120	2025-05-30	presence
2995	99	121	2025-05-30	presence
2996	100	117	2025-05-30	presence
2997	100	118	2025-05-30	presence
2998	100	119	2025-05-30	presence
2999	100	120	2025-05-30	presence
3000	100	121	2025-05-30	presence
3001	1	1	2025-05-29	presence
3002	1	2	2025-05-29	presence
3003	1	3	2025-05-29	presence
3004	1	4	2025-05-29	presence
3005	1	5	2025-05-29	presence
3006	2	1	2025-05-29	presence
3007	2	2	2025-05-29	presence
3008	2	3	2025-05-29	presence
3009	2	4	2025-05-29	presence
3010	2	5	2025-05-29	presence
3011	3	1	2025-05-29	presence
3012	3	2	2025-05-29	absence
3013	3	3	2025-05-29	presence
3014	3	4	2025-05-29	presence
3015	3	5	2025-05-29	excused absence
3016	4	1	2025-05-29	late
3017	4	2	2025-05-29	presence
3018	4	3	2025-05-29	presence
3019	4	4	2025-05-29	presence
3020	4	5	2025-05-29	absence
3021	5	1	2025-05-29	presence
3022	5	2	2025-05-29	late
3023	5	3	2025-05-29	absence
3024	5	4	2025-05-29	absence
3025	5	5	2025-05-29	presence
3026	6	1	2025-05-29	presence
3027	6	2	2025-05-29	presence
3028	6	3	2025-05-29	presence
3029	6	4	2025-05-29	presence
3030	6	5	2025-05-29	presence
3031	7	1	2025-05-29	presence
3032	7	2	2025-05-29	absence
3033	7	3	2025-05-29	presence
3034	7	4	2025-05-29	presence
3035	7	5	2025-05-29	absence
3036	8	1	2025-05-29	presence
3037	8	2	2025-05-29	presence
3038	8	3	2025-05-29	presence
3039	8	4	2025-05-29	excused absence
3040	8	5	2025-05-29	presence
3041	9	1	2025-05-29	presence
3042	9	2	2025-05-29	presence
3043	9	3	2025-05-29	presence
3044	9	4	2025-05-29	presence
3045	9	5	2025-05-29	excused absence
3046	10	1	2025-05-29	late
3047	10	2	2025-05-29	presence
3048	10	3	2025-05-29	presence
3049	10	4	2025-05-29	presence
3050	10	5	2025-05-29	presence
3051	11	1	2025-05-29	presence
3052	11	2	2025-05-29	presence
3053	11	3	2025-05-29	presence
3054	11	4	2025-05-29	presence
3055	11	5	2025-05-29	presence
3056	12	1	2025-05-29	presence
3057	12	2	2025-05-29	presence
3058	12	3	2025-05-29	presence
3059	12	4	2025-05-29	presence
3060	12	5	2025-05-29	excused absence
3061	13	1	2025-05-29	presence
3062	13	2	2025-05-29	presence
3063	13	3	2025-05-29	excused absence
3064	13	4	2025-05-29	presence
3065	13	5	2025-05-29	presence
3066	14	1	2025-05-29	presence
3067	14	2	2025-05-29	presence
3068	14	3	2025-05-29	presence
3069	14	4	2025-05-29	presence
3070	14	5	2025-05-29	presence
3071	15	1	2025-05-29	late
3072	15	2	2025-05-29	presence
3073	15	3	2025-05-29	presence
3074	15	4	2025-05-29	presence
3075	15	5	2025-05-29	presence
3076	16	1	2025-05-29	presence
3077	16	2	2025-05-29	presence
3078	16	3	2025-05-29	presence
3079	16	4	2025-05-29	presence
3080	16	5	2025-05-29	presence
3081	17	1	2025-05-29	presence
3082	17	2	2025-05-29	presence
3083	17	3	2025-05-29	presence
3084	17	4	2025-05-29	presence
3085	17	5	2025-05-29	late
3086	18	1	2025-05-29	absence
3087	18	2	2025-05-29	presence
3088	18	3	2025-05-29	presence
3089	18	4	2025-05-29	excused absence
3090	18	5	2025-05-29	presence
3091	19	1	2025-05-29	presence
3092	19	2	2025-05-29	presence
3093	19	3	2025-05-29	presence
3094	19	4	2025-05-29	presence
3095	19	5	2025-05-29	presence
3096	20	1	2025-05-29	presence
3097	20	2	2025-05-29	presence
3098	20	3	2025-05-29	presence
3099	20	4	2025-05-29	presence
3100	20	5	2025-05-29	presence
3101	21	37	2025-05-29	presence
3102	21	38	2025-05-29	presence
3103	21	39	2025-05-29	presence
3104	21	40	2025-05-29	presence
3105	21	41	2025-05-29	presence
3106	22	37	2025-05-29	presence
3107	22	38	2025-05-29	presence
3108	22	39	2025-05-29	presence
3109	22	40	2025-05-29	presence
3110	22	41	2025-05-29	presence
3111	23	37	2025-05-29	presence
3112	23	38	2025-05-29	presence
3113	23	39	2025-05-29	excused absence
3114	23	40	2025-05-29	presence
3115	23	41	2025-05-29	presence
3116	24	37	2025-05-29	presence
3117	24	38	2025-05-29	excused absence
3118	24	39	2025-05-29	excused absence
3119	24	40	2025-05-29	presence
3120	24	41	2025-05-29	presence
3121	25	37	2025-05-29	presence
3122	25	38	2025-05-29	presence
3123	25	39	2025-05-29	presence
3124	25	40	2025-05-29	presence
3125	25	41	2025-05-29	presence
3126	26	37	2025-05-29	presence
3127	26	38	2025-05-29	presence
3128	26	39	2025-05-29	presence
3129	26	40	2025-05-29	presence
3130	26	41	2025-05-29	presence
3131	27	37	2025-05-29	presence
3132	27	38	2025-05-29	absence
3133	27	39	2025-05-29	presence
3134	27	40	2025-05-29	presence
3135	27	41	2025-05-29	presence
3136	28	37	2025-05-29	presence
3137	28	38	2025-05-29	presence
3138	28	39	2025-05-29	presence
3139	28	40	2025-05-29	presence
3140	28	41	2025-05-29	presence
3141	29	37	2025-05-29	presence
3142	29	38	2025-05-29	presence
3143	29	39	2025-05-29	presence
3144	29	40	2025-05-29	presence
3145	29	41	2025-05-29	presence
3146	30	37	2025-05-29	late
3147	30	38	2025-05-29	presence
3148	30	39	2025-05-29	presence
3149	30	40	2025-05-29	presence
3150	30	41	2025-05-29	presence
3151	31	37	2025-05-29	presence
3152	31	38	2025-05-29	presence
3153	31	39	2025-05-29	presence
3154	31	40	2025-05-29	presence
3155	31	41	2025-05-29	presence
3156	32	37	2025-05-29	presence
3157	32	38	2025-05-29	presence
3158	32	39	2025-05-29	presence
3159	32	40	2025-05-29	presence
3160	32	41	2025-05-29	presence
3161	33	37	2025-05-29	presence
3162	33	38	2025-05-29	presence
3163	33	39	2025-05-29	presence
3164	33	40	2025-05-29	absence
3165	33	41	2025-05-29	presence
3166	34	37	2025-05-29	presence
3167	34	38	2025-05-29	presence
3168	34	39	2025-05-29	presence
3169	34	40	2025-05-29	excused absence
3170	34	41	2025-05-29	presence
3171	35	37	2025-05-29	presence
3172	35	38	2025-05-29	absence
3173	35	39	2025-05-29	absence
3174	35	40	2025-05-29	presence
3175	35	41	2025-05-29	presence
3176	36	37	2025-05-29	presence
3177	36	38	2025-05-29	absence
3178	36	39	2025-05-29	late
3179	36	40	2025-05-29	presence
3180	36	41	2025-05-29	late
3181	37	37	2025-05-29	presence
3182	37	38	2025-05-29	presence
3183	37	39	2025-05-29	presence
3184	37	40	2025-05-29	presence
3185	37	41	2025-05-29	presence
3186	38	37	2025-05-29	presence
3187	38	38	2025-05-29	presence
3188	38	39	2025-05-29	presence
3189	38	40	2025-05-29	presence
3190	38	41	2025-05-29	presence
3191	39	37	2025-05-29	presence
3192	39	38	2025-05-29	presence
3193	39	39	2025-05-29	presence
3194	39	40	2025-05-29	presence
3195	39	41	2025-05-29	presence
3196	40	37	2025-05-29	presence
3197	40	38	2025-05-29	presence
3198	40	39	2025-05-29	presence
3199	40	40	2025-05-29	presence
3200	40	41	2025-05-29	presence
3201	41	73	2025-05-29	presence
3202	41	74	2025-05-29	presence
3203	41	75	2025-05-29	presence
3204	41	76	2025-05-29	presence
3205	41	77	2025-05-29	late
3206	42	73	2025-05-29	presence
3207	42	74	2025-05-29	presence
3208	42	75	2025-05-29	presence
3209	42	76	2025-05-29	presence
3210	42	77	2025-05-29	presence
3211	43	73	2025-05-29	presence
3212	43	74	2025-05-29	presence
3213	43	75	2025-05-29	late
3214	43	76	2025-05-29	presence
3215	43	77	2025-05-29	absence
3216	44	73	2025-05-29	presence
3217	44	74	2025-05-29	presence
3218	44	75	2025-05-29	presence
3219	44	76	2025-05-29	presence
3220	44	77	2025-05-29	presence
3221	45	73	2025-05-29	presence
3222	45	74	2025-05-29	presence
3223	45	75	2025-05-29	presence
3224	45	76	2025-05-29	presence
3225	45	77	2025-05-29	absence
3226	46	73	2025-05-29	presence
3227	46	74	2025-05-29	presence
3228	46	75	2025-05-29	excused absence
3229	46	76	2025-05-29	presence
3230	46	77	2025-05-29	presence
3231	47	73	2025-05-29	presence
3232	47	74	2025-05-29	presence
3233	47	75	2025-05-29	excused absence
3234	47	76	2025-05-29	presence
3235	47	77	2025-05-29	presence
3236	48	73	2025-05-29	presence
3237	48	74	2025-05-29	presence
3238	48	75	2025-05-29	presence
3239	48	76	2025-05-29	presence
3240	48	77	2025-05-29	presence
3241	49	73	2025-05-29	presence
3242	49	74	2025-05-29	presence
3243	49	75	2025-05-29	late
3244	49	76	2025-05-29	absence
3245	49	77	2025-05-29	presence
3246	50	73	2025-05-29	presence
3247	50	74	2025-05-29	late
3248	50	75	2025-05-29	presence
3249	50	76	2025-05-29	presence
3250	50	77	2025-05-29	late
3251	51	73	2025-05-29	absence
3252	51	74	2025-05-29	excused absence
3253	51	75	2025-05-29	presence
3254	51	76	2025-05-29	presence
3255	51	77	2025-05-29	presence
3256	52	73	2025-05-29	presence
3257	52	74	2025-05-29	excused absence
3258	52	75	2025-05-29	presence
3259	52	76	2025-05-29	presence
3260	52	77	2025-05-29	presence
3261	53	73	2025-05-29	late
3262	53	74	2025-05-29	presence
3263	53	75	2025-05-29	excused absence
3264	53	76	2025-05-29	presence
3265	53	77	2025-05-29	presence
3266	54	73	2025-05-29	presence
3267	54	74	2025-05-29	presence
3268	54	75	2025-05-29	presence
3269	54	76	2025-05-29	presence
3270	54	77	2025-05-29	presence
3271	55	73	2025-05-29	presence
3272	55	74	2025-05-29	presence
3273	55	75	2025-05-29	presence
3274	55	76	2025-05-29	presence
3275	55	77	2025-05-29	presence
3276	56	73	2025-05-29	presence
3277	56	74	2025-05-29	presence
3278	56	75	2025-05-29	presence
3279	56	76	2025-05-29	presence
3280	56	77	2025-05-29	presence
3281	57	73	2025-05-29	presence
3282	57	74	2025-05-29	excused absence
3283	57	75	2025-05-29	presence
3284	57	76	2025-05-29	presence
3285	57	77	2025-05-29	presence
3286	58	73	2025-05-29	presence
3287	58	74	2025-05-29	presence
3288	58	75	2025-05-29	presence
3289	58	76	2025-05-29	presence
3290	58	77	2025-05-29	excused absence
3291	59	73	2025-05-29	presence
3292	59	74	2025-05-29	presence
3293	59	75	2025-05-29	presence
3294	59	76	2025-05-29	presence
3295	59	77	2025-05-29	presence
3296	60	73	2025-05-29	late
3297	60	74	2025-05-29	presence
3298	60	75	2025-05-29	presence
3299	60	76	2025-05-29	presence
3300	60	77	2025-05-29	presence
3301	61	95	2025-05-29	presence
3302	61	96	2025-05-29	absence
3303	61	97	2025-05-29	excused absence
3304	61	98	2025-05-29	presence
3305	61	99	2025-05-29	presence
3306	62	95	2025-05-29	presence
3307	62	96	2025-05-29	late
3308	62	97	2025-05-29	late
3309	62	98	2025-05-29	presence
3310	62	99	2025-05-29	excused absence
3311	63	95	2025-05-29	late
3312	63	96	2025-05-29	presence
3313	63	97	2025-05-29	presence
3314	63	98	2025-05-29	presence
3315	63	99	2025-05-29	presence
3316	64	95	2025-05-29	presence
3317	64	96	2025-05-29	presence
3318	64	97	2025-05-29	presence
3319	64	98	2025-05-29	absence
3320	64	99	2025-05-29	presence
3321	65	95	2025-05-29	presence
3322	65	96	2025-05-29	presence
3323	65	97	2025-05-29	presence
3324	65	98	2025-05-29	presence
3325	65	99	2025-05-29	presence
3326	66	95	2025-05-29	presence
3327	66	96	2025-05-29	absence
3328	66	97	2025-05-29	presence
3329	66	98	2025-05-29	late
3330	66	99	2025-05-29	presence
3331	67	95	2025-05-29	presence
3332	67	96	2025-05-29	presence
3333	67	97	2025-05-29	presence
3334	67	98	2025-05-29	presence
3335	67	99	2025-05-29	presence
3336	68	95	2025-05-29	presence
3337	68	96	2025-05-29	excused absence
3338	68	97	2025-05-29	presence
3339	68	98	2025-05-29	presence
3340	68	99	2025-05-29	presence
3341	69	95	2025-05-29	presence
3342	69	96	2025-05-29	presence
3343	69	97	2025-05-29	presence
3344	69	98	2025-05-29	presence
3345	69	99	2025-05-29	presence
3346	70	95	2025-05-29	presence
3347	70	96	2025-05-29	presence
3348	70	97	2025-05-29	presence
3349	70	98	2025-05-29	presence
3350	70	99	2025-05-29	presence
3351	71	95	2025-05-29	presence
3352	71	96	2025-05-29	presence
3353	71	97	2025-05-29	presence
3354	71	98	2025-05-29	late
3355	71	99	2025-05-29	presence
3356	72	95	2025-05-29	presence
3357	72	96	2025-05-29	presence
3358	72	97	2025-05-29	presence
3359	72	98	2025-05-29	presence
3360	72	99	2025-05-29	presence
3361	73	95	2025-05-29	presence
3362	73	96	2025-05-29	presence
3363	73	97	2025-05-29	presence
3364	73	98	2025-05-29	presence
3365	73	99	2025-05-29	presence
3366	74	95	2025-05-29	presence
3367	74	96	2025-05-29	absence
3368	74	97	2025-05-29	absence
3369	74	98	2025-05-29	presence
3370	74	99	2025-05-29	presence
3371	75	95	2025-05-29	presence
3372	75	96	2025-05-29	presence
3373	75	97	2025-05-29	late
3374	75	98	2025-05-29	presence
3375	75	99	2025-05-29	presence
3376	76	95	2025-05-29	presence
3377	76	96	2025-05-29	presence
3378	76	97	2025-05-29	presence
3379	76	98	2025-05-29	presence
3380	76	99	2025-05-29	absence
3381	77	95	2025-05-29	absence
3382	77	96	2025-05-29	presence
3383	77	97	2025-05-29	excused absence
3384	77	98	2025-05-29	presence
3385	77	99	2025-05-29	presence
3386	78	95	2025-05-29	presence
3387	78	96	2025-05-29	presence
3388	78	97	2025-05-29	presence
3389	78	98	2025-05-29	absence
3390	78	99	2025-05-29	presence
3391	79	95	2025-05-29	presence
3392	79	96	2025-05-29	absence
3393	79	97	2025-05-29	late
3394	79	98	2025-05-29	presence
3395	79	99	2025-05-29	presence
3396	80	95	2025-05-29	presence
3397	80	96	2025-05-29	presence
3398	80	97	2025-05-29	presence
3399	80	98	2025-05-29	presence
3400	80	99	2025-05-29	presence
3401	81	117	2025-05-29	presence
3402	81	118	2025-05-29	presence
3403	81	119	2025-05-29	presence
3404	81	120	2025-05-29	presence
3405	81	121	2025-05-29	presence
3406	82	117	2025-05-29	presence
3407	82	118	2025-05-29	presence
3408	82	119	2025-05-29	presence
3409	82	120	2025-05-29	presence
3410	82	121	2025-05-29	presence
3411	83	117	2025-05-29	presence
3412	83	118	2025-05-29	presence
3413	83	119	2025-05-29	presence
3414	83	120	2025-05-29	presence
3415	83	121	2025-05-29	presence
3416	84	117	2025-05-29	presence
3417	84	118	2025-05-29	absence
3418	84	119	2025-05-29	presence
3419	84	120	2025-05-29	presence
3420	84	121	2025-05-29	presence
3421	85	117	2025-05-29	presence
3422	85	118	2025-05-29	presence
3423	85	119	2025-05-29	presence
3424	85	120	2025-05-29	presence
3425	85	121	2025-05-29	presence
3426	86	117	2025-05-29	presence
3427	86	118	2025-05-29	presence
3428	86	119	2025-05-29	presence
3429	86	120	2025-05-29	excused absence
3430	86	121	2025-05-29	presence
3431	87	117	2025-05-29	presence
3432	87	118	2025-05-29	presence
3433	87	119	2025-05-29	presence
3434	87	120	2025-05-29	presence
3435	87	121	2025-05-29	presence
3436	88	117	2025-05-29	presence
3437	88	118	2025-05-29	presence
3438	88	119	2025-05-29	presence
3439	88	120	2025-05-29	presence
3440	88	121	2025-05-29	presence
3441	89	117	2025-05-29	presence
3442	89	118	2025-05-29	presence
3443	89	119	2025-05-29	presence
3444	89	120	2025-05-29	presence
3445	89	121	2025-05-29	presence
3446	90	117	2025-05-29	excused absence
3447	90	118	2025-05-29	presence
3448	90	119	2025-05-29	presence
3449	90	120	2025-05-29	presence
3450	90	121	2025-05-29	presence
3451	91	117	2025-05-29	presence
3452	91	118	2025-05-29	presence
3453	91	119	2025-05-29	presence
3454	91	120	2025-05-29	presence
3455	91	121	2025-05-29	presence
3456	92	117	2025-05-29	presence
3457	92	118	2025-05-29	presence
3458	92	119	2025-05-29	presence
3459	92	120	2025-05-29	presence
3460	92	121	2025-05-29	presence
3461	93	117	2025-05-29	presence
3462	93	118	2025-05-29	presence
3463	93	119	2025-05-29	presence
3464	93	120	2025-05-29	presence
3465	93	121	2025-05-29	presence
3466	94	117	2025-05-29	presence
3467	94	118	2025-05-29	excused absence
3468	94	119	2025-05-29	absence
3469	94	120	2025-05-29	presence
3470	94	121	2025-05-29	presence
3471	95	117	2025-05-29	presence
3472	95	118	2025-05-29	excused absence
3473	95	119	2025-05-29	presence
3474	95	120	2025-05-29	presence
3475	95	121	2025-05-29	presence
3476	96	117	2025-05-29	presence
3477	96	118	2025-05-29	presence
3478	96	119	2025-05-29	presence
3479	96	120	2025-05-29	absence
3480	96	121	2025-05-29	presence
3481	97	117	2025-05-29	absence
3482	97	118	2025-05-29	presence
3483	97	119	2025-05-29	excused absence
3484	97	120	2025-05-29	presence
3485	97	121	2025-05-29	presence
3486	98	117	2025-05-29	presence
3487	98	118	2025-05-29	presence
3488	98	119	2025-05-29	excused absence
3489	98	120	2025-05-29	presence
3490	98	121	2025-05-29	presence
3491	99	117	2025-05-29	presence
3492	99	118	2025-05-29	presence
3493	99	119	2025-05-29	presence
3494	99	120	2025-05-29	presence
3495	99	121	2025-05-29	presence
3496	100	117	2025-05-29	presence
3497	100	118	2025-05-29	presence
3498	100	119	2025-05-29	presence
3499	100	120	2025-05-29	presence
3500	100	121	2025-05-29	presence
3501	1	1	2025-05-28	presence
3502	1	2	2025-05-28	presence
3503	1	3	2025-05-28	excused absence
3504	1	4	2025-05-28	presence
3505	1	5	2025-05-28	presence
3506	2	1	2025-05-28	presence
3507	2	2	2025-05-28	presence
3508	2	3	2025-05-28	excused absence
3509	2	4	2025-05-28	presence
3510	2	5	2025-05-28	presence
3511	3	1	2025-05-28	excused absence
3512	3	2	2025-05-28	presence
3513	3	3	2025-05-28	absence
3514	3	4	2025-05-28	presence
3515	3	5	2025-05-28	presence
3516	4	1	2025-05-28	presence
3517	4	2	2025-05-28	presence
3518	4	3	2025-05-28	presence
3519	4	4	2025-05-28	presence
3520	4	5	2025-05-28	presence
3521	5	1	2025-05-28	late
3522	5	2	2025-05-28	presence
3523	5	3	2025-05-28	presence
3524	5	4	2025-05-28	presence
3525	5	5	2025-05-28	absence
3526	6	1	2025-05-28	presence
3527	6	2	2025-05-28	absence
3528	6	3	2025-05-28	late
3529	6	4	2025-05-28	presence
3530	6	5	2025-05-28	presence
3531	7	1	2025-05-28	excused absence
3532	7	2	2025-05-28	presence
3533	7	3	2025-05-28	presence
3534	7	4	2025-05-28	presence
3535	7	5	2025-05-28	presence
3536	8	1	2025-05-28	presence
3537	8	2	2025-05-28	presence
3538	8	3	2025-05-28	presence
3539	8	4	2025-05-28	presence
3540	8	5	2025-05-28	presence
3541	9	1	2025-05-28	presence
3542	9	2	2025-05-28	presence
3543	9	3	2025-05-28	presence
3544	9	4	2025-05-28	presence
3545	9	5	2025-05-28	presence
3546	10	1	2025-05-28	presence
3547	10	2	2025-05-28	presence
3548	10	3	2025-05-28	presence
3549	10	4	2025-05-28	presence
3550	10	5	2025-05-28	presence
3551	11	1	2025-05-28	presence
3552	11	2	2025-05-28	presence
3553	11	3	2025-05-28	late
3554	11	4	2025-05-28	presence
3555	11	5	2025-05-28	presence
3556	12	1	2025-05-28	presence
3557	12	2	2025-05-28	presence
3558	12	3	2025-05-28	presence
3559	12	4	2025-05-28	presence
3560	12	5	2025-05-28	presence
3561	13	1	2025-05-28	presence
3562	13	2	2025-05-28	presence
3563	13	3	2025-05-28	presence
3564	13	4	2025-05-28	presence
3565	13	5	2025-05-28	presence
3566	14	1	2025-05-28	absence
3567	14	2	2025-05-28	presence
3568	14	3	2025-05-28	presence
3569	14	4	2025-05-28	presence
3570	14	5	2025-05-28	presence
3571	15	1	2025-05-28	presence
3572	15	2	2025-05-28	presence
3573	15	3	2025-05-28	presence
3574	15	4	2025-05-28	presence
3575	15	5	2025-05-28	presence
3576	16	1	2025-05-28	presence
3577	16	2	2025-05-28	presence
3578	16	3	2025-05-28	absence
3579	16	4	2025-05-28	presence
3580	16	5	2025-05-28	presence
3581	17	1	2025-05-28	presence
3582	17	2	2025-05-28	late
3583	17	3	2025-05-28	presence
3584	17	4	2025-05-28	presence
3585	17	5	2025-05-28	presence
3586	18	1	2025-05-28	presence
3587	18	2	2025-05-28	presence
3588	18	3	2025-05-28	presence
3589	18	4	2025-05-28	presence
3590	18	5	2025-05-28	presence
3591	19	1	2025-05-28	late
3592	19	2	2025-05-28	presence
3593	19	3	2025-05-28	presence
3594	19	4	2025-05-28	presence
3595	19	5	2025-05-28	presence
3596	20	1	2025-05-28	presence
3597	20	2	2025-05-28	presence
3598	20	3	2025-05-28	presence
3599	20	4	2025-05-28	presence
3600	20	5	2025-05-28	presence
3601	21	37	2025-05-28	late
3602	21	38	2025-05-28	presence
3603	21	39	2025-05-28	presence
3604	21	40	2025-05-28	presence
3605	21	41	2025-05-28	presence
3606	22	37	2025-05-28	presence
3607	22	38	2025-05-28	presence
3608	22	39	2025-05-28	presence
3609	22	40	2025-05-28	presence
3610	22	41	2025-05-28	presence
3611	23	37	2025-05-28	presence
3612	23	38	2025-05-28	presence
3613	23	39	2025-05-28	presence
3614	23	40	2025-05-28	presence
3615	23	41	2025-05-28	presence
3616	24	37	2025-05-28	late
3617	24	38	2025-05-28	presence
3618	24	39	2025-05-28	presence
3619	24	40	2025-05-28	presence
3620	24	41	2025-05-28	presence
3621	25	37	2025-05-28	presence
3622	25	38	2025-05-28	presence
3623	25	39	2025-05-28	presence
3624	25	40	2025-05-28	presence
3625	25	41	2025-05-28	late
3626	26	37	2025-05-28	presence
3627	26	38	2025-05-28	presence
3628	26	39	2025-05-28	presence
3629	26	40	2025-05-28	presence
3630	26	41	2025-05-28	presence
3631	27	37	2025-05-28	presence
3632	27	38	2025-05-28	absence
3633	27	39	2025-05-28	presence
3634	27	40	2025-05-28	presence
3635	27	41	2025-05-28	presence
3636	28	37	2025-05-28	presence
3637	28	38	2025-05-28	presence
3638	28	39	2025-05-28	presence
3639	28	40	2025-05-28	late
3640	28	41	2025-05-28	excused absence
3641	29	37	2025-05-28	presence
3642	29	38	2025-05-28	presence
3643	29	39	2025-05-28	presence
3644	29	40	2025-05-28	presence
3645	29	41	2025-05-28	presence
3646	30	37	2025-05-28	presence
3647	30	38	2025-05-28	presence
3648	30	39	2025-05-28	late
3649	30	40	2025-05-28	presence
3650	30	41	2025-05-28	presence
3651	31	37	2025-05-28	presence
3652	31	38	2025-05-28	presence
3653	31	39	2025-05-28	presence
3654	31	40	2025-05-28	presence
3655	31	41	2025-05-28	presence
3656	32	37	2025-05-28	late
3657	32	38	2025-05-28	presence
3658	32	39	2025-05-28	presence
3659	32	40	2025-05-28	presence
3660	32	41	2025-05-28	presence
3661	33	37	2025-05-28	presence
3662	33	38	2025-05-28	presence
3663	33	39	2025-05-28	presence
3664	33	40	2025-05-28	presence
3665	33	41	2025-05-28	presence
3666	34	37	2025-05-28	presence
3667	34	38	2025-05-28	presence
3668	34	39	2025-05-28	absence
3669	34	40	2025-05-28	presence
3670	34	41	2025-05-28	presence
3671	35	37	2025-05-28	presence
3672	35	38	2025-05-28	presence
3673	35	39	2025-05-28	presence
3674	35	40	2025-05-28	late
3675	35	41	2025-05-28	presence
3676	36	37	2025-05-28	absence
3677	36	38	2025-05-28	presence
3678	36	39	2025-05-28	presence
3679	36	40	2025-05-28	presence
3680	36	41	2025-05-28	presence
3681	37	37	2025-05-28	presence
3682	37	38	2025-05-28	excused absence
3683	37	39	2025-05-28	presence
3684	37	40	2025-05-28	late
3685	37	41	2025-05-28	presence
3686	38	37	2025-05-28	presence
3687	38	38	2025-05-28	presence
3688	38	39	2025-05-28	presence
3689	38	40	2025-05-28	presence
3690	38	41	2025-05-28	presence
3691	39	37	2025-05-28	presence
3692	39	38	2025-05-28	presence
3693	39	39	2025-05-28	presence
3694	39	40	2025-05-28	presence
3695	39	41	2025-05-28	presence
3696	40	37	2025-05-28	presence
3697	40	38	2025-05-28	presence
3698	40	39	2025-05-28	excused absence
3699	40	40	2025-05-28	presence
3700	40	41	2025-05-28	excused absence
3701	41	73	2025-05-28	excused absence
3702	41	74	2025-05-28	presence
3703	41	75	2025-05-28	presence
3704	41	76	2025-05-28	excused absence
3705	41	77	2025-05-28	presence
3706	42	73	2025-05-28	presence
3707	42	74	2025-05-28	presence
3708	42	75	2025-05-28	absence
3709	42	76	2025-05-28	presence
3710	42	77	2025-05-28	presence
3711	43	73	2025-05-28	presence
3712	43	74	2025-05-28	late
3713	43	75	2025-05-28	presence
3714	43	76	2025-05-28	presence
3715	43	77	2025-05-28	presence
3716	44	73	2025-05-28	presence
3717	44	74	2025-05-28	presence
3718	44	75	2025-05-28	presence
3719	44	76	2025-05-28	presence
3720	44	77	2025-05-28	presence
3721	45	73	2025-05-28	late
3722	45	74	2025-05-28	presence
3723	45	75	2025-05-28	presence
3724	45	76	2025-05-28	presence
3725	45	77	2025-05-28	presence
3726	46	73	2025-05-28	presence
3727	46	74	2025-05-28	presence
3728	46	75	2025-05-28	presence
3729	46	76	2025-05-28	excused absence
3730	46	77	2025-05-28	presence
3731	47	73	2025-05-28	excused absence
3732	47	74	2025-05-28	presence
3733	47	75	2025-05-28	presence
3734	47	76	2025-05-28	excused absence
3735	47	77	2025-05-28	presence
3736	48	73	2025-05-28	late
3737	48	74	2025-05-28	absence
3738	48	75	2025-05-28	presence
3739	48	76	2025-05-28	presence
3740	48	77	2025-05-28	absence
3741	49	73	2025-05-28	presence
3742	49	74	2025-05-28	presence
3743	49	75	2025-05-28	excused absence
3744	49	76	2025-05-28	presence
3745	49	77	2025-05-28	presence
3746	50	73	2025-05-28	presence
3747	50	74	2025-05-28	presence
3748	50	75	2025-05-28	late
3749	50	76	2025-05-28	presence
3750	50	77	2025-05-28	presence
3751	51	73	2025-05-28	presence
3752	51	74	2025-05-28	presence
3753	51	75	2025-05-28	presence
3754	51	76	2025-05-28	presence
3755	51	77	2025-05-28	presence
3756	52	73	2025-05-28	absence
3757	52	74	2025-05-28	presence
3758	52	75	2025-05-28	presence
3759	52	76	2025-05-28	presence
3760	52	77	2025-05-28	presence
3761	53	73	2025-05-28	presence
3762	53	74	2025-05-28	presence
3763	53	75	2025-05-28	absence
3764	53	76	2025-05-28	presence
3765	53	77	2025-05-28	presence
3766	54	73	2025-05-28	presence
3767	54	74	2025-05-28	presence
3768	54	75	2025-05-28	presence
3769	54	76	2025-05-28	presence
3770	54	77	2025-05-28	presence
3771	55	73	2025-05-28	presence
3772	55	74	2025-05-28	presence
3773	55	75	2025-05-28	presence
3774	55	76	2025-05-28	presence
3775	55	77	2025-05-28	presence
3776	56	73	2025-05-28	presence
3777	56	74	2025-05-28	presence
3778	56	75	2025-05-28	presence
3779	56	76	2025-05-28	presence
3780	56	77	2025-05-28	presence
3781	57	73	2025-05-28	presence
3782	57	74	2025-05-28	presence
3783	57	75	2025-05-28	presence
3784	57	76	2025-05-28	presence
3785	57	77	2025-05-28	presence
3786	58	73	2025-05-28	presence
3787	58	74	2025-05-28	presence
3788	58	75	2025-05-28	presence
3789	58	76	2025-05-28	presence
3790	58	77	2025-05-28	presence
3791	59	73	2025-05-28	presence
3792	59	74	2025-05-28	presence
3793	59	75	2025-05-28	presence
3794	59	76	2025-05-28	presence
3795	59	77	2025-05-28	excused absence
3796	60	73	2025-05-28	presence
3797	60	74	2025-05-28	presence
3798	60	75	2025-05-28	presence
3799	60	76	2025-05-28	presence
3800	60	77	2025-05-28	presence
3801	61	95	2025-05-28	late
3802	61	96	2025-05-28	presence
3803	61	97	2025-05-28	absence
3804	61	98	2025-05-28	presence
3805	61	99	2025-05-28	presence
3806	62	95	2025-05-28	presence
3807	62	96	2025-05-28	presence
3808	62	97	2025-05-28	presence
3809	62	98	2025-05-28	presence
3810	62	99	2025-05-28	presence
3811	63	95	2025-05-28	presence
3812	63	96	2025-05-28	presence
3813	63	97	2025-05-28	excused absence
3814	63	98	2025-05-28	late
3815	63	99	2025-05-28	presence
3816	64	95	2025-05-28	presence
3817	64	96	2025-05-28	presence
3818	64	97	2025-05-28	presence
3819	64	98	2025-05-28	presence
3820	64	99	2025-05-28	presence
3821	65	95	2025-05-28	presence
3822	65	96	2025-05-28	presence
3823	65	97	2025-05-28	presence
3824	65	98	2025-05-28	late
3825	65	99	2025-05-28	presence
3826	66	95	2025-05-28	presence
3827	66	96	2025-05-28	presence
3828	66	97	2025-05-28	presence
3829	66	98	2025-05-28	presence
3830	66	99	2025-05-28	presence
3831	67	95	2025-05-28	presence
3832	67	96	2025-05-28	presence
3833	67	97	2025-05-28	presence
3834	67	98	2025-05-28	late
3835	67	99	2025-05-28	presence
3836	68	95	2025-05-28	presence
3837	68	96	2025-05-28	presence
3838	68	97	2025-05-28	absence
3839	68	98	2025-05-28	presence
3840	68	99	2025-05-28	presence
3841	69	95	2025-05-28	presence
3842	69	96	2025-05-28	presence
3843	69	97	2025-05-28	presence
3844	69	98	2025-05-28	late
3845	69	99	2025-05-28	presence
3846	70	95	2025-05-28	presence
3847	70	96	2025-05-28	presence
3848	70	97	2025-05-28	presence
3849	70	98	2025-05-28	presence
3850	70	99	2025-05-28	presence
3851	71	95	2025-05-28	presence
3852	71	96	2025-05-28	presence
3853	71	97	2025-05-28	presence
3854	71	98	2025-05-28	presence
3855	71	99	2025-05-28	presence
3856	72	95	2025-05-28	presence
3857	72	96	2025-05-28	presence
3858	72	97	2025-05-28	presence
3859	72	98	2025-05-28	presence
3860	72	99	2025-05-28	presence
3861	73	95	2025-05-28	excused absence
3862	73	96	2025-05-28	presence
3863	73	97	2025-05-28	presence
3864	73	98	2025-05-28	presence
3865	73	99	2025-05-28	presence
3866	74	95	2025-05-28	late
3867	74	96	2025-05-28	presence
3868	74	97	2025-05-28	presence
3869	74	98	2025-05-28	late
3870	74	99	2025-05-28	excused absence
3871	75	95	2025-05-28	presence
3872	75	96	2025-05-28	presence
3873	75	97	2025-05-28	presence
3874	75	98	2025-05-28	presence
3875	75	99	2025-05-28	presence
3876	76	95	2025-05-28	presence
3877	76	96	2025-05-28	presence
3878	76	97	2025-05-28	presence
3879	76	98	2025-05-28	presence
3880	76	99	2025-05-28	presence
3881	77	95	2025-05-28	presence
3882	77	96	2025-05-28	presence
3883	77	97	2025-05-28	presence
3884	77	98	2025-05-28	presence
3885	77	99	2025-05-28	presence
3886	78	95	2025-05-28	presence
3887	78	96	2025-05-28	late
3888	78	97	2025-05-28	presence
3889	78	98	2025-05-28	presence
3890	78	99	2025-05-28	presence
3891	79	95	2025-05-28	presence
3892	79	96	2025-05-28	presence
3893	79	97	2025-05-28	presence
3894	79	98	2025-05-28	presence
3895	79	99	2025-05-28	absence
3896	80	95	2025-05-28	presence
3897	80	96	2025-05-28	presence
3898	80	97	2025-05-28	presence
3899	80	98	2025-05-28	presence
3900	80	99	2025-05-28	presence
3901	81	117	2025-05-28	presence
3902	81	118	2025-05-28	presence
3903	81	119	2025-05-28	presence
3904	81	120	2025-05-28	absence
3905	81	121	2025-05-28	presence
3906	82	117	2025-05-28	presence
3907	82	118	2025-05-28	presence
3908	82	119	2025-05-28	presence
3909	82	120	2025-05-28	presence
3910	82	121	2025-05-28	presence
3911	83	117	2025-05-28	presence
3912	83	118	2025-05-28	presence
3913	83	119	2025-05-28	presence
3914	83	120	2025-05-28	presence
3915	83	121	2025-05-28	presence
3916	84	117	2025-05-28	presence
3917	84	118	2025-05-28	late
3918	84	119	2025-05-28	presence
3919	84	120	2025-05-28	presence
3920	84	121	2025-05-28	presence
3921	85	117	2025-05-28	excused absence
3922	85	118	2025-05-28	presence
3923	85	119	2025-05-28	absence
3924	85	120	2025-05-28	presence
3925	85	121	2025-05-28	presence
3926	86	117	2025-05-28	presence
3927	86	118	2025-05-28	presence
3928	86	119	2025-05-28	presence
3929	86	120	2025-05-28	presence
3930	86	121	2025-05-28	presence
3931	87	117	2025-05-28	presence
3932	87	118	2025-05-28	late
3933	87	119	2025-05-28	presence
3934	87	120	2025-05-28	presence
3935	87	121	2025-05-28	presence
3936	88	117	2025-05-28	presence
3937	88	118	2025-05-28	late
3938	88	119	2025-05-28	presence
3939	88	120	2025-05-28	presence
3940	88	121	2025-05-28	presence
3941	89	117	2025-05-28	presence
3942	89	118	2025-05-28	presence
3943	89	119	2025-05-28	excused absence
3944	89	120	2025-05-28	presence
3945	89	121	2025-05-28	presence
3946	90	117	2025-05-28	presence
3947	90	118	2025-05-28	presence
3948	90	119	2025-05-28	presence
3949	90	120	2025-05-28	excused absence
3950	90	121	2025-05-28	presence
3951	91	117	2025-05-28	presence
3952	91	118	2025-05-28	presence
3953	91	119	2025-05-28	absence
3954	91	120	2025-05-28	presence
3955	91	121	2025-05-28	presence
3956	92	117	2025-05-28	presence
3957	92	118	2025-05-28	presence
3958	92	119	2025-05-28	excused absence
3959	92	120	2025-05-28	presence
3960	92	121	2025-05-28	presence
3961	93	117	2025-05-28	presence
3962	93	118	2025-05-28	presence
3963	93	119	2025-05-28	presence
3964	93	120	2025-05-28	presence
3965	93	121	2025-05-28	excused absence
3966	94	117	2025-05-28	presence
3967	94	118	2025-05-28	presence
3968	94	119	2025-05-28	presence
3969	94	120	2025-05-28	presence
3970	94	121	2025-05-28	presence
3971	95	117	2025-05-28	presence
3972	95	118	2025-05-28	presence
3973	95	119	2025-05-28	presence
3974	95	120	2025-05-28	presence
3975	95	121	2025-05-28	absence
3976	96	117	2025-05-28	presence
3977	96	118	2025-05-28	presence
3978	96	119	2025-05-28	absence
3979	96	120	2025-05-28	presence
3980	96	121	2025-05-28	presence
3981	97	117	2025-05-28	absence
3982	97	118	2025-05-28	presence
3983	97	119	2025-05-28	presence
3984	97	120	2025-05-28	presence
3985	97	121	2025-05-28	presence
3986	98	117	2025-05-28	presence
3987	98	118	2025-05-28	presence
3988	98	119	2025-05-28	presence
3989	98	120	2025-05-28	presence
3990	98	121	2025-05-28	presence
3991	99	117	2025-05-28	late
3992	99	118	2025-05-28	presence
3993	99	119	2025-05-28	presence
3994	99	120	2025-05-28	presence
3995	99	121	2025-05-28	absence
3996	100	117	2025-05-28	presence
3997	100	118	2025-05-28	excused absence
3998	100	119	2025-05-28	absence
3999	100	120	2025-05-28	presence
4000	100	121	2025-05-28	presence
4001	1	1	2025-05-27	presence
4002	1	2	2025-05-27	presence
4003	1	3	2025-05-27	presence
4004	1	4	2025-05-27	presence
4005	1	5	2025-05-27	presence
4006	2	1	2025-05-27	late
4007	2	2	2025-05-27	late
4008	2	3	2025-05-27	presence
4009	2	4	2025-05-27	presence
4010	2	5	2025-05-27	presence
4011	3	1	2025-05-27	presence
4012	3	2	2025-05-27	presence
4013	3	3	2025-05-27	presence
4014	3	4	2025-05-27	presence
4015	3	5	2025-05-27	presence
4016	4	1	2025-05-27	presence
4017	4	2	2025-05-27	presence
4018	4	3	2025-05-27	presence
4019	4	4	2025-05-27	presence
4020	4	5	2025-05-27	presence
4021	5	1	2025-05-27	late
4022	5	2	2025-05-27	presence
4023	5	3	2025-05-27	presence
4024	5	4	2025-05-27	presence
4025	5	5	2025-05-27	presence
4026	6	1	2025-05-27	presence
4027	6	2	2025-05-27	presence
4028	6	3	2025-05-27	late
4029	6	4	2025-05-27	presence
4030	6	5	2025-05-27	presence
4031	7	1	2025-05-27	presence
4032	7	2	2025-05-27	presence
4033	7	3	2025-05-27	presence
4034	7	4	2025-05-27	presence
4035	7	5	2025-05-27	presence
4036	8	1	2025-05-27	presence
4037	8	2	2025-05-27	presence
4038	8	3	2025-05-27	excused absence
4039	8	4	2025-05-27	presence
4040	8	5	2025-05-27	presence
4041	9	1	2025-05-27	presence
4042	9	2	2025-05-27	presence
4043	9	3	2025-05-27	presence
4044	9	4	2025-05-27	presence
4045	9	5	2025-05-27	presence
4046	10	1	2025-05-27	presence
4047	10	2	2025-05-27	presence
4048	10	3	2025-05-27	presence
4049	10	4	2025-05-27	presence
4050	10	5	2025-05-27	excused absence
4051	11	1	2025-05-27	presence
4052	11	2	2025-05-27	presence
4053	11	3	2025-05-27	presence
4054	11	4	2025-05-27	presence
4055	11	5	2025-05-27	presence
4056	12	1	2025-05-27	late
4057	12	2	2025-05-27	presence
4058	12	3	2025-05-27	presence
4059	12	4	2025-05-27	presence
4060	12	5	2025-05-27	presence
4061	13	1	2025-05-27	presence
4062	13	2	2025-05-27	presence
4063	13	3	2025-05-27	absence
4064	13	4	2025-05-27	excused absence
4065	13	5	2025-05-27	presence
4066	14	1	2025-05-27	presence
4067	14	2	2025-05-27	presence
4068	14	3	2025-05-27	presence
4069	14	4	2025-05-27	presence
4070	14	5	2025-05-27	presence
4071	15	1	2025-05-27	presence
4072	15	2	2025-05-27	excused absence
4073	15	3	2025-05-27	presence
4074	15	4	2025-05-27	presence
4075	15	5	2025-05-27	presence
4076	16	1	2025-05-27	presence
4077	16	2	2025-05-27	presence
4078	16	3	2025-05-27	presence
4079	16	4	2025-05-27	presence
4080	16	5	2025-05-27	presence
4081	17	1	2025-05-27	presence
4082	17	2	2025-05-27	presence
4083	17	3	2025-05-27	presence
4084	17	4	2025-05-27	presence
4085	17	5	2025-05-27	presence
4086	18	1	2025-05-27	presence
4087	18	2	2025-05-27	presence
4088	18	3	2025-05-27	presence
4089	18	4	2025-05-27	presence
4090	18	5	2025-05-27	absence
4091	19	1	2025-05-27	presence
4092	19	2	2025-05-27	presence
4093	19	3	2025-05-27	presence
4094	19	4	2025-05-27	presence
4095	19	5	2025-05-27	presence
4096	20	1	2025-05-27	presence
4097	20	2	2025-05-27	late
4098	20	3	2025-05-27	presence
4099	20	4	2025-05-27	late
4100	20	5	2025-05-27	presence
4101	21	37	2025-05-27	presence
4102	21	38	2025-05-27	presence
4103	21	39	2025-05-27	presence
4104	21	40	2025-05-27	excused absence
4105	21	41	2025-05-27	presence
4106	22	37	2025-05-27	presence
4107	22	38	2025-05-27	presence
4108	22	39	2025-05-27	presence
4109	22	40	2025-05-27	absence
4110	22	41	2025-05-27	presence
4111	23	37	2025-05-27	presence
4112	23	38	2025-05-27	presence
4113	23	39	2025-05-27	presence
4114	23	40	2025-05-27	presence
4115	23	41	2025-05-27	presence
4116	24	37	2025-05-27	presence
4117	24	38	2025-05-27	presence
4118	24	39	2025-05-27	presence
4119	24	40	2025-05-27	excused absence
4120	24	41	2025-05-27	presence
4121	25	37	2025-05-27	presence
4122	25	38	2025-05-27	presence
4123	25	39	2025-05-27	presence
4124	25	40	2025-05-27	presence
4125	25	41	2025-05-27	presence
4126	26	37	2025-05-27	presence
4127	26	38	2025-05-27	presence
4128	26	39	2025-05-27	presence
4129	26	40	2025-05-27	presence
4130	26	41	2025-05-27	presence
4131	27	37	2025-05-27	presence
4132	27	38	2025-05-27	presence
4133	27	39	2025-05-27	absence
4134	27	40	2025-05-27	presence
4135	27	41	2025-05-27	presence
4136	28	37	2025-05-27	presence
4137	28	38	2025-05-27	presence
4138	28	39	2025-05-27	presence
4139	28	40	2025-05-27	presence
4140	28	41	2025-05-27	presence
4141	29	37	2025-05-27	presence
4142	29	38	2025-05-27	presence
4143	29	39	2025-05-27	presence
4144	29	40	2025-05-27	presence
4145	29	41	2025-05-27	presence
4146	30	37	2025-05-27	excused absence
4147	30	38	2025-05-27	presence
4148	30	39	2025-05-27	presence
4149	30	40	2025-05-27	presence
4150	30	41	2025-05-27	presence
4151	31	37	2025-05-27	presence
4152	31	38	2025-05-27	presence
4153	31	39	2025-05-27	presence
4154	31	40	2025-05-27	presence
4155	31	41	2025-05-27	presence
4156	32	37	2025-05-27	presence
4157	32	38	2025-05-27	presence
4158	32	39	2025-05-27	presence
4159	32	40	2025-05-27	presence
4160	32	41	2025-05-27	presence
4161	33	37	2025-05-27	excused absence
4162	33	38	2025-05-27	presence
4163	33	39	2025-05-27	presence
4164	33	40	2025-05-27	presence
4165	33	41	2025-05-27	presence
4166	34	37	2025-05-27	presence
4167	34	38	2025-05-27	excused absence
4168	34	39	2025-05-27	presence
4169	34	40	2025-05-27	presence
4170	34	41	2025-05-27	absence
4171	35	37	2025-05-27	presence
4172	35	38	2025-05-27	presence
4173	35	39	2025-05-27	presence
4174	35	40	2025-05-27	presence
4175	35	41	2025-05-27	presence
4176	36	37	2025-05-27	presence
4177	36	38	2025-05-27	presence
4178	36	39	2025-05-27	presence
4179	36	40	2025-05-27	presence
4180	36	41	2025-05-27	presence
4181	37	37	2025-05-27	presence
4182	37	38	2025-05-27	presence
4183	37	39	2025-05-27	presence
4184	37	40	2025-05-27	presence
4185	37	41	2025-05-27	presence
4186	38	37	2025-05-27	presence
4187	38	38	2025-05-27	presence
4188	38	39	2025-05-27	presence
4189	38	40	2025-05-27	presence
4190	38	41	2025-05-27	presence
4191	39	37	2025-05-27	late
4192	39	38	2025-05-27	presence
4193	39	39	2025-05-27	presence
4194	39	40	2025-05-27	presence
4195	39	41	2025-05-27	presence
4196	40	37	2025-05-27	presence
4197	40	38	2025-05-27	presence
4198	40	39	2025-05-27	presence
4199	40	40	2025-05-27	presence
4200	40	41	2025-05-27	absence
4201	41	73	2025-05-27	presence
4202	41	74	2025-05-27	presence
4203	41	75	2025-05-27	presence
4204	41	76	2025-05-27	presence
4205	41	77	2025-05-27	presence
4206	42	73	2025-05-27	presence
4207	42	74	2025-05-27	presence
4208	42	75	2025-05-27	presence
4209	42	76	2025-05-27	presence
4210	42	77	2025-05-27	presence
4211	43	73	2025-05-27	presence
4212	43	74	2025-05-27	presence
4213	43	75	2025-05-27	presence
4214	43	76	2025-05-27	late
4215	43	77	2025-05-27	presence
4216	44	73	2025-05-27	presence
4217	44	74	2025-05-27	presence
4218	44	75	2025-05-27	presence
4219	44	76	2025-05-27	presence
4220	44	77	2025-05-27	presence
4221	45	73	2025-05-27	presence
4222	45	74	2025-05-27	presence
4223	45	75	2025-05-27	presence
4224	45	76	2025-05-27	absence
4225	45	77	2025-05-27	absence
4226	46	73	2025-05-27	presence
4227	46	74	2025-05-27	presence
4228	46	75	2025-05-27	presence
4229	46	76	2025-05-27	presence
4230	46	77	2025-05-27	presence
4231	47	73	2025-05-27	presence
4232	47	74	2025-05-27	presence
4233	47	75	2025-05-27	absence
4234	47	76	2025-05-27	presence
4235	47	77	2025-05-27	presence
4236	48	73	2025-05-27	late
4237	48	74	2025-05-27	presence
4238	48	75	2025-05-27	presence
4239	48	76	2025-05-27	presence
4240	48	77	2025-05-27	presence
4241	49	73	2025-05-27	presence
4242	49	74	2025-05-27	presence
4243	49	75	2025-05-27	late
4244	49	76	2025-05-27	presence
4245	49	77	2025-05-27	presence
4246	50	73	2025-05-27	presence
4247	50	74	2025-05-27	presence
4248	50	75	2025-05-27	presence
4249	50	76	2025-05-27	presence
4250	50	77	2025-05-27	presence
4251	51	73	2025-05-27	presence
4252	51	74	2025-05-27	presence
4253	51	75	2025-05-27	presence
4254	51	76	2025-05-27	presence
4255	51	77	2025-05-27	presence
4256	52	73	2025-05-27	presence
4257	52	74	2025-05-27	presence
4258	52	75	2025-05-27	excused absence
4259	52	76	2025-05-27	presence
4260	52	77	2025-05-27	presence
4261	53	73	2025-05-27	presence
4262	53	74	2025-05-27	presence
4263	53	75	2025-05-27	presence
4264	53	76	2025-05-27	presence
4265	53	77	2025-05-27	presence
4266	54	73	2025-05-27	presence
4267	54	74	2025-05-27	presence
4268	54	75	2025-05-27	presence
4269	54	76	2025-05-27	presence
4270	54	77	2025-05-27	presence
4271	55	73	2025-05-27	late
4272	55	74	2025-05-27	presence
4273	55	75	2025-05-27	presence
4274	55	76	2025-05-27	absence
4275	55	77	2025-05-27	presence
4276	56	73	2025-05-27	presence
4277	56	74	2025-05-27	presence
4278	56	75	2025-05-27	presence
4279	56	76	2025-05-27	presence
4280	56	77	2025-05-27	presence
4281	57	73	2025-05-27	presence
4282	57	74	2025-05-27	presence
4283	57	75	2025-05-27	presence
4284	57	76	2025-05-27	presence
4285	57	77	2025-05-27	presence
4286	58	73	2025-05-27	presence
4287	58	74	2025-05-27	presence
4288	58	75	2025-05-27	presence
4289	58	76	2025-05-27	late
4290	58	77	2025-05-27	presence
4291	59	73	2025-05-27	late
4292	59	74	2025-05-27	presence
4293	59	75	2025-05-27	presence
4294	59	76	2025-05-27	late
4295	59	77	2025-05-27	presence
4296	60	73	2025-05-27	presence
4297	60	74	2025-05-27	presence
4298	60	75	2025-05-27	presence
4299	60	76	2025-05-27	presence
4300	60	77	2025-05-27	presence
4301	61	95	2025-05-27	presence
4302	61	96	2025-05-27	presence
4303	61	97	2025-05-27	presence
4304	61	98	2025-05-27	presence
4305	61	99	2025-05-27	presence
4306	62	95	2025-05-27	excused absence
4307	62	96	2025-05-27	presence
4308	62	97	2025-05-27	excused absence
4309	62	98	2025-05-27	presence
4310	62	99	2025-05-27	late
4311	63	95	2025-05-27	presence
4312	63	96	2025-05-27	presence
4313	63	97	2025-05-27	presence
4314	63	98	2025-05-27	presence
4315	63	99	2025-05-27	presence
4316	64	95	2025-05-27	presence
4317	64	96	2025-05-27	presence
4318	64	97	2025-05-27	presence
4319	64	98	2025-05-27	presence
4320	64	99	2025-05-27	presence
4321	65	95	2025-05-27	presence
4322	65	96	2025-05-27	presence
4323	65	97	2025-05-27	presence
4324	65	98	2025-05-27	presence
4325	65	99	2025-05-27	presence
4326	66	95	2025-05-27	presence
4327	66	96	2025-05-27	presence
4328	66	97	2025-05-27	presence
4329	66	98	2025-05-27	presence
4330	66	99	2025-05-27	presence
4331	67	95	2025-05-27	presence
4332	67	96	2025-05-27	presence
4333	67	97	2025-05-27	presence
4334	67	98	2025-05-27	presence
4335	67	99	2025-05-27	presence
4336	68	95	2025-05-27	presence
4337	68	96	2025-05-27	presence
4338	68	97	2025-05-27	presence
4339	68	98	2025-05-27	presence
4340	68	99	2025-05-27	presence
4341	69	95	2025-05-27	presence
4342	69	96	2025-05-27	presence
4343	69	97	2025-05-27	presence
4344	69	98	2025-05-27	presence
4345	69	99	2025-05-27	presence
4346	70	95	2025-05-27	presence
4347	70	96	2025-05-27	presence
4348	70	97	2025-05-27	presence
4349	70	98	2025-05-27	presence
4350	70	99	2025-05-27	presence
4351	71	95	2025-05-27	late
4352	71	96	2025-05-27	presence
4353	71	97	2025-05-27	presence
4354	71	98	2025-05-27	presence
4355	71	99	2025-05-27	presence
4356	72	95	2025-05-27	excused absence
4357	72	96	2025-05-27	presence
4358	72	97	2025-05-27	presence
4359	72	98	2025-05-27	excused absence
4360	72	99	2025-05-27	presence
4361	73	95	2025-05-27	presence
4362	73	96	2025-05-27	presence
4363	73	97	2025-05-27	presence
4364	73	98	2025-05-27	presence
4365	73	99	2025-05-27	presence
4366	74	95	2025-05-27	presence
4367	74	96	2025-05-27	presence
4368	74	97	2025-05-27	presence
4369	74	98	2025-05-27	presence
4370	74	99	2025-05-27	presence
4371	75	95	2025-05-27	presence
4372	75	96	2025-05-27	presence
4373	75	97	2025-05-27	absence
4374	75	98	2025-05-27	presence
4375	75	99	2025-05-27	presence
4376	76	95	2025-05-27	presence
4377	76	96	2025-05-27	presence
4378	76	97	2025-05-27	presence
4379	76	98	2025-05-27	presence
4380	76	99	2025-05-27	excused absence
4381	77	95	2025-05-27	presence
4382	77	96	2025-05-27	presence
4383	77	97	2025-05-27	presence
4384	77	98	2025-05-27	presence
4385	77	99	2025-05-27	presence
4386	78	95	2025-05-27	presence
4387	78	96	2025-05-27	presence
4388	78	97	2025-05-27	presence
4389	78	98	2025-05-27	presence
4390	78	99	2025-05-27	presence
4391	79	95	2025-05-27	presence
4392	79	96	2025-05-27	presence
4393	79	97	2025-05-27	presence
4394	79	98	2025-05-27	presence
4395	79	99	2025-05-27	presence
4396	80	95	2025-05-27	absence
4397	80	96	2025-05-27	presence
4398	80	97	2025-05-27	presence
4399	80	98	2025-05-27	presence
4400	80	99	2025-05-27	presence
4401	81	117	2025-05-27	presence
4402	81	118	2025-05-27	presence
4403	81	119	2025-05-27	presence
4404	81	120	2025-05-27	presence
4405	81	121	2025-05-27	presence
4406	82	117	2025-05-27	presence
4407	82	118	2025-05-27	presence
4408	82	119	2025-05-27	presence
4409	82	120	2025-05-27	presence
4410	82	121	2025-05-27	presence
4411	83	117	2025-05-27	presence
4412	83	118	2025-05-27	presence
4413	83	119	2025-05-27	presence
4414	83	120	2025-05-27	presence
4415	83	121	2025-05-27	presence
4416	84	117	2025-05-27	presence
4417	84	118	2025-05-27	late
4418	84	119	2025-05-27	presence
4419	84	120	2025-05-27	presence
4420	84	121	2025-05-27	late
4421	85	117	2025-05-27	presence
4422	85	118	2025-05-27	presence
4423	85	119	2025-05-27	presence
4424	85	120	2025-05-27	presence
4425	85	121	2025-05-27	presence
4426	86	117	2025-05-27	presence
4427	86	118	2025-05-27	presence
4428	86	119	2025-05-27	absence
4429	86	120	2025-05-27	presence
4430	86	121	2025-05-27	presence
4431	87	117	2025-05-27	presence
4432	87	118	2025-05-27	presence
4433	87	119	2025-05-27	presence
4434	87	120	2025-05-27	presence
4435	87	121	2025-05-27	presence
4436	88	117	2025-05-27	presence
4437	88	118	2025-05-27	presence
4438	88	119	2025-05-27	presence
4439	88	120	2025-05-27	presence
4440	88	121	2025-05-27	excused absence
4441	89	117	2025-05-27	excused absence
4442	89	118	2025-05-27	presence
4443	89	119	2025-05-27	presence
4444	89	120	2025-05-27	presence
4445	89	121	2025-05-27	presence
4446	90	117	2025-05-27	presence
4447	90	118	2025-05-27	presence
4448	90	119	2025-05-27	presence
4449	90	120	2025-05-27	presence
4450	90	121	2025-05-27	absence
4451	91	117	2025-05-27	presence
4452	91	118	2025-05-27	presence
4453	91	119	2025-05-27	presence
4454	91	120	2025-05-27	presence
4455	91	121	2025-05-27	presence
4456	92	117	2025-05-27	presence
4457	92	118	2025-05-27	presence
4458	92	119	2025-05-27	presence
4459	92	120	2025-05-27	presence
4460	92	121	2025-05-27	presence
4461	93	117	2025-05-27	presence
4462	93	118	2025-05-27	presence
4463	93	119	2025-05-27	presence
4464	93	120	2025-05-27	presence
4465	93	121	2025-05-27	excused absence
4466	94	117	2025-05-27	presence
4467	94	118	2025-05-27	late
4468	94	119	2025-05-27	presence
4469	94	120	2025-05-27	presence
4470	94	121	2025-05-27	presence
4471	95	117	2025-05-27	presence
4472	95	118	2025-05-27	presence
4473	95	119	2025-05-27	presence
4474	95	120	2025-05-27	presence
4475	95	121	2025-05-27	absence
4476	96	117	2025-05-27	excused absence
4477	96	118	2025-05-27	presence
4478	96	119	2025-05-27	presence
4479	96	120	2025-05-27	presence
4480	96	121	2025-05-27	presence
4481	97	117	2025-05-27	presence
4482	97	118	2025-05-27	presence
4483	97	119	2025-05-27	presence
4484	97	120	2025-05-27	presence
4485	97	121	2025-05-27	presence
4486	98	117	2025-05-27	presence
4487	98	118	2025-05-27	presence
4488	98	119	2025-05-27	excused absence
4489	98	120	2025-05-27	presence
4490	98	121	2025-05-27	presence
4491	99	117	2025-05-27	presence
4492	99	118	2025-05-27	late
4493	99	119	2025-05-27	excused absence
4494	99	120	2025-05-27	presence
4495	99	121	2025-05-27	presence
4496	100	117	2025-05-27	excused absence
4497	100	118	2025-05-27	presence
4498	100	119	2025-05-27	presence
4499	100	120	2025-05-27	presence
4500	100	121	2025-05-27	presence
4501	1	1	2025-05-26	presence
4502	1	2	2025-05-26	presence
4503	1	3	2025-05-26	presence
4504	1	4	2025-05-26	presence
4505	1	5	2025-05-26	presence
4506	2	1	2025-05-26	presence
4507	2	2	2025-05-26	presence
4508	2	3	2025-05-26	presence
4509	2	4	2025-05-26	presence
4510	2	5	2025-05-26	presence
4511	3	1	2025-05-26	presence
4512	3	2	2025-05-26	presence
4513	3	3	2025-05-26	presence
4514	3	4	2025-05-26	presence
4515	3	5	2025-05-26	presence
4516	4	1	2025-05-26	presence
4517	4	2	2025-05-26	presence
4518	4	3	2025-05-26	presence
4519	4	4	2025-05-26	presence
4520	4	5	2025-05-26	presence
4521	5	1	2025-05-26	presence
4522	5	2	2025-05-26	excused absence
4523	5	3	2025-05-26	presence
4524	5	4	2025-05-26	presence
4525	5	5	2025-05-26	presence
4526	6	1	2025-05-26	late
4527	6	2	2025-05-26	presence
4528	6	3	2025-05-26	presence
4529	6	4	2025-05-26	absence
4530	6	5	2025-05-26	presence
4531	7	1	2025-05-26	excused absence
4532	7	2	2025-05-26	presence
4533	7	3	2025-05-26	presence
4534	7	4	2025-05-26	presence
4535	7	5	2025-05-26	presence
4536	8	1	2025-05-26	excused absence
4537	8	2	2025-05-26	presence
4538	8	3	2025-05-26	presence
4539	8	4	2025-05-26	presence
4540	8	5	2025-05-26	presence
4541	9	1	2025-05-26	excused absence
4542	9	2	2025-05-26	presence
4543	9	3	2025-05-26	late
4544	9	4	2025-05-26	presence
4545	9	5	2025-05-26	late
4546	10	1	2025-05-26	presence
4547	10	2	2025-05-26	presence
4548	10	3	2025-05-26	presence
4549	10	4	2025-05-26	presence
4550	10	5	2025-05-26	presence
4551	11	1	2025-05-26	presence
4552	11	2	2025-05-26	presence
4553	11	3	2025-05-26	presence
4554	11	4	2025-05-26	presence
4555	11	5	2025-05-26	presence
4556	12	1	2025-05-26	presence
4557	12	2	2025-05-26	presence
4558	12	3	2025-05-26	excused absence
4559	12	4	2025-05-26	presence
4560	12	5	2025-05-26	absence
4561	13	1	2025-05-26	presence
4562	13	2	2025-05-26	presence
4563	13	3	2025-05-26	presence
4564	13	4	2025-05-26	presence
4565	13	5	2025-05-26	presence
4566	14	1	2025-05-26	late
4567	14	2	2025-05-26	presence
4568	14	3	2025-05-26	presence
4569	14	4	2025-05-26	presence
4570	14	5	2025-05-26	absence
4571	15	1	2025-05-26	presence
4572	15	2	2025-05-26	presence
4573	15	3	2025-05-26	presence
4574	15	4	2025-05-26	presence
4575	15	5	2025-05-26	presence
4576	16	1	2025-05-26	absence
4577	16	2	2025-05-26	presence
4578	16	3	2025-05-26	presence
4579	16	4	2025-05-26	presence
4580	16	5	2025-05-26	presence
4581	17	1	2025-05-26	presence
4582	17	2	2025-05-26	presence
4583	17	3	2025-05-26	presence
4584	17	4	2025-05-26	presence
4585	17	5	2025-05-26	presence
4586	18	1	2025-05-26	presence
4587	18	2	2025-05-26	excused absence
4588	18	3	2025-05-26	presence
4589	18	4	2025-05-26	presence
4590	18	5	2025-05-26	presence
4591	19	1	2025-05-26	presence
4592	19	2	2025-05-26	excused absence
4593	19	3	2025-05-26	presence
4594	19	4	2025-05-26	presence
4595	19	5	2025-05-26	presence
4596	20	1	2025-05-26	presence
4597	20	2	2025-05-26	excused absence
4598	20	3	2025-05-26	presence
4599	20	4	2025-05-26	presence
4600	20	5	2025-05-26	presence
4601	21	37	2025-05-26	presence
4602	21	38	2025-05-26	presence
4603	21	39	2025-05-26	presence
4604	21	40	2025-05-26	presence
4605	21	41	2025-05-26	presence
4606	22	37	2025-05-26	excused absence
4607	22	38	2025-05-26	presence
4608	22	39	2025-05-26	presence
4609	22	40	2025-05-26	presence
4610	22	41	2025-05-26	presence
4611	23	37	2025-05-26	presence
4612	23	38	2025-05-26	presence
4613	23	39	2025-05-26	late
4614	23	40	2025-05-26	excused absence
4615	23	41	2025-05-26	presence
4616	24	37	2025-05-26	presence
4617	24	38	2025-05-26	presence
4618	24	39	2025-05-26	presence
4619	24	40	2025-05-26	presence
4620	24	41	2025-05-26	presence
4621	25	37	2025-05-26	late
4622	25	38	2025-05-26	presence
4623	25	39	2025-05-26	presence
4624	25	40	2025-05-26	late
4625	25	41	2025-05-26	presence
4626	26	37	2025-05-26	presence
4627	26	38	2025-05-26	presence
4628	26	39	2025-05-26	presence
4629	26	40	2025-05-26	presence
4630	26	41	2025-05-26	excused absence
4631	27	37	2025-05-26	presence
4632	27	38	2025-05-26	presence
4633	27	39	2025-05-26	late
4634	27	40	2025-05-26	presence
4635	27	41	2025-05-26	presence
4636	28	37	2025-05-26	presence
4637	28	38	2025-05-26	presence
4638	28	39	2025-05-26	presence
4639	28	40	2025-05-26	presence
4640	28	41	2025-05-26	presence
4641	29	37	2025-05-26	presence
4642	29	38	2025-05-26	presence
4643	29	39	2025-05-26	presence
4644	29	40	2025-05-26	presence
4645	29	41	2025-05-26	presence
4646	30	37	2025-05-26	excused absence
4647	30	38	2025-05-26	presence
4648	30	39	2025-05-26	presence
4649	30	40	2025-05-26	presence
4650	30	41	2025-05-26	excused absence
4651	31	37	2025-05-26	presence
4652	31	38	2025-05-26	presence
4653	31	39	2025-05-26	presence
4654	31	40	2025-05-26	presence
4655	31	41	2025-05-26	presence
4656	32	37	2025-05-26	presence
4657	32	38	2025-05-26	presence
4658	32	39	2025-05-26	presence
4659	32	40	2025-05-26	presence
4660	32	41	2025-05-26	presence
4661	33	37	2025-05-26	presence
4662	33	38	2025-05-26	presence
4663	33	39	2025-05-26	presence
4664	33	40	2025-05-26	presence
4665	33	41	2025-05-26	presence
4666	34	37	2025-05-26	presence
4667	34	38	2025-05-26	presence
4668	34	39	2025-05-26	presence
4669	34	40	2025-05-26	presence
4670	34	41	2025-05-26	presence
4671	35	37	2025-05-26	presence
4672	35	38	2025-05-26	presence
4673	35	39	2025-05-26	presence
4674	35	40	2025-05-26	presence
4675	35	41	2025-05-26	presence
4676	36	37	2025-05-26	presence
4677	36	38	2025-05-26	presence
4678	36	39	2025-05-26	presence
4679	36	40	2025-05-26	presence
4680	36	41	2025-05-26	presence
4681	37	37	2025-05-26	presence
4682	37	38	2025-05-26	presence
4683	37	39	2025-05-26	presence
4684	37	40	2025-05-26	presence
4685	37	41	2025-05-26	presence
4686	38	37	2025-05-26	excused absence
4687	38	38	2025-05-26	presence
4688	38	39	2025-05-26	absence
4689	38	40	2025-05-26	presence
4690	38	41	2025-05-26	presence
4691	39	37	2025-05-26	presence
4692	39	38	2025-05-26	absence
4693	39	39	2025-05-26	presence
4694	39	40	2025-05-26	presence
4695	39	41	2025-05-26	presence
4696	40	37	2025-05-26	presence
4697	40	38	2025-05-26	presence
4698	40	39	2025-05-26	presence
4699	40	40	2025-05-26	presence
4700	40	41	2025-05-26	presence
4701	41	73	2025-05-26	excused absence
4702	41	74	2025-05-26	presence
4703	41	75	2025-05-26	presence
4704	41	76	2025-05-26	absence
4705	41	77	2025-05-26	presence
4706	42	73	2025-05-26	presence
4707	42	74	2025-05-26	presence
4708	42	75	2025-05-26	presence
4709	42	76	2025-05-26	presence
4710	42	77	2025-05-26	presence
4711	43	73	2025-05-26	presence
4712	43	74	2025-05-26	presence
4713	43	75	2025-05-26	presence
4714	43	76	2025-05-26	presence
4715	43	77	2025-05-26	presence
4716	44	73	2025-05-26	presence
4717	44	74	2025-05-26	presence
4718	44	75	2025-05-26	late
4719	44	76	2025-05-26	presence
4720	44	77	2025-05-26	presence
4721	45	73	2025-05-26	presence
4722	45	74	2025-05-26	presence
4723	45	75	2025-05-26	presence
4724	45	76	2025-05-26	presence
4725	45	77	2025-05-26	presence
4726	46	73	2025-05-26	presence
4727	46	74	2025-05-26	absence
4728	46	75	2025-05-26	presence
4729	46	76	2025-05-26	presence
4730	46	77	2025-05-26	presence
4731	47	73	2025-05-26	presence
4732	47	74	2025-05-26	presence
4733	47	75	2025-05-26	presence
4734	47	76	2025-05-26	presence
4735	47	77	2025-05-26	presence
4736	48	73	2025-05-26	excused absence
4737	48	74	2025-05-26	presence
4738	48	75	2025-05-26	absence
4739	48	76	2025-05-26	presence
4740	48	77	2025-05-26	excused absence
4741	49	73	2025-05-26	presence
4742	49	74	2025-05-26	presence
4743	49	75	2025-05-26	presence
4744	49	76	2025-05-26	presence
4745	49	77	2025-05-26	presence
4746	50	73	2025-05-26	absence
4747	50	74	2025-05-26	presence
4748	50	75	2025-05-26	presence
4749	50	76	2025-05-26	presence
4750	50	77	2025-05-26	presence
4751	51	73	2025-05-26	presence
4752	51	74	2025-05-26	presence
4753	51	75	2025-05-26	presence
4754	51	76	2025-05-26	presence
4755	51	77	2025-05-26	presence
4756	52	73	2025-05-26	presence
4757	52	74	2025-05-26	presence
4758	52	75	2025-05-26	presence
4759	52	76	2025-05-26	presence
4760	52	77	2025-05-26	presence
4761	53	73	2025-05-26	presence
4762	53	74	2025-05-26	presence
4763	53	75	2025-05-26	absence
4764	53	76	2025-05-26	presence
4765	53	77	2025-05-26	presence
4766	54	73	2025-05-26	presence
4767	54	74	2025-05-26	presence
4768	54	75	2025-05-26	late
4769	54	76	2025-05-26	presence
4770	54	77	2025-05-26	excused absence
4771	55	73	2025-05-26	presence
4772	55	74	2025-05-26	presence
4773	55	75	2025-05-26	presence
4774	55	76	2025-05-26	absence
4775	55	77	2025-05-26	presence
4776	56	73	2025-05-26	presence
4777	56	74	2025-05-26	presence
4778	56	75	2025-05-26	absence
4779	56	76	2025-05-26	presence
4780	56	77	2025-05-26	presence
4781	57	73	2025-05-26	presence
4782	57	74	2025-05-26	presence
4783	57	75	2025-05-26	presence
4784	57	76	2025-05-26	late
4785	57	77	2025-05-26	presence
4786	58	73	2025-05-26	presence
4787	58	74	2025-05-26	presence
4788	58	75	2025-05-26	excused absence
4789	58	76	2025-05-26	presence
4790	58	77	2025-05-26	presence
4791	59	73	2025-05-26	presence
4792	59	74	2025-05-26	excused absence
4793	59	75	2025-05-26	presence
4794	59	76	2025-05-26	presence
4795	59	77	2025-05-26	presence
4796	60	73	2025-05-26	late
4797	60	74	2025-05-26	presence
4798	60	75	2025-05-26	presence
4799	60	76	2025-05-26	absence
4800	60	77	2025-05-26	excused absence
4801	61	95	2025-05-26	presence
4802	61	96	2025-05-26	presence
4803	61	97	2025-05-26	presence
4804	61	98	2025-05-26	presence
4805	61	99	2025-05-26	presence
4806	62	95	2025-05-26	presence
4807	62	96	2025-05-26	presence
4808	62	97	2025-05-26	presence
4809	62	98	2025-05-26	excused absence
4810	62	99	2025-05-26	presence
4811	63	95	2025-05-26	presence
4812	63	96	2025-05-26	presence
4813	63	97	2025-05-26	presence
4814	63	98	2025-05-26	presence
4815	63	99	2025-05-26	presence
4816	64	95	2025-05-26	presence
4817	64	96	2025-05-26	excused absence
4818	64	97	2025-05-26	presence
4819	64	98	2025-05-26	presence
4820	64	99	2025-05-26	presence
4821	65	95	2025-05-26	presence
4822	65	96	2025-05-26	presence
4823	65	97	2025-05-26	late
4824	65	98	2025-05-26	presence
4825	65	99	2025-05-26	presence
4826	66	95	2025-05-26	presence
4827	66	96	2025-05-26	late
4828	66	97	2025-05-26	presence
4829	66	98	2025-05-26	excused absence
4830	66	99	2025-05-26	presence
4831	67	95	2025-05-26	presence
4832	67	96	2025-05-26	presence
4833	67	97	2025-05-26	presence
4834	67	98	2025-05-26	absence
4835	67	99	2025-05-26	presence
4836	68	95	2025-05-26	presence
4837	68	96	2025-05-26	presence
4838	68	97	2025-05-26	presence
4839	68	98	2025-05-26	presence
4840	68	99	2025-05-26	absence
4841	69	95	2025-05-26	presence
4842	69	96	2025-05-26	presence
4843	69	97	2025-05-26	presence
4844	69	98	2025-05-26	presence
4845	69	99	2025-05-26	presence
4846	70	95	2025-05-26	presence
4847	70	96	2025-05-26	presence
4848	70	97	2025-05-26	presence
4849	70	98	2025-05-26	late
4850	70	99	2025-05-26	presence
4851	71	95	2025-05-26	presence
4852	71	96	2025-05-26	presence
4853	71	97	2025-05-26	presence
4854	71	98	2025-05-26	late
4855	71	99	2025-05-26	absence
4856	72	95	2025-05-26	late
4857	72	96	2025-05-26	presence
4858	72	97	2025-05-26	presence
4859	72	98	2025-05-26	presence
4860	72	99	2025-05-26	absence
4861	73	95	2025-05-26	presence
4862	73	96	2025-05-26	presence
4863	73	97	2025-05-26	presence
4864	73	98	2025-05-26	presence
4865	73	99	2025-05-26	presence
4866	74	95	2025-05-26	presence
4867	74	96	2025-05-26	presence
4868	74	97	2025-05-26	presence
4869	74	98	2025-05-26	presence
4870	74	99	2025-05-26	presence
4871	75	95	2025-05-26	presence
4872	75	96	2025-05-26	excused absence
4873	75	97	2025-05-26	presence
4874	75	98	2025-05-26	presence
4875	75	99	2025-05-26	presence
4876	76	95	2025-05-26	excused absence
4877	76	96	2025-05-26	excused absence
4878	76	97	2025-05-26	absence
4879	76	98	2025-05-26	presence
4880	76	99	2025-05-26	absence
4881	77	95	2025-05-26	excused absence
4882	77	96	2025-05-26	presence
4883	77	97	2025-05-26	presence
4884	77	98	2025-05-26	presence
4885	77	99	2025-05-26	presence
4886	78	95	2025-05-26	presence
4887	78	96	2025-05-26	presence
4888	78	97	2025-05-26	presence
4889	78	98	2025-05-26	presence
4890	78	99	2025-05-26	excused absence
4891	79	95	2025-05-26	presence
4892	79	96	2025-05-26	presence
4893	79	97	2025-05-26	presence
4894	79	98	2025-05-26	presence
4895	79	99	2025-05-26	presence
4896	80	95	2025-05-26	presence
4897	80	96	2025-05-26	presence
4898	80	97	2025-05-26	presence
4899	80	98	2025-05-26	presence
4900	80	99	2025-05-26	presence
4901	81	117	2025-05-26	presence
4902	81	118	2025-05-26	excused absence
4903	81	119	2025-05-26	late
4904	81	120	2025-05-26	presence
4905	81	121	2025-05-26	presence
4906	82	117	2025-05-26	presence
4907	82	118	2025-05-26	presence
4908	82	119	2025-05-26	presence
4909	82	120	2025-05-26	presence
4910	82	121	2025-05-26	presence
4911	83	117	2025-05-26	presence
4912	83	118	2025-05-26	presence
4913	83	119	2025-05-26	presence
4914	83	120	2025-05-26	presence
4915	83	121	2025-05-26	excused absence
4916	84	117	2025-05-26	late
4917	84	118	2025-05-26	presence
4918	84	119	2025-05-26	presence
4919	84	120	2025-05-26	presence
4920	84	121	2025-05-26	presence
4921	85	117	2025-05-26	presence
4922	85	118	2025-05-26	presence
4923	85	119	2025-05-26	presence
4924	85	120	2025-05-26	presence
4925	85	121	2025-05-26	presence
4926	86	117	2025-05-26	absence
4927	86	118	2025-05-26	presence
4928	86	119	2025-05-26	late
4929	86	120	2025-05-26	presence
4930	86	121	2025-05-26	excused absence
4931	87	117	2025-05-26	presence
4932	87	118	2025-05-26	presence
4933	87	119	2025-05-26	presence
4934	87	120	2025-05-26	presence
4935	87	121	2025-05-26	presence
4936	88	117	2025-05-26	presence
4937	88	118	2025-05-26	presence
4938	88	119	2025-05-26	presence
4939	88	120	2025-05-26	excused absence
4940	88	121	2025-05-26	presence
4941	89	117	2025-05-26	presence
4942	89	118	2025-05-26	presence
4943	89	119	2025-05-26	presence
4944	89	120	2025-05-26	presence
4945	89	121	2025-05-26	absence
4946	90	117	2025-05-26	presence
4947	90	118	2025-05-26	presence
4948	90	119	2025-05-26	presence
4949	90	120	2025-05-26	presence
4950	90	121	2025-05-26	presence
4951	91	117	2025-05-26	presence
4952	91	118	2025-05-26	presence
4953	91	119	2025-05-26	absence
4954	91	120	2025-05-26	presence
4955	91	121	2025-05-26	excused absence
4956	92	117	2025-05-26	presence
4957	92	118	2025-05-26	presence
4958	92	119	2025-05-26	presence
4959	92	120	2025-05-26	presence
4960	92	121	2025-05-26	presence
4961	93	117	2025-05-26	presence
4962	93	118	2025-05-26	presence
4963	93	119	2025-05-26	presence
4964	93	120	2025-05-26	excused absence
4965	93	121	2025-05-26	presence
4966	94	117	2025-05-26	presence
4967	94	118	2025-05-26	presence
4968	94	119	2025-05-26	presence
4969	94	120	2025-05-26	presence
4970	94	121	2025-05-26	presence
4971	95	117	2025-05-26	presence
4972	95	118	2025-05-26	presence
4973	95	119	2025-05-26	presence
4974	95	120	2025-05-26	absence
4975	95	121	2025-05-26	presence
4976	96	117	2025-05-26	presence
4977	96	118	2025-05-26	presence
4978	96	119	2025-05-26	presence
4979	96	120	2025-05-26	presence
4980	96	121	2025-05-26	presence
4981	97	117	2025-05-26	presence
4982	97	118	2025-05-26	presence
4983	97	119	2025-05-26	presence
4984	97	120	2025-05-26	presence
4985	97	121	2025-05-26	presence
4986	98	117	2025-05-26	presence
4987	98	118	2025-05-26	presence
4988	98	119	2025-05-26	presence
4989	98	120	2025-05-26	presence
4990	98	121	2025-05-26	presence
4991	99	117	2025-05-26	presence
4992	99	118	2025-05-26	presence
4993	99	119	2025-05-26	presence
4994	99	120	2025-05-26	late
4995	99	121	2025-05-26	presence
4996	100	117	2025-05-26	presence
4997	100	118	2025-05-26	absence
4998	100	119	2025-05-26	presence
4999	100	120	2025-05-26	late
5000	100	121	2025-05-26	presence
5001	1	1	2025-05-23	presence
5002	1	2	2025-05-23	excused absence
5003	1	3	2025-05-23	presence
5004	1	4	2025-05-23	presence
5005	1	5	2025-05-23	presence
5006	2	1	2025-05-23	presence
5007	2	2	2025-05-23	presence
5008	2	3	2025-05-23	presence
5009	2	4	2025-05-23	absence
5010	2	5	2025-05-23	presence
5011	3	1	2025-05-23	presence
5012	3	2	2025-05-23	late
5013	3	3	2025-05-23	presence
5014	3	4	2025-05-23	presence
5015	3	5	2025-05-23	presence
5016	4	1	2025-05-23	presence
5017	4	2	2025-05-23	excused absence
5018	4	3	2025-05-23	presence
5019	4	4	2025-05-23	absence
5020	4	5	2025-05-23	presence
5021	5	1	2025-05-23	presence
5022	5	2	2025-05-23	presence
5023	5	3	2025-05-23	presence
5024	5	4	2025-05-23	presence
5025	5	5	2025-05-23	excused absence
5026	6	1	2025-05-23	presence
5027	6	2	2025-05-23	presence
5028	6	3	2025-05-23	presence
5029	6	4	2025-05-23	presence
5030	6	5	2025-05-23	excused absence
5031	7	1	2025-05-23	presence
5032	7	2	2025-05-23	presence
5033	7	3	2025-05-23	presence
5034	7	4	2025-05-23	presence
5035	7	5	2025-05-23	absence
5036	8	1	2025-05-23	presence
5037	8	2	2025-05-23	presence
5038	8	3	2025-05-23	presence
5039	8	4	2025-05-23	presence
5040	8	5	2025-05-23	presence
5041	9	1	2025-05-23	presence
5042	9	2	2025-05-23	presence
5043	9	3	2025-05-23	presence
5044	9	4	2025-05-23	presence
5045	9	5	2025-05-23	presence
5046	10	1	2025-05-23	absence
5047	10	2	2025-05-23	presence
5048	10	3	2025-05-23	presence
5049	10	4	2025-05-23	presence
5050	10	5	2025-05-23	presence
5051	11	1	2025-05-23	absence
5052	11	2	2025-05-23	presence
5053	11	3	2025-05-23	presence
5054	11	4	2025-05-23	presence
5055	11	5	2025-05-23	presence
5056	12	1	2025-05-23	presence
5057	12	2	2025-05-23	presence
5058	12	3	2025-05-23	presence
5059	12	4	2025-05-23	presence
5060	12	5	2025-05-23	absence
5061	13	1	2025-05-23	presence
5062	13	2	2025-05-23	presence
5063	13	3	2025-05-23	absence
5064	13	4	2025-05-23	presence
5065	13	5	2025-05-23	presence
5066	14	1	2025-05-23	presence
5067	14	2	2025-05-23	presence
5068	14	3	2025-05-23	presence
5069	14	4	2025-05-23	late
5070	14	5	2025-05-23	presence
5071	15	1	2025-05-23	presence
5072	15	2	2025-05-23	presence
5073	15	3	2025-05-23	presence
5074	15	4	2025-05-23	presence
5075	15	5	2025-05-23	presence
5076	16	1	2025-05-23	late
5077	16	2	2025-05-23	presence
5078	16	3	2025-05-23	presence
5079	16	4	2025-05-23	presence
5080	16	5	2025-05-23	presence
5081	17	1	2025-05-23	presence
5082	17	2	2025-05-23	presence
5083	17	3	2025-05-23	presence
5084	17	4	2025-05-23	presence
5085	17	5	2025-05-23	presence
5086	18	1	2025-05-23	presence
5087	18	2	2025-05-23	presence
5088	18	3	2025-05-23	presence
5089	18	4	2025-05-23	presence
5090	18	5	2025-05-23	presence
5091	19	1	2025-05-23	absence
5092	19	2	2025-05-23	presence
5093	19	3	2025-05-23	presence
5094	19	4	2025-05-23	presence
5095	19	5	2025-05-23	presence
5096	20	1	2025-05-23	presence
5097	20	2	2025-05-23	presence
5098	20	3	2025-05-23	late
5099	20	4	2025-05-23	presence
5100	20	5	2025-05-23	presence
5101	21	37	2025-05-23	presence
5102	21	38	2025-05-23	presence
5103	21	39	2025-05-23	presence
5104	21	40	2025-05-23	presence
5105	21	41	2025-05-23	presence
5106	22	37	2025-05-23	absence
5107	22	38	2025-05-23	presence
5108	22	39	2025-05-23	late
5109	22	40	2025-05-23	presence
5110	22	41	2025-05-23	presence
5111	23	37	2025-05-23	presence
5112	23	38	2025-05-23	presence
5113	23	39	2025-05-23	presence
5114	23	40	2025-05-23	presence
5115	23	41	2025-05-23	presence
5116	24	37	2025-05-23	absence
5117	24	38	2025-05-23	presence
5118	24	39	2025-05-23	presence
5119	24	40	2025-05-23	presence
5120	24	41	2025-05-23	presence
5121	25	37	2025-05-23	late
5122	25	38	2025-05-23	presence
5123	25	39	2025-05-23	presence
5124	25	40	2025-05-23	presence
5125	25	41	2025-05-23	absence
5126	26	37	2025-05-23	presence
5127	26	38	2025-05-23	presence
5128	26	39	2025-05-23	absence
5129	26	40	2025-05-23	excused absence
5130	26	41	2025-05-23	presence
5131	27	37	2025-05-23	presence
5132	27	38	2025-05-23	presence
5133	27	39	2025-05-23	presence
5134	27	40	2025-05-23	presence
5135	27	41	2025-05-23	presence
5136	28	37	2025-05-23	presence
5137	28	38	2025-05-23	presence
5138	28	39	2025-05-23	presence
5139	28	40	2025-05-23	presence
5140	28	41	2025-05-23	presence
5141	29	37	2025-05-23	excused absence
5142	29	38	2025-05-23	presence
5143	29	39	2025-05-23	presence
5144	29	40	2025-05-23	presence
5145	29	41	2025-05-23	presence
5146	30	37	2025-05-23	presence
5147	30	38	2025-05-23	presence
5148	30	39	2025-05-23	presence
5149	30	40	2025-05-23	presence
5150	30	41	2025-05-23	presence
5151	31	37	2025-05-23	presence
5152	31	38	2025-05-23	presence
5153	31	39	2025-05-23	presence
5154	31	40	2025-05-23	presence
5155	31	41	2025-05-23	presence
5156	32	37	2025-05-23	presence
5157	32	38	2025-05-23	presence
5158	32	39	2025-05-23	absence
5159	32	40	2025-05-23	presence
5160	32	41	2025-05-23	presence
5161	33	37	2025-05-23	presence
5162	33	38	2025-05-23	excused absence
5163	33	39	2025-05-23	presence
5164	33	40	2025-05-23	absence
5165	33	41	2025-05-23	presence
5166	34	37	2025-05-23	presence
5167	34	38	2025-05-23	presence
5168	34	39	2025-05-23	presence
5169	34	40	2025-05-23	presence
5170	34	41	2025-05-23	presence
5171	35	37	2025-05-23	presence
5172	35	38	2025-05-23	presence
5173	35	39	2025-05-23	presence
5174	35	40	2025-05-23	presence
5175	35	41	2025-05-23	presence
5176	36	37	2025-05-23	presence
5177	36	38	2025-05-23	presence
5178	36	39	2025-05-23	presence
5179	36	40	2025-05-23	presence
5180	36	41	2025-05-23	presence
5181	37	37	2025-05-23	absence
5182	37	38	2025-05-23	presence
5183	37	39	2025-05-23	presence
5184	37	40	2025-05-23	absence
5185	37	41	2025-05-23	late
5186	38	37	2025-05-23	presence
5187	38	38	2025-05-23	presence
5188	38	39	2025-05-23	presence
5189	38	40	2025-05-23	presence
5190	38	41	2025-05-23	presence
5191	39	37	2025-05-23	presence
5192	39	38	2025-05-23	late
5193	39	39	2025-05-23	presence
5194	39	40	2025-05-23	presence
5195	39	41	2025-05-23	presence
5196	40	37	2025-05-23	presence
5197	40	38	2025-05-23	presence
5198	40	39	2025-05-23	absence
5199	40	40	2025-05-23	presence
5200	40	41	2025-05-23	presence
5201	41	73	2025-05-23	presence
5202	41	74	2025-05-23	absence
5203	41	75	2025-05-23	presence
5204	41	76	2025-05-23	late
5205	41	77	2025-05-23	presence
5206	42	73	2025-05-23	presence
5207	42	74	2025-05-23	late
5208	42	75	2025-05-23	presence
5209	42	76	2025-05-23	presence
5210	42	77	2025-05-23	presence
5211	43	73	2025-05-23	presence
5212	43	74	2025-05-23	late
5213	43	75	2025-05-23	presence
5214	43	76	2025-05-23	excused absence
5215	43	77	2025-05-23	presence
5216	44	73	2025-05-23	presence
5217	44	74	2025-05-23	presence
5218	44	75	2025-05-23	presence
5219	44	76	2025-05-23	presence
5220	44	77	2025-05-23	presence
5221	45	73	2025-05-23	presence
5222	45	74	2025-05-23	presence
5223	45	75	2025-05-23	presence
5224	45	76	2025-05-23	presence
5225	45	77	2025-05-23	presence
5226	46	73	2025-05-23	presence
5227	46	74	2025-05-23	presence
5228	46	75	2025-05-23	presence
5229	46	76	2025-05-23	presence
5230	46	77	2025-05-23	presence
5231	47	73	2025-05-23	presence
5232	47	74	2025-05-23	presence
5233	47	75	2025-05-23	absence
5234	47	76	2025-05-23	excused absence
5235	47	77	2025-05-23	absence
5236	48	73	2025-05-23	presence
5237	48	74	2025-05-23	presence
5238	48	75	2025-05-23	presence
5239	48	76	2025-05-23	presence
5240	48	77	2025-05-23	late
5241	49	73	2025-05-23	presence
5242	49	74	2025-05-23	presence
5243	49	75	2025-05-23	absence
5244	49	76	2025-05-23	excused absence
5245	49	77	2025-05-23	absence
5246	50	73	2025-05-23	presence
5247	50	74	2025-05-23	presence
5248	50	75	2025-05-23	absence
5249	50	76	2025-05-23	presence
5250	50	77	2025-05-23	presence
5251	51	73	2025-05-23	presence
5252	51	74	2025-05-23	late
5253	51	75	2025-05-23	presence
5254	51	76	2025-05-23	presence
5255	51	77	2025-05-23	presence
5256	52	73	2025-05-23	late
5257	52	74	2025-05-23	presence
5258	52	75	2025-05-23	excused absence
5259	52	76	2025-05-23	presence
5260	52	77	2025-05-23	late
5261	53	73	2025-05-23	presence
5262	53	74	2025-05-23	presence
5263	53	75	2025-05-23	presence
5264	53	76	2025-05-23	absence
5265	53	77	2025-05-23	presence
5266	54	73	2025-05-23	presence
5267	54	74	2025-05-23	presence
5268	54	75	2025-05-23	presence
5269	54	76	2025-05-23	presence
5270	54	77	2025-05-23	presence
5271	55	73	2025-05-23	absence
5272	55	74	2025-05-23	presence
5273	55	75	2025-05-23	presence
5274	55	76	2025-05-23	presence
5275	55	77	2025-05-23	presence
5276	56	73	2025-05-23	presence
5277	56	74	2025-05-23	presence
5278	56	75	2025-05-23	presence
5279	56	76	2025-05-23	presence
5280	56	77	2025-05-23	late
5281	57	73	2025-05-23	presence
5282	57	74	2025-05-23	presence
5283	57	75	2025-05-23	late
5284	57	76	2025-05-23	presence
5285	57	77	2025-05-23	presence
5286	58	73	2025-05-23	presence
5287	58	74	2025-05-23	presence
5288	58	75	2025-05-23	presence
5289	58	76	2025-05-23	presence
5290	58	77	2025-05-23	presence
5291	59	73	2025-05-23	absence
5292	59	74	2025-05-23	presence
5293	59	75	2025-05-23	presence
5294	59	76	2025-05-23	absence
5295	59	77	2025-05-23	presence
5296	60	73	2025-05-23	presence
5297	60	74	2025-05-23	presence
5298	60	75	2025-05-23	presence
5299	60	76	2025-05-23	presence
5300	60	77	2025-05-23	presence
5301	61	95	2025-05-23	presence
5302	61	96	2025-05-23	presence
5303	61	97	2025-05-23	presence
5304	61	98	2025-05-23	presence
5305	61	99	2025-05-23	presence
5306	62	95	2025-05-23	presence
5307	62	96	2025-05-23	presence
5308	62	97	2025-05-23	absence
5309	62	98	2025-05-23	presence
5310	62	99	2025-05-23	presence
5311	63	95	2025-05-23	absence
5312	63	96	2025-05-23	presence
5313	63	97	2025-05-23	presence
5314	63	98	2025-05-23	presence
5315	63	99	2025-05-23	presence
5316	64	95	2025-05-23	presence
5317	64	96	2025-05-23	presence
5318	64	97	2025-05-23	presence
5319	64	98	2025-05-23	presence
5320	64	99	2025-05-23	presence
5321	65	95	2025-05-23	presence
5322	65	96	2025-05-23	presence
5323	65	97	2025-05-23	presence
5324	65	98	2025-05-23	presence
5325	65	99	2025-05-23	presence
5326	66	95	2025-05-23	presence
5327	66	96	2025-05-23	presence
5328	66	97	2025-05-23	presence
5329	66	98	2025-05-23	presence
5330	66	99	2025-05-23	presence
5331	67	95	2025-05-23	excused absence
5332	67	96	2025-05-23	presence
5333	67	97	2025-05-23	late
5334	67	98	2025-05-23	excused absence
5335	67	99	2025-05-23	presence
5336	68	95	2025-05-23	presence
5337	68	96	2025-05-23	presence
5338	68	97	2025-05-23	presence
5339	68	98	2025-05-23	presence
5340	68	99	2025-05-23	presence
5341	69	95	2025-05-23	presence
5342	69	96	2025-05-23	presence
5343	69	97	2025-05-23	presence
5344	69	98	2025-05-23	presence
5345	69	99	2025-05-23	late
5346	70	95	2025-05-23	presence
5347	70	96	2025-05-23	presence
5348	70	97	2025-05-23	late
5349	70	98	2025-05-23	presence
5350	70	99	2025-05-23	absence
5351	71	95	2025-05-23	presence
5352	71	96	2025-05-23	late
5353	71	97	2025-05-23	presence
5354	71	98	2025-05-23	presence
5355	71	99	2025-05-23	presence
5356	72	95	2025-05-23	presence
5357	72	96	2025-05-23	presence
5358	72	97	2025-05-23	presence
5359	72	98	2025-05-23	presence
5360	72	99	2025-05-23	presence
5361	73	95	2025-05-23	presence
5362	73	96	2025-05-23	presence
5363	73	97	2025-05-23	presence
5364	73	98	2025-05-23	presence
5365	73	99	2025-05-23	presence
5366	74	95	2025-05-23	presence
5367	74	96	2025-05-23	late
5368	74	97	2025-05-23	presence
5369	74	98	2025-05-23	presence
5370	74	99	2025-05-23	excused absence
5371	75	95	2025-05-23	presence
5372	75	96	2025-05-23	presence
5373	75	97	2025-05-23	presence
5374	75	98	2025-05-23	excused absence
5375	75	99	2025-05-23	presence
5376	76	95	2025-05-23	excused absence
5377	76	96	2025-05-23	presence
5378	76	97	2025-05-23	presence
5379	76	98	2025-05-23	presence
5380	76	99	2025-05-23	presence
5381	77	95	2025-05-23	presence
5382	77	96	2025-05-23	presence
5383	77	97	2025-05-23	presence
5384	77	98	2025-05-23	presence
5385	77	99	2025-05-23	presence
5386	78	95	2025-05-23	presence
5387	78	96	2025-05-23	presence
5388	78	97	2025-05-23	presence
5389	78	98	2025-05-23	presence
5390	78	99	2025-05-23	presence
5391	79	95	2025-05-23	presence
5392	79	96	2025-05-23	late
5393	79	97	2025-05-23	presence
5394	79	98	2025-05-23	presence
5395	79	99	2025-05-23	presence
5396	80	95	2025-05-23	presence
5397	80	96	2025-05-23	absence
5398	80	97	2025-05-23	presence
5399	80	98	2025-05-23	presence
5400	80	99	2025-05-23	presence
5401	81	117	2025-05-23	presence
5402	81	118	2025-05-23	presence
5403	81	119	2025-05-23	presence
5404	81	120	2025-05-23	presence
5405	81	121	2025-05-23	presence
5406	82	117	2025-05-23	presence
5407	82	118	2025-05-23	presence
5408	82	119	2025-05-23	presence
5409	82	120	2025-05-23	absence
5410	82	121	2025-05-23	presence
5411	83	117	2025-05-23	presence
5412	83	118	2025-05-23	excused absence
5413	83	119	2025-05-23	presence
5414	83	120	2025-05-23	presence
5415	83	121	2025-05-23	presence
5416	84	117	2025-05-23	absence
5417	84	118	2025-05-23	presence
5418	84	119	2025-05-23	presence
5419	84	120	2025-05-23	presence
5420	84	121	2025-05-23	presence
5421	85	117	2025-05-23	presence
5422	85	118	2025-05-23	presence
5423	85	119	2025-05-23	presence
5424	85	120	2025-05-23	presence
5425	85	121	2025-05-23	presence
5426	86	117	2025-05-23	presence
5427	86	118	2025-05-23	presence
5428	86	119	2025-05-23	presence
5429	86	120	2025-05-23	presence
5430	86	121	2025-05-23	presence
5431	87	117	2025-05-23	presence
5432	87	118	2025-05-23	presence
5433	87	119	2025-05-23	absence
5434	87	120	2025-05-23	presence
5435	87	121	2025-05-23	presence
5436	88	117	2025-05-23	presence
5437	88	118	2025-05-23	late
5438	88	119	2025-05-23	late
5439	88	120	2025-05-23	presence
5440	88	121	2025-05-23	presence
5441	89	117	2025-05-23	presence
5442	89	118	2025-05-23	presence
5443	89	119	2025-05-23	late
5444	89	120	2025-05-23	presence
5445	89	121	2025-05-23	presence
5446	90	117	2025-05-23	presence
5447	90	118	2025-05-23	presence
5448	90	119	2025-05-23	presence
5449	90	120	2025-05-23	presence
5450	90	121	2025-05-23	excused absence
5451	91	117	2025-05-23	presence
5452	91	118	2025-05-23	presence
5453	91	119	2025-05-23	presence
5454	91	120	2025-05-23	excused absence
5455	91	121	2025-05-23	presence
5456	92	117	2025-05-23	presence
5457	92	118	2025-05-23	presence
5458	92	119	2025-05-23	presence
5459	92	120	2025-05-23	presence
5460	92	121	2025-05-23	excused absence
5461	93	117	2025-05-23	presence
5462	93	118	2025-05-23	presence
5463	93	119	2025-05-23	presence
5464	93	120	2025-05-23	presence
5465	93	121	2025-05-23	presence
5466	94	117	2025-05-23	presence
5467	94	118	2025-05-23	presence
5468	94	119	2025-05-23	presence
5469	94	120	2025-05-23	presence
5470	94	121	2025-05-23	presence
5471	95	117	2025-05-23	late
5472	95	118	2025-05-23	presence
5473	95	119	2025-05-23	presence
5474	95	120	2025-05-23	excused absence
5475	95	121	2025-05-23	presence
5476	96	117	2025-05-23	presence
5477	96	118	2025-05-23	presence
5478	96	119	2025-05-23	presence
5479	96	120	2025-05-23	presence
5480	96	121	2025-05-23	presence
5481	97	117	2025-05-23	late
5482	97	118	2025-05-23	presence
5483	97	119	2025-05-23	excused absence
5484	97	120	2025-05-23	presence
5485	97	121	2025-05-23	presence
5486	98	117	2025-05-23	presence
5487	98	118	2025-05-23	presence
5488	98	119	2025-05-23	presence
5489	98	120	2025-05-23	presence
5490	98	121	2025-05-23	presence
5491	99	117	2025-05-23	presence
5492	99	118	2025-05-23	presence
5493	99	119	2025-05-23	presence
5494	99	120	2025-05-23	presence
5495	99	121	2025-05-23	presence
5496	100	117	2025-05-23	presence
5497	100	118	2025-05-23	presence
5498	100	119	2025-05-23	presence
5499	100	120	2025-05-23	presence
5500	100	121	2025-05-23	presence
5501	1	1	2025-05-22	presence
5502	1	2	2025-05-22	late
5503	1	3	2025-05-22	presence
5504	1	4	2025-05-22	late
5505	1	5	2025-05-22	presence
5506	2	1	2025-05-22	presence
5507	2	2	2025-05-22	presence
5508	2	3	2025-05-22	presence
5509	2	4	2025-05-22	presence
5510	2	5	2025-05-22	presence
5511	3	1	2025-05-22	excused absence
5512	3	2	2025-05-22	presence
5513	3	3	2025-05-22	presence
5514	3	4	2025-05-22	presence
5515	3	5	2025-05-22	presence
5516	4	1	2025-05-22	presence
5517	4	2	2025-05-22	excused absence
5518	4	3	2025-05-22	absence
5519	4	4	2025-05-22	presence
5520	4	5	2025-05-22	presence
5521	5	1	2025-05-22	presence
5522	5	2	2025-05-22	presence
5523	5	3	2025-05-22	late
5524	5	4	2025-05-22	late
5525	5	5	2025-05-22	presence
5526	6	1	2025-05-22	presence
5527	6	2	2025-05-22	presence
5528	6	3	2025-05-22	presence
5529	6	4	2025-05-22	presence
5530	6	5	2025-05-22	presence
5531	7	1	2025-05-22	presence
5532	7	2	2025-05-22	presence
5533	7	3	2025-05-22	presence
5534	7	4	2025-05-22	absence
5535	7	5	2025-05-22	presence
5536	8	1	2025-05-22	presence
5537	8	2	2025-05-22	presence
5538	8	3	2025-05-22	presence
5539	8	4	2025-05-22	presence
5540	8	5	2025-05-22	absence
5541	9	1	2025-05-22	presence
5542	9	2	2025-05-22	presence
5543	9	3	2025-05-22	presence
5544	9	4	2025-05-22	presence
5545	9	5	2025-05-22	presence
5546	10	1	2025-05-22	presence
5547	10	2	2025-05-22	presence
5548	10	3	2025-05-22	presence
5549	10	4	2025-05-22	presence
5550	10	5	2025-05-22	presence
5551	11	1	2025-05-22	presence
5552	11	2	2025-05-22	presence
5553	11	3	2025-05-22	presence
5554	11	4	2025-05-22	presence
5555	11	5	2025-05-22	presence
5556	12	1	2025-05-22	absence
5557	12	2	2025-05-22	excused absence
5558	12	3	2025-05-22	presence
5559	12	4	2025-05-22	presence
5560	12	5	2025-05-22	absence
5561	13	1	2025-05-22	presence
5562	13	2	2025-05-22	presence
5563	13	3	2025-05-22	presence
5564	13	4	2025-05-22	presence
5565	13	5	2025-05-22	presence
5566	14	1	2025-05-22	presence
5567	14	2	2025-05-22	late
5568	14	3	2025-05-22	presence
5569	14	4	2025-05-22	presence
5570	14	5	2025-05-22	presence
5571	15	1	2025-05-22	excused absence
5572	15	2	2025-05-22	presence
5573	15	3	2025-05-22	presence
5574	15	4	2025-05-22	presence
5575	15	5	2025-05-22	absence
5576	16	1	2025-05-22	presence
5577	16	2	2025-05-22	presence
5578	16	3	2025-05-22	presence
5579	16	4	2025-05-22	presence
5580	16	5	2025-05-22	late
5581	17	1	2025-05-22	presence
5582	17	2	2025-05-22	late
5583	17	3	2025-05-22	presence
5584	17	4	2025-05-22	presence
5585	17	5	2025-05-22	presence
5586	18	1	2025-05-22	presence
5587	18	2	2025-05-22	presence
5588	18	3	2025-05-22	presence
5589	18	4	2025-05-22	presence
5590	18	5	2025-05-22	presence
5591	19	1	2025-05-22	absence
5592	19	2	2025-05-22	presence
5593	19	3	2025-05-22	excused absence
5594	19	4	2025-05-22	presence
5595	19	5	2025-05-22	presence
5596	20	1	2025-05-22	presence
5597	20	2	2025-05-22	presence
5598	20	3	2025-05-22	presence
5599	20	4	2025-05-22	presence
5600	20	5	2025-05-22	presence
5601	21	37	2025-05-22	presence
5602	21	38	2025-05-22	presence
5603	21	39	2025-05-22	presence
5604	21	40	2025-05-22	presence
5605	21	41	2025-05-22	presence
5606	22	37	2025-05-22	presence
5607	22	38	2025-05-22	presence
5608	22	39	2025-05-22	presence
5609	22	40	2025-05-22	absence
5610	22	41	2025-05-22	late
5611	23	37	2025-05-22	excused absence
5612	23	38	2025-05-22	presence
5613	23	39	2025-05-22	presence
5614	23	40	2025-05-22	presence
5615	23	41	2025-05-22	presence
5616	24	37	2025-05-22	presence
5617	24	38	2025-05-22	presence
5618	24	39	2025-05-22	presence
5619	24	40	2025-05-22	presence
5620	24	41	2025-05-22	excused absence
5621	25	37	2025-05-22	presence
5622	25	38	2025-05-22	presence
5623	25	39	2025-05-22	excused absence
5624	25	40	2025-05-22	presence
5625	25	41	2025-05-22	absence
5626	26	37	2025-05-22	presence
5627	26	38	2025-05-22	presence
5628	26	39	2025-05-22	presence
5629	26	40	2025-05-22	presence
5630	26	41	2025-05-22	presence
5631	27	37	2025-05-22	presence
5632	27	38	2025-05-22	presence
5633	27	39	2025-05-22	presence
5634	27	40	2025-05-22	presence
5635	27	41	2025-05-22	presence
5636	28	37	2025-05-22	presence
5637	28	38	2025-05-22	presence
5638	28	39	2025-05-22	presence
5639	28	40	2025-05-22	presence
5640	28	41	2025-05-22	presence
5641	29	37	2025-05-22	presence
5642	29	38	2025-05-22	presence
5643	29	39	2025-05-22	presence
5644	29	40	2025-05-22	presence
5645	29	41	2025-05-22	presence
5646	30	37	2025-05-22	excused absence
5647	30	38	2025-05-22	late
5648	30	39	2025-05-22	presence
5649	30	40	2025-05-22	absence
5650	30	41	2025-05-22	presence
5651	31	37	2025-05-22	presence
5652	31	38	2025-05-22	presence
5653	31	39	2025-05-22	presence
5654	31	40	2025-05-22	presence
5655	31	41	2025-05-22	presence
5656	32	37	2025-05-22	presence
5657	32	38	2025-05-22	presence
5658	32	39	2025-05-22	presence
5659	32	40	2025-05-22	presence
5660	32	41	2025-05-22	presence
5661	33	37	2025-05-22	presence
5662	33	38	2025-05-22	presence
5663	33	39	2025-05-22	presence
5664	33	40	2025-05-22	presence
5665	33	41	2025-05-22	presence
5666	34	37	2025-05-22	presence
5667	34	38	2025-05-22	presence
5668	34	39	2025-05-22	presence
5669	34	40	2025-05-22	presence
5670	34	41	2025-05-22	presence
5671	35	37	2025-05-22	presence
5672	35	38	2025-05-22	presence
5673	35	39	2025-05-22	presence
5674	35	40	2025-05-22	presence
5675	35	41	2025-05-22	presence
5676	36	37	2025-05-22	presence
5677	36	38	2025-05-22	presence
5678	36	39	2025-05-22	presence
5679	36	40	2025-05-22	presence
5680	36	41	2025-05-22	presence
5681	37	37	2025-05-22	late
5682	37	38	2025-05-22	presence
5683	37	39	2025-05-22	presence
5684	37	40	2025-05-22	presence
5685	37	41	2025-05-22	presence
5686	38	37	2025-05-22	presence
5687	38	38	2025-05-22	presence
5688	38	39	2025-05-22	presence
5689	38	40	2025-05-22	presence
5690	38	41	2025-05-22	presence
5691	39	37	2025-05-22	presence
5692	39	38	2025-05-22	presence
5693	39	39	2025-05-22	presence
5694	39	40	2025-05-22	excused absence
5695	39	41	2025-05-22	presence
5696	40	37	2025-05-22	presence
5697	40	38	2025-05-22	absence
5698	40	39	2025-05-22	late
5699	40	40	2025-05-22	presence
5700	40	41	2025-05-22	presence
5701	41	73	2025-05-22	presence
5702	41	74	2025-05-22	presence
5703	41	75	2025-05-22	presence
5704	41	76	2025-05-22	presence
5705	41	77	2025-05-22	excused absence
5706	42	73	2025-05-22	presence
5707	42	74	2025-05-22	presence
5708	42	75	2025-05-22	presence
5709	42	76	2025-05-22	presence
5710	42	77	2025-05-22	excused absence
5711	43	73	2025-05-22	presence
5712	43	74	2025-05-22	presence
5713	43	75	2025-05-22	presence
5714	43	76	2025-05-22	presence
5715	43	77	2025-05-22	presence
5716	44	73	2025-05-22	presence
5717	44	74	2025-05-22	presence
5718	44	75	2025-05-22	presence
5719	44	76	2025-05-22	presence
5720	44	77	2025-05-22	late
5721	45	73	2025-05-22	presence
5722	45	74	2025-05-22	presence
5723	45	75	2025-05-22	presence
5724	45	76	2025-05-22	presence
5725	45	77	2025-05-22	presence
5726	46	73	2025-05-22	presence
5727	46	74	2025-05-22	presence
5728	46	75	2025-05-22	presence
5729	46	76	2025-05-22	presence
5730	46	77	2025-05-22	presence
5731	47	73	2025-05-22	presence
5732	47	74	2025-05-22	presence
5733	47	75	2025-05-22	presence
5734	47	76	2025-05-22	presence
5735	47	77	2025-05-22	presence
5736	48	73	2025-05-22	absence
5737	48	74	2025-05-22	presence
5738	48	75	2025-05-22	presence
5739	48	76	2025-05-22	presence
5740	48	77	2025-05-22	absence
5741	49	73	2025-05-22	presence
5742	49	74	2025-05-22	presence
5743	49	75	2025-05-22	presence
5744	49	76	2025-05-22	late
5745	49	77	2025-05-22	excused absence
5746	50	73	2025-05-22	presence
5747	50	74	2025-05-22	presence
5748	50	75	2025-05-22	presence
5749	50	76	2025-05-22	presence
5750	50	77	2025-05-22	presence
5751	51	73	2025-05-22	presence
5752	51	74	2025-05-22	presence
5753	51	75	2025-05-22	absence
5754	51	76	2025-05-22	presence
5755	51	77	2025-05-22	presence
5756	52	73	2025-05-22	presence
5757	52	74	2025-05-22	presence
5758	52	75	2025-05-22	presence
5759	52	76	2025-05-22	presence
5760	52	77	2025-05-22	presence
5761	53	73	2025-05-22	presence
5762	53	74	2025-05-22	presence
5763	53	75	2025-05-22	presence
5764	53	76	2025-05-22	presence
5765	53	77	2025-05-22	presence
5766	54	73	2025-05-22	presence
5767	54	74	2025-05-22	presence
5768	54	75	2025-05-22	presence
5769	54	76	2025-05-22	presence
5770	54	77	2025-05-22	presence
5771	55	73	2025-05-22	presence
5772	55	74	2025-05-22	absence
5773	55	75	2025-05-22	absence
5774	55	76	2025-05-22	presence
5775	55	77	2025-05-22	absence
5776	56	73	2025-05-22	presence
5777	56	74	2025-05-22	presence
5778	56	75	2025-05-22	presence
5779	56	76	2025-05-22	presence
5780	56	77	2025-05-22	presence
5781	57	73	2025-05-22	presence
5782	57	74	2025-05-22	presence
5783	57	75	2025-05-22	presence
5784	57	76	2025-05-22	presence
5785	57	77	2025-05-22	presence
5786	58	73	2025-05-22	presence
5787	58	74	2025-05-22	presence
5788	58	75	2025-05-22	presence
5789	58	76	2025-05-22	presence
5790	58	77	2025-05-22	presence
5791	59	73	2025-05-22	presence
5792	59	74	2025-05-22	presence
5793	59	75	2025-05-22	presence
5794	59	76	2025-05-22	presence
5795	59	77	2025-05-22	presence
5796	60	73	2025-05-22	presence
5797	60	74	2025-05-22	presence
5798	60	75	2025-05-22	presence
5799	60	76	2025-05-22	presence
5800	60	77	2025-05-22	presence
5801	61	95	2025-05-22	presence
5802	61	96	2025-05-22	presence
5803	61	97	2025-05-22	late
5804	61	98	2025-05-22	absence
5805	61	99	2025-05-22	excused absence
5806	62	95	2025-05-22	presence
5807	62	96	2025-05-22	presence
5808	62	97	2025-05-22	presence
5809	62	98	2025-05-22	presence
5810	62	99	2025-05-22	presence
5811	63	95	2025-05-22	absence
5812	63	96	2025-05-22	presence
5813	63	97	2025-05-22	presence
5814	63	98	2025-05-22	excused absence
5815	63	99	2025-05-22	late
5816	64	95	2025-05-22	presence
5817	64	96	2025-05-22	presence
5818	64	97	2025-05-22	presence
5819	64	98	2025-05-22	presence
5820	64	99	2025-05-22	presence
5821	65	95	2025-05-22	late
5822	65	96	2025-05-22	presence
5823	65	97	2025-05-22	excused absence
5824	65	98	2025-05-22	presence
5825	65	99	2025-05-22	presence
5826	66	95	2025-05-22	excused absence
5827	66	96	2025-05-22	presence
5828	66	97	2025-05-22	presence
5829	66	98	2025-05-22	presence
5830	66	99	2025-05-22	presence
5831	67	95	2025-05-22	presence
5832	67	96	2025-05-22	presence
5833	67	97	2025-05-22	presence
5834	67	98	2025-05-22	presence
5835	67	99	2025-05-22	presence
5836	68	95	2025-05-22	presence
5837	68	96	2025-05-22	late
5838	68	97	2025-05-22	presence
5839	68	98	2025-05-22	presence
5840	68	99	2025-05-22	presence
5841	69	95	2025-05-22	late
5842	69	96	2025-05-22	excused absence
5843	69	97	2025-05-22	presence
5844	69	98	2025-05-22	presence
5845	69	99	2025-05-22	presence
5846	70	95	2025-05-22	presence
5847	70	96	2025-05-22	presence
5848	70	97	2025-05-22	presence
5849	70	98	2025-05-22	presence
5850	70	99	2025-05-22	presence
5851	71	95	2025-05-22	presence
5852	71	96	2025-05-22	presence
5853	71	97	2025-05-22	presence
5854	71	98	2025-05-22	presence
5855	71	99	2025-05-22	presence
5856	72	95	2025-05-22	presence
5857	72	96	2025-05-22	presence
5858	72	97	2025-05-22	presence
5859	72	98	2025-05-22	presence
5860	72	99	2025-05-22	presence
5861	73	95	2025-05-22	presence
5862	73	96	2025-05-22	presence
5863	73	97	2025-05-22	presence
5864	73	98	2025-05-22	presence
5865	73	99	2025-05-22	presence
5866	74	95	2025-05-22	presence
5867	74	96	2025-05-22	late
5868	74	97	2025-05-22	presence
5869	74	98	2025-05-22	presence
5870	74	99	2025-05-22	presence
5871	75	95	2025-05-22	presence
5872	75	96	2025-05-22	presence
5873	75	97	2025-05-22	presence
5874	75	98	2025-05-22	presence
5875	75	99	2025-05-22	presence
5876	76	95	2025-05-22	presence
5877	76	96	2025-05-22	presence
5878	76	97	2025-05-22	presence
5879	76	98	2025-05-22	presence
5880	76	99	2025-05-22	presence
5881	77	95	2025-05-22	presence
5882	77	96	2025-05-22	presence
5883	77	97	2025-05-22	presence
5884	77	98	2025-05-22	presence
5885	77	99	2025-05-22	presence
5886	78	95	2025-05-22	absence
5887	78	96	2025-05-22	presence
5888	78	97	2025-05-22	presence
5889	78	98	2025-05-22	presence
5890	78	99	2025-05-22	presence
5891	79	95	2025-05-22	presence
5892	79	96	2025-05-22	presence
5893	79	97	2025-05-22	presence
5894	79	98	2025-05-22	presence
5895	79	99	2025-05-22	absence
5896	80	95	2025-05-22	presence
5897	80	96	2025-05-22	presence
5898	80	97	2025-05-22	presence
5899	80	98	2025-05-22	presence
5900	80	99	2025-05-22	excused absence
5901	81	117	2025-05-22	presence
5902	81	118	2025-05-22	presence
5903	81	119	2025-05-22	presence
5904	81	120	2025-05-22	presence
5905	81	121	2025-05-22	presence
5906	82	117	2025-05-22	excused absence
5907	82	118	2025-05-22	presence
5908	82	119	2025-05-22	presence
5909	82	120	2025-05-22	presence
5910	82	121	2025-05-22	presence
5911	83	117	2025-05-22	presence
5912	83	118	2025-05-22	presence
5913	83	119	2025-05-22	presence
5914	83	120	2025-05-22	presence
5915	83	121	2025-05-22	presence
5916	84	117	2025-05-22	presence
5917	84	118	2025-05-22	presence
5918	84	119	2025-05-22	presence
5919	84	120	2025-05-22	presence
5920	84	121	2025-05-22	presence
5921	85	117	2025-05-22	presence
5922	85	118	2025-05-22	presence
5923	85	119	2025-05-22	presence
5924	85	120	2025-05-22	presence
5925	85	121	2025-05-22	presence
5926	86	117	2025-05-22	presence
5927	86	118	2025-05-22	presence
5928	86	119	2025-05-22	presence
5929	86	120	2025-05-22	presence
5930	86	121	2025-05-22	excused absence
5931	87	117	2025-05-22	presence
5932	87	118	2025-05-22	presence
5933	87	119	2025-05-22	presence
5934	87	120	2025-05-22	presence
5935	87	121	2025-05-22	presence
5936	88	117	2025-05-22	late
5937	88	118	2025-05-22	presence
5938	88	119	2025-05-22	presence
5939	88	120	2025-05-22	presence
5940	88	121	2025-05-22	excused absence
5941	89	117	2025-05-22	presence
5942	89	118	2025-05-22	presence
5943	89	119	2025-05-22	presence
5944	89	120	2025-05-22	presence
5945	89	121	2025-05-22	presence
5946	90	117	2025-05-22	presence
5947	90	118	2025-05-22	presence
5948	90	119	2025-05-22	presence
5949	90	120	2025-05-22	presence
5950	90	121	2025-05-22	absence
5951	91	117	2025-05-22	presence
5952	91	118	2025-05-22	presence
5953	91	119	2025-05-22	presence
5954	91	120	2025-05-22	presence
5955	91	121	2025-05-22	presence
5956	92	117	2025-05-22	presence
5957	92	118	2025-05-22	presence
5958	92	119	2025-05-22	presence
5959	92	120	2025-05-22	excused absence
5960	92	121	2025-05-22	presence
5961	93	117	2025-05-22	excused absence
5962	93	118	2025-05-22	presence
5963	93	119	2025-05-22	presence
5964	93	120	2025-05-22	presence
5965	93	121	2025-05-22	presence
5966	94	117	2025-05-22	presence
5967	94	118	2025-05-22	absence
5968	94	119	2025-05-22	presence
5969	94	120	2025-05-22	presence
5970	94	121	2025-05-22	presence
5971	95	117	2025-05-22	presence
5972	95	118	2025-05-22	presence
5973	95	119	2025-05-22	presence
5974	95	120	2025-05-22	presence
5975	95	121	2025-05-22	presence
5976	96	117	2025-05-22	presence
5977	96	118	2025-05-22	presence
5978	96	119	2025-05-22	presence
5979	96	120	2025-05-22	presence
5980	96	121	2025-05-22	presence
5981	97	117	2025-05-22	presence
5982	97	118	2025-05-22	presence
5983	97	119	2025-05-22	presence
5984	97	120	2025-05-22	presence
5985	97	121	2025-05-22	presence
5986	98	117	2025-05-22	late
5987	98	118	2025-05-22	excused absence
5988	98	119	2025-05-22	presence
5989	98	120	2025-05-22	presence
5990	98	121	2025-05-22	presence
5991	99	117	2025-05-22	presence
5992	99	118	2025-05-22	presence
5993	99	119	2025-05-22	presence
5994	99	120	2025-05-22	presence
5995	99	121	2025-05-22	presence
5996	100	117	2025-05-22	absence
5997	100	118	2025-05-22	presence
5998	100	119	2025-05-22	presence
5999	100	120	2025-05-22	presence
6000	100	121	2025-05-22	presence
6001	1	1	2025-05-21	excused absence
6002	1	2	2025-05-21	presence
6003	1	3	2025-05-21	presence
6004	1	4	2025-05-21	presence
6005	1	5	2025-05-21	presence
6006	2	1	2025-05-21	presence
6007	2	2	2025-05-21	presence
6008	2	3	2025-05-21	presence
6009	2	4	2025-05-21	presence
6010	2	5	2025-05-21	presence
6011	3	1	2025-05-21	presence
6012	3	2	2025-05-21	presence
6013	3	3	2025-05-21	presence
6014	3	4	2025-05-21	presence
6015	3	5	2025-05-21	presence
6016	4	1	2025-05-21	presence
6017	4	2	2025-05-21	presence
6018	4	3	2025-05-21	presence
6019	4	4	2025-05-21	presence
6020	4	5	2025-05-21	presence
6021	5	1	2025-05-21	presence
6022	5	2	2025-05-21	presence
6023	5	3	2025-05-21	presence
6024	5	4	2025-05-21	presence
6025	5	5	2025-05-21	presence
6026	6	1	2025-05-21	presence
6027	6	2	2025-05-21	presence
6028	6	3	2025-05-21	presence
6029	6	4	2025-05-21	presence
6030	6	5	2025-05-21	presence
6031	7	1	2025-05-21	presence
6032	7	2	2025-05-21	absence
6033	7	3	2025-05-21	presence
6034	7	4	2025-05-21	presence
6035	7	5	2025-05-21	presence
6036	8	1	2025-05-21	presence
6037	8	2	2025-05-21	presence
6038	8	3	2025-05-21	absence
6039	8	4	2025-05-21	late
6040	8	5	2025-05-21	presence
6041	9	1	2025-05-21	presence
6042	9	2	2025-05-21	presence
6043	9	3	2025-05-21	presence
6044	9	4	2025-05-21	presence
6045	9	5	2025-05-21	presence
6046	10	1	2025-05-21	presence
6047	10	2	2025-05-21	presence
6048	10	3	2025-05-21	excused absence
6049	10	4	2025-05-21	late
6050	10	5	2025-05-21	late
6051	11	1	2025-05-21	presence
6052	11	2	2025-05-21	presence
6053	11	3	2025-05-21	presence
6054	11	4	2025-05-21	presence
6055	11	5	2025-05-21	presence
6056	12	1	2025-05-21	presence
6057	12	2	2025-05-21	presence
6058	12	3	2025-05-21	presence
6059	12	4	2025-05-21	presence
6060	12	5	2025-05-21	presence
6061	13	1	2025-05-21	presence
6062	13	2	2025-05-21	presence
6063	13	3	2025-05-21	presence
6064	13	4	2025-05-21	presence
6065	13	5	2025-05-21	presence
6066	14	1	2025-05-21	late
6067	14	2	2025-05-21	presence
6068	14	3	2025-05-21	presence
6069	14	4	2025-05-21	presence
6070	14	5	2025-05-21	absence
6071	15	1	2025-05-21	presence
6072	15	2	2025-05-21	presence
6073	15	3	2025-05-21	presence
6074	15	4	2025-05-21	presence
6075	15	5	2025-05-21	presence
6076	16	1	2025-05-21	presence
6077	16	2	2025-05-21	presence
6078	16	3	2025-05-21	presence
6079	16	4	2025-05-21	excused absence
6080	16	5	2025-05-21	presence
6081	17	1	2025-05-21	absence
6082	17	2	2025-05-21	presence
6083	17	3	2025-05-21	late
6084	17	4	2025-05-21	presence
6085	17	5	2025-05-21	presence
6086	18	1	2025-05-21	presence
6087	18	2	2025-05-21	presence
6088	18	3	2025-05-21	presence
6089	18	4	2025-05-21	absence
6090	18	5	2025-05-21	presence
6091	19	1	2025-05-21	presence
6092	19	2	2025-05-21	presence
6093	19	3	2025-05-21	presence
6094	19	4	2025-05-21	presence
6095	19	5	2025-05-21	presence
6096	20	1	2025-05-21	presence
6097	20	2	2025-05-21	presence
6098	20	3	2025-05-21	presence
6099	20	4	2025-05-21	presence
6100	20	5	2025-05-21	presence
6101	21	37	2025-05-21	presence
6102	21	38	2025-05-21	presence
6103	21	39	2025-05-21	presence
6104	21	40	2025-05-21	excused absence
6105	21	41	2025-05-21	presence
6106	22	37	2025-05-21	presence
6107	22	38	2025-05-21	presence
6108	22	39	2025-05-21	presence
6109	22	40	2025-05-21	presence
6110	22	41	2025-05-21	presence
6111	23	37	2025-05-21	presence
6112	23	38	2025-05-21	presence
6113	23	39	2025-05-21	late
6114	23	40	2025-05-21	presence
6115	23	41	2025-05-21	presence
6116	24	37	2025-05-21	presence
6117	24	38	2025-05-21	excused absence
6118	24	39	2025-05-21	absence
6119	24	40	2025-05-21	presence
6120	24	41	2025-05-21	presence
6121	25	37	2025-05-21	presence
6122	25	38	2025-05-21	presence
6123	25	39	2025-05-21	presence
6124	25	40	2025-05-21	presence
6125	25	41	2025-05-21	presence
6126	26	37	2025-05-21	presence
6127	26	38	2025-05-21	absence
6128	26	39	2025-05-21	presence
6129	26	40	2025-05-21	presence
6130	26	41	2025-05-21	presence
6131	27	37	2025-05-21	presence
6132	27	38	2025-05-21	presence
6133	27	39	2025-05-21	late
6134	27	40	2025-05-21	presence
6135	27	41	2025-05-21	presence
6136	28	37	2025-05-21	presence
6137	28	38	2025-05-21	absence
6138	28	39	2025-05-21	presence
6139	28	40	2025-05-21	presence
6140	28	41	2025-05-21	presence
6141	29	37	2025-05-21	presence
6142	29	38	2025-05-21	presence
6143	29	39	2025-05-21	presence
6144	29	40	2025-05-21	presence
6145	29	41	2025-05-21	absence
6146	30	37	2025-05-21	late
6147	30	38	2025-05-21	presence
6148	30	39	2025-05-21	presence
6149	30	40	2025-05-21	presence
6150	30	41	2025-05-21	presence
6151	31	37	2025-05-21	presence
6152	31	38	2025-05-21	excused absence
6153	31	39	2025-05-21	presence
6154	31	40	2025-05-21	presence
6155	31	41	2025-05-21	presence
6156	32	37	2025-05-21	excused absence
6157	32	38	2025-05-21	absence
6158	32	39	2025-05-21	presence
6159	32	40	2025-05-21	presence
6160	32	41	2025-05-21	presence
6161	33	37	2025-05-21	presence
6162	33	38	2025-05-21	presence
6163	33	39	2025-05-21	presence
6164	33	40	2025-05-21	presence
6165	33	41	2025-05-21	presence
6166	34	37	2025-05-21	presence
6167	34	38	2025-05-21	presence
6168	34	39	2025-05-21	presence
6169	34	40	2025-05-21	presence
6170	34	41	2025-05-21	presence
6171	35	37	2025-05-21	presence
6172	35	38	2025-05-21	presence
6173	35	39	2025-05-21	presence
6174	35	40	2025-05-21	presence
6175	35	41	2025-05-21	presence
6176	36	37	2025-05-21	presence
6177	36	38	2025-05-21	presence
6178	36	39	2025-05-21	presence
6179	36	40	2025-05-21	presence
6180	36	41	2025-05-21	late
6181	37	37	2025-05-21	late
6182	37	38	2025-05-21	presence
6183	37	39	2025-05-21	presence
6184	37	40	2025-05-21	presence
6185	37	41	2025-05-21	presence
6186	38	37	2025-05-21	excused absence
6187	38	38	2025-05-21	presence
6188	38	39	2025-05-21	presence
6189	38	40	2025-05-21	presence
6190	38	41	2025-05-21	presence
6191	39	37	2025-05-21	presence
6192	39	38	2025-05-21	presence
6193	39	39	2025-05-21	presence
6194	39	40	2025-05-21	presence
6195	39	41	2025-05-21	presence
6196	40	37	2025-05-21	presence
6197	40	38	2025-05-21	presence
6198	40	39	2025-05-21	presence
6199	40	40	2025-05-21	presence
6200	40	41	2025-05-21	late
6201	41	73	2025-05-21	presence
6202	41	74	2025-05-21	presence
6203	41	75	2025-05-21	presence
6204	41	76	2025-05-21	presence
6205	41	77	2025-05-21	presence
6206	42	73	2025-05-21	presence
6207	42	74	2025-05-21	presence
6208	42	75	2025-05-21	presence
6209	42	76	2025-05-21	excused absence
6210	42	77	2025-05-21	excused absence
6211	43	73	2025-05-21	presence
6212	43	74	2025-05-21	presence
6213	43	75	2025-05-21	presence
6214	43	76	2025-05-21	presence
6215	43	77	2025-05-21	presence
6216	44	73	2025-05-21	presence
6217	44	74	2025-05-21	presence
6218	44	75	2025-05-21	presence
6219	44	76	2025-05-21	excused absence
6220	44	77	2025-05-21	presence
6221	45	73	2025-05-21	presence
6222	45	74	2025-05-21	presence
6223	45	75	2025-05-21	presence
6224	45	76	2025-05-21	presence
6225	45	77	2025-05-21	presence
6226	46	73	2025-05-21	presence
6227	46	74	2025-05-21	presence
6228	46	75	2025-05-21	presence
6229	46	76	2025-05-21	late
6230	46	77	2025-05-21	presence
6231	47	73	2025-05-21	presence
6232	47	74	2025-05-21	presence
6233	47	75	2025-05-21	presence
6234	47	76	2025-05-21	presence
6235	47	77	2025-05-21	presence
6236	48	73	2025-05-21	presence
6237	48	74	2025-05-21	presence
6238	48	75	2025-05-21	presence
6239	48	76	2025-05-21	late
6240	48	77	2025-05-21	presence
6241	49	73	2025-05-21	excused absence
6242	49	74	2025-05-21	presence
6243	49	75	2025-05-21	presence
6244	49	76	2025-05-21	presence
6245	49	77	2025-05-21	presence
6246	50	73	2025-05-21	presence
6247	50	74	2025-05-21	presence
6248	50	75	2025-05-21	presence
6249	50	76	2025-05-21	presence
6250	50	77	2025-05-21	presence
6251	51	73	2025-05-21	presence
6252	51	74	2025-05-21	presence
6253	51	75	2025-05-21	absence
6254	51	76	2025-05-21	late
6255	51	77	2025-05-21	presence
6256	52	73	2025-05-21	presence
6257	52	74	2025-05-21	presence
6258	52	75	2025-05-21	presence
6259	52	76	2025-05-21	presence
6260	52	77	2025-05-21	absence
6261	53	73	2025-05-21	excused absence
6262	53	74	2025-05-21	presence
6263	53	75	2025-05-21	presence
6264	53	76	2025-05-21	presence
6265	53	77	2025-05-21	presence
6266	54	73	2025-05-21	presence
6267	54	74	2025-05-21	excused absence
6268	54	75	2025-05-21	presence
6269	54	76	2025-05-21	presence
6270	54	77	2025-05-21	presence
6271	55	73	2025-05-21	presence
6272	55	74	2025-05-21	presence
6273	55	75	2025-05-21	presence
6274	55	76	2025-05-21	presence
6275	55	77	2025-05-21	presence
6276	56	73	2025-05-21	late
6277	56	74	2025-05-21	presence
6278	56	75	2025-05-21	presence
6279	56	76	2025-05-21	excused absence
6280	56	77	2025-05-21	presence
6281	57	73	2025-05-21	presence
6282	57	74	2025-05-21	late
6283	57	75	2025-05-21	late
6284	57	76	2025-05-21	presence
6285	57	77	2025-05-21	presence
6286	58	73	2025-05-21	excused absence
6287	58	74	2025-05-21	presence
6288	58	75	2025-05-21	presence
6289	58	76	2025-05-21	presence
6290	58	77	2025-05-21	presence
6291	59	73	2025-05-21	presence
6292	59	74	2025-05-21	presence
6293	59	75	2025-05-21	presence
6294	59	76	2025-05-21	presence
6295	59	77	2025-05-21	late
6296	60	73	2025-05-21	presence
6297	60	74	2025-05-21	presence
6298	60	75	2025-05-21	presence
6299	60	76	2025-05-21	presence
6300	60	77	2025-05-21	presence
6301	61	95	2025-05-21	presence
6302	61	96	2025-05-21	presence
6303	61	97	2025-05-21	presence
6304	61	98	2025-05-21	presence
6305	61	99	2025-05-21	presence
6306	62	95	2025-05-21	presence
6307	62	96	2025-05-21	presence
6308	62	97	2025-05-21	presence
6309	62	98	2025-05-21	presence
6310	62	99	2025-05-21	presence
6311	63	95	2025-05-21	presence
6312	63	96	2025-05-21	absence
6313	63	97	2025-05-21	presence
6314	63	98	2025-05-21	presence
6315	63	99	2025-05-21	absence
6316	64	95	2025-05-21	absence
6317	64	96	2025-05-21	presence
6318	64	97	2025-05-21	presence
6319	64	98	2025-05-21	presence
6320	64	99	2025-05-21	presence
6321	65	95	2025-05-21	late
6322	65	96	2025-05-21	presence
6323	65	97	2025-05-21	presence
6324	65	98	2025-05-21	presence
6325	65	99	2025-05-21	presence
6326	66	95	2025-05-21	presence
6327	66	96	2025-05-21	presence
6328	66	97	2025-05-21	presence
6329	66	98	2025-05-21	presence
6330	66	99	2025-05-21	presence
6331	67	95	2025-05-21	presence
6332	67	96	2025-05-21	presence
6333	67	97	2025-05-21	presence
6334	67	98	2025-05-21	presence
6335	67	99	2025-05-21	presence
6336	68	95	2025-05-21	excused absence
6337	68	96	2025-05-21	absence
6338	68	97	2025-05-21	absence
6339	68	98	2025-05-21	presence
6340	68	99	2025-05-21	presence
6341	69	95	2025-05-21	presence
6342	69	96	2025-05-21	presence
6343	69	97	2025-05-21	presence
6344	69	98	2025-05-21	presence
6345	69	99	2025-05-21	presence
6346	70	95	2025-05-21	presence
6347	70	96	2025-05-21	presence
6348	70	97	2025-05-21	presence
6349	70	98	2025-05-21	presence
6350	70	99	2025-05-21	presence
6351	71	95	2025-05-21	presence
6352	71	96	2025-05-21	presence
6353	71	97	2025-05-21	absence
6354	71	98	2025-05-21	presence
6355	71	99	2025-05-21	presence
6356	72	95	2025-05-21	presence
6357	72	96	2025-05-21	presence
6358	72	97	2025-05-21	presence
6359	72	98	2025-05-21	excused absence
6360	72	99	2025-05-21	presence
6361	73	95	2025-05-21	presence
6362	73	96	2025-05-21	presence
6363	73	97	2025-05-21	presence
6364	73	98	2025-05-21	presence
6365	73	99	2025-05-21	presence
6366	74	95	2025-05-21	presence
6367	74	96	2025-05-21	presence
6368	74	97	2025-05-21	presence
6369	74	98	2025-05-21	presence
6370	74	99	2025-05-21	excused absence
6371	75	95	2025-05-21	presence
6372	75	96	2025-05-21	presence
6373	75	97	2025-05-21	presence
6374	75	98	2025-05-21	absence
6375	75	99	2025-05-21	presence
6376	76	95	2025-05-21	presence
6377	76	96	2025-05-21	presence
6378	76	97	2025-05-21	presence
6379	76	98	2025-05-21	presence
6380	76	99	2025-05-21	absence
6381	77	95	2025-05-21	presence
6382	77	96	2025-05-21	absence
6383	77	97	2025-05-21	presence
6384	77	98	2025-05-21	presence
6385	77	99	2025-05-21	presence
6386	78	95	2025-05-21	presence
6387	78	96	2025-05-21	presence
6388	78	97	2025-05-21	presence
6389	78	98	2025-05-21	presence
6390	78	99	2025-05-21	presence
6391	79	95	2025-05-21	presence
6392	79	96	2025-05-21	presence
6393	79	97	2025-05-21	presence
6394	79	98	2025-05-21	presence
6395	79	99	2025-05-21	presence
6396	80	95	2025-05-21	late
6397	80	96	2025-05-21	excused absence
6398	80	97	2025-05-21	presence
6399	80	98	2025-05-21	absence
6400	80	99	2025-05-21	presence
6401	81	117	2025-05-21	excused absence
6402	81	118	2025-05-21	presence
6403	81	119	2025-05-21	presence
6404	81	120	2025-05-21	presence
6405	81	121	2025-05-21	presence
6406	82	117	2025-05-21	excused absence
6407	82	118	2025-05-21	absence
6408	82	119	2025-05-21	presence
6409	82	120	2025-05-21	presence
6410	82	121	2025-05-21	late
6411	83	117	2025-05-21	presence
6412	83	118	2025-05-21	presence
6413	83	119	2025-05-21	presence
6414	83	120	2025-05-21	presence
6415	83	121	2025-05-21	presence
6416	84	117	2025-05-21	presence
6417	84	118	2025-05-21	presence
6418	84	119	2025-05-21	presence
6419	84	120	2025-05-21	presence
6420	84	121	2025-05-21	excused absence
6421	85	117	2025-05-21	presence
6422	85	118	2025-05-21	presence
6423	85	119	2025-05-21	absence
6424	85	120	2025-05-21	presence
6425	85	121	2025-05-21	presence
6426	86	117	2025-05-21	excused absence
6427	86	118	2025-05-21	presence
6428	86	119	2025-05-21	presence
6429	86	120	2025-05-21	presence
6430	86	121	2025-05-21	presence
6431	87	117	2025-05-21	presence
6432	87	118	2025-05-21	presence
6433	87	119	2025-05-21	presence
6434	87	120	2025-05-21	presence
6435	87	121	2025-05-21	presence
6436	88	117	2025-05-21	presence
6437	88	118	2025-05-21	presence
6438	88	119	2025-05-21	presence
6439	88	120	2025-05-21	presence
6440	88	121	2025-05-21	presence
6441	89	117	2025-05-21	presence
6442	89	118	2025-05-21	presence
6443	89	119	2025-05-21	excused absence
6444	89	120	2025-05-21	presence
6445	89	121	2025-05-21	presence
6446	90	117	2025-05-21	presence
6447	90	118	2025-05-21	presence
6448	90	119	2025-05-21	presence
6449	90	120	2025-05-21	presence
6450	90	121	2025-05-21	absence
6451	91	117	2025-05-21	presence
6452	91	118	2025-05-21	presence
6453	91	119	2025-05-21	presence
6454	91	120	2025-05-21	presence
6455	91	121	2025-05-21	late
6456	92	117	2025-05-21	presence
6457	92	118	2025-05-21	presence
6458	92	119	2025-05-21	presence
6459	92	120	2025-05-21	presence
6460	92	121	2025-05-21	presence
6461	93	117	2025-05-21	presence
6462	93	118	2025-05-21	presence
6463	93	119	2025-05-21	excused absence
6464	93	120	2025-05-21	presence
6465	93	121	2025-05-21	presence
6466	94	117	2025-05-21	presence
6467	94	118	2025-05-21	presence
6468	94	119	2025-05-21	absence
6469	94	120	2025-05-21	presence
6470	94	121	2025-05-21	presence
6471	95	117	2025-05-21	presence
6472	95	118	2025-05-21	presence
6473	95	119	2025-05-21	late
6474	95	120	2025-05-21	presence
6475	95	121	2025-05-21	absence
6476	96	117	2025-05-21	presence
6477	96	118	2025-05-21	presence
6478	96	119	2025-05-21	presence
6479	96	120	2025-05-21	presence
6480	96	121	2025-05-21	presence
6481	97	117	2025-05-21	absence
6482	97	118	2025-05-21	presence
6483	97	119	2025-05-21	presence
6484	97	120	2025-05-21	presence
6485	97	121	2025-05-21	presence
6486	98	117	2025-05-21	absence
6487	98	118	2025-05-21	presence
6488	98	119	2025-05-21	absence
6489	98	120	2025-05-21	presence
6490	98	121	2025-05-21	presence
6491	99	117	2025-05-21	presence
6492	99	118	2025-05-21	presence
6493	99	119	2025-05-21	presence
6494	99	120	2025-05-21	presence
6495	99	121	2025-05-21	late
6496	100	117	2025-05-21	presence
6497	100	118	2025-05-21	presence
6498	100	119	2025-05-21	presence
6499	100	120	2025-05-21	excused absence
6500	100	121	2025-05-21	presence
6501	1	1	2025-05-20	presence
6502	1	2	2025-05-20	presence
6503	1	3	2025-05-20	presence
6504	1	4	2025-05-20	presence
6505	1	5	2025-05-20	absence
6506	2	1	2025-05-20	presence
6507	2	2	2025-05-20	presence
6508	2	3	2025-05-20	presence
6509	2	4	2025-05-20	presence
6510	2	5	2025-05-20	absence
6511	3	1	2025-05-20	presence
6512	3	2	2025-05-20	presence
6513	3	3	2025-05-20	presence
6514	3	4	2025-05-20	absence
6515	3	5	2025-05-20	presence
6516	4	1	2025-05-20	presence
6517	4	2	2025-05-20	presence
6518	4	3	2025-05-20	presence
6519	4	4	2025-05-20	presence
6520	4	5	2025-05-20	presence
6521	5	1	2025-05-20	presence
6522	5	2	2025-05-20	presence
6523	5	3	2025-05-20	presence
6524	5	4	2025-05-20	presence
6525	5	5	2025-05-20	late
6526	6	1	2025-05-20	presence
6527	6	2	2025-05-20	presence
6528	6	3	2025-05-20	late
6529	6	4	2025-05-20	presence
6530	6	5	2025-05-20	excused absence
6531	7	1	2025-05-20	presence
6532	7	2	2025-05-20	presence
6533	7	3	2025-05-20	presence
6534	7	4	2025-05-20	presence
6535	7	5	2025-05-20	presence
6536	8	1	2025-05-20	excused absence
6537	8	2	2025-05-20	presence
6538	8	3	2025-05-20	presence
6539	8	4	2025-05-20	presence
6540	8	5	2025-05-20	presence
6541	9	1	2025-05-20	presence
6542	9	2	2025-05-20	presence
6543	9	3	2025-05-20	presence
6544	9	4	2025-05-20	presence
6545	9	5	2025-05-20	presence
6546	10	1	2025-05-20	presence
6547	10	2	2025-05-20	presence
6548	10	3	2025-05-20	presence
6549	10	4	2025-05-20	presence
6550	10	5	2025-05-20	presence
6551	11	1	2025-05-20	presence
6552	11	2	2025-05-20	presence
6553	11	3	2025-05-20	presence
6554	11	4	2025-05-20	presence
6555	11	5	2025-05-20	presence
6556	12	1	2025-05-20	presence
6557	12	2	2025-05-20	presence
6558	12	3	2025-05-20	presence
6559	12	4	2025-05-20	presence
6560	12	5	2025-05-20	late
6561	13	1	2025-05-20	presence
6562	13	2	2025-05-20	presence
6563	13	3	2025-05-20	presence
6564	13	4	2025-05-20	presence
6565	13	5	2025-05-20	presence
6566	14	1	2025-05-20	presence
6567	14	2	2025-05-20	presence
6568	14	3	2025-05-20	presence
6569	14	4	2025-05-20	presence
6570	14	5	2025-05-20	presence
6571	15	1	2025-05-20	presence
6572	15	2	2025-05-20	presence
6573	15	3	2025-05-20	presence
6574	15	4	2025-05-20	late
6575	15	5	2025-05-20	presence
6576	16	1	2025-05-20	presence
6577	16	2	2025-05-20	presence
6578	16	3	2025-05-20	presence
6579	16	4	2025-05-20	presence
6580	16	5	2025-05-20	presence
6581	17	1	2025-05-20	presence
6582	17	2	2025-05-20	presence
6583	17	3	2025-05-20	excused absence
6584	17	4	2025-05-20	presence
6585	17	5	2025-05-20	presence
6586	18	1	2025-05-20	presence
6587	18	2	2025-05-20	presence
6588	18	3	2025-05-20	presence
6589	18	4	2025-05-20	presence
6590	18	5	2025-05-20	late
6591	19	1	2025-05-20	presence
6592	19	2	2025-05-20	absence
6593	19	3	2025-05-20	presence
6594	19	4	2025-05-20	presence
6595	19	5	2025-05-20	presence
6596	20	1	2025-05-20	presence
6597	20	2	2025-05-20	presence
6598	20	3	2025-05-20	presence
6599	20	4	2025-05-20	late
6600	20	5	2025-05-20	presence
6601	21	37	2025-05-20	presence
6602	21	38	2025-05-20	presence
6603	21	39	2025-05-20	presence
6604	21	40	2025-05-20	presence
6605	21	41	2025-05-20	presence
6606	22	37	2025-05-20	presence
6607	22	38	2025-05-20	excused absence
6608	22	39	2025-05-20	presence
6609	22	40	2025-05-20	presence
6610	22	41	2025-05-20	presence
6611	23	37	2025-05-20	presence
6612	23	38	2025-05-20	presence
6613	23	39	2025-05-20	presence
6614	23	40	2025-05-20	presence
6615	23	41	2025-05-20	presence
6616	24	37	2025-05-20	presence
6617	24	38	2025-05-20	presence
6618	24	39	2025-05-20	presence
6619	24	40	2025-05-20	presence
6620	24	41	2025-05-20	presence
6621	25	37	2025-05-20	late
6622	25	38	2025-05-20	late
6623	25	39	2025-05-20	presence
6624	25	40	2025-05-20	presence
6625	25	41	2025-05-20	late
6626	26	37	2025-05-20	presence
6627	26	38	2025-05-20	presence
6628	26	39	2025-05-20	late
6629	26	40	2025-05-20	excused absence
6630	26	41	2025-05-20	presence
6631	27	37	2025-05-20	presence
6632	27	38	2025-05-20	late
6633	27	39	2025-05-20	presence
6634	27	40	2025-05-20	presence
6635	27	41	2025-05-20	excused absence
6636	28	37	2025-05-20	presence
6637	28	38	2025-05-20	presence
6638	28	39	2025-05-20	presence
6639	28	40	2025-05-20	presence
6640	28	41	2025-05-20	presence
6641	29	37	2025-05-20	presence
6642	29	38	2025-05-20	presence
6643	29	39	2025-05-20	excused absence
6644	29	40	2025-05-20	excused absence
6645	29	41	2025-05-20	presence
6646	30	37	2025-05-20	presence
6647	30	38	2025-05-20	presence
6648	30	39	2025-05-20	presence
6649	30	40	2025-05-20	presence
6650	30	41	2025-05-20	presence
6651	31	37	2025-05-20	presence
6652	31	38	2025-05-20	excused absence
6653	31	39	2025-05-20	presence
6654	31	40	2025-05-20	presence
6655	31	41	2025-05-20	presence
6656	32	37	2025-05-20	presence
6657	32	38	2025-05-20	presence
6658	32	39	2025-05-20	presence
6659	32	40	2025-05-20	presence
6660	32	41	2025-05-20	presence
6661	33	37	2025-05-20	presence
6662	33	38	2025-05-20	presence
6663	33	39	2025-05-20	presence
6664	33	40	2025-05-20	late
6665	33	41	2025-05-20	late
6666	34	37	2025-05-20	excused absence
6667	34	38	2025-05-20	presence
6668	34	39	2025-05-20	presence
6669	34	40	2025-05-20	presence
6670	34	41	2025-05-20	presence
6671	35	37	2025-05-20	presence
6672	35	38	2025-05-20	presence
6673	35	39	2025-05-20	presence
6674	35	40	2025-05-20	presence
6675	35	41	2025-05-20	presence
6676	36	37	2025-05-20	presence
6677	36	38	2025-05-20	presence
6678	36	39	2025-05-20	absence
6679	36	40	2025-05-20	late
6680	36	41	2025-05-20	presence
6681	37	37	2025-05-20	presence
6682	37	38	2025-05-20	presence
6683	37	39	2025-05-20	presence
6684	37	40	2025-05-20	absence
6685	37	41	2025-05-20	presence
6686	38	37	2025-05-20	presence
6687	38	38	2025-05-20	presence
6688	38	39	2025-05-20	presence
6689	38	40	2025-05-20	presence
6690	38	41	2025-05-20	presence
6691	39	37	2025-05-20	presence
6692	39	38	2025-05-20	presence
6693	39	39	2025-05-20	presence
6694	39	40	2025-05-20	presence
6695	39	41	2025-05-20	excused absence
6696	40	37	2025-05-20	excused absence
6697	40	38	2025-05-20	presence
6698	40	39	2025-05-20	presence
6699	40	40	2025-05-20	presence
6700	40	41	2025-05-20	presence
6701	41	73	2025-05-20	presence
6702	41	74	2025-05-20	presence
6703	41	75	2025-05-20	presence
6704	41	76	2025-05-20	presence
6705	41	77	2025-05-20	presence
6706	42	73	2025-05-20	presence
6707	42	74	2025-05-20	presence
6708	42	75	2025-05-20	presence
6709	42	76	2025-05-20	presence
6710	42	77	2025-05-20	presence
6711	43	73	2025-05-20	absence
6712	43	74	2025-05-20	presence
6713	43	75	2025-05-20	presence
6714	43	76	2025-05-20	presence
6715	43	77	2025-05-20	absence
6716	44	73	2025-05-20	presence
6717	44	74	2025-05-20	presence
6718	44	75	2025-05-20	late
6719	44	76	2025-05-20	presence
6720	44	77	2025-05-20	presence
6721	45	73	2025-05-20	absence
6722	45	74	2025-05-20	presence
6723	45	75	2025-05-20	absence
6724	45	76	2025-05-20	late
6725	45	77	2025-05-20	presence
6726	46	73	2025-05-20	presence
6727	46	74	2025-05-20	presence
6728	46	75	2025-05-20	presence
6729	46	76	2025-05-20	presence
6730	46	77	2025-05-20	presence
6731	47	73	2025-05-20	presence
6732	47	74	2025-05-20	presence
6733	47	75	2025-05-20	presence
6734	47	76	2025-05-20	late
6735	47	77	2025-05-20	presence
6736	48	73	2025-05-20	presence
6737	48	74	2025-05-20	presence
6738	48	75	2025-05-20	presence
6739	48	76	2025-05-20	presence
6740	48	77	2025-05-20	presence
6741	49	73	2025-05-20	absence
6742	49	74	2025-05-20	presence
6743	49	75	2025-05-20	presence
6744	49	76	2025-05-20	absence
6745	49	77	2025-05-20	presence
6746	50	73	2025-05-20	presence
6747	50	74	2025-05-20	presence
6748	50	75	2025-05-20	presence
6749	50	76	2025-05-20	presence
6750	50	77	2025-05-20	presence
6751	51	73	2025-05-20	presence
6752	51	74	2025-05-20	presence
6753	51	75	2025-05-20	presence
6754	51	76	2025-05-20	presence
6755	51	77	2025-05-20	presence
6756	52	73	2025-05-20	presence
6757	52	74	2025-05-20	presence
6758	52	75	2025-05-20	presence
6759	52	76	2025-05-20	presence
6760	52	77	2025-05-20	absence
6761	53	73	2025-05-20	presence
6762	53	74	2025-05-20	presence
6763	53	75	2025-05-20	presence
6764	53	76	2025-05-20	late
6765	53	77	2025-05-20	presence
6766	54	73	2025-05-20	presence
6767	54	74	2025-05-20	presence
6768	54	75	2025-05-20	presence
6769	54	76	2025-05-20	late
6770	54	77	2025-05-20	presence
6771	55	73	2025-05-20	presence
6772	55	74	2025-05-20	presence
6773	55	75	2025-05-20	presence
6774	55	76	2025-05-20	late
6775	55	77	2025-05-20	presence
6776	56	73	2025-05-20	presence
6777	56	74	2025-05-20	presence
6778	56	75	2025-05-20	presence
6779	56	76	2025-05-20	excused absence
6780	56	77	2025-05-20	presence
6781	57	73	2025-05-20	excused absence
6782	57	74	2025-05-20	presence
6783	57	75	2025-05-20	presence
6784	57	76	2025-05-20	presence
6785	57	77	2025-05-20	presence
6786	58	73	2025-05-20	presence
6787	58	74	2025-05-20	late
6788	58	75	2025-05-20	presence
6789	58	76	2025-05-20	presence
6790	58	77	2025-05-20	absence
6791	59	73	2025-05-20	presence
6792	59	74	2025-05-20	presence
6793	59	75	2025-05-20	presence
6794	59	76	2025-05-20	presence
6795	59	77	2025-05-20	presence
6796	60	73	2025-05-20	presence
6797	60	74	2025-05-20	presence
6798	60	75	2025-05-20	presence
6799	60	76	2025-05-20	late
6800	60	77	2025-05-20	presence
6801	61	95	2025-05-20	presence
6802	61	96	2025-05-20	excused absence
6803	61	97	2025-05-20	presence
6804	61	98	2025-05-20	presence
6805	61	99	2025-05-20	presence
6806	62	95	2025-05-20	presence
6807	62	96	2025-05-20	late
6808	62	97	2025-05-20	presence
6809	62	98	2025-05-20	presence
6810	62	99	2025-05-20	presence
6811	63	95	2025-05-20	presence
6812	63	96	2025-05-20	presence
6813	63	97	2025-05-20	presence
6814	63	98	2025-05-20	presence
6815	63	99	2025-05-20	presence
6816	64	95	2025-05-20	presence
6817	64	96	2025-05-20	presence
6818	64	97	2025-05-20	presence
6819	64	98	2025-05-20	presence
6820	64	99	2025-05-20	absence
6821	65	95	2025-05-20	excused absence
6822	65	96	2025-05-20	presence
6823	65	97	2025-05-20	presence
6824	65	98	2025-05-20	presence
6825	65	99	2025-05-20	presence
6826	66	95	2025-05-20	presence
6827	66	96	2025-05-20	presence
6828	66	97	2025-05-20	presence
6829	66	98	2025-05-20	presence
6830	66	99	2025-05-20	presence
6831	67	95	2025-05-20	presence
6832	67	96	2025-05-20	presence
6833	67	97	2025-05-20	absence
6834	67	98	2025-05-20	presence
6835	67	99	2025-05-20	presence
6836	68	95	2025-05-20	presence
6837	68	96	2025-05-20	presence
6838	68	97	2025-05-20	presence
6839	68	98	2025-05-20	presence
6840	68	99	2025-05-20	presence
6841	69	95	2025-05-20	presence
6842	69	96	2025-05-20	late
6843	69	97	2025-05-20	presence
6844	69	98	2025-05-20	excused absence
6845	69	99	2025-05-20	excused absence
6846	70	95	2025-05-20	presence
6847	70	96	2025-05-20	presence
6848	70	97	2025-05-20	presence
6849	70	98	2025-05-20	presence
6850	70	99	2025-05-20	presence
6851	71	95	2025-05-20	presence
6852	71	96	2025-05-20	presence
6853	71	97	2025-05-20	presence
6854	71	98	2025-05-20	presence
6855	71	99	2025-05-20	presence
6856	72	95	2025-05-20	presence
6857	72	96	2025-05-20	presence
6858	72	97	2025-05-20	presence
6859	72	98	2025-05-20	presence
6860	72	99	2025-05-20	absence
6861	73	95	2025-05-20	presence
6862	73	96	2025-05-20	presence
6863	73	97	2025-05-20	presence
6864	73	98	2025-05-20	presence
6865	73	99	2025-05-20	presence
6866	74	95	2025-05-20	presence
6867	74	96	2025-05-20	presence
6868	74	97	2025-05-20	presence
6869	74	98	2025-05-20	presence
6870	74	99	2025-05-20	presence
6871	75	95	2025-05-20	presence
6872	75	96	2025-05-20	presence
6873	75	97	2025-05-20	presence
6874	75	98	2025-05-20	presence
6875	75	99	2025-05-20	presence
6876	76	95	2025-05-20	presence
6877	76	96	2025-05-20	presence
6878	76	97	2025-05-20	presence
6879	76	98	2025-05-20	presence
6880	76	99	2025-05-20	presence
6881	77	95	2025-05-20	presence
6882	77	96	2025-05-20	presence
6883	77	97	2025-05-20	presence
6884	77	98	2025-05-20	presence
6885	77	99	2025-05-20	presence
6886	78	95	2025-05-20	presence
6887	78	96	2025-05-20	absence
6888	78	97	2025-05-20	presence
6889	78	98	2025-05-20	presence
6890	78	99	2025-05-20	presence
6891	79	95	2025-05-20	absence
6892	79	96	2025-05-20	presence
6893	79	97	2025-05-20	presence
6894	79	98	2025-05-20	presence
6895	79	99	2025-05-20	presence
6896	80	95	2025-05-20	presence
6897	80	96	2025-05-20	presence
6898	80	97	2025-05-20	presence
6899	80	98	2025-05-20	excused absence
6900	80	99	2025-05-20	presence
6901	81	117	2025-05-20	presence
6902	81	118	2025-05-20	presence
6903	81	119	2025-05-20	presence
6904	81	120	2025-05-20	presence
6905	81	121	2025-05-20	presence
6906	82	117	2025-05-20	presence
6907	82	118	2025-05-20	presence
6908	82	119	2025-05-20	presence
6909	82	120	2025-05-20	presence
6910	82	121	2025-05-20	presence
6911	83	117	2025-05-20	presence
6912	83	118	2025-05-20	presence
6913	83	119	2025-05-20	presence
6914	83	120	2025-05-20	presence
6915	83	121	2025-05-20	presence
6916	84	117	2025-05-20	excused absence
6917	84	118	2025-05-20	presence
6918	84	119	2025-05-20	presence
6919	84	120	2025-05-20	excused absence
6920	84	121	2025-05-20	presence
6921	85	117	2025-05-20	presence
6922	85	118	2025-05-20	presence
6923	85	119	2025-05-20	presence
6924	85	120	2025-05-20	presence
6925	85	121	2025-05-20	presence
6926	86	117	2025-05-20	late
6927	86	118	2025-05-20	presence
6928	86	119	2025-05-20	absence
6929	86	120	2025-05-20	excused absence
6930	86	121	2025-05-20	presence
6931	87	117	2025-05-20	presence
6932	87	118	2025-05-20	presence
6933	87	119	2025-05-20	absence
6934	87	120	2025-05-20	presence
6935	87	121	2025-05-20	late
6936	88	117	2025-05-20	presence
6937	88	118	2025-05-20	presence
6938	88	119	2025-05-20	excused absence
6939	88	120	2025-05-20	presence
6940	88	121	2025-05-20	presence
6941	89	117	2025-05-20	presence
6942	89	118	2025-05-20	presence
6943	89	119	2025-05-20	presence
6944	89	120	2025-05-20	presence
6945	89	121	2025-05-20	presence
6946	90	117	2025-05-20	presence
6947	90	118	2025-05-20	presence
6948	90	119	2025-05-20	presence
6949	90	120	2025-05-20	presence
6950	90	121	2025-05-20	presence
6951	91	117	2025-05-20	presence
6952	91	118	2025-05-20	presence
6953	91	119	2025-05-20	presence
6954	91	120	2025-05-20	presence
6955	91	121	2025-05-20	presence
6956	92	117	2025-05-20	absence
6957	92	118	2025-05-20	presence
6958	92	119	2025-05-20	presence
6959	92	120	2025-05-20	presence
6960	92	121	2025-05-20	presence
6961	93	117	2025-05-20	presence
6962	93	118	2025-05-20	presence
6963	93	119	2025-05-20	presence
6964	93	120	2025-05-20	presence
6965	93	121	2025-05-20	presence
6966	94	117	2025-05-20	presence
6967	94	118	2025-05-20	presence
6968	94	119	2025-05-20	presence
6969	94	120	2025-05-20	presence
6970	94	121	2025-05-20	presence
6971	95	117	2025-05-20	presence
6972	95	118	2025-05-20	absence
6973	95	119	2025-05-20	presence
6974	95	120	2025-05-20	presence
6975	95	121	2025-05-20	presence
6976	96	117	2025-05-20	presence
6977	96	118	2025-05-20	late
6978	96	119	2025-05-20	presence
6979	96	120	2025-05-20	excused absence
6980	96	121	2025-05-20	presence
6981	97	117	2025-05-20	presence
6982	97	118	2025-05-20	presence
6983	97	119	2025-05-20	presence
6984	97	120	2025-05-20	presence
6985	97	121	2025-05-20	presence
6986	98	117	2025-05-20	presence
6987	98	118	2025-05-20	presence
6988	98	119	2025-05-20	presence
6989	98	120	2025-05-20	presence
6990	98	121	2025-05-20	presence
6991	99	117	2025-05-20	presence
6992	99	118	2025-05-20	absence
6993	99	119	2025-05-20	presence
6994	99	120	2025-05-20	presence
6995	99	121	2025-05-20	presence
6996	100	117	2025-05-20	excused absence
6997	100	118	2025-05-20	late
6998	100	119	2025-05-20	presence
6999	100	120	2025-05-20	presence
7000	100	121	2025-05-20	absence
7001	1	1	2025-05-19	presence
7002	1	2	2025-05-19	presence
7003	1	3	2025-05-19	presence
7004	1	4	2025-05-19	presence
7005	1	5	2025-05-19	absence
7006	2	1	2025-05-19	absence
7007	2	2	2025-05-19	presence
7008	2	3	2025-05-19	presence
7009	2	4	2025-05-19	presence
7010	2	5	2025-05-19	excused absence
7011	3	1	2025-05-19	presence
7012	3	2	2025-05-19	presence
7013	3	3	2025-05-19	excused absence
7014	3	4	2025-05-19	presence
7015	3	5	2025-05-19	presence
7016	4	1	2025-05-19	presence
7017	4	2	2025-05-19	presence
7018	4	3	2025-05-19	presence
7019	4	4	2025-05-19	presence
7020	4	5	2025-05-19	presence
7021	5	1	2025-05-19	presence
7022	5	2	2025-05-19	presence
7023	5	3	2025-05-19	presence
7024	5	4	2025-05-19	presence
7025	5	5	2025-05-19	excused absence
7026	6	1	2025-05-19	presence
7027	6	2	2025-05-19	excused absence
7028	6	3	2025-05-19	presence
7029	6	4	2025-05-19	excused absence
7030	6	5	2025-05-19	presence
7031	7	1	2025-05-19	presence
7032	7	2	2025-05-19	presence
7033	7	3	2025-05-19	presence
7034	7	4	2025-05-19	presence
7035	7	5	2025-05-19	presence
7036	8	1	2025-05-19	presence
7037	8	2	2025-05-19	presence
7038	8	3	2025-05-19	presence
7039	8	4	2025-05-19	presence
7040	8	5	2025-05-19	presence
7041	9	1	2025-05-19	presence
7042	9	2	2025-05-19	presence
7043	9	3	2025-05-19	presence
7044	9	4	2025-05-19	presence
7045	9	5	2025-05-19	presence
7046	10	1	2025-05-19	presence
7047	10	2	2025-05-19	presence
7048	10	3	2025-05-19	presence
7049	10	4	2025-05-19	presence
7050	10	5	2025-05-19	presence
7051	11	1	2025-05-19	presence
7052	11	2	2025-05-19	presence
7053	11	3	2025-05-19	presence
7054	11	4	2025-05-19	presence
7055	11	5	2025-05-19	presence
7056	12	1	2025-05-19	presence
7057	12	2	2025-05-19	late
7058	12	3	2025-05-19	presence
7059	12	4	2025-05-19	absence
7060	12	5	2025-05-19	presence
7061	13	1	2025-05-19	presence
7062	13	2	2025-05-19	presence
7063	13	3	2025-05-19	presence
7064	13	4	2025-05-19	presence
7065	13	5	2025-05-19	presence
7066	14	1	2025-05-19	late
7067	14	2	2025-05-19	presence
7068	14	3	2025-05-19	excused absence
7069	14	4	2025-05-19	presence
7070	14	5	2025-05-19	presence
7071	15	1	2025-05-19	presence
7072	15	2	2025-05-19	presence
7073	15	3	2025-05-19	presence
7074	15	4	2025-05-19	presence
7075	15	5	2025-05-19	presence
7076	16	1	2025-05-19	late
7077	16	2	2025-05-19	presence
7078	16	3	2025-05-19	presence
7079	16	4	2025-05-19	late
7080	16	5	2025-05-19	presence
7081	17	1	2025-05-19	presence
7082	17	2	2025-05-19	excused absence
7083	17	3	2025-05-19	presence
7084	17	4	2025-05-19	presence
7085	17	5	2025-05-19	presence
7086	18	1	2025-05-19	presence
7087	18	2	2025-05-19	presence
7088	18	3	2025-05-19	presence
7089	18	4	2025-05-19	presence
7090	18	5	2025-05-19	presence
7091	19	1	2025-05-19	presence
7092	19	2	2025-05-19	presence
7093	19	3	2025-05-19	presence
7094	19	4	2025-05-19	presence
7095	19	5	2025-05-19	presence
7096	20	1	2025-05-19	presence
7097	20	2	2025-05-19	presence
7098	20	3	2025-05-19	presence
7099	20	4	2025-05-19	presence
7100	20	5	2025-05-19	presence
7101	21	37	2025-05-19	presence
7102	21	38	2025-05-19	presence
7103	21	39	2025-05-19	presence
7104	21	40	2025-05-19	presence
7105	21	41	2025-05-19	presence
7106	22	37	2025-05-19	presence
7107	22	38	2025-05-19	presence
7108	22	39	2025-05-19	presence
7109	22	40	2025-05-19	presence
7110	22	41	2025-05-19	presence
7111	23	37	2025-05-19	presence
7112	23	38	2025-05-19	presence
7113	23	39	2025-05-19	presence
7114	23	40	2025-05-19	excused absence
7115	23	41	2025-05-19	presence
7116	24	37	2025-05-19	presence
7117	24	38	2025-05-19	presence
7118	24	39	2025-05-19	presence
7119	24	40	2025-05-19	presence
7120	24	41	2025-05-19	presence
7121	25	37	2025-05-19	presence
7122	25	38	2025-05-19	presence
7123	25	39	2025-05-19	presence
7124	25	40	2025-05-19	absence
7125	25	41	2025-05-19	presence
7126	26	37	2025-05-19	presence
7127	26	38	2025-05-19	presence
7128	26	39	2025-05-19	absence
7129	26	40	2025-05-19	presence
7130	26	41	2025-05-19	presence
7131	27	37	2025-05-19	presence
7132	27	38	2025-05-19	presence
7133	27	39	2025-05-19	presence
7134	27	40	2025-05-19	presence
7135	27	41	2025-05-19	presence
7136	28	37	2025-05-19	presence
7137	28	38	2025-05-19	presence
7138	28	39	2025-05-19	presence
7139	28	40	2025-05-19	presence
7140	28	41	2025-05-19	presence
7141	29	37	2025-05-19	presence
7142	29	38	2025-05-19	presence
7143	29	39	2025-05-19	presence
7144	29	40	2025-05-19	presence
7145	29	41	2025-05-19	presence
7146	30	37	2025-05-19	presence
7147	30	38	2025-05-19	presence
7148	30	39	2025-05-19	presence
7149	30	40	2025-05-19	presence
7150	30	41	2025-05-19	presence
7151	31	37	2025-05-19	presence
7152	31	38	2025-05-19	presence
7153	31	39	2025-05-19	presence
7154	31	40	2025-05-19	presence
7155	31	41	2025-05-19	presence
7156	32	37	2025-05-19	presence
7157	32	38	2025-05-19	presence
7158	32	39	2025-05-19	presence
7159	32	40	2025-05-19	presence
7160	32	41	2025-05-19	presence
7161	33	37	2025-05-19	presence
7162	33	38	2025-05-19	presence
7163	33	39	2025-05-19	presence
7164	33	40	2025-05-19	presence
7165	33	41	2025-05-19	excused absence
7166	34	37	2025-05-19	presence
7167	34	38	2025-05-19	presence
7168	34	39	2025-05-19	presence
7169	34	40	2025-05-19	presence
7170	34	41	2025-05-19	presence
7171	35	37	2025-05-19	presence
7172	35	38	2025-05-19	absence
7173	35	39	2025-05-19	absence
7174	35	40	2025-05-19	presence
7175	35	41	2025-05-19	presence
7176	36	37	2025-05-19	presence
7177	36	38	2025-05-19	presence
7178	36	39	2025-05-19	presence
7179	36	40	2025-05-19	presence
7180	36	41	2025-05-19	late
7181	37	37	2025-05-19	excused absence
7182	37	38	2025-05-19	presence
7183	37	39	2025-05-19	presence
7184	37	40	2025-05-19	excused absence
7185	37	41	2025-05-19	excused absence
7186	38	37	2025-05-19	presence
7187	38	38	2025-05-19	presence
7188	38	39	2025-05-19	late
7189	38	40	2025-05-19	presence
7190	38	41	2025-05-19	presence
7191	39	37	2025-05-19	presence
7192	39	38	2025-05-19	presence
7193	39	39	2025-05-19	presence
7194	39	40	2025-05-19	excused absence
7195	39	41	2025-05-19	absence
7196	40	37	2025-05-19	presence
7197	40	38	2025-05-19	presence
7198	40	39	2025-05-19	presence
7199	40	40	2025-05-19	presence
7200	40	41	2025-05-19	presence
7201	41	73	2025-05-19	late
7202	41	74	2025-05-19	presence
7203	41	75	2025-05-19	late
7204	41	76	2025-05-19	excused absence
7205	41	77	2025-05-19	presence
7206	42	73	2025-05-19	presence
7207	42	74	2025-05-19	presence
7208	42	75	2025-05-19	presence
7209	42	76	2025-05-19	presence
7210	42	77	2025-05-19	presence
7211	43	73	2025-05-19	presence
7212	43	74	2025-05-19	presence
7213	43	75	2025-05-19	presence
7214	43	76	2025-05-19	presence
7215	43	77	2025-05-19	late
7216	44	73	2025-05-19	presence
7217	44	74	2025-05-19	presence
7218	44	75	2025-05-19	presence
7219	44	76	2025-05-19	presence
7220	44	77	2025-05-19	presence
7221	45	73	2025-05-19	presence
7222	45	74	2025-05-19	presence
7223	45	75	2025-05-19	late
7224	45	76	2025-05-19	presence
7225	45	77	2025-05-19	presence
7226	46	73	2025-05-19	presence
7227	46	74	2025-05-19	late
7228	46	75	2025-05-19	presence
7229	46	76	2025-05-19	presence
7230	46	77	2025-05-19	presence
7231	47	73	2025-05-19	presence
7232	47	74	2025-05-19	presence
7233	47	75	2025-05-19	presence
7234	47	76	2025-05-19	presence
7235	47	77	2025-05-19	presence
7236	48	73	2025-05-19	presence
7237	48	74	2025-05-19	presence
7238	48	75	2025-05-19	late
7239	48	76	2025-05-19	presence
7240	48	77	2025-05-19	presence
7241	49	73	2025-05-19	excused absence
7242	49	74	2025-05-19	presence
7243	49	75	2025-05-19	presence
7244	49	76	2025-05-19	presence
7245	49	77	2025-05-19	presence
7246	50	73	2025-05-19	presence
7247	50	74	2025-05-19	presence
7248	50	75	2025-05-19	presence
7249	50	76	2025-05-19	presence
7250	50	77	2025-05-19	presence
7251	51	73	2025-05-19	presence
7252	51	74	2025-05-19	presence
7253	51	75	2025-05-19	presence
7254	51	76	2025-05-19	presence
7255	51	77	2025-05-19	presence
7256	52	73	2025-05-19	excused absence
7257	52	74	2025-05-19	presence
7258	52	75	2025-05-19	presence
7259	52	76	2025-05-19	presence
7260	52	77	2025-05-19	presence
7261	53	73	2025-05-19	presence
7262	53	74	2025-05-19	excused absence
7263	53	75	2025-05-19	presence
7264	53	76	2025-05-19	presence
7265	53	77	2025-05-19	presence
7266	54	73	2025-05-19	presence
7267	54	74	2025-05-19	absence
7268	54	75	2025-05-19	absence
7269	54	76	2025-05-19	absence
7270	54	77	2025-05-19	presence
7271	55	73	2025-05-19	presence
7272	55	74	2025-05-19	presence
7273	55	75	2025-05-19	presence
7274	55	76	2025-05-19	presence
7275	55	77	2025-05-19	late
7276	56	73	2025-05-19	presence
7277	56	74	2025-05-19	presence
7278	56	75	2025-05-19	presence
7279	56	76	2025-05-19	presence
7280	56	77	2025-05-19	presence
7281	57	73	2025-05-19	presence
7282	57	74	2025-05-19	presence
7283	57	75	2025-05-19	presence
7284	57	76	2025-05-19	presence
7285	57	77	2025-05-19	presence
7286	58	73	2025-05-19	presence
7287	58	74	2025-05-19	presence
7288	58	75	2025-05-19	presence
7289	58	76	2025-05-19	presence
7290	58	77	2025-05-19	presence
7291	59	73	2025-05-19	presence
7292	59	74	2025-05-19	presence
7293	59	75	2025-05-19	late
7294	59	76	2025-05-19	presence
7295	59	77	2025-05-19	presence
7296	60	73	2025-05-19	absence
7297	60	74	2025-05-19	presence
7298	60	75	2025-05-19	presence
7299	60	76	2025-05-19	late
7300	60	77	2025-05-19	presence
7301	61	95	2025-05-19	presence
7302	61	96	2025-05-19	presence
7303	61	97	2025-05-19	presence
7304	61	98	2025-05-19	presence
7305	61	99	2025-05-19	late
7306	62	95	2025-05-19	presence
7307	62	96	2025-05-19	presence
7308	62	97	2025-05-19	presence
7309	62	98	2025-05-19	presence
7310	62	99	2025-05-19	presence
7311	63	95	2025-05-19	presence
7312	63	96	2025-05-19	presence
7313	63	97	2025-05-19	presence
7314	63	98	2025-05-19	presence
7315	63	99	2025-05-19	presence
7316	64	95	2025-05-19	presence
7317	64	96	2025-05-19	excused absence
7318	64	97	2025-05-19	presence
7319	64	98	2025-05-19	presence
7320	64	99	2025-05-19	presence
7321	65	95	2025-05-19	presence
7322	65	96	2025-05-19	presence
7323	65	97	2025-05-19	presence
7324	65	98	2025-05-19	presence
7325	65	99	2025-05-19	late
7326	66	95	2025-05-19	presence
7327	66	96	2025-05-19	presence
7328	66	97	2025-05-19	presence
7329	66	98	2025-05-19	presence
7330	66	99	2025-05-19	presence
7331	67	95	2025-05-19	presence
7332	67	96	2025-05-19	presence
7333	67	97	2025-05-19	presence
7334	67	98	2025-05-19	presence
7335	67	99	2025-05-19	excused absence
7336	68	95	2025-05-19	presence
7337	68	96	2025-05-19	presence
7338	68	97	2025-05-19	presence
7339	68	98	2025-05-19	presence
7340	68	99	2025-05-19	presence
7341	69	95	2025-05-19	presence
7342	69	96	2025-05-19	presence
7343	69	97	2025-05-19	presence
7344	69	98	2025-05-19	presence
7345	69	99	2025-05-19	presence
7346	70	95	2025-05-19	presence
7347	70	96	2025-05-19	absence
7348	70	97	2025-05-19	presence
7349	70	98	2025-05-19	presence
7350	70	99	2025-05-19	presence
7351	71	95	2025-05-19	presence
7352	71	96	2025-05-19	presence
7353	71	97	2025-05-19	excused absence
7354	71	98	2025-05-19	presence
7355	71	99	2025-05-19	presence
7356	72	95	2025-05-19	presence
7357	72	96	2025-05-19	presence
7358	72	97	2025-05-19	presence
7359	72	98	2025-05-19	presence
7360	72	99	2025-05-19	late
7361	73	95	2025-05-19	presence
7362	73	96	2025-05-19	presence
7363	73	97	2025-05-19	presence
7364	73	98	2025-05-19	late
7365	73	99	2025-05-19	presence
7366	74	95	2025-05-19	presence
7367	74	96	2025-05-19	presence
7368	74	97	2025-05-19	presence
7369	74	98	2025-05-19	presence
7370	74	99	2025-05-19	presence
7371	75	95	2025-05-19	presence
7372	75	96	2025-05-19	presence
7373	75	97	2025-05-19	presence
7374	75	98	2025-05-19	presence
7375	75	99	2025-05-19	presence
7376	76	95	2025-05-19	presence
7377	76	96	2025-05-19	presence
7378	76	97	2025-05-19	presence
7379	76	98	2025-05-19	presence
7380	76	99	2025-05-19	presence
7381	77	95	2025-05-19	presence
7382	77	96	2025-05-19	absence
7383	77	97	2025-05-19	presence
7384	77	98	2025-05-19	late
7385	77	99	2025-05-19	presence
7386	78	95	2025-05-19	late
7387	78	96	2025-05-19	presence
7388	78	97	2025-05-19	presence
7389	78	98	2025-05-19	presence
7390	78	99	2025-05-19	presence
7391	79	95	2025-05-19	presence
7392	79	96	2025-05-19	presence
7393	79	97	2025-05-19	presence
7394	79	98	2025-05-19	presence
7395	79	99	2025-05-19	presence
7396	80	95	2025-05-19	presence
7397	80	96	2025-05-19	presence
7398	80	97	2025-05-19	presence
7399	80	98	2025-05-19	presence
7400	80	99	2025-05-19	presence
7401	81	117	2025-05-19	excused absence
7402	81	118	2025-05-19	presence
7403	81	119	2025-05-19	presence
7404	81	120	2025-05-19	presence
7405	81	121	2025-05-19	presence
7406	82	117	2025-05-19	presence
7407	82	118	2025-05-19	presence
7408	82	119	2025-05-19	excused absence
7409	82	120	2025-05-19	presence
7410	82	121	2025-05-19	presence
7411	83	117	2025-05-19	presence
7412	83	118	2025-05-19	absence
7413	83	119	2025-05-19	presence
7414	83	120	2025-05-19	excused absence
7415	83	121	2025-05-19	presence
7416	84	117	2025-05-19	presence
7417	84	118	2025-05-19	presence
7418	84	119	2025-05-19	presence
7419	84	120	2025-05-19	presence
7420	84	121	2025-05-19	presence
7421	85	117	2025-05-19	absence
7422	85	118	2025-05-19	presence
7423	85	119	2025-05-19	absence
7424	85	120	2025-05-19	presence
7425	85	121	2025-05-19	presence
7426	86	117	2025-05-19	presence
7427	86	118	2025-05-19	presence
7428	86	119	2025-05-19	presence
7429	86	120	2025-05-19	presence
7430	86	121	2025-05-19	presence
7431	87	117	2025-05-19	presence
7432	87	118	2025-05-19	presence
7433	87	119	2025-05-19	presence
7434	87	120	2025-05-19	presence
7435	87	121	2025-05-19	presence
7436	88	117	2025-05-19	presence
7437	88	118	2025-05-19	absence
7438	88	119	2025-05-19	presence
7439	88	120	2025-05-19	absence
7440	88	121	2025-05-19	presence
7441	89	117	2025-05-19	absence
7442	89	118	2025-05-19	presence
7443	89	119	2025-05-19	excused absence
7444	89	120	2025-05-19	presence
7445	89	121	2025-05-19	presence
7446	90	117	2025-05-19	presence
7447	90	118	2025-05-19	presence
7448	90	119	2025-05-19	presence
7449	90	120	2025-05-19	absence
7450	90	121	2025-05-19	presence
7451	91	117	2025-05-19	presence
7452	91	118	2025-05-19	presence
7453	91	119	2025-05-19	presence
7454	91	120	2025-05-19	presence
7455	91	121	2025-05-19	excused absence
7456	92	117	2025-05-19	presence
7457	92	118	2025-05-19	presence
7458	92	119	2025-05-19	presence
7459	92	120	2025-05-19	absence
7460	92	121	2025-05-19	presence
7461	93	117	2025-05-19	presence
7462	93	118	2025-05-19	presence
7463	93	119	2025-05-19	presence
7464	93	120	2025-05-19	presence
7465	93	121	2025-05-19	presence
7466	94	117	2025-05-19	presence
7467	94	118	2025-05-19	presence
7468	94	119	2025-05-19	presence
7469	94	120	2025-05-19	presence
7470	94	121	2025-05-19	presence
7471	95	117	2025-05-19	late
7472	95	118	2025-05-19	presence
7473	95	119	2025-05-19	presence
7474	95	120	2025-05-19	presence
7475	95	121	2025-05-19	presence
7476	96	117	2025-05-19	excused absence
7477	96	118	2025-05-19	absence
7478	96	119	2025-05-19	presence
7479	96	120	2025-05-19	presence
7480	96	121	2025-05-19	presence
7481	97	117	2025-05-19	presence
7482	97	118	2025-05-19	absence
7483	97	119	2025-05-19	presence
7484	97	120	2025-05-19	presence
7485	97	121	2025-05-19	excused absence
7486	98	117	2025-05-19	presence
7487	98	118	2025-05-19	late
7488	98	119	2025-05-19	presence
7489	98	120	2025-05-19	presence
7490	98	121	2025-05-19	presence
7491	99	117	2025-05-19	presence
7492	99	118	2025-05-19	presence
7493	99	119	2025-05-19	presence
7494	99	120	2025-05-19	presence
7495	99	121	2025-05-19	presence
7496	100	117	2025-05-19	presence
7497	100	118	2025-05-19	presence
7498	100	119	2025-05-19	excused absence
7499	100	120	2025-05-19	presence
7500	100	121	2025-05-19	absence
7501	1	1	2025-05-16	presence
7502	1	2	2025-05-16	presence
7503	1	3	2025-05-16	absence
7504	1	4	2025-05-16	presence
7505	1	5	2025-05-16	presence
7506	2	1	2025-05-16	presence
7507	2	2	2025-05-16	presence
7508	2	3	2025-05-16	presence
7509	2	4	2025-05-16	presence
7510	2	5	2025-05-16	presence
7511	3	1	2025-05-16	presence
7512	3	2	2025-05-16	presence
7513	3	3	2025-05-16	presence
7514	3	4	2025-05-16	presence
7515	3	5	2025-05-16	excused absence
7516	4	1	2025-05-16	late
7517	4	2	2025-05-16	presence
7518	4	3	2025-05-16	presence
7519	4	4	2025-05-16	presence
7520	4	5	2025-05-16	presence
7521	5	1	2025-05-16	presence
7522	5	2	2025-05-16	presence
7523	5	3	2025-05-16	presence
7524	5	4	2025-05-16	presence
7525	5	5	2025-05-16	excused absence
7526	6	1	2025-05-16	presence
7527	6	2	2025-05-16	presence
7528	6	3	2025-05-16	presence
7529	6	4	2025-05-16	presence
7530	6	5	2025-05-16	presence
7531	7	1	2025-05-16	late
7532	7	2	2025-05-16	presence
7533	7	3	2025-05-16	presence
7534	7	4	2025-05-16	presence
7535	7	5	2025-05-16	presence
7536	8	1	2025-05-16	presence
7537	8	2	2025-05-16	excused absence
7538	8	3	2025-05-16	excused absence
7539	8	4	2025-05-16	absence
7540	8	5	2025-05-16	presence
7541	9	1	2025-05-16	presence
7542	9	2	2025-05-16	presence
7543	9	3	2025-05-16	presence
7544	9	4	2025-05-16	excused absence
7545	9	5	2025-05-16	presence
7546	10	1	2025-05-16	presence
7547	10	2	2025-05-16	presence
7548	10	3	2025-05-16	presence
7549	10	4	2025-05-16	presence
7550	10	5	2025-05-16	presence
7551	11	1	2025-05-16	presence
7552	11	2	2025-05-16	presence
7553	11	3	2025-05-16	presence
7554	11	4	2025-05-16	presence
7555	11	5	2025-05-16	presence
7556	12	1	2025-05-16	presence
7557	12	2	2025-05-16	presence
7558	12	3	2025-05-16	presence
7559	12	4	2025-05-16	presence
7560	12	5	2025-05-16	presence
7561	13	1	2025-05-16	late
7562	13	2	2025-05-16	presence
7563	13	3	2025-05-16	presence
7564	13	4	2025-05-16	presence
7565	13	5	2025-05-16	presence
7566	14	1	2025-05-16	presence
7567	14	2	2025-05-16	presence
7568	14	3	2025-05-16	presence
7569	14	4	2025-05-16	presence
7570	14	5	2025-05-16	presence
7571	15	1	2025-05-16	presence
7572	15	2	2025-05-16	presence
7573	15	3	2025-05-16	presence
7574	15	4	2025-05-16	presence
7575	15	5	2025-05-16	late
7576	16	1	2025-05-16	presence
7577	16	2	2025-05-16	late
7578	16	3	2025-05-16	presence
7579	16	4	2025-05-16	presence
7580	16	5	2025-05-16	presence
7581	17	1	2025-05-16	presence
7582	17	2	2025-05-16	excused absence
7583	17	3	2025-05-16	presence
7584	17	4	2025-05-16	absence
7585	17	5	2025-05-16	presence
7586	18	1	2025-05-16	presence
7587	18	2	2025-05-16	presence
7588	18	3	2025-05-16	presence
7589	18	4	2025-05-16	presence
7590	18	5	2025-05-16	presence
7591	19	1	2025-05-16	presence
7592	19	2	2025-05-16	presence
7593	19	3	2025-05-16	presence
7594	19	4	2025-05-16	presence
7595	19	5	2025-05-16	presence
7596	20	1	2025-05-16	presence
7597	20	2	2025-05-16	presence
7598	20	3	2025-05-16	absence
7599	20	4	2025-05-16	presence
7600	20	5	2025-05-16	presence
7601	21	37	2025-05-16	excused absence
7602	21	38	2025-05-16	presence
7603	21	39	2025-05-16	presence
7604	21	40	2025-05-16	presence
7605	21	41	2025-05-16	presence
7606	22	37	2025-05-16	presence
7607	22	38	2025-05-16	presence
7608	22	39	2025-05-16	excused absence
7609	22	40	2025-05-16	presence
7610	22	41	2025-05-16	absence
7611	23	37	2025-05-16	presence
7612	23	38	2025-05-16	presence
7613	23	39	2025-05-16	presence
7614	23	40	2025-05-16	presence
7615	23	41	2025-05-16	presence
7616	24	37	2025-05-16	presence
7617	24	38	2025-05-16	presence
7618	24	39	2025-05-16	late
7619	24	40	2025-05-16	presence
7620	24	41	2025-05-16	presence
7621	25	37	2025-05-16	presence
7622	25	38	2025-05-16	presence
7623	25	39	2025-05-16	presence
7624	25	40	2025-05-16	presence
7625	25	41	2025-05-16	presence
7626	26	37	2025-05-16	presence
7627	26	38	2025-05-16	presence
7628	26	39	2025-05-16	presence
7629	26	40	2025-05-16	presence
7630	26	41	2025-05-16	presence
7631	27	37	2025-05-16	presence
7632	27	38	2025-05-16	presence
7633	27	39	2025-05-16	excused absence
7634	27	40	2025-05-16	presence
7635	27	41	2025-05-16	presence
7636	28	37	2025-05-16	presence
7637	28	38	2025-05-16	presence
7638	28	39	2025-05-16	excused absence
7639	28	40	2025-05-16	late
7640	28	41	2025-05-16	presence
7641	29	37	2025-05-16	presence
7642	29	38	2025-05-16	presence
7643	29	39	2025-05-16	absence
7644	29	40	2025-05-16	presence
7645	29	41	2025-05-16	absence
7646	30	37	2025-05-16	presence
7647	30	38	2025-05-16	presence
7648	30	39	2025-05-16	presence
7649	30	40	2025-05-16	presence
7650	30	41	2025-05-16	presence
7651	31	37	2025-05-16	presence
7652	31	38	2025-05-16	presence
7653	31	39	2025-05-16	excused absence
7654	31	40	2025-05-16	presence
7655	31	41	2025-05-16	presence
7656	32	37	2025-05-16	presence
7657	32	38	2025-05-16	presence
7658	32	39	2025-05-16	presence
7659	32	40	2025-05-16	late
7660	32	41	2025-05-16	presence
7661	33	37	2025-05-16	late
7662	33	38	2025-05-16	presence
7663	33	39	2025-05-16	excused absence
7664	33	40	2025-05-16	presence
7665	33	41	2025-05-16	presence
7666	34	37	2025-05-16	presence
7667	34	38	2025-05-16	presence
7668	34	39	2025-05-16	presence
7669	34	40	2025-05-16	presence
7670	34	41	2025-05-16	presence
7671	35	37	2025-05-16	absence
7672	35	38	2025-05-16	presence
7673	35	39	2025-05-16	presence
7674	35	40	2025-05-16	presence
7675	35	41	2025-05-16	presence
7676	36	37	2025-05-16	excused absence
7677	36	38	2025-05-16	presence
7678	36	39	2025-05-16	presence
7679	36	40	2025-05-16	presence
7680	36	41	2025-05-16	presence
7681	37	37	2025-05-16	presence
7682	37	38	2025-05-16	presence
7683	37	39	2025-05-16	presence
7684	37	40	2025-05-16	presence
7685	37	41	2025-05-16	presence
7686	38	37	2025-05-16	presence
7687	38	38	2025-05-16	excused absence
7688	38	39	2025-05-16	presence
7689	38	40	2025-05-16	presence
7690	38	41	2025-05-16	presence
7691	39	37	2025-05-16	presence
7692	39	38	2025-05-16	presence
7693	39	39	2025-05-16	absence
7694	39	40	2025-05-16	presence
7695	39	41	2025-05-16	presence
7696	40	37	2025-05-16	presence
7697	40	38	2025-05-16	presence
7698	40	39	2025-05-16	presence
7699	40	40	2025-05-16	presence
7700	40	41	2025-05-16	presence
7701	41	73	2025-05-16	absence
7702	41	74	2025-05-16	absence
7703	41	75	2025-05-16	presence
7704	41	76	2025-05-16	presence
7705	41	77	2025-05-16	absence
7706	42	73	2025-05-16	presence
7707	42	74	2025-05-16	presence
7708	42	75	2025-05-16	presence
7709	42	76	2025-05-16	presence
7710	42	77	2025-05-16	presence
7711	43	73	2025-05-16	presence
7712	43	74	2025-05-16	presence
7713	43	75	2025-05-16	presence
7714	43	76	2025-05-16	presence
7715	43	77	2025-05-16	presence
7716	44	73	2025-05-16	presence
7717	44	74	2025-05-16	presence
7718	44	75	2025-05-16	presence
7719	44	76	2025-05-16	excused absence
7720	44	77	2025-05-16	presence
7721	45	73	2025-05-16	presence
7722	45	74	2025-05-16	excused absence
7723	45	75	2025-05-16	absence
7724	45	76	2025-05-16	excused absence
7725	45	77	2025-05-16	presence
7726	46	73	2025-05-16	presence
7727	46	74	2025-05-16	presence
7728	46	75	2025-05-16	presence
7729	46	76	2025-05-16	presence
7730	46	77	2025-05-16	presence
7731	47	73	2025-05-16	presence
7732	47	74	2025-05-16	late
7733	47	75	2025-05-16	presence
7734	47	76	2025-05-16	presence
7735	47	77	2025-05-16	presence
7736	48	73	2025-05-16	excused absence
7737	48	74	2025-05-16	presence
7738	48	75	2025-05-16	presence
7739	48	76	2025-05-16	presence
7740	48	77	2025-05-16	absence
7741	49	73	2025-05-16	presence
7742	49	74	2025-05-16	presence
7743	49	75	2025-05-16	presence
7744	49	76	2025-05-16	presence
7745	49	77	2025-05-16	presence
7746	50	73	2025-05-16	presence
7747	50	74	2025-05-16	presence
7748	50	75	2025-05-16	presence
7749	50	76	2025-05-16	presence
7750	50	77	2025-05-16	presence
7751	51	73	2025-05-16	presence
7752	51	74	2025-05-16	presence
7753	51	75	2025-05-16	presence
7754	51	76	2025-05-16	presence
7755	51	77	2025-05-16	late
7756	52	73	2025-05-16	presence
7757	52	74	2025-05-16	presence
7758	52	75	2025-05-16	presence
7759	52	76	2025-05-16	presence
7760	52	77	2025-05-16	presence
7761	53	73	2025-05-16	presence
7762	53	74	2025-05-16	presence
7763	53	75	2025-05-16	presence
7764	53	76	2025-05-16	presence
7765	53	77	2025-05-16	presence
7766	54	73	2025-05-16	presence
7767	54	74	2025-05-16	presence
7768	54	75	2025-05-16	presence
7769	54	76	2025-05-16	presence
7770	54	77	2025-05-16	presence
7771	55	73	2025-05-16	absence
7772	55	74	2025-05-16	presence
7773	55	75	2025-05-16	presence
7774	55	76	2025-05-16	presence
7775	55	77	2025-05-16	presence
7776	56	73	2025-05-16	excused absence
7777	56	74	2025-05-16	presence
7778	56	75	2025-05-16	presence
7779	56	76	2025-05-16	absence
7780	56	77	2025-05-16	presence
7781	57	73	2025-05-16	presence
7782	57	74	2025-05-16	presence
7783	57	75	2025-05-16	presence
7784	57	76	2025-05-16	presence
7785	57	77	2025-05-16	late
7786	58	73	2025-05-16	presence
7787	58	74	2025-05-16	excused absence
7788	58	75	2025-05-16	presence
7789	58	76	2025-05-16	presence
7790	58	77	2025-05-16	presence
7791	59	73	2025-05-16	presence
7792	59	74	2025-05-16	presence
7793	59	75	2025-05-16	presence
7794	59	76	2025-05-16	absence
7795	59	77	2025-05-16	presence
7796	60	73	2025-05-16	presence
7797	60	74	2025-05-16	presence
7798	60	75	2025-05-16	presence
7799	60	76	2025-05-16	presence
7800	60	77	2025-05-16	presence
7801	61	95	2025-05-16	presence
7802	61	96	2025-05-16	presence
7803	61	97	2025-05-16	presence
7804	61	98	2025-05-16	presence
7805	61	99	2025-05-16	presence
7806	62	95	2025-05-16	presence
7807	62	96	2025-05-16	presence
7808	62	97	2025-05-16	late
7809	62	98	2025-05-16	presence
7810	62	99	2025-05-16	presence
7811	63	95	2025-05-16	absence
7812	63	96	2025-05-16	absence
7813	63	97	2025-05-16	presence
7814	63	98	2025-05-16	presence
7815	63	99	2025-05-16	presence
7816	64	95	2025-05-16	presence
7817	64	96	2025-05-16	presence
7818	64	97	2025-05-16	absence
7819	64	98	2025-05-16	presence
7820	64	99	2025-05-16	excused absence
7821	65	95	2025-05-16	presence
7822	65	96	2025-05-16	presence
7823	65	97	2025-05-16	presence
7824	65	98	2025-05-16	presence
7825	65	99	2025-05-16	presence
7826	66	95	2025-05-16	presence
7827	66	96	2025-05-16	presence
7828	66	97	2025-05-16	presence
7829	66	98	2025-05-16	presence
7830	66	99	2025-05-16	presence
7831	67	95	2025-05-16	presence
7832	67	96	2025-05-16	presence
7833	67	97	2025-05-16	presence
7834	67	98	2025-05-16	presence
7835	67	99	2025-05-16	late
7836	68	95	2025-05-16	presence
7837	68	96	2025-05-16	presence
7838	68	97	2025-05-16	late
7839	68	98	2025-05-16	presence
7840	68	99	2025-05-16	absence
7841	69	95	2025-05-16	absence
7842	69	96	2025-05-16	excused absence
7843	69	97	2025-05-16	absence
7844	69	98	2025-05-16	presence
7845	69	99	2025-05-16	presence
7846	70	95	2025-05-16	presence
7847	70	96	2025-05-16	late
7848	70	97	2025-05-16	presence
7849	70	98	2025-05-16	presence
7850	70	99	2025-05-16	absence
7851	71	95	2025-05-16	excused absence
7852	71	96	2025-05-16	presence
7853	71	97	2025-05-16	late
7854	71	98	2025-05-16	presence
7855	71	99	2025-05-16	presence
7856	72	95	2025-05-16	presence
7857	72	96	2025-05-16	absence
7858	72	97	2025-05-16	late
7859	72	98	2025-05-16	presence
7860	72	99	2025-05-16	presence
7861	73	95	2025-05-16	presence
7862	73	96	2025-05-16	presence
7863	73	97	2025-05-16	presence
7864	73	98	2025-05-16	presence
7865	73	99	2025-05-16	presence
7866	74	95	2025-05-16	presence
7867	74	96	2025-05-16	presence
7868	74	97	2025-05-16	presence
7869	74	98	2025-05-16	presence
7870	74	99	2025-05-16	presence
7871	75	95	2025-05-16	presence
7872	75	96	2025-05-16	absence
7873	75	97	2025-05-16	presence
7874	75	98	2025-05-16	presence
7875	75	99	2025-05-16	excused absence
7876	76	95	2025-05-16	presence
7877	76	96	2025-05-16	presence
7878	76	97	2025-05-16	presence
7879	76	98	2025-05-16	excused absence
7880	76	99	2025-05-16	presence
7881	77	95	2025-05-16	presence
7882	77	96	2025-05-16	presence
7883	77	97	2025-05-16	presence
7884	77	98	2025-05-16	presence
7885	77	99	2025-05-16	presence
7886	78	95	2025-05-16	presence
7887	78	96	2025-05-16	excused absence
7888	78	97	2025-05-16	excused absence
7889	78	98	2025-05-16	presence
7890	78	99	2025-05-16	excused absence
7891	79	95	2025-05-16	presence
7892	79	96	2025-05-16	absence
7893	79	97	2025-05-16	presence
7894	79	98	2025-05-16	presence
7895	79	99	2025-05-16	presence
7896	80	95	2025-05-16	presence
7897	80	96	2025-05-16	presence
7898	80	97	2025-05-16	presence
7899	80	98	2025-05-16	presence
7900	80	99	2025-05-16	presence
7901	81	117	2025-05-16	presence
7902	81	118	2025-05-16	absence
7903	81	119	2025-05-16	presence
7904	81	120	2025-05-16	presence
7905	81	121	2025-05-16	presence
7906	82	117	2025-05-16	presence
7907	82	118	2025-05-16	presence
7908	82	119	2025-05-16	presence
7909	82	120	2025-05-16	presence
7910	82	121	2025-05-16	presence
7911	83	117	2025-05-16	presence
7912	83	118	2025-05-16	presence
7913	83	119	2025-05-16	presence
7914	83	120	2025-05-16	excused absence
7915	83	121	2025-05-16	presence
7916	84	117	2025-05-16	presence
7917	84	118	2025-05-16	presence
7918	84	119	2025-05-16	presence
7919	84	120	2025-05-16	presence
7920	84	121	2025-05-16	absence
7921	85	117	2025-05-16	excused absence
7922	85	118	2025-05-16	presence
7923	85	119	2025-05-16	presence
7924	85	120	2025-05-16	presence
7925	85	121	2025-05-16	presence
7926	86	117	2025-05-16	presence
7927	86	118	2025-05-16	excused absence
7928	86	119	2025-05-16	late
7929	86	120	2025-05-16	presence
7930	86	121	2025-05-16	presence
7931	87	117	2025-05-16	late
7932	87	118	2025-05-16	late
7933	87	119	2025-05-16	presence
7934	87	120	2025-05-16	presence
7935	87	121	2025-05-16	presence
7936	88	117	2025-05-16	presence
7937	88	118	2025-05-16	presence
7938	88	119	2025-05-16	presence
7939	88	120	2025-05-16	presence
7940	88	121	2025-05-16	presence
7941	89	117	2025-05-16	presence
7942	89	118	2025-05-16	presence
7943	89	119	2025-05-16	absence
7944	89	120	2025-05-16	presence
7945	89	121	2025-05-16	presence
7946	90	117	2025-05-16	late
7947	90	118	2025-05-16	presence
7948	90	119	2025-05-16	presence
7949	90	120	2025-05-16	presence
7950	90	121	2025-05-16	presence
7951	91	117	2025-05-16	presence
7952	91	118	2025-05-16	presence
7953	91	119	2025-05-16	presence
7954	91	120	2025-05-16	presence
7955	91	121	2025-05-16	presence
7956	92	117	2025-05-16	presence
7957	92	118	2025-05-16	presence
7958	92	119	2025-05-16	presence
7959	92	120	2025-05-16	presence
7960	92	121	2025-05-16	presence
7961	93	117	2025-05-16	presence
7962	93	118	2025-05-16	absence
7963	93	119	2025-05-16	presence
7964	93	120	2025-05-16	presence
7965	93	121	2025-05-16	excused absence
7966	94	117	2025-05-16	presence
7967	94	118	2025-05-16	late
7968	94	119	2025-05-16	presence
7969	94	120	2025-05-16	presence
7970	94	121	2025-05-16	presence
7971	95	117	2025-05-16	presence
7972	95	118	2025-05-16	presence
7973	95	119	2025-05-16	presence
7974	95	120	2025-05-16	presence
7975	95	121	2025-05-16	presence
7976	96	117	2025-05-16	presence
7977	96	118	2025-05-16	presence
7978	96	119	2025-05-16	presence
7979	96	120	2025-05-16	presence
7980	96	121	2025-05-16	late
7981	97	117	2025-05-16	presence
7982	97	118	2025-05-16	presence
7983	97	119	2025-05-16	presence
7984	97	120	2025-05-16	presence
7985	97	121	2025-05-16	presence
7986	98	117	2025-05-16	presence
7987	98	118	2025-05-16	presence
7988	98	119	2025-05-16	presence
7989	98	120	2025-05-16	presence
7990	98	121	2025-05-16	absence
7991	99	117	2025-05-16	presence
7992	99	118	2025-05-16	presence
7993	99	119	2025-05-16	presence
7994	99	120	2025-05-16	presence
7995	99	121	2025-05-16	presence
7996	100	117	2025-05-16	presence
7997	100	118	2025-05-16	absence
7998	100	119	2025-05-16	absence
7999	100	120	2025-05-16	presence
8000	100	121	2025-05-16	presence
8001	1	1	2025-05-15	presence
8002	1	2	2025-05-15	presence
8003	1	3	2025-05-15	presence
8004	1	4	2025-05-15	presence
8005	1	5	2025-05-15	presence
8006	2	1	2025-05-15	presence
8007	2	2	2025-05-15	excused absence
8008	2	3	2025-05-15	presence
8009	2	4	2025-05-15	presence
8010	2	5	2025-05-15	presence
8011	3	1	2025-05-15	presence
8012	3	2	2025-05-15	absence
8013	3	3	2025-05-15	presence
8014	3	4	2025-05-15	presence
8015	3	5	2025-05-15	excused absence
8016	4	1	2025-05-15	presence
8017	4	2	2025-05-15	presence
8018	4	3	2025-05-15	late
8019	4	4	2025-05-15	presence
8020	4	5	2025-05-15	presence
8021	5	1	2025-05-15	absence
8022	5	2	2025-05-15	presence
8023	5	3	2025-05-15	presence
8024	5	4	2025-05-15	presence
8025	5	5	2025-05-15	excused absence
8026	6	1	2025-05-15	presence
8027	6	2	2025-05-15	presence
8028	6	3	2025-05-15	presence
8029	6	4	2025-05-15	presence
8030	6	5	2025-05-15	presence
8031	7	1	2025-05-15	presence
8032	7	2	2025-05-15	presence
8033	7	3	2025-05-15	late
8034	7	4	2025-05-15	presence
8035	7	5	2025-05-15	presence
8036	8	1	2025-05-15	presence
8037	8	2	2025-05-15	presence
8038	8	3	2025-05-15	absence
8039	8	4	2025-05-15	presence
8040	8	5	2025-05-15	presence
8041	9	1	2025-05-15	presence
8042	9	2	2025-05-15	presence
8043	9	3	2025-05-15	excused absence
8044	9	4	2025-05-15	presence
8045	9	5	2025-05-15	presence
8046	10	1	2025-05-15	presence
8047	10	2	2025-05-15	presence
8048	10	3	2025-05-15	presence
8049	10	4	2025-05-15	presence
8050	10	5	2025-05-15	presence
8051	11	1	2025-05-15	presence
8052	11	2	2025-05-15	presence
8053	11	3	2025-05-15	presence
8054	11	4	2025-05-15	presence
8055	11	5	2025-05-15	presence
8056	12	1	2025-05-15	presence
8057	12	2	2025-05-15	presence
8058	12	3	2025-05-15	presence
8059	12	4	2025-05-15	presence
8060	12	5	2025-05-15	presence
8061	13	1	2025-05-15	presence
8062	13	2	2025-05-15	presence
8063	13	3	2025-05-15	presence
8064	13	4	2025-05-15	absence
8065	13	5	2025-05-15	late
8066	14	1	2025-05-15	presence
8067	14	2	2025-05-15	presence
8068	14	3	2025-05-15	presence
8069	14	4	2025-05-15	presence
8070	14	5	2025-05-15	presence
8071	15	1	2025-05-15	presence
8072	15	2	2025-05-15	presence
8073	15	3	2025-05-15	excused absence
8074	15	4	2025-05-15	excused absence
8075	15	5	2025-05-15	presence
8076	16	1	2025-05-15	presence
8077	16	2	2025-05-15	presence
8078	16	3	2025-05-15	presence
8079	16	4	2025-05-15	late
8080	16	5	2025-05-15	presence
8081	17	1	2025-05-15	presence
8082	17	2	2025-05-15	presence
8083	17	3	2025-05-15	presence
8084	17	4	2025-05-15	absence
8085	17	5	2025-05-15	absence
8086	18	1	2025-05-15	presence
8087	18	2	2025-05-15	presence
8088	18	3	2025-05-15	excused absence
8089	18	4	2025-05-15	late
8090	18	5	2025-05-15	presence
8091	19	1	2025-05-15	excused absence
8092	19	2	2025-05-15	presence
8093	19	3	2025-05-15	presence
8094	19	4	2025-05-15	excused absence
8095	19	5	2025-05-15	absence
8096	20	1	2025-05-15	presence
8097	20	2	2025-05-15	late
8098	20	3	2025-05-15	presence
8099	20	4	2025-05-15	presence
8100	20	5	2025-05-15	late
8101	21	37	2025-05-15	presence
8102	21	38	2025-05-15	presence
8103	21	39	2025-05-15	presence
8104	21	40	2025-05-15	late
8105	21	41	2025-05-15	late
8106	22	37	2025-05-15	presence
8107	22	38	2025-05-15	presence
8108	22	39	2025-05-15	presence
8109	22	40	2025-05-15	presence
8110	22	41	2025-05-15	presence
8111	23	37	2025-05-15	presence
8112	23	38	2025-05-15	presence
8113	23	39	2025-05-15	presence
8114	23	40	2025-05-15	presence
8115	23	41	2025-05-15	absence
8116	24	37	2025-05-15	presence
8117	24	38	2025-05-15	presence
8118	24	39	2025-05-15	presence
8119	24	40	2025-05-15	presence
8120	24	41	2025-05-15	presence
8121	25	37	2025-05-15	presence
8122	25	38	2025-05-15	presence
8123	25	39	2025-05-15	presence
8124	25	40	2025-05-15	presence
8125	25	41	2025-05-15	presence
8126	26	37	2025-05-15	presence
8127	26	38	2025-05-15	presence
8128	26	39	2025-05-15	presence
8129	26	40	2025-05-15	presence
8130	26	41	2025-05-15	absence
8131	27	37	2025-05-15	absence
8132	27	38	2025-05-15	presence
8133	27	39	2025-05-15	presence
8134	27	40	2025-05-15	presence
8135	27	41	2025-05-15	presence
8136	28	37	2025-05-15	presence
8137	28	38	2025-05-15	presence
8138	28	39	2025-05-15	presence
8139	28	40	2025-05-15	presence
8140	28	41	2025-05-15	presence
8141	29	37	2025-05-15	excused absence
8142	29	38	2025-05-15	late
8143	29	39	2025-05-15	presence
8144	29	40	2025-05-15	presence
8145	29	41	2025-05-15	presence
8146	30	37	2025-05-15	presence
8147	30	38	2025-05-15	presence
8148	30	39	2025-05-15	presence
8149	30	40	2025-05-15	presence
8150	30	41	2025-05-15	presence
8151	31	37	2025-05-15	presence
8152	31	38	2025-05-15	presence
8153	31	39	2025-05-15	presence
8154	31	40	2025-05-15	presence
8155	31	41	2025-05-15	presence
8156	32	37	2025-05-15	presence
8157	32	38	2025-05-15	presence
8158	32	39	2025-05-15	presence
8159	32	40	2025-05-15	presence
8160	32	41	2025-05-15	presence
8161	33	37	2025-05-15	presence
8162	33	38	2025-05-15	presence
8163	33	39	2025-05-15	presence
8164	33	40	2025-05-15	presence
8165	33	41	2025-05-15	presence
8166	34	37	2025-05-15	absence
8167	34	38	2025-05-15	presence
8168	34	39	2025-05-15	presence
8169	34	40	2025-05-15	presence
8170	34	41	2025-05-15	presence
8171	35	37	2025-05-15	presence
8172	35	38	2025-05-15	presence
8173	35	39	2025-05-15	presence
8174	35	40	2025-05-15	presence
8175	35	41	2025-05-15	presence
8176	36	37	2025-05-15	presence
8177	36	38	2025-05-15	presence
8178	36	39	2025-05-15	presence
8179	36	40	2025-05-15	presence
8180	36	41	2025-05-15	presence
8181	37	37	2025-05-15	presence
8182	37	38	2025-05-15	presence
8183	37	39	2025-05-15	presence
8184	37	40	2025-05-15	presence
8185	37	41	2025-05-15	presence
8186	38	37	2025-05-15	presence
8187	38	38	2025-05-15	presence
8188	38	39	2025-05-15	presence
8189	38	40	2025-05-15	presence
8190	38	41	2025-05-15	presence
8191	39	37	2025-05-15	late
8192	39	38	2025-05-15	presence
8193	39	39	2025-05-15	presence
8194	39	40	2025-05-15	presence
8195	39	41	2025-05-15	presence
8196	40	37	2025-05-15	late
8197	40	38	2025-05-15	presence
8198	40	39	2025-05-15	presence
8199	40	40	2025-05-15	presence
8200	40	41	2025-05-15	presence
8201	41	73	2025-05-15	presence
8202	41	74	2025-05-15	presence
8203	41	75	2025-05-15	presence
8204	41	76	2025-05-15	presence
8205	41	77	2025-05-15	presence
8206	42	73	2025-05-15	presence
8207	42	74	2025-05-15	presence
8208	42	75	2025-05-15	excused absence
8209	42	76	2025-05-15	presence
8210	42	77	2025-05-15	presence
8211	43	73	2025-05-15	presence
8212	43	74	2025-05-15	excused absence
8213	43	75	2025-05-15	presence
8214	43	76	2025-05-15	presence
8215	43	77	2025-05-15	presence
8216	44	73	2025-05-15	excused absence
8217	44	74	2025-05-15	presence
8218	44	75	2025-05-15	presence
8219	44	76	2025-05-15	presence
8220	44	77	2025-05-15	presence
8221	45	73	2025-05-15	presence
8222	45	74	2025-05-15	presence
8223	45	75	2025-05-15	presence
8224	45	76	2025-05-15	presence
8225	45	77	2025-05-15	presence
8226	46	73	2025-05-15	presence
8227	46	74	2025-05-15	presence
8228	46	75	2025-05-15	absence
8229	46	76	2025-05-15	presence
8230	46	77	2025-05-15	presence
8231	47	73	2025-05-15	presence
8232	47	74	2025-05-15	presence
8233	47	75	2025-05-15	presence
8234	47	76	2025-05-15	presence
8235	47	77	2025-05-15	presence
8236	48	73	2025-05-15	absence
8237	48	74	2025-05-15	presence
8238	48	75	2025-05-15	presence
8239	48	76	2025-05-15	presence
8240	48	77	2025-05-15	presence
8241	49	73	2025-05-15	presence
8242	49	74	2025-05-15	presence
8243	49	75	2025-05-15	presence
8244	49	76	2025-05-15	presence
8245	49	77	2025-05-15	presence
8246	50	73	2025-05-15	presence
8247	50	74	2025-05-15	presence
8248	50	75	2025-05-15	presence
8249	50	76	2025-05-15	absence
8250	50	77	2025-05-15	presence
8251	51	73	2025-05-15	presence
8252	51	74	2025-05-15	presence
8253	51	75	2025-05-15	presence
8254	51	76	2025-05-15	presence
8255	51	77	2025-05-15	presence
8256	52	73	2025-05-15	presence
8257	52	74	2025-05-15	presence
8258	52	75	2025-05-15	presence
8259	52	76	2025-05-15	presence
8260	52	77	2025-05-15	late
8261	53	73	2025-05-15	excused absence
8262	53	74	2025-05-15	presence
8263	53	75	2025-05-15	presence
8264	53	76	2025-05-15	presence
8265	53	77	2025-05-15	presence
8266	54	73	2025-05-15	presence
8267	54	74	2025-05-15	presence
8268	54	75	2025-05-15	presence
8269	54	76	2025-05-15	presence
8270	54	77	2025-05-15	presence
8271	55	73	2025-05-15	presence
8272	55	74	2025-05-15	presence
8273	55	75	2025-05-15	presence
8274	55	76	2025-05-15	presence
8275	55	77	2025-05-15	presence
8276	56	73	2025-05-15	presence
8277	56	74	2025-05-15	presence
8278	56	75	2025-05-15	presence
8279	56	76	2025-05-15	presence
8280	56	77	2025-05-15	presence
8281	57	73	2025-05-15	presence
8282	57	74	2025-05-15	presence
8283	57	75	2025-05-15	presence
8284	57	76	2025-05-15	presence
8285	57	77	2025-05-15	presence
8286	58	73	2025-05-15	presence
8287	58	74	2025-05-15	presence
8288	58	75	2025-05-15	presence
8289	58	76	2025-05-15	absence
8290	58	77	2025-05-15	presence
8291	59	73	2025-05-15	presence
8292	59	74	2025-05-15	presence
8293	59	75	2025-05-15	presence
8294	59	76	2025-05-15	presence
8295	59	77	2025-05-15	presence
8296	60	73	2025-05-15	presence
8297	60	74	2025-05-15	presence
8298	60	75	2025-05-15	presence
8299	60	76	2025-05-15	presence
8300	60	77	2025-05-15	presence
8301	61	95	2025-05-15	presence
8302	61	96	2025-05-15	late
8303	61	97	2025-05-15	excused absence
8304	61	98	2025-05-15	presence
8305	61	99	2025-05-15	presence
8306	62	95	2025-05-15	presence
8307	62	96	2025-05-15	presence
8308	62	97	2025-05-15	presence
8309	62	98	2025-05-15	presence
8310	62	99	2025-05-15	presence
8311	63	95	2025-05-15	presence
8312	63	96	2025-05-15	presence
8313	63	97	2025-05-15	presence
8314	63	98	2025-05-15	presence
8315	63	99	2025-05-15	presence
8316	64	95	2025-05-15	presence
8317	64	96	2025-05-15	presence
8318	64	97	2025-05-15	presence
8319	64	98	2025-05-15	presence
8320	64	99	2025-05-15	presence
8321	65	95	2025-05-15	presence
8322	65	96	2025-05-15	presence
8323	65	97	2025-05-15	presence
8324	65	98	2025-05-15	excused absence
8325	65	99	2025-05-15	presence
8326	66	95	2025-05-15	presence
8327	66	96	2025-05-15	absence
8328	66	97	2025-05-15	presence
8329	66	98	2025-05-15	presence
8330	66	99	2025-05-15	presence
8331	67	95	2025-05-15	presence
8332	67	96	2025-05-15	presence
8333	67	97	2025-05-15	presence
8334	67	98	2025-05-15	presence
8335	67	99	2025-05-15	presence
8336	68	95	2025-05-15	presence
8337	68	96	2025-05-15	presence
8338	68	97	2025-05-15	presence
8339	68	98	2025-05-15	absence
8340	68	99	2025-05-15	late
8341	69	95	2025-05-15	presence
8342	69	96	2025-05-15	presence
8343	69	97	2025-05-15	presence
8344	69	98	2025-05-15	late
8345	69	99	2025-05-15	presence
8346	70	95	2025-05-15	presence
8347	70	96	2025-05-15	presence
8348	70	97	2025-05-15	presence
8349	70	98	2025-05-15	late
8350	70	99	2025-05-15	presence
8351	71	95	2025-05-15	presence
8352	71	96	2025-05-15	presence
8353	71	97	2025-05-15	presence
8354	71	98	2025-05-15	late
8355	71	99	2025-05-15	absence
8356	72	95	2025-05-15	late
8357	72	96	2025-05-15	presence
8358	72	97	2025-05-15	presence
8359	72	98	2025-05-15	presence
8360	72	99	2025-05-15	presence
8361	73	95	2025-05-15	presence
8362	73	96	2025-05-15	excused absence
8363	73	97	2025-05-15	presence
8364	73	98	2025-05-15	presence
8365	73	99	2025-05-15	presence
8366	74	95	2025-05-15	presence
8367	74	96	2025-05-15	presence
8368	74	97	2025-05-15	presence
8369	74	98	2025-05-15	presence
8370	74	99	2025-05-15	presence
8371	75	95	2025-05-15	presence
8372	75	96	2025-05-15	presence
8373	75	97	2025-05-15	late
8374	75	98	2025-05-15	presence
8375	75	99	2025-05-15	presence
8376	76	95	2025-05-15	presence
8377	76	96	2025-05-15	presence
8378	76	97	2025-05-15	presence
8379	76	98	2025-05-15	presence
8380	76	99	2025-05-15	presence
8381	77	95	2025-05-15	presence
8382	77	96	2025-05-15	presence
8383	77	97	2025-05-15	presence
8384	77	98	2025-05-15	presence
8385	77	99	2025-05-15	excused absence
8386	78	95	2025-05-15	presence
8387	78	96	2025-05-15	presence
8388	78	97	2025-05-15	presence
8389	78	98	2025-05-15	presence
8390	78	99	2025-05-15	presence
8391	79	95	2025-05-15	absence
8392	79	96	2025-05-15	presence
8393	79	97	2025-05-15	presence
8394	79	98	2025-05-15	presence
8395	79	99	2025-05-15	presence
8396	80	95	2025-05-15	presence
8397	80	96	2025-05-15	presence
8398	80	97	2025-05-15	presence
8399	80	98	2025-05-15	late
8400	80	99	2025-05-15	presence
8401	81	117	2025-05-15	presence
8402	81	118	2025-05-15	presence
8403	81	119	2025-05-15	presence
8404	81	120	2025-05-15	presence
8405	81	121	2025-05-15	presence
8406	82	117	2025-05-15	presence
8407	82	118	2025-05-15	presence
8408	82	119	2025-05-15	late
8409	82	120	2025-05-15	presence
8410	82	121	2025-05-15	presence
8411	83	117	2025-05-15	presence
8412	83	118	2025-05-15	presence
8413	83	119	2025-05-15	presence
8414	83	120	2025-05-15	presence
8415	83	121	2025-05-15	presence
8416	84	117	2025-05-15	presence
8417	84	118	2025-05-15	late
8418	84	119	2025-05-15	presence
8419	84	120	2025-05-15	presence
8420	84	121	2025-05-15	presence
8421	85	117	2025-05-15	presence
8422	85	118	2025-05-15	presence
8423	85	119	2025-05-15	presence
8424	85	120	2025-05-15	excused absence
8425	85	121	2025-05-15	presence
8426	86	117	2025-05-15	presence
8427	86	118	2025-05-15	absence
8428	86	119	2025-05-15	presence
8429	86	120	2025-05-15	presence
8430	86	121	2025-05-15	presence
8431	87	117	2025-05-15	presence
8432	87	118	2025-05-15	presence
8433	87	119	2025-05-15	late
8434	87	120	2025-05-15	presence
8435	87	121	2025-05-15	presence
8436	88	117	2025-05-15	presence
8437	88	118	2025-05-15	presence
8438	88	119	2025-05-15	presence
8439	88	120	2025-05-15	presence
8440	88	121	2025-05-15	presence
8441	89	117	2025-05-15	presence
8442	89	118	2025-05-15	presence
8443	89	119	2025-05-15	absence
8444	89	120	2025-05-15	presence
8445	89	121	2025-05-15	presence
8446	90	117	2025-05-15	presence
8447	90	118	2025-05-15	presence
8448	90	119	2025-05-15	presence
8449	90	120	2025-05-15	presence
8450	90	121	2025-05-15	presence
8451	91	117	2025-05-15	late
8452	91	118	2025-05-15	presence
8453	91	119	2025-05-15	presence
8454	91	120	2025-05-15	presence
8455	91	121	2025-05-15	presence
8456	92	117	2025-05-15	presence
8457	92	118	2025-05-15	presence
8458	92	119	2025-05-15	presence
8459	92	120	2025-05-15	presence
8460	92	121	2025-05-15	presence
8461	93	117	2025-05-15	presence
8462	93	118	2025-05-15	presence
8463	93	119	2025-05-15	presence
8464	93	120	2025-05-15	absence
8465	93	121	2025-05-15	late
8466	94	117	2025-05-15	presence
8467	94	118	2025-05-15	presence
8468	94	119	2025-05-15	presence
8469	94	120	2025-05-15	presence
8470	94	121	2025-05-15	absence
8471	95	117	2025-05-15	presence
8472	95	118	2025-05-15	excused absence
8473	95	119	2025-05-15	absence
8474	95	120	2025-05-15	excused absence
8475	95	121	2025-05-15	presence
8476	96	117	2025-05-15	presence
8477	96	118	2025-05-15	presence
8478	96	119	2025-05-15	presence
8479	96	120	2025-05-15	presence
8480	96	121	2025-05-15	presence
8481	97	117	2025-05-15	presence
8482	97	118	2025-05-15	presence
8483	97	119	2025-05-15	presence
8484	97	120	2025-05-15	presence
8485	97	121	2025-05-15	presence
8486	98	117	2025-05-15	presence
8487	98	118	2025-05-15	excused absence
8488	98	119	2025-05-15	presence
8489	98	120	2025-05-15	late
8490	98	121	2025-05-15	presence
8491	99	117	2025-05-15	presence
8492	99	118	2025-05-15	excused absence
8493	99	119	2025-05-15	excused absence
8494	99	120	2025-05-15	presence
8495	99	121	2025-05-15	presence
8496	100	117	2025-05-15	presence
8497	100	118	2025-05-15	presence
8498	100	119	2025-05-15	presence
8499	100	120	2025-05-15	presence
8500	100	121	2025-05-15	presence
8501	1	1	2025-05-14	presence
8502	1	2	2025-05-14	presence
8503	1	3	2025-05-14	absence
8504	1	4	2025-05-14	presence
8505	1	5	2025-05-14	presence
8506	2	1	2025-05-14	presence
8507	2	2	2025-05-14	late
8508	2	3	2025-05-14	presence
8509	2	4	2025-05-14	presence
8510	2	5	2025-05-14	presence
8511	3	1	2025-05-14	excused absence
8512	3	2	2025-05-14	presence
8513	3	3	2025-05-14	late
8514	3	4	2025-05-14	presence
8515	3	5	2025-05-14	presence
8516	4	1	2025-05-14	presence
8517	4	2	2025-05-14	presence
8518	4	3	2025-05-14	late
8519	4	4	2025-05-14	presence
8520	4	5	2025-05-14	presence
8521	5	1	2025-05-14	presence
8522	5	2	2025-05-14	absence
8523	5	3	2025-05-14	presence
8524	5	4	2025-05-14	presence
8525	5	5	2025-05-14	presence
8526	6	1	2025-05-14	presence
8527	6	2	2025-05-14	presence
8528	6	3	2025-05-14	presence
8529	6	4	2025-05-14	late
8530	6	5	2025-05-14	presence
8531	7	1	2025-05-14	presence
8532	7	2	2025-05-14	presence
8533	7	3	2025-05-14	excused absence
8534	7	4	2025-05-14	presence
8535	7	5	2025-05-14	presence
8536	8	1	2025-05-14	late
8537	8	2	2025-05-14	presence
8538	8	3	2025-05-14	presence
8539	8	4	2025-05-14	absence
8540	8	5	2025-05-14	presence
8541	9	1	2025-05-14	presence
8542	9	2	2025-05-14	presence
8543	9	3	2025-05-14	presence
8544	9	4	2025-05-14	presence
8545	9	5	2025-05-14	presence
8546	10	1	2025-05-14	presence
8547	10	2	2025-05-14	presence
8548	10	3	2025-05-14	presence
8549	10	4	2025-05-14	presence
8550	10	5	2025-05-14	presence
8551	11	1	2025-05-14	presence
8552	11	2	2025-05-14	presence
8553	11	3	2025-05-14	presence
8554	11	4	2025-05-14	presence
8555	11	5	2025-05-14	presence
8556	12	1	2025-05-14	presence
8557	12	2	2025-05-14	presence
8558	12	3	2025-05-14	presence
8559	12	4	2025-05-14	presence
8560	12	5	2025-05-14	presence
8561	13	1	2025-05-14	presence
8562	13	2	2025-05-14	presence
8563	13	3	2025-05-14	presence
8564	13	4	2025-05-14	absence
8565	13	5	2025-05-14	presence
8566	14	1	2025-05-14	presence
8567	14	2	2025-05-14	presence
8568	14	3	2025-05-14	presence
8569	14	4	2025-05-14	presence
8570	14	5	2025-05-14	presence
8571	15	1	2025-05-14	presence
8572	15	2	2025-05-14	presence
8573	15	3	2025-05-14	presence
8574	15	4	2025-05-14	presence
8575	15	5	2025-05-14	presence
8576	16	1	2025-05-14	presence
8577	16	2	2025-05-14	presence
8578	16	3	2025-05-14	presence
8579	16	4	2025-05-14	presence
8580	16	5	2025-05-14	presence
8581	17	1	2025-05-14	presence
8582	17	2	2025-05-14	presence
8583	17	3	2025-05-14	presence
8584	17	4	2025-05-14	excused absence
8585	17	5	2025-05-14	presence
8586	18	1	2025-05-14	presence
8587	18	2	2025-05-14	presence
8588	18	3	2025-05-14	presence
8589	18	4	2025-05-14	presence
8590	18	5	2025-05-14	presence
8591	19	1	2025-05-14	presence
8592	19	2	2025-05-14	presence
8593	19	3	2025-05-14	presence
8594	19	4	2025-05-14	presence
8595	19	5	2025-05-14	presence
8596	20	1	2025-05-14	presence
8597	20	2	2025-05-14	presence
8598	20	3	2025-05-14	presence
8599	20	4	2025-05-14	presence
8600	20	5	2025-05-14	presence
8601	21	37	2025-05-14	presence
8602	21	38	2025-05-14	presence
8603	21	39	2025-05-14	presence
8604	21	40	2025-05-14	presence
8605	21	41	2025-05-14	presence
8606	22	37	2025-05-14	presence
8607	22	38	2025-05-14	absence
8608	22	39	2025-05-14	presence
8609	22	40	2025-05-14	presence
8610	22	41	2025-05-14	presence
8611	23	37	2025-05-14	presence
8612	23	38	2025-05-14	presence
8613	23	39	2025-05-14	presence
8614	23	40	2025-05-14	presence
8615	23	41	2025-05-14	presence
8616	24	37	2025-05-14	presence
8617	24	38	2025-05-14	presence
8618	24	39	2025-05-14	presence
8619	24	40	2025-05-14	excused absence
8620	24	41	2025-05-14	presence
8621	25	37	2025-05-14	presence
8622	25	38	2025-05-14	excused absence
8623	25	39	2025-05-14	presence
8624	25	40	2025-05-14	presence
8625	25	41	2025-05-14	presence
8626	26	37	2025-05-14	presence
8627	26	38	2025-05-14	presence
8628	26	39	2025-05-14	presence
8629	26	40	2025-05-14	presence
8630	26	41	2025-05-14	presence
8631	27	37	2025-05-14	presence
8632	27	38	2025-05-14	presence
8633	27	39	2025-05-14	presence
8634	27	40	2025-05-14	presence
8635	27	41	2025-05-14	presence
8636	28	37	2025-05-14	presence
8637	28	38	2025-05-14	presence
8638	28	39	2025-05-14	late
8639	28	40	2025-05-14	presence
8640	28	41	2025-05-14	presence
8641	29	37	2025-05-14	absence
8642	29	38	2025-05-14	presence
8643	29	39	2025-05-14	presence
8644	29	40	2025-05-14	presence
8645	29	41	2025-05-14	presence
8646	30	37	2025-05-14	late
8647	30	38	2025-05-14	presence
8648	30	39	2025-05-14	late
8649	30	40	2025-05-14	absence
8650	30	41	2025-05-14	presence
8651	31	37	2025-05-14	absence
8652	31	38	2025-05-14	presence
8653	31	39	2025-05-14	presence
8654	31	40	2025-05-14	presence
8655	31	41	2025-05-14	presence
8656	32	37	2025-05-14	presence
8657	32	38	2025-05-14	presence
8658	32	39	2025-05-14	presence
8659	32	40	2025-05-14	excused absence
8660	32	41	2025-05-14	presence
8661	33	37	2025-05-14	presence
8662	33	38	2025-05-14	late
8663	33	39	2025-05-14	absence
8664	33	40	2025-05-14	presence
8665	33	41	2025-05-14	presence
8666	34	37	2025-05-14	absence
8667	34	38	2025-05-14	presence
8668	34	39	2025-05-14	presence
8669	34	40	2025-05-14	presence
8670	34	41	2025-05-14	presence
8671	35	37	2025-05-14	presence
8672	35	38	2025-05-14	presence
8673	35	39	2025-05-14	presence
8674	35	40	2025-05-14	presence
8675	35	41	2025-05-14	presence
8676	36	37	2025-05-14	presence
8677	36	38	2025-05-14	presence
8678	36	39	2025-05-14	presence
8679	36	40	2025-05-14	late
8680	36	41	2025-05-14	presence
8681	37	37	2025-05-14	presence
8682	37	38	2025-05-14	presence
8683	37	39	2025-05-14	presence
8684	37	40	2025-05-14	presence
8685	37	41	2025-05-14	presence
8686	38	37	2025-05-14	presence
8687	38	38	2025-05-14	late
8688	38	39	2025-05-14	presence
8689	38	40	2025-05-14	presence
8690	38	41	2025-05-14	late
8691	39	37	2025-05-14	presence
8692	39	38	2025-05-14	presence
8693	39	39	2025-05-14	presence
8694	39	40	2025-05-14	presence
8695	39	41	2025-05-14	presence
8696	40	37	2025-05-14	presence
8697	40	38	2025-05-14	absence
8698	40	39	2025-05-14	presence
8699	40	40	2025-05-14	presence
8700	40	41	2025-05-14	presence
8701	41	73	2025-05-14	presence
8702	41	74	2025-05-14	presence
8703	41	75	2025-05-14	presence
8704	41	76	2025-05-14	presence
8705	41	77	2025-05-14	presence
8706	42	73	2025-05-14	presence
8707	42	74	2025-05-14	presence
8708	42	75	2025-05-14	presence
8709	42	76	2025-05-14	presence
8710	42	77	2025-05-14	presence
8711	43	73	2025-05-14	presence
8712	43	74	2025-05-14	presence
8713	43	75	2025-05-14	excused absence
8714	43	76	2025-05-14	presence
8715	43	77	2025-05-14	presence
8716	44	73	2025-05-14	presence
8717	44	74	2025-05-14	presence
8718	44	75	2025-05-14	presence
8719	44	76	2025-05-14	presence
8720	44	77	2025-05-14	presence
8721	45	73	2025-05-14	presence
8722	45	74	2025-05-14	presence
8723	45	75	2025-05-14	presence
8724	45	76	2025-05-14	presence
8725	45	77	2025-05-14	excused absence
8726	46	73	2025-05-14	presence
8727	46	74	2025-05-14	presence
8728	46	75	2025-05-14	presence
8729	46	76	2025-05-14	presence
8730	46	77	2025-05-14	presence
8731	47	73	2025-05-14	presence
8732	47	74	2025-05-14	presence
8733	47	75	2025-05-14	absence
8734	47	76	2025-05-14	presence
8735	47	77	2025-05-14	presence
8736	48	73	2025-05-14	presence
8737	48	74	2025-05-14	presence
8738	48	75	2025-05-14	presence
8739	48	76	2025-05-14	excused absence
8740	48	77	2025-05-14	presence
8741	49	73	2025-05-14	presence
8742	49	74	2025-05-14	presence
8743	49	75	2025-05-14	presence
8744	49	76	2025-05-14	presence
8745	49	77	2025-05-14	presence
8746	50	73	2025-05-14	presence
8747	50	74	2025-05-14	presence
8748	50	75	2025-05-14	presence
8749	50	76	2025-05-14	presence
8750	50	77	2025-05-14	presence
8751	51	73	2025-05-14	excused absence
8752	51	74	2025-05-14	presence
8753	51	75	2025-05-14	presence
8754	51	76	2025-05-14	presence
8755	51	77	2025-05-14	presence
8756	52	73	2025-05-14	presence
8757	52	74	2025-05-14	presence
8758	52	75	2025-05-14	late
8759	52	76	2025-05-14	presence
8760	52	77	2025-05-14	presence
8761	53	73	2025-05-14	presence
8762	53	74	2025-05-14	presence
8763	53	75	2025-05-14	presence
8764	53	76	2025-05-14	presence
8765	53	77	2025-05-14	presence
8766	54	73	2025-05-14	presence
8767	54	74	2025-05-14	presence
8768	54	75	2025-05-14	presence
8769	54	76	2025-05-14	excused absence
8770	54	77	2025-05-14	presence
8771	55	73	2025-05-14	presence
8772	55	74	2025-05-14	presence
8773	55	75	2025-05-14	excused absence
8774	55	76	2025-05-14	presence
8775	55	77	2025-05-14	presence
8776	56	73	2025-05-14	presence
8777	56	74	2025-05-14	presence
8778	56	75	2025-05-14	presence
8779	56	76	2025-05-14	absence
8780	56	77	2025-05-14	presence
8781	57	73	2025-05-14	presence
8782	57	74	2025-05-14	presence
8783	57	75	2025-05-14	presence
8784	57	76	2025-05-14	excused absence
8785	57	77	2025-05-14	presence
8786	58	73	2025-05-14	presence
8787	58	74	2025-05-14	absence
8788	58	75	2025-05-14	presence
8789	58	76	2025-05-14	absence
8790	58	77	2025-05-14	presence
8791	59	73	2025-05-14	presence
8792	59	74	2025-05-14	presence
8793	59	75	2025-05-14	presence
8794	59	76	2025-05-14	presence
8795	59	77	2025-05-14	presence
8796	60	73	2025-05-14	presence
8797	60	74	2025-05-14	presence
8798	60	75	2025-05-14	presence
8799	60	76	2025-05-14	presence
8800	60	77	2025-05-14	presence
8801	61	95	2025-05-14	excused absence
8802	61	96	2025-05-14	presence
8803	61	97	2025-05-14	presence
8804	61	98	2025-05-14	presence
8805	61	99	2025-05-14	presence
8806	62	95	2025-05-14	presence
8807	62	96	2025-05-14	presence
8808	62	97	2025-05-14	late
8809	62	98	2025-05-14	presence
8810	62	99	2025-05-14	presence
8811	63	95	2025-05-14	presence
8812	63	96	2025-05-14	presence
8813	63	97	2025-05-14	presence
8814	63	98	2025-05-14	presence
8815	63	99	2025-05-14	presence
8816	64	95	2025-05-14	presence
8817	64	96	2025-05-14	presence
8818	64	97	2025-05-14	presence
8819	64	98	2025-05-14	presence
8820	64	99	2025-05-14	presence
8821	65	95	2025-05-14	presence
8822	65	96	2025-05-14	presence
8823	65	97	2025-05-14	presence
8824	65	98	2025-05-14	presence
8825	65	99	2025-05-14	presence
8826	66	95	2025-05-14	presence
8827	66	96	2025-05-14	presence
8828	66	97	2025-05-14	presence
8829	66	98	2025-05-14	presence
8830	66	99	2025-05-14	presence
8831	67	95	2025-05-14	absence
8832	67	96	2025-05-14	presence
8833	67	97	2025-05-14	presence
8834	67	98	2025-05-14	presence
8835	67	99	2025-05-14	presence
8836	68	95	2025-05-14	presence
8837	68	96	2025-05-14	presence
8838	68	97	2025-05-14	presence
8839	68	98	2025-05-14	absence
8840	68	99	2025-05-14	presence
8841	69	95	2025-05-14	presence
8842	69	96	2025-05-14	presence
8843	69	97	2025-05-14	presence
8844	69	98	2025-05-14	presence
8845	69	99	2025-05-14	presence
8846	70	95	2025-05-14	presence
8847	70	96	2025-05-14	presence
8848	70	97	2025-05-14	presence
8849	70	98	2025-05-14	presence
8850	70	99	2025-05-14	excused absence
8851	71	95	2025-05-14	presence
8852	71	96	2025-05-14	excused absence
8853	71	97	2025-05-14	presence
8854	71	98	2025-05-14	presence
8855	71	99	2025-05-14	presence
8856	72	95	2025-05-14	presence
8857	72	96	2025-05-14	presence
8858	72	97	2025-05-14	presence
8859	72	98	2025-05-14	presence
8860	72	99	2025-05-14	presence
8861	73	95	2025-05-14	presence
8862	73	96	2025-05-14	presence
8863	73	97	2025-05-14	presence
8864	73	98	2025-05-14	presence
8865	73	99	2025-05-14	late
8866	74	95	2025-05-14	presence
8867	74	96	2025-05-14	presence
8868	74	97	2025-05-14	presence
8869	74	98	2025-05-14	presence
8870	74	99	2025-05-14	presence
8871	75	95	2025-05-14	presence
8872	75	96	2025-05-14	presence
8873	75	97	2025-05-14	presence
8874	75	98	2025-05-14	presence
8875	75	99	2025-05-14	presence
8876	76	95	2025-05-14	absence
8877	76	96	2025-05-14	presence
8878	76	97	2025-05-14	absence
8879	76	98	2025-05-14	presence
8880	76	99	2025-05-14	presence
8881	77	95	2025-05-14	presence
8882	77	96	2025-05-14	presence
8883	77	97	2025-05-14	presence
8884	77	98	2025-05-14	presence
8885	77	99	2025-05-14	presence
8886	78	95	2025-05-14	presence
8887	78	96	2025-05-14	excused absence
8888	78	97	2025-05-14	presence
8889	78	98	2025-05-14	late
8890	78	99	2025-05-14	presence
8891	79	95	2025-05-14	presence
8892	79	96	2025-05-14	presence
8893	79	97	2025-05-14	presence
8894	79	98	2025-05-14	presence
8895	79	99	2025-05-14	presence
8896	80	95	2025-05-14	presence
8897	80	96	2025-05-14	presence
8898	80	97	2025-05-14	presence
8899	80	98	2025-05-14	presence
8900	80	99	2025-05-14	presence
8901	81	117	2025-05-14	presence
8902	81	118	2025-05-14	presence
8903	81	119	2025-05-14	presence
8904	81	120	2025-05-14	presence
8905	81	121	2025-05-14	presence
8906	82	117	2025-05-14	presence
8907	82	118	2025-05-14	presence
8908	82	119	2025-05-14	absence
8909	82	120	2025-05-14	late
8910	82	121	2025-05-14	presence
8911	83	117	2025-05-14	presence
8912	83	118	2025-05-14	presence
8913	83	119	2025-05-14	presence
8914	83	120	2025-05-14	presence
8915	83	121	2025-05-14	presence
8916	84	117	2025-05-14	presence
8917	84	118	2025-05-14	presence
8918	84	119	2025-05-14	presence
8919	84	120	2025-05-14	presence
8920	84	121	2025-05-14	presence
8921	85	117	2025-05-14	late
8922	85	118	2025-05-14	presence
8923	85	119	2025-05-14	presence
8924	85	120	2025-05-14	presence
8925	85	121	2025-05-14	presence
8926	86	117	2025-05-14	presence
8927	86	118	2025-05-14	presence
8928	86	119	2025-05-14	presence
8929	86	120	2025-05-14	presence
8930	86	121	2025-05-14	presence
8931	87	117	2025-05-14	presence
8932	87	118	2025-05-14	presence
8933	87	119	2025-05-14	presence
8934	87	120	2025-05-14	presence
8935	87	121	2025-05-14	presence
8936	88	117	2025-05-14	presence
8937	88	118	2025-05-14	excused absence
8938	88	119	2025-05-14	presence
8939	88	120	2025-05-14	presence
8940	88	121	2025-05-14	presence
8941	89	117	2025-05-14	excused absence
8942	89	118	2025-05-14	presence
8943	89	119	2025-05-14	presence
8944	89	120	2025-05-14	presence
8945	89	121	2025-05-14	presence
8946	90	117	2025-05-14	presence
8947	90	118	2025-05-14	presence
8948	90	119	2025-05-14	presence
8949	90	120	2025-05-14	presence
8950	90	121	2025-05-14	excused absence
8951	91	117	2025-05-14	presence
8952	91	118	2025-05-14	presence
8953	91	119	2025-05-14	presence
8954	91	120	2025-05-14	presence
8955	91	121	2025-05-14	presence
8956	92	117	2025-05-14	presence
8957	92	118	2025-05-14	presence
8958	92	119	2025-05-14	presence
8959	92	120	2025-05-14	presence
8960	92	121	2025-05-14	presence
8961	93	117	2025-05-14	presence
8962	93	118	2025-05-14	presence
8963	93	119	2025-05-14	presence
8964	93	120	2025-05-14	presence
8965	93	121	2025-05-14	presence
8966	94	117	2025-05-14	presence
8967	94	118	2025-05-14	presence
8968	94	119	2025-05-14	presence
8969	94	120	2025-05-14	presence
8970	94	121	2025-05-14	presence
8971	95	117	2025-05-14	presence
8972	95	118	2025-05-14	presence
8973	95	119	2025-05-14	presence
8974	95	120	2025-05-14	presence
8975	95	121	2025-05-14	presence
8976	96	117	2025-05-14	absence
8977	96	118	2025-05-14	presence
8978	96	119	2025-05-14	presence
8979	96	120	2025-05-14	presence
8980	96	121	2025-05-14	presence
8981	97	117	2025-05-14	presence
8982	97	118	2025-05-14	presence
8983	97	119	2025-05-14	presence
8984	97	120	2025-05-14	presence
8985	97	121	2025-05-14	presence
8986	98	117	2025-05-14	presence
8987	98	118	2025-05-14	presence
8988	98	119	2025-05-14	presence
8989	98	120	2025-05-14	presence
8990	98	121	2025-05-14	presence
8991	99	117	2025-05-14	presence
8992	99	118	2025-05-14	absence
8993	99	119	2025-05-14	presence
8994	99	120	2025-05-14	presence
8995	99	121	2025-05-14	presence
8996	100	117	2025-05-14	presence
8997	100	118	2025-05-14	presence
8998	100	119	2025-05-14	presence
8999	100	120	2025-05-14	presence
9000	100	121	2025-05-14	presence
9001	1	1	2025-05-13	presence
9002	1	2	2025-05-13	presence
9003	1	3	2025-05-13	presence
9004	1	4	2025-05-13	presence
9005	1	5	2025-05-13	excused absence
9006	2	1	2025-05-13	presence
9007	2	2	2025-05-13	excused absence
9008	2	3	2025-05-13	presence
9009	2	4	2025-05-13	presence
9010	2	5	2025-05-13	late
9011	3	1	2025-05-13	presence
9012	3	2	2025-05-13	presence
9013	3	3	2025-05-13	presence
9014	3	4	2025-05-13	presence
9015	3	5	2025-05-13	presence
9016	4	1	2025-05-13	presence
9017	4	2	2025-05-13	presence
9018	4	3	2025-05-13	presence
9019	4	4	2025-05-13	presence
9020	4	5	2025-05-13	presence
9021	5	1	2025-05-13	late
9022	5	2	2025-05-13	presence
9023	5	3	2025-05-13	presence
9024	5	4	2025-05-13	presence
9025	5	5	2025-05-13	presence
9026	6	1	2025-05-13	presence
9027	6	2	2025-05-13	presence
9028	6	3	2025-05-13	presence
9029	6	4	2025-05-13	presence
9030	6	5	2025-05-13	presence
9031	7	1	2025-05-13	presence
9032	7	2	2025-05-13	presence
9033	7	3	2025-05-13	presence
9034	7	4	2025-05-13	presence
9035	7	5	2025-05-13	absence
9036	8	1	2025-05-13	presence
9037	8	2	2025-05-13	late
9038	8	3	2025-05-13	presence
9039	8	4	2025-05-13	presence
9040	8	5	2025-05-13	presence
9041	9	1	2025-05-13	presence
9042	9	2	2025-05-13	presence
9043	9	3	2025-05-13	presence
9044	9	4	2025-05-13	presence
9045	9	5	2025-05-13	presence
9046	10	1	2025-05-13	presence
9047	10	2	2025-05-13	presence
9048	10	3	2025-05-13	presence
9049	10	4	2025-05-13	late
9050	10	5	2025-05-13	presence
9051	11	1	2025-05-13	presence
9052	11	2	2025-05-13	presence
9053	11	3	2025-05-13	presence
9054	11	4	2025-05-13	presence
9055	11	5	2025-05-13	presence
9056	12	1	2025-05-13	presence
9057	12	2	2025-05-13	late
9058	12	3	2025-05-13	presence
9059	12	4	2025-05-13	presence
9060	12	5	2025-05-13	presence
9061	13	1	2025-05-13	excused absence
9062	13	2	2025-05-13	late
9063	13	3	2025-05-13	presence
9064	13	4	2025-05-13	presence
9065	13	5	2025-05-13	presence
9066	14	1	2025-05-13	presence
9067	14	2	2025-05-13	late
9068	14	3	2025-05-13	presence
9069	14	4	2025-05-13	presence
9070	14	5	2025-05-13	presence
9071	15	1	2025-05-13	presence
9072	15	2	2025-05-13	late
9073	15	3	2025-05-13	presence
9074	15	4	2025-05-13	late
9075	15	5	2025-05-13	absence
9076	16	1	2025-05-13	presence
9077	16	2	2025-05-13	presence
9078	16	3	2025-05-13	presence
9079	16	4	2025-05-13	presence
9080	16	5	2025-05-13	excused absence
9081	17	1	2025-05-13	presence
9082	17	2	2025-05-13	presence
9083	17	3	2025-05-13	presence
9084	17	4	2025-05-13	presence
9085	17	5	2025-05-13	excused absence
9086	18	1	2025-05-13	late
9087	18	2	2025-05-13	presence
9088	18	3	2025-05-13	presence
9089	18	4	2025-05-13	presence
9090	18	5	2025-05-13	presence
9091	19	1	2025-05-13	presence
9092	19	2	2025-05-13	presence
9093	19	3	2025-05-13	presence
9094	19	4	2025-05-13	late
9095	19	5	2025-05-13	presence
9096	20	1	2025-05-13	excused absence
9097	20	2	2025-05-13	presence
9098	20	3	2025-05-13	presence
9099	20	4	2025-05-13	presence
9100	20	5	2025-05-13	presence
9101	21	37	2025-05-13	presence
9102	21	38	2025-05-13	presence
9103	21	39	2025-05-13	presence
9104	21	40	2025-05-13	presence
9105	21	41	2025-05-13	presence
9106	22	37	2025-05-13	presence
9107	22	38	2025-05-13	presence
9108	22	39	2025-05-13	presence
9109	22	40	2025-05-13	presence
9110	22	41	2025-05-13	presence
9111	23	37	2025-05-13	presence
9112	23	38	2025-05-13	presence
9113	23	39	2025-05-13	presence
9114	23	40	2025-05-13	presence
9115	23	41	2025-05-13	presence
9116	24	37	2025-05-13	presence
9117	24	38	2025-05-13	presence
9118	24	39	2025-05-13	presence
9119	24	40	2025-05-13	presence
9120	24	41	2025-05-13	presence
9121	25	37	2025-05-13	presence
9122	25	38	2025-05-13	presence
9123	25	39	2025-05-13	presence
9124	25	40	2025-05-13	presence
9125	25	41	2025-05-13	presence
9126	26	37	2025-05-13	presence
9127	26	38	2025-05-13	presence
9128	26	39	2025-05-13	presence
9129	26	40	2025-05-13	presence
9130	26	41	2025-05-13	presence
9131	27	37	2025-05-13	presence
9132	27	38	2025-05-13	presence
9133	27	39	2025-05-13	presence
9134	27	40	2025-05-13	presence
9135	27	41	2025-05-13	presence
9136	28	37	2025-05-13	absence
9137	28	38	2025-05-13	presence
9138	28	39	2025-05-13	late
9139	28	40	2025-05-13	absence
9140	28	41	2025-05-13	presence
9141	29	37	2025-05-13	presence
9142	29	38	2025-05-13	presence
9143	29	39	2025-05-13	presence
9144	29	40	2025-05-13	presence
9145	29	41	2025-05-13	presence
9146	30	37	2025-05-13	presence
9147	30	38	2025-05-13	presence
9148	30	39	2025-05-13	presence
9149	30	40	2025-05-13	absence
9150	30	41	2025-05-13	presence
9151	31	37	2025-05-13	presence
9152	31	38	2025-05-13	presence
9153	31	39	2025-05-13	presence
9154	31	40	2025-05-13	presence
9155	31	41	2025-05-13	presence
9156	32	37	2025-05-13	presence
9157	32	38	2025-05-13	presence
9158	32	39	2025-05-13	presence
9159	32	40	2025-05-13	presence
9160	32	41	2025-05-13	presence
9161	33	37	2025-05-13	presence
9162	33	38	2025-05-13	presence
9163	33	39	2025-05-13	presence
9164	33	40	2025-05-13	presence
9165	33	41	2025-05-13	presence
9166	34	37	2025-05-13	presence
9167	34	38	2025-05-13	presence
9168	34	39	2025-05-13	presence
9169	34	40	2025-05-13	absence
9170	34	41	2025-05-13	presence
9171	35	37	2025-05-13	presence
9172	35	38	2025-05-13	presence
9173	35	39	2025-05-13	presence
9174	35	40	2025-05-13	presence
9175	35	41	2025-05-13	presence
9176	36	37	2025-05-13	presence
9177	36	38	2025-05-13	presence
9178	36	39	2025-05-13	late
9179	36	40	2025-05-13	presence
9180	36	41	2025-05-13	presence
9181	37	37	2025-05-13	presence
9182	37	38	2025-05-13	presence
9183	37	39	2025-05-13	presence
9184	37	40	2025-05-13	presence
9185	37	41	2025-05-13	presence
9186	38	37	2025-05-13	late
9187	38	38	2025-05-13	presence
9188	38	39	2025-05-13	absence
9189	38	40	2025-05-13	presence
9190	38	41	2025-05-13	presence
9191	39	37	2025-05-13	excused absence
9192	39	38	2025-05-13	presence
9193	39	39	2025-05-13	presence
9194	39	40	2025-05-13	presence
9195	39	41	2025-05-13	presence
9196	40	37	2025-05-13	presence
9197	40	38	2025-05-13	presence
9198	40	39	2025-05-13	presence
9199	40	40	2025-05-13	presence
9200	40	41	2025-05-13	presence
9201	41	73	2025-05-13	presence
9202	41	74	2025-05-13	absence
9203	41	75	2025-05-13	presence
9204	41	76	2025-05-13	presence
9205	41	77	2025-05-13	presence
9206	42	73	2025-05-13	presence
9207	42	74	2025-05-13	presence
9208	42	75	2025-05-13	excused absence
9209	42	76	2025-05-13	presence
9210	42	77	2025-05-13	presence
9211	43	73	2025-05-13	presence
9212	43	74	2025-05-13	presence
9213	43	75	2025-05-13	excused absence
9214	43	76	2025-05-13	presence
9215	43	77	2025-05-13	presence
9216	44	73	2025-05-13	presence
9217	44	74	2025-05-13	presence
9218	44	75	2025-05-13	presence
9219	44	76	2025-05-13	presence
9220	44	77	2025-05-13	presence
9221	45	73	2025-05-13	presence
9222	45	74	2025-05-13	presence
9223	45	75	2025-05-13	presence
9224	45	76	2025-05-13	presence
9225	45	77	2025-05-13	absence
9226	46	73	2025-05-13	late
9227	46	74	2025-05-13	presence
9228	46	75	2025-05-13	presence
9229	46	76	2025-05-13	presence
9230	46	77	2025-05-13	presence
9231	47	73	2025-05-13	presence
9232	47	74	2025-05-13	presence
9233	47	75	2025-05-13	presence
9234	47	76	2025-05-13	presence
9235	47	77	2025-05-13	presence
9236	48	73	2025-05-13	presence
9237	48	74	2025-05-13	presence
9238	48	75	2025-05-13	excused absence
9239	48	76	2025-05-13	excused absence
9240	48	77	2025-05-13	presence
9241	49	73	2025-05-13	presence
9242	49	74	2025-05-13	presence
9243	49	75	2025-05-13	presence
9244	49	76	2025-05-13	excused absence
9245	49	77	2025-05-13	presence
9246	50	73	2025-05-13	presence
9247	50	74	2025-05-13	presence
9248	50	75	2025-05-13	presence
9249	50	76	2025-05-13	presence
9250	50	77	2025-05-13	absence
9251	51	73	2025-05-13	presence
9252	51	74	2025-05-13	presence
9253	51	75	2025-05-13	presence
9254	51	76	2025-05-13	presence
9255	51	77	2025-05-13	presence
9256	52	73	2025-05-13	excused absence
9257	52	74	2025-05-13	late
9258	52	75	2025-05-13	presence
9259	52	76	2025-05-13	presence
9260	52	77	2025-05-13	presence
9261	53	73	2025-05-13	late
9262	53	74	2025-05-13	late
9263	53	75	2025-05-13	presence
9264	53	76	2025-05-13	excused absence
9265	53	77	2025-05-13	presence
9266	54	73	2025-05-13	presence
9267	54	74	2025-05-13	presence
9268	54	75	2025-05-13	presence
9269	54	76	2025-05-13	presence
9270	54	77	2025-05-13	presence
9271	55	73	2025-05-13	presence
9272	55	74	2025-05-13	presence
9273	55	75	2025-05-13	presence
9274	55	76	2025-05-13	presence
9275	55	77	2025-05-13	presence
9276	56	73	2025-05-13	presence
9277	56	74	2025-05-13	presence
9278	56	75	2025-05-13	excused absence
9279	56	76	2025-05-13	presence
9280	56	77	2025-05-13	presence
9281	57	73	2025-05-13	presence
9282	57	74	2025-05-13	presence
9283	57	75	2025-05-13	presence
9284	57	76	2025-05-13	presence
9285	57	77	2025-05-13	excused absence
9286	58	73	2025-05-13	presence
9287	58	74	2025-05-13	presence
9288	58	75	2025-05-13	presence
9289	58	76	2025-05-13	excused absence
9290	58	77	2025-05-13	presence
9291	59	73	2025-05-13	presence
9292	59	74	2025-05-13	late
9293	59	75	2025-05-13	presence
9294	59	76	2025-05-13	excused absence
9295	59	77	2025-05-13	late
9296	60	73	2025-05-13	presence
9297	60	74	2025-05-13	presence
9298	60	75	2025-05-13	presence
9299	60	76	2025-05-13	presence
9300	60	77	2025-05-13	presence
9301	61	95	2025-05-13	excused absence
9302	61	96	2025-05-13	presence
9303	61	97	2025-05-13	presence
9304	61	98	2025-05-13	presence
9305	61	99	2025-05-13	presence
9306	62	95	2025-05-13	presence
9307	62	96	2025-05-13	presence
9308	62	97	2025-05-13	presence
9309	62	98	2025-05-13	presence
9310	62	99	2025-05-13	presence
9311	63	95	2025-05-13	presence
9312	63	96	2025-05-13	presence
9313	63	97	2025-05-13	presence
9314	63	98	2025-05-13	presence
9315	63	99	2025-05-13	presence
9316	64	95	2025-05-13	presence
9317	64	96	2025-05-13	excused absence
9318	64	97	2025-05-13	presence
9319	64	98	2025-05-13	late
9320	64	99	2025-05-13	presence
9321	65	95	2025-05-13	presence
9322	65	96	2025-05-13	presence
9323	65	97	2025-05-13	presence
9324	65	98	2025-05-13	presence
9325	65	99	2025-05-13	presence
9326	66	95	2025-05-13	presence
9327	66	96	2025-05-13	presence
9328	66	97	2025-05-13	presence
9329	66	98	2025-05-13	presence
9330	66	99	2025-05-13	presence
9331	67	95	2025-05-13	presence
9332	67	96	2025-05-13	presence
9333	67	97	2025-05-13	absence
9334	67	98	2025-05-13	presence
9335	67	99	2025-05-13	presence
9336	68	95	2025-05-13	late
9337	68	96	2025-05-13	presence
9338	68	97	2025-05-13	presence
9339	68	98	2025-05-13	excused absence
9340	68	99	2025-05-13	presence
9341	69	95	2025-05-13	presence
9342	69	96	2025-05-13	presence
9343	69	97	2025-05-13	presence
9344	69	98	2025-05-13	absence
9345	69	99	2025-05-13	presence
9346	70	95	2025-05-13	presence
9347	70	96	2025-05-13	presence
9348	70	97	2025-05-13	presence
9349	70	98	2025-05-13	presence
9350	70	99	2025-05-13	presence
9351	71	95	2025-05-13	presence
9352	71	96	2025-05-13	presence
9353	71	97	2025-05-13	presence
9354	71	98	2025-05-13	presence
9355	71	99	2025-05-13	presence
9356	72	95	2025-05-13	presence
9357	72	96	2025-05-13	presence
9358	72	97	2025-05-13	presence
9359	72	98	2025-05-13	presence
9360	72	99	2025-05-13	presence
9361	73	95	2025-05-13	absence
9362	73	96	2025-05-13	presence
9363	73	97	2025-05-13	presence
9364	73	98	2025-05-13	presence
9365	73	99	2025-05-13	presence
9366	74	95	2025-05-13	presence
9367	74	96	2025-05-13	excused absence
9368	74	97	2025-05-13	presence
9369	74	98	2025-05-13	presence
9370	74	99	2025-05-13	late
9371	75	95	2025-05-13	presence
9372	75	96	2025-05-13	presence
9373	75	97	2025-05-13	presence
9374	75	98	2025-05-13	presence
9375	75	99	2025-05-13	presence
9376	76	95	2025-05-13	presence
9377	76	96	2025-05-13	presence
9378	76	97	2025-05-13	presence
9379	76	98	2025-05-13	presence
9380	76	99	2025-05-13	presence
9381	77	95	2025-05-13	presence
9382	77	96	2025-05-13	presence
9383	77	97	2025-05-13	presence
9384	77	98	2025-05-13	late
9385	77	99	2025-05-13	excused absence
9386	78	95	2025-05-13	presence
9387	78	96	2025-05-13	presence
9388	78	97	2025-05-13	presence
9389	78	98	2025-05-13	presence
9390	78	99	2025-05-13	presence
9391	79	95	2025-05-13	presence
9392	79	96	2025-05-13	presence
9393	79	97	2025-05-13	presence
9394	79	98	2025-05-13	excused absence
9395	79	99	2025-05-13	presence
9396	80	95	2025-05-13	presence
9397	80	96	2025-05-13	presence
9398	80	97	2025-05-13	presence
9399	80	98	2025-05-13	presence
9400	80	99	2025-05-13	presence
9401	81	117	2025-05-13	presence
9402	81	118	2025-05-13	presence
9403	81	119	2025-05-13	excused absence
9404	81	120	2025-05-13	presence
9405	81	121	2025-05-13	presence
9406	82	117	2025-05-13	presence
9407	82	118	2025-05-13	presence
9408	82	119	2025-05-13	presence
9409	82	120	2025-05-13	presence
9410	82	121	2025-05-13	presence
9411	83	117	2025-05-13	presence
9412	83	118	2025-05-13	presence
9413	83	119	2025-05-13	presence
9414	83	120	2025-05-13	presence
9415	83	121	2025-05-13	presence
9416	84	117	2025-05-13	presence
9417	84	118	2025-05-13	presence
9418	84	119	2025-05-13	presence
9419	84	120	2025-05-13	presence
9420	84	121	2025-05-13	presence
9421	85	117	2025-05-13	presence
9422	85	118	2025-05-13	presence
9423	85	119	2025-05-13	presence
9424	85	120	2025-05-13	presence
9425	85	121	2025-05-13	presence
9426	86	117	2025-05-13	presence
9427	86	118	2025-05-13	presence
9428	86	119	2025-05-13	presence
9429	86	120	2025-05-13	presence
9430	86	121	2025-05-13	presence
9431	87	117	2025-05-13	presence
9432	87	118	2025-05-13	presence
9433	87	119	2025-05-13	presence
9434	87	120	2025-05-13	presence
9435	87	121	2025-05-13	presence
9436	88	117	2025-05-13	excused absence
9437	88	118	2025-05-13	absence
9438	88	119	2025-05-13	presence
9439	88	120	2025-05-13	presence
9440	88	121	2025-05-13	presence
9441	89	117	2025-05-13	presence
9442	89	118	2025-05-13	presence
9443	89	119	2025-05-13	presence
9444	89	120	2025-05-13	presence
9445	89	121	2025-05-13	presence
9446	90	117	2025-05-13	late
9447	90	118	2025-05-13	presence
9448	90	119	2025-05-13	presence
9449	90	120	2025-05-13	presence
9450	90	121	2025-05-13	presence
9451	91	117	2025-05-13	presence
9452	91	118	2025-05-13	presence
9453	91	119	2025-05-13	presence
9454	91	120	2025-05-13	presence
9455	91	121	2025-05-13	presence
9456	92	117	2025-05-13	presence
9457	92	118	2025-05-13	presence
9458	92	119	2025-05-13	presence
9459	92	120	2025-05-13	presence
9460	92	121	2025-05-13	presence
9461	93	117	2025-05-13	late
9462	93	118	2025-05-13	presence
9463	93	119	2025-05-13	presence
9464	93	120	2025-05-13	presence
9465	93	121	2025-05-13	presence
9466	94	117	2025-05-13	presence
9467	94	118	2025-05-13	presence
9468	94	119	2025-05-13	presence
9469	94	120	2025-05-13	presence
9470	94	121	2025-05-13	presence
9471	95	117	2025-05-13	presence
9472	95	118	2025-05-13	presence
9473	95	119	2025-05-13	presence
9474	95	120	2025-05-13	presence
9475	95	121	2025-05-13	presence
9476	96	117	2025-05-13	presence
9477	96	118	2025-05-13	presence
9478	96	119	2025-05-13	presence
9479	96	120	2025-05-13	excused absence
9480	96	121	2025-05-13	excused absence
9481	97	117	2025-05-13	presence
9482	97	118	2025-05-13	presence
9483	97	119	2025-05-13	presence
9484	97	120	2025-05-13	presence
9485	97	121	2025-05-13	presence
9486	98	117	2025-05-13	absence
9487	98	118	2025-05-13	presence
9488	98	119	2025-05-13	presence
9489	98	120	2025-05-13	presence
9490	98	121	2025-05-13	presence
9491	99	117	2025-05-13	absence
9492	99	118	2025-05-13	presence
9493	99	119	2025-05-13	presence
9494	99	120	2025-05-13	presence
9495	99	121	2025-05-13	presence
9496	100	117	2025-05-13	absence
9497	100	118	2025-05-13	presence
9498	100	119	2025-05-13	presence
9499	100	120	2025-05-13	presence
9500	100	121	2025-05-13	presence
9501	1	1	2025-05-12	presence
9502	1	2	2025-05-12	presence
9503	1	3	2025-05-12	presence
9504	1	4	2025-05-12	absence
9505	1	5	2025-05-12	presence
9506	2	1	2025-05-12	presence
9507	2	2	2025-05-12	presence
9508	2	3	2025-05-12	late
9509	2	4	2025-05-12	presence
9510	2	5	2025-05-12	presence
9511	3	1	2025-05-12	presence
9512	3	2	2025-05-12	late
9513	3	3	2025-05-12	presence
9514	3	4	2025-05-12	presence
9515	3	5	2025-05-12	presence
9516	4	1	2025-05-12	late
9517	4	2	2025-05-12	presence
9518	4	3	2025-05-12	presence
9519	4	4	2025-05-12	presence
9520	4	5	2025-05-12	excused absence
9521	5	1	2025-05-12	presence
9522	5	2	2025-05-12	presence
9523	5	3	2025-05-12	late
9524	5	4	2025-05-12	presence
9525	5	5	2025-05-12	presence
9526	6	1	2025-05-12	absence
9527	6	2	2025-05-12	presence
9528	6	3	2025-05-12	presence
9529	6	4	2025-05-12	presence
9530	6	5	2025-05-12	presence
9531	7	1	2025-05-12	presence
9532	7	2	2025-05-12	presence
9533	7	3	2025-05-12	presence
9534	7	4	2025-05-12	presence
9535	7	5	2025-05-12	presence
9536	8	1	2025-05-12	presence
9537	8	2	2025-05-12	presence
9538	8	3	2025-05-12	presence
9539	8	4	2025-05-12	presence
9540	8	5	2025-05-12	presence
9541	9	1	2025-05-12	presence
9542	9	2	2025-05-12	presence
9543	9	3	2025-05-12	presence
9544	9	4	2025-05-12	presence
9545	9	5	2025-05-12	presence
9546	10	1	2025-05-12	presence
9547	10	2	2025-05-12	presence
9548	10	3	2025-05-12	presence
9549	10	4	2025-05-12	presence
9550	10	5	2025-05-12	presence
9551	11	1	2025-05-12	presence
9552	11	2	2025-05-12	presence
9553	11	3	2025-05-12	presence
9554	11	4	2025-05-12	presence
9555	11	5	2025-05-12	excused absence
9556	12	1	2025-05-12	presence
9557	12	2	2025-05-12	presence
9558	12	3	2025-05-12	presence
9559	12	4	2025-05-12	presence
9560	12	5	2025-05-12	presence
9561	13	1	2025-05-12	presence
9562	13	2	2025-05-12	excused absence
9563	13	3	2025-05-12	presence
9564	13	4	2025-05-12	presence
9565	13	5	2025-05-12	presence
9566	14	1	2025-05-12	presence
9567	14	2	2025-05-12	presence
9568	14	3	2025-05-12	presence
9569	14	4	2025-05-12	presence
9570	14	5	2025-05-12	late
9571	15	1	2025-05-12	presence
9572	15	2	2025-05-12	late
9573	15	3	2025-05-12	presence
9574	15	4	2025-05-12	presence
9575	15	5	2025-05-12	presence
9576	16	1	2025-05-12	presence
9577	16	2	2025-05-12	presence
9578	16	3	2025-05-12	presence
9579	16	4	2025-05-12	presence
9580	16	5	2025-05-12	presence
9581	17	1	2025-05-12	presence
9582	17	2	2025-05-12	presence
9583	17	3	2025-05-12	presence
9584	17	4	2025-05-12	presence
9585	17	5	2025-05-12	presence
9586	18	1	2025-05-12	presence
9587	18	2	2025-05-12	presence
9588	18	3	2025-05-12	presence
9589	18	4	2025-05-12	presence
9590	18	5	2025-05-12	presence
9591	19	1	2025-05-12	presence
9592	19	2	2025-05-12	excused absence
9593	19	3	2025-05-12	presence
9594	19	4	2025-05-12	presence
9595	19	5	2025-05-12	excused absence
9596	20	1	2025-05-12	presence
9597	20	2	2025-05-12	presence
9598	20	3	2025-05-12	presence
9599	20	4	2025-05-12	presence
9600	20	5	2025-05-12	presence
9601	21	37	2025-05-12	late
9602	21	38	2025-05-12	presence
9603	21	39	2025-05-12	presence
9604	21	40	2025-05-12	presence
9605	21	41	2025-05-12	presence
9606	22	37	2025-05-12	presence
9607	22	38	2025-05-12	presence
9608	22	39	2025-05-12	presence
9609	22	40	2025-05-12	presence
9610	22	41	2025-05-12	late
9611	23	37	2025-05-12	absence
9612	23	38	2025-05-12	presence
9613	23	39	2025-05-12	presence
9614	23	40	2025-05-12	presence
9615	23	41	2025-05-12	presence
9616	24	37	2025-05-12	presence
9617	24	38	2025-05-12	absence
9618	24	39	2025-05-12	presence
9619	24	40	2025-05-12	presence
9620	24	41	2025-05-12	presence
9621	25	37	2025-05-12	presence
9622	25	38	2025-05-12	presence
9623	25	39	2025-05-12	presence
9624	25	40	2025-05-12	presence
9625	25	41	2025-05-12	excused absence
9626	26	37	2025-05-12	presence
9627	26	38	2025-05-12	presence
9628	26	39	2025-05-12	presence
9629	26	40	2025-05-12	presence
9630	26	41	2025-05-12	late
9631	27	37	2025-05-12	presence
9632	27	38	2025-05-12	presence
9633	27	39	2025-05-12	presence
9634	27	40	2025-05-12	presence
9635	27	41	2025-05-12	presence
9636	28	37	2025-05-12	late
9637	28	38	2025-05-12	excused absence
9638	28	39	2025-05-12	excused absence
9639	28	40	2025-05-12	excused absence
9640	28	41	2025-05-12	presence
9641	29	37	2025-05-12	excused absence
9642	29	38	2025-05-12	presence
9643	29	39	2025-05-12	presence
9644	29	40	2025-05-12	presence
9645	29	41	2025-05-12	presence
9646	30	37	2025-05-12	presence
9647	30	38	2025-05-12	presence
9648	30	39	2025-05-12	late
9649	30	40	2025-05-12	presence
9650	30	41	2025-05-12	presence
9651	31	37	2025-05-12	presence
9652	31	38	2025-05-12	presence
9653	31	39	2025-05-12	presence
9654	31	40	2025-05-12	presence
9655	31	41	2025-05-12	presence
9656	32	37	2025-05-12	presence
9657	32	38	2025-05-12	presence
9658	32	39	2025-05-12	excused absence
9659	32	40	2025-05-12	late
9660	32	41	2025-05-12	presence
9661	33	37	2025-05-12	presence
9662	33	38	2025-05-12	excused absence
9663	33	39	2025-05-12	presence
9664	33	40	2025-05-12	excused absence
9665	33	41	2025-05-12	presence
9666	34	37	2025-05-12	presence
9667	34	38	2025-05-12	excused absence
9668	34	39	2025-05-12	presence
9669	34	40	2025-05-12	presence
9670	34	41	2025-05-12	presence
9671	35	37	2025-05-12	presence
9672	35	38	2025-05-12	presence
9673	35	39	2025-05-12	presence
9674	35	40	2025-05-12	absence
9675	35	41	2025-05-12	presence
9676	36	37	2025-05-12	presence
9677	36	38	2025-05-12	presence
9678	36	39	2025-05-12	presence
9679	36	40	2025-05-12	presence
9680	36	41	2025-05-12	presence
9681	37	37	2025-05-12	presence
9682	37	38	2025-05-12	presence
9683	37	39	2025-05-12	presence
9684	37	40	2025-05-12	presence
9685	37	41	2025-05-12	presence
9686	38	37	2025-05-12	presence
9687	38	38	2025-05-12	presence
9688	38	39	2025-05-12	presence
9689	38	40	2025-05-12	presence
9690	38	41	2025-05-12	presence
9691	39	37	2025-05-12	presence
9692	39	38	2025-05-12	presence
9693	39	39	2025-05-12	presence
9694	39	40	2025-05-12	excused absence
9695	39	41	2025-05-12	presence
9696	40	37	2025-05-12	presence
9697	40	38	2025-05-12	presence
9698	40	39	2025-05-12	presence
9699	40	40	2025-05-12	presence
9700	40	41	2025-05-12	presence
9701	41	73	2025-05-12	presence
9702	41	74	2025-05-12	presence
9703	41	75	2025-05-12	presence
9704	41	76	2025-05-12	presence
9705	41	77	2025-05-12	presence
9706	42	73	2025-05-12	presence
9707	42	74	2025-05-12	presence
9708	42	75	2025-05-12	presence
9709	42	76	2025-05-12	presence
9710	42	77	2025-05-12	presence
9711	43	73	2025-05-12	presence
9712	43	74	2025-05-12	presence
9713	43	75	2025-05-12	presence
9714	43	76	2025-05-12	presence
9715	43	77	2025-05-12	excused absence
9716	44	73	2025-05-12	presence
9717	44	74	2025-05-12	presence
9718	44	75	2025-05-12	presence
9719	44	76	2025-05-12	absence
9720	44	77	2025-05-12	presence
9721	45	73	2025-05-12	presence
9722	45	74	2025-05-12	absence
9723	45	75	2025-05-12	presence
9724	45	76	2025-05-12	presence
9725	45	77	2025-05-12	presence
9726	46	73	2025-05-12	presence
9727	46	74	2025-05-12	presence
9728	46	75	2025-05-12	presence
9729	46	76	2025-05-12	presence
9730	46	77	2025-05-12	presence
9731	47	73	2025-05-12	presence
9732	47	74	2025-05-12	presence
9733	47	75	2025-05-12	presence
9734	47	76	2025-05-12	excused absence
9735	47	77	2025-05-12	presence
9736	48	73	2025-05-12	presence
9737	48	74	2025-05-12	presence
9738	48	75	2025-05-12	presence
9739	48	76	2025-05-12	presence
9740	48	77	2025-05-12	absence
9741	49	73	2025-05-12	presence
9742	49	74	2025-05-12	presence
9743	49	75	2025-05-12	presence
9744	49	76	2025-05-12	presence
9745	49	77	2025-05-12	late
9746	50	73	2025-05-12	late
9747	50	74	2025-05-12	excused absence
9748	50	75	2025-05-12	presence
9749	50	76	2025-05-12	presence
9750	50	77	2025-05-12	presence
9751	51	73	2025-05-12	presence
9752	51	74	2025-05-12	presence
9753	51	75	2025-05-12	presence
9754	51	76	2025-05-12	late
9755	51	77	2025-05-12	presence
9756	52	73	2025-05-12	presence
9757	52	74	2025-05-12	presence
9758	52	75	2025-05-12	excused absence
9759	52	76	2025-05-12	presence
9760	52	77	2025-05-12	presence
9761	53	73	2025-05-12	presence
9762	53	74	2025-05-12	late
9763	53	75	2025-05-12	presence
9764	53	76	2025-05-12	presence
9765	53	77	2025-05-12	presence
9766	54	73	2025-05-12	presence
9767	54	74	2025-05-12	presence
9768	54	75	2025-05-12	presence
9769	54	76	2025-05-12	presence
9770	54	77	2025-05-12	presence
9771	55	73	2025-05-12	excused absence
9772	55	74	2025-05-12	presence
9773	55	75	2025-05-12	late
9774	55	76	2025-05-12	presence
9775	55	77	2025-05-12	presence
9776	56	73	2025-05-12	presence
9777	56	74	2025-05-12	presence
9778	56	75	2025-05-12	presence
9779	56	76	2025-05-12	presence
9780	56	77	2025-05-12	presence
9781	57	73	2025-05-12	presence
9782	57	74	2025-05-12	presence
9783	57	75	2025-05-12	presence
9784	57	76	2025-05-12	excused absence
9785	57	77	2025-05-12	presence
9786	58	73	2025-05-12	presence
9787	58	74	2025-05-12	presence
9788	58	75	2025-05-12	presence
9789	58	76	2025-05-12	presence
9790	58	77	2025-05-12	presence
9791	59	73	2025-05-12	presence
9792	59	74	2025-05-12	presence
9793	59	75	2025-05-12	presence
9794	59	76	2025-05-12	presence
9795	59	77	2025-05-12	presence
9796	60	73	2025-05-12	late
9797	60	74	2025-05-12	excused absence
9798	60	75	2025-05-12	presence
9799	60	76	2025-05-12	presence
9800	60	77	2025-05-12	presence
9801	61	95	2025-05-12	presence
9802	61	96	2025-05-12	presence
9803	61	97	2025-05-12	presence
9804	61	98	2025-05-12	presence
9805	61	99	2025-05-12	presence
9806	62	95	2025-05-12	excused absence
9807	62	96	2025-05-12	presence
9808	62	97	2025-05-12	presence
9809	62	98	2025-05-12	presence
9810	62	99	2025-05-12	presence
9811	63	95	2025-05-12	presence
9812	63	96	2025-05-12	presence
9813	63	97	2025-05-12	presence
9814	63	98	2025-05-12	absence
9815	63	99	2025-05-12	presence
9816	64	95	2025-05-12	presence
9817	64	96	2025-05-12	presence
9818	64	97	2025-05-12	presence
9819	64	98	2025-05-12	presence
9820	64	99	2025-05-12	presence
9821	65	95	2025-05-12	presence
9822	65	96	2025-05-12	presence
9823	65	97	2025-05-12	presence
9824	65	98	2025-05-12	presence
9825	65	99	2025-05-12	presence
9826	66	95	2025-05-12	presence
9827	66	96	2025-05-12	presence
9828	66	97	2025-05-12	presence
9829	66	98	2025-05-12	presence
9830	66	99	2025-05-12	presence
9831	67	95	2025-05-12	presence
9832	67	96	2025-05-12	presence
9833	67	97	2025-05-12	presence
9834	67	98	2025-05-12	presence
9835	67	99	2025-05-12	presence
9836	68	95	2025-05-12	presence
9837	68	96	2025-05-12	presence
9838	68	97	2025-05-12	presence
9839	68	98	2025-05-12	presence
9840	68	99	2025-05-12	presence
9841	69	95	2025-05-12	presence
9842	69	96	2025-05-12	presence
9843	69	97	2025-05-12	presence
9844	69	98	2025-05-12	presence
9845	69	99	2025-05-12	presence
9846	70	95	2025-05-12	excused absence
9847	70	96	2025-05-12	presence
9848	70	97	2025-05-12	presence
9849	70	98	2025-05-12	presence
9850	70	99	2025-05-12	presence
9851	71	95	2025-05-12	presence
9852	71	96	2025-05-12	presence
9853	71	97	2025-05-12	presence
9854	71	98	2025-05-12	presence
9855	71	99	2025-05-12	absence
9856	72	95	2025-05-12	presence
9857	72	96	2025-05-12	presence
9858	72	97	2025-05-12	presence
9859	72	98	2025-05-12	presence
9860	72	99	2025-05-12	presence
9861	73	95	2025-05-12	presence
9862	73	96	2025-05-12	presence
9863	73	97	2025-05-12	presence
9864	73	98	2025-05-12	presence
9865	73	99	2025-05-12	presence
9866	74	95	2025-05-12	presence
9867	74	96	2025-05-12	absence
9868	74	97	2025-05-12	presence
9869	74	98	2025-05-12	presence
9870	74	99	2025-05-12	presence
9871	75	95	2025-05-12	presence
9872	75	96	2025-05-12	presence
9873	75	97	2025-05-12	excused absence
9874	75	98	2025-05-12	presence
9875	75	99	2025-05-12	presence
9876	76	95	2025-05-12	excused absence
9877	76	96	2025-05-12	presence
9878	76	97	2025-05-12	excused absence
9879	76	98	2025-05-12	presence
9880	76	99	2025-05-12	presence
9881	77	95	2025-05-12	late
9882	77	96	2025-05-12	absence
9883	77	97	2025-05-12	presence
9884	77	98	2025-05-12	late
9885	77	99	2025-05-12	presence
9886	78	95	2025-05-12	presence
9887	78	96	2025-05-12	presence
9888	78	97	2025-05-12	presence
9889	78	98	2025-05-12	presence
9890	78	99	2025-05-12	presence
9891	79	95	2025-05-12	presence
9892	79	96	2025-05-12	presence
9893	79	97	2025-05-12	presence
9894	79	98	2025-05-12	presence
9895	79	99	2025-05-12	presence
9896	80	95	2025-05-12	presence
9897	80	96	2025-05-12	presence
9898	80	97	2025-05-12	presence
9899	80	98	2025-05-12	presence
9900	80	99	2025-05-12	presence
9901	81	117	2025-05-12	presence
9902	81	118	2025-05-12	presence
9903	81	119	2025-05-12	presence
9904	81	120	2025-05-12	presence
9905	81	121	2025-05-12	presence
9906	82	117	2025-05-12	presence
9907	82	118	2025-05-12	presence
9908	82	119	2025-05-12	presence
9909	82	120	2025-05-12	presence
9910	82	121	2025-05-12	presence
9911	83	117	2025-05-12	presence
9912	83	118	2025-05-12	absence
9913	83	119	2025-05-12	presence
9914	83	120	2025-05-12	presence
9915	83	121	2025-05-12	presence
9916	84	117	2025-05-12	presence
9917	84	118	2025-05-12	presence
9918	84	119	2025-05-12	presence
9919	84	120	2025-05-12	presence
9920	84	121	2025-05-12	presence
9921	85	117	2025-05-12	presence
9922	85	118	2025-05-12	presence
9923	85	119	2025-05-12	presence
9924	85	120	2025-05-12	presence
9925	85	121	2025-05-12	presence
9926	86	117	2025-05-12	absence
9927	86	118	2025-05-12	presence
9928	86	119	2025-05-12	presence
9929	86	120	2025-05-12	presence
9930	86	121	2025-05-12	absence
9931	87	117	2025-05-12	presence
9932	87	118	2025-05-12	presence
9933	87	119	2025-05-12	presence
9934	87	120	2025-05-12	absence
9935	87	121	2025-05-12	presence
9936	88	117	2025-05-12	presence
9937	88	118	2025-05-12	presence
9938	88	119	2025-05-12	presence
9939	88	120	2025-05-12	absence
9940	88	121	2025-05-12	presence
9941	89	117	2025-05-12	presence
9942	89	118	2025-05-12	presence
9943	89	119	2025-05-12	presence
9944	89	120	2025-05-12	presence
9945	89	121	2025-05-12	presence
9946	90	117	2025-05-12	presence
9947	90	118	2025-05-12	presence
9948	90	119	2025-05-12	presence
9949	90	120	2025-05-12	presence
9950	90	121	2025-05-12	presence
9951	91	117	2025-05-12	presence
9952	91	118	2025-05-12	presence
9953	91	119	2025-05-12	presence
9954	91	120	2025-05-12	presence
9955	91	121	2025-05-12	presence
9956	92	117	2025-05-12	presence
9957	92	118	2025-05-12	presence
9958	92	119	2025-05-12	excused absence
9959	92	120	2025-05-12	presence
9960	92	121	2025-05-12	presence
9961	93	117	2025-05-12	presence
9962	93	118	2025-05-12	presence
9963	93	119	2025-05-12	absence
9964	93	120	2025-05-12	presence
9965	93	121	2025-05-12	presence
9966	94	117	2025-05-12	presence
9967	94	118	2025-05-12	presence
9968	94	119	2025-05-12	presence
9969	94	120	2025-05-12	presence
9970	94	121	2025-05-12	presence
9971	95	117	2025-05-12	presence
9972	95	118	2025-05-12	excused absence
9973	95	119	2025-05-12	presence
9974	95	120	2025-05-12	presence
9975	95	121	2025-05-12	presence
9976	96	117	2025-05-12	presence
9977	96	118	2025-05-12	presence
9978	96	119	2025-05-12	presence
9979	96	120	2025-05-12	presence
9980	96	121	2025-05-12	presence
9981	97	117	2025-05-12	presence
9982	97	118	2025-05-12	absence
9983	97	119	2025-05-12	presence
9984	97	120	2025-05-12	presence
9985	97	121	2025-05-12	presence
9986	98	117	2025-05-12	presence
9987	98	118	2025-05-12	presence
9988	98	119	2025-05-12	presence
9989	98	120	2025-05-12	presence
9990	98	121	2025-05-12	presence
9991	99	117	2025-05-12	late
9992	99	118	2025-05-12	presence
9993	99	119	2025-05-12	excused absence
9994	99	120	2025-05-12	presence
9995	99	121	2025-05-12	presence
9996	100	117	2025-05-12	presence
9997	100	118	2025-05-12	presence
9998	100	119	2025-05-12	presence
9999	100	120	2025-05-12	presence
10000	100	121	2025-05-12	late
\.

COPY tests FROM stdin;
1	Test - Matematyka	1	1	2025-06-21	1
2	Praca klasowa - Matematyka	1	1	2025-06-19	1
3	Kartkówka - Matematyka	1	1	2025-06-28	1
4	Praca klasowa - Język polski	2	2	2025-06-28	1
5	Praca klasowa - Język polski	2	2	2025-06-24	1
6	Test - Język polski	2	2	2025-06-23	1
7	Kartkówka - Język angielski	3	3	2025-06-15	1
8	Kartkówka - Język angielski	3	4	2025-06-23	1
9	Sprawdzian - Język angielski	3	4	2025-06-09	1
10	Sprawdzian - Historia	4	5	2025-06-13	1
11	Sprawdzian - Historia	4	5	2025-06-27	1
12	Sprawdzian - Geografia	5	6	2025-06-23	1
13	Praca klasowa - Biologia	6	7	2025-06-15	1
14	Sprawdzian - Biologia	6	7	2025-06-23	1
15	Test - Chemia	7	8	2025-06-13	1
16	Sprawdzian - Chemia	7	8	2025-06-28	1
17	Praca klasowa - Fizyka	8	9	2025-06-11	1
18	Test - Fizyka	8	9	2025-06-15	1
19	Sprawdzian - Wychowanie fizyczne	10	12	2025-06-17	1
20	Sprawdzian - Wychowanie fizyczne	10	12	2025-06-19	1
21	Test - Wychowanie fizyczne	10	13	2025-06-20	1
22	Test - WOS	11	14	2025-06-15	1
23	Test - Język niemiecki	12	15	2025-06-25	1
24	Kartkówka - Język niemiecki	12	15	2025-06-10	1
25	Kartkówka - Plastyka	13	16	2025-06-30	1
26	Sprawdzian - Muzyka	14	17	2025-06-26	1
27	Test - Matematyka	1	19	2025-06-13	2
28	Kartkówka - Język polski	2	20	2025-06-17	2
29	Test - Język polski	2	20	2025-06-20	2
30	Sprawdzian - Język angielski	3	21	2025-06-19	2
31	Sprawdzian - Język angielski	3	21	2025-06-14	2
32	Sprawdzian - Język angielski	3	21	2025-06-22	2
33	Test - Język angielski	3	22	2025-06-11	2
34	Test - Język angielski	3	22	2025-06-19	2
35	Test - Historia	4	23	2025-06-30	2
36	Test - Historia	4	23	2025-06-16	2
37	Kartkówka - Historia	4	23	2025-06-11	2
38	Kartkówka - Geografia	5	24	2025-06-24	2
39	Praca klasowa - Biologia	6	25	2025-06-21	2
40	Kartkówka - Biologia	6	25	2025-06-26	2
41	Kartkówka - Chemia	7	26	2025-06-26	2
42	Praca klasowa - Fizyka	8	27	2025-06-22	2
43	Praca klasowa - Fizyka	8	27	2025-06-19	2
44	Kartkówka - Informatyka	9	28	2025-06-11	2
45	Kartkówka - Informatyka	9	28	2025-06-17	2
46	Sprawdzian - Informatyka	9	29	2025-06-11	2
47	Test - Wychowanie fizyczne	10	30	2025-06-20	2
48	Test - WOS	11	32	2025-06-19	2
49	Sprawdzian - WOS	11	32	2025-06-21	2
50	Kartkówka - Język niemiecki	12	33	2025-06-27	2
51	Kartkówka - Etyka	15	36	2025-06-24	2
52	Test - Etyka	15	36	2025-06-25	2
53	Kartkówka - Matematyka	1	37	2025-06-22	3
54	Praca klasowa - Język polski	2	38	2025-06-12	3
55	Praca klasowa - Język polski	2	38	2025-06-12	3
56	Kartkówka - Język angielski	3	40	2025-06-28	3
57	Sprawdzian - Historia	4	41	2025-06-11	3
58	Sprawdzian - Historia	4	41	2025-06-24	3
59	Sprawdzian - Historia	4	41	2025-06-13	3
60	Test - Geografia	5	42	2025-06-12	3
61	Sprawdzian - Geografia	5	42	2025-06-11	3
62	Test - Biologia	6	43	2025-06-20	3
63	Sprawdzian - Biologia	6	43	2025-06-14	3
64	Test - Chemia	7	44	2025-06-23	3
65	Test - Chemia	7	44	2025-06-14	3
66	Test - Fizyka	8	45	2025-06-13	3
67	Sprawdzian - Informatyka	9	46	2025-06-21	3
68	Test - Informatyka	9	46	2025-06-23	3
69	Test - Informatyka	9	46	2025-06-27	3
70	Kartkówka - Informatyka	9	47	2025-06-18	3
71	Sprawdzian - Wychowanie fizyczne	10	49	2025-06-28	3
72	Praca klasowa - Wychowanie fizyczne	10	49	2025-06-23	3
73	Kartkówka - Język niemiecki	12	51	2025-06-11	3
74	Kartkówka - Plastyka	13	52	2025-06-28	3
75	Sprawdzian - Plastyka	13	52	2025-06-24	3
76	Sprawdzian - Muzyka	14	53	2025-06-24	3
77	Praca klasowa - Etyka	15	54	2025-06-29	3
78	Sprawdzian - Matematyka	1	55	2025-06-21	4
79	Test - Język polski	2	56	2025-06-16	4
80	Praca klasowa - Język polski	2	56	2025-06-24	4
81	Test - Język angielski	3	57	2025-06-27	4
82	Praca klasowa - Język angielski	3	57	2025-06-23	4
83	Sprawdzian - Język angielski	3	58	2025-06-17	4
84	Test - Język angielski	3	58	2025-06-14	4
85	Test - Historia	4	59	2025-06-17	4
86	Kartkówka - Biologia	6	61	2025-06-27	4
87	Sprawdzian - Chemia	7	62	2025-06-27	4
88	Praca klasowa - Chemia	7	62	2025-06-30	4
89	Sprawdzian - Fizyka	8	63	2025-06-19	4
90	Kartkówka - Fizyka	8	63	2025-06-20	4
91	Praca klasowa - Informatyka	9	64	2025-06-18	4
92	Praca klasowa - Informatyka	9	65	2025-06-28	4
93	Kartkówka - Wychowanie fizyczne	10	66	2025-06-27	4
94	Test - Wychowanie fizyczne	10	66	2025-06-18	4
95	Test - Wychowanie fizyczne	10	67	2025-06-24	4
96	Praca klasowa - Wychowanie fizyczne	10	67	2025-06-21	4
97	Sprawdzian - WOS	11	68	2025-06-25	4
98	Praca klasowa - WOS	11	68	2025-06-13	4
99	Kartkówka - Plastyka	13	70	2025-06-11	4
100	Praca klasowa - Muzyka	14	71	2025-06-18	4
101	Kartkówka - Muzyka	14	71	2025-06-21	4
102	Test - Etyka	15	72	2025-06-29	4
103	Test - Etyka	15	72	2025-06-28	4
104	Kartkówka - Matematyka	1	73	2025-06-17	5
105	Praca klasowa - Matematyka	1	73	2025-06-27	5
106	Test - Matematyka	1	73	2025-06-18	5
107	Sprawdzian - Język polski	2	74	2025-06-24	5
108	Kartkówka - Język angielski	3	75	2025-06-30	5
109	Sprawdzian - Język angielski	3	76	2025-06-27	5
110	Kartkówka - Język angielski	3	76	2025-06-12	5
111	Praca klasowa - Język angielski	3	76	2025-06-17	5
112	Test - Geografia	5	78	2025-06-19	5
113	Kartkówka - Biologia	6	79	2025-06-16	5
114	Praca klasowa - Biologia	6	79	2025-06-25	5
115	Sprawdzian - Biologia	6	79	2025-06-14	5
116	Kartkówka - Chemia	7	80	2025-06-17	5
117	Praca klasowa - Chemia	7	80	2025-06-17	5
118	Praca klasowa - Chemia	7	80	2025-06-15	5
119	Sprawdzian - Fizyka	8	81	2025-06-20	5
120	Test - Fizyka	8	81	2025-06-11	5
121	Test - Informatyka	9	82	2025-06-18	5
122	Test - Informatyka	9	83	2025-06-13	5
123	Praca klasowa - Informatyka	9	83	2025-06-29	5
124	Sprawdzian - Informatyka	9	83	2025-06-29	5
125	Sprawdzian - Wychowanie fizyczne	10	84	2025-06-20	5
126	Kartkówka - Wychowanie fizyczne	10	84	2025-06-28	5
127	Sprawdzian - Wychowanie fizyczne	10	84	2025-06-19	5
128	Test - Wychowanie fizyczne	10	85	2025-06-15	5
129	Test - WOS	11	86	2025-06-23	5
130	Sprawdzian - Język niemiecki	12	87	2025-06-21	5
131	Praca klasowa - Plastyka	13	88	2025-06-27	5
132	Kartkówka - Muzyka	14	89	2025-06-30	5
133	Test - Muzyka	14	89	2025-06-19	5
134	Kartkówka - Muzyka	14	89	2025-06-30	5
135	Praca klasowa - Etyka	15	90	2025-06-16	5
\.

COPY events FROM stdin;
1	Spektakl teatralny	Szczegóły zostaną podane później	2025-07-30	1
2	Akademia	Udział dobrowolny	2025-06-16	1
3	Akademia	Więcej informacji u wychowawcy	2025-07-14	1
4	Akademia	Obowiązkowe dla całej klasy	2025-06-13	2
5	Spektakl teatralny	Szczegóły zostaną podane później	2025-07-17	2
6	Kiermasz	Udział dobrowolny	2025-06-02	2
7	Wycieczka klasowa	Zapraszamy wszystkich uczniów	2025-06-24	2
8	Wycieczka klasowa	Udział dobrowolny	2025-06-17	2
9	Spektakl teatralny	Udział dobrowolny	2025-07-29	3
10	Konkurs szkolny	Więcej informacji u wychowawcy	2025-07-04	3
11	Akademia	Szczegóły zostaną podane później	2025-06-09	4
12	Kiermasz	Szczegóły zostaną podane później	2025-06-12	4
13	Kiermasz	Więcej informacji u wychowawcy	2025-08-01	4
14	Dzień otwarty	Szczegóły zostaną podane później	2025-08-03	4
15	Dzień otwarty	Udział dobrowolny	2025-06-29	4
16	Konkurs szkolny	Udział dobrowolny	2025-06-03	5
17	Zebranie z rodzicami	Obowiązkowe dla całej klasy	2025-07-12	5
\.

COPY grades FROM stdin;
1	1	13	5	3.00	2025-04-23	Sprawdzian
2	1	13	5	5.00	2025-03-27	Praca klasowa
3	1	13	5	4.00	2025-03-15	Projekt
4	1	13	5	6.00	2025-05-04	Praca klasowa
5	1	12	3	5.00	2025-03-30	Praca klasowa
6	1	12	3	4.00	2025-04-24	Prezentacja
7	1	12	3	5.00	2025-04-26	Praca domowa
8	1	4	5	2.00	2025-05-26	Test
9	1	4	5	5.00	2025-03-20	Aktywność
10	1	4	5	6.00	2025-03-24	Odpowiedź ustna
11	1	4	5	4.00	2025-03-21	Projekt
12	1	4	5	5.00	2025-03-15	Projekt
13	1	3	2	6.00	2025-04-13	Odpowiedź ustna
14	1	3	2	3.00	2025-04-04	Sprawdzian
15	1	3	2	4.00	2025-04-16	Projekt
16	1	3	2	5.00	2025-03-27	Praca klasowa
17	1	15	14	3.00	2025-03-15	Prezentacja
18	1	15	14	5.00	2025-04-12	Praca klasowa
19	1	15	14	6.00	2025-05-07	Odpowiedź ustna
20	1	15	14	4.00	2025-03-13	Prezentacja
21	1	14	5	4.00	2025-04-26	Test
22	1	14	5	5.00	2025-03-29	Odpowiedź ustna
23	1	14	5	3.00	2025-05-27	Sprawdzian
24	1	14	5	5.00	2025-06-02	Praca klasowa
25	1	14	5	6.00	2025-04-29	Projekt
26	1	14	5	4.00	2025-03-15	Projekt
27	1	14	5	4.00	2025-05-19	Projekt
28	1	11	11	4.00	2025-03-20	Prezentacja
29	1	11	11	5.00	2025-03-24	Prezentacja
30	1	11	11	6.00	2025-03-15	Projekt
31	1	11	11	5.00	2025-05-04	Test
32	1	11	11	5.00	2025-04-01	Kartkówka
33	1	11	11	6.00	2025-05-30	Praca klasowa
34	1	11	11	1.00	2025-03-31	Test
35	1	7	14	6.00	2025-03-19	Quiz
36	1	7	14	2.00	2025-03-18	Kartkówka
37	1	7	14	5.00	2025-06-06	Test
38	1	7	14	1.00	2025-03-12	Kartkówka
39	1	7	14	5.00	2025-05-13	Prezentacja
40	1	7	14	6.00	2025-03-14	Projekt
41	1	9	14	2.00	2025-03-14	Sprawdzian
42	1	9	14	5.00	2025-05-08	Kartkówka
43	1	9	14	6.00	2025-04-15	Praca domowa
44	1	9	14	4.00	2025-04-14	Projekt
45	1	9	14	5.00	2025-06-04	Odpowiedź ustna
46	1	9	14	5.00	2025-05-31	Test
47	1	9	14	6.00	2025-05-20	Kartkówka
48	1	9	14	3.00	2025-05-27	Aktywność
49	1	8	2	4.00	2025-05-11	Praca domowa
50	1	8	2	3.00	2025-05-18	Test
51	1	8	2	6.00	2025-03-29	Quiz
52	1	8	2	5.00	2025-05-02	Sprawdzian
53	1	10	11	6.00	2025-04-04	Praca klasowa
54	1	10	11	4.00	2025-04-24	Odpowiedź ustna
55	1	10	11	4.00	2025-03-20	Odpowiedź ustna
56	1	14	13	6.00	2025-03-12	Aktywność
57	1	14	13	3.00	2025-05-20	Kartkówka
58	1	14	13	3.00	2025-04-06	Kartkówka
59	1	14	13	6.00	2025-03-10	Odpowiedź ustna
60	1	14	13	4.00	2025-04-13	Test
61	1	14	13	5.00	2025-04-09	Praca klasowa
62	1	14	13	5.00	2025-05-24	Sprawdzian
63	1	1	6	5.00	2025-05-19	Quiz
64	1	1	6	5.00	2025-04-28	Odpowiedź ustna
65	1	1	6	4.00	2025-03-26	Sprawdzian
66	1	1	6	3.00	2025-06-01	Quiz
67	1	8	13	3.00	2025-04-30	Odpowiedź ustna
68	1	8	13	4.00	2025-05-16	Prezentacja
69	1	8	13	5.00	2025-05-01	Test
70	1	8	13	5.00	2025-04-19	Praca domowa
71	1	8	13	3.00	2025-04-29	Aktywność
72	1	8	13	4.00	2025-05-24	Quiz
73	1	8	13	5.00	2025-03-25	Aktywność
74	1	8	3	5.00	2025-05-11	Sprawdzian
75	1	8	3	4.00	2025-04-10	Quiz
76	1	8	3	6.00	2025-05-17	Praca domowa
77	1	8	3	5.00	2025-05-24	Prezentacja
78	1	8	3	3.00	2025-05-27	Kartkówka
79	1	8	3	4.00	2025-03-12	Aktywność
80	1	8	3	5.00	2025-03-14	Quiz
81	1	8	3	4.00	2025-04-27	Praca domowa
82	2	13	5	4.00	2025-05-04	Projekt
83	2	13	5	4.00	2025-04-01	Praca klasowa
84	2	13	5	5.00	2025-04-01	Projekt
85	2	13	5	4.00	2025-05-25	Odpowiedź ustna
86	2	13	5	5.00	2025-03-22	Sprawdzian
87	2	13	5	5.00	2025-05-30	Praca klasowa
88	2	12	3	5.00	2025-04-07	Quiz
89	2	12	3	1.00	2025-03-25	Projekt
90	2	12	3	4.00	2025-04-15	Odpowiedź ustna
91	2	12	3	6.00	2025-05-20	Sprawdzian
92	2	12	3	5.00	2025-05-11	Projekt
93	2	12	3	3.00	2025-03-16	Projekt
94	2	12	3	5.00	2025-05-14	Quiz
95	2	12	3	3.00	2025-03-24	Aktywność
96	2	4	5	5.00	2025-04-27	Quiz
97	2	4	5	4.00	2025-03-10	Praca klasowa
98	2	4	5	6.00	2025-04-14	Quiz
99	2	4	5	5.00	2025-05-29	Projekt
100	2	4	5	4.00	2025-04-09	Praca domowa
101	2	4	5	4.00	2025-06-05	Aktywność
102	2	4	5	5.00	2025-04-22	Sprawdzian
103	2	4	5	5.00	2025-05-26	Quiz
104	2	3	2	6.00	2025-05-10	Prezentacja
105	2	3	2	5.00	2025-03-14	Kartkówka
106	2	3	2	6.00	2025-05-14	Aktywność
107	2	3	2	4.00	2025-03-31	Sprawdzian
108	2	3	2	5.00	2025-05-28	Praca klasowa
109	2	3	2	5.00	2025-04-19	Aktywność
110	2	15	14	6.00	2025-03-27	Test
111	2	15	14	3.00	2025-05-15	Aktywność
112	2	15	14	3.00	2025-05-12	Projekt
113	2	15	14	6.00	2025-04-14	Aktywność
114	2	15	14	6.00	2025-03-31	Prezentacja
115	2	15	14	4.00	2025-05-22	Projekt
116	2	15	14	5.00	2025-06-03	Test
117	2	15	14	4.00	2025-04-30	Praca klasowa
118	2	14	5	4.00	2025-05-11	Test
119	2	14	5	5.00	2025-03-10	Kartkówka
120	2	14	5	3.00	2025-04-03	Projekt
121	2	14	5	6.00	2025-05-08	Quiz
122	2	11	11	1.00	2025-05-10	Prezentacja
123	2	11	11	4.00	2025-05-08	Quiz
124	2	11	11	3.00	2025-04-25	Praca klasowa
125	2	11	11	5.00	2025-06-05	Quiz
126	2	11	11	4.00	2025-03-23	Projekt
127	2	11	11	3.00	2025-03-30	Kartkówka
128	2	11	11	3.00	2025-04-09	Praca domowa
129	2	7	14	1.00	2025-03-10	Prezentacja
130	2	7	14	5.00	2025-04-07	Aktywność
131	2	7	14	3.00	2025-03-20	Sprawdzian
132	2	7	14	3.00	2025-05-14	Sprawdzian
133	2	7	14	4.00	2025-05-31	Sprawdzian
134	2	7	14	3.00	2025-03-27	Test
135	2	9	14	5.00	2025-04-09	Odpowiedź ustna
136	2	9	14	5.00	2025-03-10	Kartkówka
137	2	9	14	6.00	2025-05-27	Praca domowa
138	2	9	14	5.00	2025-05-31	Prezentacja
139	2	9	14	3.00	2025-04-10	Quiz
140	2	9	14	4.00	2025-04-08	Praca klasowa
141	2	8	2	6.00	2025-05-19	Projekt
142	2	8	2	6.00	2025-05-12	Praca klasowa
143	2	8	2	2.00	2025-05-20	Kartkówka
144	2	8	2	4.00	2025-06-04	Test
145	2	8	2	5.00	2025-06-04	Prezentacja
146	2	8	2	4.00	2025-05-08	Kartkówka
147	2	10	11	6.00	2025-04-21	Test
148	2	10	11	6.00	2025-05-19	Projekt
149	2	10	11	5.00	2025-03-28	Praca klasowa
150	2	10	11	6.00	2025-04-08	Projekt
151	2	14	13	5.00	2025-04-10	Quiz
152	2	14	13	3.00	2025-03-27	Odpowiedź ustna
153	2	14	13	5.00	2025-04-03	Praca domowa
154	2	14	13	6.00	2025-03-29	Aktywność
155	2	14	13	5.00	2025-05-19	Praca klasowa
156	2	14	13	2.00	2025-06-02	Aktywność
157	2	14	13	6.00	2025-05-17	Sprawdzian
158	2	1	6	6.00	2025-04-08	Praca domowa
159	2	1	6	6.00	2025-04-06	Sprawdzian
160	2	1	6	5.00	2025-04-09	Projekt
161	2	8	13	4.00	2025-04-20	Odpowiedź ustna
162	2	8	13	3.00	2025-05-26	Aktywność
163	2	8	13	4.00	2025-06-06	Aktywność
164	2	8	13	5.00	2025-05-21	Odpowiedź ustna
165	2	8	13	2.00	2025-05-14	Projekt
166	2	8	13	5.00	2025-05-22	Quiz
167	2	8	13	5.00	2025-04-02	Praca domowa
168	2	8	13	3.00	2025-05-29	Quiz
169	2	8	3	6.00	2025-03-24	Projekt
170	2	8	3	4.00	2025-05-27	Praca domowa
171	2	8	3	4.00	2025-06-07	Test
172	2	8	3	4.00	2025-05-25	Quiz
173	3	13	5	4.00	2025-05-12	Prezentacja
174	3	13	5	3.00	2025-04-13	Odpowiedź ustna
175	3	13	5	5.00	2025-04-26	Aktywność
176	3	13	5	3.00	2025-03-30	Kartkówka
177	3	13	5	6.00	2025-05-02	Odpowiedź ustna
178	3	12	3	6.00	2025-04-12	Prezentacja
179	3	12	3	4.00	2025-05-01	Prezentacja
180	3	12	3	3.00	2025-05-10	Praca klasowa
181	3	12	3	5.00	2025-06-01	Test
182	3	12	3	3.00	2025-05-17	Kartkówka
183	3	4	5	3.00	2025-03-18	Quiz
184	3	4	5	2.00	2025-04-07	Praca klasowa
185	3	4	5	4.00	2025-05-24	Test
186	3	4	5	4.00	2025-06-03	Kartkówka
187	3	4	5	6.00	2025-04-30	Sprawdzian
188	3	3	2	3.00	2025-04-27	Test
189	3	3	2	5.00	2025-04-13	Kartkówka
190	3	3	2	5.00	2025-03-26	Test
191	3	3	2	4.00	2025-06-07	Praca klasowa
192	3	3	2	5.00	2025-05-31	Projekt
193	3	3	2	5.00	2025-04-09	Aktywność
194	3	3	2	3.00	2025-06-02	Praca domowa
195	3	3	2	6.00	2025-05-09	Praca klasowa
196	3	15	14	5.00	2025-04-12	Projekt
197	3	15	14	5.00	2025-04-18	Projekt
198	3	15	14	3.00	2025-04-25	Praca klasowa
199	3	15	14	6.00	2025-05-19	Kartkówka
200	3	15	14	3.00	2025-04-24	Aktywność
201	3	15	14	6.00	2025-05-18	Praca domowa
202	3	15	14	6.00	2025-05-26	Odpowiedź ustna
203	3	14	5	5.00	2025-05-17	Projekt
204	3	14	5	5.00	2025-03-18	Prezentacja
205	3	14	5	3.00	2025-05-10	Test
206	3	14	5	5.00	2025-03-18	Odpowiedź ustna
207	3	14	5	5.00	2025-06-02	Kartkówka
208	3	14	5	5.00	2025-05-24	Quiz
209	3	14	5	3.00	2025-03-26	Kartkówka
210	3	14	5	6.00	2025-03-11	Quiz
211	3	11	11	3.00	2025-04-21	Praca klasowa
212	3	11	11	5.00	2025-03-23	Kartkówka
213	3	11	11	2.00	2025-05-24	Praca domowa
214	3	11	11	3.00	2025-04-20	Kartkówka
215	3	11	11	5.00	2025-03-14	Sprawdzian
216	3	11	11	5.00	2025-04-16	Quiz
217	3	11	11	1.00	2025-03-21	Quiz
218	3	11	11	6.00	2025-05-13	Projekt
219	3	7	14	2.00	2025-03-24	Aktywność
220	3	7	14	6.00	2025-04-13	Aktywność
221	3	7	14	6.00	2025-04-15	Aktywność
222	3	7	14	4.00	2025-03-17	Projekt
223	3	7	14	6.00	2025-04-21	Sprawdzian
224	3	9	14	5.00	2025-05-24	Odpowiedź ustna
225	3	9	14	5.00	2025-03-19	Praca klasowa
226	3	9	14	4.00	2025-04-09	Odpowiedź ustna
227	3	9	14	6.00	2025-05-21	Aktywność
228	3	8	2	4.00	2025-05-29	Quiz
229	3	8	2	5.00	2025-04-27	Sprawdzian
230	3	8	2	5.00	2025-04-29	Prezentacja
231	3	10	11	5.00	2025-03-28	Kartkówka
232	3	10	11	5.00	2025-04-03	Aktywność
233	3	10	11	5.00	2025-03-22	Praca domowa
234	3	10	11	4.00	2025-06-03	Projekt
235	3	10	11	5.00	2025-05-30	Projekt
236	3	14	13	5.00	2025-05-11	Aktywność
237	3	14	13	3.00	2025-03-20	Test
238	3	14	13	2.00	2025-06-04	Quiz
239	3	14	13	3.00	2025-05-05	Praca klasowa
240	3	14	13	3.00	2025-05-05	Odpowiedź ustna
241	3	1	6	6.00	2025-04-23	Sprawdzian
242	3	1	6	5.00	2025-03-18	Quiz
243	3	1	6	5.00	2025-03-28	Quiz
244	3	8	13	3.00	2025-03-19	Praca domowa
245	3	8	13	3.00	2025-04-17	Odpowiedź ustna
246	3	8	13	6.00	2025-05-01	Sprawdzian
247	3	8	13	5.00	2025-05-17	Sprawdzian
248	3	8	13	5.00	2025-05-16	Praca domowa
249	3	8	13	5.00	2025-04-01	Test
250	3	8	3	5.00	2025-05-31	Kartkówka
251	3	8	3	3.00	2025-03-14	Praca domowa
252	3	8	3	5.00	2025-04-23	Aktywność
253	4	13	5	4.00	2025-03-10	Quiz
254	4	13	5	5.00	2025-05-25	Praca klasowa
255	4	13	5	5.00	2025-04-16	Aktywność
256	4	13	5	3.00	2025-05-28	Prezentacja
257	4	13	5	6.00	2025-05-03	Projekt
258	4	13	5	6.00	2025-03-27	Aktywność
259	4	13	5	6.00	2025-04-24	Odpowiedź ustna
260	4	13	5	5.00	2025-04-19	Praca domowa
261	4	12	3	6.00	2025-04-27	Prezentacja
262	4	12	3	4.00	2025-06-03	Kartkówka
263	4	12	3	5.00	2025-05-10	Aktywność
264	4	12	3	6.00	2025-04-21	Quiz
265	4	12	3	4.00	2025-03-23	Odpowiedź ustna
266	4	12	3	4.00	2025-05-17	Projekt
267	4	4	5	5.00	2025-04-08	Projekt
268	4	4	5	5.00	2025-06-06	Kartkówka
269	4	4	5	5.00	2025-05-22	Prezentacja
270	4	3	2	6.00	2025-03-18	Odpowiedź ustna
271	4	3	2	5.00	2025-06-04	Sprawdzian
272	4	3	2	2.00	2025-04-01	Praca klasowa
273	4	3	2	2.00	2025-03-31	Aktywność
274	4	3	2	4.00	2025-05-28	Praca klasowa
275	4	3	2	6.00	2025-03-15	Praca domowa
276	4	3	2	3.00	2025-04-06	Odpowiedź ustna
277	4	15	14	5.00	2025-04-23	Praca klasowa
278	4	15	14	4.00	2025-05-20	Sprawdzian
279	4	15	14	2.00	2025-05-08	Kartkówka
280	4	14	5	4.00	2025-05-22	Projekt
281	4	14	5	4.00	2025-05-17	Praca klasowa
282	4	14	5	6.00	2025-03-20	Quiz
283	4	14	5	5.00	2025-05-29	Quiz
284	4	14	5	4.00	2025-05-16	Praca klasowa
285	4	14	5	5.00	2025-04-15	Prezentacja
286	4	14	5	5.00	2025-04-10	Praca klasowa
287	4	14	5	5.00	2025-05-24	Quiz
288	4	11	11	3.00	2025-04-26	Praca klasowa
289	4	11	11	3.00	2025-03-15	Projekt
290	4	11	11	6.00	2025-03-21	Quiz
291	4	11	11	4.00	2025-04-26	Projekt
292	4	7	14	5.00	2025-03-29	Odpowiedź ustna
293	4	7	14	4.00	2025-04-01	Praca domowa
294	4	7	14	6.00	2025-03-28	Prezentacja
295	4	7	14	4.00	2025-04-05	Prezentacja
296	4	7	14	4.00	2025-04-20	Aktywność
297	4	7	14	1.00	2025-06-01	Sprawdzian
298	4	7	14	5.00	2025-03-22	Quiz
299	4	7	14	4.00	2025-04-03	Sprawdzian
300	4	9	14	4.00	2025-03-21	Praca klasowa
301	4	9	14	5.00	2025-03-27	Prezentacja
302	4	9	14	4.00	2025-04-29	Praca domowa
303	4	9	14	4.00	2025-03-15	Projekt
304	4	8	2	4.00	2025-04-10	Kartkówka
305	4	8	2	6.00	2025-05-22	Sprawdzian
306	4	8	2	5.00	2025-04-19	Kartkówka
307	4	8	2	5.00	2025-04-12	Aktywność
308	4	10	11	5.00	2025-03-12	Praca domowa
309	4	10	11	4.00	2025-05-30	Prezentacja
310	4	10	11	5.00	2025-04-21	Odpowiedź ustna
311	4	10	11	5.00	2025-05-09	Praca klasowa
312	4	10	11	2.00	2025-05-02	Quiz
313	4	14	13	5.00	2025-05-25	Praca domowa
314	4	14	13	3.00	2025-06-07	Praca klasowa
315	4	14	13	3.00	2025-04-02	Aktywność
316	4	14	13	5.00	2025-04-30	Kartkówka
317	4	14	13	4.00	2025-03-26	Projekt
318	4	1	6	5.00	2025-03-30	Quiz
319	4	1	6	5.00	2025-04-25	Test
320	4	1	6	5.00	2025-04-13	Prezentacja
321	4	1	6	5.00	2025-05-29	Quiz
322	4	8	13	4.00	2025-04-17	Odpowiedź ustna
323	4	8	13	6.00	2025-03-26	Praca klasowa
324	4	8	13	4.00	2025-06-06	Praca domowa
325	4	8	13	3.00	2025-03-20	Test
326	4	8	13	6.00	2025-06-06	Odpowiedź ustna
327	4	8	13	5.00	2025-05-22	Kartkówka
328	4	8	13	4.00	2025-05-10	Praca domowa
329	4	8	3	6.00	2025-03-15	Praca domowa
330	4	8	3	6.00	2025-05-24	Test
331	4	8	3	2.00	2025-03-13	Praca domowa
332	5	13	5	5.00	2025-05-29	Aktywność
333	5	13	5	5.00	2025-05-25	Test
334	5	13	5	5.00	2025-05-25	Sprawdzian
335	5	13	5	4.00	2025-03-18	Kartkówka
336	5	13	5	5.00	2025-04-08	Quiz
337	5	12	3	4.00	2025-05-24	Quiz
338	5	12	3	3.00	2025-05-16	Praca klasowa
339	5	12	3	4.00	2025-03-23	Praca klasowa
340	5	12	3	3.00	2025-05-21	Praca klasowa
341	5	12	3	5.00	2025-03-16	Praca domowa
342	5	12	3	3.00	2025-05-25	Odpowiedź ustna
343	5	4	5	5.00	2025-05-13	Odpowiedź ustna
344	5	4	5	3.00	2025-05-19	Praca domowa
345	5	4	5	5.00	2025-03-21	Kartkówka
346	5	4	5	5.00	2025-05-15	Odpowiedź ustna
347	5	3	2	5.00	2025-04-16	Odpowiedź ustna
348	5	3	2	5.00	2025-06-07	Test
349	5	3	2	6.00	2025-06-06	Praca domowa
350	5	3	2	3.00	2025-06-07	Prezentacja
351	5	3	2	4.00	2025-04-20	Aktywność
352	5	3	2	4.00	2025-03-25	Test
353	5	3	2	5.00	2025-05-21	Test
354	5	3	2	5.00	2025-03-18	Aktywność
355	5	15	14	6.00	2025-04-16	Test
356	5	15	14	6.00	2025-04-20	Aktywność
357	5	15	14	3.00	2025-03-14	Projekt
358	5	14	5	5.00	2025-06-01	Test
359	5	14	5	5.00	2025-03-18	Projekt
360	5	14	5	5.00	2025-04-18	Quiz
361	5	14	5	6.00	2025-03-22	Aktywność
362	5	14	5	3.00	2025-03-25	Aktywność
363	5	14	5	4.00	2025-04-04	Praca domowa
364	5	14	5	2.00	2025-03-31	Test
365	5	11	11	3.00	2025-05-26	Prezentacja
366	5	11	11	5.00	2025-03-27	Praca domowa
367	5	11	11	5.00	2025-03-30	Prezentacja
368	5	11	11	4.00	2025-06-01	Prezentacja
369	5	11	11	6.00	2025-05-10	Praca domowa
370	5	11	11	4.00	2025-03-29	Kartkówka
371	5	7	14	2.00	2025-04-18	Aktywność
372	5	7	14	6.00	2025-03-21	Projekt
373	5	7	14	4.00	2025-03-26	Test
374	5	9	14	5.00	2025-04-17	Test
375	5	9	14	4.00	2025-04-16	Kartkówka
376	5	9	14	3.00	2025-04-06	Odpowiedź ustna
377	5	9	14	6.00	2025-04-18	Quiz
378	5	9	14	5.00	2025-04-09	Quiz
379	5	9	14	3.00	2025-04-03	Kartkówka
380	5	9	14	3.00	2025-03-13	Prezentacja
381	5	9	14	4.00	2025-04-13	Sprawdzian
382	5	8	2	5.00	2025-04-11	Praca domowa
383	5	8	2	5.00	2025-05-12	Odpowiedź ustna
384	5	8	2	5.00	2025-03-24	Odpowiedź ustna
385	5	8	2	3.00	2025-05-14	Kartkówka
386	5	8	2	4.00	2025-04-22	Prezentacja
387	5	8	2	4.00	2025-03-16	Praca klasowa
388	5	8	2	6.00	2025-04-06	Aktywność
389	5	10	11	3.00	2025-05-15	Praca klasowa
390	5	10	11	4.00	2025-04-06	Odpowiedź ustna
391	5	10	11	4.00	2025-03-30	Prezentacja
392	5	10	11	4.00	2025-04-14	Prezentacja
393	5	10	11	4.00	2025-03-24	Odpowiedź ustna
394	5	14	13	3.00	2025-05-06	Sprawdzian
395	5	14	13	4.00	2025-04-19	Kartkówka
396	5	14	13	5.00	2025-04-15	Prezentacja
397	5	14	13	4.00	2025-05-10	Sprawdzian
398	5	14	13	4.00	2025-05-24	Prezentacja
399	5	14	13	4.00	2025-03-14	Quiz
400	5	1	6	3.00	2025-03-24	Praca domowa
401	5	1	6	3.00	2025-05-10	Prezentacja
402	5	1	6	1.00	2025-03-10	Quiz
403	5	1	6	5.00	2025-05-06	Kartkówka
404	5	8	13	2.00	2025-04-30	Kartkówka
405	5	8	13	3.00	2025-04-08	Prezentacja
406	5	8	13	6.00	2025-03-14	Kartkówka
407	5	8	13	5.00	2025-05-12	Quiz
408	5	8	13	3.00	2025-05-04	Projekt
409	5	8	13	6.00	2025-04-18	Test
410	5	8	13	4.00	2025-05-19	Odpowiedź ustna
411	5	8	3	4.00	2025-05-14	Aktywność
412	5	8	3	1.00	2025-03-21	Projekt
413	5	8	3	4.00	2025-05-03	Kartkówka
414	5	8	3	5.00	2025-04-06	Odpowiedź ustna
415	5	8	3	3.00	2025-03-21	Projekt
416	5	8	3	4.00	2025-06-02	Praca klasowa
417	6	13	5	4.00	2025-06-02	Quiz
418	6	13	5	5.00	2025-03-13	Odpowiedź ustna
419	6	13	5	5.00	2025-03-27	Kartkówka
420	6	13	5	4.00	2025-05-23	Aktywność
421	6	13	5	4.00	2025-03-17	Projekt
422	6	12	3	5.00	2025-04-12	Sprawdzian
423	6	12	3	4.00	2025-05-26	Test
424	6	12	3	5.00	2025-03-21	Prezentacja
425	6	12	3	6.00	2025-04-17	Quiz
426	6	12	3	6.00	2025-05-09	Prezentacja
427	6	12	3	5.00	2025-05-14	Aktywność
428	6	12	3	5.00	2025-04-27	Quiz
429	6	4	5	5.00	2025-06-03	Projekt
430	6	4	5	4.00	2025-05-04	Praca domowa
431	6	4	5	2.00	2025-04-18	Test
432	6	4	5	5.00	2025-05-18	Sprawdzian
433	6	4	5	2.00	2025-04-05	Quiz
434	6	4	5	6.00	2025-05-07	Quiz
435	6	3	2	6.00	2025-03-14	Sprawdzian
436	6	3	2	3.00	2025-03-21	Quiz
437	6	3	2	4.00	2025-03-11	Kartkówka
438	6	3	2	4.00	2025-03-29	Test
439	6	3	2	4.00	2025-05-19	Praca domowa
440	6	3	2	3.00	2025-03-31	Praca klasowa
441	6	3	2	4.00	2025-03-15	Kartkówka
442	6	3	2	4.00	2025-03-10	Projekt
443	6	15	14	2.00	2025-03-26	Praca klasowa
444	6	15	14	3.00	2025-05-29	Quiz
445	6	15	14	2.00	2025-04-14	Aktywność
446	6	15	14	5.00	2025-03-23	Test
447	6	15	14	5.00	2025-05-05	Aktywność
448	6	14	5	4.00	2025-04-10	Praca klasowa
449	6	14	5	5.00	2025-05-27	Praca klasowa
450	6	14	5	6.00	2025-04-18	Odpowiedź ustna
451	6	14	5	5.00	2025-05-02	Odpowiedź ustna
452	6	14	5	5.00	2025-05-30	Sprawdzian
453	6	14	5	5.00	2025-05-03	Praca domowa
454	6	14	5	3.00	2025-04-09	Aktywność
455	6	11	11	3.00	2025-03-12	Kartkówka
456	6	11	11	4.00	2025-05-08	Praca klasowa
457	6	11	11	3.00	2025-04-26	Quiz
458	6	11	11	5.00	2025-05-06	Sprawdzian
459	6	11	11	6.00	2025-03-16	Test
460	6	11	11	5.00	2025-03-18	Odpowiedź ustna
461	6	7	14	4.00	2025-04-18	Praca klasowa
462	6	7	14	6.00	2025-05-16	Praca domowa
463	6	7	14	3.00	2025-04-09	Praca klasowa
464	6	7	14	3.00	2025-05-24	Test
465	6	7	14	5.00	2025-05-23	Odpowiedź ustna
466	6	7	14	4.00	2025-03-11	Prezentacja
467	6	7	14	5.00	2025-04-26	Quiz
468	6	7	14	3.00	2025-04-05	Kartkówka
469	6	9	14	5.00	2025-05-05	Praca domowa
470	6	9	14	5.00	2025-04-16	Prezentacja
471	6	9	14	5.00	2025-03-29	Sprawdzian
472	6	9	14	4.00	2025-05-01	Odpowiedź ustna
473	6	8	2	5.00	2025-03-31	Kartkówka
474	6	8	2	4.00	2025-04-18	Aktywność
475	6	8	2	4.00	2025-04-24	Aktywność
476	6	8	2	6.00	2025-05-20	Quiz
477	6	8	2	6.00	2025-06-06	Quiz
478	6	8	2	6.00	2025-05-10	Aktywność
479	6	10	11	2.00	2025-05-02	Test
480	6	10	11	5.00	2025-03-15	Projekt
481	6	10	11	5.00	2025-04-05	Projekt
482	6	10	11	5.00	2025-04-25	Quiz
483	6	10	11	6.00	2025-03-14	Praca domowa
484	6	10	11	3.00	2025-04-11	Odpowiedź ustna
485	6	14	13	6.00	2025-03-15	Test
486	6	14	13	5.00	2025-03-20	Projekt
487	6	14	13	5.00	2025-04-16	Quiz
488	6	14	13	3.00	2025-06-07	Projekt
489	6	1	6	4.00	2025-04-20	Praca klasowa
490	6	1	6	4.00	2025-05-26	Sprawdzian
491	6	1	6	3.00	2025-04-15	Aktywność
492	6	8	13	6.00	2025-03-25	Sprawdzian
493	6	8	13	4.00	2025-05-08	Kartkówka
494	6	8	13	4.00	2025-06-03	Praca domowa
495	6	8	3	4.00	2025-06-07	Quiz
496	6	8	3	6.00	2025-05-14	Sprawdzian
497	6	8	3	6.00	2025-05-15	Aktywność
498	6	8	3	5.00	2025-04-23	Odpowiedź ustna
499	6	8	3	4.00	2025-05-23	Praca domowa
500	7	13	5	4.00	2025-06-02	Prezentacja
501	7	13	5	4.00	2025-05-18	Kartkówka
502	7	13	5	4.00	2025-04-08	Kartkówka
503	7	13	5	5.00	2025-04-22	Praca klasowa
504	7	13	5	3.00	2025-05-09	Sprawdzian
505	7	12	3	6.00	2025-05-17	Odpowiedź ustna
506	7	12	3	5.00	2025-03-10	Praca klasowa
507	7	12	3	5.00	2025-05-31	Kartkówka
508	7	12	3	5.00	2025-03-13	Projekt
509	7	12	3	4.00	2025-05-09	Projekt
510	7	12	3	6.00	2025-04-08	Test
511	7	4	5	4.00	2025-05-27	Praca domowa
512	7	4	5	4.00	2025-03-21	Odpowiedź ustna
513	7	4	5	3.00	2025-05-06	Quiz
514	7	4	5	4.00	2025-05-04	Kartkówka
515	7	4	5	5.00	2025-05-21	Quiz
516	7	4	5	6.00	2025-03-25	Praca klasowa
517	7	4	5	1.00	2025-05-28	Quiz
518	7	3	2	6.00	2025-05-05	Kartkówka
519	7	3	2	6.00	2025-05-24	Prezentacja
520	7	3	2	5.00	2025-06-04	Aktywność
521	7	15	14	5.00	2025-05-05	Odpowiedź ustna
522	7	15	14	4.00	2025-04-29	Aktywność
523	7	15	14	5.00	2025-06-01	Odpowiedź ustna
524	7	15	14	6.00	2025-04-04	Sprawdzian
525	7	15	14	1.00	2025-04-30	Praca klasowa
526	7	15	14	4.00	2025-05-21	Praca domowa
527	7	15	14	5.00	2025-03-25	Prezentacja
528	7	14	5	4.00	2025-05-30	Odpowiedź ustna
529	7	14	5	5.00	2025-04-20	Kartkówka
530	7	14	5	5.00	2025-04-30	Prezentacja
531	7	14	5	5.00	2025-06-06	Sprawdzian
532	7	14	5	4.00	2025-05-10	Praca klasowa
533	7	14	5	4.00	2025-03-14	Sprawdzian
534	7	14	5	4.00	2025-04-02	Kartkówka
535	7	14	5	4.00	2025-04-28	Projekt
536	7	11	11	2.00	2025-05-02	Prezentacja
537	7	11	11	4.00	2025-03-24	Projekt
538	7	11	11	6.00	2025-05-11	Odpowiedź ustna
539	7	11	11	4.00	2025-03-18	Test
540	7	7	14	4.00	2025-05-27	Aktywność
541	7	7	14	3.00	2025-05-31	Projekt
542	7	7	14	4.00	2025-03-22	Praca klasowa
543	7	7	14	5.00	2025-03-15	Projekt
544	7	9	14	4.00	2025-05-04	Prezentacja
545	7	9	14	3.00	2025-04-18	Odpowiedź ustna
546	7	9	14	3.00	2025-04-19	Odpowiedź ustna
547	7	9	14	6.00	2025-04-27	Praca klasowa
548	7	9	14	6.00	2025-03-11	Sprawdzian
549	7	9	14	4.00	2025-05-26	Projekt
550	7	8	2	4.00	2025-03-30	Praca klasowa
551	7	8	2	5.00	2025-04-24	Prezentacja
552	7	8	2	5.00	2025-03-20	Kartkówka
553	7	8	2	4.00	2025-04-05	Prezentacja
554	7	8	2	3.00	2025-04-02	Quiz
555	7	8	2	5.00	2025-04-12	Aktywność
556	7	8	2	6.00	2025-05-03	Kartkówka
557	7	10	11	5.00	2025-04-01	Aktywność
558	7	10	11	4.00	2025-05-29	Quiz
559	7	10	11	5.00	2025-03-24	Projekt
560	7	10	11	5.00	2025-04-28	Praca klasowa
561	7	14	13	5.00	2025-04-09	Aktywność
562	7	14	13	6.00	2025-04-15	Projekt
563	7	14	13	6.00	2025-04-25	Praca klasowa
564	7	14	13	4.00	2025-05-26	Kartkówka
565	7	14	13	5.00	2025-04-03	Prezentacja
566	7	14	13	2.00	2025-05-26	Projekt
567	7	14	13	2.00	2025-06-05	Aktywność
568	7	1	6	5.00	2025-04-24	Odpowiedź ustna
569	7	1	6	5.00	2025-04-19	Odpowiedź ustna
570	7	1	6	5.00	2025-05-21	Projekt
571	7	8	13	4.00	2025-04-28	Aktywność
572	7	8	13	5.00	2025-05-28	Prezentacja
573	7	8	13	6.00	2025-04-02	Projekt
574	7	8	13	4.00	2025-03-10	Quiz
575	7	8	3	5.00	2025-05-05	Prezentacja
576	7	8	3	5.00	2025-04-12	Kartkówka
577	7	8	3	6.00	2025-05-02	Odpowiedź ustna
578	7	8	3	5.00	2025-05-16	Kartkówka
579	7	8	3	3.00	2025-03-22	Prezentacja
580	9	13	5	2.00	2025-05-10	Quiz
581	9	13	5	5.00	2025-05-03	Praca klasowa
582	9	13	5	3.00	2025-03-22	Aktywność
583	9	13	5	6.00	2025-03-26	Sprawdzian
584	9	12	3	4.00	2025-05-09	Prezentacja
585	9	12	3	5.00	2025-05-05	Odpowiedź ustna
586	9	12	3	5.00	2025-03-10	Praca klasowa
587	9	12	3	5.00	2025-04-13	Praca domowa
588	9	12	3	4.00	2025-05-25	Sprawdzian
589	9	12	3	5.00	2025-04-06	Kartkówka
590	9	4	5	3.00	2025-05-08	Praca klasowa
591	9	4	5	6.00	2025-04-25	Test
592	9	4	5	2.00	2025-03-19	Kartkówka
593	9	4	5	3.00	2025-05-02	Odpowiedź ustna
594	9	4	5	4.00	2025-04-23	Quiz
595	9	4	5	5.00	2025-04-18	Test
596	9	4	5	3.00	2025-04-10	Praca klasowa
597	9	3	2	4.00	2025-05-05	Prezentacja
598	9	3	2	3.00	2025-04-16	Projekt
599	9	3	2	5.00	2025-03-27	Prezentacja
600	9	3	2	6.00	2025-03-18	Projekt
601	9	3	2	4.00	2025-05-04	Odpowiedź ustna
602	9	3	2	4.00	2025-05-09	Praca klasowa
603	9	3	2	4.00	2025-05-13	Odpowiedź ustna
604	9	3	2	5.00	2025-03-16	Praca klasowa
605	9	15	14	5.00	2025-04-12	Test
606	9	15	14	5.00	2025-03-10	Praca domowa
607	9	15	14	6.00	2025-04-20	Aktywność
608	9	15	14	6.00	2025-04-12	Praca klasowa
609	9	14	5	5.00	2025-05-17	Test
610	9	14	5	5.00	2025-04-10	Odpowiedź ustna
611	9	14	5	5.00	2025-05-02	Praca klasowa
612	9	11	11	4.00	2025-04-11	Aktywność
613	9	11	11	4.00	2025-04-22	Aktywność
614	9	11	11	5.00	2025-03-20	Aktywność
615	9	11	11	6.00	2025-05-05	Praca domowa
616	9	7	14	5.00	2025-03-28	Aktywność
617	9	7	14	6.00	2025-05-08	Test
618	9	7	14	4.00	2025-03-23	Kartkówka
619	9	7	14	1.00	2025-04-20	Praca klasowa
620	9	7	14	6.00	2025-06-04	Odpowiedź ustna
621	9	7	14	5.00	2025-05-09	Praca domowa
622	9	7	14	3.00	2025-04-14	Sprawdzian
623	9	9	14	1.00	2025-05-10	Praca domowa
624	9	9	14	3.00	2025-05-11	Kartkówka
625	9	9	14	6.00	2025-04-13	Odpowiedź ustna
626	9	9	14	1.00	2025-04-03	Odpowiedź ustna
627	9	9	14	4.00	2025-04-28	Quiz
628	9	9	14	4.00	2025-04-04	Kartkówka
629	9	9	14	6.00	2025-05-25	Kartkówka
630	9	8	2	4.00	2025-05-31	Prezentacja
631	9	8	2	2.00	2025-04-12	Aktywność
632	9	8	2	5.00	2025-04-01	Prezentacja
633	9	8	2	4.00	2025-05-15	Aktywność
634	9	8	2	4.00	2025-04-30	Aktywność
635	9	8	2	6.00	2025-06-01	Quiz
636	9	10	11	4.00	2025-05-02	Sprawdzian
637	9	10	11	4.00	2025-03-21	Praca klasowa
638	9	10	11	5.00	2025-04-26	Sprawdzian
639	9	10	11	5.00	2025-05-16	Odpowiedź ustna
640	9	10	11	6.00	2025-03-19	Test
641	9	10	11	5.00	2025-04-25	Projekt
642	9	10	11	5.00	2025-05-28	Praca domowa
643	9	10	11	4.00	2025-04-16	Praca klasowa
644	9	14	13	3.00	2025-04-08	Prezentacja
645	9	14	13	6.00	2025-03-29	Aktywność
646	9	14	13	5.00	2025-05-12	Aktywność
647	9	14	13	5.00	2025-05-21	Praca domowa
648	9	14	13	6.00	2025-06-03	Test
649	9	14	13	5.00	2025-03-19	Kartkówka
650	9	14	13	4.00	2025-05-19	Praca domowa
651	9	1	6	3.00	2025-05-02	Kartkówka
652	9	1	6	6.00	2025-04-02	Aktywność
653	9	1	6	5.00	2025-05-30	Kartkówka
654	9	8	13	6.00	2025-03-22	Quiz
655	9	8	13	4.00	2025-05-22	Odpowiedź ustna
656	9	8	13	4.00	2025-03-11	Prezentacja
657	9	8	13	5.00	2025-06-06	Test
658	9	8	13	5.00	2025-06-05	Odpowiedź ustna
659	9	8	13	5.00	2025-03-19	Aktywność
660	9	8	13	5.00	2025-03-13	Sprawdzian
661	9	8	3	6.00	2025-05-12	Sprawdzian
662	9	8	3	4.00	2025-04-10	Aktywność
663	9	8	3	3.00	2025-05-30	Odpowiedź ustna
664	9	8	3	6.00	2025-04-17	Odpowiedź ustna
665	9	8	3	5.00	2025-04-04	Aktywność
666	9	8	3	4.00	2025-05-02	Praca domowa
667	9	8	3	6.00	2025-04-20	Kartkówka
668	11	13	5	5.00	2025-05-29	Quiz
669	11	13	5	5.00	2025-04-19	Sprawdzian
670	11	13	5	4.00	2025-05-09	Odpowiedź ustna
671	11	12	3	5.00	2025-05-08	Kartkówka
672	11	12	3	4.00	2025-04-29	Kartkówka
673	11	12	3	6.00	2025-04-05	Aktywność
674	11	12	3	6.00	2025-03-31	Sprawdzian
675	11	12	3	3.00	2025-04-12	Odpowiedź ustna
676	11	12	3	4.00	2025-04-22	Projekt
677	11	4	5	4.00	2025-03-28	Odpowiedź ustna
678	11	4	5	5.00	2025-05-05	Praca klasowa
679	11	4	5	3.00	2025-05-27	Sprawdzian
680	11	4	5	3.00	2025-03-19	Aktywność
681	11	4	5	5.00	2025-04-24	Praca domowa
682	11	4	5	5.00	2025-05-28	Prezentacja
683	11	4	5	6.00	2025-05-27	Praca klasowa
684	11	4	5	6.00	2025-05-18	Prezentacja
685	11	3	2	4.00	2025-04-22	Aktywność
686	11	3	2	5.00	2025-05-09	Odpowiedź ustna
687	11	3	2	6.00	2025-04-04	Projekt
688	11	3	2	5.00	2025-03-10	Test
689	11	15	14	4.00	2025-03-21	Projekt
690	11	15	14	5.00	2025-05-09	Praca klasowa
691	11	15	14	4.00	2025-03-15	Prezentacja
692	11	15	14	3.00	2025-06-02	Test
693	11	15	14	4.00	2025-05-17	Sprawdzian
694	11	15	14	6.00	2025-04-26	Aktywność
695	11	15	14	6.00	2025-05-16	Praca klasowa
696	11	15	14	4.00	2025-05-26	Praca domowa
697	11	14	5	4.00	2025-05-19	Test
698	11	14	5	4.00	2025-04-09	Praca domowa
699	11	14	5	6.00	2025-03-23	Sprawdzian
700	11	11	11	3.00	2025-03-18	Praca klasowa
701	11	11	11	5.00	2025-03-18	Test
702	11	11	11	4.00	2025-04-18	Praca klasowa
703	11	11	11	5.00	2025-05-22	Odpowiedź ustna
704	11	11	11	3.00	2025-05-14	Prezentacja
705	11	11	11	4.00	2025-04-12	Praca klasowa
706	11	7	14	4.00	2025-05-23	Projekt
707	11	7	14	3.00	2025-04-04	Aktywność
708	11	7	14	4.00	2025-03-15	Praca klasowa
709	11	7	14	4.00	2025-05-01	Praca domowa
710	11	9	14	6.00	2025-04-23	Praca klasowa
711	11	9	14	5.00	2025-04-30	Aktywność
712	11	9	14	4.00	2025-05-30	Aktywność
713	11	9	14	4.00	2025-05-14	Kartkówka
714	11	9	14	4.00	2025-04-21	Praca domowa
715	11	9	14	3.00	2025-05-30	Aktywność
716	11	9	14	4.00	2025-03-17	Quiz
717	11	8	2	4.00	2025-05-21	Quiz
718	11	8	2	5.00	2025-04-04	Projekt
719	11	8	2	6.00	2025-04-23	Projekt
720	11	8	2	6.00	2025-04-14	Aktywność
721	11	8	2	3.00	2025-03-10	Quiz
722	11	10	11	3.00	2025-04-11	Odpowiedź ustna
723	11	10	11	3.00	2025-04-07	Projekt
724	11	10	11	4.00	2025-03-24	Test
725	11	10	11	6.00	2025-05-09	Aktywność
726	11	10	11	4.00	2025-05-16	Prezentacja
727	11	14	13	4.00	2025-05-15	Projekt
728	11	14	13	4.00	2025-05-19	Kartkówka
729	11	14	13	5.00	2025-04-28	Projekt
730	11	1	6	2.00	2025-05-19	Praca klasowa
731	11	1	6	5.00	2025-05-28	Praca klasowa
732	11	1	6	5.00	2025-05-13	Test
733	11	1	6	6.00	2025-05-09	Test
734	11	1	6	3.00	2025-04-21	Projekt
735	11	1	6	4.00	2025-03-25	Test
736	11	8	13	4.00	2025-05-10	Praca domowa
737	11	8	13	6.00	2025-04-09	Odpowiedź ustna
738	11	8	13	6.00	2025-05-24	Test
739	11	8	13	3.00	2025-05-12	Aktywność
740	11	8	13	4.00	2025-04-02	Quiz
741	11	8	13	5.00	2025-04-15	Kartkówka
742	11	8	13	3.00	2025-06-02	Projekt
743	11	8	3	5.00	2025-04-16	Prezentacja
744	11	8	3	4.00	2025-05-27	Quiz
745	11	8	3	5.00	2025-05-08	Praca domowa
746	11	8	3	2.00	2025-03-16	Test
747	11	8	3	4.00	2025-05-28	Sprawdzian
748	11	8	3	4.00	2025-04-05	Praca domowa
749	12	13	5	5.00	2025-05-28	Aktywność
750	12	13	5	5.00	2025-05-16	Quiz
751	12	13	5	4.00	2025-04-27	Test
752	12	13	5	5.00	2025-03-23	Quiz
753	12	13	5	3.00	2025-03-31	Projekt
754	12	13	5	4.00	2025-05-10	Test
755	12	13	5	3.00	2025-03-30	Prezentacja
756	12	12	3	3.00	2025-05-10	Sprawdzian
757	12	12	3	6.00	2025-03-26	Odpowiedź ustna
758	12	12	3	5.00	2025-04-08	Praca domowa
759	12	4	5	4.00	2025-05-02	Kartkówka
760	12	4	5	5.00	2025-04-04	Kartkówka
761	12	4	5	5.00	2025-04-14	Odpowiedź ustna
762	12	3	2	4.00	2025-05-14	Praca domowa
763	12	3	2	4.00	2025-05-20	Aktywność
764	12	3	2	5.00	2025-04-09	Sprawdzian
765	12	15	14	3.00	2025-05-14	Praca klasowa
766	12	15	14	3.00	2025-04-10	Test
767	12	15	14	2.00	2025-04-10	Kartkówka
768	12	15	14	5.00	2025-06-05	Prezentacja
769	12	15	14	6.00	2025-03-17	Quiz
770	12	15	14	4.00	2025-06-03	Praca domowa
771	12	15	14	3.00	2025-03-28	Projekt
772	12	15	14	2.00	2025-05-14	Odpowiedź ustna
773	12	14	5	3.00	2025-04-30	Projekt
774	12	14	5	6.00	2025-05-05	Projekt
775	12	14	5	5.00	2025-05-19	Odpowiedź ustna
776	12	11	11	5.00	2025-04-30	Prezentacja
777	12	11	11	5.00	2025-05-17	Odpowiedź ustna
778	12	11	11	3.00	2025-03-17	Odpowiedź ustna
779	12	11	11	5.00	2025-04-07	Praca klasowa
780	12	7	14	4.00	2025-04-09	Test
781	12	7	14	6.00	2025-05-14	Prezentacja
782	12	7	14	4.00	2025-04-05	Praca klasowa
783	12	7	14	6.00	2025-05-26	Kartkówka
784	12	7	14	4.00	2025-05-06	Praca klasowa
785	12	9	14	4.00	2025-05-15	Odpowiedź ustna
786	12	9	14	5.00	2025-05-21	Projekt
787	12	9	14	5.00	2025-04-25	Sprawdzian
788	12	8	2	6.00	2025-04-24	Test
789	12	8	2	2.00	2025-04-05	Prezentacja
790	12	8	2	4.00	2025-04-22	Kartkówka
791	12	10	11	6.00	2025-03-28	Test
792	12	10	11	4.00	2025-03-28	Test
793	12	10	11	5.00	2025-06-02	Aktywność
794	12	10	11	5.00	2025-04-23	Praca klasowa
795	12	10	11	4.00	2025-05-27	Projekt
796	12	10	11	6.00	2025-03-12	Aktywność
797	12	10	11	4.00	2025-03-29	Odpowiedź ustna
798	12	14	13	2.00	2025-05-25	Quiz
799	12	14	13	3.00	2025-05-29	Quiz
800	12	14	13	5.00	2025-04-05	Sprawdzian
801	12	14	13	5.00	2025-04-26	Kartkówka
802	12	14	13	5.00	2025-05-05	Sprawdzian
803	12	1	6	4.00	2025-04-28	Praca domowa
804	12	1	6	5.00	2025-06-06	Quiz
805	12	1	6	6.00	2025-06-02	Praca klasowa
806	12	1	6	5.00	2025-04-02	Praca domowa
807	12	1	6	4.00	2025-03-24	Aktywność
808	12	1	6	3.00	2025-03-29	Odpowiedź ustna
809	12	1	6	4.00	2025-04-17	Projekt
810	12	1	6	4.00	2025-04-06	Sprawdzian
811	12	8	13	5.00	2025-04-13	Test
812	12	8	13	4.00	2025-05-21	Kartkówka
813	12	8	13	6.00	2025-03-11	Prezentacja
814	12	8	13	5.00	2025-05-12	Praca domowa
815	12	8	13	2.00	2025-05-10	Prezentacja
816	12	8	13	6.00	2025-03-18	Sprawdzian
817	12	8	13	4.00	2025-06-05	Prezentacja
818	12	8	13	4.00	2025-04-28	Test
819	12	8	3	4.00	2025-03-13	Kartkówka
820	12	8	3	4.00	2025-04-29	Aktywność
821	12	8	3	6.00	2025-04-14	Kartkówka
822	12	8	3	5.00	2025-05-11	Prezentacja
823	12	8	3	5.00	2025-03-25	Sprawdzian
824	12	8	3	4.00	2025-05-03	Praca domowa
825	13	13	5	4.00	2025-03-19	Praca klasowa
826	13	13	5	4.00	2025-05-22	Aktywność
827	13	13	5	5.00	2025-05-09	Odpowiedź ustna
828	13	13	5	5.00	2025-05-04	Odpowiedź ustna
829	13	13	5	4.00	2025-05-25	Prezentacja
830	13	13	5	6.00	2025-05-15	Prezentacja
831	13	13	5	5.00	2025-05-07	Test
832	13	12	3	5.00	2025-03-19	Sprawdzian
833	13	12	3	4.00	2025-04-13	Quiz
834	13	12	3	3.00	2025-04-14	Odpowiedź ustna
835	13	12	3	4.00	2025-03-24	Aktywność
836	13	4	5	5.00	2025-04-28	Sprawdzian
837	13	4	5	2.00	2025-04-20	Sprawdzian
838	13	4	5	5.00	2025-04-03	Quiz
839	13	3	2	5.00	2025-04-14	Projekt
840	13	3	2	4.00	2025-05-18	Prezentacja
841	13	3	2	6.00	2025-04-06	Projekt
842	13	3	2	5.00	2025-04-12	Praca klasowa
843	13	3	2	3.00	2025-04-21	Odpowiedź ustna
844	13	15	14	6.00	2025-05-31	Odpowiedź ustna
845	13	15	14	4.00	2025-04-11	Odpowiedź ustna
846	13	15	14	5.00	2025-05-11	Odpowiedź ustna
847	13	15	14	4.00	2025-04-30	Odpowiedź ustna
848	13	15	14	3.00	2025-03-17	Prezentacja
849	13	15	14	5.00	2025-03-10	Test
850	13	14	5	5.00	2025-03-30	Quiz
851	13	14	5	3.00	2025-05-08	Quiz
852	13	14	5	5.00	2025-05-31	Prezentacja
853	13	11	11	4.00	2025-05-17	Sprawdzian
854	13	11	11	6.00	2025-03-20	Kartkówka
855	13	11	11	4.00	2025-04-19	Aktywność
856	13	11	11	5.00	2025-04-20	Sprawdzian
857	13	7	14	5.00	2025-04-25	Sprawdzian
858	13	7	14	5.00	2025-05-26	Aktywność
859	13	7	14	5.00	2025-04-29	Aktywność
860	13	7	14	4.00	2025-04-01	Praca klasowa
861	13	7	14	5.00	2025-04-25	Quiz
862	13	7	14	5.00	2025-04-03	Odpowiedź ustna
863	13	7	14	3.00	2025-05-09	Prezentacja
864	13	9	14	5.00	2025-03-26	Kartkówka
865	13	9	14	3.00	2025-04-28	Quiz
866	13	9	14	5.00	2025-05-08	Test
867	13	8	2	4.00	2025-04-07	Odpowiedź ustna
868	13	8	2	3.00	2025-05-31	Kartkówka
869	13	8	2	4.00	2025-05-01	Prezentacja
870	13	8	2	5.00	2025-05-06	Kartkówka
871	13	8	2	5.00	2025-04-02	Projekt
872	13	10	11	6.00	2025-05-15	Aktywność
873	13	10	11	4.00	2025-03-20	Kartkówka
874	13	10	11	5.00	2025-03-21	Projekt
875	13	14	13	3.00	2025-04-18	Test
876	13	14	13	5.00	2025-03-20	Quiz
877	13	14	13	4.00	2025-04-03	Sprawdzian
878	13	14	13	5.00	2025-05-05	Prezentacja
879	13	14	13	6.00	2025-04-30	Projekt
880	13	1	6	3.00	2025-05-10	Quiz
881	13	1	6	6.00	2025-04-24	Quiz
882	13	1	6	5.00	2025-05-10	Projekt
883	13	1	6	3.00	2025-03-13	Praca klasowa
884	13	1	6	4.00	2025-05-02	Quiz
885	13	8	13	5.00	2025-04-18	Quiz
886	13	8	13	5.00	2025-04-10	Sprawdzian
887	13	8	13	2.00	2025-05-19	Projekt
888	13	8	13	6.00	2025-04-12	Kartkówka
889	13	8	13	2.00	2025-04-09	Aktywność
890	13	8	3	5.00	2025-03-16	Projekt
891	13	8	3	5.00	2025-05-24	Aktywność
892	13	8	3	4.00	2025-04-22	Praca klasowa
893	13	8	3	4.00	2025-05-12	Projekt
894	13	8	3	6.00	2025-04-24	Sprawdzian
895	13	8	3	2.00	2025-03-15	Praca domowa
896	13	8	3	4.00	2025-05-01	Projekt
897	13	8	3	2.00	2025-05-03	Prezentacja
898	14	13	5	2.00	2025-05-16	Aktywność
899	14	13	5	4.00	2025-04-30	Kartkówka
900	14	13	5	5.00	2025-04-05	Aktywność
901	14	13	5	6.00	2025-04-29	Aktywność
902	14	13	5	5.00	2025-06-05	Test
903	14	13	5	6.00	2025-03-17	Projekt
904	14	12	3	6.00	2025-03-27	Projekt
905	14	12	3	4.00	2025-06-02	Quiz
906	14	12	3	5.00	2025-05-15	Aktywność
907	14	4	5	3.00	2025-05-13	Aktywność
908	14	4	5	5.00	2025-04-06	Odpowiedź ustna
909	14	4	5	5.00	2025-06-06	Kartkówka
910	14	4	5	4.00	2025-05-29	Test
911	14	4	5	3.00	2025-03-25	Quiz
912	14	4	5	6.00	2025-05-29	Projekt
913	14	3	2	5.00	2025-05-17	Sprawdzian
914	14	3	2	6.00	2025-03-25	Praca domowa
915	14	3	2	1.00	2025-03-30	Kartkówka
916	14	3	2	4.00	2025-04-22	Projekt
917	14	3	2	4.00	2025-06-04	Aktywność
918	14	3	2	5.00	2025-06-03	Test
919	14	3	2	2.00	2025-06-06	Sprawdzian
920	14	15	14	5.00	2025-04-16	Projekt
921	14	15	14	5.00	2025-06-06	Praca klasowa
922	14	15	14	4.00	2025-04-11	Projekt
923	14	15	14	5.00	2025-05-28	Quiz
924	14	15	14	4.00	2025-04-04	Quiz
925	14	15	14	2.00	2025-03-25	Praca klasowa
926	14	14	5	4.00	2025-04-27	Prezentacja
927	14	14	5	5.00	2025-04-09	Praca klasowa
928	14	14	5	6.00	2025-05-26	Sprawdzian
929	14	14	5	6.00	2025-04-08	Kartkówka
930	14	14	5	4.00	2025-06-04	Praca domowa
931	14	14	5	4.00	2025-04-11	Test
932	14	14	5	6.00	2025-03-30	Kartkówka
933	14	11	11	5.00	2025-05-10	Odpowiedź ustna
934	14	11	11	6.00	2025-04-03	Aktywność
935	14	11	11	5.00	2025-05-04	Quiz
936	14	11	11	4.00	2025-03-29	Quiz
937	14	11	11	1.00	2025-06-03	Projekt
938	14	11	11	3.00	2025-04-18	Kartkówka
939	14	7	14	6.00	2025-04-04	Test
940	14	7	14	4.00	2025-05-02	Praca klasowa
941	14	7	14	5.00	2025-03-30	Test
942	14	7	14	3.00	2025-05-31	Prezentacja
943	14	7	14	5.00	2025-05-02	Praca domowa
944	14	7	14	3.00	2025-05-03	Kartkówka
945	14	7	14	5.00	2025-04-02	Sprawdzian
946	14	7	14	5.00	2025-05-28	Praca klasowa
947	14	9	14	4.00	2025-04-18	Kartkówka
948	14	9	14	4.00	2025-05-30	Projekt
949	14	9	14	4.00	2025-05-01	Prezentacja
950	14	9	14	5.00	2025-04-29	Quiz
951	14	9	14	3.00	2025-04-10	Test
952	14	9	14	3.00	2025-03-17	Test
953	14	8	2	2.00	2025-05-31	Kartkówka
954	14	8	2	4.00	2025-04-09	Quiz
955	14	8	2	6.00	2025-05-31	Aktywność
956	14	8	2	3.00	2025-05-30	Aktywność
957	14	8	2	3.00	2025-05-04	Quiz
958	14	8	2	3.00	2025-05-10	Sprawdzian
959	14	8	2	3.00	2025-05-03	Odpowiedź ustna
960	14	8	2	5.00	2025-05-10	Prezentacja
961	14	10	11	5.00	2025-03-28	Odpowiedź ustna
962	14	10	11	4.00	2025-04-27	Kartkówka
963	14	10	11	3.00	2025-04-11	Quiz
964	14	10	11	5.00	2025-04-16	Sprawdzian
965	14	10	11	4.00	2025-06-06	Aktywność
966	14	10	11	6.00	2025-06-06	Aktywność
967	14	10	11	4.00	2025-05-03	Quiz
968	14	10	11	4.00	2025-04-19	Kartkówka
969	14	14	13	5.00	2025-04-20	Aktywność
970	14	14	13	4.00	2025-06-01	Projekt
971	14	14	13	5.00	2025-06-02	Sprawdzian
972	14	14	13	5.00	2025-04-06	Kartkówka
973	14	14	13	6.00	2025-04-21	Kartkówka
974	14	14	13	3.00	2025-03-14	Prezentacja
975	14	14	13	1.00	2025-04-12	Praca klasowa
976	14	14	13	6.00	2025-03-21	Sprawdzian
977	14	1	6	6.00	2025-05-29	Odpowiedź ustna
978	14	1	6	5.00	2025-06-02	Prezentacja
979	14	1	6	3.00	2025-05-21	Kartkówka
980	14	8	13	4.00	2025-03-18	Projekt
981	14	8	13	5.00	2025-05-05	Praca klasowa
982	14	8	13	4.00	2025-05-09	Kartkówka
983	14	8	13	3.00	2025-04-14	Praca klasowa
984	14	8	3	4.00	2025-06-06	Sprawdzian
985	14	8	3	5.00	2025-04-03	Test
986	14	8	3	3.00	2025-05-15	Praca klasowa
987	14	8	3	4.00	2025-05-28	Kartkówka
988	14	8	3	4.00	2025-03-16	Sprawdzian
989	14	8	3	5.00	2025-05-30	Kartkówka
990	14	8	3	4.00	2025-06-04	Sprawdzian
991	14	8	3	3.00	2025-04-04	Quiz
992	15	13	5	5.00	2025-04-26	Aktywność
993	15	13	5	6.00	2025-05-13	Projekt
994	15	13	5	5.00	2025-04-24	Sprawdzian
995	15	13	5	2.00	2025-03-21	Prezentacja
996	15	12	3	3.00	2025-05-07	Prezentacja
997	15	12	3	5.00	2025-06-06	Odpowiedź ustna
998	15	12	3	4.00	2025-03-27	Odpowiedź ustna
999	15	12	3	4.00	2025-04-03	Test
1000	15	12	3	6.00	2025-06-07	Projekt
1001	15	12	3	3.00	2025-04-06	Praca klasowa
1002	15	12	3	5.00	2025-05-22	Sprawdzian
1003	15	4	5	4.00	2025-05-08	Sprawdzian
1004	15	4	5	3.00	2025-05-04	Odpowiedź ustna
1005	15	4	5	2.00	2025-05-19	Projekt
1006	15	4	5	3.00	2025-05-23	Aktywność
1007	15	4	5	4.00	2025-04-22	Test
1008	15	4	5	6.00	2025-05-31	Prezentacja
1009	15	4	5	5.00	2025-04-06	Sprawdzian
1010	15	3	2	4.00	2025-05-30	Prezentacja
1011	15	3	2	2.00	2025-03-12	Test
1012	15	3	2	6.00	2025-05-22	Test
1013	15	3	2	2.00	2025-04-23	Odpowiedź ustna
1014	15	15	14	6.00	2025-04-21	Kartkówka
1015	15	15	14	6.00	2025-05-30	Kartkówka
1016	15	15	14	5.00	2025-03-31	Quiz
1017	15	15	14	5.00	2025-03-31	Aktywność
1018	15	14	5	3.00	2025-04-05	Odpowiedź ustna
1019	15	14	5	5.00	2025-04-16	Praca klasowa
1020	15	14	5	4.00	2025-05-08	Odpowiedź ustna
1021	15	14	5	6.00	2025-04-24	Prezentacja
1022	15	14	5	5.00	2025-05-13	Quiz
1023	15	14	5	4.00	2025-04-20	Sprawdzian
1024	15	11	11	5.00	2025-04-18	Kartkówka
1025	15	11	11	6.00	2025-03-16	Quiz
1026	15	11	11	4.00	2025-05-02	Aktywność
1027	15	11	11	4.00	2025-04-22	Praca klasowa
1028	15	11	11	4.00	2025-03-25	Quiz
1029	15	11	11	5.00	2025-03-18	Kartkówka
1030	15	7	14	5.00	2025-04-21	Aktywność
1031	15	7	14	5.00	2025-05-08	Projekt
1032	15	7	14	5.00	2025-03-26	Kartkówka
1033	15	7	14	4.00	2025-04-25	Odpowiedź ustna
1034	15	7	14	6.00	2025-03-18	Odpowiedź ustna
1035	15	7	14	5.00	2025-04-26	Prezentacja
1036	15	9	14	5.00	2025-05-11	Test
1037	15	9	14	3.00	2025-05-11	Odpowiedź ustna
1038	15	9	14	6.00	2025-05-06	Sprawdzian
1039	15	9	14	6.00	2025-04-19	Praca domowa
1040	15	9	14	4.00	2025-04-29	Odpowiedź ustna
1041	15	8	2	6.00	2025-04-08	Praca klasowa
1042	15	8	2	4.00	2025-05-26	Sprawdzian
1043	15	8	2	3.00	2025-04-26	Odpowiedź ustna
1044	15	8	2	5.00	2025-04-20	Aktywność
1045	15	10	11	4.00	2025-03-24	Prezentacja
1046	15	10	11	5.00	2025-05-10	Projekt
1047	15	10	11	6.00	2025-04-30	Odpowiedź ustna
1048	15	10	11	4.00	2025-06-07	Prezentacja
1049	15	10	11	6.00	2025-04-16	Prezentacja
1050	15	10	11	2.00	2025-06-07	Projekt
1051	15	10	11	5.00	2025-06-04	Praca domowa
1052	15	14	13	5.00	2025-04-06	Praca klasowa
1053	15	14	13	4.00	2025-05-27	Aktywność
1054	15	14	13	6.00	2025-05-09	Sprawdzian
1055	15	14	13	4.00	2025-05-23	Praca klasowa
1056	15	14	13	3.00	2025-05-25	Sprawdzian
1057	15	14	13	2.00	2025-04-27	Projekt
1058	15	14	13	5.00	2025-04-02	Kartkówka
1059	15	14	13	3.00	2025-04-07	Praca domowa
1060	15	1	6	1.00	2025-03-29	Test
1061	15	1	6	6.00	2025-04-19	Sprawdzian
1062	15	1	6	6.00	2025-03-19	Kartkówka
1063	15	8	13	4.00	2025-03-22	Sprawdzian
1064	15	8	13	4.00	2025-04-25	Kartkówka
1065	15	8	13	6.00	2025-04-30	Prezentacja
1066	15	8	13	6.00	2025-05-01	Odpowiedź ustna
1067	15	8	3	5.00	2025-04-23	Quiz
1068	15	8	3	6.00	2025-05-25	Kartkówka
1069	15	8	3	4.00	2025-03-27	Odpowiedź ustna
1070	15	8	3	4.00	2025-05-29	Aktywność
1071	15	8	3	4.00	2025-05-21	Aktywność
1072	15	8	3	4.00	2025-05-05	Kartkówka
1073	15	8	3	6.00	2025-03-29	Aktywność
1074	15	8	3	4.00	2025-04-22	Praca klasowa
1075	16	13	5	4.00	2025-05-04	Praca klasowa
1076	16	13	5	6.00	2025-05-19	Praca klasowa
1077	16	13	5	4.00	2025-04-18	Aktywność
1078	16	13	5	5.00	2025-05-19	Prezentacja
1079	16	13	5	4.00	2025-03-29	Test
1080	16	13	5	3.00	2025-04-17	Prezentacja
1081	16	12	3	3.00	2025-05-08	Prezentacja
1082	16	12	3	6.00	2025-04-02	Prezentacja
1083	16	12	3	3.00	2025-03-21	Praca domowa
1084	16	12	3	5.00	2025-04-11	Projekt
1085	16	12	3	6.00	2025-04-09	Praca klasowa
1086	16	12	3	6.00	2025-03-22	Kartkówka
1087	16	4	5	4.00	2025-04-02	Aktywność
1088	16	4	5	2.00	2025-04-03	Aktywność
1089	16	4	5	4.00	2025-05-13	Prezentacja
1090	16	4	5	3.00	2025-05-18	Quiz
1091	16	3	2	6.00	2025-05-27	Projekt
1092	16	3	2	5.00	2025-05-17	Projekt
1093	16	3	2	3.00	2025-05-28	Prezentacja
1094	16	3	2	6.00	2025-05-28	Sprawdzian
1095	16	3	2	5.00	2025-04-28	Praca domowa
1096	16	3	2	4.00	2025-05-15	Kartkówka
1097	16	3	2	4.00	2025-05-26	Kartkówka
1098	16	3	2	5.00	2025-03-17	Prezentacja
1099	16	15	14	3.00	2025-06-05	Projekt
1100	16	15	14	5.00	2025-05-18	Test
1101	16	15	14	3.00	2025-04-02	Praca klasowa
1102	16	15	14	4.00	2025-06-06	Test
1103	16	15	14	6.00	2025-05-11	Odpowiedź ustna
1104	16	15	14	6.00	2025-04-25	Sprawdzian
1105	16	15	14	2.00	2025-03-16	Prezentacja
1106	16	15	14	5.00	2025-04-13	Projekt
1107	16	14	5	5.00	2025-04-15	Praca klasowa
1108	16	14	5	6.00	2025-05-27	Kartkówka
1109	16	14	5	5.00	2025-03-25	Sprawdzian
1110	16	11	11	3.00	2025-04-20	Kartkówka
1111	16	11	11	4.00	2025-05-21	Odpowiedź ustna
1112	16	11	11	5.00	2025-03-12	Projekt
1113	16	11	11	5.00	2025-04-25	Prezentacja
1114	16	7	14	3.00	2025-06-03	Test
1115	16	7	14	5.00	2025-03-28	Praca domowa
1116	16	7	14	4.00	2025-04-11	Praca klasowa
1117	16	7	14	5.00	2025-03-30	Aktywność
1118	16	7	14	5.00	2025-03-19	Quiz
1119	16	7	14	3.00	2025-05-29	Kartkówka
1120	16	9	14	4.00	2025-04-08	Aktywność
1121	16	9	14	6.00	2025-03-24	Praca domowa
1122	16	9	14	4.00	2025-05-06	Aktywność
1123	16	9	14	1.00	2025-03-26	Test
1124	16	9	14	5.00	2025-04-01	Prezentacja
1125	16	9	14	5.00	2025-05-07	Odpowiedź ustna
1126	16	9	14	3.00	2025-06-04	Odpowiedź ustna
1127	16	8	2	3.00	2025-03-18	Praca domowa
1128	16	8	2	4.00	2025-03-10	Prezentacja
1129	16	8	2	6.00	2025-05-12	Projekt
1130	16	8	2	6.00	2025-04-02	Praca klasowa
1131	16	8	2	3.00	2025-05-02	Quiz
1132	16	10	11	5.00	2025-06-01	Praca klasowa
1133	16	10	11	4.00	2025-05-12	Aktywność
1134	16	10	11	2.00	2025-05-29	Quiz
1135	16	10	11	4.00	2025-06-04	Test
1136	16	14	13	5.00	2025-05-18	Praca domowa
1137	16	14	13	5.00	2025-03-20	Test
1138	16	14	13	4.00	2025-03-20	Odpowiedź ustna
1139	16	14	13	5.00	2025-06-06	Kartkówka
1140	16	14	13	5.00	2025-04-09	Test
1141	16	14	13	5.00	2025-03-29	Aktywność
1142	16	14	13	5.00	2025-03-11	Odpowiedź ustna
1143	16	14	13	5.00	2025-05-10	Praca klasowa
1144	16	1	6	3.00	2025-04-13	Kartkówka
1145	16	1	6	4.00	2025-03-11	Prezentacja
1146	16	1	6	2.00	2025-05-30	Praca klasowa
1147	16	8	13	3.00	2025-04-21	Praca klasowa
1148	16	8	13	5.00	2025-03-20	Praca klasowa
1149	16	8	13	5.00	2025-05-29	Kartkówka
1150	16	8	13	4.00	2025-03-10	Test
1151	16	8	13	3.00	2025-05-06	Sprawdzian
1152	16	8	3	3.00	2025-05-30	Praca klasowa
1153	16	8	3	2.00	2025-05-30	Kartkówka
1154	16	8	3	5.00	2025-04-22	Aktywność
1155	16	8	3	6.00	2025-05-16	Aktywność
1156	17	13	5	3.00	2025-04-13	Projekt
1157	17	13	5	2.00	2025-03-17	Quiz
1158	17	13	5	6.00	2025-06-02	Projekt
1159	17	13	5	6.00	2025-04-02	Sprawdzian
1160	17	13	5	4.00	2025-03-25	Odpowiedź ustna
1161	17	13	5	6.00	2025-04-25	Odpowiedź ustna
1162	17	12	3	4.00	2025-03-16	Praca domowa
1163	17	12	3	5.00	2025-04-09	Odpowiedź ustna
1164	17	12	3	2.00	2025-04-13	Test
1165	17	12	3	5.00	2025-04-01	Kartkówka
1166	17	12	3	4.00	2025-04-12	Praca klasowa
1167	17	12	3	5.00	2025-04-22	Kartkówka
1168	17	4	5	4.00	2025-04-12	Odpowiedź ustna
1169	17	4	5	2.00	2025-06-01	Quiz
1170	17	4	5	5.00	2025-04-30	Praca domowa
1171	17	4	5	4.00	2025-05-23	Test
1172	17	4	5	4.00	2025-04-15	Quiz
1173	17	4	5	4.00	2025-03-13	Test
1174	17	4	5	4.00	2025-05-16	Kartkówka
1175	17	3	2	3.00	2025-04-13	Prezentacja
1176	17	3	2	5.00	2025-03-23	Projekt
1177	17	3	2	4.00	2025-03-27	Aktywność
1178	17	3	2	4.00	2025-03-28	Quiz
1179	17	3	2	4.00	2025-05-19	Sprawdzian
1180	17	15	14	3.00	2025-04-25	Quiz
1181	17	15	14	5.00	2025-06-05	Prezentacja
1182	17	15	14	5.00	2025-04-11	Kartkówka
1183	17	15	14	4.00	2025-03-26	Praca domowa
1184	17	15	14	5.00	2025-04-15	Aktywność
1185	17	15	14	3.00	2025-05-04	Odpowiedź ustna
1186	17	15	14	4.00	2025-05-28	Test
1187	17	14	5	5.00	2025-05-16	Prezentacja
1188	17	14	5	3.00	2025-05-26	Aktywność
1189	17	14	5	6.00	2025-04-16	Praca domowa
1190	17	14	5	5.00	2025-03-12	Prezentacja
1191	17	14	5	5.00	2025-04-10	Praca domowa
1192	17	14	5	6.00	2025-03-11	Praca domowa
1193	17	14	5	5.00	2025-05-02	Test
1194	17	11	11	3.00	2025-05-27	Praca domowa
1195	17	11	11	3.00	2025-04-24	Praca domowa
1196	17	11	11	5.00	2025-03-29	Kartkówka
1197	17	11	11	3.00	2025-04-26	Quiz
1198	17	11	11	4.00	2025-03-17	Praca domowa
1199	17	7	14	4.00	2025-05-26	Praca klasowa
1200	17	7	14	4.00	2025-05-27	Aktywność
1201	17	7	14	5.00	2025-05-30	Projekt
1202	17	7	14	5.00	2025-04-25	Odpowiedź ustna
1203	17	9	14	2.00	2025-03-29	Prezentacja
1204	17	9	14	4.00	2025-03-27	Test
1205	17	9	14	5.00	2025-05-14	Aktywność
1206	17	9	14	4.00	2025-03-31	Projekt
1207	17	9	14	5.00	2025-04-11	Kartkówka
1208	17	9	14	3.00	2025-03-10	Praca klasowa
1209	17	9	14	5.00	2025-04-15	Aktywność
1210	17	9	14	4.00	2025-06-01	Quiz
1211	17	8	2	5.00	2025-05-10	Aktywność
1212	17	8	2	5.00	2025-05-10	Kartkówka
1213	17	8	2	5.00	2025-03-26	Projekt
1214	17	10	11	5.00	2025-06-06	Praca klasowa
1215	17	10	11	5.00	2025-04-13	Quiz
1216	17	10	11	6.00	2025-05-31	Projekt
1217	17	10	11	3.00	2025-05-17	Praca domowa
1218	17	10	11	4.00	2025-04-29	Test
1219	17	10	11	4.00	2025-06-02	Aktywność
1220	17	10	11	4.00	2025-05-02	Praca klasowa
1221	17	14	13	5.00	2025-05-11	Praca domowa
1222	17	14	13	4.00	2025-04-10	Sprawdzian
1223	17	14	13	6.00	2025-05-25	Kartkówka
1224	17	14	13	5.00	2025-04-28	Aktywność
1225	17	14	13	6.00	2025-03-28	Test
1226	17	14	13	6.00	2025-06-06	Kartkówka
1227	17	1	6	4.00	2025-04-19	Projekt
1228	17	1	6	6.00	2025-03-15	Odpowiedź ustna
1229	17	1	6	6.00	2025-06-06	Sprawdzian
1230	17	1	6	5.00	2025-05-23	Sprawdzian
1231	17	1	6	5.00	2025-04-03	Kartkówka
1232	17	8	13	5.00	2025-05-25	Aktywność
1233	17	8	13	3.00	2025-05-12	Praca klasowa
1234	17	8	13	5.00	2025-04-05	Praca domowa
1235	17	8	13	6.00	2025-03-11	Aktywność
1236	17	8	13	6.00	2025-05-13	Praca domowa
1237	17	8	13	4.00	2025-05-01	Aktywność
1238	17	8	13	3.00	2025-04-06	Odpowiedź ustna
1239	17	8	13	3.00	2025-03-24	Odpowiedź ustna
1240	17	8	3	5.00	2025-05-09	Praca klasowa
1241	17	8	3	5.00	2025-03-20	Projekt
1242	17	8	3	5.00	2025-03-26	Odpowiedź ustna
1243	18	13	5	5.00	2025-04-29	Projekt
1244	18	13	5	3.00	2025-03-29	Kartkówka
1245	18	13	5	5.00	2025-04-03	Prezentacja
1246	18	12	3	4.00	2025-03-12	Sprawdzian
1247	18	12	3	5.00	2025-06-01	Praca klasowa
1248	18	12	3	5.00	2025-04-30	Test
1249	18	12	3	4.00	2025-04-18	Praca domowa
1250	18	12	3	5.00	2025-05-10	Praca domowa
1251	18	4	5	3.00	2025-06-05	Test
1252	18	4	5	6.00	2025-05-13	Test
1253	18	4	5	5.00	2025-05-25	Aktywność
1254	18	3	2	5.00	2025-05-13	Odpowiedź ustna
1255	18	3	2	6.00	2025-03-28	Kartkówka
1256	18	3	2	2.00	2025-03-20	Aktywność
1257	18	3	2	4.00	2025-05-27	Kartkówka
1258	18	3	2	6.00	2025-05-24	Quiz
1259	18	3	2	6.00	2025-04-07	Quiz
1260	18	3	2	5.00	2025-04-02	Kartkówka
1261	18	3	2	6.00	2025-03-13	Praca klasowa
1262	18	15	14	4.00	2025-06-03	Quiz
1263	18	15	14	5.00	2025-04-15	Sprawdzian
1264	18	15	14	6.00	2025-05-17	Praca domowa
1265	18	14	5	5.00	2025-05-31	Praca klasowa
1266	18	14	5	4.00	2025-03-31	Quiz
1267	18	14	5	4.00	2025-04-06	Praca klasowa
1268	18	14	5	6.00	2025-04-29	Sprawdzian
1269	18	11	11	6.00	2025-05-13	Praca domowa
1270	18	11	11	5.00	2025-03-22	Praca domowa
1271	18	11	11	6.00	2025-03-19	Praca domowa
1272	18	11	11	5.00	2025-03-20	Kartkówka
1273	18	11	11	1.00	2025-03-16	Aktywność
1274	18	7	14	6.00	2025-04-30	Sprawdzian
1275	18	7	14	4.00	2025-05-04	Sprawdzian
1276	18	7	14	4.00	2025-04-27	Test
1277	18	7	14	1.00	2025-06-05	Aktywność
1278	18	7	14	6.00	2025-03-24	Kartkówka
1279	18	7	14	4.00	2025-06-04	Prezentacja
1280	18	7	14	3.00	2025-03-31	Test
1281	18	7	14	3.00	2025-05-08	Test
1282	18	9	14	5.00	2025-03-28	Aktywność
1283	18	9	14	3.00	2025-03-21	Prezentacja
1284	18	9	14	3.00	2025-05-26	Prezentacja
1285	18	9	14	2.00	2025-05-16	Projekt
1286	18	9	14	4.00	2025-05-03	Projekt
1287	18	9	14	4.00	2025-04-02	Aktywność
1288	18	9	14	4.00	2025-05-25	Test
1289	18	9	14	5.00	2025-03-25	Kartkówka
1290	18	8	2	3.00	2025-04-18	Praca klasowa
1291	18	8	2	5.00	2025-04-20	Prezentacja
1292	18	8	2	5.00	2025-04-18	Sprawdzian
1293	18	8	2	1.00	2025-04-08	Aktywność
1294	18	8	2	3.00	2025-05-02	Sprawdzian
1295	18	8	2	2.00	2025-03-31	Praca klasowa
1296	18	10	11	4.00	2025-03-16	Prezentacja
1297	18	10	11	5.00	2025-03-23	Prezentacja
1298	18	10	11	6.00	2025-03-30	Kartkówka
1299	18	10	11	2.00	2025-06-06	Sprawdzian
1300	18	10	11	4.00	2025-05-27	Sprawdzian
1301	18	10	11	5.00	2025-06-03	Projekt
1302	18	10	11	3.00	2025-04-26	Test
1303	18	14	13	3.00	2025-04-23	Kartkówka
1304	18	14	13	2.00	2025-05-19	Praca klasowa
1305	18	14	13	5.00	2025-04-01	Quiz
1306	18	14	13	3.00	2025-06-01	Test
1307	18	1	6	3.00	2025-04-12	Aktywność
1308	18	1	6	5.00	2025-05-28	Odpowiedź ustna
1309	18	1	6	5.00	2025-04-06	Praca domowa
1310	18	1	6	4.00	2025-03-19	Prezentacja
1311	18	8	13	6.00	2025-05-13	Praca domowa
1312	18	8	13	4.00	2025-04-11	Projekt
1313	18	8	13	4.00	2025-03-10	Praca klasowa
1314	18	8	13	4.00	2025-06-02	Sprawdzian
1315	18	8	13	6.00	2025-04-07	Quiz
1316	18	8	13	4.00	2025-03-27	Quiz
1317	18	8	3	5.00	2025-06-05	Quiz
1318	18	8	3	6.00	2025-06-03	Quiz
1319	18	8	3	4.00	2025-05-06	Sprawdzian
1320	20	13	5	6.00	2025-03-31	Aktywność
1321	20	13	5	5.00	2025-04-23	Kartkówka
1322	20	13	5	4.00	2025-04-09	Aktywność
1323	20	13	5	6.00	2025-04-22	Praca domowa
1324	20	12	3	4.00	2025-04-04	Aktywność
1325	20	12	3	4.00	2025-03-15	Sprawdzian
1326	20	12	3	6.00	2025-03-12	Sprawdzian
1327	20	12	3	5.00	2025-04-01	Aktywność
1328	20	12	3	5.00	2025-05-21	Praca domowa
1329	20	12	3	3.00	2025-03-29	Praca domowa
1330	20	12	3	3.00	2025-05-24	Praca klasowa
1331	20	12	3	3.00	2025-04-22	Praca klasowa
1332	20	4	5	6.00	2025-04-11	Praca domowa
1333	20	4	5	4.00	2025-03-19	Odpowiedź ustna
1334	20	4	5	6.00	2025-05-03	Praca klasowa
1335	20	4	5	6.00	2025-03-21	Prezentacja
1336	20	4	5	3.00	2025-04-02	Praca klasowa
1337	20	3	2	5.00	2025-05-06	Quiz
1338	20	3	2	5.00	2025-04-03	Kartkówka
1339	20	3	2	6.00	2025-04-23	Praca domowa
1340	20	15	14	5.00	2025-03-25	Kartkówka
1341	20	15	14	5.00	2025-05-14	Quiz
1342	20	15	14	4.00	2025-04-04	Projekt
1343	20	15	14	4.00	2025-04-28	Quiz
1344	20	15	14	4.00	2025-03-24	Kartkówka
1345	20	15	14	4.00	2025-03-10	Praca klasowa
1346	20	15	14	4.00	2025-03-27	Test
1347	20	15	14	4.00	2025-03-13	Praca domowa
1348	20	14	5	4.00	2025-05-19	Praca klasowa
1349	20	14	5	5.00	2025-03-27	Praca klasowa
1350	20	14	5	4.00	2025-04-21	Test
1351	20	11	11	5.00	2025-03-22	Quiz
1352	20	11	11	3.00	2025-05-09	Praca domowa
1353	20	11	11	4.00	2025-05-05	Quiz
1354	20	11	11	6.00	2025-05-02	Praca domowa
1355	20	11	11	4.00	2025-03-13	Quiz
1356	20	7	14	2.00	2025-05-12	Projekt
1357	20	7	14	6.00	2025-04-11	Projekt
1358	20	7	14	3.00	2025-03-24	Prezentacja
1359	20	9	14	4.00	2025-04-24	Kartkówka
1360	20	9	14	5.00	2025-03-13	Aktywność
1361	20	9	14	4.00	2025-06-03	Prezentacja
1362	20	9	14	3.00	2025-03-14	Odpowiedź ustna
1363	20	9	14	5.00	2025-04-29	Prezentacja
1364	20	9	14	5.00	2025-05-21	Praca klasowa
1365	20	9	14	5.00	2025-03-17	Praca domowa
1366	20	9	14	3.00	2025-05-27	Prezentacja
1367	20	8	2	4.00	2025-03-10	Kartkówka
1368	20	8	2	2.00	2025-04-08	Sprawdzian
1369	20	8	2	5.00	2025-03-11	Sprawdzian
1370	20	8	2	5.00	2025-05-05	Praca domowa
1371	20	8	2	4.00	2025-03-18	Sprawdzian
1372	20	8	2	5.00	2025-05-27	Praca klasowa
1373	20	10	11	4.00	2025-05-11	Sprawdzian
1374	20	10	11	5.00	2025-03-21	Prezentacja
1375	20	10	11	6.00	2025-03-19	Aktywność
1376	20	14	13	6.00	2025-05-25	Praca klasowa
1377	20	14	13	5.00	2025-05-25	Aktywność
1378	20	14	13	3.00	2025-03-14	Kartkówka
1379	20	14	13	6.00	2025-03-28	Quiz
1380	20	14	13	6.00	2025-04-19	Sprawdzian
1381	20	14	13	5.00	2025-03-13	Kartkówka
1382	20	14	13	6.00	2025-04-12	Kartkówka
1383	20	1	6	6.00	2025-04-23	Praca domowa
1384	20	1	6	3.00	2025-06-04	Prezentacja
1385	20	1	6	5.00	2025-04-28	Kartkówka
1386	20	8	13	4.00	2025-05-28	Aktywność
1387	20	8	13	6.00	2025-04-08	Praca klasowa
1388	20	8	13	4.00	2025-05-29	Praca domowa
1389	20	8	13	4.00	2025-04-11	Projekt
1390	20	8	13	5.00	2025-05-20	Odpowiedź ustna
1391	20	8	13	3.00	2025-06-04	Odpowiedź ustna
1392	20	8	13	3.00	2025-03-18	Projekt
1393	20	8	3	5.00	2025-05-01	Aktywność
1394	20	8	3	3.00	2025-04-23	Praca klasowa
1395	20	8	3	6.00	2025-05-29	Praca klasowa
1396	20	8	3	5.00	2025-04-24	Quiz
1397	20	8	3	2.00	2025-03-15	Sprawdzian
1398	21	13	5	5.00	2025-06-05	Quiz
1399	21	13	5	3.00	2025-03-22	Kartkówka
1400	21	13	5	4.00	2025-06-02	Aktywność
1401	21	13	5	6.00	2025-05-30	Prezentacja
1402	21	13	5	2.00	2025-05-31	Quiz
1403	21	13	5	5.00	2025-05-24	Kartkówka
1404	21	13	5	4.00	2025-04-11	Praca klasowa
1405	21	13	5	6.00	2025-03-17	Praca klasowa
1406	21	14	7	4.00	2025-04-04	Kartkówka
1407	21	14	7	5.00	2025-04-17	Aktywność
1408	21	14	7	3.00	2025-04-07	Aktywność
1409	21	14	7	6.00	2025-05-22	Quiz
1410	21	14	7	5.00	2025-05-28	Sprawdzian
1411	21	15	14	3.00	2025-03-10	Quiz
1412	21	15	14	5.00	2025-03-29	Sprawdzian
1413	21	15	14	4.00	2025-04-21	Praca domowa
1414	21	15	14	3.00	2025-05-16	Projekt
1415	21	15	14	4.00	2025-05-07	Test
1416	21	15	14	5.00	2025-04-20	Odpowiedź ustna
1417	21	15	14	5.00	2025-03-12	Projekt
1418	21	15	14	4.00	2025-05-18	Praca klasowa
1419	21	14	5	5.00	2025-05-28	Prezentacja
1420	21	14	5	5.00	2025-05-30	Prezentacja
1421	21	14	5	5.00	2025-04-15	Test
1422	21	14	5	3.00	2025-05-05	Test
1423	21	11	11	4.00	2025-03-21	Projekt
1424	21	11	11	4.00	2025-03-22	Kartkówka
1425	21	11	11	6.00	2025-03-17	Sprawdzian
1426	21	11	11	4.00	2025-05-25	Prezentacja
1427	21	11	11	5.00	2025-05-06	Prezentacja
1428	21	11	11	5.00	2025-05-01	Odpowiedź ustna
1429	21	12	3	5.00	2025-05-14	Praca klasowa
1430	21	12	3	5.00	2025-03-10	Prezentacja
1431	21	12	3	6.00	2025-05-23	Praca klasowa
1432	21	4	5	6.00	2025-04-26	Quiz
1433	21	4	5	4.00	2025-05-29	Projekt
1434	21	4	5	5.00	2025-04-29	Sprawdzian
1435	21	3	2	3.00	2025-03-21	Praca klasowa
1436	21	3	2	2.00	2025-03-22	Prezentacja
1437	21	3	2	6.00	2025-04-18	Projekt
1438	21	3	2	4.00	2025-04-05	Projekt
1439	21	3	2	4.00	2025-04-07	Sprawdzian
1440	21	3	2	4.00	2025-05-16	Projekt
1441	21	3	2	5.00	2025-05-03	Aktywność
1442	21	3	2	5.00	2025-05-26	Test
1443	21	7	10	5.00	2025-03-13	Quiz
1444	21	7	10	4.00	2025-04-28	Test
1445	21	7	10	6.00	2025-05-27	Quiz
1446	21	7	14	4.00	2025-06-01	Praca klasowa
1447	21	7	14	6.00	2025-05-28	Praca domowa
1448	21	7	14	4.00	2025-04-02	Projekt
1449	21	7	14	5.00	2025-03-23	Praca domowa
1450	21	7	14	5.00	2025-03-20	Kartkówka
1451	21	7	14	4.00	2025-04-01	Projekt
1452	21	7	14	6.00	2025-04-21	Odpowiedź ustna
1453	21	7	14	5.00	2025-03-12	Aktywność
1454	21	3	10	6.00	2025-04-10	Quiz
1455	21	3	10	5.00	2025-04-25	Odpowiedź ustna
1456	21	3	10	5.00	2025-03-18	Quiz
1457	21	3	10	5.00	2025-03-16	Kartkówka
1458	21	3	10	6.00	2025-05-03	Quiz
1459	21	3	10	5.00	2025-04-28	Projekt
1460	21	3	10	5.00	2025-03-10	Projekt
1461	21	3	10	5.00	2025-03-31	Aktywność
1462	21	9	14	5.00	2025-03-10	Praca domowa
1463	21	9	14	6.00	2025-04-22	Quiz
1464	21	9	14	4.00	2025-04-15	Test
1465	21	9	14	4.00	2025-06-06	Quiz
1466	21	9	14	5.00	2025-03-20	Test
1467	21	9	14	4.00	2025-04-06	Kartkówka
1468	21	9	14	2.00	2025-04-06	Test
1469	21	8	2	3.00	2025-05-14	Quiz
1470	21	8	2	5.00	2025-05-16	Praca klasowa
1471	21	8	2	4.00	2025-04-25	Quiz
1472	21	8	2	5.00	2025-06-02	Prezentacja
1473	21	8	2	3.00	2025-05-21	Projekt
1474	21	8	2	5.00	2025-04-18	Odpowiedź ustna
1475	21	8	2	3.00	2025-04-10	Projekt
1476	21	10	11	4.00	2025-03-20	Test
1477	21	10	11	5.00	2025-03-24	Aktywność
1478	21	10	11	5.00	2025-05-11	Projekt
1479	21	10	11	3.00	2025-04-26	Aktywność
1480	21	10	11	3.00	2025-04-29	Odpowiedź ustna
1481	21	10	11	5.00	2025-03-14	Test
1482	21	10	11	5.00	2025-03-12	Quiz
1483	21	10	11	3.00	2025-05-03	Quiz
1484	21	1	6	4.00	2025-04-07	Quiz
1485	21	1	6	5.00	2025-05-14	Aktywność
1486	21	1	6	6.00	2025-05-02	Test
1487	21	1	6	4.00	2025-03-23	Odpowiedź ustna
1488	21	8	3	5.00	2025-05-01	Aktywność
1489	21	8	3	3.00	2025-05-11	Odpowiedź ustna
1490	21	8	3	6.00	2025-05-19	Kartkówka
1491	21	8	3	4.00	2025-05-15	Test
1492	21	8	3	2.00	2025-03-25	Quiz
1493	21	8	3	5.00	2025-05-23	Projekt
1494	21	8	3	6.00	2025-04-08	Kartkówka
1495	22	13	5	3.00	2025-04-04	Projekt
1496	22	13	5	3.00	2025-05-09	Aktywność
1497	22	13	5	5.00	2025-04-07	Prezentacja
1498	22	13	5	3.00	2025-05-13	Quiz
1499	22	13	5	5.00	2025-05-08	Test
1500	22	14	7	6.00	2025-03-12	Kartkówka
1501	22	14	7	3.00	2025-04-07	Aktywność
1502	22	14	7	4.00	2025-03-13	Projekt
1503	22	14	7	4.00	2025-05-25	Sprawdzian
1504	22	14	7	5.00	2025-05-18	Kartkówka
1505	22	14	7	5.00	2025-04-03	Praca domowa
1506	22	15	14	2.00	2025-03-26	Praca klasowa
1507	22	15	14	5.00	2025-03-21	Kartkówka
1508	22	15	14	5.00	2025-05-04	Prezentacja
1509	22	15	14	5.00	2025-05-31	Prezentacja
1510	22	15	14	4.00	2025-05-26	Praca domowa
1511	22	15	14	5.00	2025-03-13	Projekt
1512	22	15	14	4.00	2025-04-05	Sprawdzian
1513	22	15	14	5.00	2025-03-12	Praca domowa
1514	22	14	5	4.00	2025-03-21	Aktywność
1515	22	14	5	4.00	2025-03-13	Prezentacja
1516	22	14	5	6.00	2025-04-16	Test
1517	22	14	5	6.00	2025-04-17	Aktywność
1518	22	14	5	4.00	2025-03-22	Sprawdzian
1519	22	14	5	3.00	2025-05-13	Praca klasowa
1520	22	11	11	5.00	2025-04-25	Aktywność
1521	22	11	11	6.00	2025-05-05	Praca klasowa
1522	22	11	11	5.00	2025-04-15	Praca klasowa
1523	22	12	3	4.00	2025-04-12	Sprawdzian
1524	22	12	3	3.00	2025-05-19	Praca klasowa
1525	22	12	3	4.00	2025-05-23	Odpowiedź ustna
1526	22	12	3	3.00	2025-03-23	Quiz
1527	22	12	3	5.00	2025-04-09	Praca klasowa
1528	22	4	5	6.00	2025-05-30	Praca klasowa
1529	22	4	5	4.00	2025-04-03	Aktywność
1530	22	4	5	6.00	2025-03-16	Test
1531	22	4	5	2.00	2025-05-23	Prezentacja
1532	22	4	5	5.00	2025-06-06	Sprawdzian
1533	22	3	2	5.00	2025-04-28	Projekt
1534	22	3	2	4.00	2025-04-07	Test
1535	22	3	2	5.00	2025-05-23	Test
1536	22	7	10	5.00	2025-05-31	Odpowiedź ustna
1537	22	7	10	4.00	2025-04-27	Kartkówka
1538	22	7	10	5.00	2025-05-15	Projekt
1539	22	7	10	4.00	2025-06-07	Prezentacja
1540	22	7	10	6.00	2025-04-26	Kartkówka
1541	22	7	14	5.00	2025-04-15	Test
1542	22	7	14	4.00	2025-04-04	Kartkówka
1543	22	7	14	3.00	2025-03-20	Odpowiedź ustna
1544	22	7	14	4.00	2025-05-19	Praca domowa
1545	22	7	14	5.00	2025-03-20	Sprawdzian
1546	22	7	14	6.00	2025-04-10	Aktywność
1547	22	7	14	3.00	2025-04-10	Odpowiedź ustna
1548	22	3	10	6.00	2025-04-14	Quiz
1549	22	3	10	6.00	2025-05-05	Sprawdzian
1550	22	3	10	2.00	2025-03-23	Test
1551	22	3	10	3.00	2025-03-20	Projekt
1552	22	3	10	4.00	2025-04-01	Sprawdzian
1553	22	3	10	4.00	2025-05-11	Aktywność
1554	22	9	14	5.00	2025-04-02	Prezentacja
1555	22	9	14	5.00	2025-04-29	Odpowiedź ustna
1556	22	9	14	6.00	2025-05-28	Odpowiedź ustna
1557	22	8	2	5.00	2025-04-02	Aktywność
1558	22	8	2	5.00	2025-06-06	Kartkówka
1559	22	8	2	3.00	2025-04-06	Quiz
1560	22	10	11	5.00	2025-05-09	Praca domowa
1561	22	10	11	5.00	2025-04-24	Quiz
1562	22	10	11	4.00	2025-04-01	Praca domowa
1563	22	10	11	3.00	2025-03-24	Odpowiedź ustna
1564	22	1	6	4.00	2025-04-14	Kartkówka
1565	22	1	6	4.00	2025-04-20	Sprawdzian
1566	22	1	6	5.00	2025-05-12	Aktywność
1567	22	1	6	4.00	2025-03-29	Praca domowa
1568	22	1	6	4.00	2025-05-04	Projekt
1569	22	1	6	3.00	2025-04-09	Quiz
1570	22	1	6	5.00	2025-05-30	Aktywność
1571	22	1	6	1.00	2025-03-12	Sprawdzian
1572	22	8	3	1.00	2025-04-13	Quiz
1573	22	8	3	4.00	2025-05-19	Test
1574	22	8	3	3.00	2025-03-28	Kartkówka
1575	22	8	3	5.00	2025-04-15	Odpowiedź ustna
1576	22	8	3	5.00	2025-05-24	Aktywność
1577	22	8	3	4.00	2025-05-10	Praca klasowa
1578	22	8	3	4.00	2025-04-11	Test
1579	23	13	5	4.00	2025-04-30	Quiz
1580	23	13	5	5.00	2025-06-02	Prezentacja
1581	23	13	5	5.00	2025-04-14	Test
1582	23	13	5	4.00	2025-03-25	Kartkówka
1583	23	13	5	3.00	2025-03-18	Test
1584	23	14	7	6.00	2025-04-07	Aktywność
1585	23	14	7	5.00	2025-04-15	Projekt
1586	23	14	7	4.00	2025-04-27	Kartkówka
1587	23	14	7	5.00	2025-04-17	Test
1588	23	14	7	3.00	2025-04-17	Praca domowa
1589	23	14	7	1.00	2025-05-29	Prezentacja
1590	23	15	14	6.00	2025-05-22	Sprawdzian
1591	23	15	14	3.00	2025-04-01	Test
1592	23	15	14	6.00	2025-06-04	Aktywność
1593	23	15	14	5.00	2025-04-21	Aktywność
1594	23	15	14	3.00	2025-06-01	Test
1595	23	15	14	4.00	2025-05-08	Test
1596	23	14	5	4.00	2025-03-14	Odpowiedź ustna
1597	23	14	5	6.00	2025-05-16	Prezentacja
1598	23	14	5	5.00	2025-05-23	Projekt
1599	23	14	5	5.00	2025-04-08	Praca domowa
1600	23	14	5	5.00	2025-04-19	Quiz
1601	23	14	5	4.00	2025-04-11	Kartkówka
1602	23	14	5	5.00	2025-05-28	Odpowiedź ustna
1603	23	14	5	5.00	2025-06-01	Odpowiedź ustna
1604	23	11	11	4.00	2025-03-18	Odpowiedź ustna
1605	23	11	11	6.00	2025-06-07	Praca domowa
1606	23	11	11	2.00	2025-05-09	Quiz
1607	23	11	11	2.00	2025-03-10	Praca klasowa
1608	23	11	11	5.00	2025-03-18	Test
1609	23	11	11	3.00	2025-03-17	Odpowiedź ustna
1610	23	12	3	2.00	2025-03-11	Projekt
1611	23	12	3	5.00	2025-05-28	Kartkówka
1612	23	12	3	6.00	2025-04-24	Odpowiedź ustna
1613	23	4	5	4.00	2025-05-17	Aktywność
1614	23	4	5	6.00	2025-05-24	Aktywność
1615	23	4	5	4.00	2025-03-15	Odpowiedź ustna
1616	23	4	5	4.00	2025-03-25	Prezentacja
1617	23	4	5	6.00	2025-04-28	Praca domowa
1618	23	4	5	5.00	2025-05-31	Sprawdzian
1619	23	4	5	4.00	2025-03-29	Praca klasowa
1620	23	3	2	4.00	2025-04-28	Odpowiedź ustna
1621	23	3	2	4.00	2025-05-01	Aktywność
1622	23	3	2	5.00	2025-05-11	Test
1623	23	7	10	5.00	2025-04-02	Kartkówka
1624	23	7	10	5.00	2025-04-06	Prezentacja
1625	23	7	10	3.00	2025-05-20	Aktywność
1626	23	7	10	4.00	2025-05-05	Praca domowa
1627	23	7	14	5.00	2025-06-06	Praca klasowa
1628	23	7	14	6.00	2025-05-06	Test
1629	23	7	14	5.00	2025-04-12	Kartkówka
1630	23	7	14	3.00	2025-05-09	Kartkówka
1631	23	7	14	5.00	2025-04-10	Quiz
1632	23	7	14	3.00	2025-04-25	Praca domowa
1633	23	7	14	4.00	2025-04-11	Kartkówka
1634	23	7	14	3.00	2025-06-03	Test
1635	23	3	10	4.00	2025-04-14	Sprawdzian
1636	23	3	10	3.00	2025-03-26	Projekt
1637	23	3	10	3.00	2025-05-09	Quiz
1638	23	3	10	5.00	2025-04-12	Projekt
1639	23	9	14	5.00	2025-06-07	Praca klasowa
1640	23	9	14	4.00	2025-04-22	Kartkówka
1641	23	9	14	2.00	2025-03-11	Sprawdzian
1642	23	9	14	6.00	2025-06-06	Odpowiedź ustna
1643	23	8	2	5.00	2025-04-01	Prezentacja
1644	23	8	2	4.00	2025-05-02	Quiz
1645	23	8	2	3.00	2025-05-16	Praca domowa
1646	23	8	2	5.00	2025-05-10	Quiz
1647	23	8	2	4.00	2025-04-06	Praca klasowa
1648	23	10	11	6.00	2025-03-19	Quiz
1649	23	10	11	4.00	2025-04-23	Kartkówka
1650	23	10	11	3.00	2025-04-27	Quiz
1651	23	10	11	5.00	2025-04-11	Quiz
1652	23	1	6	5.00	2025-04-01	Test
1653	23	1	6	6.00	2025-04-17	Prezentacja
1654	23	1	6	4.00	2025-04-06	Quiz
1655	23	1	6	1.00	2025-04-07	Quiz
1656	23	1	6	2.00	2025-03-31	Projekt
1657	23	8	3	6.00	2025-04-13	Sprawdzian
1658	23	8	3	5.00	2025-04-09	Test
1659	23	8	3	4.00	2025-06-03	Projekt
1660	23	8	3	3.00	2025-03-10	Aktywność
1661	23	8	3	6.00	2025-03-17	Aktywność
1662	24	13	5	4.00	2025-04-15	Praca domowa
1663	24	13	5	5.00	2025-05-21	Projekt
1664	24	13	5	5.00	2025-04-24	Odpowiedź ustna
1665	24	13	5	6.00	2025-06-05	Quiz
1666	24	14	7	5.00	2025-05-11	Prezentacja
1667	24	14	7	5.00	2025-03-19	Praca klasowa
1668	24	14	7	3.00	2025-03-30	Projekt
1669	24	14	7	3.00	2025-05-17	Odpowiedź ustna
1670	24	14	7	2.00	2025-04-07	Odpowiedź ustna
1671	24	15	14	4.00	2025-05-18	Sprawdzian
1672	24	15	14	6.00	2025-04-16	Aktywność
1673	24	15	14	5.00	2025-05-07	Praca klasowa
1674	24	15	14	4.00	2025-05-07	Projekt
1675	24	15	14	6.00	2025-03-15	Kartkówka
1676	24	15	14	5.00	2025-03-18	Praca domowa
1677	24	15	14	5.00	2025-05-11	Quiz
1678	24	14	5	4.00	2025-03-16	Kartkówka
1679	24	14	5	3.00	2025-04-10	Test
1680	24	14	5	6.00	2025-04-02	Praca domowa
1681	24	11	11	5.00	2025-05-30	Praca klasowa
1682	24	11	11	5.00	2025-04-01	Quiz
1683	24	11	11	3.00	2025-06-06	Sprawdzian
1684	24	11	11	5.00	2025-04-25	Praca domowa
1685	24	11	11	5.00	2025-05-07	Test
1686	24	11	11	6.00	2025-05-06	Odpowiedź ustna
1687	24	12	3	5.00	2025-04-30	Quiz
1688	24	12	3	5.00	2025-05-15	Sprawdzian
1689	24	12	3	5.00	2025-05-11	Praca domowa
1690	24	12	3	3.00	2025-03-19	Kartkówka
1691	24	12	3	5.00	2025-05-08	Praca domowa
1692	24	12	3	6.00	2025-04-16	Kartkówka
1693	24	12	3	6.00	2025-03-16	Quiz
1694	24	12	3	6.00	2025-05-11	Aktywność
1695	24	4	5	5.00	2025-03-18	Prezentacja
1696	24	4	5	4.00	2025-03-29	Sprawdzian
1697	24	4	5	2.00	2025-06-05	Odpowiedź ustna
1698	24	3	2	6.00	2025-03-26	Praca klasowa
1699	24	3	2	5.00	2025-03-20	Praca domowa
1700	24	3	2	4.00	2025-04-13	Odpowiedź ustna
1701	24	3	2	3.00	2025-05-15	Sprawdzian
1702	24	3	2	5.00	2025-04-05	Praca domowa
1703	24	3	2	5.00	2025-05-20	Praca domowa
1704	24	7	10	5.00	2025-04-30	Kartkówka
1705	24	7	10	5.00	2025-05-11	Praca klasowa
1706	24	7	10	5.00	2025-03-12	Odpowiedź ustna
1707	24	7	10	3.00	2025-05-13	Praca klasowa
1708	24	7	10	4.00	2025-03-22	Aktywność
1709	24	7	10	6.00	2025-05-10	Projekt
1710	24	7	10	5.00	2025-04-12	Odpowiedź ustna
1711	24	7	14	5.00	2025-03-19	Projekt
1712	24	7	14	4.00	2025-04-04	Sprawdzian
1713	24	7	14	5.00	2025-04-08	Praca domowa
1714	24	3	10	5.00	2025-03-28	Prezentacja
1715	24	3	10	6.00	2025-04-07	Odpowiedź ustna
1716	24	3	10	5.00	2025-04-03	Prezentacja
1717	24	9	14	4.00	2025-05-19	Test
1718	24	9	14	5.00	2025-04-26	Kartkówka
1719	24	9	14	6.00	2025-04-25	Projekt
1720	24	9	14	5.00	2025-03-22	Projekt
1721	24	9	14	3.00	2025-03-30	Aktywność
1722	24	9	14	6.00	2025-06-01	Praca klasowa
1723	24	8	2	5.00	2025-04-26	Aktywność
1724	24	8	2	6.00	2025-04-15	Praca klasowa
1725	24	8	2	3.00	2025-04-18	Test
1726	24	8	2	5.00	2025-03-19	Kartkówka
1727	24	8	2	4.00	2025-03-27	Aktywność
1728	24	10	11	6.00	2025-03-23	Odpowiedź ustna
1729	24	10	11	3.00	2025-04-10	Projekt
1730	24	10	11	6.00	2025-03-31	Test
1731	24	1	6	2.00	2025-04-27	Projekt
1732	24	1	6	4.00	2025-03-13	Test
1733	24	1	6	2.00	2025-05-27	Sprawdzian
1734	24	1	6	5.00	2025-04-26	Prezentacja
1735	24	1	6	5.00	2025-03-22	Aktywność
1736	24	1	6	3.00	2025-06-06	Prezentacja
1737	24	8	3	4.00	2025-05-28	Sprawdzian
1738	24	8	3	4.00	2025-04-19	Quiz
1739	24	8	3	4.00	2025-06-07	Kartkówka
1740	24	8	3	5.00	2025-05-31	Projekt
1741	24	8	3	6.00	2025-05-01	Praca klasowa
1742	26	13	5	4.00	2025-05-03	Test
1743	26	13	5	3.00	2025-03-16	Quiz
1744	26	13	5	4.00	2025-05-14	Kartkówka
1745	26	13	5	5.00	2025-05-08	Praca klasowa
1746	26	14	7	3.00	2025-06-05	Praca klasowa
1747	26	14	7	4.00	2025-05-24	Projekt
1748	26	14	7	5.00	2025-05-04	Quiz
1749	26	15	14	5.00	2025-05-10	Odpowiedź ustna
1750	26	15	14	5.00	2025-04-08	Quiz
1751	26	15	14	5.00	2025-03-29	Praca domowa
1752	26	14	5	6.00	2025-03-23	Projekt
1753	26	14	5	2.00	2025-04-15	Test
1754	26	14	5	6.00	2025-04-06	Kartkówka
1755	26	14	5	2.00	2025-04-05	Kartkówka
1756	26	14	5	3.00	2025-04-11	Quiz
1757	26	11	11	6.00	2025-06-04	Praca klasowa
1758	26	11	11	4.00	2025-03-28	Praca domowa
1759	26	11	11	5.00	2025-05-26	Test
1760	26	11	11	2.00	2025-05-18	Praca domowa
1761	26	11	11	6.00	2025-04-23	Sprawdzian
1762	26	11	11	6.00	2025-05-25	Quiz
1763	26	11	11	2.00	2025-03-20	Quiz
1764	26	12	3	6.00	2025-03-18	Praca domowa
1765	26	12	3	5.00	2025-04-29	Kartkówka
1766	26	12	3	5.00	2025-05-16	Prezentacja
1767	26	12	3	6.00	2025-04-14	Test
1768	26	12	3	3.00	2025-04-18	Prezentacja
1769	26	4	5	1.00	2025-04-08	Praca klasowa
1770	26	4	5	5.00	2025-06-05	Sprawdzian
1771	26	4	5	5.00	2025-03-13	Praca klasowa
1772	26	4	5	5.00	2025-05-31	Prezentacja
1773	26	4	5	5.00	2025-04-04	Prezentacja
1774	26	4	5	5.00	2025-05-30	Projekt
1775	26	4	5	6.00	2025-05-25	Aktywność
1776	26	4	5	4.00	2025-03-13	Prezentacja
1777	26	3	2	6.00	2025-04-29	Kartkówka
1778	26	3	2	4.00	2025-05-08	Kartkówka
1779	26	3	2	4.00	2025-05-08	Projekt
1780	26	3	2	4.00	2025-04-21	Test
1781	26	3	2	2.00	2025-05-14	Quiz
1782	26	3	2	6.00	2025-06-07	Projekt
1783	26	7	10	5.00	2025-05-14	Praca domowa
1784	26	7	10	4.00	2025-03-27	Odpowiedź ustna
1785	26	7	10	1.00	2025-04-20	Test
1786	26	7	10	5.00	2025-03-31	Praca klasowa
1787	26	7	10	4.00	2025-04-23	Prezentacja
1788	26	7	10	5.00	2025-03-31	Sprawdzian
1789	26	7	10	6.00	2025-05-10	Praca domowa
1790	26	7	14	4.00	2025-05-23	Aktywność
1791	26	7	14	4.00	2025-05-07	Prezentacja
1792	26	7	14	5.00	2025-05-28	Sprawdzian
1793	26	7	14	6.00	2025-04-25	Kartkówka
1794	26	7	14	1.00	2025-03-31	Projekt
1795	26	7	14	2.00	2025-04-20	Odpowiedź ustna
1796	26	7	14	5.00	2025-03-23	Quiz
1797	26	3	10	3.00	2025-05-02	Test
1798	26	3	10	6.00	2025-05-01	Kartkówka
1799	26	3	10	3.00	2025-04-13	Aktywność
1800	26	3	10	5.00	2025-03-20	Test
1801	26	3	10	4.00	2025-05-21	Aktywność
1802	26	3	10	3.00	2025-04-03	Aktywność
1803	26	3	10	3.00	2025-05-19	Prezentacja
1804	26	9	14	5.00	2025-04-07	Odpowiedź ustna
1805	26	9	14	4.00	2025-04-03	Prezentacja
1806	26	9	14	3.00	2025-04-14	Odpowiedź ustna
1807	26	9	14	3.00	2025-04-11	Test
1808	26	8	2	4.00	2025-03-14	Praca domowa
1809	26	8	2	3.00	2025-04-20	Projekt
1810	26	8	2	5.00	2025-05-26	Projekt
1811	26	8	2	1.00	2025-03-12	Projekt
1812	26	8	2	6.00	2025-05-23	Kartkówka
1813	26	10	11	4.00	2025-04-19	Projekt
1814	26	10	11	5.00	2025-04-19	Praca domowa
1815	26	10	11	5.00	2025-03-26	Quiz
1816	26	10	11	3.00	2025-04-30	Prezentacja
1817	26	10	11	3.00	2025-05-28	Odpowiedź ustna
1818	26	10	11	5.00	2025-05-15	Test
1819	26	10	11	2.00	2025-05-07	Test
1820	26	10	11	4.00	2025-05-19	Kartkówka
1821	26	1	6	5.00	2025-04-02	Odpowiedź ustna
1822	26	1	6	6.00	2025-05-05	Prezentacja
1823	26	1	6	6.00	2025-03-18	Aktywność
1824	26	1	6	6.00	2025-03-22	Test
1825	26	8	3	6.00	2025-04-16	Odpowiedź ustna
1826	26	8	3	4.00	2025-05-07	Praca domowa
1827	26	8	3	3.00	2025-04-10	Odpowiedź ustna
1828	26	8	3	4.00	2025-04-28	Sprawdzian
1829	26	8	3	3.00	2025-03-18	Test
1830	26	8	3	6.00	2025-05-06	Kartkówka
1831	26	8	3	5.00	2025-05-03	Projekt
1832	27	13	5	5.00	2025-05-04	Sprawdzian
1833	27	13	5	6.00	2025-03-25	Odpowiedź ustna
1834	27	13	5	5.00	2025-03-10	Quiz
1835	27	13	5	2.00	2025-03-22	Odpowiedź ustna
1836	27	13	5	4.00	2025-05-24	Praca domowa
1837	27	13	5	3.00	2025-05-19	Prezentacja
1838	27	13	5	4.00	2025-05-01	Praca klasowa
1839	27	13	5	6.00	2025-03-14	Quiz
1840	27	14	7	6.00	2025-04-09	Sprawdzian
1841	27	14	7	5.00	2025-05-03	Projekt
1842	27	14	7	6.00	2025-03-21	Aktywność
1843	27	14	7	5.00	2025-05-25	Aktywność
1844	27	14	7	6.00	2025-05-22	Sprawdzian
1845	27	14	7	3.00	2025-03-18	Quiz
1846	27	14	7	3.00	2025-03-28	Aktywność
1847	27	14	7	3.00	2025-04-01	Test
1848	27	15	14	4.00	2025-04-12	Sprawdzian
1849	27	15	14	5.00	2025-04-01	Prezentacja
1850	27	15	14	5.00	2025-05-27	Test
1851	27	15	14	5.00	2025-03-22	Prezentacja
1852	27	14	5	5.00	2025-05-18	Aktywność
1853	27	14	5	6.00	2025-05-20	Projekt
1854	27	14	5	5.00	2025-05-29	Test
1855	27	14	5	6.00	2025-03-23	Test
1856	27	14	5	4.00	2025-03-31	Quiz
1857	27	14	5	3.00	2025-05-11	Test
1858	27	14	5	6.00	2025-05-09	Praca klasowa
1859	27	11	11	6.00	2025-05-13	Prezentacja
1860	27	11	11	3.00	2025-05-19	Praca domowa
1861	27	11	11	6.00	2025-03-31	Test
1862	27	11	11	5.00	2025-05-24	Quiz
1863	27	11	11	5.00	2025-04-02	Odpowiedź ustna
1864	27	11	11	6.00	2025-04-28	Praca klasowa
1865	27	11	11	3.00	2025-03-30	Praca klasowa
1866	27	12	3	5.00	2025-04-12	Quiz
1867	27	12	3	2.00	2025-05-02	Quiz
1868	27	12	3	4.00	2025-05-17	Aktywność
1869	27	12	3	4.00	2025-04-10	Test
1870	27	12	3	3.00	2025-05-11	Aktywność
1871	27	12	3	4.00	2025-06-07	Projekt
1872	27	12	3	5.00	2025-04-06	Sprawdzian
1873	27	12	3	3.00	2025-06-02	Test
1874	27	4	5	4.00	2025-04-30	Prezentacja
1875	27	4	5	6.00	2025-04-16	Projekt
1876	27	4	5	4.00	2025-04-27	Quiz
1877	27	4	5	3.00	2025-04-21	Aktywność
1878	27	4	5	4.00	2025-03-11	Praca domowa
1879	27	4	5	5.00	2025-05-01	Kartkówka
1880	27	3	2	4.00	2025-04-13	Sprawdzian
1881	27	3	2	5.00	2025-03-20	Test
1882	27	3	2	1.00	2025-04-18	Test
1883	27	3	2	5.00	2025-04-28	Test
1884	27	3	2	3.00	2025-03-21	Kartkówka
1885	27	3	2	5.00	2025-05-08	Projekt
1886	27	7	10	4.00	2025-04-12	Projekt
1887	27	7	10	5.00	2025-05-07	Odpowiedź ustna
1888	27	7	10	5.00	2025-03-10	Test
1889	27	7	10	3.00	2025-03-20	Quiz
1890	27	7	10	5.00	2025-04-03	Praca klasowa
1891	27	7	14	5.00	2025-05-26	Praca domowa
1892	27	7	14	4.00	2025-05-09	Test
1893	27	7	14	6.00	2025-04-15	Kartkówka
1894	27	7	14	5.00	2025-03-26	Quiz
1895	27	7	14	3.00	2025-03-29	Prezentacja
1896	27	7	14	3.00	2025-04-26	Sprawdzian
1897	27	7	14	4.00	2025-04-06	Quiz
1898	27	3	10	5.00	2025-03-21	Odpowiedź ustna
1899	27	3	10	5.00	2025-04-25	Sprawdzian
1900	27	3	10	5.00	2025-04-03	Projekt
1901	27	3	10	4.00	2025-03-27	Praca klasowa
1902	27	3	10	4.00	2025-05-05	Test
1903	27	9	14	5.00	2025-04-16	Kartkówka
1904	27	9	14	5.00	2025-05-28	Prezentacja
1905	27	9	14	5.00	2025-05-24	Sprawdzian
1906	27	9	14	6.00	2025-04-08	Projekt
1907	27	9	14	4.00	2025-04-26	Test
1908	27	9	14	6.00	2025-03-18	Test
1909	27	9	14	5.00	2025-05-31	Aktywność
1910	27	8	2	4.00	2025-05-26	Kartkówka
1911	27	8	2	5.00	2025-03-31	Praca klasowa
1912	27	8	2	6.00	2025-03-23	Projekt
1913	27	8	2	6.00	2025-05-01	Praca domowa
1914	27	8	2	5.00	2025-05-06	Praca klasowa
1915	27	8	2	6.00	2025-04-27	Praca domowa
1916	27	10	11	4.00	2025-03-18	Aktywność
1917	27	10	11	5.00	2025-03-25	Aktywność
1918	27	10	11	3.00	2025-06-03	Praca klasowa
1919	27	10	11	4.00	2025-06-07	Kartkówka
1920	27	1	6	6.00	2025-06-03	Kartkówka
1921	27	1	6	5.00	2025-04-11	Praca klasowa
1922	27	1	6	5.00	2025-05-23	Praca domowa
1923	27	1	6	6.00	2025-05-05	Projekt
1924	27	8	3	5.00	2025-05-13	Odpowiedź ustna
1925	27	8	3	3.00	2025-04-22	Quiz
1926	27	8	3	4.00	2025-04-14	Projekt
1927	27	8	3	5.00	2025-05-05	Kartkówka
1928	27	8	3	5.00	2025-04-28	Quiz
1929	28	13	5	6.00	2025-03-31	Kartkówka
1930	28	13	5	3.00	2025-03-22	Praca klasowa
1931	28	13	5	6.00	2025-05-30	Praca klasowa
1932	28	13	5	5.00	2025-04-01	Quiz
1933	28	14	7	3.00	2025-03-11	Praca domowa
1934	28	14	7	3.00	2025-03-19	Kartkówka
1935	28	14	7	3.00	2025-04-25	Aktywność
1936	28	15	14	5.00	2025-04-05	Sprawdzian
1937	28	15	14	4.00	2025-04-18	Prezentacja
1938	28	15	14	4.00	2025-04-15	Quiz
1939	28	14	5	3.00	2025-04-10	Prezentacja
1940	28	14	5	4.00	2025-05-04	Praca klasowa
1941	28	14	5	5.00	2025-06-02	Prezentacja
1942	28	11	11	3.00	2025-04-23	Test
1943	28	11	11	5.00	2025-04-04	Praca klasowa
1944	28	11	11	5.00	2025-05-18	Kartkówka
1945	28	11	11	4.00	2025-04-28	Odpowiedź ustna
1946	28	11	11	5.00	2025-04-18	Sprawdzian
1947	28	11	11	5.00	2025-05-24	Projekt
1948	28	11	11	6.00	2025-03-15	Projekt
1949	28	11	11	6.00	2025-05-06	Prezentacja
1950	28	12	3	5.00	2025-04-13	Test
1951	28	12	3	6.00	2025-05-11	Prezentacja
1952	28	12	3	4.00	2025-05-30	Projekt
1953	28	12	3	3.00	2025-03-29	Odpowiedź ustna
1954	28	12	3	4.00	2025-04-11	Test
1955	28	12	3	5.00	2025-03-31	Projekt
1956	28	4	5	6.00	2025-05-15	Kartkówka
1957	28	4	5	4.00	2025-05-07	Praca domowa
1958	28	4	5	3.00	2025-03-10	Praca domowa
1959	28	4	5	5.00	2025-04-08	Test
1960	28	3	2	1.00	2025-04-02	Sprawdzian
1961	28	3	2	4.00	2025-03-25	Aktywność
1962	28	3	2	3.00	2025-05-13	Praca klasowa
1963	28	3	2	6.00	2025-04-22	Praca klasowa
1964	28	7	10	4.00	2025-04-27	Sprawdzian
1965	28	7	10	3.00	2025-06-07	Prezentacja
1966	28	7	10	5.00	2025-04-16	Praca klasowa
1967	28	7	10	2.00	2025-04-08	Aktywność
1968	28	7	10	5.00	2025-05-29	Prezentacja
1969	28	7	10	5.00	2025-03-21	Kartkówka
1970	28	7	10	3.00	2025-03-11	Kartkówka
1971	28	7	14	4.00	2025-04-03	Praca domowa
1972	28	7	14	4.00	2025-04-30	Quiz
1973	28	7	14	2.00	2025-04-30	Praca domowa
1974	28	7	14	4.00	2025-04-27	Sprawdzian
1975	28	3	10	4.00	2025-04-27	Test
1976	28	3	10	4.00	2025-05-28	Aktywność
1977	28	3	10	4.00	2025-06-05	Kartkówka
1978	28	9	14	6.00	2025-03-30	Odpowiedź ustna
1979	28	9	14	5.00	2025-04-01	Aktywność
1980	28	9	14	3.00	2025-04-17	Prezentacja
1981	28	9	14	4.00	2025-05-29	Aktywność
1982	28	9	14	4.00	2025-05-21	Aktywność
1983	28	9	14	5.00	2025-04-27	Praca domowa
1984	28	8	2	3.00	2025-03-26	Test
1985	28	8	2	5.00	2025-05-11	Praca klasowa
1986	28	8	2	6.00	2025-05-25	Praca klasowa
1987	28	8	2	4.00	2025-06-04	Kartkówka
1988	28	8	2	2.00	2025-04-01	Test
1989	28	8	2	5.00	2025-04-05	Sprawdzian
1990	28	8	2	5.00	2025-03-10	Aktywność
1991	28	8	2	4.00	2025-05-04	Kartkówka
1992	28	10	11	5.00	2025-04-19	Test
1993	28	10	11	4.00	2025-04-25	Aktywność
1994	28	10	11	3.00	2025-03-14	Test
1995	28	10	11	5.00	2025-03-11	Praca klasowa
1996	28	10	11	4.00	2025-03-12	Aktywność
1997	28	10	11	5.00	2025-05-11	Prezentacja
1998	28	10	11	3.00	2025-03-21	Quiz
1999	28	10	11	4.00	2025-04-01	Aktywność
2000	28	1	6	5.00	2025-03-24	Test
2001	28	1	6	2.00	2025-03-28	Test
2002	28	1	6	5.00	2025-05-11	Praca domowa
2003	28	8	3	3.00	2025-05-14	Prezentacja
2004	28	8	3	5.00	2025-04-07	Praca domowa
2005	28	8	3	4.00	2025-05-14	Prezentacja
2006	28	8	3	4.00	2025-05-25	Aktywność
2007	28	8	3	5.00	2025-06-04	Projekt
2008	28	8	3	6.00	2025-03-25	Quiz
2009	28	8	3	2.00	2025-03-29	Kartkówka
2010	28	8	3	3.00	2025-05-01	Quiz
2011	29	13	5	1.00	2025-04-30	Projekt
2012	29	13	5	5.00	2025-05-13	Projekt
2013	29	13	5	5.00	2025-05-11	Praca klasowa
2014	29	13	5	5.00	2025-03-11	Odpowiedź ustna
2015	29	13	5	3.00	2025-04-01	Odpowiedź ustna
2016	29	13	5	4.00	2025-04-24	Projekt
2017	29	13	5	2.00	2025-05-13	Praca klasowa
2018	29	14	7	6.00	2025-05-02	Odpowiedź ustna
2019	29	14	7	6.00	2025-04-04	Prezentacja
2020	29	14	7	3.00	2025-05-05	Prezentacja
2021	29	15	14	5.00	2025-05-03	Sprawdzian
2022	29	15	14	6.00	2025-05-27	Prezentacja
2023	29	15	14	3.00	2025-04-08	Test
2024	29	15	14	5.00	2025-05-19	Quiz
2025	29	15	14	5.00	2025-06-06	Prezentacja
2026	29	15	14	3.00	2025-05-22	Prezentacja
2027	29	15	14	5.00	2025-04-17	Praca domowa
2028	29	14	5	6.00	2025-03-22	Praca domowa
2029	29	14	5	6.00	2025-03-14	Sprawdzian
2030	29	14	5	3.00	2025-04-17	Praca domowa
2031	29	11	11	6.00	2025-04-19	Aktywność
2032	29	11	11	2.00	2025-04-02	Projekt
2033	29	11	11	5.00	2025-04-26	Quiz
2034	29	11	11	5.00	2025-04-04	Projekt
2035	29	11	11	5.00	2025-05-30	Odpowiedź ustna
2036	29	12	3	2.00	2025-05-06	Aktywność
2037	29	12	3	5.00	2025-05-24	Test
2038	29	12	3	2.00	2025-03-31	Projekt
2039	29	12	3	3.00	2025-06-07	Aktywność
2040	29	4	5	5.00	2025-04-20	Kartkówka
2041	29	4	5	3.00	2025-05-08	Praca klasowa
2042	29	4	5	4.00	2025-03-19	Praca klasowa
2043	29	4	5	2.00	2025-04-24	Sprawdzian
2044	29	4	5	6.00	2025-06-04	Sprawdzian
2045	29	4	5	6.00	2025-05-09	Praca domowa
2046	29	4	5	6.00	2025-05-29	Aktywność
2047	29	4	5	4.00	2025-04-07	Test
2048	29	3	2	3.00	2025-05-26	Kartkówka
2049	29	3	2	4.00	2025-04-27	Praca klasowa
2050	29	3	2	5.00	2025-03-29	Praca domowa
2051	29	3	2	4.00	2025-03-22	Kartkówka
2052	29	3	2	4.00	2025-03-18	Quiz
2053	29	3	2	5.00	2025-05-28	Prezentacja
2054	29	3	2	5.00	2025-04-01	Odpowiedź ustna
2055	29	3	2	6.00	2025-03-22	Kartkówka
2056	29	7	10	4.00	2025-03-18	Odpowiedź ustna
2057	29	7	10	5.00	2025-05-09	Quiz
2058	29	7	10	3.00	2025-05-07	Quiz
2059	29	7	10	4.00	2025-04-04	Aktywność
2060	29	7	10	5.00	2025-04-08	Praca klasowa
2061	29	7	10	2.00	2025-03-21	Praca klasowa
2062	29	7	10	4.00	2025-05-26	Aktywność
2063	29	7	10	2.00	2025-06-03	Aktywność
2064	29	7	14	3.00	2025-03-14	Odpowiedź ustna
2065	29	7	14	2.00	2025-06-03	Prezentacja
2066	29	7	14	6.00	2025-04-01	Test
2067	29	3	10	3.00	2025-05-04	Kartkówka
2068	29	3	10	5.00	2025-05-31	Aktywność
2069	29	3	10	3.00	2025-03-14	Projekt
2070	29	3	10	6.00	2025-04-12	Sprawdzian
2071	29	9	14	2.00	2025-05-14	Test
2072	29	9	14	5.00	2025-04-17	Test
2073	29	9	14	6.00	2025-04-13	Odpowiedź ustna
2074	29	9	14	3.00	2025-05-08	Odpowiedź ustna
2075	29	9	14	3.00	2025-03-26	Praca klasowa
2076	29	9	14	3.00	2025-05-28	Aktywność
2077	29	9	14	4.00	2025-03-14	Projekt
2078	29	9	14	5.00	2025-04-16	Odpowiedź ustna
2079	29	8	2	5.00	2025-03-12	Projekt
2080	29	8	2	5.00	2025-04-19	Aktywność
2081	29	8	2	5.00	2025-04-02	Odpowiedź ustna
2082	29	8	2	6.00	2025-03-10	Odpowiedź ustna
2083	29	8	2	5.00	2025-05-09	Sprawdzian
2084	29	8	2	5.00	2025-04-08	Quiz
2085	29	8	2	6.00	2025-03-11	Test
2086	29	8	2	4.00	2025-06-06	Praca klasowa
2087	29	10	11	5.00	2025-04-01	Projekt
2088	29	10	11	4.00	2025-03-30	Praca domowa
2089	29	10	11	3.00	2025-03-11	Kartkówka
2090	29	10	11	4.00	2025-04-23	Test
2091	29	10	11	5.00	2025-05-29	Test
2092	29	10	11	1.00	2025-05-05	Test
2093	29	1	6	4.00	2025-05-04	Test
2094	29	1	6	4.00	2025-05-11	Quiz
2095	29	1	6	3.00	2025-03-22	Odpowiedź ustna
2096	29	1	6	5.00	2025-03-30	Praca domowa
2097	29	8	3	5.00	2025-04-02	Aktywność
2098	29	8	3	2.00	2025-04-29	Praca klasowa
2099	29	8	3	4.00	2025-03-28	Quiz
2100	29	8	3	5.00	2025-04-02	Quiz
2101	29	8	3	4.00	2025-04-03	Praca domowa
2102	29	8	3	1.00	2025-06-04	Odpowiedź ustna
2103	29	8	3	4.00	2025-03-30	Quiz
2104	29	8	3	5.00	2025-05-10	Quiz
2105	30	13	5	4.00	2025-03-28	Test
2106	30	13	5	3.00	2025-04-13	Test
2107	30	13	5	5.00	2025-05-10	Test
2108	30	14	7	4.00	2025-04-05	Prezentacja
2109	30	14	7	4.00	2025-04-02	Prezentacja
2110	30	14	7	5.00	2025-05-08	Prezentacja
2111	30	15	14	6.00	2025-06-05	Quiz
2112	30	15	14	3.00	2025-04-16	Projekt
2113	30	15	14	3.00	2025-03-18	Prezentacja
2114	30	15	14	5.00	2025-04-10	Kartkówka
2115	30	15	14	3.00	2025-05-31	Praca domowa
2116	30	15	14	5.00	2025-03-28	Kartkówka
2117	30	14	5	4.00	2025-05-30	Test
2118	30	14	5	6.00	2025-03-10	Praca domowa
2119	30	14	5	4.00	2025-04-28	Prezentacja
2120	30	14	5	6.00	2025-04-24	Projekt
2121	30	14	5	6.00	2025-04-27	Praca domowa
2122	30	14	5	4.00	2025-04-25	Test
2123	30	11	11	5.00	2025-04-26	Prezentacja
2124	30	11	11	6.00	2025-04-11	Aktywność
2125	30	11	11	6.00	2025-05-09	Aktywność
2126	30	11	11	5.00	2025-04-26	Projekt
2127	30	11	11	4.00	2025-05-10	Projekt
2128	30	12	3	4.00	2025-03-13	Test
2129	30	12	3	4.00	2025-04-15	Aktywność
2130	30	12	3	4.00	2025-05-19	Test
2131	30	12	3	5.00	2025-04-23	Kartkówka
2132	30	12	3	4.00	2025-03-20	Quiz
2133	30	12	3	3.00	2025-04-05	Kartkówka
2134	30	12	3	3.00	2025-06-01	Sprawdzian
2135	30	12	3	5.00	2025-04-25	Aktywność
2136	30	4	5	4.00	2025-03-19	Sprawdzian
2137	30	4	5	2.00	2025-03-21	Praca klasowa
2138	30	4	5	6.00	2025-04-04	Praca klasowa
2139	30	4	5	5.00	2025-04-14	Praca domowa
2140	30	3	2	5.00	2025-03-11	Test
2141	30	3	2	5.00	2025-04-18	Sprawdzian
2142	30	3	2	3.00	2025-05-31	Praca klasowa
2143	30	3	2	3.00	2025-04-05	Quiz
2144	30	3	2	5.00	2025-03-30	Test
2145	30	3	2	5.00	2025-05-14	Aktywność
2146	30	7	10	5.00	2025-03-13	Praca domowa
2147	30	7	10	3.00	2025-05-03	Prezentacja
2148	30	7	10	5.00	2025-05-05	Aktywność
2149	30	7	14	6.00	2025-05-25	Kartkówka
2150	30	7	14	5.00	2025-04-20	Prezentacja
2151	30	7	14	3.00	2025-04-30	Kartkówka
2152	30	3	10	3.00	2025-03-10	Sprawdzian
2153	30	3	10	6.00	2025-05-22	Praca klasowa
2154	30	3	10	5.00	2025-04-09	Prezentacja
2155	30	3	10	5.00	2025-04-01	Prezentacja
2156	30	3	10	5.00	2025-03-30	Kartkówka
2157	30	3	10	5.00	2025-05-28	Kartkówka
2158	30	3	10	4.00	2025-04-27	Projekt
2159	30	9	14	4.00	2025-05-05	Kartkówka
2160	30	9	14	3.00	2025-05-13	Prezentacja
2161	30	9	14	5.00	2025-06-03	Praca klasowa
2162	30	9	14	3.00	2025-04-11	Prezentacja
2163	30	9	14	5.00	2025-04-19	Odpowiedź ustna
2164	30	8	2	5.00	2025-03-12	Projekt
2165	30	8	2	5.00	2025-05-20	Kartkówka
2166	30	8	2	4.00	2025-05-17	Praca domowa
2167	30	8	2	5.00	2025-05-01	Prezentacja
2168	30	8	2	5.00	2025-06-02	Praca klasowa
2169	30	8	2	6.00	2025-04-13	Kartkówka
2170	30	8	2	3.00	2025-06-07	Odpowiedź ustna
2171	30	10	11	4.00	2025-05-26	Projekt
2172	30	10	11	5.00	2025-03-19	Kartkówka
2173	30	10	11	4.00	2025-05-15	Odpowiedź ustna
2174	30	10	11	5.00	2025-05-03	Kartkówka
2175	30	1	6	4.00	2025-05-04	Quiz
2176	30	1	6	5.00	2025-03-23	Aktywność
2177	30	1	6	6.00	2025-04-14	Prezentacja
2178	30	1	6	2.00	2025-04-05	Aktywność
2179	30	1	6	3.00	2025-04-26	Projekt
2180	30	8	3	4.00	2025-05-08	Praca klasowa
2181	30	8	3	4.00	2025-05-29	Praca klasowa
2182	30	8	3	5.00	2025-05-07	Sprawdzian
2183	30	8	3	4.00	2025-04-21	Sprawdzian
2184	30	8	3	3.00	2025-05-08	Odpowiedź ustna
2185	30	8	3	4.00	2025-05-16	Aktywność
2186	30	8	3	3.00	2025-03-19	Prezentacja
2187	31	13	5	5.00	2025-03-24	Quiz
2188	31	13	5	4.00	2025-03-26	Praca klasowa
2189	31	13	5	6.00	2025-05-29	Praca domowa
2190	31	13	5	6.00	2025-05-01	Sprawdzian
2191	31	13	5	4.00	2025-05-27	Kartkówka
2192	31	13	5	4.00	2025-04-08	Praca klasowa
2193	31	13	5	4.00	2025-06-07	Sprawdzian
2194	31	13	5	3.00	2025-05-08	Projekt
2195	31	14	7	5.00	2025-05-14	Test
2196	31	14	7	6.00	2025-05-02	Kartkówka
2197	31	14	7	5.00	2025-03-11	Quiz
2198	31	14	7	2.00	2025-03-14	Prezentacja
2199	31	15	14	4.00	2025-05-09	Praca klasowa
2200	31	15	14	5.00	2025-04-16	Quiz
2201	31	15	14	2.00	2025-05-15	Kartkówka
2202	31	14	5	3.00	2025-06-05	Prezentacja
2203	31	14	5	3.00	2025-05-09	Projekt
2204	31	14	5	4.00	2025-03-15	Aktywność
2205	31	14	5	4.00	2025-04-06	Sprawdzian
2206	31	14	5	3.00	2025-05-03	Test
2207	31	11	11	3.00	2025-05-27	Projekt
2208	31	11	11	5.00	2025-04-19	Praca klasowa
2209	31	11	11	3.00	2025-03-31	Praca domowa
2210	31	11	11	6.00	2025-03-29	Prezentacja
2211	31	11	11	5.00	2025-04-19	Sprawdzian
2212	31	12	3	5.00	2025-04-12	Sprawdzian
2213	31	12	3	3.00	2025-05-15	Prezentacja
2214	31	12	3	5.00	2025-04-07	Odpowiedź ustna
2215	31	12	3	5.00	2025-05-11	Test
2216	31	12	3	6.00	2025-03-21	Kartkówka
2217	31	4	5	6.00	2025-05-16	Test
2218	31	4	5	3.00	2025-04-22	Prezentacja
2219	31	4	5	4.00	2025-05-12	Sprawdzian
2220	31	4	5	6.00	2025-05-12	Odpowiedź ustna
2221	31	4	5	6.00	2025-05-08	Test
2222	31	3	2	4.00	2025-03-27	Projekt
2223	31	3	2	6.00	2025-04-09	Aktywność
2224	31	3	2	6.00	2025-04-01	Quiz
2225	31	3	2	2.00	2025-03-23	Kartkówka
2226	31	3	2	5.00	2025-04-06	Praca domowa
2227	31	7	10	3.00	2025-04-29	Prezentacja
2228	31	7	10	4.00	2025-03-30	Odpowiedź ustna
2229	31	7	10	5.00	2025-03-22	Aktywność
2230	31	7	10	5.00	2025-03-27	Kartkówka
2231	31	7	14	5.00	2025-05-22	Test
2232	31	7	14	5.00	2025-03-24	Aktywność
2233	31	7	14	5.00	2025-04-04	Sprawdzian
2234	31	3	10	5.00	2025-05-04	Prezentacja
2235	31	3	10	4.00	2025-04-07	Aktywność
2236	31	3	10	5.00	2025-05-29	Praca klasowa
2237	31	3	10	4.00	2025-05-10	Kartkówka
2238	31	3	10	6.00	2025-05-23	Quiz
2239	31	3	10	5.00	2025-04-16	Prezentacja
2240	31	9	14	5.00	2025-05-05	Odpowiedź ustna
2241	31	9	14	5.00	2025-04-17	Projekt
2242	31	9	14	4.00	2025-04-29	Test
2243	31	9	14	6.00	2025-05-02	Praca domowa
2244	31	8	2	2.00	2025-05-16	Kartkówka
2245	31	8	2	3.00	2025-03-21	Projekt
2246	31	8	2	5.00	2025-04-06	Quiz
2247	31	8	2	5.00	2025-03-20	Odpowiedź ustna
2248	31	8	2	4.00	2025-03-29	Prezentacja
2249	31	8	2	3.00	2025-04-15	Odpowiedź ustna
2250	31	8	2	5.00	2025-04-29	Projekt
2251	31	10	11	4.00	2025-04-06	Praca domowa
2252	31	10	11	5.00	2025-03-31	Sprawdzian
2253	31	10	11	5.00	2025-06-05	Sprawdzian
2254	31	10	11	5.00	2025-05-22	Projekt
2255	31	1	6	4.00	2025-04-27	Aktywność
2256	31	1	6	6.00	2025-03-22	Odpowiedź ustna
2257	31	1	6	5.00	2025-05-22	Sprawdzian
2258	31	1	6	4.00	2025-03-15	Projekt
2259	31	1	6	3.00	2025-04-11	Projekt
2260	31	1	6	3.00	2025-06-04	Prezentacja
2261	31	1	6	4.00	2025-05-10	Aktywność
2262	31	1	6	6.00	2025-04-07	Test
2263	31	8	3	4.00	2025-04-09	Praca klasowa
2264	31	8	3	4.00	2025-05-30	Sprawdzian
2265	31	8	3	4.00	2025-03-11	Praca domowa
2266	31	8	3	4.00	2025-05-02	Test
2267	31	8	3	6.00	2025-04-08	Prezentacja
2268	32	13	5	6.00	2025-05-22	Praca domowa
2269	32	13	5	5.00	2025-05-31	Sprawdzian
2270	32	13	5	3.00	2025-03-17	Test
2271	32	13	5	5.00	2025-03-25	Prezentacja
2272	32	13	5	5.00	2025-05-21	Test
2273	32	13	5	5.00	2025-03-23	Prezentacja
2274	32	13	5	6.00	2025-04-08	Quiz
2275	32	14	7	6.00	2025-03-22	Quiz
2276	32	14	7	5.00	2025-05-02	Projekt
2277	32	14	7	5.00	2025-04-18	Quiz
2278	32	14	7	4.00	2025-06-04	Aktywność
2279	32	14	7	4.00	2025-04-18	Prezentacja
2280	32	14	7	3.00	2025-03-24	Test
2281	32	14	7	4.00	2025-05-13	Test
2282	32	14	7	3.00	2025-03-13	Sprawdzian
2283	32	15	14	4.00	2025-06-04	Quiz
2284	32	15	14	2.00	2025-05-29	Kartkówka
2285	32	15	14	3.00	2025-05-22	Odpowiedź ustna
2286	32	15	14	2.00	2025-04-27	Odpowiedź ustna
2287	32	14	5	1.00	2025-06-01	Quiz
2288	32	14	5	5.00	2025-04-01	Kartkówka
2289	32	14	5	3.00	2025-03-19	Aktywność
2290	32	14	5	6.00	2025-05-27	Sprawdzian
2291	32	14	5	5.00	2025-06-04	Kartkówka
2292	32	11	11	2.00	2025-04-24	Quiz
2293	32	11	11	6.00	2025-05-02	Aktywność
2294	32	11	11	5.00	2025-04-16	Aktywność
2295	32	12	3	5.00	2025-03-10	Aktywność
2296	32	12	3	3.00	2025-04-15	Sprawdzian
2297	32	12	3	3.00	2025-03-21	Kartkówka
2298	32	12	3	5.00	2025-03-20	Quiz
2299	32	12	3	3.00	2025-04-05	Kartkówka
2300	32	12	3	1.00	2025-05-20	Sprawdzian
2301	32	12	3	5.00	2025-03-20	Praca klasowa
2302	32	4	5	6.00	2025-05-26	Praca klasowa
2303	32	4	5	3.00	2025-06-01	Sprawdzian
2304	32	4	5	4.00	2025-05-11	Quiz
2305	32	4	5	5.00	2025-05-09	Test
2306	32	4	5	6.00	2025-04-17	Sprawdzian
2307	32	4	5	3.00	2025-03-31	Kartkówka
2308	32	3	2	4.00	2025-05-25	Odpowiedź ustna
2309	32	3	2	6.00	2025-05-14	Aktywność
2310	32	3	2	5.00	2025-06-06	Praca klasowa
2311	32	3	2	3.00	2025-05-27	Praca klasowa
2312	32	7	10	4.00	2025-03-27	Praca domowa
2313	32	7	10	5.00	2025-04-13	Odpowiedź ustna
2314	32	7	10	4.00	2025-04-28	Sprawdzian
2315	32	7	10	4.00	2025-05-31	Odpowiedź ustna
2316	32	7	10	2.00	2025-03-25	Projekt
2317	32	7	10	5.00	2025-04-13	Test
2318	32	7	10	4.00	2025-05-16	Quiz
2319	32	7	14	4.00	2025-05-29	Odpowiedź ustna
2320	32	7	14	6.00	2025-04-05	Praca domowa
2321	32	7	14	5.00	2025-03-31	Sprawdzian
2322	32	7	14	5.00	2025-03-19	Prezentacja
2323	32	7	14	5.00	2025-05-19	Odpowiedź ustna
2324	32	7	14	4.00	2025-03-19	Odpowiedź ustna
2325	32	7	14	4.00	2025-03-21	Test
2326	32	7	14	3.00	2025-05-23	Projekt
2327	32	3	10	6.00	2025-04-07	Quiz
2328	32	3	10	5.00	2025-04-23	Praca klasowa
2329	32	3	10	5.00	2025-04-16	Test
2330	32	3	10	3.00	2025-05-17	Quiz
2331	32	3	10	5.00	2025-05-31	Odpowiedź ustna
2332	32	3	10	4.00	2025-06-02	Aktywność
2333	32	3	10	5.00	2025-04-04	Odpowiedź ustna
2334	32	3	10	5.00	2025-04-08	Kartkówka
2335	32	9	14	5.00	2025-04-30	Kartkówka
2336	32	9	14	6.00	2025-03-12	Odpowiedź ustna
2337	32	9	14	5.00	2025-06-03	Test
2338	32	9	14	4.00	2025-04-09	Quiz
2339	32	9	14	6.00	2025-04-10	Sprawdzian
2340	32	8	2	5.00	2025-04-29	Praca domowa
2341	32	8	2	5.00	2025-05-21	Prezentacja
2342	32	8	2	4.00	2025-04-28	Aktywność
2343	32	8	2	4.00	2025-06-05	Kartkówka
2344	32	8	2	5.00	2025-05-12	Sprawdzian
2345	32	10	11	5.00	2025-05-26	Quiz
2346	32	10	11	4.00	2025-05-28	Sprawdzian
2347	32	10	11	3.00	2025-04-24	Prezentacja
2348	32	10	11	5.00	2025-04-17	Sprawdzian
2349	32	1	6	4.00	2025-04-12	Praca domowa
2350	32	1	6	5.00	2025-05-26	Prezentacja
2351	32	1	6	6.00	2025-05-09	Quiz
2352	32	1	6	3.00	2025-04-01	Aktywność
2353	32	1	6	5.00	2025-04-30	Praca domowa
2354	32	1	6	5.00	2025-06-07	Kartkówka
2355	32	1	6	6.00	2025-04-05	Test
2356	32	8	3	6.00	2025-03-30	Projekt
2357	32	8	3	4.00	2025-05-28	Praca klasowa
2358	32	8	3	6.00	2025-05-05	Aktywność
2359	32	8	3	6.00	2025-03-26	Prezentacja
2360	33	13	5	3.00	2025-03-20	Projekt
2361	33	13	5	6.00	2025-04-07	Projekt
2362	33	13	5	5.00	2025-05-15	Test
2363	33	13	5	3.00	2025-04-08	Praca klasowa
2364	33	14	7	2.00	2025-05-05	Prezentacja
2365	33	14	7	5.00	2025-03-27	Kartkówka
2366	33	14	7	5.00	2025-05-09	Praca klasowa
2367	33	14	7	6.00	2025-05-14	Test
2368	33	14	7	4.00	2025-05-28	Prezentacja
2369	33	14	7	4.00	2025-04-25	Sprawdzian
2370	33	15	14	4.00	2025-04-10	Sprawdzian
2371	33	15	14	6.00	2025-04-26	Kartkówka
2372	33	15	14	6.00	2025-05-05	Odpowiedź ustna
2373	33	15	14	5.00	2025-05-04	Quiz
2374	33	15	14	5.00	2025-04-13	Praca domowa
2375	33	15	14	5.00	2025-04-29	Quiz
2376	33	14	5	6.00	2025-04-18	Prezentacja
2377	33	14	5	1.00	2025-03-24	Praca klasowa
2378	33	14	5	5.00	2025-04-23	Praca domowa
2379	33	14	5	4.00	2025-04-03	Quiz
2380	33	14	5	3.00	2025-04-16	Quiz
2381	33	14	5	5.00	2025-05-21	Kartkówka
2382	33	14	5	3.00	2025-03-17	Praca domowa
2383	33	14	5	5.00	2025-04-17	Kartkówka
2384	33	11	11	6.00	2025-04-03	Praca domowa
2385	33	11	11	2.00	2025-06-03	Test
2386	33	11	11	4.00	2025-03-15	Projekt
2387	33	11	11	4.00	2025-05-17	Projekt
2388	33	11	11	4.00	2025-05-12	Test
2389	33	12	3	5.00	2025-03-12	Test
2390	33	12	3	5.00	2025-05-28	Quiz
2391	33	12	3	5.00	2025-05-16	Odpowiedź ustna
2392	33	12	3	5.00	2025-04-07	Prezentacja
2393	33	4	5	3.00	2025-03-21	Praca domowa
2394	33	4	5	4.00	2025-05-29	Kartkówka
2395	33	4	5	5.00	2025-04-01	Aktywność
2396	33	3	2	3.00	2025-05-21	Quiz
2397	33	3	2	4.00	2025-05-16	Quiz
2398	33	3	2	5.00	2025-04-09	Prezentacja
2399	33	3	2	6.00	2025-03-17	Praca klasowa
2400	33	3	2	5.00	2025-03-26	Praca klasowa
2401	33	3	2	4.00	2025-05-31	Kartkówka
2402	33	3	2	6.00	2025-06-04	Projekt
2403	33	7	10	5.00	2025-06-07	Odpowiedź ustna
2404	33	7	10	6.00	2025-04-20	Praca domowa
2405	33	7	10	4.00	2025-04-16	Odpowiedź ustna
2406	33	7	10	5.00	2025-04-23	Kartkówka
2407	33	7	10	4.00	2025-04-01	Quiz
2408	33	7	10	5.00	2025-03-11	Praca domowa
2409	33	7	10	4.00	2025-03-31	Test
2410	33	7	10	4.00	2025-04-24	Quiz
2411	33	7	14	5.00	2025-05-14	Prezentacja
2412	33	7	14	4.00	2025-06-01	Praca klasowa
2413	33	7	14	2.00	2025-05-11	Praca domowa
2414	33	7	14	3.00	2025-04-15	Prezentacja
2415	33	7	14	3.00	2025-05-27	Aktywność
2416	33	7	14	3.00	2025-03-28	Prezentacja
2417	33	7	14	2.00	2025-03-20	Sprawdzian
2418	33	7	14	5.00	2025-03-16	Kartkówka
2419	33	3	10	3.00	2025-04-08	Praca domowa
2420	33	3	10	6.00	2025-03-30	Prezentacja
2421	33	3	10	4.00	2025-05-22	Praca klasowa
2422	33	3	10	6.00	2025-04-13	Odpowiedź ustna
2423	33	3	10	2.00	2025-03-11	Sprawdzian
2424	33	3	10	5.00	2025-04-04	Test
2425	33	3	10	4.00	2025-05-11	Sprawdzian
2426	33	3	10	5.00	2025-05-08	Praca klasowa
2427	33	9	14	4.00	2025-05-16	Projekt
2428	33	9	14	4.00	2025-04-27	Quiz
2429	33	9	14	3.00	2025-05-24	Aktywność
2430	33	9	14	4.00	2025-05-02	Projekt
2431	33	9	14	3.00	2025-06-01	Aktywność
2432	33	9	14	3.00	2025-05-29	Praca domowa
2549	35	14	7	5.00	2025-03-18	Aktywność
2433	33	8	2	4.00	2025-05-24	Odpowiedź ustna
2434	33	8	2	5.00	2025-04-15	Prezentacja
2435	33	8	2	6.00	2025-04-28	Test
2436	33	8	2	5.00	2025-05-24	Prezentacja
2437	33	8	2	4.00	2025-04-20	Test
2438	33	8	2	5.00	2025-04-12	Odpowiedź ustna
2439	33	10	11	5.00	2025-05-05	Test
2440	33	10	11	5.00	2025-05-22	Kartkówka
2441	33	10	11	5.00	2025-04-27	Projekt
2442	33	10	11	3.00	2025-04-24	Projekt
2443	33	10	11	6.00	2025-03-13	Projekt
2444	33	10	11	5.00	2025-04-10	Kartkówka
2445	33	10	11	4.00	2025-06-05	Quiz
2446	33	1	6	6.00	2025-05-02	Test
2447	33	1	6	1.00	2025-05-25	Sprawdzian
2448	33	1	6	5.00	2025-05-27	Projekt
2449	33	8	3	2.00	2025-06-06	Test
2450	33	8	3	2.00	2025-03-10	Odpowiedź ustna
2451	33	8	3	4.00	2025-04-28	Praca domowa
2452	33	8	3	3.00	2025-03-18	Aktywność
2453	33	8	3	4.00	2025-04-17	Quiz
2454	33	8	3	5.00	2025-05-14	Aktywność
2455	34	13	5	5.00	2025-03-30	Aktywność
2456	34	13	5	3.00	2025-05-01	Odpowiedź ustna
2457	34	13	5	5.00	2025-03-26	Prezentacja
2458	34	13	5	1.00	2025-04-21	Sprawdzian
2459	34	13	5	5.00	2025-05-27	Test
2460	34	13	5	5.00	2025-04-04	Sprawdzian
2461	34	13	5	5.00	2025-03-24	Aktywność
2462	34	14	7	5.00	2025-04-27	Sprawdzian
2463	34	14	7	4.00	2025-05-05	Praca klasowa
2464	34	14	7	5.00	2025-05-25	Praca klasowa
2465	34	14	7	6.00	2025-03-21	Quiz
2466	34	15	14	6.00	2025-05-11	Aktywność
2467	34	15	14	3.00	2025-03-27	Odpowiedź ustna
2468	34	15	14	4.00	2025-03-17	Praca domowa
2469	34	15	14	4.00	2025-03-14	Praca domowa
2470	34	15	14	5.00	2025-05-24	Quiz
2471	34	15	14	6.00	2025-05-16	Sprawdzian
2472	34	14	5	3.00	2025-05-10	Kartkówka
2473	34	14	5	3.00	2025-05-07	Prezentacja
2474	34	14	5	5.00	2025-03-19	Quiz
2475	34	14	5	4.00	2025-04-27	Prezentacja
2476	34	14	5	5.00	2025-04-11	Sprawdzian
2477	34	11	11	5.00	2025-04-06	Test
2478	34	11	11	5.00	2025-04-26	Test
2479	34	11	11	3.00	2025-04-10	Test
2480	34	11	11	4.00	2025-03-20	Quiz
2481	34	12	3	6.00	2025-04-26	Projekt
2482	34	12	3	4.00	2025-05-09	Aktywność
2483	34	12	3	6.00	2025-04-13	Quiz
2484	34	4	5	2.00	2025-04-22	Praca klasowa
2485	34	4	5	4.00	2025-03-27	Praca domowa
2486	34	4	5	3.00	2025-05-08	Odpowiedź ustna
2487	34	4	5	3.00	2025-03-15	Odpowiedź ustna
2488	34	4	5	5.00	2025-03-24	Quiz
2489	34	4	5	5.00	2025-04-19	Praca domowa
2490	34	4	5	5.00	2025-04-25	Projekt
2491	34	4	5	5.00	2025-06-03	Quiz
2492	34	3	2	4.00	2025-03-22	Projekt
2493	34	3	2	5.00	2025-04-09	Praca klasowa
2494	34	3	2	5.00	2025-05-05	Praca domowa
2495	34	7	10	5.00	2025-04-02	Sprawdzian
2496	34	7	10	4.00	2025-04-25	Odpowiedź ustna
2497	34	7	10	5.00	2025-03-13	Projekt
2498	34	7	14	3.00	2025-03-13	Aktywność
2499	34	7	14	6.00	2025-03-12	Kartkówka
2500	34	7	14	6.00	2025-04-10	Prezentacja
2501	34	7	14	3.00	2025-03-27	Projekt
2502	34	7	14	1.00	2025-05-15	Praca domowa
2503	34	7	14	5.00	2025-05-20	Test
2504	34	7	14	3.00	2025-04-25	Praca klasowa
2505	34	3	10	3.00	2025-03-24	Praca klasowa
2506	34	3	10	1.00	2025-04-05	Odpowiedź ustna
2507	34	3	10	5.00	2025-04-07	Prezentacja
2508	34	3	10	5.00	2025-05-05	Kartkówka
2509	34	3	10	3.00	2025-04-10	Aktywność
2510	34	3	10	6.00	2025-03-22	Prezentacja
2511	34	3	10	5.00	2025-04-23	Odpowiedź ustna
2512	34	3	10	4.00	2025-05-13	Test
2513	34	9	14	4.00	2025-05-21	Sprawdzian
2514	34	9	14	5.00	2025-05-29	Quiz
2515	34	9	14	5.00	2025-05-10	Praca domowa
2516	34	9	14	4.00	2025-04-12	Odpowiedź ustna
2517	34	9	14	4.00	2025-06-06	Aktywność
2518	34	9	14	4.00	2025-03-30	Projekt
2519	34	9	14	5.00	2025-03-30	Praca klasowa
2520	34	9	14	1.00	2025-04-21	Praca domowa
2521	34	8	2	6.00	2025-03-16	Quiz
2522	34	8	2	4.00	2025-04-19	Test
2523	34	8	2	5.00	2025-03-11	Quiz
2524	34	8	2	5.00	2025-03-28	Praca klasowa
2525	34	10	11	6.00	2025-04-13	Projekt
2526	34	10	11	5.00	2025-03-24	Projekt
2527	34	10	11	5.00	2025-04-03	Prezentacja
2528	34	10	11	5.00	2025-05-14	Kartkówka
2529	34	10	11	5.00	2025-04-20	Praca klasowa
2530	34	10	11	5.00	2025-03-14	Sprawdzian
2531	34	1	6	2.00	2025-03-19	Praca domowa
2532	34	1	6	4.00	2025-05-10	Sprawdzian
2533	34	1	6	5.00	2025-05-22	Aktywność
2534	34	1	6	5.00	2025-05-01	Projekt
2535	34	1	6	5.00	2025-04-04	Aktywność
2536	34	1	6	5.00	2025-04-13	Prezentacja
2537	34	8	3	5.00	2025-05-01	Projekt
2538	34	8	3	5.00	2025-06-04	Projekt
2539	34	8	3	6.00	2025-06-06	Praca domowa
2540	34	8	3	4.00	2025-03-12	Prezentacja
2541	34	8	3	5.00	2025-03-15	Praca klasowa
2542	35	13	5	2.00	2025-03-31	Aktywność
2543	35	13	5	6.00	2025-04-17	Kartkówka
2544	35	13	5	5.00	2025-05-19	Test
2545	35	13	5	2.00	2025-04-28	Sprawdzian
2546	35	14	7	5.00	2025-03-21	Projekt
2547	35	14	7	5.00	2025-04-01	Aktywność
2548	35	14	7	4.00	2025-04-18	Kartkówka
2550	35	14	7	5.00	2025-05-03	Aktywność
2551	35	14	7	4.00	2025-04-07	Test
2552	35	14	7	3.00	2025-03-21	Test
2553	35	15	14	5.00	2025-03-10	Sprawdzian
2554	35	15	14	5.00	2025-04-23	Praca klasowa
2555	35	15	14	4.00	2025-04-20	Test
2556	35	15	14	5.00	2025-04-12	Prezentacja
2557	35	15	14	3.00	2025-03-13	Projekt
2558	35	15	14	1.00	2025-05-06	Praca klasowa
2559	35	15	14	5.00	2025-04-03	Praca klasowa
2560	35	15	14	5.00	2025-04-23	Test
2561	35	14	5	1.00	2025-04-28	Praca domowa
2562	35	14	5	4.00	2025-03-29	Praca domowa
2563	35	14	5	3.00	2025-04-28	Prezentacja
2564	35	14	5	5.00	2025-05-22	Sprawdzian
2565	35	14	5	5.00	2025-04-28	Kartkówka
2566	35	14	5	4.00	2025-04-27	Prezentacja
2567	35	11	11	5.00	2025-03-12	Praca domowa
2568	35	11	11	6.00	2025-04-24	Sprawdzian
2569	35	11	11	5.00	2025-03-15	Odpowiedź ustna
2570	35	11	11	3.00	2025-04-24	Praca domowa
2571	35	11	11	5.00	2025-04-12	Quiz
2572	35	12	3	4.00	2025-04-30	Sprawdzian
2573	35	12	3	4.00	2025-04-18	Aktywność
2574	35	12	3	4.00	2025-04-03	Praca domowa
2575	35	12	3	3.00	2025-03-30	Prezentacja
2576	35	12	3	6.00	2025-04-03	Odpowiedź ustna
2577	35	12	3	2.00	2025-06-02	Aktywność
2578	35	12	3	5.00	2025-03-31	Projekt
2579	35	12	3	5.00	2025-03-12	Sprawdzian
2580	35	4	5	5.00	2025-04-20	Kartkówka
2581	35	4	5	6.00	2025-03-28	Odpowiedź ustna
2582	35	4	5	5.00	2025-04-28	Test
2583	35	3	2	6.00	2025-04-15	Praca domowa
2584	35	3	2	2.00	2025-05-02	Projekt
2585	35	3	2	4.00	2025-04-29	Odpowiedź ustna
2586	35	3	2	2.00	2025-04-20	Praca domowa
2587	35	3	2	4.00	2025-05-17	Kartkówka
2588	35	3	2	6.00	2025-05-14	Praca domowa
2589	35	3	2	5.00	2025-04-28	Praca klasowa
2590	35	7	10	3.00	2025-03-31	Praca klasowa
2591	35	7	10	5.00	2025-05-11	Projekt
2592	35	7	10	2.00	2025-04-06	Praca domowa
2593	35	7	10	4.00	2025-03-30	Odpowiedź ustna
2594	35	7	10	4.00	2025-04-21	Aktywność
2595	35	7	10	6.00	2025-04-30	Sprawdzian
2596	35	7	14	5.00	2025-03-31	Quiz
2597	35	7	14	5.00	2025-03-27	Prezentacja
2598	35	7	14	5.00	2025-03-23	Projekt
2599	35	7	14	5.00	2025-05-12	Praca klasowa
2600	35	7	14	6.00	2025-04-16	Aktywność
2601	35	3	10	5.00	2025-04-09	Odpowiedź ustna
2602	35	3	10	4.00	2025-04-04	Odpowiedź ustna
2603	35	3	10	4.00	2025-04-14	Kartkówka
2604	35	3	10	5.00	2025-06-06	Praca domowa
2605	35	9	14	5.00	2025-04-03	Aktywność
2606	35	9	14	5.00	2025-04-19	Praca klasowa
2607	35	9	14	6.00	2025-04-14	Projekt
2608	35	9	14	2.00	2025-05-26	Prezentacja
2609	35	8	2	6.00	2025-05-23	Quiz
2610	35	8	2	4.00	2025-05-12	Quiz
2611	35	8	2	2.00	2025-03-22	Sprawdzian
2612	35	8	2	4.00	2025-03-24	Projekt
2613	35	8	2	5.00	2025-03-19	Sprawdzian
2614	35	8	2	4.00	2025-05-25	Prezentacja
2615	35	8	2	5.00	2025-04-08	Test
2616	35	10	11	4.00	2025-03-31	Aktywność
2617	35	10	11	4.00	2025-03-27	Test
2618	35	10	11	6.00	2025-05-20	Odpowiedź ustna
2619	35	10	11	3.00	2025-03-22	Praca klasowa
2620	35	1	6	2.00	2025-05-11	Praca klasowa
2621	35	1	6	6.00	2025-03-13	Kartkówka
2622	35	1	6	4.00	2025-04-15	Odpowiedź ustna
2623	35	1	6	4.00	2025-06-02	Quiz
2624	35	8	3	3.00	2025-04-14	Test
2625	35	8	3	2.00	2025-06-07	Kartkówka
2626	35	8	3	3.00	2025-04-08	Aktywność
2627	35	8	3	4.00	2025-03-28	Aktywność
2628	35	8	3	4.00	2025-05-05	Test
2629	36	13	5	5.00	2025-03-10	Praca klasowa
2630	36	13	5	5.00	2025-05-05	Odpowiedź ustna
2631	36	13	5	4.00	2025-05-20	Aktywność
2632	36	13	5	5.00	2025-04-12	Projekt
2633	36	13	5	5.00	2025-05-25	Praca domowa
2634	36	14	7	5.00	2025-05-19	Sprawdzian
2635	36	14	7	4.00	2025-05-31	Sprawdzian
2636	36	14	7	6.00	2025-03-26	Aktywność
2637	36	14	7	6.00	2025-05-14	Odpowiedź ustna
2638	36	14	7	3.00	2025-05-04	Praca domowa
2639	36	15	14	1.00	2025-05-20	Odpowiedź ustna
2640	36	15	14	1.00	2025-06-01	Praca klasowa
2641	36	15	14	4.00	2025-04-04	Odpowiedź ustna
2642	36	15	14	2.00	2025-05-01	Projekt
2643	36	15	14	4.00	2025-03-21	Aktywność
2644	36	15	14	4.00	2025-04-27	Sprawdzian
2645	36	15	14	2.00	2025-05-20	Quiz
2646	36	15	14	5.00	2025-05-31	Quiz
2647	36	14	5	5.00	2025-03-12	Test
2648	36	14	5	4.00	2025-05-25	Aktywność
2649	36	14	5	4.00	2025-04-04	Kartkówka
2650	36	14	5	2.00	2025-03-31	Odpowiedź ustna
2651	36	14	5	4.00	2025-04-04	Odpowiedź ustna
2652	36	14	5	5.00	2025-05-09	Kartkówka
2653	36	14	5	5.00	2025-04-14	Odpowiedź ustna
2654	36	14	5	4.00	2025-04-13	Aktywność
2655	36	11	11	3.00	2025-06-01	Odpowiedź ustna
2656	36	11	11	5.00	2025-03-12	Aktywność
2657	36	11	11	4.00	2025-03-20	Quiz
2658	36	11	11	6.00	2025-03-23	Odpowiedź ustna
2659	36	11	11	5.00	2025-05-28	Projekt
2660	36	11	11	2.00	2025-04-08	Aktywność
2661	36	11	11	6.00	2025-05-28	Aktywność
2662	36	12	3	5.00	2025-03-16	Odpowiedź ustna
2663	36	12	3	5.00	2025-03-23	Test
2664	36	12	3	6.00	2025-04-06	Test
2665	36	12	3	6.00	2025-04-25	Quiz
2666	36	4	5	5.00	2025-04-17	Projekt
2667	36	4	5	5.00	2025-05-08	Kartkówka
2668	36	4	5	2.00	2025-05-15	Test
2669	36	4	5	5.00	2025-05-05	Sprawdzian
2670	36	3	2	4.00	2025-03-19	Aktywność
2671	36	3	2	1.00	2025-05-03	Odpowiedź ustna
2672	36	3	2	6.00	2025-03-23	Projekt
2673	36	3	2	5.00	2025-03-16	Test
2674	36	3	2	5.00	2025-05-28	Praca klasowa
2675	36	3	2	3.00	2025-06-05	Test
2676	36	3	2	6.00	2025-04-09	Sprawdzian
2677	36	3	2	4.00	2025-03-25	Odpowiedź ustna
2678	36	7	10	4.00	2025-05-27	Odpowiedź ustna
2679	36	7	10	4.00	2025-05-05	Praca domowa
2680	36	7	10	5.00	2025-03-23	Odpowiedź ustna
2681	36	7	14	4.00	2025-04-29	Praca domowa
2682	36	7	14	4.00	2025-04-07	Praca domowa
2683	36	7	14	4.00	2025-04-18	Kartkówka
2684	36	3	10	2.00	2025-04-20	Odpowiedź ustna
2685	36	3	10	6.00	2025-04-15	Projekt
2686	36	3	10	1.00	2025-05-13	Projekt
2687	36	3	10	4.00	2025-04-18	Praca klasowa
2688	36	9	14	4.00	2025-04-11	Kartkówka
2689	36	9	14	5.00	2025-04-29	Praca klasowa
2690	36	9	14	5.00	2025-04-18	Aktywność
2691	36	9	14	6.00	2025-04-12	Kartkówka
2692	36	9	14	6.00	2025-04-25	Kartkówka
2693	36	9	14	5.00	2025-04-05	Quiz
2694	36	9	14	2.00	2025-04-27	Praca domowa
2695	36	8	2	5.00	2025-04-10	Prezentacja
2696	36	8	2	4.00	2025-05-31	Test
2697	36	8	2	5.00	2025-04-02	Sprawdzian
2698	36	8	2	6.00	2025-05-16	Sprawdzian
2699	36	10	11	4.00	2025-03-28	Projekt
2700	36	10	11	2.00	2025-05-22	Quiz
2701	36	10	11	5.00	2025-05-02	Prezentacja
2702	36	1	6	5.00	2025-05-07	Praca domowa
2703	36	1	6	6.00	2025-05-29	Kartkówka
2704	36	1	6	5.00	2025-06-05	Projekt
2705	36	1	6	3.00	2025-05-04	Test
2706	36	8	3	4.00	2025-04-05	Aktywność
2707	36	8	3	6.00	2025-03-25	Sprawdzian
2708	36	8	3	4.00	2025-05-11	Quiz
2709	37	13	5	6.00	2025-05-18	Odpowiedź ustna
2710	37	13	5	1.00	2025-05-06	Kartkówka
2711	37	13	5	4.00	2025-03-18	Aktywność
2712	37	13	5	5.00	2025-05-26	Test
2713	37	13	5	4.00	2025-04-18	Praca domowa
2714	37	13	5	5.00	2025-05-02	Test
2715	37	13	5	5.00	2025-04-20	Kartkówka
2716	37	13	5	5.00	2025-04-15	Sprawdzian
2717	37	14	7	5.00	2025-03-25	Projekt
2718	37	14	7	4.00	2025-05-21	Odpowiedź ustna
2719	37	14	7	3.00	2025-03-15	Praca klasowa
2720	37	14	7	5.00	2025-03-23	Aktywność
2721	37	14	7	6.00	2025-04-24	Aktywność
2722	37	14	7	2.00	2025-05-25	Prezentacja
2723	37	14	7	4.00	2025-03-29	Kartkówka
2724	37	14	7	5.00	2025-03-13	Praca domowa
2725	37	15	14	5.00	2025-05-24	Aktywność
2726	37	15	14	4.00	2025-03-17	Test
2727	37	15	14	5.00	2025-04-17	Kartkówka
2728	37	15	14	5.00	2025-04-02	Kartkówka
2729	37	15	14	4.00	2025-04-04	Praca domowa
2730	37	15	14	4.00	2025-04-22	Kartkówka
2731	37	15	14	3.00	2025-04-30	Praca domowa
2732	37	15	14	4.00	2025-06-01	Sprawdzian
2733	37	14	5	3.00	2025-06-05	Aktywność
2734	37	14	5	5.00	2025-03-14	Praca klasowa
2735	37	14	5	6.00	2025-05-04	Praca klasowa
2736	37	11	11	4.00	2025-05-17	Praca klasowa
2737	37	11	11	2.00	2025-03-12	Aktywność
2738	37	11	11	2.00	2025-03-22	Aktywność
2739	37	11	11	6.00	2025-03-15	Kartkówka
2740	37	11	11	1.00	2025-05-23	Sprawdzian
2741	37	11	11	6.00	2025-04-07	Praca domowa
2742	37	12	3	3.00	2025-05-12	Projekt
2743	37	12	3	4.00	2025-03-15	Aktywność
2744	37	12	3	5.00	2025-05-05	Prezentacja
2745	37	12	3	2.00	2025-04-30	Projekt
2746	37	12	3	5.00	2025-04-24	Sprawdzian
2747	37	4	5	2.00	2025-04-20	Prezentacja
2748	37	4	5	3.00	2025-03-11	Projekt
2749	37	4	5	5.00	2025-04-06	Test
2750	37	3	2	3.00	2025-05-12	Prezentacja
2751	37	3	2	5.00	2025-03-29	Kartkówka
2752	37	3	2	3.00	2025-04-10	Test
2753	37	3	2	6.00	2025-03-19	Aktywność
2754	37	3	2	5.00	2025-03-14	Projekt
2755	37	7	10	1.00	2025-05-29	Quiz
2756	37	7	10	3.00	2025-03-22	Prezentacja
2757	37	7	10	5.00	2025-04-18	Test
2758	37	7	10	5.00	2025-03-10	Kartkówka
2759	37	7	10	4.00	2025-06-04	Odpowiedź ustna
2760	37	7	14	3.00	2025-05-09	Aktywność
2761	37	7	14	3.00	2025-05-30	Praca klasowa
2762	37	7	14	4.00	2025-05-23	Test
2763	37	7	14	3.00	2025-03-19	Test
2764	37	3	10	6.00	2025-03-30	Test
2765	37	3	10	1.00	2025-04-04	Odpowiedź ustna
2766	37	3	10	1.00	2025-04-17	Praca klasowa
2767	37	3	10	5.00	2025-03-28	Projekt
2768	37	3	10	3.00	2025-04-27	Prezentacja
2769	37	3	10	5.00	2025-03-18	Prezentacja
2770	37	9	14	4.00	2025-03-11	Prezentacja
2771	37	9	14	6.00	2025-03-17	Kartkówka
2772	37	9	14	5.00	2025-03-24	Odpowiedź ustna
2773	37	9	14	5.00	2025-04-17	Praca klasowa
2774	37	9	14	4.00	2025-03-24	Prezentacja
2775	37	9	14	5.00	2025-05-25	Aktywność
2776	37	8	2	5.00	2025-03-11	Projekt
2777	37	8	2	5.00	2025-05-12	Sprawdzian
2778	37	8	2	5.00	2025-05-05	Aktywność
2779	37	8	2	3.00	2025-03-28	Praca domowa
2780	37	8	2	5.00	2025-04-11	Praca domowa
2781	37	8	2	5.00	2025-04-12	Odpowiedź ustna
2782	37	10	11	4.00	2025-05-01	Prezentacja
2783	37	10	11	6.00	2025-03-11	Kartkówka
2784	37	10	11	2.00	2025-05-15	Projekt
2785	37	1	6	2.00	2025-04-03	Aktywność
2786	37	1	6	3.00	2025-04-28	Prezentacja
2787	37	1	6	1.00	2025-05-03	Praca klasowa
2788	37	1	6	5.00	2025-04-22	Quiz
2789	37	8	3	5.00	2025-05-11	Aktywność
2790	37	8	3	4.00	2025-03-31	Projekt
2791	37	8	3	2.00	2025-04-27	Odpowiedź ustna
2792	37	8	3	5.00	2025-05-02	Sprawdzian
2793	37	8	3	5.00	2025-06-04	Prezentacja
2794	37	8	3	4.00	2025-05-11	Praca klasowa
2795	37	8	3	5.00	2025-03-26	Praca domowa
2796	38	13	5	1.00	2025-05-17	Praca klasowa
2797	38	13	5	5.00	2025-04-12	Odpowiedź ustna
2798	38	13	5	4.00	2025-05-17	Projekt
2799	38	13	5	4.00	2025-05-06	Prezentacja
2800	38	13	5	4.00	2025-03-18	Projekt
2801	38	13	5	4.00	2025-06-04	Praca domowa
2802	38	14	7	5.00	2025-05-12	Sprawdzian
2803	38	14	7	4.00	2025-04-02	Praca domowa
2804	38	14	7	5.00	2025-05-17	Odpowiedź ustna
2805	38	14	7	6.00	2025-05-20	Prezentacja
2806	38	14	7	5.00	2025-04-01	Test
2807	38	15	14	3.00	2025-05-17	Sprawdzian
2808	38	15	14	4.00	2025-05-20	Test
2809	38	15	14	1.00	2025-03-30	Prezentacja
2810	38	15	14	5.00	2025-05-27	Aktywność
2811	38	15	14	5.00	2025-04-06	Praca klasowa
2812	38	14	5	4.00	2025-06-04	Projekt
2813	38	14	5	4.00	2025-04-02	Odpowiedź ustna
2814	38	14	5	4.00	2025-04-02	Sprawdzian
2815	38	14	5	6.00	2025-04-19	Test
2816	38	14	5	6.00	2025-05-26	Odpowiedź ustna
2817	38	14	5	5.00	2025-05-13	Odpowiedź ustna
2818	38	11	11	4.00	2025-04-30	Kartkówka
2819	38	11	11	5.00	2025-03-22	Prezentacja
2820	38	11	11	5.00	2025-06-05	Quiz
2821	38	11	11	4.00	2025-04-14	Praca domowa
2822	38	11	11	5.00	2025-03-28	Aktywność
2823	38	11	11	5.00	2025-06-07	Quiz
2824	38	11	11	3.00	2025-03-15	Projekt
2825	38	11	11	1.00	2025-04-18	Prezentacja
2826	38	12	3	6.00	2025-04-12	Aktywność
2827	38	12	3	4.00	2025-04-27	Praca domowa
2828	38	12	3	5.00	2025-04-10	Kartkówka
2829	38	12	3	6.00	2025-03-17	Praca klasowa
2830	38	4	5	4.00	2025-05-10	Aktywność
2831	38	4	5	5.00	2025-04-08	Aktywność
2832	38	4	5	5.00	2025-06-03	Test
2833	38	4	5	4.00	2025-05-30	Praca klasowa
2834	38	4	5	6.00	2025-04-13	Praca domowa
2835	38	3	2	4.00	2025-04-14	Test
2836	38	3	2	4.00	2025-04-02	Sprawdzian
2837	38	3	2	3.00	2025-03-27	Kartkówka
2838	38	3	2	6.00	2025-03-26	Praca domowa
2839	38	7	10	5.00	2025-03-19	Odpowiedź ustna
2840	38	7	10	3.00	2025-04-21	Aktywność
2841	38	7	10	2.00	2025-06-02	Kartkówka
2842	38	7	10	6.00	2025-06-07	Odpowiedź ustna
2843	38	7	14	1.00	2025-04-12	Praca klasowa
2844	38	7	14	6.00	2025-06-01	Kartkówka
2845	38	7	14	3.00	2025-05-21	Sprawdzian
2846	38	7	14	5.00	2025-03-30	Quiz
2847	38	7	14	4.00	2025-04-23	Kartkówka
2848	38	7	14	6.00	2025-05-04	Test
2849	38	7	14	3.00	2025-04-17	Aktywność
2850	38	3	10	5.00	2025-04-05	Projekt
2851	38	3	10	3.00	2025-03-22	Quiz
2852	38	3	10	4.00	2025-04-25	Praca domowa
2853	38	3	10	3.00	2025-06-05	Prezentacja
2854	38	3	10	3.00	2025-03-12	Quiz
2855	38	3	10	5.00	2025-03-21	Projekt
2856	38	9	14	6.00	2025-03-16	Sprawdzian
2857	38	9	14	6.00	2025-05-24	Sprawdzian
2858	38	9	14	6.00	2025-04-12	Test
2859	38	9	14	5.00	2025-03-28	Sprawdzian
2860	38	9	14	6.00	2025-04-20	Kartkówka
2861	38	9	14	4.00	2025-04-05	Projekt
2862	38	9	14	6.00	2025-03-27	Test
2863	38	8	2	5.00	2025-04-29	Test
2864	38	8	2	4.00	2025-06-01	Praca domowa
2865	38	8	2	4.00	2025-05-10	Aktywność
2866	38	8	2	6.00	2025-05-15	Sprawdzian
2867	38	8	2	4.00	2025-05-15	Praca domowa
2868	38	8	2	3.00	2025-05-11	Praca domowa
2869	38	10	11	4.00	2025-04-25	Odpowiedź ustna
2870	38	10	11	5.00	2025-05-19	Prezentacja
2871	38	10	11	6.00	2025-04-18	Odpowiedź ustna
2872	38	10	11	6.00	2025-06-01	Praca domowa
2873	38	10	11	4.00	2025-03-15	Praca domowa
2874	38	1	6	6.00	2025-05-24	Test
2875	38	1	6	4.00	2025-04-03	Prezentacja
2876	38	1	6	4.00	2025-05-30	Praca domowa
2877	38	1	6	6.00	2025-05-06	Praca klasowa
2878	38	1	6	6.00	2025-05-30	Test
2879	38	1	6	3.00	2025-04-18	Kartkówka
2880	38	1	6	3.00	2025-04-14	Sprawdzian
2881	38	8	3	6.00	2025-05-13	Odpowiedź ustna
2882	38	8	3	5.00	2025-05-22	Aktywność
2883	38	8	3	4.00	2025-05-08	Quiz
2884	40	13	5	4.00	2025-04-15	Sprawdzian
2885	40	13	5	5.00	2025-05-30	Praca klasowa
2886	40	13	5	4.00	2025-05-04	Test
2887	40	13	5	6.00	2025-03-25	Kartkówka
2888	40	13	5	3.00	2025-05-09	Sprawdzian
2889	40	13	5	5.00	2025-04-27	Kartkówka
2890	40	13	5	3.00	2025-05-20	Prezentacja
2891	40	13	5	4.00	2025-05-01	Prezentacja
2892	40	14	7	5.00	2025-04-28	Prezentacja
2893	40	14	7	5.00	2025-04-10	Test
2894	40	14	7	3.00	2025-03-14	Projekt
2895	40	14	7	5.00	2025-05-04	Sprawdzian
3126	43	7	14	4.00	2025-05-03	Projekt
2896	40	14	7	6.00	2025-03-14	Praca domowa
2897	40	15	14	5.00	2025-04-14	Sprawdzian
2898	40	15	14	3.00	2025-03-27	Praca klasowa
2899	40	15	14	5.00	2025-04-24	Test
2900	40	14	5	5.00	2025-04-22	Praca domowa
2901	40	14	5	5.00	2025-04-28	Praca klasowa
2902	40	14	5	5.00	2025-04-15	Sprawdzian
2903	40	14	5	4.00	2025-03-28	Praca domowa
2904	40	14	5	4.00	2025-04-16	Praca klasowa
2905	40	14	5	5.00	2025-05-27	Quiz
2906	40	14	5	5.00	2025-05-23	Test
2907	40	14	5	6.00	2025-05-22	Test
2908	40	11	11	5.00	2025-03-25	Projekt
2909	40	11	11	3.00	2025-03-15	Praca domowa
2910	40	11	11	6.00	2025-04-26	Test
2911	40	11	11	3.00	2025-03-25	Sprawdzian
2912	40	12	3	4.00	2025-04-26	Odpowiedź ustna
2913	40	12	3	6.00	2025-05-19	Projekt
2914	40	12	3	3.00	2025-05-12	Odpowiedź ustna
2915	40	12	3	6.00	2025-05-26	Prezentacja
2916	40	12	3	6.00	2025-04-30	Projekt
2917	40	12	3	2.00	2025-04-16	Odpowiedź ustna
2918	40	12	3	5.00	2025-03-16	Projekt
2919	40	4	5	5.00	2025-04-07	Sprawdzian
2920	40	4	5	5.00	2025-06-02	Aktywność
2921	40	4	5	5.00	2025-03-25	Test
2922	40	3	2	4.00	2025-04-24	Projekt
2923	40	3	2	4.00	2025-05-03	Odpowiedź ustna
2924	40	3	2	3.00	2025-04-28	Kartkówka
2925	40	3	2	4.00	2025-04-12	Prezentacja
2926	40	3	2	4.00	2025-05-17	Odpowiedź ustna
2927	40	3	2	5.00	2025-03-20	Odpowiedź ustna
2928	40	3	2	6.00	2025-03-18	Praca klasowa
2929	40	3	2	6.00	2025-04-27	Prezentacja
2930	40	7	10	6.00	2025-03-22	Projekt
2931	40	7	10	5.00	2025-06-03	Prezentacja
2932	40	7	10	6.00	2025-04-29	Kartkówka
2933	40	7	10	4.00	2025-04-02	Projekt
2934	40	7	10	5.00	2025-04-11	Kartkówka
2935	40	7	10	4.00	2025-04-01	Aktywność
2936	40	7	10	5.00	2025-05-31	Odpowiedź ustna
2937	40	7	14	3.00	2025-03-19	Kartkówka
2938	40	7	14	6.00	2025-03-18	Praca domowa
2939	40	7	14	6.00	2025-04-23	Sprawdzian
2940	40	7	14	3.00	2025-05-05	Praca klasowa
2941	40	3	10	6.00	2025-04-12	Praca domowa
2942	40	3	10	2.00	2025-04-26	Praca domowa
2943	40	3	10	3.00	2025-04-27	Kartkówka
2944	40	3	10	6.00	2025-05-08	Kartkówka
2945	40	9	14	4.00	2025-03-14	Sprawdzian
2946	40	9	14	5.00	2025-03-20	Kartkówka
2947	40	9	14	3.00	2025-04-29	Praca domowa
2948	40	9	14	4.00	2025-04-16	Odpowiedź ustna
2949	40	9	14	3.00	2025-06-04	Projekt
2950	40	9	14	6.00	2025-04-29	Praca klasowa
2951	40	9	14	5.00	2025-03-24	Praca domowa
2952	40	9	14	5.00	2025-03-14	Aktywność
2953	40	8	2	4.00	2025-03-14	Odpowiedź ustna
2954	40	8	2	4.00	2025-04-23	Prezentacja
2955	40	8	2	4.00	2025-03-27	Test
2956	40	8	2	6.00	2025-05-04	Kartkówka
2957	40	10	11	3.00	2025-05-24	Prezentacja
2958	40	10	11	6.00	2025-04-17	Odpowiedź ustna
2959	40	10	11	6.00	2025-04-11	Sprawdzian
2960	40	10	11	4.00	2025-04-21	Sprawdzian
2961	40	10	11	4.00	2025-06-04	Quiz
2962	40	10	11	6.00	2025-05-02	Projekt
2963	40	1	6	6.00	2025-04-22	Odpowiedź ustna
2964	40	1	6	4.00	2025-04-27	Odpowiedź ustna
2965	40	1	6	4.00	2025-05-19	Sprawdzian
2966	40	1	6	2.00	2025-04-16	Test
2967	40	1	6	3.00	2025-04-21	Praca klasowa
2968	40	1	6	4.00	2025-04-06	Prezentacja
2969	40	8	3	5.00	2025-03-19	Quiz
2970	40	8	3	6.00	2025-05-15	Praca domowa
2971	40	8	3	5.00	2025-05-03	Odpowiedź ustna
2972	41	15	14	2.00	2025-04-29	Aktywność
2973	41	15	14	5.00	2025-04-07	Sprawdzian
2974	41	15	14	5.00	2025-04-17	Odpowiedź ustna
2975	41	3	9	3.00	2025-04-15	Praca domowa
2976	41	3	9	5.00	2025-05-04	Prezentacja
2977	41	3	9	5.00	2025-05-16	Aktywność
2978	41	3	9	5.00	2025-05-18	Odpowiedź ustna
2979	41	12	4	4.00	2025-05-06	Kartkówka
2980	41	12	4	6.00	2025-06-04	Test
2981	41	12	4	5.00	2025-03-12	Sprawdzian
2982	41	12	4	3.00	2025-05-08	Prezentacja
2983	41	12	4	5.00	2025-04-14	Quiz
2984	41	14	4	4.00	2025-04-08	Test
2985	41	14	4	5.00	2025-03-29	Test
2986	41	14	4	5.00	2025-05-28	Quiz
2987	41	14	13	5.00	2025-05-23	Projekt
2988	41	14	13	6.00	2025-05-11	Odpowiedź ustna
2989	41	14	13	3.00	2025-04-19	Prezentacja
2990	41	14	13	5.00	2025-03-19	Odpowiedź ustna
2991	41	14	13	4.00	2025-06-06	Prezentacja
2992	41	14	13	6.00	2025-04-13	Aktywność
2993	41	8	13	6.00	2025-03-19	Test
2994	41	8	13	6.00	2025-03-29	Projekt
2995	41	8	13	4.00	2025-05-26	Quiz
2996	41	8	13	5.00	2025-05-09	Projekt
2997	41	12	3	6.00	2025-03-20	Odpowiedź ustna
2998	41	12	3	6.00	2025-05-25	Aktywność
2999	41	12	3	3.00	2025-04-17	Test
3000	41	5	9	5.00	2025-04-27	Prezentacja
3001	41	5	9	5.00	2025-06-01	Kartkówka
3002	41	5	9	3.00	2025-06-05	Kartkówka
3003	41	5	9	4.00	2025-04-26	Praca domowa
3004	41	5	9	4.00	2025-03-26	Praca klasowa
3005	41	5	9	6.00	2025-05-30	Projekt
3006	41	5	9	3.00	2025-04-14	Quiz
3007	41	5	9	5.00	2025-03-31	Projekt
3008	41	7	14	6.00	2025-03-21	Sprawdzian
3009	41	7	14	4.00	2025-05-01	Sprawdzian
3010	41	7	14	3.00	2025-05-28	Odpowiedź ustna
3011	41	9	14	4.00	2025-03-12	Praca domowa
3012	41	9	14	4.00	2025-04-02	Test
3013	41	9	14	5.00	2025-04-14	Prezentacja
3014	41	9	14	6.00	2025-05-04	Aktywność
3015	41	9	14	5.00	2025-05-29	Projekt
3016	41	9	14	5.00	2025-03-22	Odpowiedź ustna
3017	41	9	14	3.00	2025-03-27	Test
3018	41	9	14	2.00	2025-03-27	Kartkówka
3019	41	8	3	4.00	2025-04-02	Projekt
3020	41	8	3	5.00	2025-04-05	Odpowiedź ustna
3021	41	8	3	6.00	2025-03-19	Praca domowa
3022	42	15	14	6.00	2025-06-03	Prezentacja
3023	42	15	14	6.00	2025-03-26	Praca domowa
3024	42	15	14	2.00	2025-05-05	Praca domowa
3025	42	15	14	2.00	2025-06-04	Sprawdzian
3026	42	3	9	2.00	2025-05-11	Quiz
3027	42	3	9	3.00	2025-05-23	Test
3028	42	3	9	5.00	2025-04-19	Prezentacja
3029	42	3	9	6.00	2025-05-26	Aktywność
3030	42	3	9	2.00	2025-04-21	Quiz
3031	42	3	9	1.00	2025-05-29	Test
3032	42	3	9	6.00	2025-05-06	Odpowiedź ustna
3033	42	3	9	6.00	2025-03-19	Praca klasowa
3034	42	12	4	4.00	2025-04-24	Test
3035	42	12	4	3.00	2025-05-02	Praca klasowa
3036	42	12	4	5.00	2025-04-18	Odpowiedź ustna
3037	42	12	4	5.00	2025-05-04	Praca domowa
3038	42	12	4	6.00	2025-05-11	Kartkówka
3039	42	14	4	1.00	2025-04-21	Praca domowa
3040	42	14	4	2.00	2025-03-28	Projekt
3041	42	14	4	4.00	2025-04-11	Prezentacja
3042	42	14	4	5.00	2025-03-12	Prezentacja
3043	42	14	4	5.00	2025-03-28	Prezentacja
3044	42	14	13	5.00	2025-05-01	Kartkówka
3045	42	14	13	4.00	2025-03-20	Kartkówka
3046	42	14	13	3.00	2025-04-21	Aktywność
3047	42	14	13	5.00	2025-04-21	Kartkówka
3048	42	8	13	5.00	2025-05-01	Praca klasowa
3049	42	8	13	4.00	2025-04-01	Quiz
3050	42	8	13	5.00	2025-04-08	Quiz
3051	42	12	3	4.00	2025-04-13	Quiz
3052	42	12	3	3.00	2025-04-16	Quiz
3053	42	12	3	5.00	2025-05-14	Quiz
3054	42	12	3	5.00	2025-04-06	Kartkówka
3055	42	12	3	4.00	2025-03-10	Odpowiedź ustna
3056	42	12	3	4.00	2025-04-02	Aktywność
3057	42	12	3	4.00	2025-05-10	Sprawdzian
3058	42	12	3	4.00	2025-03-18	Praca klasowa
3059	42	5	9	5.00	2025-04-14	Praca domowa
3060	42	5	9	5.00	2025-06-05	Projekt
3061	42	5	9	5.00	2025-04-01	Prezentacja
3062	42	5	9	5.00	2025-05-23	Sprawdzian
3063	42	5	9	6.00	2025-06-02	Kartkówka
3064	42	7	14	4.00	2025-04-22	Test
3065	42	7	14	3.00	2025-06-07	Odpowiedź ustna
3066	42	7	14	5.00	2025-05-01	Prezentacja
3067	42	7	14	4.00	2025-04-17	Praca klasowa
3068	42	9	14	5.00	2025-03-27	Sprawdzian
3069	42	9	14	5.00	2025-05-17	Aktywność
3070	42	9	14	2.00	2025-05-27	Projekt
3071	42	9	14	6.00	2025-04-15	Aktywność
3072	42	9	14	5.00	2025-05-11	Projekt
3073	42	9	14	5.00	2025-05-29	Sprawdzian
3074	42	9	14	5.00	2025-03-16	Odpowiedź ustna
3075	42	9	14	5.00	2025-04-21	Odpowiedź ustna
3076	42	8	3	5.00	2025-04-02	Praca domowa
3077	42	8	3	3.00	2025-03-18	Aktywność
3078	42	8	3	2.00	2025-03-27	Praca domowa
3079	42	8	3	5.00	2025-06-04	Quiz
3080	42	8	3	4.00	2025-05-08	Prezentacja
3081	42	8	3	5.00	2025-05-13	Projekt
3082	42	8	3	4.00	2025-05-02	Kartkówka
3083	43	15	14	3.00	2025-05-31	Odpowiedź ustna
3084	43	15	14	4.00	2025-03-15	Projekt
3085	43	15	14	5.00	2025-03-31	Prezentacja
3086	43	15	14	5.00	2025-04-20	Sprawdzian
3087	43	3	9	6.00	2025-04-01	Odpowiedź ustna
3088	43	3	9	5.00	2025-05-09	Odpowiedź ustna
3089	43	3	9	4.00	2025-04-02	Odpowiedź ustna
3090	43	3	9	4.00	2025-03-26	Praca klasowa
3091	43	3	9	4.00	2025-05-30	Kartkówka
3092	43	3	9	5.00	2025-05-06	Praca klasowa
3093	43	3	9	6.00	2025-06-03	Aktywność
3094	43	12	4	5.00	2025-04-19	Test
3095	43	12	4	4.00	2025-04-09	Odpowiedź ustna
3096	43	12	4	5.00	2025-04-16	Kartkówka
3097	43	12	4	4.00	2025-05-05	Odpowiedź ustna
3098	43	12	4	5.00	2025-04-27	Test
3099	43	12	4	6.00	2025-05-30	Test
3100	43	14	4	2.00	2025-04-16	Prezentacja
3101	43	14	4	5.00	2025-04-20	Odpowiedź ustna
3102	43	14	4	5.00	2025-04-15	Praca klasowa
3103	43	14	13	5.00	2025-03-10	Kartkówka
3104	43	14	13	5.00	2025-03-29	Aktywność
3105	43	14	13	4.00	2025-05-06	Quiz
3106	43	14	13	2.00	2025-04-16	Quiz
3107	43	14	13	5.00	2025-05-19	Odpowiedź ustna
3108	43	14	13	6.00	2025-04-06	Aktywność
3109	43	14	13	5.00	2025-04-22	Odpowiedź ustna
3110	43	8	13	5.00	2025-05-02	Sprawdzian
3111	43	8	13	5.00	2025-03-14	Aktywność
3112	43	8	13	2.00	2025-04-20	Quiz
3113	43	8	13	6.00	2025-03-30	Sprawdzian
3114	43	8	13	3.00	2025-05-24	Praca klasowa
3115	43	12	3	5.00	2025-03-20	Aktywność
3116	43	12	3	5.00	2025-04-25	Kartkówka
3117	43	12	3	6.00	2025-04-26	Test
3118	43	12	3	6.00	2025-05-03	Praca domowa
3119	43	12	3	6.00	2025-03-16	Sprawdzian
3120	43	12	3	2.00	2025-05-07	Praca domowa
3121	43	5	9	4.00	2025-03-25	Praca domowa
3122	43	5	9	5.00	2025-05-24	Quiz
3123	43	5	9	5.00	2025-05-26	Prezentacja
3124	43	5	9	4.00	2025-03-17	Projekt
3125	43	5	9	4.00	2025-04-07	Projekt
3127	43	7	14	5.00	2025-04-08	Praca klasowa
3128	43	7	14	4.00	2025-04-30	Aktywność
3129	43	7	14	4.00	2025-04-19	Test
3130	43	9	14	5.00	2025-04-11	Kartkówka
3131	43	9	14	5.00	2025-05-05	Kartkówka
3132	43	9	14	4.00	2025-05-15	Sprawdzian
3133	43	9	14	5.00	2025-05-17	Quiz
3134	43	9	14	5.00	2025-05-10	Test
3135	43	9	14	6.00	2025-04-01	Projekt
3136	43	8	3	5.00	2025-05-19	Projekt
3137	43	8	3	4.00	2025-05-19	Odpowiedź ustna
3138	43	8	3	4.00	2025-04-05	Prezentacja
3139	43	8	3	4.00	2025-04-27	Odpowiedź ustna
3140	43	8	3	5.00	2025-05-05	Aktywność
3141	43	8	3	4.00	2025-03-14	Praca klasowa
3142	43	8	3	6.00	2025-04-27	Sprawdzian
3143	43	8	3	5.00	2025-06-04	Praca domowa
3144	44	15	14	4.00	2025-05-29	Aktywność
3145	44	15	14	5.00	2025-05-11	Aktywność
3146	44	15	14	3.00	2025-05-27	Praca klasowa
3147	44	15	14	2.00	2025-06-05	Prezentacja
3148	44	15	14	5.00	2025-05-02	Projekt
3149	44	15	14	6.00	2025-04-09	Kartkówka
3150	44	3	9	2.00	2025-03-21	Prezentacja
3151	44	3	9	4.00	2025-05-08	Praca domowa
3152	44	3	9	5.00	2025-05-16	Odpowiedź ustna
3153	44	3	9	6.00	2025-03-21	Kartkówka
3154	44	12	4	3.00	2025-05-24	Odpowiedź ustna
3155	44	12	4	3.00	2025-03-19	Prezentacja
3156	44	12	4	4.00	2025-05-02	Quiz
3157	44	12	4	6.00	2025-05-18	Test
3158	44	12	4	5.00	2025-03-27	Projekt
3159	44	12	4	5.00	2025-05-25	Praca domowa
3160	44	12	4	6.00	2025-04-11	Praca domowa
3161	44	12	4	6.00	2025-04-06	Prezentacja
3162	44	14	4	3.00	2025-05-22	Aktywność
3163	44	14	4	5.00	2025-03-23	Kartkówka
3164	44	14	4	6.00	2025-05-17	Quiz
3165	44	14	4	3.00	2025-03-14	Praca domowa
3166	44	14	4	6.00	2025-05-03	Odpowiedź ustna
3167	44	14	13	6.00	2025-04-21	Kartkówka
3168	44	14	13	5.00	2025-04-18	Test
3169	44	14	13	4.00	2025-04-23	Prezentacja
3170	44	14	13	4.00	2025-05-14	Odpowiedź ustna
3171	44	14	13	3.00	2025-04-29	Sprawdzian
3172	44	14	13	6.00	2025-05-19	Projekt
3173	44	8	13	4.00	2025-04-08	Kartkówka
3174	44	8	13	6.00	2025-06-06	Aktywność
3175	44	8	13	2.00	2025-05-12	Projekt
3176	44	8	13	4.00	2025-06-02	Praca klasowa
3177	44	8	13	4.00	2025-04-13	Odpowiedź ustna
3178	44	12	3	3.00	2025-05-05	Kartkówka
3179	44	12	3	3.00	2025-05-20	Praca klasowa
3180	44	12	3	3.00	2025-04-06	Prezentacja
3181	44	5	9	3.00	2025-05-27	Projekt
3182	44	5	9	3.00	2025-04-14	Aktywność
3183	44	5	9	4.00	2025-05-07	Odpowiedź ustna
3184	44	5	9	6.00	2025-03-22	Odpowiedź ustna
3185	44	5	9	3.00	2025-03-22	Praca klasowa
3186	44	7	14	5.00	2025-04-12	Praca domowa
3187	44	7	14	5.00	2025-03-11	Odpowiedź ustna
3188	44	7	14	6.00	2025-03-31	Projekt
3189	44	7	14	4.00	2025-05-10	Sprawdzian
3190	44	7	14	6.00	2025-04-28	Odpowiedź ustna
3191	44	7	14	6.00	2025-04-22	Test
3192	44	7	14	5.00	2025-03-24	Sprawdzian
3193	44	9	14	5.00	2025-04-16	Praca klasowa
3194	44	9	14	5.00	2025-04-30	Kartkówka
3195	44	9	14	3.00	2025-05-16	Praca domowa
3196	44	9	14	4.00	2025-04-14	Quiz
3197	44	9	14	5.00	2025-05-23	Praca klasowa
3198	44	9	14	6.00	2025-04-16	Kartkówka
3199	44	9	14	5.00	2025-05-18	Kartkówka
3200	44	8	3	5.00	2025-05-27	Praca klasowa
3201	44	8	3	4.00	2025-03-10	Aktywność
3202	44	8	3	3.00	2025-04-13	Quiz
3203	44	8	3	4.00	2025-04-26	Prezentacja
3204	44	8	3	6.00	2025-05-15	Sprawdzian
3205	45	15	14	4.00	2025-05-19	Praca domowa
3206	45	15	14	4.00	2025-04-17	Praca domowa
3207	45	15	14	4.00	2025-05-23	Praca domowa
3208	45	15	14	5.00	2025-05-18	Sprawdzian
3209	45	15	14	6.00	2025-04-11	Quiz
3210	45	15	14	5.00	2025-04-11	Praca klasowa
3211	45	15	14	4.00	2025-04-22	Prezentacja
3212	45	3	9	5.00	2025-05-20	Test
3213	45	3	9	5.00	2025-04-16	Prezentacja
3214	45	3	9	4.00	2025-06-03	Praca domowa
3215	45	3	9	2.00	2025-05-12	Prezentacja
3216	45	3	9	5.00	2025-04-27	Aktywność
3217	45	12	4	6.00	2025-05-25	Prezentacja
3218	45	12	4	6.00	2025-05-13	Sprawdzian
3219	45	12	4	4.00	2025-06-04	Quiz
3220	45	12	4	5.00	2025-04-29	Odpowiedź ustna
3221	45	14	4	5.00	2025-04-07	Praca domowa
3222	45	14	4	5.00	2025-04-02	Projekt
3223	45	14	4	5.00	2025-06-04	Quiz
3224	45	14	13	3.00	2025-05-13	Praca domowa
3225	45	14	13	3.00	2025-03-19	Projekt
3226	45	14	13	3.00	2025-04-26	Projekt
3227	45	8	13	4.00	2025-04-24	Test
3228	45	8	13	4.00	2025-05-04	Odpowiedź ustna
3229	45	8	13	5.00	2025-05-10	Prezentacja
3230	45	8	13	4.00	2025-06-07	Aktywność
3231	45	8	13	4.00	2025-04-28	Sprawdzian
3232	45	12	3	4.00	2025-03-26	Prezentacja
3233	45	12	3	5.00	2025-04-25	Sprawdzian
3234	45	12	3	3.00	2025-03-14	Kartkówka
3235	45	12	3	3.00	2025-05-09	Test
3236	45	12	3	6.00	2025-04-24	Praca domowa
3237	45	12	3	3.00	2025-04-17	Quiz
3238	45	12	3	5.00	2025-05-03	Kartkówka
3239	45	5	9	4.00	2025-06-07	Kartkówka
3240	45	5	9	6.00	2025-04-24	Projekt
3241	45	5	9	5.00	2025-04-21	Aktywność
3242	45	7	14	6.00	2025-04-01	Test
3243	45	7	14	3.00	2025-04-09	Praca domowa
3244	45	7	14	4.00	2025-03-29	Projekt
3245	45	9	14	5.00	2025-04-14	Odpowiedź ustna
3246	45	9	14	4.00	2025-03-12	Prezentacja
3247	45	9	14	5.00	2025-05-23	Projekt
3248	45	9	14	6.00	2025-05-06	Test
3249	45	9	14	4.00	2025-05-17	Aktywność
3250	45	9	14	2.00	2025-03-11	Kartkówka
3251	45	9	14	5.00	2025-04-09	Praca domowa
3252	45	8	3	4.00	2025-03-25	Projekt
3253	45	8	3	5.00	2025-03-24	Projekt
3254	45	8	3	3.00	2025-04-14	Aktywność
3255	46	15	14	5.00	2025-04-14	Kartkówka
3256	46	15	14	6.00	2025-04-08	Projekt
3257	46	15	14	3.00	2025-03-20	Praca domowa
3258	46	15	14	5.00	2025-05-23	Aktywność
3259	46	15	14	5.00	2025-03-30	Praca domowa
3260	46	15	14	5.00	2025-05-03	Test
3261	46	15	14	5.00	2025-05-03	Sprawdzian
3262	46	3	9	4.00	2025-03-29	Odpowiedź ustna
3263	46	3	9	6.00	2025-03-12	Projekt
3264	46	3	9	5.00	2025-05-20	Prezentacja
3265	46	3	9	4.00	2025-04-11	Test
3266	46	12	4	5.00	2025-05-24	Test
3267	46	12	4	4.00	2025-04-14	Test
3268	46	12	4	5.00	2025-03-24	Praca klasowa
3269	46	12	4	5.00	2025-04-10	Prezentacja
3270	46	12	4	3.00	2025-04-23	Sprawdzian
3271	46	12	4	3.00	2025-03-28	Sprawdzian
3272	46	12	4	5.00	2025-05-17	Kartkówka
3273	46	12	4	5.00	2025-06-01	Praca domowa
3274	46	14	4	5.00	2025-04-06	Quiz
3275	46	14	4	5.00	2025-05-07	Praca domowa
3276	46	14	4	5.00	2025-04-19	Quiz
3277	46	14	4	5.00	2025-06-01	Test
3278	46	14	4	2.00	2025-04-24	Sprawdzian
3279	46	14	4	4.00	2025-04-05	Praca klasowa
3280	46	14	4	6.00	2025-03-31	Projekt
3281	46	14	13	6.00	2025-03-31	Praca klasowa
3282	46	14	13	6.00	2025-04-16	Sprawdzian
3283	46	14	13	4.00	2025-05-14	Sprawdzian
3284	46	14	13	3.00	2025-04-01	Projekt
3285	46	8	13	5.00	2025-05-25	Odpowiedź ustna
3286	46	8	13	4.00	2025-06-02	Prezentacja
3287	46	8	13	4.00	2025-06-05	Quiz
3288	46	8	13	5.00	2025-05-26	Projekt
3289	46	8	13	6.00	2025-04-25	Praca klasowa
3290	46	8	13	5.00	2025-04-02	Sprawdzian
3291	46	12	3	5.00	2025-04-27	Praca klasowa
3292	46	12	3	6.00	2025-05-01	Projekt
3293	46	12	3	4.00	2025-05-31	Test
3294	46	12	3	6.00	2025-04-16	Aktywność
3295	46	12	3	1.00	2025-06-03	Kartkówka
3296	46	12	3	4.00	2025-04-05	Projekt
3297	46	5	9	4.00	2025-05-11	Praca klasowa
3298	46	5	9	6.00	2025-03-30	Test
3299	46	5	9	6.00	2025-04-27	Praca domowa
3300	46	5	9	2.00	2025-05-12	Sprawdzian
3301	46	7	14	2.00	2025-05-09	Projekt
3302	46	7	14	5.00	2025-03-17	Test
3303	46	7	14	5.00	2025-04-15	Prezentacja
3304	46	7	14	3.00	2025-04-17	Quiz
3305	46	7	14	3.00	2025-05-03	Test
3306	46	7	14	5.00	2025-03-14	Kartkówka
3307	46	7	14	3.00	2025-05-17	Projekt
3308	46	7	14	5.00	2025-05-19	Quiz
3309	46	9	14	4.00	2025-03-15	Sprawdzian
3310	46	9	14	6.00	2025-04-03	Aktywność
3311	46	9	14	6.00	2025-04-29	Odpowiedź ustna
3312	46	8	3	3.00	2025-05-09	Praca domowa
3313	46	8	3	5.00	2025-05-18	Prezentacja
3314	46	8	3	5.00	2025-04-28	Odpowiedź ustna
3315	46	8	3	5.00	2025-05-27	Quiz
3316	46	8	3	4.00	2025-05-26	Praca klasowa
3317	50	15	14	6.00	2025-06-07	Projekt
3318	50	15	14	5.00	2025-04-21	Test
3319	50	15	14	2.00	2025-04-08	Praca klasowa
3320	50	15	14	3.00	2025-03-15	Praca klasowa
3321	50	15	14	4.00	2025-05-30	Aktywność
3322	50	15	14	3.00	2025-05-16	Aktywność
3323	50	15	14	3.00	2025-05-13	Praca klasowa
3324	50	3	9	3.00	2025-06-07	Kartkówka
3325	50	3	9	1.00	2025-03-20	Praca domowa
3326	50	3	9	3.00	2025-04-17	Projekt
3327	50	3	9	4.00	2025-04-09	Praca domowa
3328	50	3	9	5.00	2025-03-25	Prezentacja
3329	50	3	9	6.00	2025-05-24	Quiz
3330	50	3	9	4.00	2025-05-27	Test
3331	50	3	9	5.00	2025-04-21	Praca klasowa
3332	50	12	4	6.00	2025-05-13	Praca klasowa
3333	50	12	4	5.00	2025-04-07	Quiz
3334	50	12	4	4.00	2025-06-03	Projekt
3335	50	12	4	6.00	2025-04-12	Kartkówka
3336	50	12	4	6.00	2025-05-03	Projekt
3337	50	12	4	4.00	2025-05-19	Projekt
3338	50	12	4	5.00	2025-05-21	Sprawdzian
3339	50	14	4	6.00	2025-04-17	Odpowiedź ustna
3340	50	14	4	5.00	2025-04-24	Aktywność
3341	50	14	4	4.00	2025-04-23	Test
3342	50	14	4	2.00	2025-06-06	Sprawdzian
3343	50	14	4	4.00	2025-05-04	Aktywność
3344	50	14	4	3.00	2025-04-05	Praca domowa
3345	50	14	13	1.00	2025-05-15	Praca domowa
3346	50	14	13	4.00	2025-03-18	Projekt
3347	50	14	13	6.00	2025-04-28	Sprawdzian
3348	50	14	13	5.00	2025-05-22	Odpowiedź ustna
3349	50	8	13	5.00	2025-05-04	Praca domowa
3350	50	8	13	6.00	2025-06-01	Kartkówka
3351	50	8	13	6.00	2025-04-10	Prezentacja
3352	50	8	13	6.00	2025-04-26	Test
3353	50	12	3	4.00	2025-04-30	Kartkówka
3354	50	12	3	3.00	2025-04-08	Sprawdzian
3355	50	12	3	4.00	2025-05-02	Odpowiedź ustna
3356	50	12	3	3.00	2025-04-30	Kartkówka
3357	50	5	9	4.00	2025-04-03	Projekt
3358	50	5	9	4.00	2025-04-18	Prezentacja
3359	50	5	9	6.00	2025-03-18	Test
3360	50	7	14	5.00	2025-05-15	Odpowiedź ustna
3361	50	7	14	3.00	2025-04-29	Prezentacja
3362	50	7	14	4.00	2025-05-29	Projekt
3363	50	7	14	6.00	2025-03-28	Prezentacja
3364	50	7	14	4.00	2025-05-08	Praca domowa
3365	50	9	14	4.00	2025-03-12	Praca domowa
3366	50	9	14	4.00	2025-05-14	Praca klasowa
3367	50	9	14	5.00	2025-05-13	Sprawdzian
3368	50	9	14	5.00	2025-04-04	Kartkówka
3369	50	9	14	4.00	2025-03-21	Praca klasowa
3370	50	9	14	5.00	2025-05-21	Praca domowa
3371	50	9	14	2.00	2025-04-18	Kartkówka
3372	50	9	14	6.00	2025-04-10	Praca klasowa
3373	50	8	3	4.00	2025-04-29	Aktywność
3374	50	8	3	6.00	2025-05-09	Praca klasowa
3375	50	8	3	5.00	2025-05-04	Test
3376	50	8	3	5.00	2025-03-31	Praca domowa
3377	50	8	3	1.00	2025-04-20	Odpowiedź ustna
3378	50	8	3	4.00	2025-05-04	Quiz
3379	50	8	3	5.00	2025-03-18	Odpowiedź ustna
3380	50	8	3	3.00	2025-03-24	Projekt
3381	51	15	14	5.00	2025-06-03	Projekt
3382	51	15	14	4.00	2025-06-06	Praca klasowa
3383	51	15	14	4.00	2025-05-22	Odpowiedź ustna
3384	51	15	14	3.00	2025-04-28	Kartkówka
3385	51	15	14	4.00	2025-04-09	Kartkówka
3386	51	15	14	5.00	2025-06-02	Aktywność
3387	51	3	9	3.00	2025-04-07	Quiz
3388	51	3	9	5.00	2025-05-27	Praca klasowa
3389	51	3	9	4.00	2025-04-27	Sprawdzian
3390	51	3	9	6.00	2025-04-23	Quiz
3391	51	3	9	3.00	2025-03-13	Projekt
3392	51	3	9	5.00	2025-03-22	Prezentacja
3393	51	3	9	2.00	2025-05-06	Prezentacja
3394	51	12	4	4.00	2025-04-16	Praca domowa
3395	51	12	4	5.00	2025-05-21	Quiz
3396	51	12	4	5.00	2025-06-02	Projekt
3397	51	12	4	5.00	2025-03-19	Projekt
3398	51	12	4	3.00	2025-05-26	Praca domowa
3399	51	12	4	5.00	2025-03-31	Odpowiedź ustna
3400	51	12	4	1.00	2025-05-28	Praca klasowa
3401	51	14	4	6.00	2025-04-21	Kartkówka
3402	51	14	4	3.00	2025-05-18	Odpowiedź ustna
3403	51	14	4	5.00	2025-04-25	Odpowiedź ustna
3404	51	14	4	5.00	2025-05-28	Test
3405	51	14	4	5.00	2025-05-17	Aktywność
3406	51	14	4	3.00	2025-06-06	Projekt
3407	51	14	4	3.00	2025-04-26	Aktywność
3408	51	14	4	5.00	2025-04-13	Odpowiedź ustna
3409	51	14	13	5.00	2025-05-26	Quiz
3410	51	14	13	1.00	2025-05-13	Sprawdzian
3411	51	14	13	4.00	2025-04-03	Projekt
3412	51	8	13	3.00	2025-03-26	Quiz
3413	51	8	13	5.00	2025-03-15	Kartkówka
3414	51	8	13	5.00	2025-04-14	Kartkówka
3415	51	8	13	4.00	2025-03-12	Quiz
3416	51	8	13	3.00	2025-03-10	Praca klasowa
3417	51	12	3	6.00	2025-04-02	Projekt
3418	51	12	3	6.00	2025-05-07	Quiz
3419	51	12	3	5.00	2025-04-23	Sprawdzian
3420	51	12	3	4.00	2025-03-17	Sprawdzian
3421	51	12	3	4.00	2025-05-18	Test
3422	51	12	3	5.00	2025-04-18	Sprawdzian
3423	51	12	3	5.00	2025-05-15	Odpowiedź ustna
3424	51	12	3	3.00	2025-03-24	Sprawdzian
3425	51	5	9	6.00	2025-04-27	Projekt
3426	51	5	9	6.00	2025-04-20	Kartkówka
3427	51	5	9	5.00	2025-05-07	Prezentacja
3428	51	5	9	3.00	2025-03-26	Quiz
3429	51	5	9	5.00	2025-04-05	Odpowiedź ustna
3430	51	5	9	4.00	2025-05-17	Odpowiedź ustna
3431	51	5	9	4.00	2025-06-04	Projekt
3432	51	5	9	3.00	2025-03-30	Sprawdzian
3433	51	7	14	6.00	2025-03-26	Kartkówka
3434	51	7	14	3.00	2025-03-31	Projekt
3435	51	7	14	5.00	2025-04-27	Prezentacja
3436	51	7	14	6.00	2025-04-26	Praca klasowa
3437	51	7	14	3.00	2025-05-04	Projekt
3438	51	9	14	5.00	2025-04-14	Kartkówka
3439	51	9	14	5.00	2025-05-13	Praca domowa
3440	51	9	14	6.00	2025-03-16	Aktywność
3441	51	9	14	4.00	2025-03-30	Test
3442	51	9	14	4.00	2025-05-02	Test
3443	51	9	14	4.00	2025-04-16	Quiz
3444	51	9	14	5.00	2025-05-07	Aktywność
3445	51	8	3	5.00	2025-03-19	Kartkówka
3446	51	8	3	4.00	2025-05-30	Kartkówka
3447	51	8	3	6.00	2025-03-17	Prezentacja
3448	51	8	3	5.00	2025-04-27	Aktywność
3449	51	8	3	4.00	2025-04-19	Praca domowa
3450	51	8	3	3.00	2025-05-19	Prezentacja
3451	51	8	3	4.00	2025-04-24	Odpowiedź ustna
3452	51	8	3	3.00	2025-04-06	Prezentacja
3453	52	15	14	5.00	2025-04-16	Odpowiedź ustna
3454	52	15	14	4.00	2025-04-02	Odpowiedź ustna
3455	52	15	14	5.00	2025-04-13	Aktywność
3456	52	15	14	5.00	2025-06-01	Kartkówka
3457	52	15	14	4.00	2025-04-01	Praca klasowa
3458	52	15	14	4.00	2025-03-14	Projekt
3459	52	3	9	4.00	2025-05-14	Praca domowa
3460	52	3	9	2.00	2025-04-11	Prezentacja
3461	52	3	9	4.00	2025-04-18	Kartkówka
3462	52	3	9	5.00	2025-05-08	Projekt
3463	52	3	9	2.00	2025-04-13	Praca domowa
3464	52	3	9	5.00	2025-03-27	Kartkówka
3465	52	12	4	5.00	2025-05-11	Praca klasowa
3466	52	12	4	4.00	2025-04-12	Test
3467	52	12	4	6.00	2025-04-30	Aktywność
3468	52	12	4	3.00	2025-04-27	Odpowiedź ustna
3469	52	12	4	4.00	2025-06-01	Test
3470	52	12	4	4.00	2025-03-12	Aktywność
3471	52	14	4	4.00	2025-05-09	Sprawdzian
3472	52	14	4	5.00	2025-04-29	Kartkówka
3473	52	14	4	6.00	2025-04-23	Aktywność
3474	52	14	4	4.00	2025-05-25	Prezentacja
3475	52	14	4	3.00	2025-04-21	Praca klasowa
3476	52	14	13	5.00	2025-03-18	Kartkówka
3477	52	14	13	4.00	2025-04-27	Prezentacja
3478	52	14	13	5.00	2025-03-16	Odpowiedź ustna
3479	52	8	13	4.00	2025-04-23	Quiz
3480	52	8	13	5.00	2025-05-21	Projekt
3481	52	8	13	6.00	2025-05-06	Odpowiedź ustna
3482	52	8	13	2.00	2025-03-30	Test
3483	52	8	13	6.00	2025-05-31	Sprawdzian
3484	52	8	13	6.00	2025-04-10	Praca domowa
3485	52	8	13	6.00	2025-03-23	Prezentacja
3486	52	12	3	5.00	2025-03-14	Sprawdzian
3487	52	12	3	3.00	2025-03-12	Quiz
3488	52	12	3	3.00	2025-05-21	Kartkówka
3489	52	12	3	4.00	2025-03-25	Praca domowa
3490	52	12	3	4.00	2025-05-16	Praca domowa
3491	52	12	3	6.00	2025-03-20	Projekt
3492	52	5	9	6.00	2025-05-02	Test
3493	52	5	9	5.00	2025-05-03	Quiz
3494	52	5	9	4.00	2025-05-04	Prezentacja
3495	52	5	9	5.00	2025-05-20	Aktywność
3496	52	5	9	4.00	2025-05-09	Odpowiedź ustna
3497	52	5	9	5.00	2025-04-09	Praca klasowa
3498	52	7	14	5.00	2025-05-16	Praca klasowa
3499	52	7	14	3.00	2025-04-21	Kartkówka
3500	52	7	14	4.00	2025-05-22	Test
3501	52	7	14	3.00	2025-06-04	Praca domowa
3502	52	7	14	3.00	2025-05-25	Kartkówka
3503	52	9	14	4.00	2025-05-25	Prezentacja
3504	52	9	14	3.00	2025-04-11	Prezentacja
3505	52	9	14	4.00	2025-03-29	Test
3506	52	9	14	5.00	2025-04-29	Praca klasowa
3507	52	9	14	6.00	2025-05-15	Test
3508	52	9	14	2.00	2025-05-15	Projekt
3509	52	9	14	6.00	2025-05-06	Test
3510	52	8	3	5.00	2025-05-14	Projekt
3511	52	8	3	5.00	2025-05-07	Quiz
3512	52	8	3	4.00	2025-03-25	Test
3513	52	8	3	4.00	2025-05-21	Odpowiedź ustna
3514	52	8	3	5.00	2025-04-18	Kartkówka
3515	52	8	3	6.00	2025-06-04	Prezentacja
3516	53	15	14	4.00	2025-05-12	Praca klasowa
3517	53	15	14	4.00	2025-05-25	Test
3518	53	15	14	5.00	2025-04-08	Odpowiedź ustna
3519	53	15	14	4.00	2025-04-03	Praca klasowa
3520	53	15	14	4.00	2025-03-10	Sprawdzian
3521	53	15	14	1.00	2025-05-27	Kartkówka
3522	53	15	14	5.00	2025-04-29	Praca domowa
3523	53	3	9	6.00	2025-04-23	Sprawdzian
3524	53	3	9	3.00	2025-06-03	Test
3525	53	3	9	5.00	2025-05-21	Praca klasowa
3526	53	3	9	5.00	2025-04-13	Projekt
3527	53	12	4	5.00	2025-05-20	Sprawdzian
3528	53	12	4	5.00	2025-04-19	Praca klasowa
3529	53	12	4	5.00	2025-05-31	Quiz
3530	53	12	4	3.00	2025-05-09	Projekt
3531	53	12	4	3.00	2025-05-18	Quiz
3532	53	12	4	3.00	2025-03-11	Quiz
3533	53	12	4	5.00	2025-03-29	Kartkówka
3534	53	14	4	4.00	2025-04-12	Projekt
3535	53	14	4	5.00	2025-03-31	Praca klasowa
3536	53	14	4	6.00	2025-04-01	Kartkówka
3537	53	14	4	5.00	2025-04-24	Test
3538	53	14	4	4.00	2025-05-01	Test
3539	53	14	4	6.00	2025-04-23	Prezentacja
3540	53	14	13	5.00	2025-03-13	Projekt
3541	53	14	13	5.00	2025-04-12	Praca domowa
3542	53	14	13	6.00	2025-05-25	Sprawdzian
3543	53	14	13	4.00	2025-05-01	Praca domowa
3544	53	14	13	5.00	2025-04-29	Praca domowa
3545	53	14	13	5.00	2025-05-16	Praca klasowa
3546	53	14	13	4.00	2025-04-26	Odpowiedź ustna
3547	53	14	13	3.00	2025-04-11	Projekt
3548	53	8	13	4.00	2025-03-21	Praca klasowa
3549	53	8	13	3.00	2025-06-06	Aktywność
3550	53	8	13	4.00	2025-05-05	Aktywność
3551	53	8	13	6.00	2025-05-13	Sprawdzian
3552	53	8	13	5.00	2025-04-10	Praca klasowa
3553	53	12	3	4.00	2025-05-20	Aktywność
3554	53	12	3	3.00	2025-03-28	Sprawdzian
3555	53	12	3	4.00	2025-03-13	Praca domowa
3556	53	12	3	4.00	2025-03-31	Prezentacja
3557	53	5	9	6.00	2025-04-04	Sprawdzian
3558	53	5	9	1.00	2025-03-18	Test
3559	53	5	9	4.00	2025-05-09	Test
3560	53	5	9	4.00	2025-04-01	Kartkówka
3561	53	5	9	4.00	2025-04-02	Projekt
3562	53	7	14	5.00	2025-05-19	Aktywność
3563	53	7	14	6.00	2025-04-08	Aktywność
3564	53	7	14	6.00	2025-03-24	Kartkówka
3565	53	7	14	5.00	2025-04-26	Odpowiedź ustna
3566	53	7	14	6.00	2025-05-12	Aktywność
3567	53	7	14	3.00	2025-05-11	Prezentacja
3568	53	9	14	4.00	2025-03-30	Test
3569	53	9	14	3.00	2025-04-29	Praca klasowa
3570	53	9	14	4.00	2025-05-20	Praca klasowa
3571	53	9	14	3.00	2025-04-21	Projekt
3572	53	9	14	6.00	2025-03-21	Sprawdzian
3573	53	9	14	5.00	2025-04-11	Quiz
3574	53	8	3	5.00	2025-04-24	Kartkówka
3575	53	8	3	4.00	2025-04-21	Projekt
3576	53	8	3	6.00	2025-05-17	Kartkówka
3577	53	8	3	4.00	2025-04-22	Projekt
3578	53	8	3	4.00	2025-04-17	Odpowiedź ustna
3579	53	8	3	4.00	2025-06-06	Prezentacja
3580	53	8	3	3.00	2025-05-30	Aktywność
3581	54	15	14	5.00	2025-04-14	Sprawdzian
3582	54	15	14	4.00	2025-04-05	Prezentacja
3583	54	15	14	6.00	2025-03-16	Praca domowa
3584	54	15	14	4.00	2025-03-15	Sprawdzian
3585	54	15	14	6.00	2025-04-20	Sprawdzian
3586	54	15	14	5.00	2025-04-07	Kartkówka
3587	54	15	14	5.00	2025-05-08	Aktywność
3588	54	15	14	4.00	2025-04-12	Projekt
3589	54	3	9	5.00	2025-03-29	Quiz
3590	54	3	9	3.00	2025-05-20	Projekt
3591	54	3	9	4.00	2025-03-15	Odpowiedź ustna
3592	54	12	4	5.00	2025-03-18	Projekt
3593	54	12	4	3.00	2025-03-22	Praca domowa
3594	54	12	4	6.00	2025-04-17	Odpowiedź ustna
3595	54	12	4	5.00	2025-05-22	Sprawdzian
3596	54	12	4	5.00	2025-04-16	Prezentacja
3597	54	12	4	4.00	2025-04-24	Projekt
3598	54	12	4	3.00	2025-04-10	Kartkówka
3599	54	12	4	6.00	2025-03-12	Projekt
3600	54	14	4	3.00	2025-05-22	Praca domowa
3601	54	14	4	5.00	2025-05-11	Sprawdzian
3602	54	14	4	5.00	2025-03-12	Praca klasowa
3603	54	14	13	5.00	2025-03-20	Quiz
3604	54	14	13	4.00	2025-05-02	Aktywność
3605	54	14	13	5.00	2025-04-28	Aktywność
3606	54	14	13	6.00	2025-04-10	Aktywność
3607	54	14	13	4.00	2025-03-27	Projekt
3608	54	14	13	3.00	2025-04-15	Praca klasowa
3609	54	8	13	5.00	2025-03-21	Praca klasowa
3610	54	8	13	4.00	2025-05-24	Quiz
3611	54	8	13	4.00	2025-03-19	Praca klasowa
3612	54	8	13	5.00	2025-04-02	Praca klasowa
3613	54	12	3	6.00	2025-03-11	Aktywność
3614	54	12	3	4.00	2025-04-15	Praca klasowa
3615	54	12	3	5.00	2025-03-27	Praca domowa
3616	54	12	3	4.00	2025-04-09	Praca klasowa
3617	54	5	9	2.00	2025-04-04	Projekt
3618	54	5	9	5.00	2025-06-04	Odpowiedź ustna
3619	54	5	9	6.00	2025-04-23	Projekt
3620	54	5	9	1.00	2025-06-01	Kartkówka
3621	54	7	14	3.00	2025-05-17	Prezentacja
3622	54	7	14	4.00	2025-05-12	Sprawdzian
3623	54	7	14	5.00	2025-04-26	Aktywność
3624	54	7	14	5.00	2025-05-14	Projekt
3625	54	7	14	6.00	2025-04-02	Test
3626	54	7	14	5.00	2025-06-05	Prezentacja
3627	54	7	14	6.00	2025-04-09	Odpowiedź ustna
3628	54	9	14	6.00	2025-04-03	Aktywność
3629	54	9	14	4.00	2025-06-01	Kartkówka
3630	54	9	14	4.00	2025-03-31	Sprawdzian
3631	54	9	14	6.00	2025-03-11	Quiz
3632	54	9	14	6.00	2025-04-22	Praca domowa
3633	54	9	14	6.00	2025-05-17	Kartkówka
3634	54	9	14	4.00	2025-06-01	Projekt
3635	54	9	14	2.00	2025-05-06	Prezentacja
3636	54	8	3	3.00	2025-05-31	Test
3637	54	8	3	6.00	2025-04-07	Sprawdzian
3638	54	8	3	6.00	2025-05-05	Projekt
3639	54	8	3	4.00	2025-03-30	Projekt
3640	55	15	14	5.00	2025-05-11	Projekt
3641	55	15	14	4.00	2025-05-02	Sprawdzian
3642	55	15	14	4.00	2025-04-13	Aktywność
3643	55	3	9	2.00	2025-04-27	Praca domowa
3644	55	3	9	4.00	2025-04-30	Sprawdzian
3645	55	3	9	4.00	2025-05-18	Quiz
3646	55	3	9	5.00	2025-05-11	Prezentacja
3647	55	12	4	6.00	2025-03-27	Praca klasowa
3648	55	12	4	6.00	2025-05-08	Sprawdzian
3649	55	12	4	4.00	2025-04-20	Odpowiedź ustna
3650	55	12	4	6.00	2025-05-01	Praca klasowa
3651	55	12	4	5.00	2025-05-25	Test
3652	55	12	4	6.00	2025-05-02	Prezentacja
3653	55	14	4	6.00	2025-04-21	Kartkówka
3654	55	14	4	5.00	2025-03-20	Praca klasowa
3655	55	14	4	3.00	2025-03-16	Projekt
3656	55	14	4	5.00	2025-03-12	Projekt
3657	55	14	4	5.00	2025-03-19	Praca klasowa
3658	55	14	4	6.00	2025-06-02	Quiz
3659	55	14	4	4.00	2025-05-17	Aktywność
3660	55	14	13	4.00	2025-05-27	Sprawdzian
3661	55	14	13	5.00	2025-04-30	Projekt
3662	55	14	13	6.00	2025-04-06	Odpowiedź ustna
3663	55	8	13	5.00	2025-04-26	Praca domowa
3664	55	8	13	5.00	2025-06-04	Test
3665	55	8	13	5.00	2025-05-16	Test
3666	55	12	3	5.00	2025-05-10	Odpowiedź ustna
3667	55	12	3	2.00	2025-04-13	Odpowiedź ustna
3668	55	12	3	5.00	2025-05-07	Praca domowa
3669	55	12	3	6.00	2025-03-30	Sprawdzian
3670	55	12	3	6.00	2025-05-28	Quiz
3671	55	5	9	5.00	2025-04-07	Praca klasowa
3672	55	5	9	4.00	2025-04-08	Praca domowa
3673	55	5	9	4.00	2025-03-13	Praca klasowa
3674	55	5	9	5.00	2025-04-24	Praca klasowa
3675	55	5	9	5.00	2025-05-14	Praca klasowa
3676	55	5	9	2.00	2025-05-21	Quiz
3677	55	5	9	5.00	2025-04-14	Projekt
3678	55	7	14	6.00	2025-04-08	Aktywność
3679	55	7	14	4.00	2025-03-11	Praca klasowa
3680	55	7	14	5.00	2025-03-12	Kartkówka
3681	55	7	14	4.00	2025-04-30	Quiz
3682	55	7	14	3.00	2025-03-30	Prezentacja
3683	55	7	14	6.00	2025-04-02	Praca domowa
3684	55	7	14	6.00	2025-04-08	Quiz
3685	55	7	14	4.00	2025-04-25	Odpowiedź ustna
3686	55	9	14	3.00	2025-05-26	Praca klasowa
3687	55	9	14	3.00	2025-05-19	Prezentacja
3688	55	9	14	4.00	2025-03-16	Praca klasowa
3689	55	9	14	4.00	2025-05-25	Projekt
3690	55	8	3	3.00	2025-04-27	Test
3691	55	8	3	6.00	2025-04-10	Aktywność
3692	55	8	3	4.00	2025-03-27	Test
3693	56	15	14	5.00	2025-05-12	Sprawdzian
3694	56	15	14	3.00	2025-04-14	Sprawdzian
3695	56	15	14	6.00	2025-05-16	Test
3696	56	3	9	1.00	2025-06-02	Kartkówka
3697	56	3	9	5.00	2025-04-11	Praca domowa
3698	56	3	9	5.00	2025-05-19	Projekt
3699	56	3	9	5.00	2025-04-18	Sprawdzian
3700	56	3	9	4.00	2025-03-18	Praca domowa
3701	56	3	9	5.00	2025-04-15	Sprawdzian
3702	56	3	9	3.00	2025-05-11	Aktywność
3703	56	12	4	3.00	2025-03-23	Projekt
3704	56	12	4	6.00	2025-03-12	Praca domowa
3705	56	12	4	6.00	2025-05-16	Projekt
3706	56	12	4	4.00	2025-04-26	Kartkówka
3707	56	14	4	4.00	2025-03-18	Sprawdzian
3708	56	14	4	6.00	2025-03-14	Praca domowa
3709	56	14	4	4.00	2025-04-12	Kartkówka
3710	56	14	4	6.00	2025-05-26	Kartkówka
3711	56	14	4	5.00	2025-03-15	Projekt
3712	56	14	4	5.00	2025-03-31	Praca klasowa
3713	56	14	4	4.00	2025-03-10	Quiz
3714	56	14	4	6.00	2025-04-03	Praca klasowa
3715	56	14	13	6.00	2025-05-11	Odpowiedź ustna
3716	56	14	13	4.00	2025-05-17	Prezentacja
3717	56	14	13	6.00	2025-05-27	Kartkówka
3718	56	14	13	3.00	2025-03-10	Sprawdzian
3719	56	14	13	4.00	2025-03-24	Praca domowa
3720	56	14	13	6.00	2025-05-26	Projekt
3721	56	14	13	4.00	2025-05-25	Kartkówka
3722	56	14	13	5.00	2025-03-30	Sprawdzian
3723	56	8	13	6.00	2025-05-16	Projekt
3724	56	8	13	5.00	2025-03-30	Projekt
3725	56	8	13	3.00	2025-04-09	Projekt
3726	56	8	13	6.00	2025-03-17	Sprawdzian
3727	56	8	13	6.00	2025-04-21	Kartkówka
3728	56	8	13	5.00	2025-03-31	Projekt
3729	56	12	3	6.00	2025-05-07	Quiz
3730	56	12	3	4.00	2025-06-01	Praca klasowa
3731	56	12	3	6.00	2025-05-15	Sprawdzian
3732	56	12	3	4.00	2025-03-21	Praca domowa
3733	56	12	3	3.00	2025-05-27	Aktywność
3734	56	5	9	4.00	2025-04-15	Quiz
3735	56	5	9	3.00	2025-03-24	Projekt
3736	56	5	9	1.00	2025-05-02	Kartkówka
3737	56	7	14	5.00	2025-03-31	Test
3738	56	7	14	5.00	2025-03-14	Test
3739	56	7	14	4.00	2025-04-25	Kartkówka
3740	56	7	14	5.00	2025-05-19	Prezentacja
3741	56	7	14	3.00	2025-03-22	Aktywność
3742	56	7	14	2.00	2025-04-13	Praca klasowa
3743	56	7	14	4.00	2025-04-24	Praca domowa
3744	56	7	14	4.00	2025-05-18	Projekt
3745	56	9	14	5.00	2025-06-05	Odpowiedź ustna
3746	56	9	14	6.00	2025-05-27	Projekt
3747	56	9	14	5.00	2025-05-11	Sprawdzian
3748	56	9	14	5.00	2025-04-12	Sprawdzian
3749	56	9	14	5.00	2025-04-23	Quiz
3750	56	9	14	3.00	2025-04-09	Praca domowa
3751	56	9	14	3.00	2025-05-20	Aktywność
3752	56	8	3	4.00	2025-06-05	Prezentacja
3753	56	8	3	5.00	2025-05-09	Aktywność
3754	56	8	3	6.00	2025-04-02	Praca klasowa
3755	57	15	14	5.00	2025-06-04	Odpowiedź ustna
3756	57	15	14	5.00	2025-05-24	Sprawdzian
3757	57	15	14	5.00	2025-04-11	Kartkówka
3758	57	15	14	5.00	2025-05-21	Sprawdzian
3759	57	3	9	4.00	2025-04-13	Praca domowa
3760	57	3	9	4.00	2025-04-22	Praca klasowa
3761	57	3	9	6.00	2025-05-23	Prezentacja
3762	57	3	9	6.00	2025-03-23	Aktywność
3763	57	3	9	1.00	2025-05-14	Projekt
3764	57	3	9	6.00	2025-05-15	Sprawdzian
3765	57	12	4	2.00	2025-04-21	Test
3766	57	12	4	4.00	2025-03-18	Prezentacja
3767	57	12	4	3.00	2025-03-10	Kartkówka
3768	57	12	4	5.00	2025-04-22	Praca klasowa
3769	57	12	4	6.00	2025-06-01	Projekt
3770	57	12	4	6.00	2025-03-30	Praca klasowa
3771	57	12	4	4.00	2025-05-25	Odpowiedź ustna
3772	57	12	4	6.00	2025-04-22	Praca domowa
3773	57	14	4	6.00	2025-05-23	Sprawdzian
3774	57	14	4	5.00	2025-05-11	Prezentacja
3775	57	14	4	3.00	2025-04-06	Prezentacja
3776	57	14	4	5.00	2025-04-30	Odpowiedź ustna
3777	57	14	13	4.00	2025-03-26	Sprawdzian
3778	57	14	13	6.00	2025-03-24	Sprawdzian
3779	57	14	13	6.00	2025-03-11	Prezentacja
3780	57	14	13	4.00	2025-04-12	Aktywność
3781	57	8	13	4.00	2025-05-03	Prezentacja
3782	57	8	13	5.00	2025-04-27	Prezentacja
3783	57	8	13	4.00	2025-04-21	Kartkówka
3784	57	8	13	2.00	2025-05-10	Quiz
3785	57	8	13	5.00	2025-04-02	Aktywność
3786	57	8	13	5.00	2025-05-23	Test
3787	57	12	3	6.00	2025-04-02	Quiz
3788	57	12	3	2.00	2025-04-05	Projekt
3789	57	12	3	3.00	2025-04-26	Sprawdzian
3790	57	12	3	4.00	2025-05-30	Praca domowa
3791	57	12	3	5.00	2025-04-19	Prezentacja
3792	57	12	3	4.00	2025-04-14	Praca domowa
3793	57	5	9	2.00	2025-06-05	Kartkówka
3794	57	5	9	5.00	2025-05-30	Sprawdzian
3795	57	5	9	6.00	2025-03-19	Quiz
3796	57	5	9	5.00	2025-04-16	Praca domowa
3797	57	5	9	5.00	2025-05-26	Kartkówka
3798	57	5	9	6.00	2025-04-16	Kartkówka
3799	57	5	9	5.00	2025-06-05	Aktywność
3800	57	5	9	5.00	2025-03-17	Projekt
3801	57	7	14	4.00	2025-03-25	Quiz
3802	57	7	14	6.00	2025-06-07	Kartkówka
3803	57	7	14	5.00	2025-04-20	Praca klasowa
3804	57	7	14	2.00	2025-03-11	Odpowiedź ustna
3805	57	7	14	4.00	2025-04-22	Praca domowa
3806	57	9	14	5.00	2025-05-01	Projekt
3807	57	9	14	6.00	2025-04-18	Praca domowa
3808	57	9	14	3.00	2025-04-04	Praca klasowa
3809	57	9	14	6.00	2025-05-30	Odpowiedź ustna
3810	57	8	3	5.00	2025-05-07	Projekt
3811	57	8	3	5.00	2025-05-17	Test
3812	57	8	3	6.00	2025-05-26	Quiz
3813	57	8	3	5.00	2025-03-25	Praca klasowa
3814	57	8	3	4.00	2025-05-06	Projekt
3815	57	8	3	4.00	2025-04-20	Kartkówka
3816	57	8	3	4.00	2025-05-10	Aktywność
3817	57	8	3	4.00	2025-04-05	Odpowiedź ustna
3818	58	15	14	3.00	2025-06-01	Prezentacja
3819	58	15	14	5.00	2025-03-31	Quiz
3820	58	15	14	5.00	2025-04-23	Kartkówka
3821	58	3	9	5.00	2025-04-13	Test
3822	58	3	9	5.00	2025-04-19	Sprawdzian
3823	58	3	9	3.00	2025-06-07	Praca domowa
3824	58	12	4	4.00	2025-05-12	Praca klasowa
3825	58	12	4	4.00	2025-05-01	Aktywność
3826	58	12	4	6.00	2025-04-26	Prezentacja
3827	58	12	4	5.00	2025-04-28	Odpowiedź ustna
3828	58	12	4	6.00	2025-05-06	Aktywność
3829	58	12	4	6.00	2025-03-26	Test
3830	58	14	4	3.00	2025-05-12	Quiz
3831	58	14	4	5.00	2025-04-30	Odpowiedź ustna
3832	58	14	4	6.00	2025-03-21	Kartkówka
3833	58	14	4	5.00	2025-05-19	Test
3834	58	14	4	6.00	2025-05-27	Sprawdzian
3835	58	14	13	6.00	2025-04-28	Sprawdzian
3836	58	14	13	4.00	2025-04-03	Sprawdzian
3837	58	14	13	5.00	2025-06-04	Aktywność
3838	58	14	13	5.00	2025-03-27	Aktywność
3839	58	14	13	5.00	2025-05-10	Projekt
3840	58	14	13	5.00	2025-04-12	Odpowiedź ustna
3841	58	14	13	4.00	2025-03-13	Aktywność
3842	58	14	13	3.00	2025-05-05	Praca klasowa
3843	58	8	13	4.00	2025-06-07	Odpowiedź ustna
3844	58	8	13	5.00	2025-04-07	Kartkówka
3845	58	8	13	6.00	2025-04-17	Aktywność
3846	58	8	13	3.00	2025-03-22	Praca domowa
3847	58	12	3	6.00	2025-06-02	Odpowiedź ustna
3848	58	12	3	3.00	2025-05-23	Test
3849	58	12	3	3.00	2025-05-03	Test
3850	58	12	3	3.00	2025-04-08	Projekt
3851	58	5	9	4.00	2025-03-21	Praca klasowa
3852	58	5	9	5.00	2025-04-09	Sprawdzian
3853	58	5	9	6.00	2025-04-28	Praca klasowa
3854	58	5	9	5.00	2025-05-08	Test
3855	58	5	9	4.00	2025-03-10	Kartkówka
3856	58	7	14	4.00	2025-04-27	Praca domowa
3857	58	7	14	5.00	2025-04-20	Prezentacja
3858	58	7	14	5.00	2025-05-11	Prezentacja
3859	58	7	14	5.00	2025-05-10	Odpowiedź ustna
3860	58	7	14	4.00	2025-05-05	Aktywność
3861	58	7	14	6.00	2025-04-25	Aktywność
3862	58	7	14	3.00	2025-04-30	Praca klasowa
3863	58	7	14	5.00	2025-06-02	Aktywność
3864	58	9	14	5.00	2025-06-04	Praca domowa
3865	58	9	14	5.00	2025-03-20	Projekt
3866	58	9	14	6.00	2025-05-24	Praca klasowa
3867	58	9	14	6.00	2025-05-07	Test
3868	58	8	3	4.00	2025-05-19	Praca domowa
3869	58	8	3	3.00	2025-05-21	Prezentacja
3870	58	8	3	4.00	2025-06-06	Aktywność
3871	58	8	3	5.00	2025-05-18	Praca klasowa
3872	58	8	3	4.00	2025-05-08	Praca domowa
3873	58	8	3	3.00	2025-04-14	Kartkówka
3874	58	8	3	6.00	2025-04-14	Projekt
3875	59	15	14	3.00	2025-05-31	Kartkówka
3876	59	15	14	6.00	2025-04-06	Praca domowa
3877	59	15	14	4.00	2025-04-15	Praca domowa
3878	59	15	14	3.00	2025-05-15	Quiz
3879	59	15	14	4.00	2025-06-03	Praca klasowa
3880	59	15	14	5.00	2025-05-13	Odpowiedź ustna
3881	59	3	9	3.00	2025-06-03	Praca klasowa
3882	59	3	9	3.00	2025-05-17	Praca domowa
3883	59	3	9	6.00	2025-05-20	Sprawdzian
3884	59	3	9	5.00	2025-04-13	Quiz
3885	59	3	9	3.00	2025-04-25	Praca klasowa
3886	59	3	9	5.00	2025-03-19	Sprawdzian
3887	59	3	9	6.00	2025-03-29	Prezentacja
3888	59	3	9	5.00	2025-05-28	Praca domowa
3889	59	12	4	5.00	2025-03-23	Prezentacja
3890	59	12	4	6.00	2025-04-14	Prezentacja
3891	59	12	4	4.00	2025-06-03	Quiz
3892	59	12	4	4.00	2025-05-23	Praca klasowa
3893	59	12	4	3.00	2025-04-30	Odpowiedź ustna
3894	59	14	4	4.00	2025-03-11	Odpowiedź ustna
3895	59	14	4	6.00	2025-03-10	Quiz
3896	59	14	4	4.00	2025-05-15	Praca klasowa
3897	59	14	4	5.00	2025-04-28	Praca domowa
3898	59	14	4	6.00	2025-04-20	Prezentacja
3899	59	14	4	6.00	2025-04-29	Praca domowa
3900	59	14	13	5.00	2025-04-08	Sprawdzian
3901	59	14	13	4.00	2025-05-01	Sprawdzian
3902	59	14	13	4.00	2025-03-25	Odpowiedź ustna
3903	59	8	13	3.00	2025-04-23	Projekt
3904	59	8	13	6.00	2025-04-30	Quiz
3905	59	8	13	2.00	2025-06-04	Praca domowa
3906	59	8	13	2.00	2025-04-14	Sprawdzian
3907	59	8	13	4.00	2025-03-12	Aktywność
3908	59	8	13	5.00	2025-05-22	Test
3909	59	8	13	5.00	2025-06-07	Aktywność
3910	59	8	13	5.00	2025-05-28	Praca domowa
3911	59	12	3	3.00	2025-03-15	Prezentacja
3912	59	12	3	6.00	2025-04-17	Kartkówka
3913	59	12	3	6.00	2025-03-17	Odpowiedź ustna
3914	59	12	3	5.00	2025-05-11	Projekt
3915	59	12	3	5.00	2025-03-14	Sprawdzian
3916	59	12	3	1.00	2025-04-08	Kartkówka
3917	59	12	3	6.00	2025-03-21	Sprawdzian
3918	59	12	3	4.00	2025-05-23	Sprawdzian
3919	59	5	9	1.00	2025-04-26	Praca domowa
3920	59	5	9	4.00	2025-05-16	Prezentacja
3921	59	5	9	5.00	2025-04-04	Aktywność
3922	59	7	14	3.00	2025-04-12	Odpowiedź ustna
3923	59	7	14	5.00	2025-03-20	Praca domowa
3924	59	7	14	5.00	2025-04-17	Prezentacja
3925	59	9	14	4.00	2025-04-29	Praca domowa
3926	59	9	14	5.00	2025-03-30	Quiz
3927	59	9	14	3.00	2025-05-26	Praca domowa
3928	59	9	14	6.00	2025-04-12	Sprawdzian
3929	59	9	14	2.00	2025-03-14	Sprawdzian
3930	59	8	3	5.00	2025-04-12	Quiz
3931	59	8	3	5.00	2025-05-17	Odpowiedź ustna
3932	59	8	3	6.00	2025-05-18	Projekt
3933	60	15	14	3.00	2025-04-22	Projekt
3934	60	15	14	4.00	2025-04-13	Prezentacja
3935	60	15	14	4.00	2025-04-23	Kartkówka
3936	60	15	14	5.00	2025-03-30	Praca domowa
3937	60	15	14	4.00	2025-06-03	Praca klasowa
3938	60	15	14	3.00	2025-03-29	Sprawdzian
3939	60	15	14	3.00	2025-06-03	Sprawdzian
3940	60	15	14	5.00	2025-03-31	Odpowiedź ustna
3941	60	3	9	4.00	2025-05-08	Praca klasowa
3942	60	3	9	6.00	2025-05-08	Praca domowa
3943	60	3	9	5.00	2025-05-09	Sprawdzian
3944	60	3	9	5.00	2025-05-31	Kartkówka
3945	60	3	9	5.00	2025-06-07	Quiz
3946	60	3	9	5.00	2025-03-17	Quiz
3947	60	12	4	5.00	2025-05-30	Praca domowa
3948	60	12	4	5.00	2025-05-18	Quiz
3949	60	12	4	5.00	2025-06-06	Odpowiedź ustna
3950	60	12	4	4.00	2025-04-04	Kartkówka
3951	60	12	4	3.00	2025-03-24	Sprawdzian
3952	60	14	4	6.00	2025-04-01	Kartkówka
3953	60	14	4	6.00	2025-05-20	Kartkówka
3954	60	14	4	4.00	2025-05-22	Odpowiedź ustna
3955	60	14	4	5.00	2025-05-20	Test
3956	60	14	4	5.00	2025-05-06	Sprawdzian
3957	60	14	4	5.00	2025-05-21	Praca domowa
3958	60	14	4	5.00	2025-04-23	Praca domowa
3959	60	14	4	3.00	2025-04-08	Projekt
3960	60	14	13	5.00	2025-03-28	Sprawdzian
3961	60	14	13	3.00	2025-04-21	Praca domowa
3962	60	14	13	6.00	2025-04-05	Praca klasowa
3963	60	14	13	4.00	2025-04-21	Prezentacja
3964	60	14	13	3.00	2025-04-14	Test
3965	60	14	13	4.00	2025-04-04	Test
3966	60	8	13	6.00	2025-03-29	Praca klasowa
3967	60	8	13	6.00	2025-03-22	Kartkówka
3968	60	8	13	5.00	2025-03-15	Praca domowa
3969	60	8	13	2.00	2025-05-26	Praca domowa
3970	60	8	13	5.00	2025-05-04	Sprawdzian
3971	60	8	13	5.00	2025-04-09	Kartkówka
3972	60	8	13	6.00	2025-03-19	Sprawdzian
3973	60	8	13	3.00	2025-03-28	Test
3974	60	12	3	5.00	2025-03-14	Quiz
3975	60	12	3	6.00	2025-03-21	Kartkówka
3976	60	12	3	5.00	2025-03-22	Aktywność
3977	60	5	9	3.00	2025-03-13	Odpowiedź ustna
3978	60	5	9	4.00	2025-05-29	Projekt
3979	60	5	9	4.00	2025-03-16	Praca klasowa
3980	60	7	14	5.00	2025-03-22	Praca domowa
3981	60	7	14	6.00	2025-06-05	Aktywność
3982	60	7	14	5.00	2025-05-01	Odpowiedź ustna
3983	60	7	14	5.00	2025-04-28	Kartkówka
3984	60	7	14	3.00	2025-03-31	Praca domowa
3985	60	7	14	4.00	2025-04-21	Aktywność
3986	60	9	14	5.00	2025-04-10	Aktywność
3987	60	9	14	4.00	2025-03-12	Projekt
3988	60	9	14	2.00	2025-04-20	Aktywność
3989	60	9	14	4.00	2025-04-24	Praca klasowa
3990	60	9	14	4.00	2025-05-24	Kartkówka
3991	60	9	14	1.00	2025-04-17	Aktywność
3992	60	9	14	6.00	2025-05-22	Praca domowa
3993	60	8	3	3.00	2025-03-26	Prezentacja
3994	60	8	3	3.00	2025-06-04	Prezentacja
3995	60	8	3	4.00	2025-04-19	Kartkówka
3996	60	8	3	3.00	2025-04-25	Projekt
3997	60	8	3	5.00	2025-04-18	Aktywność
3998	60	8	3	5.00	2025-05-12	Test
3999	60	8	3	2.00	2025-05-15	Prezentacja
4000	61	5	1	6.00	2025-05-15	Aktywność
4001	61	5	1	4.00	2025-04-17	Aktywność
4002	61	5	1	6.00	2025-03-28	Quiz
4003	61	5	1	4.00	2025-05-27	Sprawdzian
4004	61	5	1	2.00	2025-03-28	Praca domowa
4005	61	5	1	5.00	2025-04-29	Quiz
4006	61	12	4	3.00	2025-04-04	Kartkówka
4007	61	12	4	6.00	2025-03-24	Quiz
4008	61	12	4	6.00	2025-05-27	Projekt
4009	61	12	4	3.00	2025-05-17	Praca klasowa
4010	61	12	4	6.00	2025-05-24	Test
4011	61	12	4	2.00	2025-04-13	Quiz
4012	61	12	4	3.00	2025-04-12	Sprawdzian
4013	61	12	4	2.00	2025-03-31	Praca domowa
4014	61	7	10	2.00	2025-05-10	Test
4015	61	7	10	4.00	2025-04-25	Projekt
4016	61	7	10	6.00	2025-05-08	Kartkówka
4017	61	7	10	5.00	2025-03-30	Sprawdzian
4018	61	14	4	6.00	2025-04-22	Sprawdzian
4019	61	14	4	5.00	2025-04-01	Odpowiedź ustna
4020	61	14	4	4.00	2025-05-16	Quiz
4021	61	4	1	5.00	2025-04-12	Projekt
4022	61	4	1	6.00	2025-05-09	Test
4023	61	4	1	3.00	2025-04-02	Quiz
4024	61	3	10	5.00	2025-03-31	Kartkówka
4025	61	3	10	5.00	2025-04-21	Kartkówka
4026	61	3	10	5.00	2025-05-24	Quiz
4027	61	3	10	5.00	2025-06-01	Sprawdzian
4028	61	7	15	6.00	2025-03-11	Odpowiedź ustna
4029	61	7	15	5.00	2025-04-07	Praca domowa
4030	61	7	15	5.00	2025-05-05	Projekt
4031	61	7	15	5.00	2025-03-18	Odpowiedź ustna
4032	61	7	15	6.00	2025-04-01	Test
4033	61	7	15	5.00	2025-04-15	Aktywność
4034	61	10	8	6.00	2025-03-24	Odpowiedź ustna
4035	61	10	8	4.00	2025-03-16	Odpowiedź ustna
4036	61	10	8	3.00	2025-03-29	Quiz
4037	61	10	8	6.00	2025-05-07	Prezentacja
4038	61	10	8	5.00	2025-05-09	Odpowiedź ustna
4039	61	14	15	6.00	2025-03-16	Aktywność
4040	61	14	15	4.00	2025-04-14	Sprawdzian
4041	61	14	15	6.00	2025-03-12	Prezentacja
4042	61	14	15	4.00	2025-03-27	Quiz
4043	61	14	15	5.00	2025-04-13	Odpowiedź ustna
4044	62	5	1	3.00	2025-05-17	Sprawdzian
4045	62	5	1	5.00	2025-03-23	Sprawdzian
4046	62	5	1	4.00	2025-05-07	Test
4047	62	5	1	4.00	2025-04-06	Odpowiedź ustna
4048	62	5	1	5.00	2025-05-07	Test
4049	62	12	4	4.00	2025-05-19	Odpowiedź ustna
4050	62	12	4	5.00	2025-04-23	Test
4051	62	12	4	5.00	2025-04-08	Odpowiedź ustna
4052	62	7	10	6.00	2025-03-19	Projekt
4053	62	7	10	5.00	2025-04-26	Kartkówka
4054	62	7	10	2.00	2025-04-11	Prezentacja
4055	62	7	10	3.00	2025-05-27	Praca klasowa
4056	62	7	10	5.00	2025-03-18	Kartkówka
4057	62	7	10	4.00	2025-06-07	Praca domowa
4058	62	7	10	5.00	2025-04-12	Praca klasowa
4059	62	7	10	5.00	2025-05-19	Projekt
4060	62	14	4	3.00	2025-04-30	Odpowiedź ustna
4061	62	14	4	5.00	2025-04-25	Prezentacja
4062	62	14	4	5.00	2025-04-28	Odpowiedź ustna
4063	62	14	4	6.00	2025-04-17	Praca klasowa
4064	62	14	4	3.00	2025-03-27	Test
4065	62	14	4	4.00	2025-03-16	Aktywność
4066	62	4	1	4.00	2025-03-20	Kartkówka
4067	62	4	1	3.00	2025-04-29	Odpowiedź ustna
4068	62	4	1	4.00	2025-03-11	Quiz
4069	62	4	1	3.00	2025-04-01	Kartkówka
4070	62	4	1	5.00	2025-06-03	Prezentacja
4071	62	4	1	4.00	2025-04-27	Projekt
4072	62	4	1	5.00	2025-05-30	Test
4073	62	4	1	5.00	2025-05-26	Aktywność
4074	62	3	10	2.00	2025-03-12	Odpowiedź ustna
4075	62	3	10	3.00	2025-05-21	Prezentacja
4076	62	3	10	2.00	2025-05-03	Odpowiedź ustna
4077	62	3	10	5.00	2025-04-18	Odpowiedź ustna
4078	62	3	10	4.00	2025-05-24	Aktywność
4079	62	3	10	6.00	2025-03-20	Prezentacja
4080	62	7	15	6.00	2025-04-07	Kartkówka
4081	62	7	15	6.00	2025-05-06	Quiz
4082	62	7	15	4.00	2025-04-05	Aktywność
4083	62	7	15	5.00	2025-05-22	Aktywność
4084	62	7	15	4.00	2025-03-25	Odpowiedź ustna
4085	62	7	15	6.00	2025-03-12	Aktywność
4086	62	7	15	2.00	2025-04-22	Praca klasowa
4087	62	7	15	3.00	2025-03-11	Kartkówka
4088	62	10	8	5.00	2025-03-11	Aktywność
4089	62	10	8	3.00	2025-04-01	Praca domowa
4090	62	10	8	3.00	2025-03-21	Kartkówka
4091	62	14	15	5.00	2025-06-07	Quiz
4092	62	14	15	5.00	2025-04-19	Prezentacja
4093	62	14	15	5.00	2025-05-02	Odpowiedź ustna
4094	62	14	15	4.00	2025-03-15	Sprawdzian
4095	62	14	15	5.00	2025-03-18	Kartkówka
4096	62	14	15	5.00	2025-04-28	Praca klasowa
4097	63	5	1	3.00	2025-05-05	Prezentacja
4098	63	5	1	4.00	2025-05-07	Kartkówka
4099	63	5	1	5.00	2025-04-27	Sprawdzian
4100	63	5	1	5.00	2025-06-07	Prezentacja
4101	63	5	1	3.00	2025-04-22	Sprawdzian
4102	63	5	1	5.00	2025-06-02	Praca domowa
4103	63	5	1	5.00	2025-06-03	Quiz
4104	63	5	1	6.00	2025-03-31	Prezentacja
4105	63	12	4	3.00	2025-03-26	Aktywność
4106	63	12	4	6.00	2025-04-17	Prezentacja
4107	63	12	4	3.00	2025-04-18	Aktywność
4108	63	12	4	4.00	2025-05-03	Prezentacja
4109	63	12	4	4.00	2025-03-11	Sprawdzian
4110	63	7	10	6.00	2025-06-02	Odpowiedź ustna
4111	63	7	10	3.00	2025-04-08	Prezentacja
4112	63	7	10	4.00	2025-04-27	Test
4113	63	14	4	6.00	2025-03-30	Test
4114	63	14	4	6.00	2025-03-20	Odpowiedź ustna
4115	63	14	4	3.00	2025-03-29	Projekt
4116	63	4	1	3.00	2025-04-10	Test
4117	63	4	1	5.00	2025-05-20	Odpowiedź ustna
4118	63	4	1	5.00	2025-05-27	Kartkówka
4119	63	4	1	5.00	2025-04-10	Odpowiedź ustna
4120	63	4	1	1.00	2025-04-24	Quiz
4121	63	3	10	4.00	2025-04-16	Odpowiedź ustna
4122	63	3	10	4.00	2025-04-02	Prezentacja
4123	63	3	10	3.00	2025-06-04	Sprawdzian
4124	63	3	10	1.00	2025-04-14	Praca klasowa
4125	63	3	10	5.00	2025-03-10	Quiz
4126	63	3	10	3.00	2025-03-14	Projekt
4127	63	3	10	6.00	2025-03-14	Projekt
4128	63	7	15	3.00	2025-04-17	Praca domowa
4129	63	7	15	5.00	2025-03-14	Aktywność
4130	63	7	15	5.00	2025-04-03	Praca klasowa
4131	63	10	8	4.00	2025-04-17	Prezentacja
4132	63	10	8	4.00	2025-05-07	Projekt
4133	63	10	8	4.00	2025-06-01	Aktywność
4134	63	14	15	6.00	2025-04-30	Sprawdzian
4135	63	14	15	5.00	2025-03-19	Praca domowa
4136	63	14	15	3.00	2025-05-03	Projekt
4137	63	14	15	5.00	2025-04-23	Quiz
4138	63	14	15	5.00	2025-04-06	Sprawdzian
4139	63	14	15	4.00	2025-03-24	Test
4140	63	14	15	2.00	2025-05-30	Test
4141	64	5	1	5.00	2025-03-11	Projekt
4142	64	5	1	2.00	2025-03-16	Sprawdzian
4143	64	5	1	4.00	2025-05-01	Praca domowa
4144	64	5	1	6.00	2025-05-06	Prezentacja
4145	64	5	1	4.00	2025-03-27	Projekt
4146	64	12	4	4.00	2025-04-27	Projekt
4147	64	12	4	5.00	2025-03-29	Aktywność
4148	64	12	4	3.00	2025-05-12	Test
4149	64	12	4	4.00	2025-05-08	Praca klasowa
4150	64	7	10	5.00	2025-04-30	Praca domowa
4151	64	7	10	5.00	2025-04-03	Projekt
4152	64	7	10	5.00	2025-05-02	Kartkówka
4153	64	14	4	5.00	2025-05-13	Kartkówka
4154	64	14	4	5.00	2025-04-10	Quiz
4155	64	14	4	3.00	2025-03-25	Prezentacja
4156	64	14	4	4.00	2025-03-29	Kartkówka
4157	64	4	1	5.00	2025-04-26	Sprawdzian
4158	64	4	1	4.00	2025-05-17	Quiz
4159	64	4	1	3.00	2025-04-16	Projekt
4160	64	4	1	5.00	2025-05-22	Odpowiedź ustna
4161	64	3	10	4.00	2025-05-21	Praca domowa
4162	64	3	10	3.00	2025-05-28	Praca domowa
4163	64	3	10	4.00	2025-05-02	Odpowiedź ustna
4164	64	3	10	5.00	2025-04-20	Prezentacja
4165	64	7	15	5.00	2025-03-14	Quiz
4166	64	7	15	5.00	2025-05-31	Test
4167	64	7	15	4.00	2025-03-11	Prezentacja
4168	64	7	15	5.00	2025-05-15	Praca klasowa
4169	64	7	15	1.00	2025-04-15	Odpowiedź ustna
4170	64	7	15	5.00	2025-03-18	Kartkówka
4171	64	7	15	1.00	2025-04-24	Projekt
4172	64	7	15	5.00	2025-04-15	Test
4173	64	10	8	5.00	2025-05-04	Projekt
4174	64	10	8	4.00	2025-03-14	Odpowiedź ustna
4175	64	10	8	1.00	2025-03-18	Sprawdzian
4176	64	10	8	5.00	2025-04-17	Kartkówka
4177	64	10	8	3.00	2025-03-18	Test
4178	64	10	8	4.00	2025-05-13	Kartkówka
4179	64	14	15	3.00	2025-05-06	Test
4180	64	14	15	3.00	2025-03-24	Odpowiedź ustna
4181	64	14	15	6.00	2025-06-07	Aktywność
4182	64	14	15	3.00	2025-04-03	Test
4183	65	5	1	5.00	2025-03-11	Praca klasowa
4184	65	5	1	5.00	2025-05-06	Test
4185	65	5	1	6.00	2025-04-02	Prezentacja
4186	65	5	1	4.00	2025-04-04	Projekt
4187	65	5	1	3.00	2025-03-30	Prezentacja
4188	65	5	1	6.00	2025-05-04	Prezentacja
4189	65	5	1	3.00	2025-05-27	Praca klasowa
4190	65	5	1	5.00	2025-05-15	Praca domowa
4191	65	12	4	3.00	2025-04-03	Aktywność
4192	65	12	4	5.00	2025-03-25	Quiz
4193	65	12	4	3.00	2025-04-06	Praca klasowa
4194	65	12	4	4.00	2025-03-30	Sprawdzian
4195	65	12	4	6.00	2025-05-19	Projekt
4196	65	12	4	2.00	2025-05-24	Praca klasowa
4197	65	12	4	5.00	2025-03-20	Quiz
4198	65	12	4	5.00	2025-04-15	Aktywność
4199	65	7	10	3.00	2025-04-16	Praca klasowa
4200	65	7	10	6.00	2025-04-16	Test
4201	65	7	10	5.00	2025-04-09	Prezentacja
4202	65	7	10	3.00	2025-06-05	Praca domowa
4203	65	14	4	5.00	2025-04-14	Praca klasowa
4204	65	14	4	4.00	2025-04-25	Projekt
4205	65	14	4	4.00	2025-05-10	Quiz
4206	65	14	4	4.00	2025-06-02	Praca klasowa
4207	65	14	4	5.00	2025-04-25	Test
4208	65	14	4	3.00	2025-04-17	Sprawdzian
4209	65	14	4	6.00	2025-04-21	Praca domowa
4210	65	14	4	6.00	2025-04-10	Praca domowa
4211	65	4	1	5.00	2025-05-02	Test
4212	65	4	1	4.00	2025-03-23	Aktywność
4213	65	4	1	6.00	2025-06-05	Praca domowa
4214	65	3	10	4.00	2025-06-02	Praca domowa
4215	65	3	10	4.00	2025-04-02	Odpowiedź ustna
4216	65	3	10	6.00	2025-04-17	Odpowiedź ustna
4217	65	3	10	5.00	2025-03-25	Odpowiedź ustna
4218	65	3	10	4.00	2025-03-28	Quiz
4219	65	3	10	6.00	2025-03-13	Sprawdzian
4220	65	7	15	6.00	2025-03-21	Aktywność
4221	65	7	15	4.00	2025-04-27	Sprawdzian
4222	65	7	15	5.00	2025-05-20	Sprawdzian
4223	65	7	15	3.00	2025-04-24	Praca domowa
4224	65	7	15	5.00	2025-04-11	Kartkówka
4225	65	7	15	5.00	2025-04-06	Quiz
4226	65	7	15	4.00	2025-03-20	Test
4227	65	10	8	5.00	2025-05-14	Praca domowa
4228	65	10	8	6.00	2025-05-16	Sprawdzian
4229	65	10	8	4.00	2025-04-29	Test
4230	65	10	8	4.00	2025-03-14	Projekt
4231	65	14	15	4.00	2025-05-21	Praca klasowa
4232	65	14	15	4.00	2025-04-15	Prezentacja
4233	65	14	15	2.00	2025-04-04	Praca domowa
4234	67	5	1	5.00	2025-05-14	Sprawdzian
4235	67	5	1	6.00	2025-06-02	Test
4236	67	5	1	4.00	2025-05-12	Sprawdzian
4237	67	5	1	6.00	2025-03-21	Test
4238	67	5	1	5.00	2025-04-10	Praca klasowa
4239	67	5	1	4.00	2025-04-13	Quiz
4240	67	5	1	5.00	2025-05-14	Sprawdzian
4241	67	5	1	5.00	2025-03-28	Aktywność
4242	67	12	4	6.00	2025-05-09	Kartkówka
4243	67	12	4	4.00	2025-04-29	Praca klasowa
4244	67	12	4	6.00	2025-05-22	Projekt
4245	67	12	4	4.00	2025-04-24	Projekt
4246	67	12	4	5.00	2025-06-02	Prezentacja
4247	67	7	10	5.00	2025-05-08	Kartkówka
4248	67	7	10	5.00	2025-05-30	Kartkówka
4249	67	7	10	4.00	2025-05-03	Sprawdzian
4250	67	14	4	4.00	2025-04-12	Sprawdzian
4251	67	14	4	4.00	2025-05-17	Sprawdzian
4252	67	14	4	1.00	2025-05-17	Quiz
4253	67	14	4	4.00	2025-05-10	Projekt
4254	67	4	1	3.00	2025-03-22	Aktywność
4255	67	4	1	5.00	2025-06-05	Prezentacja
4256	67	4	1	4.00	2025-04-18	Test
4257	67	4	1	3.00	2025-04-07	Projekt
4258	67	4	1	3.00	2025-05-04	Praca klasowa
4259	67	3	10	3.00	2025-05-05	Aktywność
4260	67	3	10	5.00	2025-06-05	Prezentacja
4261	67	3	10	5.00	2025-05-06	Test
4262	67	3	10	3.00	2025-03-20	Praca klasowa
4263	67	3	10	6.00	2025-05-14	Prezentacja
4264	67	3	10	4.00	2025-04-06	Sprawdzian
4265	67	7	15	4.00	2025-04-08	Test
4266	67	7	15	5.00	2025-05-20	Prezentacja
4267	67	7	15	5.00	2025-04-05	Praca domowa
4268	67	7	15	4.00	2025-04-01	Kartkówka
4269	67	7	15	4.00	2025-05-31	Kartkówka
4270	67	10	8	5.00	2025-05-03	Praca klasowa
4271	67	10	8	4.00	2025-05-03	Praca domowa
4272	67	10	8	5.00	2025-03-12	Aktywność
4273	67	10	8	6.00	2025-06-03	Projekt
4274	67	10	8	4.00	2025-04-27	Quiz
4275	67	10	8	5.00	2025-03-15	Praca domowa
4276	67	14	15	4.00	2025-04-07	Test
4277	67	14	15	5.00	2025-05-15	Quiz
4278	67	14	15	5.00	2025-03-26	Prezentacja
4279	67	14	15	4.00	2025-04-03	Projekt
4280	67	14	15	4.00	2025-04-16	Test
4281	67	14	15	4.00	2025-03-12	Projekt
4282	67	14	15	6.00	2025-03-12	Test
4283	67	14	15	5.00	2025-05-01	Kartkówka
4284	68	5	1	4.00	2025-04-20	Kartkówka
4285	68	5	1	5.00	2025-03-27	Aktywność
4286	68	5	1	5.00	2025-06-01	Kartkówka
4287	68	5	1	6.00	2025-03-24	Quiz
4288	68	5	1	6.00	2025-05-25	Praca domowa
4289	68	5	1	3.00	2025-04-17	Praca klasowa
4290	68	5	1	3.00	2025-05-22	Projekt
4291	68	12	4	5.00	2025-03-13	Aktywność
4292	68	12	4	5.00	2025-03-26	Sprawdzian
4293	68	12	4	3.00	2025-04-17	Odpowiedź ustna
4294	68	12	4	5.00	2025-03-15	Kartkówka
4295	68	12	4	5.00	2025-05-25	Odpowiedź ustna
4296	68	12	4	3.00	2025-05-29	Test
4297	68	12	4	3.00	2025-04-05	Praca domowa
4298	68	7	10	6.00	2025-05-15	Aktywność
4299	68	7	10	3.00	2025-06-02	Kartkówka
4300	68	7	10	5.00	2025-05-03	Test
4301	68	7	10	5.00	2025-05-04	Praca domowa
4302	68	7	10	3.00	2025-05-26	Aktywność
4303	68	14	4	4.00	2025-04-01	Praca domowa
4304	68	14	4	4.00	2025-04-25	Prezentacja
4305	68	14	4	4.00	2025-03-15	Test
4306	68	14	4	5.00	2025-05-28	Kartkówka
4307	68	4	1	5.00	2025-04-12	Sprawdzian
4308	68	4	1	3.00	2025-04-11	Prezentacja
4309	68	4	1	4.00	2025-04-19	Odpowiedź ustna
4310	68	4	1	4.00	2025-03-12	Praca domowa
4311	68	4	1	5.00	2025-04-14	Odpowiedź ustna
4312	68	3	10	3.00	2025-05-26	Projekt
4313	68	3	10	3.00	2025-04-02	Praca klasowa
4314	68	3	10	4.00	2025-06-02	Sprawdzian
4315	68	3	10	4.00	2025-03-16	Test
4316	68	7	15	4.00	2025-03-26	Praca klasowa
4317	68	7	15	6.00	2025-04-21	Kartkówka
4318	68	7	15	6.00	2025-05-21	Sprawdzian
4319	68	10	8	1.00	2025-05-08	Sprawdzian
4320	68	10	8	6.00	2025-06-01	Aktywność
4321	68	10	8	5.00	2025-04-29	Prezentacja
4322	68	10	8	4.00	2025-03-24	Aktywność
4323	68	10	8	4.00	2025-03-26	Aktywność
4324	68	10	8	6.00	2025-04-03	Test
4325	68	10	8	4.00	2025-04-16	Prezentacja
4326	68	14	15	3.00	2025-06-04	Odpowiedź ustna
4327	68	14	15	4.00	2025-03-11	Praca klasowa
4328	68	14	15	4.00	2025-06-02	Odpowiedź ustna
4329	69	5	1	3.00	2025-05-08	Praca klasowa
4330	69	5	1	4.00	2025-05-23	Prezentacja
4331	69	5	1	4.00	2025-04-05	Odpowiedź ustna
4332	69	5	1	6.00	2025-03-19	Aktywność
4333	69	5	1	5.00	2025-06-03	Projekt
4334	69	5	1	5.00	2025-04-30	Kartkówka
4335	69	5	1	4.00	2025-05-06	Test
4336	69	5	1	3.00	2025-03-10	Odpowiedź ustna
4337	69	12	4	6.00	2025-04-13	Prezentacja
4338	69	12	4	6.00	2025-05-29	Sprawdzian
4339	69	12	4	2.00	2025-05-28	Odpowiedź ustna
4340	69	7	10	3.00	2025-03-28	Sprawdzian
4341	69	7	10	1.00	2025-04-02	Projekt
4342	69	7	10	5.00	2025-03-10	Kartkówka
4343	69	7	10	6.00	2025-03-29	Odpowiedź ustna
4344	69	7	10	2.00	2025-03-27	Test
4345	69	7	10	6.00	2025-05-02	Sprawdzian
4346	69	7	10	5.00	2025-06-03	Projekt
4347	69	7	10	6.00	2025-05-21	Kartkówka
4348	69	14	4	4.00	2025-03-24	Praca domowa
4349	69	14	4	3.00	2025-05-02	Aktywność
4350	69	14	4	6.00	2025-04-25	Praca domowa
4351	69	4	1	2.00	2025-04-04	Kartkówka
4352	69	4	1	5.00	2025-05-04	Test
4353	69	4	1	5.00	2025-05-25	Sprawdzian
4354	69	4	1	5.00	2025-06-07	Praca domowa
4355	69	4	1	5.00	2025-05-11	Sprawdzian
4356	69	4	1	5.00	2025-04-19	Aktywność
4357	69	4	1	6.00	2025-03-23	Aktywność
4358	69	4	1	6.00	2025-05-23	Aktywność
4359	69	3	10	5.00	2025-05-26	Praca klasowa
4360	69	3	10	5.00	2025-03-29	Aktywność
4361	69	3	10	3.00	2025-03-10	Kartkówka
4362	69	3	10	5.00	2025-04-29	Projekt
4363	69	3	10	4.00	2025-04-22	Odpowiedź ustna
4364	69	3	10	6.00	2025-03-26	Quiz
4365	69	3	10	3.00	2025-03-24	Kartkówka
4366	69	3	10	4.00	2025-05-12	Odpowiedź ustna
4367	69	7	15	5.00	2025-05-26	Odpowiedź ustna
4368	69	7	15	5.00	2025-03-25	Kartkówka
4369	69	7	15	4.00	2025-05-31	Projekt
4370	69	10	8	3.00	2025-05-02	Praca klasowa
4371	69	10	8	4.00	2025-04-11	Test
4372	69	10	8	5.00	2025-06-03	Sprawdzian
4373	69	10	8	3.00	2025-05-28	Praca domowa
4374	69	10	8	4.00	2025-03-26	Kartkówka
4375	69	14	15	2.00	2025-04-27	Praca domowa
4376	69	14	15	5.00	2025-04-22	Aktywność
4377	69	14	15	3.00	2025-05-24	Odpowiedź ustna
4378	70	5	1	3.00	2025-05-01	Prezentacja
4379	70	5	1	2.00	2025-03-31	Kartkówka
4380	70	5	1	6.00	2025-03-23	Projekt
4381	70	5	1	4.00	2025-05-14	Sprawdzian
4382	70	12	4	4.00	2025-03-12	Aktywność
4383	70	12	4	3.00	2025-05-20	Odpowiedź ustna
4384	70	12	4	5.00	2025-05-04	Sprawdzian
4385	70	12	4	6.00	2025-05-30	Projekt
4386	70	12	4	6.00	2025-06-03	Test
4387	70	12	4	5.00	2025-05-19	Prezentacja
4388	70	12	4	4.00	2025-03-28	Quiz
4389	70	12	4	5.00	2025-03-29	Quiz
4390	70	7	10	6.00	2025-04-05	Test
4391	70	7	10	6.00	2025-04-18	Sprawdzian
4392	70	7	10	3.00	2025-05-22	Kartkówka
4393	70	7	10	3.00	2025-04-27	Aktywność
4394	70	7	10	6.00	2025-04-07	Quiz
4395	70	7	10	5.00	2025-04-01	Praca domowa
4396	70	14	4	2.00	2025-03-30	Kartkówka
4397	70	14	4	6.00	2025-04-15	Quiz
4398	70	14	4	6.00	2025-05-19	Praca domowa
4399	70	14	4	5.00	2025-06-02	Kartkówka
4400	70	14	4	4.00	2025-05-17	Quiz
4401	70	14	4	4.00	2025-05-05	Kartkówka
4402	70	14	4	4.00	2025-06-03	Praca domowa
4403	70	14	4	5.00	2025-04-12	Praca klasowa
4404	70	4	1	4.00	2025-04-03	Praca klasowa
4405	70	4	1	4.00	2025-05-26	Projekt
4406	70	4	1	6.00	2025-04-30	Test
4407	70	4	1	5.00	2025-03-14	Prezentacja
4408	70	4	1	5.00	2025-04-11	Prezentacja
4409	70	4	1	5.00	2025-05-19	Prezentacja
4410	70	3	10	6.00	2025-04-27	Quiz
4411	70	3	10	5.00	2025-04-20	Quiz
4412	70	3	10	5.00	2025-05-16	Praca domowa
4413	70	7	15	5.00	2025-06-05	Aktywność
4414	70	7	15	6.00	2025-04-09	Aktywność
4415	70	7	15	2.00	2025-06-06	Test
4416	70	7	15	5.00	2025-05-08	Kartkówka
4417	70	7	15	5.00	2025-04-19	Kartkówka
4418	70	7	15	5.00	2025-05-06	Projekt
4419	70	7	15	4.00	2025-04-08	Odpowiedź ustna
4420	70	10	8	6.00	2025-04-19	Sprawdzian
4421	70	10	8	4.00	2025-05-16	Prezentacja
4422	70	10	8	4.00	2025-06-02	Kartkówka
4423	70	10	8	6.00	2025-06-02	Aktywność
4424	70	14	15	5.00	2025-03-23	Aktywność
4425	70	14	15	6.00	2025-03-12	Sprawdzian
4426	70	14	15	6.00	2025-04-04	Praca domowa
4427	70	14	15	5.00	2025-04-20	Praca klasowa
4428	70	14	15	5.00	2025-04-26	Kartkówka
4429	71	5	1	4.00	2025-04-26	Praca domowa
4430	71	5	1	4.00	2025-06-01	Praca klasowa
4431	71	5	1	4.00	2025-03-20	Praca klasowa
4432	71	5	1	6.00	2025-05-06	Praca klasowa
4433	71	5	1	3.00	2025-05-12	Aktywność
4434	71	5	1	3.00	2025-03-24	Odpowiedź ustna
4435	71	12	4	3.00	2025-05-05	Aktywność
4436	71	12	4	5.00	2025-03-31	Sprawdzian
4437	71	12	4	2.00	2025-05-09	Test
4438	71	7	10	5.00	2025-05-11	Odpowiedź ustna
4439	71	7	10	3.00	2025-05-16	Sprawdzian
4440	71	7	10	4.00	2025-05-05	Kartkówka
4441	71	7	10	5.00	2025-03-23	Aktywność
4442	71	7	10	3.00	2025-03-27	Aktywność
4443	71	7	10	6.00	2025-05-07	Aktywność
4444	71	7	10	5.00	2025-05-04	Test
4445	71	7	10	5.00	2025-04-01	Odpowiedź ustna
4446	71	14	4	4.00	2025-04-23	Aktywność
4447	71	14	4	6.00	2025-04-24	Kartkówka
4448	71	14	4	4.00	2025-04-13	Sprawdzian
4449	71	14	4	4.00	2025-06-06	Odpowiedź ustna
4450	71	14	4	5.00	2025-06-04	Test
4451	71	14	4	4.00	2025-06-07	Kartkówka
4452	71	4	1	6.00	2025-05-12	Odpowiedź ustna
4453	71	4	1	4.00	2025-03-15	Projekt
4454	71	4	1	4.00	2025-05-17	Praca klasowa
4455	71	4	1	3.00	2025-04-21	Praca domowa
4456	71	4	1	5.00	2025-03-28	Test
4457	71	4	1	4.00	2025-03-11	Prezentacja
4458	71	3	10	5.00	2025-04-17	Prezentacja
4459	71	3	10	5.00	2025-04-01	Odpowiedź ustna
4460	71	3	10	2.00	2025-05-27	Sprawdzian
4461	71	3	10	5.00	2025-03-27	Test
4462	71	3	10	6.00	2025-05-03	Odpowiedź ustna
4463	71	3	10	4.00	2025-03-16	Projekt
4464	71	7	15	5.00	2025-03-12	Sprawdzian
4465	71	7	15	6.00	2025-03-20	Test
4466	71	7	15	5.00	2025-06-06	Projekt
4467	71	7	15	3.00	2025-05-23	Kartkówka
4468	71	7	15	4.00	2025-03-24	Kartkówka
4469	71	7	15	5.00	2025-03-25	Praca klasowa
4470	71	7	15	3.00	2025-05-02	Praca klasowa
4471	71	10	8	4.00	2025-04-19	Sprawdzian
4472	71	10	8	6.00	2025-03-31	Projekt
4473	71	10	8	5.00	2025-06-07	Aktywność
4474	71	10	8	5.00	2025-04-17	Aktywność
4475	71	10	8	6.00	2025-03-21	Praca klasowa
4476	71	10	8	6.00	2025-05-28	Prezentacja
4477	71	10	8	4.00	2025-04-06	Projekt
4478	71	14	15	2.00	2025-03-27	Odpowiedź ustna
4479	71	14	15	3.00	2025-05-17	Quiz
4480	71	14	15	6.00	2025-04-17	Quiz
4481	71	14	15	3.00	2025-05-15	Prezentacja
4482	71	14	15	5.00	2025-04-07	Praca domowa
4483	71	14	15	4.00	2025-05-27	Prezentacja
4484	71	14	15	4.00	2025-04-06	Sprawdzian
4485	72	5	1	4.00	2025-03-13	Praca klasowa
4486	72	5	1	4.00	2025-03-25	Odpowiedź ustna
4487	72	5	1	4.00	2025-03-25	Test
4488	72	5	1	3.00	2025-06-02	Kartkówka
4489	72	5	1	1.00	2025-04-09	Kartkówka
4490	72	5	1	5.00	2025-03-19	Prezentacja
4491	72	5	1	6.00	2025-03-29	Quiz
4492	72	12	4	3.00	2025-05-08	Sprawdzian
4493	72	12	4	4.00	2025-04-26	Projekt
4494	72	12	4	5.00	2025-04-13	Praca klasowa
4495	72	12	4	5.00	2025-06-02	Prezentacja
4496	72	7	10	5.00	2025-05-26	Prezentacja
4497	72	7	10	4.00	2025-04-24	Praca klasowa
4498	72	7	10	5.00	2025-04-08	Sprawdzian
4499	72	7	10	3.00	2025-03-30	Aktywność
4500	72	7	10	4.00	2025-03-18	Aktywność
4501	72	14	4	3.00	2025-04-05	Kartkówka
4502	72	14	4	4.00	2025-04-29	Sprawdzian
4503	72	14	4	5.00	2025-03-19	Praca klasowa
4504	72	14	4	5.00	2025-05-07	Prezentacja
4505	72	14	4	6.00	2025-05-01	Test
4506	72	4	1	5.00	2025-04-14	Praca domowa
4507	72	4	1	5.00	2025-05-26	Prezentacja
4508	72	4	1	4.00	2025-04-14	Aktywność
4509	72	4	1	5.00	2025-05-10	Projekt
4510	72	4	1	3.00	2025-03-11	Kartkówka
4511	72	4	1	5.00	2025-03-13	Praca klasowa
4512	72	4	1	6.00	2025-05-23	Aktywność
4513	72	4	1	5.00	2025-04-21	Kartkówka
4514	72	3	10	6.00	2025-03-22	Praca klasowa
4515	72	3	10	6.00	2025-03-14	Aktywność
4516	72	3	10	5.00	2025-05-16	Odpowiedź ustna
4517	72	3	10	5.00	2025-05-13	Praca domowa
4518	72	3	10	3.00	2025-05-11	Sprawdzian
4519	72	3	10	3.00	2025-04-12	Praca klasowa
4520	72	3	10	5.00	2025-03-22	Prezentacja
4521	72	7	15	2.00	2025-04-13	Praca domowa
4522	72	7	15	3.00	2025-04-22	Prezentacja
4523	72	7	15	3.00	2025-04-28	Test
4524	72	7	15	6.00	2025-04-30	Praca klasowa
4525	72	7	15	3.00	2025-03-28	Test
4526	72	10	8	3.00	2025-06-07	Praca klasowa
4527	72	10	8	5.00	2025-04-19	Praca klasowa
4528	72	10	8	4.00	2025-04-14	Kartkówka
4529	72	10	8	5.00	2025-05-10	Test
4530	72	10	8	6.00	2025-03-11	Praca klasowa
4531	72	10	8	4.00	2025-04-23	Projekt
4532	72	14	15	5.00	2025-05-26	Test
4533	72	14	15	3.00	2025-04-07	Quiz
4534	72	14	15	6.00	2025-04-04	Odpowiedź ustna
4535	72	14	15	4.00	2025-06-04	Kartkówka
4536	72	14	15	5.00	2025-03-24	Projekt
4537	72	14	15	6.00	2025-04-07	Praca klasowa
4538	72	14	15	5.00	2025-04-22	Test
4539	73	5	1	2.00	2025-03-21	Praca domowa
4540	73	5	1	5.00	2025-03-22	Prezentacja
4541	73	5	1	3.00	2025-05-13	Test
4542	73	12	4	6.00	2025-05-18	Projekt
4543	73	12	4	2.00	2025-04-15	Sprawdzian
4544	73	12	4	3.00	2025-04-15	Aktywność
4545	73	12	4	4.00	2025-04-28	Praca domowa
4546	73	12	4	5.00	2025-06-02	Kartkówka
4547	73	12	4	5.00	2025-03-30	Prezentacja
4548	73	7	10	5.00	2025-05-19	Praca domowa
4549	73	7	10	6.00	2025-06-04	Prezentacja
4550	73	7	10	3.00	2025-03-27	Aktywność
4551	73	14	4	3.00	2025-05-09	Odpowiedź ustna
4552	73	14	4	5.00	2025-03-21	Quiz
4553	73	14	4	3.00	2025-04-19	Prezentacja
4554	73	14	4	3.00	2025-03-16	Prezentacja
4555	73	14	4	6.00	2025-05-12	Praca klasowa
4556	73	14	4	6.00	2025-04-11	Prezentacja
4557	73	14	4	4.00	2025-04-05	Odpowiedź ustna
4558	73	14	4	5.00	2025-03-22	Praca domowa
4559	73	4	1	3.00	2025-03-14	Kartkówka
4560	73	4	1	4.00	2025-03-13	Odpowiedź ustna
4561	73	4	1	1.00	2025-05-31	Sprawdzian
4562	73	4	1	5.00	2025-05-28	Quiz
4563	73	4	1	5.00	2025-04-07	Odpowiedź ustna
4564	73	4	1	5.00	2025-05-18	Odpowiedź ustna
4565	73	3	10	5.00	2025-03-24	Sprawdzian
4566	73	3	10	6.00	2025-05-10	Quiz
4567	73	3	10	4.00	2025-05-28	Prezentacja
4568	73	3	10	6.00	2025-06-07	Praca domowa
4569	73	3	10	5.00	2025-05-24	Sprawdzian
4570	73	3	10	4.00	2025-04-15	Aktywność
4571	73	3	10	6.00	2025-05-21	Quiz
4572	73	3	10	4.00	2025-03-23	Praca domowa
4573	73	7	15	4.00	2025-03-26	Odpowiedź ustna
4574	73	7	15	5.00	2025-04-23	Praca domowa
4575	73	7	15	4.00	2025-03-26	Odpowiedź ustna
4576	73	7	15	6.00	2025-05-15	Projekt
4577	73	7	15	4.00	2025-05-20	Test
4578	73	10	8	5.00	2025-03-23	Kartkówka
4579	73	10	8	4.00	2025-03-24	Odpowiedź ustna
4580	73	10	8	3.00	2025-05-27	Sprawdzian
4581	73	14	15	3.00	2025-05-28	Test
4582	73	14	15	6.00	2025-04-12	Projekt
4583	73	14	15	5.00	2025-05-16	Prezentacja
4584	75	5	1	5.00	2025-05-10	Kartkówka
4585	75	5	1	5.00	2025-03-12	Odpowiedź ustna
4586	75	5	1	5.00	2025-03-14	Prezentacja
4587	75	12	4	6.00	2025-06-07	Sprawdzian
4588	75	12	4	4.00	2025-06-05	Test
4589	75	12	4	5.00	2025-03-28	Quiz
4590	75	12	4	5.00	2025-03-28	Sprawdzian
4591	75	12	4	6.00	2025-04-24	Test
4592	75	12	4	5.00	2025-05-06	Projekt
4593	75	7	10	3.00	2025-04-25	Aktywność
4594	75	7	10	5.00	2025-05-01	Test
4595	75	7	10	3.00	2025-05-26	Projekt
4596	75	7	10	3.00	2025-05-23	Kartkówka
4597	75	14	4	5.00	2025-04-06	Test
4598	75	14	4	5.00	2025-05-13	Test
4599	75	14	4	5.00	2025-05-30	Aktywność
4600	75	4	1	4.00	2025-05-14	Odpowiedź ustna
4601	75	4	1	2.00	2025-04-29	Praca domowa
4602	75	4	1	6.00	2025-03-26	Sprawdzian
4603	75	4	1	5.00	2025-05-26	Praca klasowa
4604	75	4	1	5.00	2025-05-04	Sprawdzian
4605	75	4	1	3.00	2025-04-29	Praca klasowa
4606	75	4	1	6.00	2025-04-03	Sprawdzian
4607	75	3	10	6.00	2025-03-12	Praca klasowa
4608	75	3	10	4.00	2025-04-05	Projekt
4609	75	3	10	3.00	2025-04-04	Odpowiedź ustna
4610	75	3	10	4.00	2025-05-08	Odpowiedź ustna
4611	75	7	15	6.00	2025-04-23	Test
4612	75	7	15	6.00	2025-05-17	Prezentacja
4613	75	7	15	4.00	2025-03-26	Praca klasowa
4614	75	7	15	5.00	2025-05-20	Odpowiedź ustna
4615	75	7	15	6.00	2025-06-07	Praca klasowa
4616	75	7	15	4.00	2025-03-10	Praca domowa
4617	75	10	8	6.00	2025-04-03	Prezentacja
4618	75	10	8	3.00	2025-05-06	Kartkówka
4619	75	10	8	5.00	2025-05-02	Quiz
4620	75	14	15	4.00	2025-05-14	Quiz
4621	75	14	15	5.00	2025-03-27	Odpowiedź ustna
4622	75	14	15	5.00	2025-06-05	Praca klasowa
4623	76	5	1	5.00	2025-05-28	Projekt
4624	76	5	1	4.00	2025-03-26	Prezentacja
4625	76	5	1	4.00	2025-03-30	Aktywność
4626	76	5	1	4.00	2025-04-11	Odpowiedź ustna
4627	76	12	4	5.00	2025-04-16	Quiz
4628	76	12	4	6.00	2025-03-19	Praca klasowa
4629	76	12	4	5.00	2025-04-08	Test
4630	76	12	4	1.00	2025-06-02	Sprawdzian
4631	76	12	4	5.00	2025-04-13	Aktywność
4632	76	7	10	4.00	2025-04-29	Sprawdzian
4633	76	7	10	6.00	2025-03-15	Praca domowa
4634	76	7	10	3.00	2025-03-25	Praca domowa
4635	76	7	10	2.00	2025-03-16	Test
4636	76	7	10	3.00	2025-05-24	Sprawdzian
4637	76	14	4	3.00	2025-05-05	Quiz
4638	76	14	4	1.00	2025-03-27	Sprawdzian
4639	76	14	4	4.00	2025-05-28	Test
4640	76	14	4	5.00	2025-05-21	Praca klasowa
4641	76	14	4	6.00	2025-04-09	Prezentacja
4642	76	14	4	6.00	2025-03-11	Praca domowa
4643	76	14	4	5.00	2025-06-02	Sprawdzian
4644	76	4	1	3.00	2025-05-17	Test
4645	76	4	1	6.00	2025-06-03	Kartkówka
4646	76	4	1	3.00	2025-04-18	Prezentacja
4647	76	4	1	5.00	2025-03-14	Test
4648	76	3	10	6.00	2025-05-28	Odpowiedź ustna
4649	76	3	10	3.00	2025-03-19	Quiz
4650	76	3	10	6.00	2025-05-08	Praca domowa
4651	76	3	10	4.00	2025-05-06	Test
4652	76	3	10	4.00	2025-05-31	Praca klasowa
4653	76	3	10	4.00	2025-04-25	Quiz
4654	76	7	15	3.00	2025-05-18	Sprawdzian
4655	76	7	15	4.00	2025-05-17	Prezentacja
4656	76	7	15	5.00	2025-04-16	Prezentacja
4657	76	7	15	5.00	2025-05-17	Odpowiedź ustna
4658	76	7	15	1.00	2025-06-03	Kartkówka
4659	76	10	8	3.00	2025-04-26	Praca domowa
4660	76	10	8	6.00	2025-05-28	Kartkówka
4661	76	10	8	3.00	2025-04-24	Praca klasowa
4662	76	14	15	5.00	2025-03-17	Praca domowa
4663	76	14	15	5.00	2025-04-30	Kartkówka
4664	76	14	15	5.00	2025-05-11	Kartkówka
4665	77	5	1	6.00	2025-03-26	Test
4666	77	5	1	5.00	2025-04-05	Quiz
4667	77	5	1	5.00	2025-04-20	Test
4668	77	5	1	3.00	2025-06-07	Odpowiedź ustna
4669	77	5	1	2.00	2025-05-10	Praca domowa
4670	77	12	4	3.00	2025-04-18	Praca klasowa
4671	77	12	4	6.00	2025-05-05	Quiz
4672	77	12	4	5.00	2025-04-23	Test
4673	77	12	4	5.00	2025-03-27	Projekt
4674	77	7	10	3.00	2025-04-30	Odpowiedź ustna
4675	77	7	10	3.00	2025-05-05	Test
4676	77	7	10	6.00	2025-05-19	Praca domowa
4677	77	7	10	5.00	2025-04-08	Test
4678	77	7	10	5.00	2025-05-04	Kartkówka
4679	77	7	10	2.00	2025-05-11	Praca domowa
4680	77	7	10	3.00	2025-03-30	Praca domowa
4681	77	14	4	4.00	2025-04-06	Prezentacja
4682	77	14	4	4.00	2025-03-12	Kartkówka
4683	77	14	4	6.00	2025-06-01	Projekt
4684	77	14	4	5.00	2025-04-23	Prezentacja
4685	77	14	4	5.00	2025-03-11	Kartkówka
4686	77	14	4	3.00	2025-05-05	Praca domowa
4687	77	14	4	3.00	2025-05-21	Kartkówka
4688	77	14	4	5.00	2025-04-21	Prezentacja
4689	77	4	1	3.00	2025-04-07	Praca domowa
4690	77	4	1	4.00	2025-03-27	Aktywność
4691	77	4	1	5.00	2025-06-03	Praca domowa
4692	77	4	1	3.00	2025-03-25	Praca domowa
4693	77	4	1	5.00	2025-05-08	Projekt
4694	77	4	1	6.00	2025-03-19	Odpowiedź ustna
4695	77	4	1	4.00	2025-04-17	Sprawdzian
4696	77	3	10	6.00	2025-06-03	Aktywność
4697	77	3	10	6.00	2025-05-13	Kartkówka
4698	77	3	10	6.00	2025-06-04	Prezentacja
4699	77	3	10	6.00	2025-05-13	Test
4700	77	3	10	6.00	2025-03-26	Test
4701	77	3	10	5.00	2025-04-04	Quiz
4702	77	3	10	5.00	2025-06-02	Prezentacja
4703	77	7	15	4.00	2025-06-04	Sprawdzian
4704	77	7	15	5.00	2025-05-28	Praca klasowa
4705	77	7	15	4.00	2025-05-16	Praca klasowa
4706	77	7	15	4.00	2025-04-27	Prezentacja
4707	77	7	15	2.00	2025-04-17	Test
4708	77	10	8	5.00	2025-06-05	Quiz
4709	77	10	8	5.00	2025-03-26	Sprawdzian
4710	77	10	8	5.00	2025-04-21	Odpowiedź ustna
4711	77	14	15	6.00	2025-03-20	Praca domowa
4712	77	14	15	5.00	2025-06-02	Sprawdzian
4713	77	14	15	5.00	2025-05-28	Praca klasowa
4714	77	14	15	2.00	2025-05-12	Projekt
4715	78	5	1	5.00	2025-03-18	Projekt
4716	78	5	1	5.00	2025-04-13	Projekt
4717	78	5	1	5.00	2025-05-26	Prezentacja
4718	78	5	1	6.00	2025-05-14	Odpowiedź ustna
4719	78	5	1	6.00	2025-05-31	Aktywność
4720	78	5	1	4.00	2025-04-11	Odpowiedź ustna
4721	78	5	1	5.00	2025-03-29	Kartkówka
4722	78	12	4	5.00	2025-04-28	Quiz
4723	78	12	4	4.00	2025-03-25	Odpowiedź ustna
4724	78	12	4	6.00	2025-03-24	Praca klasowa
4725	78	12	4	5.00	2025-04-13	Odpowiedź ustna
4726	78	12	4	4.00	2025-03-12	Odpowiedź ustna
4727	78	12	4	1.00	2025-04-09	Prezentacja
4728	78	7	10	4.00	2025-04-25	Kartkówka
4729	78	7	10	5.00	2025-05-27	Praca domowa
4730	78	7	10	5.00	2025-04-19	Odpowiedź ustna
4731	78	14	4	6.00	2025-05-22	Kartkówka
4732	78	14	4	4.00	2025-04-29	Prezentacja
4733	78	14	4	2.00	2025-06-02	Praca domowa
4734	78	14	4	2.00	2025-04-05	Quiz
4735	78	14	4	3.00	2025-05-24	Test
4736	78	14	4	5.00	2025-03-27	Kartkówka
4737	78	4	1	5.00	2025-03-27	Test
4738	78	4	1	5.00	2025-06-05	Sprawdzian
4739	78	4	1	3.00	2025-04-19	Praca klasowa
4740	78	4	1	6.00	2025-04-10	Praca klasowa
4741	78	4	1	6.00	2025-04-29	Praca klasowa
4742	78	4	1	4.00	2025-05-30	Projekt
4743	78	4	1	4.00	2025-03-20	Kartkówka
4744	78	4	1	5.00	2025-04-02	Quiz
4745	78	3	10	5.00	2025-05-21	Test
4746	78	3	10	5.00	2025-03-22	Praca klasowa
4747	78	3	10	4.00	2025-03-28	Odpowiedź ustna
4748	78	3	10	5.00	2025-04-25	Kartkówka
4749	78	3	10	3.00	2025-05-02	Praca domowa
4750	78	3	10	5.00	2025-04-07	Sprawdzian
4751	78	3	10	4.00	2025-06-02	Sprawdzian
4752	78	7	15	4.00	2025-03-25	Sprawdzian
4753	78	7	15	4.00	2025-05-05	Quiz
4754	78	7	15	3.00	2025-04-29	Odpowiedź ustna
4755	78	7	15	5.00	2025-04-18	Praca domowa
4756	78	7	15	4.00	2025-05-30	Prezentacja
4757	78	7	15	2.00	2025-04-15	Aktywność
4758	78	10	8	5.00	2025-05-18	Test
4759	78	10	8	3.00	2025-05-24	Projekt
4760	78	10	8	3.00	2025-05-19	Kartkówka
4761	78	14	15	4.00	2025-05-10	Test
4762	78	14	15	5.00	2025-05-27	Praca klasowa
4763	78	14	15	6.00	2025-03-28	Kartkówka
4764	78	14	15	4.00	2025-04-06	Sprawdzian
4765	78	14	15	6.00	2025-05-20	Praca domowa
4766	78	14	15	4.00	2025-05-10	Odpowiedź ustna
4767	79	5	1	4.00	2025-05-06	Quiz
4768	79	5	1	2.00	2025-04-22	Sprawdzian
4769	79	5	1	1.00	2025-03-13	Praca domowa
4770	79	5	1	5.00	2025-03-11	Quiz
4771	79	12	4	5.00	2025-05-12	Quiz
4772	79	12	4	5.00	2025-03-22	Kartkówka
4773	79	12	4	3.00	2025-04-12	Odpowiedź ustna
4774	79	12	4	5.00	2025-04-20	Aktywność
4775	79	7	10	5.00	2025-06-06	Kartkówka
4776	79	7	10	4.00	2025-05-18	Praca domowa
4777	79	7	10	5.00	2025-05-02	Aktywność
4778	79	7	10	5.00	2025-03-26	Praca domowa
4779	79	7	10	5.00	2025-05-26	Aktywność
4780	79	7	10	4.00	2025-03-11	Odpowiedź ustna
4781	79	14	4	6.00	2025-04-15	Aktywność
4782	79	14	4	6.00	2025-04-04	Prezentacja
4783	79	14	4	5.00	2025-05-25	Quiz
4784	79	14	4	5.00	2025-06-03	Sprawdzian
4785	79	14	4	4.00	2025-04-23	Odpowiedź ustna
4786	79	4	1	3.00	2025-04-28	Prezentacja
4787	79	4	1	6.00	2025-04-02	Projekt
4788	79	4	1	6.00	2025-05-23	Aktywność
4789	79	4	1	5.00	2025-06-02	Kartkówka
4790	79	4	1	4.00	2025-05-07	Sprawdzian
4791	79	4	1	3.00	2025-03-11	Quiz
4792	79	4	1	6.00	2025-05-02	Praca domowa
4793	79	3	10	6.00	2025-04-03	Test
4794	79	3	10	4.00	2025-05-27	Test
4795	79	3	10	6.00	2025-03-19	Test
4796	79	7	15	5.00	2025-03-10	Kartkówka
4797	79	7	15	5.00	2025-04-07	Prezentacja
4798	79	7	15	5.00	2025-06-02	Sprawdzian
4799	79	7	15	5.00	2025-03-31	Prezentacja
4800	79	7	15	6.00	2025-03-17	Prezentacja
4801	79	7	15	6.00	2025-05-05	Prezentacja
4802	79	7	15	4.00	2025-05-19	Kartkówka
4803	79	7	15	4.00	2025-04-25	Praca klasowa
4804	79	10	8	3.00	2025-04-26	Sprawdzian
4805	79	10	8	3.00	2025-03-23	Quiz
4806	79	10	8	6.00	2025-05-27	Kartkówka
4807	79	10	8	5.00	2025-04-16	Sprawdzian
4808	79	10	8	5.00	2025-04-01	Quiz
4809	79	10	8	4.00	2025-05-23	Odpowiedź ustna
4810	79	14	15	5.00	2025-04-04	Aktywność
4811	79	14	15	5.00	2025-04-23	Aktywność
4812	79	14	15	6.00	2025-04-22	Odpowiedź ustna
4813	79	14	15	3.00	2025-03-30	Praca klasowa
4814	80	5	1	5.00	2025-03-29	Praca domowa
4815	80	5	1	3.00	2025-05-15	Kartkówka
4816	80	5	1	5.00	2025-03-21	Projekt
4817	80	12	4	6.00	2025-03-23	Odpowiedź ustna
4818	80	12	4	6.00	2025-04-05	Kartkówka
4819	80	12	4	3.00	2025-03-28	Odpowiedź ustna
4820	80	12	4	6.00	2025-04-17	Odpowiedź ustna
4821	80	12	4	4.00	2025-05-13	Sprawdzian
4822	80	7	10	5.00	2025-03-14	Prezentacja
4823	80	7	10	5.00	2025-04-15	Projekt
4824	80	7	10	5.00	2025-04-22	Projekt
4825	80	7	10	3.00	2025-05-08	Test
4826	80	7	10	4.00	2025-06-05	Aktywność
4827	80	7	10	4.00	2025-05-06	Odpowiedź ustna
4828	80	7	10	4.00	2025-03-17	Praca klasowa
4829	80	7	10	5.00	2025-05-22	Praca domowa
4830	80	14	4	4.00	2025-03-23	Sprawdzian
4831	80	14	4	5.00	2025-04-13	Aktywność
4832	80	14	4	4.00	2025-04-28	Test
4833	80	14	4	4.00	2025-06-01	Test
4834	80	14	4	5.00	2025-05-10	Praca klasowa
4835	80	14	4	5.00	2025-04-18	Praca domowa
4836	80	4	1	4.00	2025-04-04	Quiz
4837	80	4	1	3.00	2025-03-21	Test
4838	80	4	1	6.00	2025-05-13	Prezentacja
4839	80	4	1	5.00	2025-05-09	Praca klasowa
4840	80	4	1	6.00	2025-04-06	Projekt
4841	80	4	1	3.00	2025-04-11	Quiz
4842	80	4	1	5.00	2025-04-05	Sprawdzian
4843	80	4	1	3.00	2025-05-28	Prezentacja
4844	80	3	10	5.00	2025-04-11	Projekt
4845	80	3	10	3.00	2025-04-01	Prezentacja
4846	80	3	10	4.00	2025-04-19	Aktywność
4847	80	3	10	6.00	2025-05-01	Quiz
4848	80	3	10	6.00	2025-03-15	Projekt
4849	80	3	10	3.00	2025-04-20	Quiz
4850	80	7	15	4.00	2025-05-14	Praca klasowa
4851	80	7	15	5.00	2025-03-13	Aktywność
4852	80	7	15	6.00	2025-05-08	Prezentacja
4853	80	7	15	4.00	2025-03-23	Odpowiedź ustna
4854	80	7	15	4.00	2025-03-13	Prezentacja
4855	80	7	15	5.00	2025-04-21	Projekt
4856	80	7	15	3.00	2025-05-20	Test
4857	80	10	8	3.00	2025-04-11	Projekt
4858	80	10	8	5.00	2025-05-28	Prezentacja
4859	80	10	8	5.00	2025-05-23	Sprawdzian
4860	80	10	8	5.00	2025-03-16	Kartkówka
4861	80	10	8	4.00	2025-04-28	Praca klasowa
4862	80	10	8	5.00	2025-03-11	Praca domowa
4863	80	14	15	5.00	2025-06-02	Sprawdzian
4864	80	14	15	6.00	2025-04-18	Test
4865	80	14	15	3.00	2025-06-06	Praca domowa
4866	80	14	15	4.00	2025-04-24	Sprawdzian
4867	81	14	7	5.00	2025-03-23	Praca domowa
4868	81	14	7	6.00	2025-06-04	Praca domowa
4869	81	14	7	6.00	2025-05-06	Odpowiedź ustna
4870	81	14	7	4.00	2025-04-23	Praca klasowa
4871	81	14	7	6.00	2025-04-13	Projekt
4872	81	14	7	4.00	2025-04-07	Praca domowa
4873	81	14	7	5.00	2025-04-28	Test
4874	81	14	7	4.00	2025-04-19	Test
4875	81	2	12	6.00	2025-03-19	Odpowiedź ustna
4876	81	2	12	5.00	2025-04-30	Prezentacja
4877	81	2	12	5.00	2025-03-23	Kartkówka
4878	81	2	12	4.00	2025-04-28	Projekt
4879	81	2	12	5.00	2025-05-03	Test
4880	81	2	12	5.00	2025-05-23	Odpowiedź ustna
4881	81	2	12	6.00	2025-05-01	Projekt
4882	81	2	12	5.00	2025-04-22	Prezentacja
4883	81	7	15	5.00	2025-05-04	Quiz
4884	81	7	15	6.00	2025-03-24	Projekt
4885	81	7	15	6.00	2025-03-17	Prezentacja
4886	81	7	15	5.00	2025-05-16	Praca domowa
4887	81	7	15	6.00	2025-04-03	Odpowiedź ustna
4888	81	7	15	4.00	2025-04-09	Sprawdzian
4889	81	7	15	4.00	2025-05-31	Praca klasowa
4890	81	7	15	3.00	2025-05-11	Projekt
4891	81	14	13	6.00	2025-05-11	Projekt
4892	81	14	13	5.00	2025-05-03	Aktywność
4893	81	14	13	3.00	2025-04-09	Praca klasowa
4894	81	14	13	4.00	2025-06-05	Praca klasowa
4895	81	8	13	4.00	2025-04-15	Quiz
4896	81	8	13	6.00	2025-05-23	Kartkówka
4897	81	8	13	6.00	2025-06-02	Test
4898	81	8	13	3.00	2025-05-10	Sprawdzian
4899	81	8	13	4.00	2025-03-20	Test
4900	81	8	13	6.00	2025-05-24	Sprawdzian
4901	81	7	10	4.00	2025-05-03	Aktywność
4902	81	7	10	6.00	2025-04-24	Projekt
4903	81	7	10	4.00	2025-04-02	Projekt
4904	81	7	10	5.00	2025-04-01	Sprawdzian
4905	81	7	10	5.00	2025-04-23	Aktywność
4906	81	7	10	6.00	2025-03-12	Praca klasowa
4907	81	3	10	5.00	2025-03-22	Aktywność
4908	81	3	10	5.00	2025-04-20	Aktywność
4909	81	3	10	2.00	2025-05-24	Odpowiedź ustna
4910	81	3	10	6.00	2025-04-20	Praca domowa
4911	81	3	10	5.00	2025-04-02	Quiz
4912	81	11	12	3.00	2025-03-31	Test
4913	81	11	12	6.00	2025-04-20	Prezentacja
4914	81	11	12	3.00	2025-04-05	Kartkówka
4915	81	14	15	5.00	2025-04-01	Kartkówka
4916	81	14	15	6.00	2025-04-14	Quiz
4917	81	14	15	6.00	2025-04-28	Odpowiedź ustna
4918	81	14	15	4.00	2025-05-26	Prezentacja
4919	81	14	15	5.00	2025-05-08	Odpowiedź ustna
4920	82	14	7	5.00	2025-04-28	Test
4921	82	14	7	4.00	2025-04-17	Quiz
4922	82	14	7	5.00	2025-03-24	Sprawdzian
4923	82	2	12	5.00	2025-04-15	Praca domowa
4924	82	2	12	5.00	2025-04-10	Kartkówka
4925	82	2	12	3.00	2025-04-10	Test
4926	82	2	12	3.00	2025-03-12	Odpowiedź ustna
4927	82	2	12	4.00	2025-03-15	Praca domowa
4928	82	2	12	6.00	2025-05-14	Odpowiedź ustna
4929	82	2	12	4.00	2025-03-22	Test
4930	82	2	12	4.00	2025-05-01	Test
4931	82	7	15	4.00	2025-05-26	Test
4932	82	7	15	4.00	2025-05-12	Praca domowa
4933	82	7	15	6.00	2025-05-09	Odpowiedź ustna
4934	82	7	15	2.00	2025-04-22	Sprawdzian
4935	82	14	13	3.00	2025-04-29	Sprawdzian
4936	82	14	13	5.00	2025-06-06	Projekt
4937	82	14	13	5.00	2025-04-05	Praca domowa
4938	82	14	13	5.00	2025-03-29	Aktywność
4939	82	14	13	3.00	2025-04-21	Sprawdzian
4940	82	8	13	2.00	2025-05-24	Kartkówka
4941	82	8	13	5.00	2025-04-19	Aktywność
4942	82	8	13	3.00	2025-03-17	Sprawdzian
4943	82	8	13	5.00	2025-05-26	Aktywność
4944	82	8	13	4.00	2025-03-25	Quiz
4945	82	8	13	6.00	2025-05-21	Sprawdzian
4946	82	8	13	5.00	2025-04-10	Odpowiedź ustna
4947	82	8	13	4.00	2025-03-20	Praca domowa
4948	82	7	10	4.00	2025-04-02	Test
4949	82	7	10	4.00	2025-03-24	Test
4950	82	7	10	5.00	2025-04-15	Test
4951	82	7	10	6.00	2025-04-09	Odpowiedź ustna
4952	82	7	10	5.00	2025-05-12	Praca domowa
4953	82	3	10	3.00	2025-04-11	Quiz
4954	82	3	10	5.00	2025-04-07	Projekt
4955	82	3	10	6.00	2025-03-18	Prezentacja
4956	82	3	10	4.00	2025-05-30	Kartkówka
4957	82	11	12	5.00	2025-05-05	Aktywność
4958	82	11	12	5.00	2025-05-26	Test
4959	82	11	12	4.00	2025-04-30	Projekt
4960	82	11	12	5.00	2025-04-23	Kartkówka
4961	82	14	15	5.00	2025-03-26	Projekt
4962	82	14	15	5.00	2025-04-11	Praca klasowa
4963	82	14	15	5.00	2025-06-07	Projekt
4964	82	14	15	5.00	2025-03-10	Praca domowa
4965	83	14	7	4.00	2025-03-19	Projekt
4966	83	14	7	5.00	2025-06-06	Quiz
4967	83	14	7	5.00	2025-03-19	Kartkówka
4968	83	14	7	5.00	2025-03-15	Projekt
4969	83	2	12	1.00	2025-04-04	Aktywność
4970	83	2	12	2.00	2025-04-03	Aktywność
4971	83	2	12	5.00	2025-04-10	Projekt
4972	83	2	12	3.00	2025-05-05	Prezentacja
4973	83	2	12	4.00	2025-04-25	Praca domowa
4974	83	7	15	4.00	2025-04-28	Projekt
4975	83	7	15	5.00	2025-03-30	Praca domowa
4976	83	7	15	3.00	2025-04-28	Aktywność
4977	83	7	15	2.00	2025-04-13	Projekt
4978	83	7	15	5.00	2025-03-21	Praca domowa
4979	83	7	15	2.00	2025-04-10	Odpowiedź ustna
4980	83	14	13	5.00	2025-05-08	Prezentacja
4981	83	14	13	3.00	2025-05-13	Kartkówka
4982	83	14	13	3.00	2025-04-16	Praca klasowa
4983	83	14	13	4.00	2025-04-27	Prezentacja
4984	83	14	13	3.00	2025-06-04	Praca klasowa
4985	83	14	13	5.00	2025-05-02	Praca klasowa
4986	83	14	13	3.00	2025-04-02	Praca klasowa
4987	83	8	13	4.00	2025-04-18	Prezentacja
4988	83	8	13	3.00	2025-06-06	Projekt
4989	83	8	13	5.00	2025-05-25	Quiz
4990	83	7	10	4.00	2025-05-31	Quiz
4991	83	7	10	6.00	2025-04-18	Kartkówka
4992	83	7	10	6.00	2025-04-17	Aktywność
4993	83	7	10	3.00	2025-05-18	Prezentacja
4994	83	7	10	3.00	2025-05-06	Praca domowa
4995	83	7	10	5.00	2025-06-04	Kartkówka
4996	83	3	10	3.00	2025-04-04	Praca domowa
4997	83	3	10	3.00	2025-03-18	Test
4998	83	3	10	5.00	2025-03-25	Odpowiedź ustna
4999	83	11	12	5.00	2025-04-23	Kartkówka
5000	83	11	12	5.00	2025-04-16	Sprawdzian
5001	83	11	12	6.00	2025-03-26	Praca domowa
5002	83	11	12	3.00	2025-05-22	Projekt
5003	83	11	12	3.00	2025-03-22	Projekt
5004	83	11	12	4.00	2025-03-18	Quiz
5005	83	14	15	3.00	2025-03-20	Quiz
5006	83	14	15	5.00	2025-03-22	Quiz
5007	83	14	15	5.00	2025-06-01	Praca domowa
5008	84	14	7	3.00	2025-05-30	Aktywność
5009	84	14	7	3.00	2025-05-24	Praca klasowa
5010	84	14	7	5.00	2025-03-31	Aktywność
5011	84	2	12	4.00	2025-04-30	Kartkówka
5012	84	2	12	4.00	2025-05-09	Test
5013	84	2	12	5.00	2025-05-10	Praca domowa
5014	84	2	12	5.00	2025-05-28	Praca domowa
5015	84	2	12	5.00	2025-04-03	Quiz
5016	84	2	12	3.00	2025-03-28	Quiz
5017	84	7	15	5.00	2025-04-07	Test
5018	84	7	15	4.00	2025-05-16	Quiz
5019	84	7	15	4.00	2025-05-02	Test
5020	84	7	15	4.00	2025-04-26	Sprawdzian
5021	84	7	15	6.00	2025-04-17	Odpowiedź ustna
5022	84	7	15	5.00	2025-04-24	Odpowiedź ustna
5023	84	7	15	6.00	2025-05-09	Praca klasowa
5024	84	14	13	5.00	2025-04-06	Praca klasowa
5025	84	14	13	6.00	2025-04-18	Kartkówka
5026	84	14	13	5.00	2025-05-31	Test
5027	84	14	13	5.00	2025-03-17	Kartkówka
5028	84	14	13	5.00	2025-04-24	Odpowiedź ustna
5029	84	8	13	6.00	2025-04-03	Projekt
5030	84	8	13	5.00	2025-04-19	Praca domowa
5031	84	8	13	6.00	2025-05-07	Quiz
5032	84	8	13	4.00	2025-06-07	Projekt
5033	84	8	13	4.00	2025-05-24	Prezentacja
5034	84	8	13	4.00	2025-05-23	Kartkówka
5035	84	8	13	5.00	2025-04-09	Kartkówka
5036	84	7	10	5.00	2025-03-10	Quiz
5037	84	7	10	6.00	2025-03-28	Projekt
5038	84	7	10	5.00	2025-05-14	Odpowiedź ustna
5039	84	7	10	5.00	2025-04-09	Kartkówka
5040	84	7	10	5.00	2025-04-30	Projekt
5041	84	7	10	6.00	2025-05-30	Aktywność
5042	84	7	10	5.00	2025-05-12	Prezentacja
5043	84	3	10	6.00	2025-04-17	Kartkówka
5044	84	3	10	5.00	2025-04-18	Test
5045	84	3	10	5.00	2025-05-19	Odpowiedź ustna
5046	84	3	10	6.00	2025-03-23	Test
5047	84	11	12	4.00	2025-06-03	Praca klasowa
5048	84	11	12	5.00	2025-05-28	Aktywność
5049	84	11	12	5.00	2025-04-09	Test
5050	84	11	12	2.00	2025-04-30	Odpowiedź ustna
5051	84	11	12	5.00	2025-03-17	Praca klasowa
5052	84	11	12	6.00	2025-05-19	Praca klasowa
5053	84	11	12	3.00	2025-03-29	Projekt
5054	84	11	12	5.00	2025-03-23	Quiz
5055	84	14	15	5.00	2025-03-11	Projekt
5056	84	14	15	5.00	2025-06-01	Projekt
5057	84	14	15	2.00	2025-04-27	Praca domowa
5058	84	14	15	4.00	2025-03-13	Quiz
5059	85	14	7	6.00	2025-05-22	Odpowiedź ustna
5060	85	14	7	5.00	2025-04-06	Aktywność
5061	85	14	7	5.00	2025-04-12	Praca domowa
5062	85	14	7	3.00	2025-04-09	Praca domowa
5063	85	14	7	4.00	2025-04-12	Quiz
5064	85	14	7	4.00	2025-04-30	Projekt
5065	85	14	7	3.00	2025-05-31	Projekt
5066	85	14	7	4.00	2025-04-08	Prezentacja
5067	85	2	12	5.00	2025-03-15	Praca domowa
5068	85	2	12	5.00	2025-05-22	Quiz
5069	85	2	12	5.00	2025-03-19	Aktywność
5070	85	2	12	4.00	2025-04-14	Prezentacja
5071	85	2	12	4.00	2025-03-13	Sprawdzian
5072	85	2	12	2.00	2025-03-26	Prezentacja
5073	85	2	12	3.00	2025-03-26	Praca domowa
5074	85	7	15	5.00	2025-03-27	Prezentacja
5075	85	7	15	2.00	2025-03-25	Praca klasowa
5076	85	7	15	4.00	2025-05-31	Prezentacja
5077	85	7	15	2.00	2025-03-25	Projekt
5078	85	14	13	5.00	2025-05-06	Kartkówka
5079	85	14	13	6.00	2025-03-30	Sprawdzian
5080	85	14	13	4.00	2025-04-28	Kartkówka
5081	85	14	13	5.00	2025-04-12	Praca domowa
5082	85	14	13	6.00	2025-04-27	Praca klasowa
5083	85	14	13	3.00	2025-03-17	Aktywność
5084	85	14	13	2.00	2025-04-30	Quiz
5085	85	8	13	4.00	2025-05-02	Praca domowa
5086	85	8	13	4.00	2025-06-05	Praca domowa
5087	85	8	13	5.00	2025-03-19	Praca domowa
5088	85	7	10	4.00	2025-05-28	Kartkówka
5089	85	7	10	4.00	2025-05-31	Odpowiedź ustna
5090	85	7	10	6.00	2025-05-05	Sprawdzian
5091	85	7	10	5.00	2025-04-04	Projekt
5092	85	7	10	3.00	2025-05-29	Odpowiedź ustna
5093	85	3	10	6.00	2025-05-12	Test
5094	85	3	10	4.00	2025-04-21	Praca domowa
5095	85	3	10	4.00	2025-04-07	Test
5096	85	3	10	6.00	2025-03-26	Kartkówka
5097	85	3	10	5.00	2025-05-08	Praca domowa
5098	85	11	12	5.00	2025-05-11	Praca domowa
5099	85	11	12	3.00	2025-03-20	Kartkówka
5100	85	11	12	5.00	2025-03-12	Kartkówka
5101	85	11	12	6.00	2025-05-07	Test
5102	85	11	12	2.00	2025-04-17	Praca klasowa
5103	85	14	15	3.00	2025-03-30	Quiz
5104	85	14	15	1.00	2025-05-13	Prezentacja
5105	85	14	15	4.00	2025-05-23	Praca domowa
5106	85	14	15	2.00	2025-05-17	Praca klasowa
5107	85	14	15	3.00	2025-05-23	Aktywność
5108	85	14	15	5.00	2025-05-20	Test
5109	86	14	7	5.00	2025-03-23	Prezentacja
5110	86	14	7	6.00	2025-03-14	Aktywność
5111	86	14	7	5.00	2025-03-13	Sprawdzian
5112	86	14	7	3.00	2025-05-12	Praca domowa
5113	86	14	7	4.00	2025-05-18	Praca klasowa
5114	86	14	7	5.00	2025-06-06	Sprawdzian
5115	86	14	7	4.00	2025-05-01	Odpowiedź ustna
5116	86	14	7	4.00	2025-04-30	Quiz
5117	86	2	12	6.00	2025-04-11	Projekt
5118	86	2	12	5.00	2025-05-26	Praca domowa
5119	86	2	12	4.00	2025-04-10	Kartkówka
5120	86	2	12	1.00	2025-04-08	Quiz
5121	86	2	12	4.00	2025-05-15	Odpowiedź ustna
5122	86	7	15	5.00	2025-03-29	Aktywność
5123	86	7	15	5.00	2025-03-27	Sprawdzian
5124	86	7	15	4.00	2025-06-07	Aktywność
5125	86	7	15	3.00	2025-05-05	Kartkówka
5126	86	7	15	6.00	2025-05-03	Quiz
5127	86	14	13	5.00	2025-03-10	Quiz
5128	86	14	13	5.00	2025-03-28	Test
5129	86	14	13	5.00	2025-03-26	Prezentacja
5130	86	8	13	5.00	2025-05-29	Kartkówka
5131	86	8	13	4.00	2025-05-21	Kartkówka
5132	86	8	13	5.00	2025-05-24	Praca domowa
5133	86	8	13	3.00	2025-05-06	Praca domowa
5134	86	8	13	2.00	2025-05-13	Praca klasowa
5135	86	7	10	4.00	2025-05-11	Sprawdzian
5136	86	7	10	3.00	2025-03-27	Odpowiedź ustna
5137	86	7	10	5.00	2025-04-28	Praca klasowa
5138	86	7	10	5.00	2025-04-04	Praca domowa
5139	86	7	10	6.00	2025-03-23	Praca klasowa
5140	86	3	10	3.00	2025-05-26	Aktywność
5141	86	3	10	4.00	2025-04-11	Test
5142	86	3	10	5.00	2025-04-03	Odpowiedź ustna
5143	86	3	10	5.00	2025-03-14	Odpowiedź ustna
5144	86	3	10	4.00	2025-06-05	Odpowiedź ustna
5145	86	3	10	6.00	2025-04-07	Prezentacja
5146	86	3	10	5.00	2025-05-03	Projekt
5147	86	11	12	4.00	2025-04-11	Sprawdzian
5148	86	11	12	3.00	2025-05-25	Praca domowa
5149	86	11	12	3.00	2025-05-23	Praca klasowa
5150	86	11	12	4.00	2025-03-30	Praca domowa
5151	86	11	12	6.00	2025-04-15	Quiz
5152	86	14	15	5.00	2025-06-03	Praca klasowa
5153	86	14	15	5.00	2025-04-23	Test
5154	86	14	15	5.00	2025-03-16	Kartkówka
5155	86	14	15	3.00	2025-05-31	Kartkówka
5156	87	14	7	5.00	2025-03-30	Aktywność
5157	87	14	7	6.00	2025-04-13	Projekt
5158	87	14	7	5.00	2025-03-10	Kartkówka
5159	87	14	7	5.00	2025-05-15	Praca domowa
5160	87	14	7	3.00	2025-04-27	Kartkówka
5161	87	14	7	4.00	2025-03-27	Praca klasowa
5162	87	14	7	3.00	2025-03-22	Odpowiedź ustna
5163	87	14	7	4.00	2025-05-30	Quiz
5164	87	2	12	5.00	2025-05-14	Praca domowa
5165	87	2	12	5.00	2025-06-07	Aktywność
5166	87	2	12	2.00	2025-05-31	Prezentacja
5167	87	2	12	5.00	2025-03-29	Test
5168	87	2	12	3.00	2025-04-04	Prezentacja
5169	87	2	12	4.00	2025-03-17	Aktywność
5170	87	2	12	1.00	2025-05-24	Odpowiedź ustna
5171	87	2	12	6.00	2025-05-18	Aktywność
5172	87	7	15	3.00	2025-04-20	Test
5173	87	7	15	5.00	2025-05-21	Quiz
5174	87	7	15	4.00	2025-04-07	Kartkówka
5175	87	7	15	5.00	2025-05-11	Projekt
5176	87	14	13	3.00	2025-04-29	Projekt
5177	87	14	13	6.00	2025-05-31	Sprawdzian
5178	87	14	13	5.00	2025-05-09	Kartkówka
5179	87	14	13	5.00	2025-04-18	Aktywność
5180	87	14	13	6.00	2025-03-26	Test
5181	87	14	13	5.00	2025-04-12	Aktywność
5182	87	8	13	5.00	2025-05-10	Praca domowa
5183	87	8	13	2.00	2025-05-06	Projekt
5184	87	8	13	3.00	2025-03-14	Praca klasowa
5185	87	7	10	3.00	2025-04-19	Aktywność
5186	87	7	10	4.00	2025-04-30	Praca domowa
5187	87	7	10	5.00	2025-03-21	Praca klasowa
5188	87	3	10	5.00	2025-03-27	Praca domowa
5189	87	3	10	5.00	2025-04-18	Kartkówka
5190	87	3	10	5.00	2025-04-09	Quiz
5191	87	3	10	2.00	2025-05-12	Prezentacja
5192	87	3	10	5.00	2025-04-19	Projekt
5193	87	11	12	5.00	2025-05-26	Odpowiedź ustna
5194	87	11	12	6.00	2025-05-03	Praca klasowa
5195	87	11	12	5.00	2025-03-24	Projekt
5196	87	11	12	5.00	2025-03-18	Kartkówka
5197	87	11	12	4.00	2025-03-25	Aktywność
5198	87	11	12	5.00	2025-03-25	Praca klasowa
5199	87	11	12	3.00	2025-04-20	Aktywność
5200	87	14	15	5.00	2025-06-01	Test
5201	87	14	15	2.00	2025-04-20	Kartkówka
5202	87	14	15	4.00	2025-06-03	Odpowiedź ustna
5203	88	14	7	6.00	2025-04-17	Prezentacja
5204	88	14	7	2.00	2025-05-07	Aktywność
5205	88	14	7	3.00	2025-03-26	Kartkówka
5206	88	2	12	5.00	2025-05-17	Test
5207	88	2	12	4.00	2025-03-17	Prezentacja
5208	88	2	12	3.00	2025-06-03	Quiz
5209	88	2	12	3.00	2025-06-02	Odpowiedź ustna
5210	88	2	12	6.00	2025-05-24	Odpowiedź ustna
5211	88	2	12	4.00	2025-05-22	Prezentacja
5212	88	2	12	6.00	2025-05-12	Praca klasowa
5213	88	7	15	4.00	2025-03-24	Praca klasowa
5214	88	7	15	2.00	2025-04-11	Quiz
5215	88	7	15	5.00	2025-04-07	Prezentacja
5216	88	7	15	5.00	2025-05-02	Kartkówka
5217	88	7	15	5.00	2025-04-03	Test
5218	88	7	15	5.00	2025-05-16	Sprawdzian
5219	88	7	15	5.00	2025-04-18	Sprawdzian
5220	88	7	15	3.00	2025-05-29	Kartkówka
5221	88	14	13	5.00	2025-04-30	Test
5222	88	14	13	5.00	2025-03-15	Projekt
5223	88	14	13	6.00	2025-04-23	Odpowiedź ustna
5224	88	14	13	4.00	2025-05-29	Sprawdzian
5225	88	14	13	3.00	2025-05-10	Praca klasowa
5226	88	14	13	5.00	2025-03-31	Aktywność
5227	88	14	13	6.00	2025-05-07	Kartkówka
5228	88	14	13	5.00	2025-04-20	Sprawdzian
5229	88	8	13	4.00	2025-03-29	Praca klasowa
5230	88	8	13	3.00	2025-04-28	Praca domowa
5231	88	8	13	5.00	2025-05-31	Praca domowa
5232	88	8	13	3.00	2025-05-16	Praca klasowa
5233	88	8	13	6.00	2025-06-04	Kartkówka
5234	88	8	13	5.00	2025-04-10	Praca klasowa
5235	88	8	13	5.00	2025-04-07	Aktywność
5236	88	7	10	4.00	2025-03-12	Kartkówka
5237	88	7	10	4.00	2025-04-16	Sprawdzian
5238	88	7	10	6.00	2025-06-04	Praca klasowa
5239	88	7	10	4.00	2025-05-28	Sprawdzian
5240	88	7	10	3.00	2025-04-24	Quiz
5241	88	7	10	5.00	2025-04-28	Praca klasowa
5242	88	3	10	6.00	2025-04-28	Test
5243	88	3	10	5.00	2025-05-24	Sprawdzian
5244	88	3	10	5.00	2025-03-19	Sprawdzian
5245	88	3	10	3.00	2025-04-22	Aktywność
5246	88	3	10	3.00	2025-05-18	Test
5247	88	3	10	5.00	2025-04-07	Odpowiedź ustna
5248	88	11	12	6.00	2025-05-05	Aktywność
5249	88	11	12	6.00	2025-04-16	Praca domowa
5250	88	11	12	6.00	2025-03-25	Odpowiedź ustna
5251	88	11	12	3.00	2025-05-26	Quiz
5252	88	11	12	3.00	2025-03-25	Aktywność
5253	88	11	12	1.00	2025-05-16	Aktywność
5254	88	11	12	5.00	2025-04-19	Test
5255	88	11	12	5.00	2025-04-17	Praca klasowa
5256	88	14	15	6.00	2025-04-30	Prezentacja
5257	88	14	15	4.00	2025-03-18	Praca klasowa
5258	88	14	15	5.00	2025-05-16	Praca klasowa
5259	89	14	7	6.00	2025-05-15	Sprawdzian
5260	89	14	7	5.00	2025-04-28	Test
5261	89	14	7	3.00	2025-03-26	Test
5262	89	14	7	4.00	2025-03-11	Praca domowa
5263	89	14	7	4.00	2025-04-13	Test
5264	89	2	12	5.00	2025-05-31	Odpowiedź ustna
5265	89	2	12	5.00	2025-05-11	Projekt
5266	89	2	12	5.00	2025-06-04	Praca klasowa
5267	89	2	12	5.00	2025-04-08	Test
5268	89	2	12	3.00	2025-03-11	Prezentacja
5269	89	2	12	5.00	2025-05-22	Kartkówka
5270	89	2	12	6.00	2025-04-03	Sprawdzian
5271	89	2	12	5.00	2025-03-16	Projekt
5272	89	7	15	4.00	2025-05-31	Aktywność
5273	89	7	15	4.00	2025-05-12	Aktywność
5274	89	7	15	5.00	2025-03-28	Projekt
5275	89	7	15	4.00	2025-04-14	Prezentacja
5276	89	7	15	6.00	2025-03-10	Prezentacja
5277	89	14	13	6.00	2025-05-26	Test
5278	89	14	13	6.00	2025-05-23	Test
5279	89	14	13	5.00	2025-05-16	Praca klasowa
5280	89	14	13	4.00	2025-04-28	Praca klasowa
5281	89	14	13	5.00	2025-03-13	Test
5282	89	14	13	3.00	2025-03-26	Quiz
5283	89	14	13	6.00	2025-05-30	Odpowiedź ustna
5284	89	8	13	4.00	2025-06-04	Odpowiedź ustna
5285	89	8	13	5.00	2025-04-22	Kartkówka
5286	89	8	13	4.00	2025-04-08	Odpowiedź ustna
5287	89	8	13	4.00	2025-03-22	Projekt
5288	89	8	13	1.00	2025-06-05	Praca domowa
5289	89	7	10	4.00	2025-04-20	Projekt
5290	89	7	10	4.00	2025-04-02	Projekt
5291	89	7	10	4.00	2025-04-21	Praca klasowa
5292	89	7	10	4.00	2025-05-31	Projekt
5293	89	3	10	5.00	2025-03-25	Praca domowa
5294	89	3	10	5.00	2025-04-25	Test
5295	89	3	10	6.00	2025-03-14	Praca klasowa
5296	89	3	10	6.00	2025-03-12	Odpowiedź ustna
5297	89	3	10	5.00	2025-03-31	Prezentacja
5298	89	3	10	3.00	2025-04-12	Sprawdzian
5299	89	3	10	4.00	2025-05-18	Projekt
5300	89	3	10	5.00	2025-05-19	Projekt
5301	89	11	12	5.00	2025-03-12	Odpowiedź ustna
5302	89	11	12	5.00	2025-05-17	Praca domowa
5303	89	11	12	6.00	2025-04-30	Prezentacja
5304	89	14	15	4.00	2025-05-10	Prezentacja
5305	89	14	15	6.00	2025-03-29	Sprawdzian
5306	89	14	15	5.00	2025-03-29	Projekt
5307	89	14	15	4.00	2025-04-09	Test
5308	89	14	15	6.00	2025-04-10	Kartkówka
5309	90	14	7	5.00	2025-05-24	Test
5310	90	14	7	3.00	2025-05-22	Sprawdzian
5311	90	14	7	2.00	2025-05-03	Aktywność
5312	90	14	7	2.00	2025-05-13	Kartkówka
5313	90	14	7	5.00	2025-06-01	Kartkówka
5314	90	2	12	2.00	2025-05-17	Sprawdzian
5315	90	2	12	6.00	2025-05-11	Quiz
5316	90	2	12	2.00	2025-04-18	Kartkówka
5317	90	7	15	2.00	2025-04-03	Projekt
5318	90	7	15	4.00	2025-06-04	Kartkówka
5319	90	7	15	5.00	2025-04-22	Sprawdzian
5320	90	7	15	5.00	2025-05-22	Quiz
5321	90	7	15	5.00	2025-05-27	Prezentacja
5322	90	7	15	4.00	2025-05-17	Sprawdzian
5323	90	14	13	5.00	2025-05-03	Odpowiedź ustna
5324	90	14	13	6.00	2025-04-26	Sprawdzian
5325	90	14	13	5.00	2025-04-25	Odpowiedź ustna
5326	90	14	13	5.00	2025-03-23	Kartkówka
5327	90	14	13	3.00	2025-04-19	Kartkówka
5328	90	14	13	5.00	2025-04-15	Quiz
5329	90	8	13	5.00	2025-05-29	Kartkówka
5330	90	8	13	2.00	2025-05-24	Odpowiedź ustna
5331	90	8	13	4.00	2025-05-27	Kartkówka
5332	90	8	13	6.00	2025-04-30	Odpowiedź ustna
5333	90	8	13	5.00	2025-04-25	Sprawdzian
5334	90	8	13	4.00	2025-03-16	Prezentacja
5335	90	7	10	6.00	2025-05-02	Kartkówka
5336	90	7	10	6.00	2025-04-27	Sprawdzian
5337	90	7	10	3.00	2025-05-19	Aktywność
5338	90	7	10	6.00	2025-06-06	Sprawdzian
5339	90	3	10	5.00	2025-04-26	Projekt
5340	90	3	10	6.00	2025-03-22	Quiz
5341	90	3	10	6.00	2025-06-05	Prezentacja
5342	90	3	10	5.00	2025-04-20	Praca domowa
5343	90	3	10	4.00	2025-05-07	Projekt
5344	90	11	12	4.00	2025-03-19	Sprawdzian
5345	90	11	12	3.00	2025-04-03	Kartkówka
5346	90	11	12	5.00	2025-05-21	Kartkówka
5347	90	11	12	5.00	2025-04-18	Aktywność
5348	90	11	12	4.00	2025-04-22	Prezentacja
5349	90	11	12	5.00	2025-05-14	Kartkówka
5350	90	14	15	5.00	2025-03-13	Test
5351	90	14	15	6.00	2025-03-18	Odpowiedź ustna
5352	90	14	15	6.00	2025-03-16	Odpowiedź ustna
5353	90	14	15	6.00	2025-03-29	Quiz
5354	90	14	15	3.00	2025-05-01	Prezentacja
5355	90	14	15	5.00	2025-05-21	Test
5356	90	14	15	4.00	2025-04-28	Praca klasowa
5357	91	14	7	5.00	2025-03-16	Odpowiedź ustna
5358	91	14	7	5.00	2025-05-06	Aktywność
5359	91	14	7	5.00	2025-03-16	Sprawdzian
5360	91	14	7	5.00	2025-03-16	Quiz
5361	91	14	7	5.00	2025-04-29	Projekt
5362	91	14	7	6.00	2025-03-17	Prezentacja
5363	91	2	12	5.00	2025-05-27	Quiz
5364	91	2	12	6.00	2025-04-29	Odpowiedź ustna
5365	91	2	12	4.00	2025-05-08	Projekt
5366	91	2	12	4.00	2025-03-15	Quiz
5367	91	2	12	6.00	2025-03-21	Praca klasowa
5368	91	7	15	3.00	2025-03-27	Projekt
5369	91	7	15	5.00	2025-04-02	Test
5370	91	7	15	5.00	2025-04-24	Test
5371	91	7	15	6.00	2025-05-13	Praca klasowa
5372	91	14	13	3.00	2025-03-14	Projekt
5373	91	14	13	3.00	2025-03-13	Prezentacja
5374	91	14	13	6.00	2025-04-22	Aktywność
5375	91	14	13	4.00	2025-05-08	Quiz
5376	91	14	13	5.00	2025-05-05	Aktywność
5377	91	14	13	5.00	2025-06-05	Sprawdzian
5378	91	14	13	6.00	2025-05-01	Prezentacja
5379	91	8	13	2.00	2025-04-01	Praca domowa
5380	91	8	13	4.00	2025-03-19	Kartkówka
5381	91	8	13	6.00	2025-03-20	Praca klasowa
5382	91	8	13	6.00	2025-04-18	Kartkówka
5383	91	8	13	2.00	2025-03-30	Projekt
5384	91	8	13	5.00	2025-05-23	Praca domowa
5385	91	8	13	3.00	2025-03-27	Projekt
5386	91	7	10	5.00	2025-04-07	Praca klasowa
5387	91	7	10	5.00	2025-05-09	Kartkówka
5388	91	7	10	6.00	2025-05-22	Test
5389	91	7	10	5.00	2025-05-31	Prezentacja
5390	91	3	10	6.00	2025-04-15	Prezentacja
5391	91	3	10	6.00	2025-04-07	Sprawdzian
5392	91	3	10	3.00	2025-05-26	Kartkówka
5393	91	3	10	3.00	2025-03-17	Aktywność
5394	91	3	10	4.00	2025-06-01	Odpowiedź ustna
5395	91	3	10	4.00	2025-04-17	Quiz
5396	91	11	12	5.00	2025-04-29	Projekt
5397	91	11	12	6.00	2025-04-04	Kartkówka
5398	91	11	12	4.00	2025-05-09	Quiz
5399	91	11	12	3.00	2025-03-10	Prezentacja
5400	91	11	12	5.00	2025-04-30	Aktywność
5401	91	14	15	4.00	2025-04-13	Sprawdzian
5402	91	14	15	6.00	2025-05-29	Test
5403	91	14	15	3.00	2025-04-13	Odpowiedź ustna
5404	91	14	15	5.00	2025-05-29	Prezentacja
5405	91	14	15	1.00	2025-06-04	Kartkówka
5406	91	14	15	4.00	2025-04-10	Prezentacja
5407	91	14	15	5.00	2025-04-26	Test
5408	91	14	15	5.00	2025-03-26	Quiz
5409	92	14	7	4.00	2025-04-25	Test
5410	92	14	7	1.00	2025-04-28	Odpowiedź ustna
5411	92	14	7	6.00	2025-03-10	Projekt
5412	92	14	7	3.00	2025-04-15	Praca domowa
5413	92	14	7	6.00	2025-04-16	Kartkówka
5414	92	14	7	5.00	2025-03-17	Projekt
5415	92	2	12	5.00	2025-04-14	Test
5416	92	2	12	3.00	2025-04-19	Odpowiedź ustna
5417	92	2	12	5.00	2025-03-23	Odpowiedź ustna
5418	92	2	12	4.00	2025-04-14	Praca klasowa
5419	92	2	12	3.00	2025-05-29	Praca klasowa
5420	92	2	12	4.00	2025-05-22	Kartkówka
5421	92	2	12	3.00	2025-04-27	Prezentacja
5422	92	2	12	5.00	2025-05-18	Prezentacja
5423	92	7	15	4.00	2025-05-24	Kartkówka
5424	92	7	15	5.00	2025-05-16	Prezentacja
5425	92	7	15	5.00	2025-05-05	Projekt
5426	92	7	15	3.00	2025-04-27	Quiz
5427	92	7	15	5.00	2025-05-22	Sprawdzian
5428	92	7	15	5.00	2025-05-14	Quiz
5429	92	7	15	3.00	2025-04-24	Kartkówka
5430	92	7	15	5.00	2025-05-15	Aktywność
5431	92	14	13	2.00	2025-04-14	Quiz
5432	92	14	13	4.00	2025-04-11	Test
5433	92	14	13	4.00	2025-04-12	Praca domowa
5434	92	14	13	5.00	2025-06-03	Praca domowa
5435	92	8	13	5.00	2025-05-06	Prezentacja
5436	92	8	13	6.00	2025-04-29	Kartkówka
5437	92	8	13	3.00	2025-03-22	Quiz
5438	92	8	13	2.00	2025-04-29	Sprawdzian
5439	92	8	13	5.00	2025-05-02	Aktywność
5440	92	7	10	3.00	2025-03-19	Test
5441	92	7	10	5.00	2025-03-17	Kartkówka
5442	92	7	10	6.00	2025-05-21	Sprawdzian
5443	92	3	10	4.00	2025-05-14	Quiz
5444	92	3	10	4.00	2025-04-10	Praca klasowa
5445	92	3	10	4.00	2025-04-13	Odpowiedź ustna
5446	92	3	10	5.00	2025-04-05	Sprawdzian
5447	92	3	10	4.00	2025-04-09	Sprawdzian
5448	92	3	10	5.00	2025-04-27	Aktywność
5449	92	3	10	4.00	2025-04-26	Praca domowa
5450	92	3	10	5.00	2025-05-21	Praca klasowa
5451	92	11	12	4.00	2025-03-30	Aktywność
5452	92	11	12	5.00	2025-04-17	Praca klasowa
5453	92	11	12	5.00	2025-04-05	Aktywność
5454	92	11	12	1.00	2025-05-19	Projekt
5455	92	11	12	4.00	2025-05-14	Aktywność
5456	92	11	12	3.00	2025-05-31	Quiz
5457	92	11	12	5.00	2025-03-16	Aktywność
5458	92	11	12	6.00	2025-06-03	Aktywność
5459	92	14	15	6.00	2025-06-02	Projekt
5460	92	14	15	5.00	2025-04-07	Praca domowa
5461	92	14	15	5.00	2025-03-13	Test
5462	92	14	15	5.00	2025-05-31	Kartkówka
5463	92	14	15	5.00	2025-06-05	Kartkówka
5464	92	14	15	5.00	2025-04-20	Projekt
5465	93	14	7	6.00	2025-03-11	Quiz
5466	93	14	7	4.00	2025-05-03	Sprawdzian
5467	93	14	7	6.00	2025-03-27	Kartkówka
5468	93	2	12	2.00	2025-05-17	Kartkówka
5469	93	2	12	5.00	2025-04-06	Odpowiedź ustna
5470	93	2	12	3.00	2025-04-04	Kartkówka
5471	93	2	12	3.00	2025-04-20	Odpowiedź ustna
5472	93	2	12	5.00	2025-04-27	Prezentacja
5473	93	2	12	3.00	2025-04-01	Praca domowa
5474	93	7	15	6.00	2025-06-02	Odpowiedź ustna
5475	93	7	15	3.00	2025-05-22	Projekt
5476	93	7	15	5.00	2025-05-12	Quiz
5477	93	7	15	5.00	2025-04-21	Kartkówka
5478	93	7	15	3.00	2025-05-05	Sprawdzian
5479	93	7	15	4.00	2025-03-12	Odpowiedź ustna
5480	93	14	13	5.00	2025-03-29	Odpowiedź ustna
5481	93	14	13	4.00	2025-05-22	Quiz
5482	93	14	13	5.00	2025-04-12	Test
5483	93	14	13	6.00	2025-04-11	Projekt
5484	93	14	13	5.00	2025-04-10	Quiz
5485	93	14	13	3.00	2025-03-14	Projekt
5486	93	8	13	1.00	2025-05-31	Sprawdzian
5487	93	8	13	5.00	2025-04-26	Odpowiedź ustna
5488	93	8	13	3.00	2025-05-14	Quiz
5489	93	8	13	4.00	2025-05-06	Praca domowa
5490	93	8	13	3.00	2025-03-17	Quiz
5491	93	7	10	6.00	2025-04-17	Quiz
5492	93	7	10	5.00	2025-05-20	Odpowiedź ustna
5493	93	7	10	2.00	2025-04-07	Test
5494	93	7	10	4.00	2025-03-28	Kartkówka
5495	93	3	10	4.00	2025-03-15	Prezentacja
5496	93	3	10	6.00	2025-03-27	Quiz
5497	93	3	10	3.00	2025-04-08	Quiz
5498	93	3	10	3.00	2025-05-17	Praca klasowa
5499	93	3	10	6.00	2025-05-21	Sprawdzian
5500	93	11	12	4.00	2025-03-14	Test
5501	93	11	12	4.00	2025-05-27	Projekt
5502	93	11	12	4.00	2025-06-01	Praca klasowa
5503	93	11	12	3.00	2025-05-12	Kartkówka
5504	93	11	12	4.00	2025-05-05	Projekt
5505	93	11	12	6.00	2025-03-26	Praca klasowa
5506	93	11	12	4.00	2025-05-17	Praca klasowa
5507	93	14	15	5.00	2025-04-01	Kartkówka
5508	93	14	15	6.00	2025-03-21	Kartkówka
5509	93	14	15	3.00	2025-05-26	Quiz
5510	93	14	15	1.00	2025-04-01	Prezentacja
5511	94	14	7	4.00	2025-04-11	Projekt
5512	94	14	7	5.00	2025-04-14	Praca domowa
5513	94	14	7	5.00	2025-05-28	Test
5514	94	14	7	1.00	2025-03-14	Prezentacja
5515	94	14	7	4.00	2025-05-18	Praca domowa
5516	94	2	12	4.00	2025-03-26	Praca klasowa
5517	94	2	12	5.00	2025-04-16	Praca domowa
5518	94	2	12	5.00	2025-05-13	Quiz
5519	94	2	12	6.00	2025-05-10	Prezentacja
5520	94	2	12	3.00	2025-05-28	Praca klasowa
5521	94	2	12	5.00	2025-04-09	Praca domowa
5522	94	2	12	5.00	2025-06-01	Kartkówka
5523	94	2	12	4.00	2025-06-03	Quiz
5524	94	7	15	4.00	2025-05-09	Projekt
5525	94	7	15	3.00	2025-04-20	Kartkówka
5526	94	7	15	4.00	2025-04-16	Sprawdzian
5527	94	7	15	6.00	2025-03-17	Projekt
5528	94	7	15	5.00	2025-05-01	Praca klasowa
5529	94	7	15	5.00	2025-06-05	Odpowiedź ustna
5530	94	7	15	5.00	2025-05-12	Sprawdzian
5531	94	7	15	6.00	2025-04-21	Aktywność
5532	94	14	13	4.00	2025-03-14	Aktywność
5533	94	14	13	4.00	2025-04-01	Kartkówka
5534	94	14	13	4.00	2025-04-26	Test
5535	94	14	13	2.00	2025-05-06	Aktywność
5536	94	8	13	1.00	2025-04-21	Sprawdzian
5537	94	8	13	5.00	2025-05-10	Prezentacja
5538	94	8	13	6.00	2025-04-15	Kartkówka
5539	94	8	13	3.00	2025-03-25	Aktywność
5540	94	8	13	4.00	2025-05-20	Quiz
5541	94	8	13	6.00	2025-03-19	Praca domowa
5542	94	8	13	6.00	2025-05-14	Sprawdzian
5543	94	7	10	5.00	2025-03-12	Quiz
5544	94	7	10	4.00	2025-04-04	Quiz
5545	94	7	10	2.00	2025-03-30	Projekt
5546	94	3	10	3.00	2025-05-15	Prezentacja
5547	94	3	10	5.00	2025-03-18	Quiz
5548	94	3	10	5.00	2025-03-19	Projekt
5549	94	3	10	4.00	2025-05-13	Test
5550	94	3	10	3.00	2025-05-28	Sprawdzian
5551	94	3	10	2.00	2025-03-31	Sprawdzian
5552	94	11	12	3.00	2025-04-08	Prezentacja
5553	94	11	12	4.00	2025-04-06	Projekt
5554	94	11	12	5.00	2025-04-22	Kartkówka
5555	94	14	15	1.00	2025-05-18	Quiz
5556	94	14	15	5.00	2025-03-18	Kartkówka
5557	94	14	15	5.00	2025-04-19	Odpowiedź ustna
5558	94	14	15	5.00	2025-04-19	Praca klasowa
5559	94	14	15	4.00	2025-06-06	Sprawdzian
5560	94	14	15	4.00	2025-05-10	Kartkówka
5561	95	14	7	4.00	2025-05-09	Test
5562	95	14	7	4.00	2025-06-04	Test
5563	95	14	7	5.00	2025-03-11	Test
5564	95	14	7	6.00	2025-04-24	Praca domowa
5565	95	14	7	5.00	2025-06-06	Test
5566	95	14	7	6.00	2025-06-05	Aktywność
5567	95	2	12	4.00	2025-05-30	Sprawdzian
5568	95	2	12	3.00	2025-06-01	Praca domowa
5569	95	2	12	4.00	2025-04-05	Praca domowa
5570	95	2	12	5.00	2025-05-03	Praca domowa
5571	95	2	12	4.00	2025-05-15	Test
5572	95	2	12	5.00	2025-04-13	Sprawdzian
5573	95	2	12	5.00	2025-04-09	Quiz
5574	95	2	12	4.00	2025-03-30	Odpowiedź ustna
5575	95	7	15	6.00	2025-04-18	Projekt
5576	95	7	15	4.00	2025-03-25	Quiz
5577	95	7	15	5.00	2025-04-30	Prezentacja
5578	95	7	15	5.00	2025-05-07	Test
5579	95	7	15	5.00	2025-06-06	Kartkówka
5580	95	14	13	4.00	2025-03-26	Praca domowa
5581	95	14	13	5.00	2025-04-06	Quiz
5582	95	14	13	4.00	2025-04-02	Praca domowa
5583	95	14	13	5.00	2025-05-03	Aktywność
5584	95	14	13	5.00	2025-03-20	Quiz
5585	95	14	13	5.00	2025-04-28	Odpowiedź ustna
5586	95	14	13	6.00	2025-05-26	Test
5587	95	8	13	6.00	2025-05-27	Praca klasowa
5588	95	8	13	2.00	2025-06-03	Praca klasowa
5589	95	8	13	5.00	2025-04-18	Praca klasowa
5590	95	8	13	6.00	2025-04-18	Projekt
5591	95	8	13	6.00	2025-05-31	Kartkówka
5592	95	8	13	5.00	2025-04-28	Praca klasowa
5593	95	8	13	6.00	2025-06-07	Praca domowa
5594	95	7	10	5.00	2025-03-31	Quiz
5595	95	7	10	5.00	2025-04-04	Praca domowa
5596	95	7	10	6.00	2025-04-03	Test
5597	95	7	10	4.00	2025-04-13	Prezentacja
5598	95	7	10	6.00	2025-03-18	Praca domowa
5599	95	7	10	4.00	2025-05-06	Aktywność
5600	95	7	10	5.00	2025-03-29	Test
5601	95	3	10	5.00	2025-05-24	Prezentacja
5602	95	3	10	6.00	2025-04-14	Projekt
5603	95	3	10	6.00	2025-05-29	Prezentacja
5604	95	11	12	5.00	2025-05-06	Quiz
5605	95	11	12	3.00	2025-05-11	Test
5606	95	11	12	6.00	2025-03-28	Odpowiedź ustna
5607	95	11	12	5.00	2025-05-05	Kartkówka
5608	95	11	12	5.00	2025-03-21	Aktywność
5609	95	11	12	6.00	2025-04-24	Praca klasowa
5610	95	14	15	4.00	2025-04-22	Kartkówka
5611	95	14	15	4.00	2025-04-24	Praca domowa
5612	95	14	15	5.00	2025-06-02	Odpowiedź ustna
5613	95	14	15	3.00	2025-05-10	Praca klasowa
5614	95	14	15	6.00	2025-04-28	Praca domowa
5615	95	14	15	4.00	2025-04-12	Aktywność
5616	96	14	7	5.00	2025-04-11	Test
5617	96	14	7	6.00	2025-05-04	Praca klasowa
5618	96	14	7	4.00	2025-04-26	Quiz
5619	96	14	7	4.00	2025-04-20	Praca domowa
5620	96	14	7	6.00	2025-04-16	Kartkówka
5621	96	14	7	3.00	2025-05-28	Sprawdzian
5622	96	14	7	3.00	2025-05-27	Praca domowa
5623	96	14	7	4.00	2025-03-26	Projekt
5624	96	2	12	6.00	2025-04-25	Aktywność
5625	96	2	12	2.00	2025-06-01	Praca domowa
5626	96	2	12	6.00	2025-04-05	Praca domowa
5627	96	2	12	5.00	2025-03-21	Sprawdzian
5628	96	7	15	5.00	2025-04-18	Praca klasowa
5629	96	7	15	5.00	2025-05-18	Kartkówka
5630	96	7	15	6.00	2025-06-01	Aktywność
5631	96	7	15	5.00	2025-04-22	Sprawdzian
5632	96	7	15	1.00	2025-05-24	Praca domowa
5633	96	7	15	5.00	2025-04-01	Sprawdzian
5634	96	7	15	4.00	2025-06-07	Prezentacja
5635	96	7	15	5.00	2025-05-27	Sprawdzian
5636	96	14	13	4.00	2025-03-28	Praca domowa
5637	96	14	13	5.00	2025-05-18	Praca klasowa
5638	96	14	13	5.00	2025-05-23	Odpowiedź ustna
5639	96	14	13	3.00	2025-03-26	Kartkówka
5640	96	14	13	4.00	2025-03-21	Sprawdzian
5641	96	14	13	3.00	2025-04-15	Praca domowa
5642	96	8	13	6.00	2025-05-01	Quiz
5643	96	8	13	4.00	2025-06-06	Prezentacja
5644	96	8	13	4.00	2025-04-07	Prezentacja
5645	96	8	13	5.00	2025-05-23	Sprawdzian
5646	96	8	13	4.00	2025-05-11	Projekt
5647	96	7	10	5.00	2025-04-22	Praca klasowa
5648	96	7	10	4.00	2025-03-30	Kartkówka
5649	96	7	10	5.00	2025-04-05	Praca klasowa
5650	96	7	10	4.00	2025-05-23	Projekt
5651	96	3	10	3.00	2025-05-15	Praca klasowa
5652	96	3	10	2.00	2025-05-03	Projekt
5653	96	3	10	6.00	2025-04-09	Prezentacja
5654	96	3	10	6.00	2025-05-09	Projekt
5655	96	3	10	5.00	2025-05-31	Kartkówka
5656	96	3	10	5.00	2025-06-05	Quiz
5657	96	11	12	6.00	2025-04-20	Aktywność
5658	96	11	12	5.00	2025-03-23	Sprawdzian
5659	96	11	12	4.00	2025-04-15	Odpowiedź ustna
5660	96	11	12	3.00	2025-06-06	Projekt
5661	96	11	12	4.00	2025-05-10	Praca klasowa
5662	96	11	12	4.00	2025-05-31	Praca klasowa
5663	96	11	12	6.00	2025-04-11	Praca klasowa
5664	96	14	15	6.00	2025-05-22	Kartkówka
5665	96	14	15	5.00	2025-03-31	Sprawdzian
5666	96	14	15	3.00	2025-03-21	Prezentacja
5667	96	14	15	3.00	2025-05-27	Odpowiedź ustna
5668	96	14	15	5.00	2025-04-29	Kartkówka
5669	96	14	15	4.00	2025-03-29	Praca klasowa
5670	96	14	15	6.00	2025-03-28	Kartkówka
5671	97	14	7	5.00	2025-03-27	Kartkówka
5672	97	14	7	6.00	2025-04-17	Quiz
5673	97	14	7	6.00	2025-03-18	Praca klasowa
5674	97	2	12	6.00	2025-05-27	Praca domowa
5675	97	2	12	2.00	2025-05-19	Prezentacja
5676	97	2	12	6.00	2025-03-30	Aktywność
5677	97	7	15	6.00	2025-04-08	Quiz
5678	97	7	15	6.00	2025-06-06	Praca klasowa
5679	97	7	15	4.00	2025-03-17	Kartkówka
5680	97	14	13	5.00	2025-05-06	Aktywność
5681	97	14	13	4.00	2025-06-05	Kartkówka
5682	97	14	13	2.00	2025-05-26	Odpowiedź ustna
5683	97	14	13	2.00	2025-03-31	Praca domowa
5684	97	14	13	5.00	2025-05-30	Projekt
5685	97	14	13	5.00	2025-05-29	Projekt
5686	97	14	13	6.00	2025-04-10	Praca domowa
5687	97	8	13	5.00	2025-04-28	Sprawdzian
5688	97	8	13	3.00	2025-05-04	Odpowiedź ustna
5689	97	8	13	5.00	2025-03-28	Odpowiedź ustna
5690	97	8	13	3.00	2025-05-10	Sprawdzian
5691	97	8	13	4.00	2025-05-25	Test
5692	97	7	10	4.00	2025-03-17	Odpowiedź ustna
5693	97	7	10	4.00	2025-04-17	Test
5694	97	7	10	5.00	2025-04-07	Aktywność
5695	97	7	10	3.00	2025-05-30	Praca domowa
5696	97	3	10	5.00	2025-04-28	Aktywność
5697	97	3	10	4.00	2025-05-29	Praca klasowa
5698	97	3	10	5.00	2025-05-26	Aktywność
5699	97	3	10	5.00	2025-05-24	Odpowiedź ustna
5700	97	3	10	4.00	2025-05-14	Test
5701	97	11	12	3.00	2025-04-18	Quiz
5702	97	11	12	4.00	2025-03-25	Quiz
5703	97	11	12	6.00	2025-03-19	Praca klasowa
5704	97	14	15	5.00	2025-03-25	Praca domowa
5705	97	14	15	5.00	2025-03-15	Aktywność
5706	97	14	15	3.00	2025-03-10	Quiz
5707	97	14	15	2.00	2025-04-29	Prezentacja
5708	98	14	7	4.00	2025-05-25	Sprawdzian
5709	98	14	7	6.00	2025-04-06	Aktywność
5710	98	14	7	4.00	2025-03-17	Kartkówka
5711	98	14	7	6.00	2025-05-10	Praca klasowa
5712	98	14	7	2.00	2025-04-01	Kartkówka
5713	98	14	7	4.00	2025-03-21	Praca domowa
5714	98	2	12	3.00	2025-04-17	Kartkówka
5715	98	2	12	5.00	2025-03-20	Quiz
5716	98	2	12	6.00	2025-03-29	Praca domowa
5717	98	2	12	3.00	2025-05-12	Aktywność
5718	98	7	15	5.00	2025-04-14	Test
5719	98	7	15	6.00	2025-04-06	Praca klasowa
5720	98	7	15	4.00	2025-04-10	Quiz
5721	98	7	15	2.00	2025-06-04	Projekt
5722	98	7	15	6.00	2025-03-14	Projekt
5723	98	14	13	5.00	2025-03-31	Quiz
5724	98	14	13	5.00	2025-06-02	Kartkówka
5725	98	14	13	5.00	2025-05-03	Aktywność
5726	98	14	13	4.00	2025-04-09	Praca domowa
5727	98	14	13	6.00	2025-06-01	Odpowiedź ustna
5728	98	8	13	5.00	2025-05-02	Prezentacja
5729	98	8	13	5.00	2025-03-29	Odpowiedź ustna
5730	98	8	13	4.00	2025-03-24	Aktywność
5731	98	8	13	6.00	2025-04-30	Test
5732	98	8	13	3.00	2025-05-16	Odpowiedź ustna
5733	98	7	10	6.00	2025-04-23	Praca klasowa
5734	98	7	10	4.00	2025-04-19	Praca klasowa
5735	98	7	10	3.00	2025-03-20	Test
5736	98	7	10	5.00	2025-05-24	Quiz
5737	98	7	10	1.00	2025-05-28	Prezentacja
5738	98	3	10	6.00	2025-06-04	Projekt
5739	98	3	10	3.00	2025-04-06	Kartkówka
5740	98	3	10	6.00	2025-04-18	Praca klasowa
5741	98	3	10	5.00	2025-04-24	Prezentacja
5742	98	3	10	6.00	2025-03-11	Quiz
5743	98	3	10	5.00	2025-04-29	Praca klasowa
5744	98	3	10	5.00	2025-04-18	Quiz
5745	98	11	12	2.00	2025-06-01	Test
5746	98	11	12	4.00	2025-03-20	Praca klasowa
5747	98	11	12	5.00	2025-05-20	Projekt
5748	98	11	12	5.00	2025-04-28	Aktywność
5749	98	11	12	3.00	2025-06-04	Aktywność
5750	98	11	12	6.00	2025-05-27	Praca klasowa
5751	98	14	15	4.00	2025-04-29	Kartkówka
5752	98	14	15	3.00	2025-05-31	Projekt
5753	98	14	15	5.00	2025-03-18	Sprawdzian
5754	98	14	15	6.00	2025-04-04	Praca domowa
5755	98	14	15	5.00	2025-05-31	Quiz
5756	98	14	15	6.00	2025-05-04	Aktywność
5757	98	14	15	2.00	2025-06-05	Praca domowa
5758	99	14	7	6.00	2025-03-18	Quiz
5759	99	14	7	5.00	2025-05-31	Praca domowa
5760	99	14	7	5.00	2025-04-11	Praca domowa
5761	99	14	7	3.00	2025-05-04	Prezentacja
5762	99	2	12	5.00	2025-05-29	Kartkówka
5763	99	2	12	5.00	2025-04-09	Praca klasowa
5764	99	2	12	5.00	2025-05-27	Projekt
5765	99	7	15	4.00	2025-04-11	Quiz
5766	99	7	15	4.00	2025-05-19	Test
5767	99	7	15	5.00	2025-04-05	Praca domowa
5768	99	7	15	2.00	2025-03-18	Test
5769	99	7	15	5.00	2025-06-04	Praca domowa
5770	99	7	15	5.00	2025-05-17	Aktywność
5771	99	14	13	5.00	2025-04-11	Test
5772	99	14	13	4.00	2025-05-16	Test
5773	99	14	13	5.00	2025-06-01	Sprawdzian
5774	99	14	13	5.00	2025-03-21	Odpowiedź ustna
5775	99	14	13	4.00	2025-05-13	Praca klasowa
5776	99	8	13	6.00	2025-03-14	Prezentacja
5777	99	8	13	6.00	2025-03-29	Test
5778	99	8	13	2.00	2025-05-09	Praca domowa
5779	99	8	13	6.00	2025-03-23	Aktywność
5780	99	8	13	6.00	2025-05-24	Prezentacja
5781	99	7	10	2.00	2025-04-30	Kartkówka
5782	99	7	10	2.00	2025-05-02	Odpowiedź ustna
5783	99	7	10	5.00	2025-04-28	Prezentacja
5784	99	7	10	5.00	2025-03-21	Prezentacja
5785	99	7	10	5.00	2025-05-05	Prezentacja
5786	99	7	10	5.00	2025-04-29	Prezentacja
5787	99	7	10	2.00	2025-05-10	Projekt
5788	99	3	10	5.00	2025-03-24	Praca klasowa
5789	99	3	10	6.00	2025-05-13	Kartkówka
5790	99	3	10	5.00	2025-04-27	Aktywność
5791	99	11	12	5.00	2025-04-18	Projekt
5792	99	11	12	5.00	2025-05-28	Praca klasowa
5793	99	11	12	5.00	2025-05-24	Praca klasowa
5794	99	11	12	5.00	2025-04-06	Quiz
5795	99	11	12	4.00	2025-05-07	Prezentacja
5796	99	11	12	2.00	2025-04-19	Prezentacja
5797	99	11	12	1.00	2025-04-27	Praca domowa
5798	99	11	12	5.00	2025-05-24	Quiz
5799	99	14	15	5.00	2025-05-28	Prezentacja
5800	99	14	15	1.00	2025-04-14	Aktywność
5801	99	14	15	5.00	2025-03-31	Praca klasowa
5802	99	14	15	4.00	2025-04-21	Praca klasowa
5803	99	14	15	6.00	2025-04-20	Sprawdzian
5804	99	14	15	4.00	2025-05-17	Praca domowa
5805	99	14	15	3.00	2025-05-19	Projekt
5806	100	14	7	5.00	2025-05-26	Test
5807	100	14	7	5.00	2025-03-17	Praca domowa
5808	100	14	7	2.00	2025-03-30	Test
5809	100	2	12	5.00	2025-05-06	Prezentacja
5810	100	2	12	3.00	2025-03-27	Test
5811	100	2	12	6.00	2025-05-30	Kartkówka
5812	100	2	12	6.00	2025-03-19	Praca domowa
5813	100	2	12	3.00	2025-05-02	Projekt
5814	100	7	15	2.00	2025-06-05	Kartkówka
5815	100	7	15	4.00	2025-05-16	Kartkówka
5816	100	7	15	2.00	2025-04-20	Quiz
5817	100	7	15	5.00	2025-04-15	Projekt
5818	100	7	15	5.00	2025-04-06	Aktywność
5819	100	14	13	5.00	2025-04-22	Praca klasowa
5820	100	14	13	6.00	2025-03-19	Prezentacja
5821	100	14	13	5.00	2025-05-28	Praca klasowa
5822	100	8	13	4.00	2025-05-29	Odpowiedź ustna
5823	100	8	13	2.00	2025-05-22	Quiz
5824	100	8	13	5.00	2025-05-26	Sprawdzian
5825	100	8	13	4.00	2025-03-20	Praca domowa
5826	100	8	13	6.00	2025-04-09	Aktywność
5827	100	8	13	5.00	2025-04-10	Sprawdzian
5828	100	8	13	4.00	2025-05-29	Quiz
5829	100	8	13	5.00	2025-05-17	Prezentacja
5830	100	7	10	2.00	2025-04-20	Praca klasowa
5831	100	7	10	2.00	2025-06-01	Kartkówka
5832	100	7	10	4.00	2025-04-07	Prezentacja
5833	100	7	10	5.00	2025-04-19	Aktywność
5834	100	3	10	5.00	2025-05-10	Quiz
5835	100	3	10	4.00	2025-05-01	Praca klasowa
5836	100	3	10	5.00	2025-05-20	Praca domowa
5837	100	3	10	5.00	2025-04-03	Odpowiedź ustna
5838	100	3	10	5.00	2025-05-01	Test
5839	100	3	10	4.00	2025-04-16	Kartkówka
5840	100	3	10	5.00	2025-05-18	Quiz
5841	100	11	12	4.00	2025-06-06	Praca domowa
5842	100	11	12	2.00	2025-06-07	Aktywność
5843	100	11	12	4.00	2025-05-19	Prezentacja
5844	100	11	12	3.00	2025-03-28	Odpowiedź ustna
5845	100	11	12	1.00	2025-04-12	Praca klasowa
5846	100	11	12	3.00	2025-04-26	Aktywność
5847	100	14	15	3.00	2025-03-20	Quiz
5848	100	14	15	2.00	2025-04-09	Odpowiedź ustna
5849	100	14	15	6.00	2025-04-07	Test
5850	100	14	15	5.00	2025-03-15	Test
5851	100	14	15	5.00	2025-04-02	Praca klasowa
5852	100	14	15	5.00	2025-05-23	Aktywność
5853	100	14	15	3.00	2025-05-03	Quiz
5854	100	14	15	6.00	2025-05-24	Projekt
\.

COPY student_subject_group FROM stdin;
1	1
1	2
1	4
1	5
1	6
1	7
1	8
1	9
1	10
1	12
1	14
1	15
1	16
1	17
1	18
2	1
2	2
2	3
2	5
2	6
2	7
2	8
2	9
2	10
2	14
2	15
2	16
2	17
2	18
3	1
3	2
3	4
3	5
3	6
3	7
3	8
3	9
3	10
3	12
3	14
3	15
3	16
3	17
3	18
4	1
4	2
4	3
4	5
4	6
4	7
4	8
4	9
4	10
4	12
4	14
4	15
4	16
4	17
4	18
5	1
5	2
5	4
5	5
5	6
5	7
5	8
5	9
5	10
5	12
5	14
5	15
5	16
5	17
5	18
6	1
6	2
6	5
6	6
6	7
6	8
6	9
6	10
6	13
6	14
6	15
6	16
6	17
6	18
7	1
7	2
7	4
7	5
7	6
7	7
7	8
7	9
7	10
7	13
7	14
7	15
7	16
7	17
7	18
8	1
8	3
8	6
8	7
8	8
8	9
8	11
8	12
8	15
8	16
8	17
8	18
9	1
9	2
9	3
9	5
9	6
9	7
9	8
9	9
9	10
9	13
9	14
9	15
9	16
9	17
9	18
10	1
10	2
10	4
10	5
10	6
10	7
10	8
10	9
10	12
10	14
10	16
11	1
11	2
11	5
11	6
11	7
11	8
11	9
11	10
11	13
11	14
11	15
11	16
11	17
11	18
12	1
12	2
12	4
12	5
12	6
12	7
12	8
12	9
12	13
12	14
12	15
12	16
12	17
12	18
13	1
13	2
13	3
13	5
13	6
13	7
13	8
13	9
13	13
13	14
13	15
13	16
13	17
13	18
14	1
14	2
14	3
14	5
14	6
14	7
14	8
14	9
14	10
14	12
14	14
14	15
14	16
14	17
14	18
15	1
15	2
15	3
15	5
15	6
15	7
15	8
15	9
15	11
15	12
15	14
15	15
15	16
15	17
15	18
16	1
16	2
16	3
16	5
16	6
16	7
16	8
16	9
16	13
16	14
16	15
16	16
16	17
16	18
17	1
17	2
17	4
17	5
17	6
17	7
17	8
17	9
17	11
17	12
17	14
17	15
17	16
17	17
17	18
18	1
18	2
18	4
18	5
18	6
18	7
18	8
18	9
18	10
18	12
18	14
18	15
18	16
18	17
18	18
19	1
19	2
19	4
19	6
19	7
19	8
19	9
19	14
19	15
19	16
19	17
19	18
20	1
20	2
20	3
20	5
20	6
20	7
20	8
20	9
20	11
20	13
20	14
20	15
20	16
20	17
20	18
21	19
21	20
21	23
21	24
21	25
21	26
21	27
21	29
21	31
21	32
21	33
21	34
21	35
21	36
22	19
22	20
22	22
22	23
22	24
22	25
22	26
22	27
22	28
22	31
22	32
22	33
22	34
22	35
22	36
23	19
23	20
23	21
23	23
23	24
23	25
23	26
23	27
23	29
23	30
23	32
23	33
23	34
23	35
23	36
24	19
24	20
24	21
24	23
24	24
24	25
24	26
24	27
24	28
24	30
24	32
24	33
24	34
24	35
24	36
25	20
25	21
25	23
25	24
25	25
25	26
25	27
25	31
25	32
25	33
25	34
25	35
25	36
26	19
26	20
26	21
26	23
26	24
26	25
26	26
26	27
26	28
26	30
26	32
26	33
26	34
26	35
26	36
27	19
27	20
27	22
27	23
27	24
27	25
27	26
27	27
27	29
27	30
27	32
27	33
27	34
27	35
27	36
28	19
28	20
28	22
28	23
28	24
28	25
28	26
28	27
28	28
28	30
28	32
28	33
28	34
28	35
28	36
29	19
29	20
29	21
29	23
29	24
29	25
29	26
29	27
29	28
29	30
29	32
29	33
29	34
29	35
29	36
30	19
30	20
30	22
30	23
30	24
30	25
30	26
30	27
30	32
30	33
30	34
30	35
30	36
31	19
31	20
31	21
31	23
31	24
31	25
31	26
31	27
31	29
31	30
31	32
31	33
31	34
31	35
31	36
32	19
32	20
32	22
32	23
32	24
32	25
32	26
32	27
32	28
32	31
32	32
32	33
32	34
32	35
32	36
33	19
33	20
33	22
33	23
33	24
33	25
33	26
33	27
33	29
33	30
33	32
33	33
33	34
33	35
33	36
34	19
34	20
34	21
34	23
34	24
34	25
34	26
34	27
34	31
34	32
34	33
34	34
34	35
34	36
35	19
35	20
35	21
35	23
35	24
35	25
35	26
35	27
35	29
35	30
35	32
35	33
35	34
35	35
35	36
36	19
36	20
36	22
36	23
36	24
36	25
36	26
36	27
36	29
36	30
36	32
36	33
36	34
36	35
36	36
37	19
37	20
37	22
37	23
37	24
37	25
37	26
37	27
37	28
37	30
37	32
37	33
37	34
37	35
37	36
38	19
38	20
38	23
38	24
38	25
38	26
38	27
38	29
38	30
38	32
38	33
38	34
38	35
38	36
39	19
39	20
39	21
39	23
39	24
39	25
39	26
39	27
39	29
39	31
39	32
39	33
39	34
39	35
39	36
40	19
40	20
40	22
40	23
40	24
40	25
40	26
40	27
40	28
40	31
40	32
40	33
40	34
40	35
40	36
41	37
41	38
41	39
41	41
41	42
41	43
41	44
41	45
41	46
41	48
41	50
41	51
41	52
41	53
41	54
42	37
42	38
42	41
42	42
42	43
42	44
42	45
42	47
42	48
42	50
42	51
42	52
42	53
42	54
43	37
43	38
43	39
43	41
43	42
43	43
43	44
43	45
43	47
43	48
43	50
43	51
43	52
43	53
43	54
44	37
44	38
44	40
44	41
44	42
44	43
44	44
44	45
44	47
44	48
44	50
44	51
44	52
44	53
44	54
45	37
45	38
45	39
45	41
45	42
45	43
45	44
45	45
45	46
45	48
45	50
45	51
45	52
45	53
45	54
46	37
46	38
46	39
46	41
46	42
46	43
46	44
46	45
46	46
46	49
46	50
46	51
46	52
46	53
46	54
47	37
47	40
47	41
47	42
47	43
47	44
47	45
47	46
47	49
47	50
47	51
47	52
47	53
47	54
48	37
48	38
48	41
48	42
48	43
48	44
48	45
48	47
48	50
48	51
48	53
48	54
49	41
49	42
49	43
49	45
49	47
49	48
49	50
49	51
49	52
49	53
49	54
50	37
50	38
50	40
50	41
50	42
50	43
50	44
50	45
50	47
50	49
50	50
50	51
50	52
50	53
50	54
51	37
51	38
51	41
51	42
51	43
51	44
51	45
51	47
51	50
51	51
51	52
51	53
51	54
52	37
52	38
52	40
52	41
52	42
52	43
52	44
52	45
52	47
52	48
52	50
52	51
52	52
52	53
52	54
53	37
53	38
53	40
53	41
53	42
53	43
53	44
53	45
53	48
53	50
53	51
53	52
53	53
53	54
54	37
54	38
54	39
54	41
54	42
54	43
54	44
54	45
54	47
54	48
54	50
54	51
54	52
54	53
54	54
55	37
55	38
55	39
55	41
55	42
55	43
55	44
55	45
55	47
55	49
55	50
55	51
55	52
55	53
55	54
56	37
56	38
56	40
56	41
56	42
56	43
56	44
56	45
56	46
56	48
56	50
56	51
56	52
56	53
56	54
57	37
57	38
57	41
57	42
57	43
57	44
57	45
57	47
57	49
57	50
57	51
57	52
57	53
57	54
58	37
58	38
58	39
58	41
58	42
58	43
58	44
58	45
58	48
58	50
58	51
58	52
58	53
58	54
59	37
59	38
59	39
59	41
59	42
59	43
59	44
59	45
59	48
59	50
59	51
59	52
59	53
59	54
60	37
60	38
60	40
60	41
60	42
60	43
60	44
60	45
60	46
60	50
60	51
60	52
60	53
60	54
61	55
61	56
61	57
61	59
61	60
61	61
61	62
61	63
61	64
61	66
61	68
61	69
61	70
61	71
61	72
62	55
62	56
62	58
62	59
62	60
62	61
62	62
62	63
62	64
62	67
62	68
62	69
62	70
62	71
62	72
63	55
63	56
63	59
63	60
63	61
63	62
63	63
63	65
63	68
63	69
63	70
63	71
63	72
64	55
64	56
64	57
64	59
64	60
64	61
64	62
64	63
64	64
64	67
64	68
64	69
64	70
64	71
64	72
65	55
65	56
65	57
65	59
65	60
65	61
65	62
65	63
65	64
65	67
65	68
65	69
65	70
65	71
65	72
66	55
66	56
66	58
66	59
66	60
66	61
66	62
66	63
66	64
66	67
66	68
66	69
66	70
66	71
66	72
67	55
67	56
67	58
67	59
67	60
67	61
67	62
67	63
67	64
67	66
67	68
67	69
67	70
67	71
67	72
68	55
68	56
68	58
68	59
68	60
68	61
68	62
68	63
68	65
68	67
68	68
68	69
68	70
68	71
68	72
69	55
69	56
69	58
69	59
69	60
69	61
69	62
69	63
69	66
69	68
69	69
69	70
69	71
69	72
70	55
70	56
70	57
70	59
70	60
70	61
70	62
70	63
70	65
70	67
70	68
70	69
70	70
70	71
70	72
71	55
71	56
71	58
71	59
71	60
71	61
71	62
71	63
71	64
71	66
71	68
71	69
71	70
71	71
71	72
72	55
72	56
72	57
72	59
72	60
72	61
72	62
72	63
72	64
72	66
72	68
72	69
72	70
72	71
72	72
73	55
73	56
73	58
73	59
73	60
73	61
73	62
73	63
73	65
73	66
73	68
73	69
73	70
73	71
73	72
74	56
74	57
74	59
74	60
74	61
74	62
74	63
74	64
74	66
74	68
74	69
74	70
74	71
75	55
75	56
75	58
75	59
75	60
75	61
75	62
75	63
75	65
75	66
75	68
75	69
75	70
75	71
75	72
76	55
76	56
76	58
76	59
76	60
76	61
76	62
76	63
76	65
76	66
76	68
76	69
76	70
76	71
76	72
77	55
77	56
77	58
77	59
77	60
77	61
77	62
77	63
77	65
77	66
77	68
77	69
77	70
77	71
77	72
78	55
78	56
78	57
78	59
78	60
78	61
78	62
78	63
78	65
78	67
78	68
78	69
78	70
78	71
78	72
79	55
79	56
79	58
79	59
79	60
79	61
79	62
79	63
79	64
79	66
79	68
79	69
79	70
79	71
79	72
80	55
80	56
80	57
80	59
80	60
80	61
80	62
80	63
80	64
80	66
80	68
80	69
80	70
80	71
80	72
81	73
81	74
81	75
81	77
81	78
81	79
81	80
81	81
81	83
81	85
81	86
81	87
81	88
81	89
81	90
82	73
82	74
82	75
82	77
82	78
82	79
82	80
82	81
82	83
82	84
82	86
82	87
82	88
82	89
82	90
83	73
83	74
83	75
83	77
83	78
83	79
83	80
83	81
83	83
83	84
83	86
83	87
83	88
83	89
83	90
84	73
84	74
84	76
84	77
84	78
84	79
84	80
84	81
84	83
84	85
84	86
84	87
84	88
84	89
84	90
85	73
85	74
85	76
85	77
85	78
85	79
85	80
85	81
85	82
85	84
85	86
85	87
85	88
85	89
85	90
86	73
86	74
86	76
86	77
86	78
86	79
86	80
86	81
86	83
86	85
86	86
86	87
86	88
86	89
86	90
87	73
87	74
87	75
87	77
87	78
87	79
87	80
87	81
87	83
87	84
87	86
87	87
87	88
87	89
87	90
88	73
88	74
88	76
88	77
88	78
88	79
88	80
88	81
88	82
88	85
88	86
88	87
88	88
88	89
88	90
89	73
89	74
89	75
89	77
89	78
89	79
89	80
89	81
89	83
89	84
89	86
89	87
89	88
89	89
89	90
90	73
90	74
90	76
90	77
90	78
90	79
90	80
90	81
90	82
90	85
90	86
90	87
90	88
90	89
90	90
91	73
91	74
91	77
91	78
91	79
91	80
91	81
91	82
91	84
91	86
91	87
91	88
91	89
91	90
92	73
92	74
92	75
92	77
92	78
92	79
92	80
92	81
92	83
92	85
92	86
92	87
92	88
92	89
92	90
93	73
93	74
93	75
93	77
93	78
93	79
93	80
93	81
93	83
93	84
93	86
93	87
93	88
93	89
93	90
94	73
94	74
94	75
94	77
94	78
94	79
94	80
94	81
94	83
94	85
94	86
94	87
94	88
94	89
94	90
95	73
95	74
95	76
95	77
95	78
95	79
95	80
95	81
95	82
95	84
95	86
95	87
95	88
95	89
95	90
96	73
96	74
96	76
96	77
96	78
96	79
96	80
96	81
96	85
96	86
96	87
96	88
96	89
96	90
97	73
97	74
97	76
97	77
97	78
97	79
97	80
97	81
97	83
97	84
97	86
97	87
97	88
97	89
97	90
98	73
98	74
98	77
98	78
98	79
98	80
98	81
98	83
98	84
98	86
98	87
98	88
98	89
98	90
99	73
99	74
99	75
99	77
99	78
99	79
99	80
99	81
99	82
99	85
99	86
99	87
99	88
99	89
99	90
100	73
100	74
100	76
100	77
100	78
100	79
100	80
100	81
100	82
100	84
100	86
100	87
100	88
100	89
100	90
21	21
25	82
25	73
47	20
63	66
2	13
51	49
8	23
19	84
98	76
53	46
74	37
69	65
58	47
8	32
30	30
6	3
11	4
34	29
49	62
8	20
13	11
51	39
19	82
16	10
30	28
10	72
12	11
42	40
49	57
91	76
60	48
74	54
49	55
96	82
48	66
10	71
57	40
19	77
48	57
63	57
10	69
48	70
59	47
49	56
38	22
10	64
\.

COPY teacher_subject FROM stdin;
1	5
1	4
2	3
2	8
3	12
3	8
4	14
4	12
5	4
5	13
5	14
6	1
7	14
8	10
9	3
9	5
10	7
10	3
11	10
11	11
12	2
12	11
13	14
13	8
14	9
14	15
14	7
15	14
15	7
\.

COPY parent_student FROM stdin;
1	1	t
2	2	t
3	3	t
4	3	t
5	4	t
6	4	t
7	5	t
8	5	t
9	6	t
10	6	t
11	7	t
12	7	t
13	8	t
14	9	t
15	10	t
16	10	t
17	11	t
18	11	t
19	12	t
20	12	t
21	13	t
22	14	t
23	14	t
24	15	t
25	15	t
26	16	t
27	16	t
28	17	t
29	18	t
30	19	t
31	20	t
32	21	t
33	21	t
34	22	t
35	22	t
36	23	t
37	24	t
38	24	t
39	25	t
40	26	t
41	27	t
42	27	t
43	28	t
44	29	t
45	29	t
46	30	t
47	31	t
48	31	t
49	32	t
50	33	t
51	33	t
52	34	t
53	35	t
54	36	t
55	36	t
56	37	t
57	37	t
58	38	t
59	39	t
60	39	t
61	40	t
62	41	t
63	41	t
64	42	t
65	43	t
66	44	t
67	44	t
68	45	t
69	45	t
70	46	t
71	47	t
72	48	t
73	48	t
74	49	t
75	49	t
76	50	t
77	51	t
78	51	t
79	52	t
80	53	t
81	53	t
82	54	t
83	55	t
84	56	t
85	56	t
86	57	t
87	57	t
88	58	t
89	58	t
90	59	t
91	60	t
92	60	t
93	61	t
94	61	t
95	62	t
96	63	t
97	63	t
98	64	t
99	65	t
100	66	t
101	66	t
102	67	t
103	68	t
104	69	t
105	69	t
106	70	t
107	70	t
108	71	t
109	72	t
110	72	t
111	73	t
112	74	t
113	75	t
114	76	t
115	77	t
116	77	t
117	78	t
118	78	t
119	79	t
120	79	t
121	80	t
122	81	t
123	82	t
124	82	t
125	83	t
126	83	t
127	84	t
128	84	t
129	85	t
130	86	t
131	86	t
132	87	t
133	87	t
134	88	t
135	89	t
136	89	t
137	90	t
138	91	t
139	91	t
140	92	t
141	93	t
142	94	t
143	95	t
144	95	t
145	96	t
146	97	t
147	98	t
148	99	t
149	99	t
150	100	t
\.

COPY teacher_class_subject FROM stdin;
1	4	5	60
1	4	4	59
2	1	3	3
2	1	3	4
2	1	8	9
2	2	3	21
2	2	3	22
2	2	8	27
3	2	12	33
3	2	8	27
3	3	12	51
3	3	8	45
3	1	12	15
3	1	8	9
4	4	14	71
4	4	12	69
4	3	14	53
4	3	12	51
5	1	4	5
5	1	13	16
5	1	14	17
5	2	4	23
5	2	13	34
5	2	14	35
6	1	1	1
6	2	1	19
7	2	14	35
7	5	14	89
8	4	10	66
8	4	10	67
9	3	3	39
9	3	3	40
9	3	5	42
10	4	7	62
10	4	3	57
10	4	3	58
10	5	7	80
10	5	3	75
10	5	3	76
10	2	7	26
10	2	3	21
10	2	3	22
11	2	10	30
11	2	10	31
11	2	11	32
11	1	10	12
11	1	10	13
11	1	11	14
12	5	2	74
12	5	11	86
13	5	14	89
13	5	8	81
13	1	14	17
13	1	8	9
13	3	14	53
13	3	8	45
14	2	9	28
14	2	9	29
14	2	15	36
14	2	7	26
14	1	9	10
14	1	9	11
14	1	15	18
14	1	7	8
14	3	9	46
14	3	9	47
14	3	15	54
14	3	7	44
15	5	14	89
15	5	7	80
15	4	14	71
15	4	7	62
\.

COPY slot_exceptions FROM stdin;
1	23	2025-06-21	substitution	8	Zastępstwo - nauczyciel ID 8
2	81	2025-06-19	substitution	10	Zastępstwo - nauczyciel ID 10
3	77	2025-07-01	substitution	2	Zastępstwo - nauczyciel ID 2
4	66	2025-06-12	cancelled	\N	Lekcja odwołana
5	114	2025-06-10	substitution	3	Zastępstwo - nauczyciel ID 3
6	16	2025-06-13	substitution	3	Zastępstwo - nauczyciel ID 3
\.

COPY class_changes_history FROM stdin;
1	48	3	4	2024-09-27
2	48	3	4	2025-06-08
3	10	1	4	2025-05-22
4	10	1	4	2025-06-08
5	19	1	5	2025-06-05
6	19	1	5	2025-06-08
7	74	4	3	2024-08-07
8	74	4	3	2025-06-08
9	66	4	3	2024-11-25
10	66	4	3	2025-06-08
11	49	3	4	2025-01-28
12	49	3	4	2025-06-08
13	25	2	5	2024-08-18
14	25	2	5	2025-06-08
15	8	1	2	2025-01-04
16	8	1	2	2025-06-08
17	47	3	2	2024-07-27
18	47	3	2	2025-06-08
19	39	2	3	2025-06-05
20	39	2	3	2025-06-08
\.

COPY group_changes_history FROM stdin;
1	21	22	21	2025-02-15
2	25	29	82	2024-08-08
3	25	19	73	2024-09-17
4	47	38	20	2024-08-10
5	63	67	66	2024-08-31
6	2	12	13	2025-06-02
7	51	48	49	2025-03-03
8	8	5	23	2025-05-25
9	19	12	84	2025-01-27
10	98	75	76	2024-10-30
11	53	47	46	2024-07-28
12	74	55	37	2025-03-21
13	69	64	65	2024-07-23
14	58	46	47	2025-05-20
15	8	14	32	2024-11-27
16	30	31	30	2024-07-12
17	6	4	3	2024-07-15
18	11	3	4	2025-04-15
19	34	28	29	2024-07-15
20	49	44	62	2024-07-30
21	8	2	20	2024-07-05
22	13	10	11	2025-05-26
23	51	40	39	2025-03-26
24	19	10	82	2025-06-03
25	16	11	10	2024-10-13
26	30	29	28	2025-04-22
27	10	18	72	2024-07-12
28	12	10	11	2024-06-20
29	42	39	40	2025-03-09
30	49	40	57	2024-06-09
31	91	75	76	2025-05-13
32	60	49	48	2025-01-29
33	74	72	54	2024-08-06
34	49	37	55	2024-12-10
35	96	83	82	2025-03-09
36	48	49	66	2024-11-02
37	10	17	71	2024-10-19
38	57	39	40	2025-04-13
39	19	5	77	2024-10-17
40	48	39	57	2024-08-26
41	63	58	57	2024-10-25
42	10	15	69	2024-08-11
43	48	52	70	2025-01-23
44	59	46	47	2025-02-23
45	49	38	56	2024-09-19
46	38	21	22	2024-09-07
47	10	10	64	2024-09-24
\.

COPY final_grades FROM stdin;
1	1	1	6	4	2024
2	1	3	2	4	2024
3	1	4	5	4	2024
4	1	7	14	4	2024
5	1	8	2	4	2024
6	1	8	3	4	2024
7	1	8	13	4	2024
8	1	9	14	4	2024
9	1	10	11	5	2024
10	1	11	11	5	2024
11	1	12	3	5	2024
12	1	13	5	4	2024
13	1	14	5	4	2024
14	1	14	13	4	2024
15	1	15	14	4	2024
16	2	1	6	6	2024
17	2	3	2	5	2024
18	2	4	5	5	2024
19	2	7	14	3	2024
20	2	8	2	4	2024
21	2	8	3	4	2024
22	2	8	13	4	2024
23	2	9	14	5	2024
24	2	10	11	6	2024
25	2	11	11	3	2024
26	2	12	3	4	2024
27	2	13	5	4	2024
28	2	14	5	5	2024
29	2	14	13	5	2024
30	2	15	14	5	2024
31	3	1	6	5	2024
32	3	3	2	4	2024
33	3	4	5	4	2024
34	3	7	14	5	2024
35	3	8	2	4	2024
36	3	8	3	4	2024
37	3	8	13	4	2024
38	3	9	14	5	2024
39	3	10	11	5	2024
40	3	11	11	4	2024
41	3	12	3	4	2024
42	3	13	5	4	2024
43	3	14	5	4	2024
44	3	14	13	4	2024
45	3	15	14	5	2024
46	4	1	6	5	2024
47	4	3	2	4	2024
48	4	4	5	5	2024
49	4	7	14	4	2024
50	4	8	2	5	2024
51	4	8	3	5	2024
52	4	8	13	5	2024
53	4	9	14	4	2024
54	4	10	11	4	2024
55	4	11	11	4	2024
56	4	12	3	5	2024
57	4	13	5	5	2024
58	4	14	5	4	2024
59	4	14	13	4	2024
60	4	15	14	4	2024
61	5	1	6	3	2024
62	5	3	2	5	2024
63	5	4	5	4	2024
64	5	7	14	4	2024
65	5	8	2	4	2024
66	5	8	3	4	2024
67	5	8	13	4	2024
68	5	9	14	4	2024
69	5	10	11	4	2024
70	5	11	11	4	2024
71	5	12	3	4	2024
72	5	13	5	5	2024
73	5	14	5	4	2024
74	5	14	13	4	2024
75	5	15	14	5	2024
76	6	1	6	4	2024
77	6	3	2	4	2024
78	6	4	5	4	2024
79	6	7	14	4	2024
80	6	8	2	5	2024
81	6	8	3	5	2024
82	6	8	13	5	2024
83	6	9	14	5	2024
84	6	10	11	4	2024
85	6	11	11	4	2024
86	6	12	3	5	2024
87	6	13	5	4	2024
88	6	14	5	5	2024
89	6	14	13	5	2024
90	6	15	14	3	2024
91	7	1	6	5	2024
92	7	3	2	6	2024
93	7	4	5	4	2024
94	7	7	14	4	2024
95	7	8	2	5	2024
96	7	8	3	5	2024
97	7	8	13	5	2024
98	7	9	14	4	2024
99	7	10	11	5	2024
100	7	11	11	4	2024
101	7	12	3	5	2024
102	7	13	5	4	2024
103	7	14	5	4	2024
104	7	14	13	4	2024
105	7	15	14	4	2024
106	9	1	6	5	2024
107	9	3	2	4	2024
108	9	4	5	4	2024
109	9	7	14	4	2024
110	9	8	2	5	2024
111	9	8	3	5	2024
112	9	8	13	5	2024
113	9	9	14	4	2024
114	9	10	11	5	2024
115	9	11	11	5	2024
116	9	12	3	5	2024
117	9	13	5	4	2024
118	9	14	5	5	2024
119	9	14	13	5	2024
120	9	15	14	6	2024
121	11	1	6	4	2024
122	11	3	2	5	2024
123	11	4	5	5	2024
124	11	7	14	4	2024
125	11	8	2	4	2024
126	11	8	3	4	2024
127	11	8	13	4	2024
128	11	9	14	4	2024
129	11	10	11	4	2024
130	11	11	11	4	2024
131	11	12	3	5	2024
132	11	13	5	5	2024
133	11	14	5	4	2024
134	11	14	13	4	2024
135	11	15	14	4	2024
136	12	1	6	4	2024
137	12	3	2	4	2024
138	12	4	5	5	2024
139	12	7	14	5	2024
140	12	8	2	4	2024
141	12	8	3	4	2024
142	12	8	13	4	2024
143	12	9	14	5	2024
144	12	10	11	5	2024
145	12	11	11	4	2024
146	12	12	3	5	2024
147	12	13	5	4	2024
148	12	14	5	4	2024
149	12	14	13	4	2024
150	12	15	14	4	2024
151	13	1	6	4	2024
152	13	3	2	5	2024
153	13	4	5	4	2024
154	13	7	14	5	2024
155	13	8	2	4	2024
156	13	8	3	4	2024
157	13	8	13	4	2024
158	13	9	14	4	2024
159	13	10	11	5	2024
160	13	11	11	5	2024
161	13	12	3	4	2024
162	13	13	5	5	2024
163	13	14	5	4	2024
164	13	14	13	4	2024
165	13	15	14	4	2024
166	14	1	6	5	2024
167	14	3	2	4	2024
168	14	4	5	4	2024
169	14	7	14	4	2024
170	14	8	2	4	2024
171	14	8	3	4	2024
172	14	8	13	4	2024
173	14	9	14	4	2024
174	14	10	11	4	2024
175	14	11	11	4	2024
176	14	12	3	5	2024
177	14	13	5	5	2024
178	14	14	5	5	2024
179	14	14	13	5	2024
180	14	15	14	4	2024
181	15	1	6	4	2024
182	15	3	2	4	2024
183	15	4	5	4	2024
184	15	7	14	5	2024
185	15	8	2	5	2024
186	15	8	3	5	2024
187	15	8	13	5	2024
188	15	9	14	5	2024
189	15	10	11	5	2024
190	15	11	11	5	2024
191	15	12	3	4	2024
192	15	13	5	4	2024
193	15	14	5	4	2024
194	15	14	13	4	2024
195	15	15	14	6	2024
196	16	1	6	3	2024
197	16	3	2	5	2024
198	16	4	5	3	2024
199	16	7	14	4	2024
200	16	8	2	4	2024
201	16	8	3	4	2024
202	16	8	13	4	2024
203	16	9	14	4	2024
204	16	10	11	4	2024
205	16	11	11	4	2024
206	16	12	3	5	2024
207	16	13	5	4	2024
208	16	14	5	5	2024
209	16	14	13	5	2024
210	16	15	14	4	2024
211	17	1	6	5	2024
212	17	3	2	4	2024
213	17	4	5	4	2024
214	17	7	14	4	2024
215	17	8	2	5	2024
216	17	8	3	5	2024
217	17	8	13	5	2024
218	17	9	14	4	2024
219	17	10	11	4	2024
220	17	11	11	4	2024
221	17	12	3	4	2024
222	17	13	5	4	2024
223	17	14	5	5	2024
224	17	14	13	5	2024
225	17	15	14	4	2024
226	18	1	6	4	2024
227	18	3	2	5	2024
228	18	4	5	5	2024
229	18	7	14	4	2024
230	18	8	2	4	2024
231	18	8	3	4	2024
232	18	8	13	4	2024
233	18	9	14	4	2024
234	18	10	11	4	2024
235	18	11	11	5	2024
236	18	12	3	5	2024
237	18	13	5	4	2024
238	18	14	5	4	2024
239	18	14	13	4	2024
240	18	15	14	5	2024
241	20	1	6	5	2024
242	20	3	2	5	2024
243	20	4	5	5	2024
244	20	7	14	4	2024
245	20	8	2	4	2024
246	20	8	3	4	2024
247	20	8	13	4	2024
248	20	9	14	4	2024
249	20	10	11	5	2024
250	20	11	11	4	2024
251	20	12	3	4	2024
252	20	13	5	5	2024
253	20	14	5	5	2024
254	20	14	13	5	2024
255	20	15	14	4	2024
256	21	1	6	5	2024
257	21	3	2	5	2024
258	21	3	10	5	2024
259	21	4	5	5	2024
260	21	7	10	5	2024
261	21	7	14	5	2024
262	21	8	2	4	2024
263	21	8	3	4	2024
264	21	9	14	4	2024
265	21	10	11	4	2024
266	21	11	11	5	2024
267	21	12	3	5	2024
268	21	13	5	4	2024
269	21	14	5	5	2024
270	21	14	7	5	2024
271	21	15	14	4	2024
272	22	1	6	4	2024
273	22	3	2	4	2024
274	22	3	10	4	2024
275	22	4	5	5	2024
276	22	7	10	4	2024
277	22	7	14	4	2024
278	22	8	2	4	2024
279	22	8	3	4	2024
280	22	9	14	5	2024
281	22	10	11	4	2024
282	22	11	11	5	2024
283	22	12	3	4	2024
284	22	13	5	4	2024
285	22	14	5	4	2024
286	22	14	7	4	2024
287	22	15	14	4	2024
288	23	1	6	4	2024
289	23	3	2	4	2024
290	23	3	10	4	2024
291	23	4	5	5	2024
292	23	7	10	4	2024
293	23	7	14	4	2024
294	23	8	2	4	2024
295	23	8	3	4	2024
296	23	9	14	4	2024
297	23	10	11	4	2024
298	23	11	11	4	2024
299	23	12	3	4	2024
300	23	13	5	4	2024
301	23	14	5	4	2024
302	23	14	7	4	2024
303	23	15	14	4	2024
304	24	1	6	4	2024
305	24	3	2	5	2024
306	24	3	10	5	2024
307	24	4	5	4	2024
308	24	7	10	5	2024
309	24	7	14	5	2024
310	24	8	2	5	2024
311	24	8	3	5	2024
312	24	9	14	5	2024
313	24	10	11	5	2024
314	24	11	11	5	2024
315	24	12	3	5	2024
316	24	13	5	5	2024
317	24	14	5	4	2024
318	24	14	7	4	2024
319	24	15	14	5	2024
320	26	1	6	6	2024
321	26	3	2	4	2024
322	26	3	10	4	2024
323	26	4	5	4	2024
324	26	7	10	4	2024
325	26	7	14	4	2024
326	26	8	2	4	2024
327	26	8	3	4	2024
328	26	9	14	4	2024
329	26	10	11	4	2024
330	26	11	11	4	2024
331	26	12	3	5	2024
332	26	13	5	4	2024
333	26	14	5	4	2024
334	26	14	7	4	2024
335	26	15	14	5	2024
336	27	1	6	6	2024
337	27	3	2	4	2024
338	27	3	10	4	2024
339	27	4	5	4	2024
340	27	7	10	4	2024
341	27	7	14	4	2024
342	27	8	2	5	2024
343	27	8	3	5	2024
344	27	9	14	5	2024
345	27	10	11	4	2024
346	27	11	11	5	2024
347	27	12	3	4	2024
348	27	13	5	4	2024
349	27	14	5	5	2024
350	27	14	7	5	2024
351	27	15	14	5	2024
352	28	1	6	4	2024
353	28	3	2	4	2024
354	28	3	10	4	2024
355	28	4	5	4	2024
356	28	7	10	4	2024
357	28	7	14	4	2024
358	28	8	2	4	2024
359	28	8	3	4	2024
360	28	9	14	4	2024
361	28	10	11	4	2024
362	28	11	11	5	2024
363	28	12	3	4	2024
364	28	13	5	5	2024
365	28	14	5	4	2024
366	28	14	7	4	2024
367	28	15	14	4	2024
368	29	1	6	4	2024
369	29	3	2	4	2024
370	29	3	10	4	2024
371	29	4	5	4	2024
372	29	7	10	4	2024
373	29	7	14	4	2024
374	29	8	2	4	2024
375	29	8	3	4	2024
376	29	9	14	4	2024
377	29	10	11	4	2024
378	29	11	11	5	2024
379	29	12	3	3	2024
380	29	13	5	4	2024
381	29	14	5	5	2024
382	29	14	7	5	2024
383	29	15	14	5	2024
384	30	1	6	4	2024
385	30	3	2	5	2024
386	30	3	10	5	2024
387	30	4	5	4	2024
388	30	7	10	4	2024
389	30	7	14	4	2024
390	30	8	2	4	2024
391	30	8	3	4	2024
392	30	9	14	4	2024
393	30	10	11	4	2024
394	30	11	11	5	2024
395	30	12	3	4	2024
396	30	13	5	4	2024
397	30	14	5	5	2024
398	30	14	7	5	2024
399	30	15	14	4	2024
400	31	1	6	4	2024
401	31	3	2	5	2024
402	31	3	10	5	2024
403	31	4	5	5	2024
404	31	7	10	5	2024
405	31	7	14	5	2024
406	31	8	2	4	2024
407	31	8	3	4	2024
408	31	9	14	5	2024
409	31	10	11	5	2024
410	31	11	11	4	2024
411	31	12	3	5	2024
412	31	13	5	4	2024
413	31	14	5	4	2024
414	31	14	7	4	2024
415	31	15	14	4	2024
416	32	1	6	5	2024
417	32	3	2	5	2024
418	32	3	10	5	2024
419	32	4	5	4	2024
420	32	7	10	4	2024
421	32	7	14	4	2024
422	32	8	2	5	2024
423	32	8	3	5	2024
424	32	9	14	5	2024
425	32	10	11	4	2024
426	32	11	11	4	2024
427	32	12	3	4	2024
428	32	13	5	5	2024
429	32	14	5	4	2024
430	32	14	7	4	2024
431	32	15	14	3	2024
432	33	1	6	4	2024
433	33	3	2	5	2024
434	33	3	10	5	2024
435	33	4	5	4	2024
436	33	7	10	4	2024
437	33	7	14	4	2024
438	33	8	2	4	2024
439	33	8	3	4	2024
440	33	9	14	4	2024
441	33	10	11	5	2024
442	33	11	11	4	2024
443	33	12	3	5	2024
444	33	13	5	4	2024
445	33	14	5	4	2024
446	33	14	7	4	2024
447	33	15	14	5	2024
448	34	1	6	4	2024
449	34	3	2	4	2024
450	34	3	10	4	2024
451	34	4	5	4	2024
452	34	7	10	4	2024
453	34	7	14	4	2024
454	34	8	2	5	2024
455	34	8	3	5	2024
456	34	9	14	4	2024
457	34	10	11	5	2024
458	34	11	11	4	2024
459	34	12	3	5	2024
460	34	13	5	4	2024
461	34	14	5	4	2024
462	34	14	7	4	2024
463	34	15	14	5	2024
464	35	1	6	4	2024
465	35	3	2	4	2024
466	35	3	10	4	2024
467	35	4	5	5	2024
468	35	7	10	5	2024
469	35	7	14	5	2024
470	35	8	2	4	2024
471	35	8	3	4	2024
472	35	9	14	4	2024
473	35	10	11	4	2024
474	35	11	11	5	2024
475	35	12	3	4	2024
476	35	13	5	4	2024
477	35	14	5	4	2024
478	35	14	7	4	2024
479	35	15	14	4	2024
480	36	1	6	5	2024
481	36	3	2	4	2024
482	36	3	10	4	2024
483	36	4	5	4	2024
484	36	7	10	4	2024
485	36	7	14	4	2024
486	36	8	2	5	2024
487	36	8	3	5	2024
488	36	9	14	5	2024
489	36	10	11	4	2024
490	36	11	11	4	2024
491	36	12	3	6	2024
492	36	13	5	5	2024
493	36	14	5	4	2024
494	36	14	7	4	2024
495	36	15	14	3	2024
496	37	1	6	3	2024
497	37	3	2	4	2024
498	37	3	10	4	2024
499	37	4	5	3	2024
500	37	7	10	3	2024
501	37	7	14	3	2024
502	37	8	2	4	2024
503	37	8	3	4	2024
504	37	9	14	5	2024
505	37	10	11	4	2024
506	37	11	11	4	2024
507	37	12	3	4	2024
508	37	13	5	4	2024
509	37	14	5	4	2024
510	37	14	7	4	2024
511	37	15	14	4	2024
512	38	1	6	5	2024
513	38	3	2	4	2024
514	38	3	10	4	2024
515	38	4	5	5	2024
516	38	7	10	4	2024
517	38	7	14	4	2024
518	38	8	2	5	2024
519	38	8	3	5	2024
520	38	9	14	6	2024
521	38	10	11	5	2024
522	38	11	11	4	2024
523	38	12	3	5	2024
524	38	13	5	4	2024
525	38	14	5	5	2024
526	38	14	7	5	2024
527	38	15	14	4	2024
528	40	1	6	4	2024
529	40	3	2	4	2024
530	40	3	10	4	2024
531	40	4	5	5	2024
532	40	7	10	5	2024
533	40	7	14	5	2024
534	40	8	2	5	2024
535	40	8	3	5	2024
536	40	9	14	4	2024
537	40	10	11	5	2024
538	40	11	11	4	2024
539	40	12	3	5	2024
540	40	13	5	4	2024
541	40	14	5	5	2024
542	40	14	7	5	2024
543	40	15	14	4	2024
544	41	3	9	4	2024
545	41	5	9	4	2024
546	41	7	14	4	2024
547	41	8	3	5	2024
548	41	8	13	5	2024
549	41	9	14	4	2024
550	41	12	3	5	2024
551	41	12	4	5	2024
552	41	14	4	5	2024
553	41	14	13	5	2024
554	41	15	14	4	2024
555	42	3	9	4	2024
556	42	5	9	5	2024
557	42	7	14	4	2024
558	42	8	3	4	2024
559	42	8	13	4	2024
560	42	9	14	5	2024
561	42	12	3	4	2024
562	42	12	4	4	2024
563	42	14	4	4	2024
564	42	14	13	4	2024
565	42	15	14	4	2024
566	43	3	9	5	2024
567	43	5	9	4	2024
568	43	7	14	4	2024
569	43	8	3	4	2024
570	43	8	13	4	2024
571	43	9	14	5	2024
572	43	12	3	5	2024
573	43	12	4	5	2024
574	43	14	4	4	2024
575	43	14	13	4	2024
576	43	15	14	4	2024
577	44	3	9	4	2024
578	44	5	9	4	2024
579	44	7	14	5	2024
580	44	8	3	4	2024
581	44	8	13	4	2024
582	44	9	14	5	2024
583	44	12	3	4	2024
584	44	12	4	4	2024
585	44	14	4	5	2024
586	44	14	13	5	2024
587	44	15	14	4	2024
588	45	3	9	4	2024
589	45	5	9	5	2024
590	45	7	14	4	2024
591	45	8	3	4	2024
592	45	8	13	4	2024
593	45	9	14	4	2024
594	45	12	3	5	2024
595	45	12	4	5	2024
596	45	14	4	4	2024
597	45	14	13	4	2024
598	45	15	14	5	2024
599	46	3	9	5	2024
600	46	5	9	4	2024
601	46	7	14	4	2024
602	46	8	3	5	2024
603	46	8	13	5	2024
604	46	9	14	5	2024
605	46	12	3	4	2024
606	46	12	4	4	2024
607	46	14	4	5	2024
608	46	14	13	5	2024
609	46	15	14	5	2024
610	50	3	9	4	2024
611	50	5	9	5	2024
612	50	7	14	4	2024
613	50	8	3	5	2024
614	50	8	13	5	2024
615	50	9	14	4	2024
616	50	12	3	5	2024
617	50	12	4	5	2024
618	50	14	4	4	2024
619	50	14	13	4	2024
620	50	15	14	4	2024
621	51	3	9	4	2024
622	51	5	9	4	2024
623	51	7	14	5	2024
624	51	8	3	4	2024
625	51	8	13	4	2024
626	51	9	14	5	2024
627	51	12	3	4	2024
628	51	12	4	4	2024
629	51	14	4	4	2024
630	51	14	13	4	2024
631	51	15	14	4	2024
632	52	3	9	4	2024
633	52	5	9	5	2024
634	52	7	14	4	2024
635	52	8	3	5	2024
636	52	8	13	5	2024
637	52	9	14	4	2024
638	52	12	3	4	2024
639	52	12	4	4	2024
640	52	14	4	4	2024
641	52	14	13	4	2024
642	52	15	14	4	2024
643	53	3	9	5	2024
644	53	5	9	4	2024
645	53	7	14	5	2024
646	53	8	3	4	2024
647	53	8	13	4	2024
648	53	9	14	4	2024
649	53	12	3	4	2024
650	53	12	4	4	2024
651	53	14	4	5	2024
652	53	14	13	5	2024
653	53	15	14	4	2024
654	54	3	9	4	2024
655	54	5	9	4	2024
656	54	7	14	5	2024
657	54	8	3	5	2024
658	54	8	13	5	2024
659	54	9	14	5	2024
660	54	12	3	5	2024
661	54	12	4	5	2024
662	54	14	4	4	2024
663	54	14	13	4	2024
664	54	15	14	5	2024
665	55	3	9	4	2024
666	55	5	9	4	2024
667	55	7	14	5	2024
668	55	8	3	5	2024
669	55	8	13	5	2024
670	55	9	14	4	2024
671	55	12	3	5	2024
672	55	12	4	5	2024
673	55	14	4	5	2024
674	55	14	13	5	2024
675	55	15	14	4	2024
676	56	3	9	4	2024
677	56	5	9	3	2024
678	56	7	14	4	2024
679	56	8	3	5	2024
680	56	8	13	5	2024
681	56	9	14	5	2024
682	56	12	3	5	2024
683	56	12	4	5	2024
684	56	14	4	5	2024
685	56	14	13	5	2024
686	56	15	14	5	2024
687	57	3	9	4	2024
688	57	5	9	5	2024
689	57	7	14	4	2024
690	57	8	3	4	2024
691	57	8	13	4	2024
692	57	9	14	5	2024
693	57	12	3	4	2024
694	57	12	4	4	2024
695	57	14	4	5	2024
696	57	14	13	5	2024
697	57	15	14	5	2024
698	58	3	9	4	2024
699	58	5	9	5	2024
700	58	7	14	5	2024
701	58	8	3	4	2024
702	58	8	13	4	2024
703	58	9	14	6	2024
704	58	12	3	5	2024
705	58	12	4	5	2024
706	58	14	4	5	2024
707	58	14	13	5	2024
708	58	15	14	4	2024
709	59	3	9	4	2024
710	59	5	9	3	2024
711	59	7	14	4	2024
712	59	8	3	4	2024
713	59	8	13	4	2024
714	59	9	14	4	2024
715	59	12	3	4	2024
716	59	12	4	4	2024
717	59	14	4	5	2024
718	59	14	13	5	2024
719	59	15	14	4	2024
720	60	3	9	5	2024
721	60	5	9	4	2024
722	60	7	14	5	2024
723	60	8	3	4	2024
724	60	8	13	4	2024
725	60	9	14	4	2024
726	60	12	3	5	2024
727	60	12	4	5	2024
728	60	14	4	5	2024
729	60	14	13	5	2024
730	60	15	14	4	2024
731	61	3	10	5	2024
732	61	4	1	5	2024
733	61	5	1	4	2024
734	61	7	10	5	2024
735	61	7	15	5	2024
736	61	10	8	5	2024
737	61	12	4	4	2024
738	61	14	4	5	2024
739	61	14	15	5	2024
740	62	3	10	4	2024
741	62	4	1	4	2024
742	62	5	1	4	2024
743	62	7	10	4	2024
744	62	7	15	4	2024
745	62	10	8	4	2024
746	62	12	4	5	2024
747	62	14	4	5	2024
748	62	14	15	5	2024
749	63	3	10	4	2024
750	63	4	1	4	2024
751	63	5	1	4	2024
752	63	7	10	4	2024
753	63	7	15	4	2024
754	63	10	8	4	2024
755	63	12	4	4	2024
756	63	14	4	4	2024
757	63	14	15	4	2024
758	64	3	10	4	2024
759	64	4	1	4	2024
760	64	5	1	4	2024
761	64	7	10	4	2024
762	64	7	15	4	2024
763	64	10	8	4	2024
764	64	12	4	4	2024
765	64	14	4	4	2024
766	64	14	15	4	2024
767	65	3	10	5	2024
768	65	4	1	5	2024
769	65	5	1	5	2024
770	65	7	10	4	2024
771	65	7	15	4	2024
772	65	10	8	5	2024
773	65	12	4	4	2024
774	65	14	4	4	2024
775	65	14	15	4	2024
776	67	3	10	4	2024
777	67	4	1	4	2024
778	67	5	1	5	2024
779	67	7	10	4	2024
780	67	7	15	4	2024
781	67	10	8	5	2024
782	67	12	4	5	2024
783	67	14	4	4	2024
784	67	14	15	4	2024
785	68	3	10	4	2024
786	68	4	1	4	2024
787	68	5	1	5	2024
788	68	7	10	5	2024
789	68	7	15	5	2024
790	68	10	8	4	2024
791	68	12	4	4	2024
792	68	14	4	4	2024
793	68	14	15	4	2024
794	69	3	10	4	2024
795	69	4	1	5	2024
796	69	5	1	4	2024
797	69	7	10	4	2024
798	69	7	15	4	2024
799	69	10	8	4	2024
800	69	12	4	5	2024
801	69	14	4	4	2024
802	69	14	15	4	2024
803	70	3	10	5	2024
804	70	4	1	5	2024
805	70	5	1	4	2024
806	70	7	10	5	2024
807	70	7	15	5	2024
808	70	10	8	5	2024
809	70	12	4	5	2024
810	70	14	4	5	2024
811	70	14	15	5	2024
812	71	3	10	4	2024
813	71	4	1	4	2024
814	71	5	1	4	2024
815	71	7	10	4	2024
816	71	7	15	4	2024
817	71	10	8	5	2024
818	71	12	4	3	2024
819	71	14	4	4	2024
820	71	14	15	4	2024
821	72	3	10	5	2024
822	72	4	1	5	2024
823	72	5	1	4	2024
824	72	7	10	4	2024
825	72	7	15	4	2024
826	72	10	8	4	2024
827	72	12	4	4	2024
828	72	14	4	5	2024
829	72	14	15	5	2024
830	73	3	10	5	2024
831	73	4	1	4	2024
832	73	5	1	3	2024
833	73	7	10	5	2024
834	73	7	15	5	2024
835	73	10	8	4	2024
836	73	12	4	4	2024
837	73	14	4	4	2024
838	73	14	15	4	2024
839	75	3	10	4	2024
840	75	4	1	4	2024
841	75	5	1	5	2024
842	75	7	10	4	2024
843	75	7	15	4	2024
844	75	10	8	5	2024
845	75	12	4	5	2024
846	75	14	4	5	2024
847	75	14	15	5	2024
848	76	3	10	4	2024
849	76	4	1	4	2024
850	76	5	1	4	2024
851	76	7	10	4	2024
852	76	7	15	4	2024
853	76	10	8	4	2024
854	76	12	4	4	2024
855	76	14	4	4	2024
856	76	14	15	4	2024
857	77	3	10	6	2024
858	77	4	1	4	2024
859	77	5	1	4	2024
860	77	7	10	4	2024
861	77	7	15	4	2024
862	77	10	8	5	2024
863	77	12	4	5	2024
864	77	14	4	4	2024
865	77	14	15	4	2024
866	78	3	10	4	2024
867	78	4	1	5	2024
868	78	5	1	5	2024
869	78	7	10	4	2024
870	78	7	15	4	2024
871	78	10	8	4	2024
872	78	12	4	4	2024
873	78	14	4	4	2024
874	78	14	15	4	2024
875	79	3	10	5	2024
876	79	4	1	5	2024
877	79	5	1	3	2024
878	79	7	10	5	2024
879	79	7	15	5	2024
880	79	10	8	4	2024
881	79	12	4	4	2024
882	79	14	4	5	2024
883	79	14	15	5	2024
884	80	3	10	4	2024
885	80	4	1	4	2024
886	80	5	1	4	2024
887	80	7	10	4	2024
888	80	7	15	4	2024
889	80	10	8	4	2024
890	80	12	4	5	2024
891	80	14	4	4	2024
892	80	14	15	4	2024
893	81	2	12	5	2024
894	81	3	10	5	2024
895	81	7	10	5	2024
896	81	7	15	5	2024
897	81	8	13	5	2024
898	81	11	12	4	2024
899	81	14	7	5	2024
900	81	14	13	5	2024
901	81	14	15	5	2024
902	82	2	12	4	2024
903	82	3	10	4	2024
904	82	7	10	4	2024
905	82	7	15	4	2024
906	82	8	13	4	2024
907	82	11	12	5	2024
908	82	14	7	5	2024
909	82	14	13	5	2024
910	82	14	15	5	2024
911	83	2	12	3	2024
912	83	3	10	4	2024
913	83	7	10	4	2024
914	83	7	15	4	2024
915	83	8	13	4	2024
916	83	11	12	4	2024
917	83	14	7	4	2024
918	83	14	13	4	2024
919	83	14	15	4	2024
920	84	2	12	4	2024
921	84	3	10	6	2024
922	84	7	10	5	2024
923	84	7	15	5	2024
924	84	8	13	5	2024
925	84	11	12	4	2024
926	84	14	7	4	2024
927	84	14	13	4	2024
928	84	14	15	4	2024
929	85	2	12	4	2024
930	85	3	10	5	2024
931	85	7	10	4	2024
932	85	7	15	4	2024
933	85	8	13	4	2024
934	85	11	12	4	2024
935	85	14	7	4	2024
936	85	14	13	4	2024
937	85	14	15	4	2024
938	86	2	12	4	2024
939	86	3	10	5	2024
940	86	7	10	5	2024
941	86	7	15	5	2024
942	86	8	13	4	2024
943	86	11	12	4	2024
944	86	14	7	5	2024
945	86	14	13	5	2024
946	86	14	15	5	2024
947	87	2	12	4	2024
948	87	3	10	4	2024
949	87	7	10	4	2024
950	87	7	15	4	2024
951	87	8	13	3	2024
952	87	11	12	5	2024
953	87	14	7	4	2024
954	87	14	13	4	2024
955	87	14	15	4	2024
956	88	2	12	4	2024
957	88	3	10	4	2024
958	88	7	10	4	2024
959	88	7	15	4	2024
960	88	8	13	4	2024
961	88	11	12	4	2024
962	88	14	7	5	2024
963	88	14	13	5	2024
964	88	14	15	5	2024
965	89	2	12	5	2024
966	89	3	10	5	2024
967	89	7	10	4	2024
968	89	7	15	4	2024
969	89	8	13	4	2024
970	89	11	12	5	2024
971	89	14	7	5	2024
972	89	14	13	5	2024
973	89	14	15	5	2024
974	90	2	12	3	2024
975	90	3	10	5	2024
976	90	7	10	5	2024
977	90	7	15	5	2024
978	90	8	13	4	2024
979	90	11	12	4	2024
980	90	14	7	4	2024
981	90	14	13	4	2024
982	90	14	15	4	2024
983	91	2	12	5	2024
984	91	3	10	4	2024
985	91	7	10	5	2024
986	91	7	15	5	2024
987	91	8	13	4	2024
988	91	11	12	5	2024
989	91	14	7	5	2024
990	91	14	13	5	2024
991	91	14	15	5	2024
992	92	2	12	4	2024
993	92	3	10	4	2024
994	92	7	10	4	2024
995	92	7	15	4	2024
996	92	8	13	4	2024
997	92	11	12	4	2024
998	92	14	7	4	2024
999	92	14	13	4	2024
1000	92	14	15	4	2024
1001	93	2	12	4	2024
1002	93	3	10	4	2024
1003	93	7	10	4	2024
1004	93	7	15	4	2024
1005	93	8	13	3	2024
1006	93	11	12	4	2024
1007	93	14	7	5	2024
1008	93	14	13	5	2024
1009	93	14	15	5	2024
1010	94	2	12	5	2024
1011	94	3	10	4	2024
1012	94	7	10	4	2024
1013	94	7	15	4	2024
1014	94	8	13	4	2024
1015	94	11	12	4	2024
1016	94	14	7	4	2024
1017	94	14	13	4	2024
1018	94	14	15	4	2024
1019	95	2	12	4	2024
1020	95	3	10	6	2024
1021	95	7	10	5	2024
1022	95	7	15	5	2024
1023	95	8	13	5	2024
1024	95	11	12	5	2024
1025	95	14	7	5	2024
1026	95	14	13	5	2024
1027	95	14	15	5	2024
1028	96	2	12	5	2024
1029	96	3	10	4	2024
1030	96	7	10	4	2024
1031	96	7	15	4	2024
1032	96	8	13	5	2024
1033	96	11	12	5	2024
1034	96	14	7	4	2024
1035	96	14	13	4	2024
1036	96	14	15	4	2024
1037	97	2	12	5	2024
1038	97	3	10	5	2024
1039	97	7	10	5	2024
1040	97	7	15	5	2024
1041	97	8	13	4	2024
1042	97	11	12	4	2024
1043	97	14	7	4	2024
1044	97	14	13	4	2024
1045	97	14	15	4	2024
1046	98	2	12	4	2024
1047	98	3	10	5	2024
1048	98	7	10	4	2024
1049	98	7	15	4	2024
1050	98	8	13	5	2024
1051	98	11	12	4	2024
1052	98	14	7	5	2024
1053	98	14	13	5	2024
1054	98	14	15	5	2024
1055	99	2	12	5	2024
1056	99	3	10	5	2024
1057	99	7	10	4	2024
1058	99	7	15	4	2024
1059	99	8	13	5	2024
1060	99	11	12	4	2024
1061	99	14	7	4	2024
1062	99	14	13	4	2024
1063	99	14	15	4	2024
1064	100	2	12	5	2024
1065	100	3	10	5	2024
1066	100	7	10	3	2024
1067	100	7	15	3	2024
1068	100	8	13	4	2024
1069	100	11	12	3	2024
1070	100	14	7	4	2024
1071	100	14	13	4	2024
1072	100	14	15	4	2024
\.


-- Aktualizacja sekwencji
SELECT setval('class_profile_id_seq', COALESCE((SELECT MAX(id) FROM class_profile), 1));
SELECT setval('users_user_id_seq', COALESCE((SELECT MAX(user_id) FROM users), 1));
SELECT setval('teachers_teacher_id_seq', COALESCE((SELECT MAX(teacher_id) FROM teachers), 1));
SELECT setval('classes_class_id_seq', COALESCE((SELECT MAX(class_id) FROM classes), 1));
SELECT setval('subjects_subject_id_seq', COALESCE((SELECT MAX(subject_id) FROM subjects), 1));
SELECT setval('subject_groups_group_id_seq', COALESCE((SELECT MAX(group_id) FROM subject_groups), 1));
SELECT setval('parents_parent_id_seq', COALESCE((SELECT MAX(parent_id) FROM parents), 1));
SELECT setval('students_student_id_seq', COALESCE((SELECT MAX(student_id) FROM students), 1));
SELECT setval('class_schedule_schedule_id_seq', COALESCE((SELECT MAX(schedule_id) FROM class_schedule), 1));
SELECT setval('contact_info_contact_id_seq', COALESCE((SELECT MAX(contact_id) FROM contact_info), 1));
SELECT setval('personal_data_personal_id_seq', COALESCE((SELECT MAX(personal_id) FROM personal_data), 1));
SELECT setval('attendance_attendance_id_seq', COALESCE((SELECT MAX(attendance_id) FROM attendance), 1));
SELECT setval('tests_test_id_seq', COALESCE((SELECT MAX(test_id) FROM tests), 1));
SELECT setval('events_event_id_seq', COALESCE((SELECT MAX(event_id) FROM events), 1));
SELECT setval('grades_grade_id_seq', COALESCE((SELECT MAX(grade_id) FROM grades), 1));
SELECT setval('slot_exceptions_exception_id_seq', COALESCE((SELECT MAX(exception_id) FROM slot_exceptions), 1));
SELECT setval('class_changes_history_id_seq', COALESCE((SELECT MAX(id) FROM class_changes_history), 1));
SELECT setval('group_changes_history_id_seq', COALESCE((SELECT MAX(id) FROM group_changes_history), 1));
SELECT setval('final_grades_id_seq', COALESCE((SELECT MAX(id) FROM final_grades), 1));

SET session_replication_role = DEFAULT;

-- Import zakończony pomyślnie
