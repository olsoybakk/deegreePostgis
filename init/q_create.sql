CREATE TABLE public.point
(
  id serial,
  geometry geometry(Point, 4258),
  info Text
)
WITH (
  OIDS=FALSE
);
CREATE TABLE public.line
(
  id serial,
  geometry geometry(LineString, 4258),
  info Text
)
WITH (
  OIDS=FALSE
);
CREATE TABLE public.polygon
(
  id serial,
  geometry geometry(Polygon, 4258),
  info Text
)
WITH (
  OIDS=FALSE
);