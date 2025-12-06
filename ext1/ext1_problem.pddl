(define (problem menu-ejemplo)
  (:domain menu-semanal)

  (:objects
  lunes martes miercoles jueves viernes - dia

  ensalada sopa paella crema pasta arroz - plato
  pollo merluza lasagna fabada calamar tortilla - plato
)


  (:init
    ;; Días de la semana
    (menu_dia lunes)
    (menu_dia martes)
    (menu_dia miercoles)
    (menu_dia jueves)
    (menu_dia viernes)

    ;; Clasificación de platos
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

    ;; Incompatibilidades (ejemplo: paella con fabada no va bien)
    (incompatible paella fabada)
    (incompatible sopa fabada)
  )

  (:goal
    (and
      (menu-asignado lunes)
      (menu-asignado martes)
      (menu-asignado miercoles)
      (menu-asignado jueves)
      (menu-asignado viernes)
    )
  )
)