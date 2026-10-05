# 🎮 Análisis y forecasting de ventas de videojuegos

Proyecto de portafolio: limpieza de datos, análisis exploratorio y pronóstico de ventas
con Python sobre el histórico de ventas de videojuegos (~16,600 juegos, 1980-2016).

## Qué incluye
- **Limpieza y acomodo de datos:** manejo de nulos, validación de consistencia, nuevas variables y transformación a formato largo.
- **EDA:** distribución de ventas, géneros, plataformas, publishers, regiones y evolución en el tiempo.
- **Forecasting:** ARIMA y Holt amortiguado comparados contra un modelo base, con validación de origen móvil.

## Herramientas
Python · Pandas · NumPy · Matplotlib · Seaborn · Scikit-learn · Statsmodels · Jupyter

## Estructura
| Notebook | Contenido |
|---|---|
| `01_limpieza_y_transformacion` | Carga, limpieza, validación y acomodo de datos |
| `02_eda_visualizaciones` | Análisis exploratorio y gráficas |
| `03_forecasting_arima` | Serie de tiempo, comparación de modelos y pronóstico a 3 años |

## Decisiones clave
- Los años posteriores a 2015 tienen datos incompletos, así que se excluyen del forecasting para no enseñarle al modelo una caída falsa.
- Los juegos sin año (1.6%) no se imputan; solo se excluyen del análisis temporal.
- Los modelos se evalúan con validación de origen móvil, porque una sola ventana de prueba coincide con la caída posterior al pico de 2008 y engaña a cualquier modelo.
- El número de juegos registrados cae después de 2011; parte de la caída de ventas puede reflejar menor cobertura del dataset, por lo que el pronóstico se interpreta como ventas registradas en este dataset.

## Resultados
_(Pega aquí tus hallazgos del EDA y la tabla de comparación de modelos del notebook 3)_

![Ventas por año](images/06_ventas_por_anio.png)
![Validación de modelos](images/11_validacion_modelos.png)
![Pronóstico](images/12_pronostico_futuro.png)

## Cómo ejecutarlo
```bash
pip install -r requirements.txt
```
Abre los notebooks de la carpeta `notebooks/` en orden (01, 02, 03).

## Autor
Daniel Somarriba · Data Analyst