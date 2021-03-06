CREATE TABLE public.point
(
  id serial,
  geometry geometry(Point, 25832),
  info Text,
  skjult Text,
  beskyttet Text,
  langtekst Text,
  valg Boolean,
  tall Integer,
  vedlegg Text
)
WITH (
  OIDS=FALSE
);
CREATE TABLE public.line
(
  id serial,
  geometry geometry(LineString, 25832),
  info Text
)
WITH (
  OIDS=FALSE
);
CREATE TABLE public.polygon
(
  id serial,
  geometry geometry(Polygon, 25832),
  info Text
)
WITH (
  OIDS=FALSE
);

-- VALUES(ST_GeomFromText('POINT(63.4123334 10.4044632)', 4258), 'Heisann');
INSERT INTO public.point(geometry, info, beskyttet, skjult)
VALUES(ST_GeomFromText('POINT(570130 7032300)', 25832), 'Heisann', 'ikke redigerbar', 'usynlig...');

INSERT INTO public.point(geometry, info, beskyttet, skjult, valg, tall, vedlegg)
VALUES(ST_GeomFromText('POINT(570150 7032350)', 25832), 'Hoppsann', 'ikke redigerbar', 'usynlig...', true, 123, 'https://geoinnsyn3.nois.no/servicesmaster/ISY.GIS.IsyAttachment/api/v1/attachment/get?application=gibeta&project=delesaker&file=BodyPart_5c7d445f-79be-4fd5-a209-1428eb61461f.png|https://geoinnsyn3.nois.no/servicesmaster/ISY.GIS.IsyAttachment/api/v1/attachment/get?application=gibeta&project=delesaker&file=BodyPart_e1d435a0-cfe3-4496-9f16-a3805d9f38c1.png');

INSERT INTO public.line(geometry, info)
VALUES(ST_GeomFromText('LINESTRING(570003.9184570312 7032208.909667968, 570109.0385742188 7032440.967285155, 570377.4584960938 7032440.967285155, 570424.3989257812 7032286.26220703)', 25832), 'Heisann');

INSERT INTO public.polygon(geometry, info)
VALUES(ST_GeomFromText('POLYGON((570006.5629882812 7032206.92626953, 569925.9047851562 7032128.912597655, 569897.4760742186 7032071.394042968, 569898.1372070311 7031951.067871093, 569944.4165039061 7031834.708496093, 570085.2377929688 7031800.990722655, 570337.7905273436 7031785.784667968, 570350.3520507811 7031858.509277343, 570469.3559570311 7032089.905761719, 570507.7016601561 7032200.976074219, 570392.6645507811 7032314.690917969, 570180.4409179686 7032304.773925781, 570415.8041992186 7032107.756347656, 570130.1948242186 7031860.492675781, 570006.5629882812 7032206.92626953))', 25832), 'Hoppsann');
