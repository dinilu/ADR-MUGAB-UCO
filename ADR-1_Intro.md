# Introducción a R
Diego Nieto Lugilde

# El curso…

## El plan

- Tema 1: Introducción a R y programación
  - La estructura de R
  - Funciones, objetos y programación básica
  - Entorno (sesión de R) y directorio de trabajo
  - Trabajar con archivos (scripts y datos)
- Tema 2:
  - Instalación de paquetes
  - CRAN
  - GitHub
  - Graficado
- Tema 4:
  - Estadística descriptiva
  - Contraste de hipótesis
  - Paramétricos vs No paramétricos

# RStudio

Interfaz gráfica

# R

## La estructura de R

- Funciones (¿qué deseas hacer?)
- Objetos (¿con qué o sobre qué quieres hacerlo?)

``` r
1 + 2
```

    [1] 3

> [!NOTE]
>
> Aquí, 1 y 2 son objetos sobre los que aplicamos la función suma.

## La estructura de R

<div>

<figure class=''>

<div>

<img src="ADR-1_Intro_files\figure-commonmark\dot-figure-1.png"
style="width:7in;height:5in" />

</div>

</figure>

</div>

## Llamar a una función

- *Call*: Una función con un conjunto particular de objetos
  - función( argumento 1 )

``` r
sqrt(16)
```

    [1] 4

> [!NOTE]
>
> El resultado de la función se imprime directamente en pantalla

## Asignación de valores a objetos

- *Assign*: Una función especial para crear/modificar un objeto
  - Valor específico
  - El resultado de una llamada a una función

``` r
x <- 2
```

> [!NOTE]
>
> Fijaros que el resultado no se imprime en pantalla como antes

``` r
x
```

    [1] 2

## Múltiples asignaciones para crear objetos

``` r
a = 10

a <- 10

10 -> a
```

<div class="{callout-note}">

Estas tres líneas hacen lo mismo

</div>

# ¿Qué información puede contener un objeto?

## Números de cualquier tipo

- 0, 0.2, Inf

``` r
numeric_object <- 0.5
```

## Caracteres (texto)

- Texto libre (e.g., “Bromus diandrus”, “Bromus carinatus”, o “Bison
  bison”)

``` r
character_object <- "Bromus diandrus"
```

> [!WARNING]
>
> Las cadenas de texto se ponen entre comillas para poder usar espacios
> y para distinguirlos de los objetos

## Valores lógicos

- TRUE (T), FALSE (F)

``` r
logical_object <- TRUE
```

## Factores

- Categorías (e.g., “Masculino” o “Femenino”)

``` r
factor_object <- factor("Male")
```

## No data

- NA

``` r
na_object <- NA
```

## ¿Qué hace interesantes a los objetos?

- Entidad con información
- Se puede reutilizar tantas veces como se quiera
- Pertenece a una clase, lo que le dota de propiedades propias
- Cada clase tiene una estructura propia

## \*class() te dice la clase de un objeto

``` r
class(numeric_object)
class(logical_object)
class(factor_object)
class(character_object)
class(“x”)
class(x)
```

## ¿Cómo se reutilizan los objetos?

``` r
a <- a + 1
b <- a * a
x <- sqrt(b)
x
```

    [1] 11
