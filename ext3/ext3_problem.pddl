;; Problema modificado
(define (problem menu-ejemplo)
  (:domain menu-semanal)

  (:objects
    lunes martes miercoles jueves viernes - dia
    ensalada sopa paella crema pasta arroz - plato
    pollo merluza lasagna fabada calamar tortilla - plato
    sopa carne pescado pasta ensalada arroz marisco huevo - tipo
  )

  (:init
    (es_lunes lunes)

    (menu_dia lunes)
    (menu_dia martes)
    (menu_dia miercoles)
    (menu_dia jueves)
    (menu_dia viernes)

    (es_primero ensalada)
    (es_primero sopa)
    (es_primero paella)
    (es_primero crema)
    (es_primero pasta)
    (es_primero arroz)

    (es_segundo pollo)
    (es_segundo merluza)
    (es_segundo lasagna)
    (es_segundo fabada)
    (es_segundo calamar)
    (es_segundo tortilla)

    (tipo ensalada ensalada)
    (tipo sopa sopa)
    (tipo paella arroz)
    (tipo crema sopa)
    (tipo pasta pasta)
    (tipo arroz arroz)
    (tipo pollo carne)
    (tipo merluza pescado)
    (tipo lasagna pasta)
    (tipo fabada carne)
    (tipo calamar marisco)
    (tipo tortilla huevo)

    (incompatible paella fabada)
    (incompatible sopa fabada)

    (anterior martes lunes)
    (anterior miercoles martes)
    (anterior jueves miercoles)
    (anterior viernes jueves)

    (plato_obligatorio_primero jueves paella)
    (plato_obligatorio_primero lunes crema)
    (plato_obligatorio_segundo viernes lasagna)

  )

  (:goal (and
  (menu-asignado lunes)
  (menu-asignado martes)
  (menu-asignado miercoles)
  (menu-asignado jueves)
  (menu-asignado viernes)
  
  (forall (?d - dia ?p - plato)
  (imply (plato_obligatorio_primero ?d ?p)
         (exists (?s - plato)
            (asignado ?d ?p ?s)))
  )

  (forall (?d - dia ?p - plato)
  (imply (plato_obligatorio_segundo ?d ?p)
         (exists (?s - plato)
            (asignado ?d ?s ?p)))
  )

  ))
)
