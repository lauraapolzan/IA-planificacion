(define (domain menu-semanal)

  (:requirements :strips :typing)

  (:types
    plato dia
  )

  (:predicates
    (es_primero ?p - plato)
    (es_segundo ?p - plato)
    (incompatible ?p1 - plato ?p2 - plato)
    (asignado ?d - dia ?p1 - plato ?p2 - plato)
    (menu_dia ?d - dia)
    (usado ?p - plato)
    (menu-asignado ?d - dia)
  )

  (:action asignar_menu
    :parameters (?d - dia ?p1 - plato ?p2 - plato)
    :precondition (and
      (es_primero ?p1)
      (es_segundo ?p2)
      (menu_dia ?d)
      (not (incompatible ?p1 ?p2))
      (not (usado ?p1))
      (not (usado ?p2))
      (not (menu-asignado ?d))
    )
    :effect (and
      (asignado ?d ?p1 ?p2)
      (usado ?p1)
      (usado ?p2)
      (menu-asignado ?d)
    )
  )
)