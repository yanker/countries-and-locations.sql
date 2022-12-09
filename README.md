<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
<!-- [![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url] -->
[![MIT License][license-shield]][license-url]

<br>


# LINKED TABLES (country, community/state, province, municipalities)

> Tables linked by country, community/state, province, locations.
> Currently only Spain, database updated until December 2022, which includes the latest territorial updates.
> This structure is ready to be imported into MySql

<br>

## Stuctuct Tables
---
<br>

### TABLE app_countries (COUNTRIES)
| ROW           | TYPE          | DETAILS                           |
|---            |:---:          |---                                |
|*id*           |tinyint(4)     |Autonumber unique identifier       |
|*title*        |varchar(100)   |Name of the country                |

<br>
<br>

### TABLE app_states (STATES)
| ROW           | TYPE          | DETAILS                           |
|---            |:---:          |---                                |
|*id*           |tinyint(4)     |Autonumber unique identifier       |
|*title*        |varchar(100)   |Name of the state                  |
|*country_id*   |tinyint(4)     |idLink country-state               |

<br>
<br>

### TABLE app_locations (LOCATIONS)
| ROW           | TYPE          | DETAILS                           |
|---            |:---:          |---                                |
|*id*           |tinyint(4)     |Autonumber unique identifier       |
|*title*        |varchar(100)   |Name of the location               |
|*states_id*    |tinyint(4)     |idLink state-location              |

<br>

## Getting Started
---
If you haven´t  database create, you must create database before of import the scripts

Import the database in the order exactly indiqued and country seleccioned
/scr/getting-start/

1. app_countries.sql
2. app_ccaa.sql
3. app_states.sql
4. app_locations.sql

Now, Select your country in src/ and import in the database in the order exactly
1. app_countries.sql
2. app_ccaa.sql
3. app_states.sql
4. app_locations.sql

<br>

## Countries Availables
---
src/es --> Spain

<br>

## Test
---
Exec sql for view results after insert rows

`SELECT loc.title AS 'Location',st.title AS 'State', cc.title AS 'CCAA', co.title AS 'Country' 
	FROM app_locations loc
	LEFT JOIN app_states st ON st.id = loc. states_id
	LEFT JOIN app_ccaa cc ON cc.id = st.ccaa_id
	LEFT JOIN app_countries co ON co.id = st.country_id
ORDER BY loc.id DESC`

<br>
## Autor
---
Alejandro Estévez (Yanker)

<br>

## Credits
---
* Icons: https://skillicons.dev
* Lists of countries, states and locations in INE 
** SPAIN 
[INE](https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736177031&menu=ultiDatos&idp=1254734710990)

<br>

## Built With
---
[![My Skills](https://skillicons.dev/icons?i=mysql)](https://skillicons.dev)

<br>

## Licence
Distributed under the MIT License. See [LICENSE.txt](license-url) for more information.

<br>

## Changelog
---
History of updates in [changelog](changelog-url)

<br>

## Support The Project
---
Thank you I hope what you utils my projects! If you want contact whith me you want open issues.

Made with :love_letter: from :es:

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
<!-- https://shields.io/ -->
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[changelog-url]: ./changelog.md
[license-url]: ./LICENCE.txt