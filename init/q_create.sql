CREATE TABLE public.point
(
  id serial,
  geometry geometry(Point, 25832),
  info Text
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
INSERT INTO public.point(geometry, info)
VALUES(ST_GeomFromText('POINT(570130 7032300)', 25832), 'Heisann');
INSERT INTO public.point(geometry, info)
VALUES(ST_GeomFromText('POINT(570150 7032350)', 25832), 'Hoppsann');