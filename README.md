# Geospatial Analytics Pipeline

## Project Overview

This project demonstrates an end-to-end geospatial analytics pipeline built on **PostgreSQL + PostGIS**, combining spatial querying, geometry generation, and multi-platform visualization. The pipeline ingests point-based location data, performs spatial analysis, and exports results for validation and interactive exploration.

---

## Architecture & Data Flow

The workflow follows a clear spatial data lifecycle:

1. Point locations are stored as geometry data in PostgreSQL with PostGIS enabled
2. Spatial queries compute derived geometries (convex hulls and nearest-neighbor connections)
3. Query results are exported as KML
4. Outputs are visualized and validated using GIS tools and web-based mapping libraries

---

## Dataset

The dataset consists of a small set of categorized point locations and a designated reference point.  
All locations are represented as WGS84 point geometries (`SRID 4326`) and are anonymized for public sharing.

---

## Database & Spatial Setup

Spatial data is managed using **PostgreSQL with the PostGIS extension**, hosted on **Neon**.

The database schema defines:

- A table for storing point geometries
- Attribute fields for location names and categories
- A spatial geometry column using geographic coordinates

---

## Spatial Analysis

Two core spatial analyses are performed:

### Convex Hull

Computes the minimal polygon enclosing all point locations, representing the overall spatial footprint.

### Nearest Neighbors

Identifies the four closest locations to a reference point and generates line geometries connecting them.

These analyses are implemented using standard PostGIS spatial functions and operators.

---

## Outputs & Exports

Spatial query outputs are exported in **KML format**, enabling interoperability across GIS tools and mapping platforms.

The consolidated KML includes:

- Original point locations
- Convex hull polygon
- Nearest-neighbor connection lines

---

## Visualization

Results are validated and explored across multiple platforms:

- **Google Earth / KML viewers** for geometry inspection
- **ArcGIS Online** for layer-based visualization and map validation
- **OpenLayers** for interactive, browser-based mapping

Screenshots documenting each visualization step are included in the repository.

---

## OpenLayers Web Demo

The repository includes a lightweight **OpenLayers** demo that renders the spatial dataset directly in the browser.  
The demo uses client-side JavaScript and `localStorage` to manage and display spatial features interactively.

---

## Tools & Technologies

- PostgreSQL
- PostGIS
- Neon (managed PostgreSQL hosting)
- KML
- OpenLayers
- ArcGIS Online
- Google Earth

---

## Reproducibility Notes

The SQL scripts included in this repository document the full spatial setup and analysis logic.  
While the hosted database is not publicly exposed, the queries and exported artifacts allow the pipeline to be understood and reproduced in a compatible environment.

---

## Privacy & Anonymization

This repository intentionally excludes personal imagery and sensitive location details.  
All spatial data is generalized and presented solely for demonstrating geospatial analysis workflows.