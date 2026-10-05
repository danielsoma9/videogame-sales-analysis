# ANALISIS Y FORECASTING DE VENTAS VIDEOJUEGOS
Proyecto de portafolio: limpieza de datos, análisis EDA y pronóstico de ventas sobre el histórico de ventas de videojuegos (16,600 juegos, 1980-2016).

## QUE SE HIZO?
- **Limpieza y acomodo de datos:** manejo de nulos, validación de consistencia, nuevas variables y transformación a formato largo.
- **EDA:** distribución de ventas, géneros, plataformas, publishers, regiones y evolución en el tiempo.
- **Forecasting:** ARIMA y Holt amortiguado comparados contra un modelo base, con validación de origen móvil.

## HERRAMIENTAS
Python · Pandas · NumPy · Matplotlib · Seaborn · Scikit-learn · Statsmodels · Jupyter

## ESTRUCTURA
| Notebook | Contenido |
|---|---|
| `01_limpieza_y_transformacion` | Carga, limpieza, validación y acomodo de datos |
| `02_eda_visualizaciones` | Análisis exploratorio y gráficas |
| `03_forecasting_arima` | Serie de tiempo, comparación de modelos y pronóstico a 3 años |

## NOTAS
- Los años posteriores a 2015 tienen datos incompletos, así que se excluyen del forecasting para no enseñarle al modelo una caída falsa.
- Los juegos sin año (1.6%) no se imputan; solo se excluyen del análisis temporal.
- Los modelos se evalúan con validación de origen móvil, porque una sola ventana de prueba coincide con la caída posterior al pico de 2008 y engaña a cualquier modelo.
- El número de juegos registrados cae después de 2011; parte de la caída de ventas puede reflejar menor cobertura del dataset, por lo que el pronóstico se interpreta como ventas registradas en este dataset.

## Autor
Daniel Somarriba · Data Analyst
