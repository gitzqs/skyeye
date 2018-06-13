/*
SQLyog Ultimate v10.42 
MySQL - 5.7.16 : Database - dev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dev` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `area` */

CREATE TABLE `area` (
  `areaid` int(11) NOT NULL,
  `areaname` varchar(50) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `arrparentid` varchar(255) NOT NULL,
  `child` int(11) DEFAULT NULL,
  `arrchildid` text NOT NULL,
  `listorder` int(11) DEFAULT NULL,
  `dili` varchar(255) DEFAULT NULL,
  `areadir` char(64) DEFAULT NULL,
  `marker` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `area` */

insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1,'浙江省',0,'0',1,'1,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145',1,'','','119.957202,29.159494');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2,'北京市',0,'0',1,'2,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164',2,'','','116.395645,39.929986');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3,'上海市',0,'0',1,'3,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201',3,'','','121.487899,31.249162');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (4,'天津市',0,'0',1,'4,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182',4,'','','117.210813,39.14393');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (5,'重庆市',0,'0',1,'5,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242',5,'','','106.530635,29.544606');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (6,'河北省',0,'0',1,'6,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426',6,'','','115.661434,38.61384');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (7,'山西省',0,'0',1,'7,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556',7,'','','112.515496,37.866566');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (8,'内蒙古自治区',0,'0',1,'8,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668',8,'','','114.415868,43.468238');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (9,'辽宁省',0,'0',1,'9,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783',9,'','','122.753592,41.6216');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (10,'吉林省',0,'0',1,'10,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851',10,'','','126.262876,43.678846');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (11,'黑龙江省',0,'0',1,'11,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994',11,'','','128.047414,47.356592');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (12,'江苏省',0,'0',1,'12,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117',12,'','','119.368489,33.013797');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (13,'安徽省',0,'0',1,'13,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242',13,'','','117.216005,31.859252');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (14,'福建省',0,'0',1,'14,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337',14,'','','117.984943,26.050118');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (15,'江西省',0,'0',1,'15,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457',15,'','','115.676082,27.757258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (16,'山东省',0,'0',1,'16,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614',16,'','','118.527663,36.09929');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (17,'河南省',0,'0',1,'17,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809',17,'','','113.486804,34.157184');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (18,'湖北省',0,'0',1,'18,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1878,1879,1880,1881,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928',18,'','','112.410562,31.209316');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (19,'湖南省',0,'0',1,'19,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064',19,'','','111.720664,27.695864');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (20,'广东省',0,'0',1,'20,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2085,2086,2087,2088,2089,2090,2091,2092,2093,2094,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2132,2133,2134,2135,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145,2146,2147,2148,2149,2150,2151,2152,2153,2154,2155,2156,2157,2158,2159,2160,2161,2162,2163,2164,2165,2166,2167,2168,2169,2170,2171,2172,2173,2174,2175,2176,2177,2178,2179,2180,2181,2182,2183,2184,2185,2186,2187,2188,2189,2190,2191,2192,2193,2194,2195,2196,2197,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221,2222,2223,2224,2225,2226,2227,2228,2229,2230,2231,2232,2233,2234,2235,2236,2237,2238,2239,2240,2241,2242,2243',20,'','','113.394818,23.408004');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (21,'广西壮族自治区',0,'0',1,'21,2244,2245,2246,2247,2248,2249,2250,2251,2252,2253,2254,2255,2256,2257,2258,2259,2260,2261,2262,2263,2264,2265,2266,2267,2268,2269,2270,2271,2272,2273,2274,2275,2276,2277,2278,2279,2280,2281,2282,2283,2284,2285,2286,2287,2288,2289,2290,2291,2292,2293,2294,2295,2296,2297,2298,2299,2300,2301,2302,2303,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2329,2330,2331,2332,2333,2334,2335,2336,2337,2338,2339,2340,2341,2342,2343,2344,2345,2346,2347,2348,2349,2350,2351,2352,2353,2354,2355,2356,2357,2358,2359,2360,2361,2362,2363,2364,2365,2366',21,'','','108.924274,23.552255');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (22,'海南省',0,'0',1,'22,2367,2368,2369,2370,2371,2372,2373,2374,2375,2376,2377,2378,2379,2380,2381,2382,2383,2384,2385,2386,2387,2388,2389,2390,2391',22,'','','109.733755,19.180501');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (23,'四川省',0,'0',1,'23,2392,2393,2394,2395,2396,2397,2398,2399,2400,2401,2402,2403,2404,2405,2406,2407,2408,2409,2410,2411,2412,2413,2414,2415,2416,2417,2418,2419,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429,2430,2431,2432,2433,2434,2435,2436,2437,2438,2439,2440,2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452,2453,2454,2455,2456,2457,2458,2459,2460,2461,2462,2463,2464,2465,2466,2467,2468,2469,2470,2471,2472,2473,2474,2475,2476,2477,2478,2479,2480,2481,2482,2483,2484,2485,2486,2487,2488,2489,2490,2491,2492,2493,2494,2495,2496,2497,2498,2499,2500,2501,2502,2503,2504,2505,2506,2507,2508,2509,2510,2511,2512,2513,2514,2515,2516,2517,2518,2519,2520,2521,2522,2523,2524,2525,2526,2527,2528,2529,2530,2531,2532,2533,2534,2535,2536,2537,2538,2539,2540,2541,2542,2543,2544,2545,2546,2547,2548,2549,2550,2551,2552,2553,2554,2555,2556,2557,2558,2559,2560,2561,2562,2563,2564,2565,2566,2567,2568,2569,2570,2571,2572,2573,2574,2575,2576,2577,2578,2579,2580,2581,2582,2583,2584,2585,2586,2587,2588,2589,2590,2591,2592',23,'','','102.89916,0.367481');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (24,'贵州省',0,'0',1,'24,2593,2594,2595,2596,2597,2598,2599,2600,2601,2602,2603,2604,2605,2606,2607,2608,2609,2610,2611,2612,2613,2614,2615,2616,2617,2618,2619,2620,2621,2622,2623,2624,2625,2626,2627,2628,2629,2630,2631,2632,2633,2634,2635,2636,2637,2638,2639,2640,2641,2642,2643,2644,2645,2646,2647,2648,2649,2650,2651,2652,2653,2654,2655,2656,2657,2658,2659,2660,2661,2662,2663,2664,2665,2666,2667,2668,2669,2670,2671,2672,2673,2674,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687',24,'','','106.734996,26.902826');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (25,'云南省',0,'0',1,'25,2688,2689,2690,2691,2692,2693,2694,2695,2696,2697,2698,2699,2700,2701,2702,2703,2704,2705,2706,2707,2708,2709,2710,2711,2712,2713,2714,2715,2716,2717,2718,2719,2720,2721,2722,2723,2724,2725,2726,2727,2728,2729,2730,2731,2732,2733,2734,2735,2736,2737,2738,2739,2740,2741,2742,2743,2744,2745,2746,2747,2748,2749,2750,2751,2752,2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2763,2764,2765,2766,2767,2768,2769,2770,2771,2772,2773,2774,2775,2776,2777,2778,2779,2780,2781,2782,2783,2784,2785,2786,2787,2788,2789,2790,2791,2792,2793,2794,2795,2796,2797,2798,2799,2800,2801,2802,2803,2804,2805,2806,2807,2808,2809,2810,2811,2812,2813,2814,2815,2816,2817,2818,2819,2820,2821,2822,2823,2824,2825,2826,2827,2828,2829,2830,2831',25,'','','101.592952,24.864213');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (26,'西藏自治区',0,'0',1,'26,2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,2842,2843,2844,2845,2846,2847,2848,2849,2850,2851,2852,2853,2854,2855,2856,2857,2858,2859,2860,2861,2862,2863,2864,2865,2866,2867,2868,2869,2870,2871,2872,2873,2874,2875,2876,2877,2878,2879,2880,2881,2882,2883,2884,2885,2886,2887,2888,2889,2890,2891,2892,2893,2894,2895,2896,2897,2898,2899,2900,2901,2902,2903,2904,2905,2906,2907,2908,2909,2910,2911',26,'','','89.137982,1.367315');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (27,'陕西省',0,'0',1,'27,2912,2913,2914,2915,2916,2917,2918,2919,2920,2921,2922,2923,2924,2925,2926,2927,2928,2929,2930,2931,2932,2933,2934,2935,2936,2937,2938,2939,2940,2941,2942,2943,2944,2945,2946,2947,2948,2949,2950,2951,2952,2953,2954,2955,2956,2957,2958,2959,2960,2961,2962,2963,2964,2965,2966,2967,2968,2969,2970,2971,2972,2973,2974,2975,2976,2977,2978,2979,2980,2981,2982,2983,2984,2985,2986,2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,3023,3024,3025,3026,3027,3028',27,'','','109.503789,35.860026');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (28,'甘肃省',0,'0',1,'28,3029,3030,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,3041,3042,3043,3044,3045,3046,3047,3048,3049,3050,3051,3052,3053,3054,3055,3056,3057,3058,3059,3060,3061,3062,3063,3064,3065,3066,3067,3068,3069,3070,3071,3072,3073,3074,3075,3076,3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,3094,3095,3096,3097,3098,3099,3100,3101,3102,3103,3104,3105,3106,3107,3108,3109,3110,3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130',28,'','','102.457625,38.103267');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (29,'青海省',0,'0',1,'29,3131,3132,3133,3134,3135,3136,3137,3138,3139,3140,3141,3142,3143,3144,3145,3146,3147,3148,3149,3150,3151,3152,3153,3154,3155,3156,3157,3158,3159,3160,3161,3162,3163,3164,3165,3166,3167,3168,3169,3170,3171,3172,3173,3174,3175,3176,3177,3178,3179,3180,3181',29,'','','96.202544,5.499761');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (30,'宁夏回族自治区',0,'0',1,'30,3182,3183,3184,3185,3186,3187,3188,3189,3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208',30,'','','106.155481,37.321323');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (31,'新疆维吾尔自治区',0,'0',1,'31,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233,3234,3235,3236,3237,3238,3239,3240,3241,3242,3243,3244,3245,3246,3247,3248,3249,3250,3251,3252,3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,3265,3266,3267,3268,3269,3270,3271,3272,3273,3274,3275,3276,3277,3278,3279,3280,3281,3282,3283,3284,3285,3286,3287,3288,3289,3290,3291,3292,3293,3294,3295,3296,3297,3298,3299,3300,3301,3302,3303,3304,3305,3306,3307,3308,3309,3310,3311,3312,3313,3314,3315,3316,3317,3318,3319,3320,3321,3322',31,'','','85.614899,2.127001');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (32,'台湾省',0,'0',1,'32,3323,3324,3325,3326,3327,3328,3329,3330,3331,3332,3333,3334,3335,3336,3337,3338,3339,3340,3341,3342,3343,3344,3345,3346,3347,3348,3349',32,'','','121.053611,23.87656');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (33,'香港特别行政区',0,'0',1,'33,3350,3351,3352,3353,3354,3355,3356,3357,3358,3359,3360,3361,3362,3363,3364,3365,3366,3367,3368,3369,3370,3371',33,'','','114.186124,22.293586');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (34,'澳门特别行政区',0,'0',1,'34,3372,3373,3374,3375,3376,3377,3378,3379,3380,3381',34,'','','113.557519,22.204118');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (36,'湖州市',1,'0,1',1,'36,47,48,49,50,51,52',36,'','','120.137243,30.877925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (37,'杭州市',1,'0,1',1,'37,53,54,55,56,57,58,59,60,61,62,63,64,65,66',37,'','','120.219375,30.259244');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (38,'宁波市',1,'0,1',1,'38,67,68,69,70,71,72,73,74,75,76,77,78,79',38,'','','121.579006,29.885259');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (39,'温州市',1,'0,1',1,'39,80,81,82,83,84,85,86,87,88,89,90',39,'','','120.690635,28.002838');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (40,'嘉兴市',1,'0,1',1,'40,91,92,93,94,95,96,97,98',40,'','','120.760428,30.773992');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (41,'绍兴市',1,'0,1',1,'41,99,100,101,102,103,104,105,106',41,'','','120.592467,30.002365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (42,'金华市',1,'0,1',1,'42,107,108,109,110,111,112,113,114,115,116',42,'','','119.652576,29.102899');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (43,'衢州市',1,'0,1',1,'43,117,118,119,120,121,122,123',43,'','','118.875842,28.95691');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (44,'舟山市',1,'0,1',1,'44,124,125,126,127',44,'','','122.169872,30.03601');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (45,'台州市',1,'0,1',1,'45,128,129,130,131,132,133,134,135,136',45,'','','121.440613,28.668283');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (46,'丽水市',1,'0,1',1,'46,137,138,139,140,141,142,143,144,145',46,'','','119.929576,28.4563');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (47,'吴兴区',36,'0,1,36',0,'47',47,'','','120.088919,30.808545');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (48,'南浔区',36,'0,1,36',0,'48',48,'','','120.309147,30.766831');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (49,'德清县',36,'0,1,36',0,'49',49,'','','120.049831,30.567583');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (50,'长兴县',36,'0,1,36',0,'50',50,'','','119.81942,0.983353');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (51,'安吉县',36,'0,1,36',0,'51',51,'','','119.583158,30.62637');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (52,'开发区',36,'0,1,36',0,'52',52,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (53,'上城区',37,'0,1,37',0,'53',53,'','','120.180126,30.232358');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (54,'下城区',37,'0,1,37',0,'54',54,'','','120.186535,30.310288');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (55,'江干区',37,'0,1,37',0,'55',55,'','','120.303823,30.315832');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (56,'拱墅区',37,'0,1,37',0,'56',56,'','','120.158845,30.344732');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (57,'西湖区',37,'0,1,37',0,'57',57,'','','115.898948,28.657326');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (58,'滨江区',37,'0,1,37',0,'58',58,'','','120.19237,0.187588');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (59,'萧山区',37,'0,1,37',0,'59',59,'','','120.389081,30.172894');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (60,'余杭区',37,'0,1,37',0,'60',60,'','','119.998089,30.38812');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (61,'下沙区',37,'0,1,37',0,'61',61,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (62,'桐庐县',37,'0,1,37',0,'62',62,'','','119.560462,29.836582');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (63,'淳安县',37,'0,1,37',0,'63',63,'','','118.895765,29.614714');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (64,'建德市',37,'0,1,37',0,'64',64,'','','119.379533,29.487115');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (65,'富阳市',37,'0,1,37',0,'65',65,'','','119.846692,30.001094');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (66,'临安市',37,'0,1,37',0,'66',66,'','','119.350295,30.207684');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (67,'海曙区',38,'0,1,38',0,'67',67,'','','121.535395,29.876801');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (68,'江东区',38,'0,1,38',0,'68',68,'','','121.598001,29.875392');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (69,'江北区',38,'0,1,38',0,'69',69,'','','121.493299,29.966392');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (70,'北仑区',38,'0,1,38',0,'70',70,'','','121.889419,29.868332');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (71,'镇海区',38,'0,1,38',0,'71',71,'','','121.61663,9.995449');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (72,'鄞州区',38,'0,1,38',0,'72',72,'','','121.537835,29.785459');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (73,'象山县',38,'0,1,38',0,'73',73,'','','121.858666,29.378771');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (74,'宁海县',38,'0,1,38',0,'74',74,'','','121.463624,29.314474');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (75,'大榭区',38,'0,1,38',0,'75',75,'','','121.958454,29.914279');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (76,'钱湖区',38,'0,1,38',0,'76',76,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (77,'余姚市',38,'0,1,38',0,'77',77,'','','121.152779,29.996457');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (78,'慈溪市',38,'0,1,38',0,'78',78,'','','121.338408,30.189257');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (79,'奉化市',38,'0,1,38',0,'79',79,'','','121.377186,29.617073');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (80,'鹿城区',39,'0,1,39',0,'80',80,'','','120.565799,28.067865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (81,'龙湾区',39,'0,1,39',0,'81',81,'','','120.811078,27.913341');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (82,'瓯海区',39,'0,1,39',0,'82',82,'','','120.558404,27.972177');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (83,'洞头县',39,'0,1,39',0,'83',83,'','','121.125826,27.903664');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (84,'永嘉县',39,'0,1,39',0,'84',84,'','','120.668809,28.33639');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (85,'平阳县',39,'0,1,39',0,'85',85,'','','120.389387,27.637701');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (86,'苍南县',39,'0,1,39',0,'86',86,'','','120.445543,27.434436');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (87,'文成县',39,'0,1,39',0,'87',87,'','','120.028422,27.812713');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (88,'泰顺县',39,'0,1,39',0,'88',88,'','','119.884868,27.536407');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (89,'瑞安市',39,'0,1,39',0,'89',89,'','','120.46834,7.829231');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (90,'乐清市',39,'0,1,39',0,'90',90,'','','121.016175,28.261839');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (91,'南湖区',40,'0,1,40',0,'91',91,'','','120.844535,30.716358');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (92,'经济开发区',40,'0,1,40',0,'92',92,'','','118.192256,26.655443');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (93,'秀洲区',40,'0,1,40',0,'93',93,'','','120.691907,30.777679');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (94,'嘉善县',40,'0,1,40',0,'94',94,'','','120.908873,30.905748');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (95,'海盐县',40,'0,1,40',0,'95',95,'','','120.885576,30.526043');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (96,'海宁市',40,'0,1,40',0,'96',96,'','','120.618727,30.442177');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (97,'平湖市',40,'0,1,40',0,'97',97,'','','121.105839,30.716529');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (98,'桐乡市',40,'0,1,40',0,'98',98,'','','120.490411,30.612341');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (99,'越城区',41,'0,1,41',0,'99',99,'','','120.618327,30.015793');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (100,'袍江区',41,'0,1,41',0,'100',100,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (101,'镜湖区',41,'0,1,41',0,'101',101,'','','118.387245,31.351966');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (102,'绍兴县',41,'0,1,41',0,'102',102,'','','120.572451,29.968789');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (103,'新昌县',41,'0,1,41',0,'103',103,'','','120.975702,29.414314');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (104,'诸暨市',41,'0,1,41',0,'104',104,'','','120.281434,29.6994');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (105,'上虞市',41,'0,1,41',0,'105',105,'','','120.889432,29.97804');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (106,'嵊州市',41,'0,1,41',0,'106',106,'','','120.761431,29.591008');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (107,'婺城区',42,'0,1,42',0,'107',107,'','','119.517572,28.98454');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (108,'金东区',42,'0,1,42',0,'108',108,'','','119.809227,29.155526');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (109,'武义县',42,'0,1,42',0,'109',109,'','','119.720833,28.774056');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (110,'浦江县',42,'0,1,42',0,'110',110,'','','119.910488,29.526266');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (111,'磐安县',42,'0,1,42',0,'111',111,'','','120.567447,29.044202');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (112,'兰溪市',42,'0,1,42',0,'112',112,'','','119.533338,29.284103');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (113,'义乌市',42,'0,1,42',0,'113',113,'','','120.067296,29.306444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (114,'东阳市',42,'0,1,42',0,'114',114,'','','120.380818,29.237427');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (115,'永康市',42,'0,1,42',0,'115',115,'','','120.108684,28.940177');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (116,'江南区',42,'0,1,42',0,'116',116,'','','108.135591,22.663807');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (117,'柯城区',43,'0,1,43',0,'117',117,'','','118.813003,28.998535');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (118,'衢江区',43,'0,1,43',0,'118',118,'','','118.939044,28.941983');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (119,'柯山区',43,'0,1,43',0,'119',119,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (120,'常山县',43,'0,1,43',0,'120',120,'','','118.54767,8.973666');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (121,'开化县',43,'0,1,43',0,'121',121,'','','118.33165,9.189938');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (122,'龙游县',43,'0,1,43',0,'122',122,'','','119.198664,28.997079');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (123,'江山市',43,'0,1,43',0,'123',123,'','','118.607086,28.58197');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (124,'定海区',44,'0,1,44',0,'124',124,'','','122.073024,30.064847');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (125,'普陀区',44,'0,1,44',0,'125',125,'','','121.398443,31.263743');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (126,'岱山县',44,'0,1,44',0,'126',126,'','','122.260359,30.319416');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (127,'嵊泗县',44,'0,1,44',0,'127',127,'','','122.481686,30.705004');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (128,'椒江区',45,'0,1,45',0,'128',128,'','','121.467376,28.657016');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (129,'黄岩区',45,'0,1,45',0,'129',129,'','','121.088318,28.604655');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (130,'路桥区',45,'0,1,45',0,'130',130,'','','121.450242,28.548659');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (131,'玉环县',45,'0,1,45',0,'131',131,'','','121.284426,28.179738');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (132,'三门县',45,'0,1,45',0,'132',132,'','','121.488229,29.017744');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (133,'天台县',45,'0,1,45',0,'133',133,'','','120.985563,29.151779');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (134,'仙居县',45,'0,1,45',0,'134',134,'','','120.640606,28.738742');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (135,'温岭市',45,'0,1,45',0,'135',135,'','','121.421046,28.400554');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (136,'临海市',45,'0,1,45',0,'136',136,'','','121.221919,28.857389');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (137,'莲都区',46,'0,1,46',0,'137',137,'','','119.849952,28.447361');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (138,'青田县',46,'0,1,46',0,'138',138,'','','120.146738,28.208429');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (139,'缙云县',46,'0,1,46',0,'139',139,'','','120.191882,28.666326');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (140,'遂昌县',46,'0,1,46',0,'140',140,'','','119.089342,28.52541');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (141,'松阳县',46,'0,1,46',0,'141',141,'','','119.441013,28.41158');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (142,'云和县',46,'0,1,46',0,'142',142,'','','119.54173,8.13132');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (143,'庆元县',46,'0,1,46',0,'143',143,'','','119.157619,27.628046');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (144,'景宁畲族自治县',46,'0,1,46',0,'144',144,'','','119.61929,7.896053');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (145,'龙泉市',46,'0,1,46',0,'145',145,'','','119.082297,28.050639');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (146,'东城区',2,'0,2',0,'146',146,'','','116.421885,39.938574');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (147,'西城区',2,'0,2',0,'147',147,'','','116.37319,9.93428');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (148,'崇文区',2,'0,2',0,'148',148,'','','116.424636,39.889292');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (149,'宣武区',2,'0,2',0,'149',149,'','','116.369352,39.891531');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (150,'朝阳区',2,'0,2',0,'150',150,'','','116.521695,39.958953');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (151,'丰台区',2,'0,2',0,'151',151,'','','116.25837,9.841938');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (152,'石景山区',2,'0,2',0,'152',152,'','','116.184556,39.938867');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (153,'海淀区',2,'0,2',0,'153',153,'','','116.239678,40.033162');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (154,'门头沟区',2,'0,2',0,'154',154,'','','115.795795,40.000893');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (155,'房山区',2,'0,2',0,'155',155,'','','115.862836,39.726753');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (156,'通州区',2,'0,2',0,'156',156,'','','116.740079,39.809815');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (157,'顺义区',2,'0,2',0,'157',157,'','','116.728229,40.154951');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (158,'昌平区',2,'0,2',0,'158',158,'','','116.216456,40.221724');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (159,'大兴区',2,'0,2',0,'159',159,'','','116.425195,39.65279');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (160,'怀柔区',2,'0,2',0,'160',160,'','','116.593408,40.638139');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (161,'平谷区',2,'0,2',0,'161',161,'','','117.150433,40.215925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (162,'延庆县',2,'0,2',0,'162',162,'','','116.169735,40.545156');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (163,'密云县',2,'0,2',0,'163',163,'','','117.001201,40.532843');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (164,'延庆县',2,'0,2',0,'164',164,'','','116.169735,40.545156');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (165,'和平区',4,'0,4',0,'165',165,'','','117.202814,39.124809');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (166,'河东区',4,'0,4',0,'166',166,'','','117.261693,39.126626');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (167,'河西区',4,'0,4',0,'167',167,'','','117.236165,39.084494');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (168,'南开区',4,'0,4',0,'168',168,'','','117.162728,39.116987');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (169,'河北区',4,'0,4',0,'169',169,'','','117.220297,39.173149');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (170,'红桥区',4,'0,4',0,'170',170,'','','117.162217,39.170621');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (171,'塘沽区',4,'0,4',0,'171',171,'','','117.649081,39.007936');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (172,'汉沽区',4,'0,4',0,'172',172,'','','117.87353,9.247773');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (173,'大港区',4,'0,4',0,'173',173,'','','117.380794,38.729573');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (174,'东丽区',4,'0,4',0,'174',174,'','','117.414782,39.139605');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (175,'西青区',4,'0,4',0,'175',175,'','','117.126201,39.035065');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (176,'津南区',4,'0,4',0,'176',176,'','','117.39291,8.969791');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (177,'北辰区',4,'0,4',0,'177',177,'','','117.180606,39.259131');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (178,'武清区',4,'0,4',0,'178',178,'','','117.034578,39.457043');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (179,'宝坻区',4,'0,4',0,'179',179,'','','117.411421,39.615544');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (180,'宁河县',4,'0,4',0,'180',180,'','','117.689424,39.381561');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (181,'静海县',4,'0,4',0,'181',181,'','','116.972772,38.861262');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (182,'蓟县',4,'0,4',0,'182',182,'','','117.441159,40.009614');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (183,'黄浦区',3,'0,3',0,'183',183,'','','121.496072,31.227203');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (184,'卢湾区',3,'0,3',0,'184',184,'','','121.481238,31.213348');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (185,'徐汇区',3,'0,3',0,'185',185,'','','121.446235,31.169152');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (186,'长宁区',3,'0,3',0,'186',186,'','','121.387616,31.213301');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (187,'静安区',3,'0,3',0,'187',187,'','','121.454756,31.235381');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (188,'普陀区',3,'0,3',0,'188',188,'','','121.398443,31.263743');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (189,'闸北区',3,'0,3',0,'189',189,'','','121.457769,31.288044');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (190,'虹口区',3,'0,3',0,'190',190,'','','121.491919,31.282497');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (191,'杨浦区',3,'0,3',0,'191',191,'','','121.535717,31.30451');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (192,'闵行区',3,'0,3',0,'192',192,'','','121.425024,31.093538');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (193,'宝山区',3,'0,3',0,'193',193,'','','131.564836,46.529228');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (194,'嘉定区',3,'0,3',0,'194',194,'','','121.251014,31.364338');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (195,'浦东新区',3,'0,3',0,'195',195,'','','121.638481,31.230895');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (196,'金山区',3,'0,3',0,'196',196,'','','121.248408,30.835081');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (197,'松江区',3,'0,3',0,'197',197,'','','121.226791,31.021245');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (198,'青浦区',3,'0,3',0,'198',198,'','','121.091425,31.130862');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (199,'南汇区',3,'0,3',0,'199',199,'','','121.769956,31.052602');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (200,'奉贤区',3,'0,3',0,'200',200,'','','121.560642,30.915122');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (201,'崇明县',3,'0,3',0,'201',201,'','','121.535398,31.633565');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (202,'万州区',5,'0,5',0,'202',202,'','','108.413439,30.710054');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (203,'涪陵区',5,'0,5',0,'203',203,'','','107.3408,0.664671');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (204,'渝中区',5,'0,5',0,'204',204,'','','106.546967,29.555236');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (205,'大渡口区',5,'0,5',0,'205',205,'','','106.465322,29.42414');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (206,'江北区',5,'0,5',0,'206',206,'','','121.493299,29.966392');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (207,'沙坪坝区',5,'0,5',0,'207',207,'','','106.374805,29.630548');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (208,'九龙坡区',5,'0,5',0,'208',208,'','','106.370595,29.434566');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (209,'南岸区',5,'0,5',0,'209',209,'','','106.667178,29.541515');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (210,'北碚区',5,'0,5',0,'210',210,'','','106.520342,29.866596');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (211,'万盛区',5,'0,5',0,'211',211,'','','106.923721,28.916489');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (212,'双桥区',5,'0,5',0,'212',212,'','','117.948355,40.971406');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (213,'渝北区',5,'0,5',0,'213',213,'','','106.753799,29.816264');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (214,'巴南区',5,'0,5',0,'214',214,'','','106.758274,29.378028');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (215,'黔江区',5,'0,5',0,'215',215,'','','108.714808,29.440981');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (216,'长寿区',5,'0,5',0,'216',216,'','','107.146615,29.960491');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (217,'綦江县',5,'0,5',0,'217',217,'','','106.679237,28.87614');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (218,'潼南县',5,'0,5',0,'218',218,'','','105.819679,30.149933');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (219,'铜梁县',5,'0,5',0,'219',219,'','','106.039243,29.818323');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (220,'大足县',5,'0,5',0,'220',220,'','','105.747626,29.660709');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (221,'荣昌县',5,'0,5',0,'221',221,'','','105.512656,29.471196');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (222,'璧山县',5,'0,5',0,'222',222,'','','106.198727,29.567502');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (223,'梁平县',5,'0,5',0,'223',223,'','','107.725428,30.664363');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (224,'城口县',5,'0,5',0,'224',224,'','','108.741855,31.888131');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (225,'丰都县',5,'0,5',0,'225',225,'','','107.837517,29.890596');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (226,'垫江县',5,'0,5',0,'226',226,'','','107.444445,30.259498');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (227,'武隆县',5,'0,5',0,'227',227,'','','107.716106,29.379271');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (228,'忠县',5,'0,5',0,'228',228,'','','107.921738,30.342003');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (229,'开县',5,'0,5',0,'229',229,'','','108.38926,1.277101');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (230,'云阳县',5,'0,5',0,'230',230,'','','108.863186,31.042409');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (231,'奉节县',5,'0,5',0,'231',231,'','','109.355667,30.958553');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (232,'巫山县',5,'0,5',0,'232',232,'','','109.908611,31.121152');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (233,'巫溪县',5,'0,5',0,'233',233,'','','109.360531,31.509161');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (234,'石柱土家族自治县',5,'0,5',0,'234',234,'','','108.30489,0.099637');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (235,'秀山土家族苗族自治县',5,'0,5',0,'235',235,'','','109.025321,28.498315');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (236,'酉阳土家族苗族自治县',5,'0,5',0,'236',236,'','','108.806808,28.905278');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (237,'彭水苗族土家族自治县',5,'0,5',0,'237',237,'','','108.272868,29.359628');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (238,'江津市',5,'0,5',0,'238',238,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (239,'合川市',5,'0,5',0,'239',239,'','','106.318029,30.118708');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (240,'永川市',5,'0,5',0,'240',240,'','','105.880358,29.296488');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (241,'南川市',5,'0,5',0,'241',241,'','','107.177888,29.141686');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (242,'高新区',5,'0,5',0,'242',242,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (243,'石家庄市',6,'0,6',1,'243,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276',243,NULL,NULL,'114.522082,38.048958');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (244,'唐山市',6,'0,6',1,'244,277,278,279,280,281,282,283,284,285,286,287,288,289,290',244,NULL,NULL,'118.183451,39.650531');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (245,'秦皇岛市',6,'0,6',1,'245,291,292,293,294,295,296,297',245,NULL,NULL,'119.604368,39.945462');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (246,'邯郸市',6,'0,6',1,'246,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316',246,NULL,NULL,'114.482694,36.609308');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (247,'邢台市',6,'0,6',1,'247,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335',247,NULL,NULL,'114.520487,37.069531');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (248,'保定市',6,'0,6',1,'248,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360',248,NULL,NULL,'115.49481,38.886565');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (249,'张家口市',6,'0,6',1,'249,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377',249,NULL,NULL,'114.893782,40.811188');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (250,'承德市',6,'0,6',1,'250,378,379,380,381,382,383,384,385,386,387,388',250,NULL,NULL,'117.933822,40.992521');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (251,'沧州市',6,'0,6',1,'251,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404',251,NULL,NULL,'116.863806,38.297615');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (252,'廊坊市',6,'0,6',1,'252,405,406,407,408,409,410,411,412,413,414,415',252,NULL,NULL,'116.703602,39.518611');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (253,'衡水市',6,'0,6',1,'253,416,417,418,419,420,421,422,423,424,425,426',253,NULL,NULL,'115.686229,37.746929');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (254,'长安区',243,'0,6,243',0,'254',254,'','','114.592622,38.076875');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (255,'桥东区',243,'0,6,243',0,'255',255,'','','114.510784,38.06339');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (256,'桥西区',243,'0,6,243',0,'256',256,'','','114.43814,8.033365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (257,'新华区',243,'0,6,243',0,'257',257,'','','114.453501,38.117219');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (258,'井陉矿区',243,'0,6,243',0,'258',258,'','','114.050744,38.081098');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (259,'裕华区',243,'0,6,243',0,'259',259,'','','114.586383,38.014621');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (260,'井陉县',243,'0,6,243',0,'260',260,'','','114.077952,38.000891');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (261,'正定县',243,'0,6,243',0,'261',261,'','','114.570201,38.227073');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (262,'栾城县',243,'0,6,243',0,'262',262,'','','114.632968,37.906161');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (263,'行唐县',243,'0,6,243',0,'263',263,'','','114.457436,38.546695');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (264,'灵寿县',243,'0,6,243',0,'264',264,'','','114.187819,38.510936');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (265,'高邑县',243,'0,6,243',0,'265',265,'','','114.607385,37.622651');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (266,'深泽县',243,'0,6,243',0,'266',266,'','','115.233102,38.194681');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (267,'赞皇县',243,'0,6,243',0,'267',267,'','','114.289553,37.628132');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (268,'无极县',243,'0,6,243',0,'268',268,'','','114.95114,8.183286');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (269,'平山县',243,'0,6,243',0,'269',269,'','','113.872429,38.408762');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (270,'元氏县',243,'0,6,243',0,'270',270,'','','114.42836,7.807353');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (271,'赵县',243,'0,6,243',0,'271',271,'','','114.834938,37.769612');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (272,'辛集市',243,'0,6,243',0,'272',272,'','','115.29875,7.924122');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (273,'藁城市',243,'0,6,243',0,'273',273,'','','114.816476,38.054936');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (274,'晋州市',243,'0,6,243',0,'274',274,'','','115.091738,37.991145');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (275,'新乐市',243,'0,6,243',0,'275',275,'','','114.762271,38.377578');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (276,'鹿泉市',243,'0,6,243',0,'276',276,'','','114.347323,38.084707');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (277,'路南区',244,'0,6,244',0,'277',277,'','','118.20604,9.612987');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (278,'路北区',244,'0,6,244',0,'278',278,'','','118.18507,9.657846');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (279,'古冶区',244,'0,6,244',0,'279',279,'','','118.462232,39.723045');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (280,'开平区',244,'0,6,244',0,'280',280,'','','118.257848,39.692123');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (281,'丰南区',244,'0,6,244',0,'281',281,'','','118.085847,39.384663');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (282,'丰润区',244,'0,6,244',0,'282',282,'','','118.05949,9.789909');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (283,'滦县',244,'0,6,244',0,'283',283,'','','118.583777,39.785509');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (284,'滦南县',244,'0,6,244',0,'284',284,'','','118.549385,39.360739');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (285,'乐亭县',244,'0,6,244',0,'285',285,'','','118.939943,39.357229');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (286,'迁西县',244,'0,6,244',0,'286',286,'','','118.371389,40.238508');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (287,'玉田县',244,'0,6,244',0,'287',287,'','','117.734753,39.818843');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (288,'唐海县',244,'0,6,244',0,'288',288,'','','118.426721,39.27343');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (289,'遵化市',244,'0,6,244',0,'289',289,'','','117.957639,40.137901');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (290,'迁安市',244,'0,6,244',0,'290',290,'','','118.686955,40.040443');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (291,'海港区',245,'0,6,245',0,'291',291,'','','119.577617,39.98878');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (292,'山海关区',245,'0,6,245',0,'292',292,'','','119.713616,40.0329');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (293,'北戴河区',245,'0,6,245',0,'293',293,'','','119.479321,39.854293');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (294,'青龙满族自治县',245,'0,6,245',0,'294',294,'','','119.137582,40.35365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (295,'昌黎县',245,'0,6,245',0,'295',295,'','','119.094621,39.638021');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (296,'抚宁县',245,'0,6,245',0,'296',296,'','','119.3951,0.012967');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (297,'卢龙县',245,'0,6,245',0,'297',297,'','','118.985564,39.920978');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (298,'邯山区',246,'0,6,246',0,'298',298,'','','114.46929,6.536153');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (299,'丛台区',246,'0,6,246',0,'299',299,'','','114.511068,36.637215');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (300,'复兴区',246,'0,6,246',0,'300',300,'','','114.448095,36.610369');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (301,'峰峰矿区',246,'0,6,246',0,'301',301,'','','114.190422,36.474685');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (302,'邯郸县',246,'0,6,246',0,'302',302,'','','114.494486,36.620347');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (303,'临漳县',246,'0,6,246',0,'303',303,'','','114.586944,36.266142');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (304,'成安县',246,'0,6,246',0,'304',304,'','','114.704775,36.428151');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (305,'大名县',246,'0,6,246',0,'305',305,'','','115.248635,36.309544');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (306,'涉县',246,'0,6,246',0,'306',306,'','','113.742914,36.598105');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (307,'磁县',246,'0,6,246',0,'307',307,'','','114.255101,36.406731');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (308,'肥乡县',246,'0,6,246',0,'308',308,'','','114.836905,36.577261');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (309,'永年县',246,'0,6,246',0,'309',309,'','','114.641602,36.7702');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (310,'邱县',246,'0,6,246',0,'310',310,'','','115.206702,36.79727');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (311,'鸡泽县',246,'0,6,246',0,'311',311,'','','114.869566,36.873677');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (312,'广平县',246,'0,6,246',0,'312',312,'','','115.020874,36.511926');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (313,'馆陶县',246,'0,6,246',0,'313',313,'','','115.299157,36.618537');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (314,'魏县',246,'0,6,246',0,'314',314,'','','114.936 ,250568 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (315,'曲周县',246,'0,6,246',0,'315',315,'','','115.038532,36.752651');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (316,'武安市',246,'0,6,246',0,'316',316,'','','114.058334,36.748995');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (317,'桥东区',247,'0,6,247',0,'317',317,'','','114.510784,38.06339');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (318,'桥西区',247,'0,6,247',0,'318',318,'','','114.43814,8.033365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (319,'邢台县',247,'0,6,247',0,'319',319,'','','114.167744,37.152422');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (320,'临城县',247,'0,6,247',0,'320',320,'','','114.384665,37.463138');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (321,'内丘县',247,'0,6,247',0,'321',321,'','','114.530622,37.300525');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (322,'柏乡县',247,'0,6,247',0,'322',322,'','','114.707424,37.517418');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (323,'隆尧县',247,'0,6,247',0,'323',323,'','','114.792916,37.364688');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (324,'任县',247,'0,6,247',0,'324',324,'','','114.769967,37.17463');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (325,'南和县',247,'0,6,247',0,'325',325,'','','114.753089,37.016964');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (326,'宁晋县',247,'0,6,247',0,'326',326,'','','115.021678,37.612087');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (327,'巨鹿县',247,'0,6,247',0,'327',327,'','','115.058886,37.278679');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (328,'新河县',247,'0,6,247',0,'328',328,'','','115.257204,37.499363');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (329,'广宗县',247,'0,6,247',0,'329',329,'','','115.198173,37.083549');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (330,'平乡县',247,'0,6,247',0,'330',330,'','','115.004819,37.05611');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (331,'威县',247,'0,6,247',0,'331',331,'','','115.387725,37.078395');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (332,'清河县',247,'0,6,247',0,'332',332,'','','115.69159,7.04053');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (333,'临西县',247,'0,6,247',0,'333',333,'','','115.528441,36.858027');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (334,'南宫市',247,'0,6,247',0,'334',334,'','','115.47941,7.286427');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (335,'沙河市',247,'0,6,247',0,'335',335,'','','114.283093,36.938635');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (336,'新市区',248,'0,6,248',0,'336',336,'','','115.412245,38.881183');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (337,'北市区',248,'0,6,248',0,'337',337,'','','115.532912,38.897511');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (338,'南市区',248,'0,6,248',0,'338',338,'','','115.484784,38.821877');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (339,'满城县',248,'0,6,248',0,'339',339,'','','115.277554,38.970233');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (340,'清苑县',248,'0,6,248',0,'340',340,'','','115.493492,38.738336');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (341,'涞水县',248,'0,6,248',0,'341',341,'','','115.444628,39.616118');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (342,'阜平县',248,'0,6,248',0,'342',342,'','','114.164211,38.894806');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (343,'徐水县',248,'0,6,248',0,'343',343,'','','115.5796,0.041872');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (344,'定兴县',248,'0,6,248',0,'344',344,'','','115.755046,39.211518');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (345,'唐县',248,'0,6,248',0,'345',345,'','','114.806091,38.904521');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (346,'高阳县',248,'0,6,248',0,'346',346,'','','115.838442,38.673021');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (347,'容城县',248,'0,6,248',0,'347',347,'','','115.908779,39.057814');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (348,'涞源县',248,'0,6,248',0,'348',348,'','','114.730451,39.366937');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (349,'望都县',248,'0,6,248',0,'349',349,'','','115.178346,38.679015');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (350,'安新县',248,'0,6,248',0,'350',350,'','','115.886731,38.878255');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (351,'易县',248,'0,6,248',0,'351',351,'','','115.254022,39.317566');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (352,'曲阳县',248,'0,6,248',0,'352',352,'','','114.660664,38.706612');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (353,'蠡县',248,'0,6,248',0,'353',353,'','','115.669282,38.528232');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (354,'顺平县',248,'0,6,248',0,'354',354,'','','115.073989,38.927951');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (355,'博野县',248,'0,6,248',0,'355',355,'','','115.487786,38.459123');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (356,'雄县',248,'0,6,248',0,'356',356,'','','116.183299,39.042787');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (357,'涿州市',248,'0,6,248',0,'357',357,'','','115.999054,39.482482');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (358,'定州市',248,'0,6,248',0,'358',358,'','','115.057407,38.465839');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (359,'安国市',248,'0,6,248',0,'359',359,'','','115.334827,38.39374');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (360,'高碑店市',248,'0,6,248',0,'360',360,'','','116.040934,39.265088');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (361,'桥东区',249,'0,6,249',0,'361',361,'','','114.510784,38.06339');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (362,'桥西区',249,'0,6,249',0,'362',362,'','','114.43814,8.033365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (363,'宣化区',249,'0,6,249',0,'363',363,'','','115.258472,40.632394');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (364,'下花园区',249,'0,6,249',0,'364',364,'','','115.350498,40.568837');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (365,'宣化县',249,'0,6,249',0,'365',365,'','','115.035435,40.560152');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (366,'张北县',249,'0,6,249',0,'366',366,'','','114.772897,41.293641');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (367,'康保县',249,'0,6,249',0,'367',367,'','','114.606536,41.784595');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (368,'沽源县',249,'0,6,249',0,'368',368,'','','115.636092,41.580404');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (369,'尚义县',249,'0,6,249',0,'369',369,'','','114.152528,41.132635');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (370,'蔚县',249,'0,6,249',0,'370',370,'','','114.712537,39.879353');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (371,'阳原县',249,'0,6,249',0,'371',371,'','','114.394396,40.138642');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (372,'怀安县',249,'0,6,249',0,'372',372,'','','114.502607,40.559534');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (373,'万全县',249,'0,6,249',0,'373',373,'','','114.611453,40.847108');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (374,'怀来县',249,'0,6,249',0,'374',374,'','','115.634061,40.347984');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (375,'涿鹿县',249,'0,6,249',0,'375',375,'','','115.223925,40.101876');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (376,'赤城县',249,'0,6,249',0,'376',376,'','','115.892223,40.956026');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (377,'崇礼县',249,'0,6,249',0,'377',377,'','','115.219891,41.02606');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (378,'双桥区',250,'0,6,250',0,'378',378,'','','117.948355,40.971406');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (379,'双滦区',250,'0,6,250',0,'379',379,'','','117.809336,41.051453');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (380,'鹰手营子矿区',250,'0,6,250',0,'380',380,'','','117.679426,40.53176');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (381,'承德县',250,'0,6,250',0,'381',381,'','','118.125718,40.973242');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (382,'兴隆县',250,'0,6,250',0,'382',382,'','','117.726136,40.458142');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (383,'平泉县',250,'0,6,250',0,'383',383,'','','118.739324,41.075304');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (384,'滦平县',250,'0,6,250',0,'384',384,'','','117.369563,40.924821');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (385,'隆化县',250,'0,6,250',0,'385',385,'','','117.56993,1.517995');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (386,'丰宁满族自治县',250,'0,6,250',0,'386',386,'','','116.623795,41.425684');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (387,'宽城满族自治县',250,'0,6,250',0,'387',387,'','','118.635888,40.57809');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (388,'围场满族蒙古族自治县',250,'0,6,250',0,'388',388,'','','117.547022,42.108025');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (389,'新华区',251,'0,6,251',0,'389',389,'','','114.453501,38.117219');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (390,'运河区',251,'0,6,251',0,'390',390,'','','116.844854,38.314446');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (391,'沧县',251,'0,6,251',0,'391',391,'','','116.862714,38.302139');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (392,'青县',251,'0,6,251',0,'392',392,'','','116.851234,38.565778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (393,'东光县',251,'0,6,251',0,'393',393,'','','116.677832,37.887452');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (394,'海兴县',251,'0,6,251',0,'394',394,'','','117.567264,38.14247');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (395,'盐山县',251,'0,6,251',0,'395',395,'','','117.26694,7.96037');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (396,'肃宁县',251,'0,6,251',0,'396',396,'','','115.885816,38.422207');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (397,'南皮县',251,'0,6,251',0,'397',397,'','','116.86585,8.023186');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (398,'吴桥县',251,'0,6,251',0,'398',398,'','','116.508033,37.661863');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (399,'献县',251,'0,6,251',0,'399',399,'','','116.175505,38.242726');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (400,'孟村回族自治县',251,'0,6,251',0,'400',400,'','','117.159538,38.091265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (401,'泊头市',251,'0,6,251',0,'401',401,'','','116.389236,38.090279');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (402,'任丘市',251,'0,6,251',0,'402',402,'','','116.163214,38.741105');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (403,'黄骅市',251,'0,6,251',0,'403',403,'','','117.400217,38.401522');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (404,'河间市',251,'0,6,251',0,'404',404,'','','116.271593,38.483721');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (405,'安次区',252,'0,6,252',0,'405',405,'','','116.796123,39.345312');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (406,'广阳区',252,'0,6,252',0,'406',406,'','','116.694236,39.533686');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (407,'固安县',252,'0,6,252',0,'407',407,'','','116.28967,9.351106');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (408,'永清县',252,'0,6,252',0,'408',408,'','','116.560557,39.302836');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (409,'香河县',252,'0,6,252',0,'409',409,'','','117.051306,39.7431');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (410,'大城县',252,'0,6,252',0,'410',410,'','','116.588639,38.668803');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (411,'文安县',252,'0,6,252',0,'411',411,'','','116.494817,38.91139');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (412,'大厂回族自治县',252,'0,6,252',0,'412',412,'','','116.955076,39.895316');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (413,'开发区',252,'0,6,252',0,'413',413,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (414,'霸州市',252,'0,6,252',0,'414',414,'','','116.574306,39.10932');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (415,'三河市',252,'0,6,252',0,'415',415,'','','117.021284,39.967428');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (416,'桃城区',253,'0,6,253',0,'416',416,'','','115.666657,37.724218');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (417,'枣强县',253,'0,6,253',0,'417',417,'','','115.757677,37.461024');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (418,'武邑县',253,'0,6,253',0,'418',418,'','','115.944507,37.827679');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (419,'武强县',253,'0,6,253',0,'419',419,'','','115.920118,38.050513');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (420,'饶阳县',253,'0,6,253',0,'420',420,'','','115.740007,38.223059');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (421,'安平县',253,'0,6,253',0,'421',421,'','','115.490416,38.243196');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (422,'故城县',253,'0,6,253',0,'422',422,'','','115.978057,37.356998');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (423,'景县',253,'0,6,253',0,'423',423,'','','116.200134,37.668477');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (424,'阜城县',253,'0,6,253',0,'424',424,'','','116.328425,37.912309');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (425,'冀州市',253,'0,6,253',0,'425',425,'','','115.470293,37.55607');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (426,'深州市',253,'0,6,253',0,'426',426,'','','115.586699,37.957013');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (427,'太原市',7,'0,7',1,'427,438,439,440,441,442,443,444,445,446,447',427,NULL,NULL,'112.550864,37.890277');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (428,'大同市',7,'0,7',1,'428,448,449,450,451,452,453,454,455,456,457,458',428,NULL,NULL,'113.290509,40.113744');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (429,'阳泉市',7,'0,7',1,'429,459,460,461,462,463',429,NULL,NULL,'113.569238,37.869529');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (430,'长治市',7,'0,7',1,'430,464,465,466,467,468,469,470,471,472,473,474,475,476',430,NULL,NULL,'113.120292,36.201664');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (431,'晋城市',7,'0,7',1,'431,477,478,479,480,481,482',431,NULL,NULL,'112.867333,35.499834');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (432,'朔州市',7,'0,7',1,'432,483,484,485,486,487,488',432,NULL,NULL,'112.479928,39.337672');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (433,'晋中市',7,'0,7',1,'433,489,490,491,492,493,494,495,496,497,498,499',433,NULL,NULL,'112.738514,37.693362');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (434,'运城市',7,'0,7',1,'434,500,501,502,503,504,505,506,507,508,509,510,511,512',434,NULL,NULL,'111.006854,35.038859');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (435,'忻州市',7,'0,7',1,'435,513,514,515,516,517,518,519,520,521,522,523,524,525,526',435,NULL,NULL,'112.727939,38.461031');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (436,'临汾市',7,'0,7',1,'436,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543',436,NULL,NULL,'111.538788,36.099745');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (437,'吕梁地区',7,'0,7',1,'437,544,545,546,547,548,549,550,551,552,553,554,555,556',437,'','','111.143157,37.527316');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (438,'小店区',427,'0,7,427',0,'438',438,'','','112.577409,37.753528');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (439,'迎泽区',427,'0,7,427',0,'439',439,'','','112.663203,37.865737');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (440,'杏花岭区',427,'0,7,427',0,'440',440,'','','112.629836,37.915556');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (441,'尖草坪区',427,'0,7,427',0,'441',441,'','','112.48844,7.972758');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (442,'万柏林区',427,'0,7,427',0,'442',442,'','','112.402857,37.894693');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (443,'晋源区',427,'0,7,427',0,'443',443,'','','112.481587,37.748675');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (444,'清徐县',427,'0,7,427',0,'444',444,'','','112.387085,37.593242');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (445,'阳曲县',427,'0,7,427',0,'445',445,'','','112.672659,38.158246');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (446,'娄烦县',427,'0,7,427',0,'446',446,'','','111.797821,38.034584');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (447,'古交市',427,'0,7,427',0,'447',447,'','','112.107739,37.905179');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (448,'城区',428,'0,7,428',0,'448',448,'','','113.612838,37.857865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (449,'矿区',428,'0,7,428',0,'449',449,'','','113.540771,37.890804');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (450,'南郊区',428,'0,7,428',0,'450',450,'','','113.226457,40.051891');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (451,'新荣区',428,'0,7,428',0,'451',451,'','','113.236894,40.267127');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (452,'阳高县',428,'0,7,428',0,'452',452,'','','113.823181,40.222312');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (453,'天镇县',428,'0,7,428',0,'453',453,'','','114.16813,0.403529');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (454,'广灵县',428,'0,7,428',0,'454',454,'','','114.161702,39.768994');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (455,'灵丘县',428,'0,7,428',0,'455',455,'','','114.213095,39.377268');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (456,'浑源县',428,'0,7,428',0,'456',456,'','','113.710759,39.634162');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (457,'左云县',428,'0,7,428',0,'457',457,'','','112.777856,40.000738');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (458,'大同县',428,'0,7,428',0,'458',458,'','','113.583866,40.001627');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (459,'城区',429,'0,7,429',0,'459',459,'','','113.612838,37.857865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (460,'矿区',429,'0,7,429',0,'460',460,'','','113.540771,37.890804');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (461,'郊区',429,'0,7,429',0,'461',461,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (462,'平定县',429,'0,7,429',0,'462',462,'','','113.768978,37.849271');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (463,'盂县',429,'0,7,429',0,'463',463,'','','113.360967,38.229386');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (464,'城区',430,'0,7,430',0,'464',464,'','','113.612838,37.857865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (465,'郊区',430,'0,7,430',0,'465',465,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (466,'长治县',430,'0,7,430',0,'466',466,'','','113.086194,36.02468');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (467,'襄垣县',430,'0,7,430',0,'467',467,'','','112.988973,36.580201');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (468,'屯留县',430,'0,7,430',0,'468',468,'','','112.750363,36.34261');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (469,'平顺县',430,'0,7,430',0,'469',469,'','','113.533689,36.221794');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (470,'黎城县',430,'0,7,430',0,'470',470,'','','113.396852,36.619368');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (471,'壶关县',430,'0,7,430',0,'471',471,'','','113.371998,35.992652');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (472,'长子县',430,'0,7,430',0,'472',472,'','','112.802254,36.110999');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (473,'武乡县',430,'0,7,430',0,'473',473,'','','112.96752,6.888323');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (474,'沁县',430,'0,7,430',0,'474',474,'','','112.65221,6.707383');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (475,'沁源县',430,'0,7,430',0,'475',475,'','','112.290094,36.701567');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (476,'潞城市',430,'0,7,430',0,'476',476,'','','113.254387,36.374406');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (477,'城区',431,'0,7,431',0,'477',477,'','','113.612838,37.857865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (478,'沁水县',431,'0,7,431',0,'478',478,'','','112.37743,5.751489');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (479,'阳城县',431,'0,7,431',0,'479',479,'','','112.361527,35.426541');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (480,'陵川县',431,'0,7,431',0,'480',480,'','','113.343387,35.690744');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (481,'泽州县',431,'0,7,431',0,'481',481,'','','112.870985,35.475851');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (482,'高平市',431,'0,7,431',0,'482',482,'','','112.935115,35.809742');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (483,'朔城区',432,'0,7,432',0,'483',483,'','','112.5562,0.243272');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (484,'平鲁区',432,'0,7,432',0,'484',484,'','','112.30435,9.640007');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (485,'山阴县',432,'0,7,432',0,'485',485,'','','112.786805,39.52105');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (486,'应县',432,'0,7,432',0,'486',486,'','','113.260593,39.509316');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (487,'右玉县',432,'0,7,432',0,'487',487,'','','112.421677,40.008136');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (488,'怀仁县',432,'0,7,432',0,'488',488,'','','113.112305,39.793571');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (489,'榆次区',433,'0,7,433',0,'489',489,'','','112.843737,37.650825');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (490,'榆社县',433,'0,7,433',0,'490',490,'','','112.954181,37.14005');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (491,'左权县',433,'0,7,433',0,'491',491,'','','113.474538,37.032795');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (492,'和顺县',433,'0,7,433',0,'492',492,'','','113.474934,37.348374');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (493,'昔阳县',433,'0,7,433',0,'493',493,'','','113.762106,37.563418');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (494,'寿阳县',433,'0,7,433',0,'494',494,'','','113.141611,37.825119');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (495,'太谷县',433,'0,7,433',0,'495',495,'','','112.736433,37.407696');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (496,'祁县',433,'0,7,433',0,'496',496,'','','112.469066,37.292198');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (497,'平遥县',433,'0,7,433',0,'497',497,'','','112.265493,37.14809');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (498,'灵石县',433,'0,7,433',0,'498',498,'','','111.735504,36.834487');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (499,'介休市',433,'0,7,433',0,'499',499,'','','111.995188,37.025476');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (500,'盐湖区',434,'0,7,434',0,'500',500,'','','110.961931,35.063677');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (501,'临猗县',434,'0,7,434',0,'501',501,'','','110.625895,35.14938');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (502,'万荣县',434,'0,7,434',0,'502',502,'','','110.71554,5.388134');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (503,'闻喜县',434,'0,7,434',0,'503',503,'','','111.319287,35.373753');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (504,'稷山县',434,'0,7,434',0,'504',504,'','','110.965122,35.598267');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (505,'新绛县',434,'0,7,434',0,'505',505,'','','111.172875,35.631583');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (506,'绛县',434,'0,7,434',0,'506',506,'','','111.64482,5.498579');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (507,'垣曲县',434,'0,7,434',0,'507',507,'','','111.824787,35.221584');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (508,'夏县',434,'0,7,434',0,'508',508,'','','111.358386,35.12668');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (509,'平陆县',434,'0,7,434',0,'509',509,'','','111.251109,34.888646');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (510,'芮城县',434,'0,7,434',0,'510',510,'','','110.616496,34.709535');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (511,'永济市',434,'0,7,434',0,'511',511,'','','110.488949,34.894672');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (512,'河津市',434,'0,7,434',0,'512',512,'','','110.708539,35.631891');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (513,'忻府区',435,'0,7,435',0,'513',513,'','','112.6052,0.437832');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (514,'定襄县',435,'0,7,435',0,'514',514,'','','113.035589,38.51675');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (515,'五台县',435,'0,7,435',0,'515',515,'','','113.442104,38.778174');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (516,'代县',435,'0,7,435',0,'516',516,'','','113.050582,39.093197');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (517,'繁峙县',435,'0,7,435',0,'517',517,'','','113.596214,39.204757');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (518,'宁武县',435,'0,7,435',0,'518',518,'','','112.193896,38.82189');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (519,'静乐县',435,'0,7,435',0,'519',519,'','','112.064994,38.400067');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (520,'神池县',435,'0,7,435',0,'520',520,'','','112.00992,9.173053');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (521,'五寨县',435,'0,7,435',0,'521',521,'','','111.744757,39.008731');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (522,'岢岚县',435,'0,7,435',0,'522',522,'','','111.543568,38.737957');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (523,'河曲县',435,'0,7,435',0,'523',523,'','','111.359829,39.20644');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (524,'保德县',435,'0,7,435',0,'524',524,'','','111.142835,38.887135');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (525,'偏关县',435,'0,7,435',0,'525',525,'','','111.671903,39.464649');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (526,'原平市',435,'0,7,435',0,'526',526,'','','112.682128,38.838876');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (527,'尧都区',436,'0,7,436',0,'527',527,'','','111.474665,36.125937');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (528,'曲沃县',436,'0,7,436',0,'528',528,'','','111.527041,35.704201');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (529,'翼城县',436,'0,7,436',0,'529',529,'','','111.839209,35.695398');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (530,'襄汾县',436,'0,7,436',0,'530',530,'','','111.385953,35.874204');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (531,'洪洞县',436,'0,7,436',0,'531',531,'','','111.659378,36.325514');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (532,'古县',436,'0,7,436',0,'532',532,'','','112.011243,36.303823');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (533,'安泽县',436,'0,7,436',0,'533',533,'','','112.307904,36.164296');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (534,'浮山县',436,'0,7,436',0,'534',534,'','','111.928409,35.945831');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (535,'吉县',436,'0,7,436',0,'535',535,'','','110.728162,36.158677');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (536,'乡宁县',436,'0,7,436',0,'536',536,'','','110.944128,35.925119');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (537,'大宁县',436,'0,7,436',0,'537',537,'','','110.710805,36.432636');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (538,'隰县',436,'0,7,436',0,'538',538,'','','111.009965,36.711951');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (539,'永和县',436,'0,7,436',0,'539',539,'','','110.617898,36.737137');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (540,'蒲县',436,'0,7,436',0,'540',540,'','','111.162359,36.4246');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (541,'汾西县',436,'0,7,436',0,'541',541,'','','111.483148,36.642781');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (542,'侯马市',436,'0,7,436',0,'542',542,'','','111.371509,35.621785');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (543,'霍州市',436,'0,7,436',0,'543',543,'','','111.830836,36.599678');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (544,'孝义市',437,'0,7,437',0,'544',544,'','','111.637646,37.118133');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (545,'离石市',437,'0,7,437',0,'545',545,'','','111.159895,37.525287');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (546,'汾阳市',437,'0,7,437',0,'546',546,'','','111.745996,37.316764');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (547,'文水县',437,'0,7,437',0,'547',547,'','','111.964995,37.459706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (548,'交城县',437,'0,7,437',0,'548',548,'','','111.819927,37.687046');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (549,'兴县',437,'0,7,437',0,'549',549,'','','111.069311,38.392263');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (550,'临县',437,'0,7,437',0,'550',550,'','','110.901147,37.962867');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (551,'柳林县',437,'0,7,437',0,'551',551,'','','110.876927,37.403754');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (552,'石楼县',437,'0,7,437',0,'552',552,'','','110.753479,37.035145');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (553,'岚县',437,'0,7,437',0,'553',553,'','','111.606641,38.343813');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (554,'方山县',437,'0,7,437',0,'554',554,'','','111.337979,37.886688');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (555,'中阳县',437,'0,7,437',0,'555',555,'','','111.185904,37.266318');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (556,'交口县',437,'0,7,437',0,'556',556,'','','111.315924,36.957719');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (557,'呼和浩特市',8,'0,8',1,'557,569,570,571,572,573,574,575,576,577',557,NULL,NULL,'111.660351,40.828319');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (558,'包头市',8,'0,8',1,'558,578,579,580,581,582,583,584,585,586',558,NULL,NULL,'109.846239,40.647119');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (559,'乌海市',8,'0,8',1,'559,587,588,589',559,NULL,NULL,'106.831999,39.683177');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (560,'赤峰市',8,'0,8',1,'560,590,591,592,593,594,595,596,597,598,599,600,601',560,NULL,NULL,'118.930761,42.297112');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (561,'通辽市',8,'0,8',1,'561,602,603,604,605,606,607,608,609',561,NULL,NULL,'122.260363,43.633756');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (562,'鄂尔多斯市',8,'0,8',1,'562,610,611,612,613,614,615,616,617',562,NULL,NULL,'109.993706,39.81649');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (563,'呼伦贝尔市',8,'0,8',1,'563,618,619,620,621,622,623,624,625,626,627,628,629',563,NULL,NULL,'119.760822,49.201636');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (564,'兴安盟',8,'0,8',1,'564,630,631,632,633,634,635',564,NULL,NULL,'122.048167,46.083757');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (565,'锡林郭勒盟',8,'0,8',1,'565,636,637,638,639,640,641,642,643,644,645,646,647',565,NULL,NULL,'116.02734,43.939705');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (566,'乌兰察布盟',8,'0,8',1,'566,648,649,650,651,652,653,654,655,656,657,658',566,'','','113.124232,41.039311');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (567,'巴彦淖尔盟',8,'0,8',1,'567,659,660,661,662,663,664,665',567,'','','107.423198,40.764138');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (568,'阿拉善盟',8,'0,8',1,'568,666,667,668',568,NULL,NULL,'105.695683,38.843075');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (569,'新城区',557,'0,8,557',0,'569',569,'','','108.991539,34.271474');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (570,'回民区',557,'0,8,557',0,'570',570,'','','111.596886,40.838895');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (571,'玉泉区',557,'0,8,557',0,'571',571,'','','111.658553,40.747387');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (572,'赛罕区',557,'0,8,557',0,'572',572,'','','111.876335,40.788864');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (573,'土默特左旗',557,'0,8,557',0,'573',573,'','','111.234704,40.689987');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (574,'托克托县',557,'0,8,557',0,'574',574,'','','111.3197,0.361084');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (575,'和林格尔县',557,'0,8,557',0,'575',575,'','','111.901693,40.333868');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (576,'清水河县',557,'0,8,557',0,'576',576,'','','111.706236,39.889118');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (577,'武川县',557,'0,8,557',0,'577',577,'','','111.179572,41.116204');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (578,'东河区',558,'0,8,558',0,'578',578,'','','110.070141,40.589124');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (579,'昆都仑区',558,'0,8,558',0,'579',579,'','','109.806834,40.658057');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (580,'青山区',558,'0,8,558',0,'580',580,'','','109.903675,40.658778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (581,'石拐区',558,'0,8,558',0,'581',581,'','','110.299215,40.716464');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (582,'白云矿区',558,'0,8,558',0,'582',582,'','','113.331306,23.294514');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (583,'九原区',558,'0,8,558',0,'583',583,'','','109.949197,40.627202');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (584,'土默特右旗',558,'0,8,558',0,'584',584,'','','110.693258,40.527996');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (585,'固阳县',558,'0,8,558',0,'585',585,'','','110.167592,41.104725');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (586,'达尔罕茂明安联合旗',558,'0,8,558',0,'586',586,'','','110.286189,41.943507');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (587,'海勃湾区',559,'0,8,559',0,'587',587,'','','106.861482,39.734834');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (588,'海南区',559,'0,8,559',0,'588',588,NULL,NULL,'109.733755,19.180501');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (589,'乌达区',559,'0,8,559',0,'589',589,'','','106.725859,39.535878');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (590,'红山区',560,'0,8,560',0,'590',590,'','','118.998103,42.286232');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (591,'元宝山区',560,'0,8,560',0,'591',591,'','','119.268169,42.184131');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (592,'松山区',560,'0,8,560',0,'592',592,'','','118.757106,42.268753');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (593,'阿鲁科尔沁旗',560,'0,8,560',0,'593',593,'','','120.053241,44.195957');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (594,'巴林左旗',560,'0,8,560',0,'594',594,'','','119.280766,44.203431');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (595,'巴林右旗',560,'0,8,560',0,'595',595,'','','118.94609,3.684787');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (596,'林西县',560,'0,8,560',0,'596',596,'','','118.110216,43.771462');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (597,'克什克腾旗',560,'0,8,560',0,'597',597,'','','117.35857,3.218237');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (598,'翁牛特旗',560,'0,8,560',0,'598',598,'','','119.254643,42.97398');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (599,'喀喇沁旗',560,'0,8,560',0,'599',599,'','','118.667056,41.908351');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (600,'宁城县',560,'0,8,560',0,'600',600,'','','118.905499,41.571041');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (601,'敖汉旗',560,'0,8,560',0,'601',601,'','','120.157713,42.430592');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (602,'科尔沁区',561,'0,8,561',0,'602',602,'','','122.291294,43.65829');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (603,'科尔沁左翼中旗',561,'0,8,561',0,'603',603,'','','122.49918,4.057579');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (604,'科尔沁左翼后旗',561,'0,8,561',0,'604',604,'','','122.697345,43.196083');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (605,'开鲁县',561,'0,8,561',0,'605',605,'','','121.324094,43.734942');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (606,'库伦旗',561,'0,8,561',0,'606',606,'','','121.573038,42.810038');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (607,'奈曼旗',561,'0,8,561',0,'607',607,'','','120.940789,42.972383');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (608,'扎鲁特旗',561,'0,8,561',0,'608',608,'','','120.596028,44.822451');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (609,'霍林郭勒市',561,'0,8,561',0,'609',609,'','','119.579748,45.528106');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (610,'东胜区',562,'0,8,562',0,'610',610,'','','109.764419,39.805586');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (611,'达拉特旗',562,'0,8,562',0,'611',611,'','','109.866191,40.220264');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (612,'准格尔旗',562,'0,8,562',0,'612',612,'','','110.886239,39.794725');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (613,'鄂托克前旗',562,'0,8,562',0,'613',613,'','','107.59701,8.275938');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (614,'鄂托克旗',562,'0,8,562',0,'614',614,'','','107.75202,9.286297');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (615,'杭锦旗',562,'0,8,562',0,'615',615,'','','108.212828,40.212873');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (616,'乌审旗',562,'0,8,562',0,'616',616,'','','108.889663,38.640475');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (617,'伊金霍洛旗',562,'0,8,562',0,'617',617,'','','109.704186,39.420696');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (618,'海拉尔区',563,'0,8,563',0,'618',618,'','','120.042882,49.279245');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (619,'阿荣旗',563,'0,8,563',0,'619',619,'','','123.171954,48.639989');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (620,'鄂伦春自治旗',563,'0,8,563',0,'620',620,'','','123.817278,50.348755');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (621,'鄂温克族自治旗',563,'0,8,563',0,'621',621,'','','120.067483,48.499137');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (622,'陈巴尔虎旗',563,'0,8,563',0,'622',622,'','','119.535208,49.605281');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (623,'新巴尔虎左旗',563,'0,8,563',0,'623',623,'','','118.621525,48.436392');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (624,'新巴尔虎右旗',563,'0,8,563',0,'624',624,'','','116.802184,48.644979');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (625,'满洲里市',563,'0,8,563',0,'625',625,'','','117.603687,49.500032');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (626,'牙克石市',563,'0,8,563',0,'626',626,'','','121.512668,49.329996');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (627,'扎兰屯市',563,'0,8,563',0,'627',627,'','','121.929202,47.743403');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (628,'额尔古纳市',563,'0,8,563',0,'628',628,'','','120.652764,51.660819');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (629,'根河市',563,'0,8,563',0,'629',629,'','','121.797713,51.375925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (630,'乌兰浩特市',564,'0,8,564',0,'630',630,'','','122.081534,46.116944');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (631,'阿尔山市',564,'0,8,564',0,'631',631,'','','120.357534,47.163696');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (632,'科尔沁右翼前旗',564,'0,8,564',0,'632',632,'','','121.221524,46.334025');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (633,'科尔沁右翼中旗',564,'0,8,564',0,'633',633,'','','121.19851,5.242069');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (634,'扎赉特旗',564,'0,8,564',0,'634',634,'','','122.388146,46.790808');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (635,'突泉县',564,'0,8,564',0,'635',635,'','','121.519212,45.632866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (636,'二连浩特市',565,'0,8,565',0,'636',636,'','','111.966178,43.41778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (637,'锡林浩特市',565,'0,8,565',0,'637',637,'','','116.136948,44.078961');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (638,'阿巴嘎旗',565,'0,8,565',0,'638',638,'','','114.893471,44.276507');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (639,'苏尼特左旗',565,'0,8,565',0,'639',639,'','','113.140307,44.039238');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (640,'苏尼特右旗',565,'0,8,565',0,'640',640,'','','112.9116,0.900964');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (641,'东乌珠穆沁旗',565,'0,8,565',0,'641',641,'','','117.81045,5.826665');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (642,'西乌珠穆沁旗',565,'0,8,565',0,'642',642,'','','117.816963,44.715903');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (643,'太仆寺旗',565,'0,8,565',0,'643',643,'','','115.304558,41.906216');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (644,'镶黄旗',565,'0,8,565',0,'644',644,'','','114.120589,42.368276');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (645,'正镶白旗',565,'0,8,565',0,'645',645,'','','115.024347,42.554843');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (646,'正蓝旗',565,'0,8,565',0,'646',646,'','','115.94011,2.674414');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (647,'多伦县',565,'0,8,565',0,'647',647,'','','116.498639,42.196601');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (648,'集宁市',566,'0,8,566',0,'648',648,'','','113.112832,41.027766');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (649,'丰镇市',566,'0,8,566',0,'649',649,'','','113.308677,40.558336');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (650,'卓资县',566,'0,8,566',0,'650',650,'','','112.443377,40.958869');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (651,'化德县',566,'0,8,566',0,'651',651,'','','114.165738,41.979126');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (652,'商都县',566,'0,8,566',0,'652',652,'','','113.622155,41.726517');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (653,'兴和县',566,'0,8,566',0,'653',653,'','','113.773721,40.952667');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (654,'凉城县',566,'0,8,566',0,'654',654,'','','112.550432,40.50278');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (655,'察哈尔右翼前旗',566,'0,8,566',0,'655',655,'','','113.241096,40.98171');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (656,'察哈尔右翼中旗',566,'0,8,566',0,'656',656,'','','112.470743,41.428255');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (657,'察哈尔右翼后旗',566,'0,8,566',0,'657',657,'','','113.069693,41.529483');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (658,'四子王旗',566,'0,8,566',0,'658',658,'','','111.589037,42.307146');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (659,'临河市',567,'0,8,567',0,'659',659,'','','107.44184,0.932018');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (660,'五原县',567,'0,8,567',0,'660',660,'','','108.072284,41.045427');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (661,'磴口县',567,'0,8,567',0,'661',661,'','','106.7   ,5181   ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (662,'乌拉特前旗',567,'0,8,567',0,'662',662,'','','109.105297,40.905993');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (663,'乌拉特中旗',567,'0,8,567',0,'663',663,'','','108.464542,41.831045');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (664,'乌拉特后旗',567,'0,8,567',0,'664',664,'','','106.413808,41.531945');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (665,'杭锦后旗',567,'0,8,567',0,'665',665,'','','107.033454,40.890871');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (666,'阿拉善左旗',568,'0,8,568',0,'666',666,'','','105.038247,39.547806');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (667,'阿拉善右旗',568,'0,8,568',0,'667',667,'','','102.443856,40.186229');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (668,'额济纳旗',568,'0,8,568',0,'668',668,'','','100.099512,41.6938');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (669,'沈阳市',9,'0,9',1,'669,683,684,685,686,687,688,689,690,691,692,693,694,695',669,NULL,NULL,'123.432791,41.808645');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (670,'大连市',9,'0,9',1,'670,696,697,698,699,700,701,702,703,704,705,706',670,NULL,NULL,'121.593478,38.94871');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (671,'鞍山市',9,'0,9',1,'671,707,708,709,710,711,712,713',671,NULL,NULL,'123.007763,41.118744');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (672,'抚顺市',9,'0,9',1,'672,714,715,716,717,718,719,720',672,NULL,NULL,'123.92982,41.877304');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (673,'本溪市',9,'0,9',1,'673,721,722,723,724,725,726',673,NULL,NULL,'123.778062,41.325838');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (674,'丹东市',9,'0,9',1,'674,727,728,729,730,731,732',674,NULL,NULL,'124.338543,40.129023');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (675,'锦州市',9,'0,9',1,'675,733,734,735,736,737,738,739',675,NULL,NULL,'121.147749,41.130879');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (676,'营口市',9,'0,9',1,'676,740,741,742,743,744,745',676,NULL,NULL,'122.233391,40.668651');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (677,'阜新市',9,'0,9',1,'677,746,747,748,749,750,751,752',677,NULL,NULL,'121.660822,42.01925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (678,'辽阳市',9,'0,9',1,'678,753,754,755,756,757,758,759',678,NULL,NULL,'123.172451,41.273339');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (679,'盘锦市',9,'0,9',1,'679,760,761,762,763',679,NULL,NULL,'122.073228,41.141248');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (680,'铁岭市',9,'0,9',1,'680,764,765,766,767,768,769,770',680,NULL,NULL,'123.85485,42.299757');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (681,'朝阳市',9,'0,9',1,'681,771,772,773,774,775,776,777',681,NULL,NULL,'120.446163,41.571828');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (682,'葫芦岛市',9,'0,9',1,'682,778,779,780,781,782,783',682,NULL,NULL,'120.860758,40.74303');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (683,'和平区',669,'0,9,669',0,'683',683,'','','117.202814,39.124809');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (684,'沈河区',669,'0,9,669',0,'684',684,'','','123.453552,41.798305');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (685,'大东区',669,'0,9,669',0,'685',685,'','','123.498927,41.835279');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (686,'皇姑区',669,'0,9,669',0,'686',686,'','','123.415376,41.848913');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (687,'铁西区',669,'0,9,669',0,'687',687,'','','123.35863,1.805724');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (688,'苏家屯区',669,'0,9,669',0,'688',688,'','','123.426289,41.589345');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (689,'东陵区',669,'0,9,669',0,'689',689,'','','123.599872,41.765562');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (690,'新城子区',669,'0,9,669',0,'690',690,'','','108.991539,34.271474');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (691,'于洪区',669,'0,9,669',0,'691',691,'','','123.242847,41.843551');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (692,'辽中县',669,'0,9,669',0,'692',692,'','','122.778872,41.56686');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (693,'康平县',669,'0,9,669',0,'693',693,'','','123.273598,42.765541');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (694,'法库县',669,'0,9,669',0,'694',694,'','','123.248897,42.415298');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (695,'新民市',669,'0,9,669',0,'695',695,'','','122.866418,42.016776');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (696,'中山区',670,'0,9,670',0,'696',696,'','','121.677966,38.900436');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (697,'西岗区',670,'0,9,670',0,'697',697,'','','121.625823,38.91337');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (698,'沙河口区',670,'0,9,670',0,'698',698,'','','121.582618,38.921778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (699,'甘井子区',670,'0,9,670',0,'699',699,'','','121.5285,0.955462');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (700,'旅顺口区',670,'0,9,670',0,'700',700,'','','121.295936,38.908291');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (701,'金州区',670,'0,9,670',0,'701',701,'','','121.956582,39.298619');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (702,'开发区',670,'0,9,670',0,'702',702,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (703,'长海县',670,'0,9,670',0,'703',703,'','','122.748265,39.260109');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (704,'瓦房店市',670,'0,9,670',0,'704',704,'','','121.790699,39.708956');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (705,'普兰店市',670,'0,9,670',0,'705',705,'','','122.274257,39.620006');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (706,'庄河市',670,'0,9,670',0,'706',706,'','','122.934145,39.85891');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (707,'铁东区',671,'0,9,671',0,'707',707,'','','123.020706,41.118235');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (708,'铁西区',671,'0,9,671',0,'708',708,'','','123.35863,1.805724');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (709,'立山区',671,'0,9,671',0,'709',709,'','','123.040474,41.164173');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (710,'千山区',671,'0,9,671',0,'710',710,'','','123.014005,41.061329');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (711,'台安县',671,'0,9,671',0,'711',711,'','','122.443683,41.3471');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (712,'岫岩满族自治县',671,'0,9,671',0,'712',712,'','','123.346069,40.403181');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (713,'海城市',671,'0,9,671',0,'713',713,'','','122.791201,40.840354');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (714,'新抚区',672,'0,9,672',0,'714',714,'','','123.911369,41.86979');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (715,'东洲区',672,'0,9,672',0,'715',715,'','','124.029249,41.833588');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (716,'望花区',672,'0,9,672',0,'716',716,'','','123.785996,41.860404');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (717,'顺城区',672,'0,9,672',0,'717',717,'','','123.901724,41.916014');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (718,'抚顺县',672,'0,9,672',0,'718',718,'','','124.136589,41.750077');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (719,'新宾满族自治县',672,'0,9,672',0,'719',719,'','','124.827866,41.635119');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (720,'清原满族自治县',672,'0,9,672',0,'720',720,'','','124.924317,42.118882');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (721,'平山区',673,'0,9,673',0,'721',721,'','','123.692575,41.240401');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (722,'溪湖区',673,'0,9,673',0,'722',722,'','','123.711866,41.456154');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (723,'明山区',673,'0,9,673',0,'723',723,'','','123.901737,41.347752');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (724,'南芬区',673,'0,9,673',0,'724',724,'','','123.82788,1.122716');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (725,'本溪满族自治县',673,'0,9,673',0,'725',725,'','','124.158564,41.19567');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (726,'桓仁满族自治县',673,'0,9,673',0,'726',726,'','','125.290028,41.261816');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (727,'元宝区',674,'0,9,674',0,'727',727,'','','124.350321,40.173197');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (728,'振兴区',674,'0,9,674',0,'728',728,'','','124.355563,40.067035');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (729,'振安区',674,'0,9,674',0,'729',729,'','','124.292197,40.211547');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (730,'宽甸满族自治县',674,'0,9,674',0,'730',730,'','','124.934106,40.766142');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (731,'东港市',674,'0,9,674',0,'731',731,'','','123.87687,9.981217');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (732,'凤城市',674,'0,9,674',0,'732',732,'','','124.07296,0.57957');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (733,'古塔区',675,'0,9,675',0,'733',733,'','','121.126434,41.141388');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (734,'凌河区',675,'0,9,675',0,'734',734,'','','121.182665,41.13438');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (735,'太和区',675,'0,9,675',0,'735',735,'','','121.118645,41.13683');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (736,'黑山县',675,'0,9,675',0,'736',736,'','','122.260736,41.799698');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (737,'义县',675,'0,9,675',0,'737',737,'','','121.301877,41.534928');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (738,'凌海市',675,'0,9,675',0,'738',738,'','','121.285575,41.152566');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (739,'北宁市',675,'0,9,675',0,'739',739,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (740,'站前区',676,'0,9,676',0,'740',740,'','','122.265592,40.70301');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (741,'西市区',676,'0,9,676',0,'741',741,'','','122.210126,40.666949');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (742,'鲅鱼圈区',676,'0,9,676',0,'742',742,'','','122.176897,40.252584');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (743,'老边区',676,'0,9,676',0,'743',743,'','','122.330903,40.672565');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (744,'盖州市',676,'0,9,676',0,'744',744,'','','122.477327,40.235441');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (745,'大石桥市',676,'0,9,676',0,'745',745,'','','122.571551,40.646915');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (746,'海州区',677,'0,9,677',0,'746',746,'','','121.652705,41.990902');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (747,'新邱区',677,'0,9,677',0,'747',747,'','','121.824321,42.074628');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (748,'太平区',677,'0,9,677',0,'748',748,'','','121.737753,42.009452');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (749,'清河门区',677,'0,9,677',0,'749',749,'','','121.446839,41.754998');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (750,'细河区',677,'0,9,677',0,'750',750,'','','121.627557,42.043254');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (751,'阜新蒙古族自治县',677,'0,9,677',0,'751',751,'','','121.695578,42.1575');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (752,'彰武县',677,'0,9,677',0,'752',752,'','','122.474173,42.523754');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (753,'白塔区',678,'0,9,678',0,'753',753,'','','123.175163,41.279286');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (754,'文圣区',678,'0,9,678',0,'754',754,'','','123.201216,41.271122');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (755,'宏伟区',678,'0,9,678',0,'755',755,'','','123.220518,41.220764');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (756,'弓长岭区',678,'0,9,678',0,'756',756,'','','123.42628,1.14597');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (757,'太子河区',678,'0,9,678',0,'757',757,'','','123.178374,41.274593');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (758,'辽阳县',678,'0,9,678',0,'758',758,'','','123.219821,41.077281');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (759,'灯塔市',678,'0,9,678',0,'759',759,'','','123.312574,41.420099');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (760,'双台子区',679,'0,9,679',0,'760',760,'','','122.032038,41.193225');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (761,'兴隆台区',679,'0,9,679',0,'761',761,'','','121.969629,41.155831');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (762,'大洼县',679,'0,9,679',0,'762',762,'','','122.093755,40.964908');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (763,'盘山县',679,'0,9,679',0,'763',763,'','','121.952166,41.193475');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (764,'银州区',680,'0,9,680',0,'764',764,'','','123.858516,42.248295');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (765,'清河区',680,'0,9,680',0,'765',765,'','','124.27578,2.508557');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (766,'铁岭县',680,'0,9,680',0,'766',766,'','','123.914529,42.222765');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (767,'西丰县',680,'0,9,680',0,'767',767,'','','124.738502,42.712739');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (768,'昌图县',680,'0,9,680',0,'768',768,'','','123.946409,43.000462');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (769,'调兵山市',680,'0,9,680',0,'769',769,'','','123.584348,42.44293');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (770,'开原市',680,'0,9,680',0,'770',770,'','','124.283776,42.471223');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (771,'双塔区',681,'0,9,681',0,'771',771,'','','120.484073,41.60574');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (772,'龙城区',681,'0,9,681',0,'772',772,'','','120.401333,41.606227');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (773,'朝阳县',681,'0,9,681',0,'773',773,'','','120.305061,41.372796');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (774,'建平县',681,'0,9,681',0,'774',774,'','','119.632527,41.842223');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (775,'喀左县',681,'0,9,681',0,'775',775,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (776,'北票市',681,'0,9,681',0,'776',776,'','','120.811885,41.865071');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (777,'凌源市',681,'0,9,681',0,'777',777,'','','119.271543,40.981801');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (778,'连山区',682,'0,9,682',0,'778',778,'','','120.688361,40.888537');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (779,'龙港区',682,'0,9,682',0,'779',779,'','','120.904586,40.750993');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (780,'南票区',682,'0,9,682',0,'780',780,'','','120.664645,41.137036');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (781,'绥中县',682,'0,9,682',0,'781',781,'','','120.026302,40.305129');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (782,'建昌县',682,'0,9,682',0,'782',782,'','','119.834892,40.716828');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (783,'兴城市',682,'0,9,682',0,'783',783,'','','120.475527,40.596284');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (784,'长春市',10,'0,10',1,'784,793,794,795,796,797,798,799,800,801,802',784,NULL,NULL,'125.313642,43.898338');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (785,'吉林市',10,'0,10',1,'785,803,804,805,806,807,808,809,810,811',785,NULL,NULL,'126.262876,43.678846');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (786,'四平市',10,'0,10',1,'786,812,813,814,815,816,817',786,NULL,NULL,'124.391382,43.175525');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (787,'辽源市',10,'0,10',1,'787,818,819,820,821',787,NULL,NULL,'125.133686,42.923303');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (788,'通化市',10,'0,10',1,'788,822,823,824,825,826,827,828',788,NULL,NULL,'125.94265,41.736397');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (789,'白山市',10,'0,10',1,'789,829,830,831,832,833,834',789,NULL,NULL,'126.435798,41.945859');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (790,'松原市',10,'0,10',1,'790,835,836,837,838',790,NULL,NULL,'124.832995,45.136049');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (791,'白城市',10,'0,10',1,'791,839,840,841,842,843',791,NULL,NULL,'122.840777,45.621086');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (792,'延边朝鲜族自治州',10,'0,10',1,'792,844,845,846,847,848,849,850,851',792,NULL,NULL,'129.485902,42.896414');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (793,'南关区',784,'0,10,784',0,'793',793,'','','125.419649,43.732191');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (794,'宽城区',784,'0,10,784',0,'794',794,'','','125.344899,43.998252');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (795,'朝阳区',784,'0,10,784',0,'795',795,'','','116.521695,39.958953');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (796,'二道区',784,'0,10,784',0,'796',796,'','','125.611485,43.872223');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (797,'绿园区',784,'0,10,784',0,'797',797,'','','125.191331,43.912165');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (798,'双阳区',784,'0,10,784',0,'798',798,'','','125.712822,43.531747');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (799,'农安县',784,'0,10,784',0,'799',799,'','','125.094327,44.461506');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (800,'九台市',784,'0,10,784',0,'800',800,'','','125.985176,44.209759');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (801,'榆树市',784,'0,10,784',0,'801',801,'','','126.602501,44.879423');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (802,'德惠市',784,'0,10,784',0,'802',802,'','','125.769044,44.510507');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (803,'昌邑区',785,'0,10,785',0,'803',803,'','','126.326513,44.023898');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (804,'龙潭区',785,'0,10,785',0,'804',804,'','','126.695085,44.100874');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (805,'船营区',785,'0,10,785',0,'805',805,'','','126.389089,43.882172');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (806,'丰满区',785,'0,10,785',0,'806',806,'','','126.698202,43.654515');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (807,'永吉县',785,'0,10,785',0,'807',807,'','','126.22756,3.601481');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (808,'蛟河市',785,'0,10,785',0,'808',808,'','','127.351742,43.716756');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (809,'桦甸市',785,'0,10,785',0,'809',809,'','','127.041392,43.056631');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (810,'舒兰市',785,'0,10,785',0,'810',810,'','','127.116772,44.335465');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (811,'磐石市',785,'0,10,785',0,'811',811,'','','126.174628,43.057456');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (812,'铁西区',786,'0,10,786',0,'812',812,'','','123.35863,1.805724');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (813,'铁东区',786,'0,10,786',0,'813',813,'','','123.020706,41.118235');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (814,'梨树县',786,'0,10,786',0,'814',814,'','','124.380491,43.414438');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (815,'伊通满族自治县',786,'0,10,786',0,'815',815,'','','125.271149,43.346322');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (816,'公主岭市',786,'0,10,786',0,'816',816,'','','124.685882,43.791826');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (817,'双辽市',786,'0,10,786',0,'817',817,'','','123.70852,3.767695');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (818,'龙山区',787,'0,10,787',0,'818',818,'','','125.210998,42.913197');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (819,'西安区',787,'0,10,787',0,'819',819,'','','125.150149,42.986365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (820,'东丰县',787,'0,10,787',0,'820',820,'','','125.454809,42.683934');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (821,'东辽县',787,'0,10,787',0,'821',821,'','','125.184931,42.947925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (822,'东昌区',788,'0,10,788',0,'822',822,'','','125.960124,41.677262');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (823,'二道江区',788,'0,10,788',0,'823',823,'','','126.15628,1.772626');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (824,'通化县',788,'0,10,788',0,'824',824,'','','125.857332,41.729156');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (825,'辉南县',788,'0,10,788',0,'825',825,'','','126.342724,42.557949');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (826,'柳河县',788,'0,10,788',0,'826',826,'','','125.917276,42.185665');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (827,'梅河口市',788,'0,10,788',0,'827',827,'','','125.723516,42.54265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (828,'集安市',788,'0,10,788',0,'828',828,'','','125.998992,41.251411');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (829,'八道江区',789,'0,10,789',0,'829',829,'','','125.658517,43.531367');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (830,'抚松县',789,'0,10,789',0,'830',830,'','','127.623938,42.277909');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (831,'靖宇县',789,'0,10,789',0,'831',831,'','','126.902469,42.449967');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (832,'长白朝鲜族自治县',789,'0,10,789',0,'832',832,'','','127.864358,41.584709');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (833,'江源县',789,'0,10,789',0,'833',833,'','','126.825302,42.078959');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (834,'临江市',789,'0,10,789',0,'834',834,'','','127.19171,1.816566');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (835,'宁江区',790,'0,10,790',0,'835',835,'','','124.867571,45.29271');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (836,'长岭县',790,'0,10,790',0,'836',836,'','','123.866504,44.305645');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (837,'乾安县',790,'0,10,790',0,'837',837,'','','123.969123,44.926914');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (838,'扶余县',790,'0,10,790',0,'838',838,'','','125.564563,45.131092');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (839,'洮北区',791,'0,10,791',0,'839',839,'','','122.789074,45.623301');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (840,'镇赉县',791,'0,10,791',0,'840',840,'','','123.452272,45.956172');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (841,'通榆县',791,'0,10,791',0,'841',841,'','','122.745291,44.785717');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (842,'洮南市',791,'0,10,791',0,'842',842,'','','122.453677,45.475604');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (843,'大安市',791,'0,10,791',0,'843',843,'','','123.723714,45.432438');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (844,'延吉市',792,'0,10,792',0,'844',844,'','','129.471302,43.059667');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (845,'图们市',792,'0,10,792',0,'845',845,'','','129.834311,43.030549');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (846,'敦化市',792,'0,10,792',0,'846',846,'','','128.239499,43.560202');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (847,'珲春市',792,'0,10,792',0,'847',847,'','','130.702367,43.074719');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (848,'龙井市',792,'0,10,792',0,'848',848,'','','129.383816,42.844249');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (849,'和龙市',792,'0,10,792',0,'849',849,'','','128.911211,42.466442');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (850,'汪清县',792,'0,10,792',0,'850',850,'','','129.953994,43.540144');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (851,'安图县',792,'0,10,792',0,'851',851,'','','128.437652,42.701033');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (852,'哈尔滨市',11,'0,11',1,'852,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883',852,NULL,NULL,'126.657717,45.773225');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (853,'齐齐哈尔市',11,'0,11',1,'853,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899',853,NULL,NULL,'123.987289,47.3477');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (854,'鸡西市',11,'0,11',1,'854,900,901,902,903,904,905,906,907,908',854,NULL,NULL,'130.941767,45.32154');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (855,'鹤岗市',11,'0,11',1,'855,909,910,911,912,913,914,915,916',855,NULL,NULL,'130.292472,47.338666');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (856,'双鸭山市',11,'0,11',1,'856,917,918,919,920,921,922,923,924',856,NULL,NULL,'131.171402,46.655102');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (857,'大庆市',11,'0,11',1,'857,925,926,927,928,929,930,931,932,933',857,NULL,NULL,'125.02184,46.596709');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (858,'伊春市',11,'0,11',1,'858,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950',858,NULL,NULL,'128.910766,47.734685');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (859,'佳木斯市',11,'0,11',1,'859,951,952,953,954,955,956,957,958,959,960,961',859,NULL,NULL,'130.284735,46.81378');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (860,'七台河市',11,'0,11',1,'860,962,963,964,965',860,NULL,NULL,'131.019048,45.775005');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (861,'牡丹江市',11,'0,11',1,'861,966,967,968,969,970,971,972,973,974,975',861,NULL,NULL,'129.608035,44.588521');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (862,'黑河市',11,'0,11',1,'862,976,977,978,979,980,981',862,NULL,NULL,'127.50083,50.25069');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (863,'绥化市',11,'0,11',1,'863,982,983,984,985,986,987,988,989,990,991',863,NULL,NULL,'126.989095,46.646064');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (864,'大兴安岭地区',11,'0,11',1,'864,992,993,994',864,NULL,NULL,'124.196104,51.991789');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (865,'道里区',852,'0,11,852',0,'865',865,'','','107.3434,0.243571');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (866,'南岗区',852,'0,11,852',0,'866',866,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (867,'道外区',852,'0,11,852',0,'867',867,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (868,'太平区',852,'0,11,852',0,'868',868,'','','121.737753,42.009452');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (869,'香坊区',852,'0,11,852',0,'869',869,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (870,'动力区',852,'0,11,852',0,'870',870,'','','126.642223,45.732308');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (871,'平房区',852,'0,11,852',0,'871',871,'','','126.658761,45.605686');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (872,'呼兰县',852,'0,11,852',0,'872',872,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (873,'依兰县',852,'0,11,852',0,'873',873,'','','129.721503,46.275637');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (874,'方正县',852,'0,11,852',0,'874',874,'','','128.949419,45.819769');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (875,'宾县',852,'0,11,852',0,'875',875,'','','127.661612,45.783825');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (876,'巴彦县',852,'0,11,852',0,'876',876,'','','127.324287,46.340416');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (877,'木兰县',852,'0,11,852',0,'877',877,'','','127.929838,46.248172');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (878,'通河县',852,'0,11,852',0,'878',878,'','','128.762232,46.247857');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (879,'延寿县',852,'0,11,852',0,'879',879,'','','128.463943,45.48952');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (880,'阿城市',852,'0,11,852',0,'880',880,'','','116.057433,36.172429');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (881,'双城市',852,'0,11,852',0,'881',881,'','','126.188927,45.408171');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (882,'尚志市',852,'0,11,852',0,'882',882,'','','128.31617,5.083893');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (883,'五常市',852,'0,11,852',0,'883',883,'','','127.491113,44.772544');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (884,'龙沙区',853,'0,11,853',0,'884',884,'','','123.944838,47.301073');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (885,'建华区',853,'0,11,853',0,'885',885,'','','124.021279,47.404866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (886,'铁锋区',853,'0,11,853',0,'886',886,'','','124.262931,47.303489');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (887,'昂昂溪区',853,'0,11,853',0,'887',887,'','','123.972935,47.104048');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (888,'富拉尔基区',853,'0,11,853',0,'888',888,'','','123.571998,47.228952');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (889,'碾子山区',853,'0,11,853',0,'889',889,'','','122.932335,47.585869');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (890,'梅里斯达斡尔族区',853,'0,11,853',0,'890',890,'','','124.005487,47.58308');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (891,'龙江县',853,'0,11,853',0,'891',891,'','','123.089103,47.258895');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (892,'依安县',853,'0,11,853',0,'892',892,'','','125.294633,47.706873');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (893,'泰来县',853,'0,11,853',0,'893',893,'','','123.558048,46.60329');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (894,'甘南县',853,'0,11,853',0,'894',894,'','','123.8469,0.011583');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (895,'富裕县',853,'0,11,853',0,'895',895,'','','124.571747,47.66582');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (896,'克山县',853,'0,11,853',0,'896',896,'','','125.706471,48.167091');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (897,'克东县',853,'0,11,853',0,'897',897,'','','126.352136,48.009015');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (898,'拜泉县',853,'0,11,853',0,'898',898,'','','126.021786,47.592256');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (899,'讷河市',853,'0,11,853',0,'899',899,'','','125.076553,48.481453');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (900,'鸡冠区',854,'0,11,854',0,'900',900,'','','130.959937,45.30761');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (901,'恒山区',854,'0,11,854',0,'901',901,'','','130.916267,45.138571');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (902,'滴道区',854,'0,11,854',0,'902',902,'','','130.734836,45.354342');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (903,'梨树区',854,'0,11,854',0,'903',903,'','','130.765238,45.097064');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (904,'城子河区',854,'0,11,854',0,'904',904,'','','131.027704,45.37969');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (905,'麻山区',854,'0,11,854',0,'905',905,'','','130.566887,45.205826');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (906,'鸡东县',854,'0,11,854',0,'906',906,'','','131.225654,45.273228');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (907,'虎林市',854,'0,11,854',0,'907',907,'','','133.121106,45.997276');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (908,'密山市',854,'0,11,854',0,'908',908,'','','132.176562,45.469765');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (909,'向阳区',855,'0,11,855',0,'909',909,'','','130.301233,47.35092');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (910,'工农区',855,'0,11,855',0,'910',910,'','','130.277196,47.32777');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (911,'南山区',855,'0,11,855',0,'911',911,'','','130.281765,47.298821');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (912,'兴安区',855,'0,11,855',0,'912',912,'','','130.244375,47.23371');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (913,'东山区',855,'0,11,855',0,'913',913,'','','130.247501,47.483737');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (914,'兴山区',855,'0,11,855',0,'914',914,'','','130.326646,47.393965');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (915,'萝北县',855,'0,11,855',0,'915',915,'','','130.761333,47.746935');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (916,'绥滨县',855,'0,11,855',0,'916',916,'','','131.856595,47.483007');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (917,'尖山区',856,'0,11,856',0,'917',917,'','','131.178514,46.658525');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (918,'岭东区',856,'0,11,856',0,'918',918,'','','131.246024,46.459522');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (919,'四方台区',856,'0,11,856',0,'919',919,'','','131.308707,46.669775');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (920,'宝山区',856,'0,11,856',0,'920',920,'','','131.564836,46.529228');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (921,'集贤县',856,'0,11,856',0,'921',921,'','','131.150556,46.818437');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (922,'友谊县',856,'0,11,856',0,'922',922,'','','131.854999,46.788593');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (923,'宝清县',856,'0,11,856',0,'923',923,'','','132.409279,46.409383');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (924,'饶河县',856,'0,11,856',0,'924',924,'','','133.729259,47.072629');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (925,'萨尔图区',857,'0,11,857',0,'925',925,'','','125.042452,46.663311');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (926,'龙凤区',857,'0,11,857',0,'926',926,'','','125.141767,46.535568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (927,'让胡路区',857,'0,11,857',0,'927',927,'','','124.838427,46.72916');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (928,'红岗区',857,'0,11,857',0,'928',928,'','','124.914285,46.420779');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (929,'大同区',857,'0,11,857',0,'929',929,'','','124.699077,46.070051');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (930,'肇州县',857,'0,11,857',0,'930',930,'','','125.308969,45.837072');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (931,'肇源县',857,'0,11,857',0,'931',931,'','','124.769044,45.6472');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (932,'林甸县',857,'0,11,857',0,'932',932,'','','124.896783,47.159693');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (933,'杜尔伯特蒙古族自治县',857,'0,11,857',0,'933',933,'','','124.246513,46.561614');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (934,'伊春区',858,'0,11,858',0,'934',934,'','','128.90058,7.741959');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (935,'南岔区',858,'0,11,858',0,'935',935,'','','129.538874,46.964156');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (936,'友好区',858,'0,11,858',0,'936',936,'','','128.465964,48.128002');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (937,'西林区',858,'0,11,858',0,'937',937,'','','129.227255,47.500962');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (938,'翠峦区',858,'0,11,858',0,'938',938,'','','128.365411,47.589934');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (939,'新青区',858,'0,11,858',0,'939',939,'','','129.787357,48.216126');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (940,'美溪区',858,'0,11,858',0,'940',940,'','','129.409404,47.768892');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (941,'金山屯区',858,'0,11,858',0,'941',941,'','','129.771903,47.498544');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (942,'五营区',858,'0,11,858',0,'942',942,'','','129.061485,48.229328');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (943,'乌马河区',858,'0,11,858',0,'943',943,'','','128.79469,7.549368');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (944,'汤旺河区',858,'0,11,858',0,'944',944,'','','129.538754,48.563263');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (945,'带岭区',858,'0,11,858',0,'945',945,'','','128.861475,47.090162');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (946,'乌伊岭区',858,'0,11,858',0,'946',946,'','','129.498936,48.836655');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (947,'红星区',858,'0,11,858',0,'947',947,'','','129.251919,48.29802');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (948,'上甘岭区',858,'0,11,858',0,'948',948,'','','129.022399,48.036509');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (949,'嘉荫县',858,'0,11,858',0,'949',949,'','','130.00825,8.76952');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (950,'铁力市',858,'0,11,858',0,'950',950,'','','128.552517,46.866329');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (951,'永红区',859,'0,11,859',0,'951',951,'','','102.286964,30.375925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (952,'向阳区',859,'0,11,859',0,'952',952,'','','130.301233,47.35092');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (953,'前进区',859,'0,11,859',0,'953',953,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (954,'东风区',859,'0,11,859',0,'954',954,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (955,'郊区',859,'0,11,859',0,'955',955,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (956,'桦南县',859,'0,11,859',0,'956',956,'','','130.637015,46.306672');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (957,'桦川县',859,'0,11,859',0,'957',957,'','','130.963018,46.989258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (958,'汤原县',859,'0,11,859',0,'958',958,'','','130.072406,46.988319');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (959,'抚远县',859,'0,11,859',0,'959',959,'','','134.296044,47.926105');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (960,'同江市',859,'0,11,859',0,'960',960,'','','133.273328,47.833685');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (961,'富锦市',859,'0,11,859',0,'961',961,'','','132.539001,47.170673');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (962,'新兴区',860,'0,11,860',0,'962',962,'','','130.893188,45.813494');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (963,'桃山区',860,'0,11,860',0,'963',963,'','','130.992503,45.770093');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (964,'茄子河区',860,'0,11,860',0,'964',964,'','','131.475224,45.883168');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (965,'勃利县',860,'0,11,860',0,'965',965,'','','130.818169,45.930545');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (966,'东安区',861,'0,11,861',0,'966',966,'','','129.860447,44.408404');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (967,'阳明区',861,'0,11,861',0,'967',967,'','','129.783915,44.587975');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (968,'爱民区',861,'0,11,861',0,'968',968,'','','129.544566,44.685921');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (969,'西安区',861,'0,11,861',0,'969',969,'','','125.150149,42.986365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (970,'东宁县',861,'0,11,861',0,'970',970,'','','130.850389,44.032436');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (971,'林口县',861,'0,11,861',0,'971',971,'','','130.023181,45.396102');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (972,'绥芬河市',861,'0,11,861',0,'972',972,'','','131.102457,44.408005');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (973,'海林市',861,'0,11,861',0,'973',973,'','','129.221414,44.903617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (974,'宁安市',861,'0,11,861',0,'974',974,'','','129.215317,44.058017');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (975,'穆棱市',861,'0,11,861',0,'975',975,'','','130.395526,44.57687');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (976,'爱辉区',862,'0,11,862',0,'976',976,'','','126.764262,50.218245');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (977,'嫩江县',862,'0,11,862',0,'977',977,'','','125.771275,49.621866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (978,'逊克县',862,'0,11,862',0,'978',978,'','','128.370877,48.88674');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (979,'孙吴县',862,'0,11,862',0,'979',979,'','','127.316672,49.370656');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (980,'北安市',862,'0,11,862',0,'980',980,'','','127.111546,48.115946');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (981,'五大连池市',862,'0,11,862',0,'981',981,'','','126.634501,48.749166');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (982,'北林区',863,'0,11,863',0,'982',982,'','','126.957863,46.747537');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (983,'望奎县',863,'0,11,863',0,'983',983,'','','126.593023,46.869481');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (984,'兰西县',863,'0,11,863',0,'984',984,'','','126.213543,46.35835');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (985,'青冈县',863,'0,11,863',0,'985',985,'','','125.960524,46.846561');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (986,'庆安县',863,'0,11,863',0,'986',986,'','','127.84449,7.070366');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (987,'明水县',863,'0,11,863',0,'987',987,'','','125.841268,47.201247');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (988,'绥棱县',863,'0,11,863',0,'988',988,'','','127.719413,47.584143');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (989,'安达市',863,'0,11,863',0,'989',989,'','','125.384552,46.535467');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (990,'肇东市',863,'0,11,863',0,'990',990,'','','125.849731,46.009306');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (991,'海伦市',863,'0,11,863',0,'991',991,'','','126.897129,47.44727');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (992,'呼玛县',864,'0,11,864',0,'992',992,'','','124.912002,51.81313');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (993,'塔河县',864,'0,11,864',0,'993',993,'','','124.640203,52.716506');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (994,'漠河县',864,'0,11,864',0,'994',994,'','','122.715721,52.945659');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (995,'南京市',12,'0,12',1,'995,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020',995,NULL,NULL,'118.778074,32.057236');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (996,'无锡市',12,'0,12',1,'996,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030',996,NULL,NULL,'120.305456,31.570037');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (997,'徐州市',12,'0,12',1,'997,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041',997,NULL,NULL,'117.188107,34.271553');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (998,'常州市',12,'0,12',1,'998,1042,1043,1044,1045,1046,1047,1048',998,NULL,NULL,'119.981861,31.771397');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (999,'苏州市',12,'0,12',1,'999,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061',999,NULL,NULL,'120.619907,31.317987');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1000,'南通市',12,'0,12',1,'1000,1062,1063,1064,1065,1066,1067,1068,1069',1000,NULL,NULL,'120.873801,32.014665');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1001,'连云港市',12,'0,12',1,'1001,1070,1071,1072,1073,1074,1075,1076',1001,NULL,NULL,'119.173872,34.601549');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1002,'淮安市',12,'0,12',1,'1002,1077,1078,1079,1080,1081,1082,1083,1084',1002,NULL,NULL,'119.030186,33.606513');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1003,'盐城市',12,'0,12',1,'1003,1085,1086,1087,1088,1089,1090,1091,1092,1093',1003,NULL,NULL,'120.148872,33.379862');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1004,'扬州市',12,'0,12',1,'1004,1094,1095,1096,1097,1098,1099,1100',1004,NULL,NULL,'119.427778,32.408505');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1005,'镇江市',12,'0,12',1,'1005,1101,1102,1103,1104,1105,1106',1005,NULL,NULL,'119.455835,32.204409');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1006,'泰州市',12,'0,12',1,'1006,1107,1108,1109,1110,1111,1112',1006,NULL,NULL,'119.919606,32.476053');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1007,'宿迁市',12,'0,12',1,'1007,1113,1114,1115,1116,1117',1007,NULL,NULL,'118.296893,33.95205');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1008,'玄武区',995,'0,12,995',0,'1008',1008,'','','118.848937,32.071766');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1009,'白下区',995,'0,12,995',0,'1009',1009,'','','118.829884,32.030369');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1010,'秦淮区',995,'0,12,995',0,'1010',1010,'','','118.817221,32.007969');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1011,'建邺区',995,'0,12,995',0,'1011',1011,'','','118.713342,32.012518');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1012,'鼓楼区',995,'0,12,995',0,'1012',1012,'','','118.765057,32.068604');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1013,'下关区',995,'0,12,995',0,'1013',1013,'','','118.772553,32.109229');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1014,'浦口区',995,'0,12,995',0,'1014',1014,'','','118.569125,32.059062');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1015,'栖霞区',995,'0,12,995',0,'1015',1015,'','','118.963725,32.169424');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1016,'雨花台区',995,'0,12,995',0,'1016',1016,'','','118.721979,31.954552');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1017,'江宁区',995,'0,12,995',0,'1017',1017,'','','118.835418,31.863971');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1018,'六合区',995,'0,12,995',0,'1018',1018,'','','118.848166,32.40064');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1019,'溧水县',995,'0,12,995',0,'1019',1019,'','','119.039927,31.596963');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1020,'高淳县',995,'0,12,995',0,'1020',1020,'','','118.9719,0.336381');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1021,'崇安区',996,'0,12,996',0,'1021',1021,'','','120.328903,31.597341');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1022,'南长区',996,'0,12,996',0,'1022',1022,'','','120.315798,31.542866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1023,'北塘区',996,'0,12,996',0,'1023',1023,'','','120.282126,31.609369');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1024,'锡山区',996,'0,12,996',0,'1024',1024,'','','120.491008,31.615587');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1025,'惠山区',996,'0,12,996',0,'1025',1025,'','','120.215294,31.656376');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1026,'非经营场所区',996,'0,12,996',0,'1026',1026,'','','112.508261,22.475658');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1027,'滨湖区',996,'0,12,996',0,'1027',1027,'','','120.248502,31.466579');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1028,'新区',996,'0,12,996',0,'1028',1028,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1029,'江阴市',996,'0,12,996',0,'1029',1029,'','','120.310679,31.837425');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1030,'宜兴市',996,'0,12,996',0,'1030',1030,'','','119.790265,31.362245');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1031,'鼓楼区',997,'0,12,997',0,'1031',1031,'','','118.765057,32.068604');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1032,'云龙区',997,'0,12,997',0,'1032',1032,'','','117.276176,34.222487');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1033,'九里区',997,'0,12,997',0,'1033',1033,'','','117.124522,34.321211');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1034,'贾汪区',997,'0,12,997',0,'1034',1034,'','','117.498246,34.410528');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1035,'泉山区',997,'0,12,997',0,'1035',1035,'','','117.175584,34.241947');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1036,'丰县',997,'0,12,997',0,'1036',1036,'','','116.615733,34.695773');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1037,'沛县',997,'0,12,997',0,'1037',1037,'','','116.911468,34.700648');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1038,'铜山县',997,'0,12,997',0,'1038',1038,'','','117.295376,34.288409');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1039,'睢宁县',997,'0,12,997',0,'1039',1039,'','','117.890364,33.946571');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1040,'新沂市',997,'0,12,997',0,'1040',1040,'','','118.344121,34.284443');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1041,'邳州市',997,'0,12,997',0,'1041',1041,'','','117.90306,4.402946');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1042,'天宁区',998,'0,12,998',0,'1042',1042,'','','120.001766,31.777803');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1043,'钟楼区',998,'0,12,998',0,'1043',1043,'','','119.912439,31.798511');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1044,'戚墅堰区',998,'0,12,998',0,'1044',1044,'','','120.056359,31.756898');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1045,'新北区',998,'0,12,998',0,'1045',1045,'','','119.903154,31.939946');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1046,'武进区',998,'0,12,998',0,'1046',1046,'','','119.943432,31.672903');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1047,'溧阳市',998,'0,12,998',0,'1047',1047,'','','119.382839,31.425242');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1048,'金坛市',998,'0,12,998',0,'1048',1048,'','','119.515038,31.723054');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1049,'沧浪区',999,'0,12,999',0,'1049',1049,'','','120.616793,31.295727');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1050,'平江区',999,'0,12,999',0,'1050',1050,'','','120.630878,31.332306');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1051,'金阊区',999,'0,12,999',0,'1051',1051,'','','120.581625,31.344528');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1052,'虎丘区',999,'0,12,999',0,'1052',1052,'','','120.478424,31.351869');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1053,'吴中区',999,'0,12,999',0,'1053',1053,'','','120.365776,31.17987');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1054,'相城区',999,'0,12,999',0,'1054',1054,'','','120.646853,31.450775');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1055,'常熟市',999,'0,12,999',0,'1055',1055,'','','120.831486,31.669446');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1056,'张家港市',999,'0,12,999',0,'1056',1056,'','','120.627279,31.907812');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1057,'昆山市',999,'0,12,999',0,'1057',1057,'','','120.965808,31.328937');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1058,'吴江市',999,'0,12,999',0,'1058',1058,'','','120.639402,31.014847');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1059,'太仓市',999,'0,12,999',0,'1059',1059,'','','121.158978,31.571904');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1060,'工业园区',999,'0,12,999',0,'1060',1060,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1061,'度假区',999,'0,12,999',0,'1061',1061,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1062,'崇川区',1000,'0,12,1000',0,'1062',1062,'','','120.887599,31.962661');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1063,'港闸区',1000,'0,12,1000',0,'1063',1063,'','','120.823875,32.071256');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1064,'海安县',1000,'0,12,1000',0,'1064',1064,'','','120.473927,32.553985');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1065,'如东县',1000,'0,12,1000',0,'1065',1065,'','','121.059244,32.387662');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1066,'启东市',1000,'0,12,1000',0,'1066',1066,'','','121.678822,31.871302');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1067,'如皋市',1000,'0,12,1000',0,'1067',1067,'','','120.580144,32.273616');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1068,'通州市',1000,'0,12,1000',0,'1068',1068,'','','116.740079,39.809815');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1069,'海门市',1000,'0,12,1000',0,'1069',1069,'','','121.31247,1.956039');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1070,'连云区',1001,'0,12,1001',0,'1070',1070,'','','119.467017,34.638922');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1071,'新浦区',1001,'0,12,1001',0,'1071',1071,'','','119.260574,34.656801');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1072,'海州区',1001,'0,12,1001',0,'1072',1072,'','','121.652705,41.990902');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1073,'赣榆县',1001,'0,12,1001',0,'1073',1073,'','','119.0414,0.88953 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1074,'东海县',1001,'0,12,1001',0,'1074',1074,'','','118.79231,4.556383');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1075,'灌云县',1001,'0,12,1001',0,'1075',1075,'','','119.392775,34.406832');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1076,'灌南县',1001,'0,12,1001',0,'1076',1076,'','','119.446397,34.175195');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1077,'清河区',1002,'0,12,1002',0,'1077',1077,'','','124.27578,2.508557');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1078,'楚州区',1002,'0,12,1002',0,'1078',1078,'','','119.303107,33.504018');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1079,'淮阴区',1002,'0,12,1002',0,'1079',1079,'','','118.935664,33.664059');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1080,'清浦区',1002,'0,12,1002',0,'1080',1080,'','','119.025325,33.488642');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1081,'涟水县',1002,'0,12,1002',0,'1081',1081,'','','119.324957,33.884155');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1082,'洪泽县',1002,'0,12,1002',0,'1082',1082,'','','118.8282,0.235206');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1083,'盱眙县',1002,'0,12,1002',0,'1083',1083,'','','118.538232,32.971613');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1084,'金湖县',1002,'0,12,1002',0,'1084',1084,'','','119.145631,33.025834');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1085,'城区',1003,'0,12,1003',0,'1085',1085,'','','113.612838,37.857865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1086,'响水县',1003,'0,12,1003',0,'1086',1086,'','','119.797602,34.232797');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1087,'滨海县',1003,'0,12,1003',0,'1087',1087,'','','120.026609,34.092317');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1088,'阜宁县',1003,'0,12,1003',0,'1088',1088,'','','119.70499,3.711976');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1089,'射阳县',1003,'0,12,1003',0,'1089',1089,'','','120.279505,33.745462');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1090,'建湖县',1003,'0,12,1003',0,'1090',1090,'','','119.836497,33.488908');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1091,'盐都县',1003,'0,12,1003',0,'1091',1091,'','','119.968501,33.265898');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1092,'东台市',1003,'0,12,1003',0,'1092',1092,'','','120.563769,32.791443');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1093,'大丰市',1003,'0,12,1003',0,'1093',1093,'','','120.546274,33.190868');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1094,'广陵区',1004,'0,12,1004',0,'1094',1094,'','','119.486678,32.39567');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1095,'邗江区',1004,'0,12,1004',0,'1095',1095,'','','119.458264,32.42583');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1096,'郊区',1004,'0,12,1004',0,'1096',1096,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1097,'宝应县',1004,'0,12,1004',0,'1097',1097,'','','119.455651,33.225834');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1098,'仪征市',1004,'0,12,1004',0,'1098',1098,'','','119.200955,32.392636');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1099,'高邮市',1004,'0,12,1004',0,'1099',1099,'','','119.503407,32.835944');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1100,'江都市',1004,'0,12,1004',0,'1100',1100,'','','119.701666,32.539866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1101,'京口区',1005,'0,12,1005',0,'1101',1101,'','','119.584822,32.201996');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1102,'润州区',1005,'0,12,1005',0,'1102',1102,'','','119.43092,2.196647');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1103,'丹徒区',1005,'0,12,1005',0,'1103',1103,'','','119.498972,32.114041');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1104,'丹阳市',1005,'0,12,1005',0,'1104',1104,'','','119.644304,31.960263');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1105,'扬中市',1005,'0,12,1005',0,'1105',1105,'','','119.845138,32.189469');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1106,'句容市',1005,'0,12,1005',0,'1106',1106,'','','119.20708,1.932635');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1107,'海陵区',1006,'0,12,1006',0,'1107',1107,'','','119.921174,32.488258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1108,'高港区',1006,'0,12,1006',0,'1108',1108,'','','119.925744,32.330075');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1109,'兴化市',1006,'0,12,1006',0,'1109',1109,'','','119.996418,32.961954');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1110,'靖江市',1006,'0,12,1006',0,'1110',1110,'','','120.276899,32.039443');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1111,'泰兴市',1006,'0,12,1006',0,'1111',1111,'','','120.135346,32.213679');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1112,'姜堰市',1006,'0,12,1006',0,'1112',1112,'','','120.090816,32.526452');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1113,'宿城区',1007,'0,12,1007',0,'1113',1113,'','','118.27464,3.862829');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1114,'宿豫县',1007,'0,12,1007',0,'1114',1114,'','','118.322437,33.955799');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1115,'沭阳县',1007,'0,12,1007',0,'1115',1115,'','','118.85775,4.154014');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1116,'泗阳县',1007,'0,12,1007',0,'1116',1116,'','','118.656941,33.708801');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1117,'泗洪县',1007,'0,12,1007',0,'1117',1117,'','','118.312551,33.425955');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1118,'合肥市',13,'0,13',1,'1118,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145',1118,NULL,NULL,'117.282699,31.866942');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1119,'芜湖市',13,'0,13',1,'1119,1146,1147,1148,1149,1150,1151,1152',1119,NULL,NULL,'118.384108,31.36602');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1120,'蚌埠市',13,'0,13',1,'1120,1153,1154,1155,1156,1157,1158,1159',1120,NULL,NULL,'117.35708,32.929499');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1121,'淮南市',13,'0,13',1,'1121,1160,1161,1162,1163,1164,1165',1121,NULL,NULL,'117.018639,32.642812');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1122,'马鞍山市',13,'0,13',1,'1122,1166,1167,1168,1169',1122,NULL,NULL,'118.515882,31.688528');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1123,'淮北市',13,'0,13',1,'1123,1170,1171,1172,1173',1123,NULL,NULL,'116.791447,33.960023');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1124,'铜陵市',13,'0,13',1,'1124,1174,1175,1176,1177',1124,NULL,NULL,'117.819429,30.94093');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1125,'安庆市',13,'0,13',1,'1125,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188',1125,NULL,NULL,'117.058739,30.537898');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1126,'黄山市',13,'0,13',1,'1126,1189,1190,1191,1192,1193,1194,1195',1126,NULL,NULL,'118.29357,29.734435');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1127,'滁州市',13,'0,13',1,'1127,1196,1197,1198,1199,1200,1201,1202,1203',1127,NULL,NULL,'118.32457,32.317351');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1128,'阜阳市',13,'0,13',1,'1128,1204,1205,1206,1207,1208,1209,1210,1211',1128,NULL,NULL,'115.820932,32.901211');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1129,'宿州市',13,'0,13',1,'1129,1212,1213,1214,1215,1216',1129,NULL,NULL,'116.988692,33.636772');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1130,'巢湖市',13,'0,13',1,'1130,1217,1218,1219,1220,1221',1130,NULL,NULL,'117.88049,31.608733');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1131,'六安市',13,'0,13',1,'1131,1222,1223,1224,1225,1226,1227,1228',1131,NULL,NULL,'116.505253,31.755558');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1132,'亳州市',13,'0,13',1,'1132,1229,1230,1231',1132,NULL,NULL,'115.787928,33.871211');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1133,'池州市',13,'0,13',1,'1133,1232,1233,1234,1235',1133,NULL,NULL,'117.494477,30.660019');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1134,'宣城市',13,'0,13',1,'1134,1236,1237,1238,1239,1240,1241,1242',1134,NULL,NULL,'118.752096,30.951642');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1135,'瑶海区',1118,'0,13,1118',0,'1135',1135,'','','117.331224,31.905375');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1136,'庐阳区',1118,'0,13,1118',0,'1136',1136,'','','117.247835,31.912901');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1137,'蜀山区',1118,'0,13,1118',0,'1137',1137,'','','117.23128,1.838185');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1138,'高新区',1118,'0,13,1118',0,'1138',1138,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1139,'合肥经济技术开发区',1118,'0,13,1118',0,'1139',1139,'','','117.282699,31.866942');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1140,'新站区',1118,'0,13,1118',0,'1140',1140,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1141,'政务区',1118,'0,13,1118',0,'1141',1141,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1142,'包河区',1118,'0,13,1118',0,'1142',1142,'','','117.353913,31.790724');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1143,'长丰县',1118,'0,13,1118',0,'1143',1143,'','','117.174438,32.286111');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1144,'肥东县',1118,'0,13,1118',0,'1144',1144,'','','117.575857,32.003189');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1145,'肥西县',1118,'0,13,1118',0,'1145',1145,'','','117.036261,31.732638');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1146,'镜湖区',1119,'0,13,1119',0,'1146',1146,'','','118.387245,31.351966');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1147,'马塘区',1119,'0,13,1119',0,'1147',1147,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1148,'新芜区',1119,'0,13,1119',0,'1148',1148,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1149,'鸠江区',1119,'0,13,1119',0,'1149',1149,'','','118.493974,31.375482');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1150,'芜湖县',1119,'0,13,1119',0,'1150',1150,'','','118.532462,31.191699');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1151,'繁昌县',1119,'0,13,1119',0,'1151',1151,'','','118.200118,31.12833');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1152,'南陵县',1119,'0,13,1119',0,'1152',1152,'','','118.288216,30.895982');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1153,'东市区',1120,'0,13,1120',0,'1153',1153,'','','117.398461,32.949561');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1154,'中市区',1120,'0,13,1120',0,'1154',1154,'','','117.378727,32.952165');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1155,'西市区',1120,'0,13,1120',0,'1155',1155,'','','122.210126,40.666949');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1156,'郊区',1120,'0,13,1120',0,'1156',1156,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1157,'怀远县',1120,'0,13,1120',0,'1157',1157,'','','117.042086,33.037131');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1158,'五河县',1120,'0,13,1120',0,'1158',1158,'','','117.76421,3.138465');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1159,'固镇县',1120,'0,13,1120',0,'1159',1159,'','','117.354034,33.272841');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1160,'大通区',1121,'0,13,1121',0,'1160',1160,'','','117.117138,32.643536');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1161,'田家庵区',1121,'0,13,1121',0,'1161',1161,'','','117.014687,32.564364');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1162,'谢家集区',1121,'0,13,1121',0,'1162',1162,'','','116.908772,32.5444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1163,'八公山区',1121,'0,13,1121',0,'1163',1163,'','','116.825521,32.65239');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1164,'潘集区',1121,'0,13,1121',0,'1164',1164,'','','116.866193,32.800695');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1165,'凤台县',1121,'0,13,1121',0,'1165',1165,'','','116.584905,32.791416');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1166,'金家庄区',1122,'0,13,1122',0,'1166',1166,'','','118.525917,31.744706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1167,'花山区',1122,'0,13,1122',0,'1167',1167,'','','118.578348,31.711627');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1168,'雨山区',1122,'0,13,1122',0,'1168',1168,'','','118.554558,31.659719');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1169,'当涂县',1122,'0,13,1122',0,'1169',1169,'','','118.646673,31.503024');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1170,'杜集区',1123,'0,13,1123',0,'1170',1170,'','','116.954967,34.113251');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1171,'相山区',1123,'0,13,1123',0,'1171',1171,'','','116.728962,33.988335');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1172,'烈山区',1123,'0,13,1123',0,'1172',1172,'','','116.908182,33.844054');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1173,'濉溪县',1123,'0,13,1123',0,'1173',1173,'','','116.736899,33.693205');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1174,'铜官山区',1124,'0,13,1124',0,'1174',1174,'','','117.810737,30.929419');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1175,'狮子山区',1124,'0,13,1124',0,'1175',1175,'','','117.889749,30.944772');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1176,'郊区',1124,'0,13,1124',0,'1176',1176,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1177,'铜陵县',1124,'0,13,1124',0,'1177',1177,'','','117.918516,30.952359');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1178,'迎江区',1125,'0,13,1125',0,'1178',1178,'','','117.152542,30.541458');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1179,'大观区',1125,'0,13,1125',0,'1179',1179,'','','116.980968,30.532487');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1180,'郊区',1125,'0,13,1125',0,'1180',1180,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1181,'怀宁县',1125,'0,13,1125',0,'1181',1181,'','','116.803527,30.579025');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1182,'枞阳县',1125,'0,13,1125',0,'1182',1182,'','','117.385735,30.860298');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1183,'潜山县',1125,'0,13,1125',0,'1183',1183,'','','116.552816,30.758639');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1184,'太湖县',1125,'0,13,1125',0,'1184',1184,'','','116.182539,30.5011');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1185,'宿松县',1125,'0,13,1125',0,'1185',1185,'','','116.253518,30.108217');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1186,'望江县',1125,'0,13,1125',0,'1186',1186,'','','116.688092,30.242568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1187,'岳西县',1125,'0,13,1125',0,'1187',1187,'','','116.22007,0.901821');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1188,'桐城市',1125,'0,13,1125',0,'1188',1188,'','','116.953559,30.972568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1189,'屯溪区',1126,'0,13,1126',0,'1189',1189,'','','118.309637,29.716535');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1190,'黄山区',1126,'0,13,1126',0,'1190',1190,'','','118.077546,30.277746');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1191,'徽州区',1126,'0,13,1126',0,'1191',1191,'','','118.278591,29.90214');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1192,'歙县',1126,'0,13,1126',0,'1192',1192,'','','118.575156,29.871177');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1193,'休宁县',1126,'0,13,1126',0,'1193',1193,'','','118.093082,29.66912');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1194,'黟县',1126,'0,13,1126',0,'1194',1194,'','','117.91075,0.014778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1195,'祁门县',1126,'0,13,1126',0,'1195',1195,'','','117.600528,29.873706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1196,'琅琊区',1127,'0,13,1127',0,'1196',1196,'','','118.337569,32.338458');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1197,'南谯区',1127,'0,13,1127',0,'1197',1197,'','','118.270828,32.310209');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1198,'来安县',1127,'0,13,1127',0,'1198',1198,'','','118.53563,2.473712');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1199,'全椒县',1127,'0,13,1127',0,'1199',1199,'','','118.105778,32.069933');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1200,'定远县',1127,'0,13,1127',0,'1200',1200,'','','117.665965,32.473259');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1201,'凤阳县',1127,'0,13,1127',0,'1201',1201,'','','117.611472,32.792215');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1202,'天长市',1127,'0,13,1127',0,'1202',1202,'','','118.972913,32.721214');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1203,'明光市',1127,'0,13,1127',0,'1203',1203,'','','118.140727,32.811836');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1204,'颍州区',1128,'0,13,1128',0,'1204',1204,'','','115.727727,32.867689');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1205,'颍东区',1128,'0,13,1128',0,'1205',1205,'','','116.039985,32.941585');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1206,'颍泉区',1128,'0,13,1128',0,'1206',1206,'','','115.734026,33.07351');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1207,'临泉县',1128,'0,13,1128',0,'1207',1207,'','','115.248461,32.909769');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1208,'太和县',1128,'0,13,1128',0,'1208',1208,'','','115.648756,33.337748');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1209,'阜南县',1128,'0,13,1128',0,'1209',1209,'','','115.654099,32.655881');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1210,'颍上县',1128,'0,13,1128',0,'1210',1210,'','','116.265314,32.66246');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1211,'界首市',1128,'0,13,1128',0,'1211',1211,'','','115.398643,33.226193');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1212,'墉桥区',1129,'0,13,1129',0,'1212',1212,'','','123.655291,41.862618');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1213,'砀山县',1129,'0,13,1129',0,'1213',1213,'','','116.420282,34.454057');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1214,'萧县',1129,'0,13,1129',0,'1214',1214,'','','116.812422,34.20853');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1215,'灵璧县',1129,'0,13,1129',0,'1215',1215,'','','117.543127,33.690737');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1216,'泗县',1129,'0,13,1129',0,'1216',1216,'','','117.890359,33.544347');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1217,'居巢区',1130,'0,13,1130',0,'1217',1217,'','','117.728064,31.650689');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1218,'庐江县',1130,'0,13,1130',0,'1218',1218,'','','117.332167,31.273693');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1219,'无为县',1130,'0,13,1130',0,'1219',1219,'','','117.864823,31.256984');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1220,'含山县',1130,'0,13,1130',0,'1220',1220,'','','118.05207,1.662082');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1221,'和县',1130,'0,13,1130',0,'1221',1221,'','','118.293882,31.716472');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1222,'金安区',1131,'0,13,1131',0,'1222',1222,'','','116.661941,31.631258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1223,'裕安区',1131,'0,13,1131',0,'1223',1223,'','','116.302573,31.753039');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1224,'寿县',1131,'0,13,1131',0,'1224',1224,'','','116.768939,32.262396');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1225,'霍邱县',1131,'0,13,1131',0,'1225',1225,'','','116.173521,32.201507');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1226,'舒城县',1131,'0,13,1131',0,'1226',1226,'','','116.828559,31.310003');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1227,'金寨县',1131,'0,13,1131',0,'1227',1227,'','','115.779315,31.479093');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1228,'霍山县',1131,'0,13,1131',0,'1228',1228,'','','116.246675,31.287056');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1229,'涡阳县',1132,'0,13,1132',0,'1229',1229,'','','116.22355,3.557949');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1230,'蒙城县',1132,'0,13,1132',0,'1230',1230,'','','116.591512,33.223044');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1231,'利辛县',1132,'0,13,1132',0,'1231',1231,'','','116.166272,33.157376');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1232,'贵池区',1133,'0,13,1133',0,'1232',1232,'','','117.508478,30.514086');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1233,'东至县',1133,'0,13,1133',0,'1233',1233,'','','117.006827,30.03407');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1234,'石台县',1133,'0,13,1133',0,'1234',1234,'','','117.538282,30.199161');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1235,'青阳县',1133,'0,13,1133',0,'1235',1235,'','','117.908159,30.602013');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1236,'宣州区',1134,'0,13,1134',0,'1236',1236,'','','118.797803,30.943631');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1237,'郎溪县',1134,'0,13,1134',0,'1237',1237,'','','119.167904,31.100124');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1238,'广德县',1134,'0,13,1134',0,'1238',1238,'','','119.364713,30.89395');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1239,'泾县',1134,'0,13,1134',0,'1239',1239,'','','118.37604,0.599287');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1240,'绩溪县',1134,'0,13,1134',0,'1240',1240,'','','118.663777,30.162401');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1241,'旌德县',1134,'0,13,1134',0,'1241',1241,'','','118.482898,30.321833');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1242,'宁国市',1134,'0,13,1134',0,'1242',1242,'','','118.997025,30.502936');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1243,'福州市',14,'0,14',1,'1243,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264',1243,NULL,NULL,'119.330221,26.047125');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1244,'厦门市',14,'0,14',1,'1244,1265,1266,1267,1268,1269,1270,1271',1244,NULL,NULL,'118.103886,24.489231');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1245,'莆田市',14,'0,14',1,'1245,1272,1273,1274,1275,1276',1245,NULL,NULL,'119.077731,25.44845');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1246,'三明市',14,'0,14',1,'1246,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288',1246,NULL,NULL,'117.642194,26.270835');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1247,'泉州市',14,'0,14',1,'1247,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300',1247,NULL,NULL,'118.600362,24.901652');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1248,'漳州市',14,'0,14',1,'1248,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311',1248,NULL,NULL,'117.676205,24.517065');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1249,'南平市',14,'0,14',1,'1249,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321',1249,NULL,NULL,'118.181883,26.643626');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1250,'龙岩市',14,'0,14',1,'1250,1322,1323,1324,1325,1326,1327,1328',1250,NULL,NULL,'117.017997,25.078685');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1251,'宁德市',14,'0,14',1,'1251,1329,1330,1331,1332,1333,1334,1335,1336,1337',1251,NULL,NULL,'119.542082,26.656527');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1252,'鼓楼区',1243,'0,14,1243',0,'1252',1252,'','','118.765057,32.068604');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1253,'台江区',1243,'0,14,1243',0,'1253',1253,'','','119.324063,26.062154');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1254,'仓山区',1243,'0,14,1243',0,'1254',1254,'','','119.334936,26.019664');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1255,'马尾区',1243,'0,14,1243',0,'1255',1255,'','','119.510802,26.08265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1256,'晋安区',1243,'0,14,1243',0,'1256',1256,'','','119.314923,26.221752');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1257,'闽侯县',1243,'0,14,1243',0,'1257',1257,'','','119.122383,26.182432');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1258,'连江县',1243,'0,14,1243',0,'1258',1258,'','','119.568339,26.301591');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1259,'罗源县',1243,'0,14,1243',0,'1259',1259,'','','119.465234,26.506326');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1260,'闽清县',1243,'0,14,1243',0,'1260',1260,'','','118.778803,26.212273');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1261,'永泰县',1243,'0,14,1243',0,'1261',1261,'','','118.794741,25.857384');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1262,'平潭县',1243,'0,14,1243',0,'1262',1262,'','','119.766453,25.537738');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1263,'福清市',1243,'0,14,1243',0,'1263',1263,'','','119.377547,25.638121');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1264,'长乐市',1243,'0,14,1243',0,'1264',1264,'','','119.56272,5.915538');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1265,'鼓浪屿区',1244,'0,14,1244',0,'1265',1265,'','','118.074476,24.452902');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1266,'思明区',1244,'0,14,1244',0,'1266',1266,'','','118.134535,24.468728');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1267,'开元区',1244,'0,14,1244',0,'1267',1267,'','','118.123791,24.477198');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1268,'杏林区',1244,'0,14,1244',0,'1268',1268,'','','118.046443,24.57305');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1269,'湖里区',1244,'0,14,1244',0,'1269',1269,'','','118.144676,24.521974');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1270,'集美区',1244,'0,14,1244',0,'1270',1270,'','','118.029412,24.640973');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1271,'同安区',1244,'0,14,1244',0,'1271',1271,'','','118.114685,24.781705');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1272,'城厢区',1245,'0,14,1245',0,'1272',1272,'','','118.954443,25.433375');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1273,'涵江区',1245,'0,14,1245',0,'1273',1273,'','','119.079039,25.604742');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1274,'荔城区',1245,'0,14,1245',0,'1274',1274,'','','119.074103,25.427592');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1275,'秀屿区',1245,'0,14,1245',0,'1275',1275,'','','119.131466,25.276365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1276,'仙游县',1245,'0,14,1245',0,'1276',1276,'','','118.704626,25.468258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1277,'梅列区',1246,'0,14,1246',0,'1277',1277,'','','117.630501,26.307449');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1278,'三元区',1246,'0,14,1246',0,'1278',1278,'','','117.516896,26.173967');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1279,'明溪县',1246,'0,14,1246',0,'1279',1279,'','','117.218599,26.418484');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1280,'清流县',1246,'0,14,1246',0,'1280',1280,'','','116.921193,26.099298');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1281,'宁化县',1246,'0,14,1246',0,'1281',1281,'','','116.678118,26.310073');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1282,'大田县',1246,'0,14,1246',0,'1282',1282,'','','117.817997,25.797449');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1283,'尤溪县',1246,'0,14,1246',0,'1283',1283,'','','118.253868,26.150594');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1284,'沙县',1246,'0,14,1246',0,'1284',1284,'','','117.818846,26.446506');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1285,'将乐县',1246,'0,14,1246',0,'1285',1285,'','','117.40084,6.732329');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1286,'泰宁县',1246,'0,14,1246',0,'1286',1286,'','','117.12566,6.865477');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1287,'建宁县',1246,'0,14,1246',0,'1287',1287,'','','116.793071,26.817741');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1288,'永安市',1246,'0,14,1246',0,'1288',1288,'','','117.328535,25.919433');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1289,'鲤城区',1247,'0,14,1247',0,'1289',1289,'','','118.568455,24.905745');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1290,'丰泽区',1247,'0,14,1247',0,'1290',1290,'','','118.607432,24.936275');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1291,'洛江区',1247,'0,14,1247',0,'1291',1291,'','','118.643453,25.133414');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1292,'泉港区',1247,'0,14,1247',0,'1292',1292,'','','118.819017,25.173479');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1293,'惠安县',1247,'0,14,1247',0,'1293',1293,'','','118.809473,24.991871');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1294,'安溪县',1247,'0,14,1247',0,'1294',1294,'','','117.911632,25.125684');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1295,'永春县',1247,'0,14,1247',0,'1295',1295,'','','118.140971,25.395599');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1296,'德化县',1247,'0,14,1247',0,'1296',1296,'','','118.258039,25.674049');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1297,'金门县',1247,'0,14,1247',0,'1297',1297,'','','118.379772,24.453685');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1298,'石狮市',1247,'0,14,1247',0,'1298',1298,'','','118.692481,24.744894');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1299,'晋江市',1247,'0,14,1247',0,'1299',1299,'','','118.558651,24.729638');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1300,'南安市',1247,'0,14,1247',0,'1300',1300,'','','118.388981,25.017973');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1301,'芗城区',1248,'0,14,1248',0,'1301',1301,'','','117.633366,24.575089');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1302,'龙文区',1248,'0,14,1248',0,'1302',1302,'','','117.704037,24.537177');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1303,'云霄县',1248,'0,14,1248',0,'1303',1303,'','','117.338111,23.984925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1304,'漳浦县',1248,'0,14,1248',0,'1304',1304,'','','117.691456,24.13461');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1305,'诏安县',1248,'0,14,1248',0,'1305',1305,'','','117.132942,23.874041');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1306,'长泰县',1248,'0,14,1248',0,'1306',1306,'','','117.812987,24.744594');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1307,'东山县',1248,'0,14,1248',0,'1307',1307,'','','117.425416,23.69111');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1308,'南靖县',1248,'0,14,1248',0,'1308',1308,'','','117.293055,24.668806');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1309,'平和县',1248,'0,14,1248',0,'1309',1309,'','','117.200721,24.324491');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1310,'华安县',1248,'0,14,1248',0,'1310',1310,'','','117.543805,24.918688');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1311,'龙海市',1248,'0,14,1248',0,'1311',1311,'','','117.80759,4.398817');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1312,'延平区',1249,'0,14,1249',0,'1312',1312,'','','118.254737,26.590155');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1313,'顺昌县',1249,'0,14,1249',0,'1313',1313,'','','117.873681,26.908712');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1314,'浦城县',1249,'0,14,1249',0,'1314',1314,'','','118.524298,27.945164');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1315,'光泽县',1249,'0,14,1249',0,'1315',1315,'','','117.355536,27.655598');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1316,'松溪县',1249,'0,14,1249',0,'1316',1316,'','','118.765689,27.610704');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1317,'政和县',1249,'0,14,1249',0,'1317',1317,'','','118.971671,27.324782');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1318,'邵武市',1249,'0,14,1249',0,'1318',1318,'','','117.480572,27.235197');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1319,'武夷山市',1249,'0,14,1249',0,'1319',1319,'','','118.011543,27.748135');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1320,'建瓯市',1249,'0,14,1249',0,'1320',1320,'','','118.485147,27.044914');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1321,'建阳市',1249,'0,14,1249',0,'1321',1321,'','','118.067793,27.408381');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1322,'新罗区',1250,'0,14,1250',0,'1322',1322,'','','117.086322,25.222206');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1323,'长汀县',1250,'0,14,1250',0,'1323',1323,'','','116.371884,25.696958');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1324,'永定县',1250,'0,14,1250',0,'1324',1324,'','','116.825552,24.761827');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1325,'上杭县',1250,'0,14,1250',0,'1325',1325,'','','116.568669,25.126526');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1326,'武平县',1250,'0,14,1250',0,'1326',1326,'','','116.135917,25.139021');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1327,'连城县',1250,'0,14,1250',0,'1327',1327,'','','116.821448,25.604177');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1328,'漳平市',1250,'0,14,1250',0,'1328',1328,'','','117.451722,25.379998');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1329,'蕉城区',1251,'0,14,1251',0,'1329',1329,'','','119.454559,26.763865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1330,'霞浦县',1251,'0,14,1251',0,'1330',1330,'','','119.990551,26.868877');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1331,'古田县',1251,'0,14,1251',0,'1331',1331,'','','118.87954,6.618899');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1332,'屏南县',1251,'0,14,1251',0,'1332',1332,'','','118.989291,26.921562');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1333,'寿宁县',1251,'0,14,1251',0,'1333',1333,'','','119.50552,7.42623');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1334,'周宁县',1251,'0,14,1251',0,'1334',1334,'','','119.313326,27.094313');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1335,'柘荣县',1251,'0,14,1251',0,'1335',1335,'','','119.887522,27.207068');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1336,'福安市',1251,'0,14,1251',0,'1336',1336,'','','119.656277,27.055897');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1337,'福鼎市',1251,'0,14,1251',0,'1337',1337,'','','120.198307,27.224829');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1338,'南昌市',15,'0,15',1,'1338,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362',1338,NULL,NULL,'115.893528,28.689578');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1339,'景德镇市',15,'0,15',1,'1339,1363,1364,1365,1366',1339,NULL,NULL,'117.186523,29.303563');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1340,'萍乡市',15,'0,15',1,'1340,1367,1368,1369,1370,1371',1340,NULL,NULL,'113.859917,27.639544');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1341,'九江市',15,'0,15',1,'1341,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384',1341,NULL,NULL,'115.999848,29.71964');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1342,'新余市',15,'0,15',1,'1342,1385,1386',1342,NULL,NULL,'114.947117,27.822322');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1343,'鹰潭市',15,'0,15',1,'1343,1387,1388,1389',1343,NULL,NULL,'117.03545,28.24131');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1344,'赣州市',15,'0,15',1,'1344,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408',1344,NULL,NULL,'114.935909,25.845296');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1345,'吉安市',15,'0,15',1,'1345,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421',1345,NULL,NULL,'114.992039,27.113848');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1346,'宜春市',15,'0,15',1,'1346,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431',1346,NULL,NULL,'114.400039,27.81113');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1347,'抚州市',15,'0,15',1,'1347,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443',1347,NULL,NULL,'116.360919,27.954545');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1348,'上饶市',15,'0,15',1,'1348,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456',1348,NULL,NULL,'117.955464,28.457623');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1349,'铁路',15,'0,15',1,'1349,1457',1349,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1350,'东湖区',1338,'0,15,1338',0,'1350',1350,'','','115.910148,28.692375');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1351,'西湖区',1338,'0,15,1338',0,'1351',1351,'','','115.898948,28.657326');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1352,'青云谱区',1338,'0,15,1338',0,'1352',1352,'','','115.921954,28.636601');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1353,'湾里区',1338,'0,15,1338',0,'1353',1353,'','','115.75048,8.800557');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1354,'青山湖区',1338,'0,15,1338',0,'1354',1354,'','','115.930906,28.700849');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1355,'南昌县',1338,'0,15,1338',0,'1355',1355,'','','116.071261,28.620772');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1356,'新建县',1338,'0,15,1338',0,'1356',1356,'','','115.952954,28.812629');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1357,'安义县',1338,'0,15,1338',0,'1357',1357,'','','115.595202,28.836412');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1358,'进贤县',1338,'0,15,1338',0,'1358',1358,'','','116.317458,28.441758');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1359,'经济开发区',1338,'0,15,1338',0,'1359',1359,'','','118.192256,26.655443');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1360,'红谷滩',1338,'0,15,1338',0,'1360',1360,'','','115.845112,28.678513');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1361,'高新技术开发区',1338,'0,15,1338',0,'1361',1361,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1362,'洪都',1338,'0,15,1338',0,'1362',1362,'','','115.929176,28.643678');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1363,'昌江区',1339,'0,15,1339',0,'1363',1363,'','','117.1862,0.272155');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1364,'珠山区',1339,'0,15,1339',0,'1364',1364,'','','117.234119,29.303231');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1365,'浮梁县',1339,'0,15,1339',0,'1365',1365,'','','117.308979,29.556556');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1366,'乐平市',1339,'0,15,1339',0,'1366',1366,'','','117.273279,28.969928');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1367,'安源区',1340,'0,15,1340',0,'1367',1367,'','','113.878869,27.645395');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1368,'湘东区',1340,'0,15,1340',0,'1368',1368,'','','113.739818,27.53371');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1369,'莲花县',1340,'0,15,1340',0,'1369',1369,'','','113.959777,27.223445');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1370,'上栗县',1340,'0,15,1340',0,'1370',1370,'','','113.867806,27.83226');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1371,'芦溪县',1340,'0,15,1340',0,'1371',1371,'','','114.070007,27.578023');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1372,'庐山区',1341,'0,15,1341',0,'1372',1372,'','','116.009736,29.666586');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1373,'浔阳区',1341,'0,15,1341',0,'1373',1373,'','','116.002768,29.717849');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1374,'九江县',1341,'0,15,1341',0,'1374',1374,'','','115.842035,29.64023');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1375,'武宁县',1341,'0,15,1341',0,'1375',1375,'','','115.023159,29.263844');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1376,'修水县',1341,'0,15,1341',0,'1376',1376,'','','114.446192,29.000021');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1377,'永修县',1341,'0,15,1341',0,'1377',1377,'','','115.742475,29.141311');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1378,'德安县',1341,'0,15,1341',0,'1378',1378,'','','115.634084,29.401728');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1379,'星子县',1341,'0,15,1341',0,'1379',1379,'','','115.964883,29.360271');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1380,'都昌县',1341,'0,15,1341',0,'1380',1380,'','','116.342048,29.356215');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1381,'湖口县',1341,'0,15,1341',0,'1381',1381,'','','116.292561,29.668061');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1382,'彭泽县',1341,'0,15,1341',0,'1382',1382,'','','116.629332,29.834597');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1383,'共青城',1341,'0,15,1341',0,'1383',1383,'','','84.843714,4.723426');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1384,'瑞昌市',1341,'0,15,1341',0,'1384',1384,'','','115.459686,29.628545');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1385,'渝水区',1342,'0,15,1342',0,'1385',1385,'','','115.007851,27.850578');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1386,'分宜县',1342,'0,15,1342',0,'1386',1386,'','','114.678163,27.844993');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1387,'月湖区',1343,'0,15,1343',0,'1387',1387,'','','117.057706,28.247205');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1388,'余江县',1343,'0,15,1343',0,'1388',1388,'','','116.921574,28.32107');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1389,'贵溪市',1343,'0,15,1343',0,'1389',1389,'','','117.19787,8.190604');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1390,'章贡区',1344,'0,15,1344',0,'1390',1390,'','','114.937365,25.838711');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1391,'黄金区',1344,'0,15,1344',0,'1391',1391,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1392,'赣县',1344,'0,15,1344',0,'1392',1392,'','','115.072586,25.902025');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1393,'信丰县',1344,'0,15,1344',0,'1393',1393,'','','114.9818,0.286018');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1394,'大余县',1344,'0,15,1344',0,'1394',1394,'','','114.36649,5.448472');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1395,'上犹县',1344,'0,15,1344',0,'1395',1395,'','','114.402605,25.939253');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1396,'崇义县',1344,'0,15,1344',0,'1396',1396,'','','114.199337,25.679632');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1397,'安远县',1344,'0,15,1344',0,'1397',1397,'','','115.396613,25.238854');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1398,'龙南县',1344,'0,15,1344',0,'1398',1398,'','','114.731825,24.772706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1399,'定南县',1344,'0,15,1344',0,'1399',1399,'','','115.09388,4.82416');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1400,'全南县',1344,'0,15,1344',0,'1400',1400,'','','114.522343,24.853233');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1401,'宁都县',1344,'0,15,1344',0,'1401',1401,'','','116.012116,26.590232');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1402,'于都县',1344,'0,15,1344',0,'1402',1402,'','','115.508893,25.936772');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1403,'兴国县',1344,'0,15,1344',0,'1403',1403,'','','115.446507,26.425201');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1404,'会昌县',1344,'0,15,1344',0,'1404',1404,'','','115.765151,25.505757');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1405,'寻乌县',1344,'0,15,1344',0,'1405',1405,'','','115.665148,24.905101');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1406,'石城县',1344,'0,15,1344',0,'1406',1406,'','','116.372322,26.305565');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1407,'瑞金市',1344,'0,15,1344',0,'1407',1407,'','','115.985867,25.921831');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1408,'南康市',1344,'0,15,1344',0,'1408',1408,'','','114.712561,25.832944');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1409,'吉州区',1345,'0,15,1345',0,'1409',1409,'','','114.960437,27.160925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1410,'青原区',1345,'0,15,1345',0,'1410',1410,'','','115.266167,26.859217');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1411,'吉安县',1345,'0,15,1345',0,'1411',1411,'','','114.751278,27.144039');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1412,'吉水县',1345,'0,15,1345',0,'1412',1412,'','','115.254638,27.197465');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1413,'峡江县',1345,'0,15,1345',0,'1413',1413,'','','115.214437,27.589281');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1414,'新干县',1345,'0,15,1345',0,'1414',1414,'','','115.506839,27.73858');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1415,'永丰县',1345,'0,15,1345',0,'1415',1415,'','','115.592831,27.097545');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1416,'泰和县',1345,'0,15,1345',0,'1416',1416,'','','114.909356,26.744021');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1417,'遂川县',1345,'0,15,1345',0,'1417',1417,'','','114.370589,26.344269');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1418,'万安县',1345,'0,15,1345',0,'1418',1418,'','','114.825016,26.444633');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1419,'安福县',1345,'0,15,1345',0,'1419',1419,'','','114.455591,27.361338');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1420,'永新县',1345,'0,15,1345',0,'1420',1420,'','','114.188447,26.973089');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1421,'井冈山市',1345,'0,15,1345',0,'1421',1421,'','','114.125439,26.63315');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1422,'袁州区',1346,'0,15,1346',0,'1422',1422,'','','114.290358,27.839383');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1423,'奉新县',1346,'0,15,1346',0,'1423',1423,'','','115.180078,28.714689');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1424,'万载县',1346,'0,15,1346',0,'1424',1424,'','','114.336143,28.209464');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1425,'上高县',1346,'0,15,1346',0,'1425',1425,'','','114.860958,28.199053');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1426,'宜丰县',1346,'0,15,1346',0,'1426',1426,'','','114.774366,28.454955');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1427,'靖安县',1346,'0,15,1346',0,'1427',1427,'','','115.237709,28.946084');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1428,'铜鼓县',1346,'0,15,1346',0,'1428',1428,'','','114.370134,28.615516');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1429,'丰城市',1346,'0,15,1346',0,'1429',1429,'','','115.823404,28.111516');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1430,'樟树市',1346,'0,15,1346',0,'1430',1430,'','','115.421346,28.002514');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1431,'高安市',1346,'0,15,1346',0,'1431',1431,'','','115.304482,28.365232');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1432,'临川区',1347,'0,15,1347',0,'1432',1432,'','','116.362974,27.924732');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1433,'南城县',1347,'0,15,1347',0,'1433',1433,'','','116.681732,27.518966');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1434,'黎川县',1347,'0,15,1347',0,'1434',1434,'','','116.931717,27.261522');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1435,'南丰县',1347,'0,15,1347',0,'1435',1435,'','','116.500362,27.114896');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1436,'崇仁县',1347,'0,15,1347',0,'1436',1436,'','','116.066336,27.714537');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1437,'乐安县',1347,'0,15,1347',0,'1437',1437,'','','115.843324,27.372429');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1438,'宜黄县',1347,'0,15,1347',0,'1438',1438,'','','116.251242,27.393067');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1439,'金溪县',1347,'0,15,1347',0,'1439',1439,'','','116.757712,27.931492');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1440,'资溪县',1347,'0,15,1347',0,'1440',1440,'','','117.035767,27.745229');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1441,'东乡县',1347,'0,15,1347',0,'1441',1441,'','','116.619623,28.221298');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1442,'广昌县',1347,'0,15,1347',0,'1442',1442,'','','116.363117,26.761885');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1443,'文昌区',1347,'0,15,1347',0,'1443',1443,'','','110.780909,19.750947');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1444,'信州区',1348,'0,15,1348',0,'1444',1444,'','','118.050578,28.497223');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1445,'上饶县',1348,'0,15,1348',0,'1445',1445,'','','117.944367,28.40568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1446,'广丰县',1348,'0,15,1348',0,'1446',1446,'','','118.277125,28.364109');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1447,'玉山县',1348,'0,15,1348',0,'1447',1447,'','','118.168917,28.75934');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1448,'铅山县',1348,'0,15,1348',0,'1448',1448,'','','117.713461,28.109822');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1449,'横峰县',1348,'0,15,1348',0,'1449',1449,'','','117.645197,28.513847');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1450,'弋阳县',1348,'0,15,1348',0,'1450',1450,'','','117.41665,8.452236');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1451,'余干县',1348,'0,15,1348',0,'1451',1451,'','','116.621327,28.682776');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1452,'波阳县',1348,'0,15,1348',0,'1452',1452,'','','116.679977,28.995258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1453,'万年县',1348,'0,15,1348',0,'1453',1453,'','','117.014413,28.703236');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1454,'婺源县',1348,'0,15,1348',0,'1454',1454,'','','117.787485,29.327232');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1455,'鄱阳县',1348,'0,15,1348',0,'1455',1455,'','','116.787693,29.243056');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1456,'德兴市',1348,'0,15,1348',0,'1456',1456,'','','117.753259,28.940752');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1457,'铁道',1349,'0,15,1349',0,'1457',1457,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1458,'济南市',16,'0,16',1,'1458,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484',1458,NULL,NULL,'117.024967,36.682785');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1459,'青岛市',16,'0,16',1,'1459,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496',1459,NULL,NULL,'120.384428,36.105215');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1460,'淄博市',16,'0,16',1,'1460,1497,1498,1499,1500,1501,1502,1503,1504',1460,NULL,NULL,'118.059134,36.804685');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1461,'枣庄市',16,'0,16',1,'1461,1505,1506,1507,1508,1509,1510',1461,NULL,NULL,'117.279305,34.807883');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1462,'东营市',16,'0,16',1,'1462,1511,1512,1513,1514,1515',1462,NULL,NULL,'118.583926,37.487121');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1463,'烟台市',16,'0,16',1,'1463,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528',1463,NULL,NULL,'121.309555,37.536562');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1464,'潍坊市',16,'0,16',1,'1464,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540',1464,NULL,NULL,'119.142634,36.716115');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1465,'济宁市',16,'0,16',1,'1465,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552',1465,NULL,NULL,'116.600798,35.402122');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1466,'泰安市',16,'0,16',1,'1466,1553,1554,1555,1556,1557,1558',1466,NULL,NULL,'117.089415,36.188078');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1467,'威海市',16,'0,16',1,'1467,1559,1560,1561,1562',1467,NULL,NULL,'122.093958,37.528787');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1468,'日照市',16,'0,16',1,'1468,1563,1564,1565',1468,NULL,NULL,'119.50718,35.420225');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1469,'莱芜市',16,'0,16',1,'1469,1566,1567',1469,NULL,NULL,'117.684667,36.233654');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1470,'临沂市',16,'0,16',1,'1470,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579',1470,NULL,NULL,'118.340768,35.072409');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1471,'德州市',16,'0,16',1,'1471,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590',1471,NULL,NULL,'116.328161,37.460826');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1472,'聊城市',16,'0,16',1,'1472,1591,1592,1593,1594,1595,1596,1597,1598',1472,NULL,NULL,'115.986869,36.455829');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1473,'滨州市',16,'0,16',1,'1473,1599,1600,1601,1602,1603,1604,1605',1473,NULL,NULL,'117.968292,37.405314');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1474,'荷泽市',16,'0,16',1,'1474,1606,1607,1608,1609,1610,1611,1612,1613,1614',1474,'','','119.293879,26.071112');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1475,'历下区',1458,'0,16,1458',0,'1475',1475,NULL,NULL,'117.081309,36.671439');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1476,'市中区',1458,'0,16,1458',0,'1476',1476,NULL,NULL,'117.002545,36.656617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1477,'槐荫区',1458,'0,16,1458',0,'1477',1477,'','','116.891199,36.682531');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1478,'天桥区',1458,'0,16,1458',0,'1478',1478,'','','116.983157,36.778078');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1479,'历城区',1458,'0,16,1458',0,'1479',1479,'','','117.190818,36.612688');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1480,'长清区',1458,'0,16,1458',0,'1480',1480,NULL,NULL,'116.759284,36.559828');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1481,'平阴县',1458,'0,16,1458',0,'1481',1481,NULL,NULL,'116.463321,36.295093');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1482,'济阳县',1458,'0,16,1458',0,'1482',1482,NULL,NULL,'117.179917,36.985199');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1483,'商河县',1458,'0,16,1458',0,'1483',1483,NULL,NULL,'117.161858,37.314123');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1484,'章丘市',1458,'0,16,1458',0,'1484',1484,NULL,NULL,'117.530225,36.685982');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1485,'市南区',1459,'0,16,1459',0,'1485',1485,'','','120.376184,36.072517');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1486,'市北区',1459,'0,16,1459',0,'1486',1486,'','','120.378495,36.100058');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1487,'四方区',1459,'0,16,1459',0,'1487',1487,'','','120.376979,36.131582');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1488,'黄岛区',1459,'0,16,1459',0,'1488',1488,'','','120.169541,36.005019');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1489,'崂山区',1459,'0,16,1459',0,'1489',1489,'','','120.584906,36.195587');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1490,'李沧区',1459,'0,16,1459',0,'1490',1490,'','','120.431146,36.192897');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1491,'城阳区',1459,'0,16,1459',0,'1491',1491,'','','120.346326,36.284247');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1492,'胶州市',1459,'0,16,1459',0,'1492',1492,'','','119.959421,36.248031');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1493,'即墨市',1459,'0,16,1459',0,'1493',1493,'','','120.521106,36.487909');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1494,'平度市',1459,'0,16,1459',0,'1494',1494,'','','119.951062,36.78855');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1495,'胶南市',1459,'0,16,1459',0,'1495',1495,'','','119.85631,5.852858');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1496,'莱西市',1459,'0,16,1459',0,'1496',1496,'','','120.442831,36.863637');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1497,'淄川区',1460,'0,16,1460',0,'1497',1497,'','','118.020181,36.585463');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1498,'张店区',1460,'0,16,1460',0,'1498',1498,'','','118.077151,36.816097');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1499,'博山区',1460,'0,16,1460',0,'1499',1499,'','','117.965553,36.425427');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1500,'临淄区',1460,'0,16,1460',0,'1500',1500,'','','118.300697,36.854244');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1501,'周村区',1460,'0,16,1460',0,'1501',1501,'','','117.875108,36.771219');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1502,'桓台县',1460,'0,16,1460',0,'1502',1502,'','','118.034367,36.99629');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1503,'高青县',1460,'0,16,1460',0,'1503',1503,'','','117.828242,37.171378');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1504,'沂源县',1460,'0,16,1460',0,'1504',1504,'','','118.203972,36.135642');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1505,'市中区',1461,'0,16,1461',0,'1505',1505,NULL,NULL,'117.002545,36.656617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1506,'薛城区',1461,'0,16,1461',0,'1506',1506,'','','117.358507,34.79633');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1507,'峄城区',1461,'0,16,1461',0,'1507',1507,'','','117.603556,34.716097');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1508,'台儿庄区',1461,'0,16,1461',0,'1508',1508,'','','117.638243,34.587964');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1509,'山亭区',1461,'0,16,1461',0,'1509',1509,'','','117.484036,35.09315');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1510,'滕州市',1461,'0,16,1461',0,'1510',1510,'','','117.147616,35.065791');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1511,'东营区',1462,'0,16,1462',0,'1511',1511,'','','118.612643,37.408666');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1512,'河口区',1462,'0,16,1462',0,'1512',1512,'','','118.620012,37.9695');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1513,'垦利县',1462,'0,16,1462',0,'1513',1513,'','','118.814423,37.670007');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1514,'利津县',1462,'0,16,1462',0,'1514',1514,'','','118.400337,37.655326');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1515,'广饶县',1462,'0,16,1462',0,'1515',1515,'','','118.538569,37.162071');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1516,'芝罘区',1463,'0,16,1463',0,'1516',1516,'','','121.364156,37.520933');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1517,'福山区',1463,'0,16,1463',0,'1517',1517,'','','121.203461,37.481074');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1518,'牟平区',1463,'0,16,1463',0,'1518',1518,'','','121.56924,7.272446');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1519,'莱山区',1463,'0,16,1463',0,'1519',1519,'','','121.451535,37.407476');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1520,'开发区',1463,'0,16,1463',0,'1520',1520,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1521,'长岛县',1463,'0,16,1463',0,'1521',1521,'','','120.755996,38.077456');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1522,'龙口市',1463,'0,16,1463',0,'1522',1522,'','','120.5228,0.610401');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1523,'莱阳市',1463,'0,16,1463',0,'1523',1523,'','','120.751343,36.905533');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1524,'莱州市',1463,'0,16,1463',0,'1524',1524,'','','120.001344,37.190401');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1525,'蓬莱市',1463,'0,16,1463',0,'1525',1525,'','','120.862694,37.66116');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1526,'招远市',1463,'0,16,1463',0,'1526',1526,'','','120.400517,37.344146');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1527,'栖霞市',1463,'0,16,1463',0,'1527',1527,'','','120.901556,37.311748');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1528,'海阳市',1463,'0,16,1463',0,'1528',1528,'','','121.113614,36.861588');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1529,'潍城区',1464,'0,16,1464',0,'1529',1529,'','','119.034305,36.701982');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1530,'寒亭区',1464,'0,16,1464',0,'1530',1530,'','','119.179135,36.908366');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1531,'坊子区',1464,'0,16,1464',0,'1531',1531,'','','119.258465,36.625674');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1532,'奎文区',1464,'0,16,1464',0,'1532',1532,'','','119.196972,36.691227');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1533,'临朐县',1464,'0,16,1464',0,'1533',1533,'','','118.558256,36.365389');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1534,'昌乐县',1464,'0,16,1464',0,'1534',1534,'','','118.913914,36.535532');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1535,'青州市',1464,'0,16,1464',0,'1535',1535,'','','118.470187,36.680584');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1536,'诸城市',1464,'0,16,1464',0,'1536',1536,'','','119.41617,6.016658');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1537,'寿光市',1464,'0,16,1464',0,'1537',1537,'','','118.852534,37.029892');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1538,'安丘市',1464,'0,16,1464',0,'1538',1538,'','','119.155992,36.335046');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1539,'高密市',1464,'0,16,1464',0,'1539',1539,'','','119.702512,36.387318');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1540,'昌邑市',1464,'0,16,1464',0,'1540',1540,'','','119.449917,36.834234');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1541,'市中区',1465,'0,16,1465',0,'1541',1541,NULL,NULL,'117.002545,36.656617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1542,'任城区',1465,'0,16,1465',0,'1542',1542,'','','116.572199,35.380135');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1543,'微山县',1465,'0,16,1465',0,'1543',1543,'','','116.992409,34.892715');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1544,'鱼台县',1465,'0,16,1465',0,'1544',1544,'','','116.578437,35.019858');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1545,'金乡县',1465,'0,16,1465',0,'1545',1545,NULL,NULL,'116.317425,35.072637');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1546,'嘉祥县',1465,'0,16,1465',0,'1546',1546,'','','116.307291,35.434199');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1547,'汶上县',1465,'0,16,1465',0,'1547',1547,'','','116.506444,35.715701');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1548,'泗水县',1465,'0,16,1465',0,'1548',1548,'','','117.345264,35.640741');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1549,'梁山县',1465,'0,16,1465',0,'1549',1549,NULL,NULL,'116.100372,35.808748');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1550,'曲阜市',1465,'0,16,1465',0,'1550',1550,NULL,NULL,'116.991258,35.58747');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1551,'兖州市',1465,'0,16,1465',0,'1551',1551,'','','116.754139,35.574016');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1552,'邹城市',1465,'0,16,1465',0,'1552',1552,NULL,NULL,'117.010819,35.411134');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1553,'泰山区',1466,'0,16,1466',0,'1553',1553,'','','117.183902,36.215457');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1554,'岱岳区',1466,'0,16,1466',0,'1554',1554,'','','117.190487,36.148101');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1555,'宁阳县',1466,'0,16,1466',0,'1555',1555,'','','116.932939,35.8336');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1556,'东平县',1466,'0,16,1466',0,'1556',1556,'','','116.342953,35.975161');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1557,'新泰市',1466,'0,16,1466',0,'1557',1557,'','','117.613016,35.89581');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1558,'肥城市',1466,'0,16,1466',0,'1558',1558,'','','116.744762,36.112514');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1559,'环翠区',1467,'0,16,1467',0,'1559',1559,'','','122.152075,37.399344');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1560,'文登市',1467,'0,16,1467',0,'1560',1560,'','','122.010782,37.15412');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1561,'荣成市',1467,'0,16,1467',0,'1561',1561,'','','122.406926,37.128686');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1562,'乳山市',1467,'0,16,1467',0,'1562',1562,'','','121.529788,36.976575');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1563,'东港区',1468,'0,16,1468',0,'1563',1563,'','','119.377852,35.469377');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1564,'五莲县',1468,'0,16,1468',0,'1564',1564,'','','119.249433,35.744383');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1565,'莒县',1468,'0,16,1468',0,'1565',1565,'','','118.893585,35.655875');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1566,'莱城区',1469,'0,16,1469',0,'1566',1566,'','','117.645913,36.313395');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1567,'钢城区',1469,'0,16,1469',0,'1567',1567,'','','117.827537,36.092836');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1568,'兰山区',1470,'0,16,1470',0,'1568',1568,'','','118.312243,35.174845');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1569,'罗庄区',1470,'0,16,1470',0,'1569',1569,'','','118.297279,34.964343');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1570,'河东区',1470,'0,16,1470',0,'1570',1570,'','','117.261693,39.126626');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1571,'沂南县',1470,'0,16,1470',0,'1571',1571,NULL,NULL,'118.470478,35.555284');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1572,'郯城县',1470,'0,16,1470',0,'1572',1572,'','','118.324431,34.649855');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1573,'沂水县',1470,'0,16,1470',0,'1573',1573,'','','118.609358,35.914369');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1574,'苍山县',1470,'0,16,1470',0,'1574',1574,'','','117.998342,34.865344');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1575,'费县',1470,'0,16,1470',0,'1575',1575,NULL,NULL,'117.981814,35.273244');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1576,'平邑县',1470,'0,16,1470',0,'1576',1576,NULL,NULL,'117.646516,35.51103');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1577,'莒南县',1470,'0,16,1470',0,'1577',1577,'','','118.890079,35.213123');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1578,'蒙阴县',1470,'0,16,1470',0,'1578',1578,NULL,NULL,'117.952229,35.716383');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1579,'临沭县',1470,'0,16,1470',0,'1579',1579,'','','118.659445,34.885484');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1580,'德城区',1471,'0,16,1471',0,'1580',1580,'','','116.332912,37.457437');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1581,'陵县',1471,'0,16,1471',0,'1581',1581,'','','116.66506,7.417105');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1582,'宁津县',1471,'0,16,1471',0,'1582',1582,NULL,NULL,'116.806794,37.657859');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1583,'庆云县',1471,'0,16,1471',0,'1583',1583,'','','117.462737,37.801824');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1584,'临邑县',1471,'0,16,1471',0,'1584',1584,'','','116.899595,37.235893');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1585,'齐河县',1471,'0,16,1471',0,'1585',1585,'','','116.678254,36.723454');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1586,'平原县',1471,'0,16,1471',0,'1586',1586,'','','116.430079,37.156618');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1587,'夏津县',1471,'0,16,1471',0,'1587',1587,'','','116.037322,37.016689');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1588,'武城县',1471,'0,16,1471',0,'1588',1588,NULL,NULL,'116.076565,37.219962');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1589,'乐陵市',1471,'0,16,1471',0,'1589',1589,'','','117.145553,37.674417');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1590,'禹城市',1471,'0,16,1471',0,'1590',1590,NULL,NULL,'116.644284,36.940491');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1591,'东昌府区',1472,'0,16,1472',0,'1591',1591,'','','115.907706,36.45583');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1592,'阳谷县',1472,'0,16,1472',0,'1592',1592,NULL,NULL,'115.795889,36.121356');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1593,'莘县',1472,'0,16,1472',0,'1593',1593,'','','115.552673,36.139122');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1594,'茌平县',1472,'0,16,1472',0,'1594',1594,NULL,NULL,'116.262962,36.587361');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1595,'东阿县',1472,'0,16,1472',0,'1595',1595,NULL,NULL,'116.253877,36.339782');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1596,'冠县',1472,'0,16,1472',0,'1596',1596,NULL,NULL,'115.45,36.48983');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1597,'高唐县',1472,'0,16,1472',0,'1597',1597,NULL,NULL,'116.236733,36.872221');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1598,'临清市',1472,'0,16,1472',0,'1598',1598,'','','115.782602,36.782069');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1599,'滨城区',1473,'0,16,1473',0,'1599',1599,'','','117.981211,37.424891');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1600,'惠民县',1473,'0,16,1473',0,'1600',1600,'','','117.578984,37.375971');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1601,'阳信县',1473,'0,16,1473',0,'1601',1601,'','','117.57343,7.6055 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1602,'无棣县',1473,'0,16,1473',0,'1602',1602,'','','117.797782,37.942568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1603,'沾化县',1473,'0,16,1473',0,'1603',1603,'','','118.090098,37.787251');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1604,'博兴县',1473,'0,16,1473',0,'1604',1604,'','','118.225715,37.191354');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1605,'邹平县',1473,'0,16,1473',0,'1605',1605,'','','117.670806,36.956593');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1606,'牡丹区',1474,'0,16,1474',0,'1606',1606,'','','115.470025,35.283537');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1607,'曹县',1474,'0,16,1474',0,'1607',1607,'','','115.553601,34.827953');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1608,'单县',1474,'0,16,1474',0,'1608',1608,NULL,NULL,'116.093377,34.800508');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1609,'成武县',1474,'0,16,1474',0,'1609',1609,'','','115.944989,34.989111');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1610,'巨野县',1474,'0,16,1474',0,'1610',1610,'','','116.041131,35.2794');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1611,'郓城县',1474,'0,16,1474',0,'1611',1611,NULL,NULL,'115.950686,35.605115');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1612,'鄄城县',1474,'0,16,1474',0,'1612',1612,'','','115.552871,35.555043');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1613,'定陶县',1474,'0,16,1474',0,'1613',1613,'','','115.62942,5.103626');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1614,'东明县',1474,'0,16,1474',0,'1614',1614,'','','115.074115,35.182435');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1615,'郑州市',17,'0,17',1,'1615,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644',1615,NULL,NULL,'113.649644,34.75661');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1616,'开封市',17,'0,17',1,'1616,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654',1616,NULL,NULL,'114.351642,34.801854');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1617,'洛阳市',17,'0,17',1,'1617,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669',1617,NULL,NULL,'112.447525,34.657368');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1618,'平顶山市',17,'0,17',1,'1618,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679',1618,NULL,NULL,'113.300849,33.745301');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1619,'安阳市',17,'0,17',1,'1619,1680,1681,1682,1683,1684,1685,1686,1687,1688',1619,NULL,NULL,'114.351807,36.110267');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1620,'鹤壁市',17,'0,17',1,'1620,1689,1690,1691,1692,1693',1620,NULL,NULL,'114.29777,35.755426');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1621,'新乡市',17,'0,17',1,'1621,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705',1621,NULL,NULL,'113.91269,35.307258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1622,'焦作市',17,'0,17',1,'1622,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715',1622,NULL,NULL,'113.211836,35.234608');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1623,'濮阳市',17,'0,17',1,'1623,1716,1717,1718,1719,1720,1721',1623,NULL,NULL,'115.026627,35.753298');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1624,'许昌市',17,'0,17',1,'1624,1722,1723,1724,1725,1726,1727',1624,NULL,NULL,'113.835312,34.02674');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1625,'漯河市',17,'0,17',1,'1625,1728,1729,1730,1731',1625,NULL,NULL,'114.046061,33.576279');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1626,'三门峡市',17,'0,17',1,'1626,1732,1733,1734,1735,1736,1737',1626,NULL,NULL,'111.181262,34.78332');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1627,'南阳市',17,'0,17',1,'1627,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750',1627,NULL,NULL,'112.542842,33.01142');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1628,'商丘市',17,'0,17',1,'1628,1770,1771,1772,1773,1774,1775,1776,1777,1778',1628,NULL,NULL,'115.641886,34.438589');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1629,'信阳市',17,'0,17',1,'1629,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788',1629,NULL,NULL,'114.085491,32.128582');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1630,'周口市',17,'0,17',1,'1630,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798',1630,NULL,NULL,'114.654102,33.623741');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1631,'驻马店市',17,'0,17',1,'1631,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808',1631,NULL,NULL,'114.049154,32.983158');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1632,'济源市',17,'0,17',1,'1632,1809',1632,'','','112.405268,35.105365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1633,'中原区',1615,'0,17,1615',0,'1633',1633,'','','113.557281,34.779474');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1634,'二七区',1615,'0,17,1615',0,'1634',1634,'','','113.616482,34.698066');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1635,'管城回族区',1615,'0,17,1615',0,'1635',1635,'','','113.721861,34.709004');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1636,'金水区',1615,'0,17,1615',0,'1636',1636,'','','113.708011,34.797406');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1637,'上街区',1615,'0,17,1615',0,'1637',1637,'','','113.298182,34.822089');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1638,'邙山区',1615,'0,17,1615',0,'1638',1638,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1639,'中牟县',1615,'0,17,1615',0,'1639',1639,'','','114.011222,34.720319');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1640,'巩义市',1615,'0,17,1615',0,'1640',1640,'','','113.03959,4.703799');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1641,'荥阳市',1615,'0,17,1615',0,'1641',1641,'','','113.351802,34.80618');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1642,'新密市',1615,'0,17,1615',0,'1642',1642,'','','113.439854,34.514075');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1643,'新郑市',1615,'0,17,1615',0,'1643',1643,'','','113.736115,34.459443');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1644,'登封市',1615,'0,17,1615',0,'1644',1644,'','','113.041749,34.418362');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1645,'龙亭区',1616,'0,17,1616',0,'1645',1645,'','','114.361971,34.807158');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1646,'顺河回族区',1616,'0,17,1616',0,'1646',1646,'','','114.368531,34.802277');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1647,'鼓楼区',1616,'0,17,1616',0,'1647',1647,'','','118.765057,32.068604');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1648,'南关区',1616,'0,17,1616',0,'1648',1648,'','','125.419649,43.732191');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1649,'郊区',1616,'0,17,1616',0,'1649',1649,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1650,'杞县',1616,'0,17,1616',0,'1650',1650,'','','114.768782,34.505963');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1651,'通许县',1616,'0,17,1616',0,'1651',1651,'','','114.502199,34.441631');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1652,'尉氏县',1616,'0,17,1616',0,'1652',1652,'','','114.161037,34.388437');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1653,'开封县',1616,'0,17,1616',0,'1653',1653,'','','114.452186,34.726004');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1654,'兰考县',1616,'0,17,1616',0,'1654',1654,'','','114.980293,34.879764');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1655,'老城区',1617,'0,17,1617',0,'1655',1655,'','','112.459173,34.704033');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1656,'西工区',1617,'0,17,1617',0,'1656',1656,'','','112.407126,34.689694');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1657,'廛河回族区',1617,'0,17,1617',0,'1657',1657,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1658,'涧西区',1617,'0,17,1617',0,'1658',1658,'','','112.390753,34.671668');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1659,'吉利区',1617,'0,17,1617',0,'1659',1659,'','','112.589765,34.905379');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1660,'洛龙区',1617,'0,17,1617',0,'1660',1660,'','','112.467093,34.638792');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1661,'孟津县',1617,'0,17,1617',0,'1661',1661,'','','112.476996,34.831148');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1662,'新安县',1617,'0,17,1617',0,'1662',1662,'','','112.127744,34.837607');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1663,'栾川县',1617,'0,17,1617',0,'1663',1663,'','','111.617014,33.912392');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1664,'嵩县',1617,'0,17,1617',0,'1664',1664,'','','112.049511,34.0106');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1665,'汝阳县',1617,'0,17,1617',0,'1665',1665,'','','112.435544,34.062967');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1666,'宜阳县',1617,'0,17,1617',0,'1666',1666,'','','112.040468,34.486036');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1667,'洛宁县',1617,'0,17,1617',0,'1667',1667,'','','111.506791,34.345208');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1668,'伊川县',1617,'0,17,1617',0,'1668',1668,'','','112.468877,34.407088');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1669,'偃师市',1617,'0,17,1617',0,'1669',1669,'','','112.734822,34.630802');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1670,'新华区',1618,'0,17,1618',0,'1670',1670,'','','114.453501,38.117219');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1671,'卫东区',1618,'0,17,1618',0,'1671',1671,'','','113.365388,33.769108');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1672,'石龙区',1618,'0,17,1618',0,'1672',1672,'','','112.894691,33.892094');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1673,'湛河区',1618,'0,17,1618',0,'1673',1673,'','','113.278189,33.712341');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1674,'宝丰县',1618,'0,17,1618',0,'1674',1674,'','','113.035771,33.915497');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1675,'叶县',1618,'0,17,1618',0,'1675',1675,'','','113.350676,33.551013');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1676,'鲁山县',1618,'0,17,1618',0,'1676',1676,'','','112.740309,33.748697');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1677,'郏县',1618,'0,17,1618',0,'1677',1677,'','','113.233282,34.005499');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1678,'舞钢市',1618,'0,17,1618',0,'1678',1678,'','','113.525996,33.289605');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1679,'汝州市',1618,'0,17,1618',0,'1679',1679,'','','112.812717,34.162778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1680,'文峰区',1619,'0,17,1619',0,'1680',1680,'','','114.418522,36.034148');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1681,'北关区',1619,'0,17,1619',0,'1681',1681,'','','114.391436,36.141696');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1682,'殷都区',1619,'0,17,1619',0,'1682',1682,'','','114.29713,6.135573');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1683,'龙安区',1619,'0,17,1619',0,'1683',1683,'','','114.256604,36.056025');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1684,'安阳县',1619,'0,17,1619',0,'1684',1684,'','','114.317124,36.125135');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1685,'汤阴县',1619,'0,17,1619',0,'1685',1685,'','','114.462063,35.907982');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1686,'滑县',1619,'0,17,1619',0,'1686',1686,'','','114.673647,35.471734');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1687,'内黄县',1619,'0,17,1619',0,'1687',1687,'','','114.823344,35.906569');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1688,'林州市',1619,'0,17,1619',0,'1688',1688,'','','113.861084,36.016561');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1689,'鹤山区',1620,'0,17,1620',0,'1689',1689,'','','114.098454,35.973346');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1690,'山城区',1620,'0,17,1620',0,'1690',1690,'','','114.253029,35.927454');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1691,'淇滨区',1620,'0,17,1620',0,'1691',1691,'','','114.199514,35.812419');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1692,'浚县',1620,'0,17,1620',0,'1692',1692,'','','114.467186,35.686206');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1693,'淇县',1620,'0,17,1620',0,'1693',1693,'','','114.169034,35.667572');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1694,'红旗区',1621,'0,17,1621',0,'1694',1694,'','','113.914619,35.28615');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1695,'新华区',1621,'0,17,1621',0,'1695',1695,'','','114.453501,38.117219');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1696,'北站区',1621,'0,17,1621',0,'1696',1696,'','','113.927532,35.388809');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1697,'郊区',1621,'0,17,1621',0,'1697',1697,'','','113.568086,37.911504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1698,'新乡县',1621,'0,17,1621',0,'1698',1698,'','','113.848246,35.220522');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1699,'获嘉县',1621,'0,17,1621',0,'1699',1699,'','','113.651969,35.203481');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1700,'原阳县',1621,'0,17,1621',0,'1700',1700,'','','113.953164,35.029036');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1701,'延津县',1621,'0,17,1621',0,'1701',1701,'','','114.231357,35.279608');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1702,'封丘县',1621,'0,17,1621',0,'1702',1702,'','','114.487678,35.040384');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1703,'长垣县',1621,'0,17,1621',0,'1703',1703,'','','114.766903,35.218128');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1704,'卫辉市',1621,'0,17,1621',0,'1704',1704,'','','114.078112,35.499572');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1705,'辉县市',1621,'0,17,1621',0,'1705',1705,'','','113.687892,35.543594');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1706,'解放区',1622,'0,17,1622',0,'1706',1706,'','','113.230804,35.241712');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1707,'中站区',1622,'0,17,1622',0,'1707',1707,'','','113.161536,35.257024');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1708,'马村区',1622,'0,17,1622',0,'1708',1708,'','','113.367321,35.304171');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1709,'山阳区',1622,'0,17,1622',0,'1709',1709,'','','113.276351,35.24116');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1710,'修武县',1622,'0,17,1622',0,'1710',1710,'','','113.363528,35.309678');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1711,'博爱县',1622,'0,17,1622',0,'1711',1711,'','','113.075078,35.186007');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1712,'武陟县',1622,'0,17,1622',0,'1712',1712,'','','113.399935,35.057332');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1713,'温县',1622,'0,17,1622',0,'1713',1713,'','','113.055296,34.95026');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1714,'沁阳市',1622,'0,17,1622',0,'1714',1714,'','','112.888305,35.133826');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1715,'孟州市',1622,'0,17,1622',0,'1715',1715,'','','112.769699,34.925884');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1716,'华龙区',1623,'0,17,1623',0,'1716',1716,'','','115.048097,35.771934');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1717,'清丰县',1623,'0,17,1623',0,'1717',1717,'','','115.161201,35.924382');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1718,'南乐县',1623,'0,17,1623',0,'1718',1718,'','','115.249823,36.097697');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1719,'范县',1623,'0,17,1623',0,'1719',1719,'','','115.538401,35.801405');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1720,'台前县',1623,'0,17,1623',0,'1720',1720,'','','115.885738,35.966389');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1721,'濮阳县',1623,'0,17,1623',0,'1721',1721,'','','115.156602,35.592287');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1722,'魏都区',1624,'0,17,1624',0,'1722',1722,'','','113.825316,34.043477');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1723,'许昌县',1624,'0,17,1624',0,'1723',1723,'','','113.835262,34.048516');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1724,'鄢陵县',1624,'0,17,1624',0,'1724',1724,'','','114.202409,34.01193');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1725,'襄城县',1624,'0,17,1624',0,'1725',1725,'','','113.568983,33.861905');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1726,'禹州市',1624,'0,17,1624',0,'1726',1726,'','','113.392694,34.200308');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1727,'长葛市',1624,'0,17,1624',0,'1727',1727,'','','113.855568,34.236601');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1728,'源汇区',1625,'0,17,1625',0,'1728',1728,'','','113.923601,33.534755');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1729,'舞阳县',1625,'0,17,1625',0,'1729',1729,'','','113.680055,33.549301');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1730,'临颍县',1625,'0,17,1625',0,'1730',1730,'','','113.963899,33.844426');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1731,'郾城县',1625,'0,17,1625',0,'1731',1731,'','','113.996272,33.590176');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1732,'湖滨区',1626,'0,17,1626',0,'1732',1732,'','','111.281295,34.771778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1733,'渑池县',1626,'0,17,1626',0,'1733',1733,'','','111.802535,34.839691');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1734,'陕县',1626,'0,17,1626',0,'1734',1734,'','','111.376065,34.643633');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1735,'卢氏县',1626,'0,17,1626',0,'1735',1735,'','','110.994724,33.973394');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1736,'义马市',1626,'0,17,1626',0,'1736',1736,'','','111.906093,34.749525');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1737,'灵宝市',1626,'0,17,1626',0,'1737',1737,'','','110.779737,34.437104');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1738,'宛城区',1627,'0,17,1627',0,'1738',1738,'','','112.613908,32.934703');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1739,'卧龙区',1627,'0,17,1627',0,'1739',1739,'','','112.484267,33.009839');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1740,'南召县',1627,'0,17,1627',0,'1740',1740,'','','112.393666,33.472842');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1741,'方城县',1627,'0,17,1627',0,'1741',1741,'','','113.016822,33.299954');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1742,'西峡县',1627,'0,17,1627',0,'1742',1742,'','','111.43899,3.486925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1743,'镇平县',1627,'0,17,1627',0,'1743',1743,'','','112.193285,33.070817');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1744,'内乡县',1627,'0,17,1627',0,'1744',1744,'','','111.847405,33.224377');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1745,'淅川县',1627,'0,17,1627',0,'1745',1745,'','','111.445396,32.989723');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1746,'社旗县',1627,'0,17,1627',0,'1746',1746,'','','112.998527,32.982431');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1747,'唐河县',1627,'0,17,1627',0,'1747',1747,'','','112.859118,32.619993');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1748,'新野县',1627,'0,17,1627',0,'1748',1748,'','','112.415991,32.553441');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1749,'桐柏县',1627,'0,17,1627',0,'1749',1749,'','','113.434169,32.49565');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1750,'邓州市',1627,'0,17,1627',0,'1750',1750,'','','112.056861,32.68465');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1770,'梁园区',1628,'0,17,1628',0,'1770',1770,'','','115.637731,34.50304');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1771,'睢阳区',1628,'0,17,1628',0,'1771',1771,'','','115.589784,34.286755');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1772,'民权县',1628,'0,17,1628',0,'1772',1772,'','','115.178414,34.696117');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1773,'睢县',1628,'0,17,1628',0,'1773',1773,'','','115.043001,34.39976');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1774,'宁陵县',1628,'0,17,1628',0,'1774',1774,'','','115.298401,34.454602');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1775,'柘城县',1628,'0,17,1628',0,'1775',1775,'','','115.309042,34.111652');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1776,'虞城县',1628,'0,17,1628',0,'1776',1776,'','','115.914225,34.369072');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1777,'夏邑县',1628,'0,17,1628',0,'1777',1777,'','','116.157454,34.223681');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1778,'永城市',1628,'0,17,1628',0,'1778',1778,'','','116.330775,33.972013');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1779,'师河区',1629,'0,17,1629',0,'1779',1779,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1780,'平桥区',1629,'0,17,1629',0,'1780',1780,'','','114.139086,32.30784');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1781,'罗山县',1629,'0,17,1629',0,'1781',1781,'','','114.443563,32.03123');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1782,'光山县',1629,'0,17,1629',0,'1782',1782,'','','114.843162,31.941432');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1783,'新县',1629,'0,17,1629',0,'1783',1783,'','','114.859089,31.646279');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1784,'商城县',1629,'0,17,1629',0,'1784',1784,'','','115.375246,31.766262');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1785,'固始县',1629,'0,17,1629',0,'1785',1785,'','','115.709743,32.136944');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1786,'潢川县',1629,'0,17,1629',0,'1786',1786,'','','115.16441,2.132798');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1787,'淮滨县',1629,'0,17,1629',0,'1787',1787,'','','115.324561,32.446574');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1788,'息县',1629,'0,17,1629',0,'1788',1788,'','','114.871682,32.410808');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1789,'川汇区',1630,'0,17,1630',0,'1789',1789,'','','114.65795,3.630876');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1790,'扶沟县',1630,'0,17,1630',0,'1790',1790,'','','114.437327,34.100655');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1791,'西华县',1630,'0,17,1630',0,'1791',1791,'','','114.478087,33.793632');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1792,'商水县',1630,'0,17,1630',0,'1792',1792,'','','114.559577,33.520933');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1793,'沈丘县',1630,'0,17,1630',0,'1793',1793,'','','115.178718,33.29515');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1794,'郸城县',1630,'0,17,1630',0,'1794',1794,'','','115.301297,33.6415');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1795,'淮阳县',1630,'0,17,1630',0,'1795',1795,'','','114.902018,33.709947');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1796,'太康县',1630,'0,17,1630',0,'1796',1796,'','','114.855701,34.097096');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1797,'鹿邑县',1630,'0,17,1630',0,'1797',1797,'','','115.383983,33.894051');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1798,'项城市',1630,'0,17,1630',0,'1798',1798,'','','114.89338,3.27447');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1799,'驿城区',1631,'0,17,1631',0,'1799',1799,'','','114.00829,2.968357');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1800,'西平县',1631,'0,17,1631',0,'1800',1800,'','','113.922838,33.371549');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1801,'上蔡县',1631,'0,17,1631',0,'1801',1801,'','','114.409239,33.301221');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1802,'平舆县',1631,'0,17,1631',0,'1802',1802,'','','114.647449,32.992144');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1803,'正阳县',1631,'0,17,1631',0,'1803',1803,'','','114.497961,32.546931');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1804,'确山县',1631,'0,17,1631',0,'1804',1804,'','','113.96359,2.711951');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1805,'泌阳县',1631,'0,17,1631',0,'1805',1805,'','','113.447174,32.883864');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1806,'汝南县',1631,'0,17,1631',0,'1806',1806,'','','114.325776,32.921968');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1807,'遂平县',1631,'0,17,1631',0,'1807',1807,'','','113.902485,33.167855');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1808,'新蔡县',1631,'0,17,1631',0,'1808',1808,'','','114.949393,32.783574');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1809,'济源市',1632,'0,17,1632',0,'1809',1809,'','','112.405268,35.105365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1810,'武汉市',18,'0,18',1,'1810,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839',1810,NULL,NULL,'114.3162,30.581084');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1811,'黄石市',18,'0,18',1,'1811,1840,1841,1842,1843,1844,1845',1811,NULL,NULL,'115.050683,30.216127');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1812,'十堰市',18,'0,18',1,'1812,1846,1847,1848,1849,1850,1851,1852,1853',1812,NULL,NULL,'110.801229,32.636994');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1813,'宜昌市',18,'0,18',1,'1813,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866',1813,NULL,NULL,'111.310981,30.732758');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1814,'襄阳市',18,'0,18',1,'1814,1867,1868,1869,1870,1871,1872,1873,1874,1875',1814,'','','112.250093,32.229169');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1815,'鄂州市',18,'0,18',1,'1815,1876,1877,1878',1815,NULL,NULL,'114.895594,30.384439');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1816,'荆门市',18,'0,18',1,'1816,1879,1880,1881,1882,1883',1816,NULL,NULL,'112.21733,31.042611');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1817,'孝感市',18,'0,18',1,'1817,1884,1885,1886,1887,1888,1889,1890',1817,NULL,NULL,'113.935734,30.927955');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1818,'荆州市',18,'0,18',1,'1818,1891,1892,1893,1894,1895,1896,1897,1898',1818,NULL,NULL,'112.241866,30.332591');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1819,'黄冈市',18,'0,18',1,'1819,1899,1900,1901,1902,1903,1904,1905,1906,1907,1908',1819,NULL,NULL,'114.906618,30.446109');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1820,'咸宁市',18,'0,18',1,'1820,1909,1910,1911,1912,1913,1914',1820,NULL,NULL,'114.300061,29.880657');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1821,'随州市',18,'0,18',1,'1821,1915,1916',1821,NULL,NULL,'113.379358,31.717858');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1822,'恩施土家族苗族自治州',18,'0,18',1,'1822,1917,1918,1919,1920,1921,1922,1923,1924',1822,NULL,NULL,'109.517433,30.308978');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1823,'省直辖行政单位',18,'0,18',1,'1823,1925,1926,1927,1928',1823,'','','116.489045,39.974612');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1824,'江岸区',1810,'0,18,1810',0,'1824',1824,'','','114.332868,30.656091');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1825,'江汉区',1810,'0,18,1810',0,'1825',1825,'','','114.266384,30.610951');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1826,'乔口区',1810,'0,18,1810',0,'1826',1826,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1827,'汉阳区',1810,'0,18,1810',0,'1827',1827,'','','114.217592,30.547265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1828,'武昌区',1810,'0,18,1810',0,'1828',1828,'','','114.353622,30.56486');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1829,'青山区',1810,'0,18,1810',0,'1829',1829,'','','109.903675,40.658778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1830,'洪山区',1810,'0,18,1810',0,'1830',1830,'','','114.433896,30.543623');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1831,'东西湖区',1810,'0,18,1810',0,'1831',1831,'','','114.087155,30.698153');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1832,'汉南区',1810,'0,18,1810',0,'1832',1832,'','','113.962732,30.28714');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1833,'蔡甸区',1810,'0,18,1810',0,'1833',1833,'','','113.972065,30.456184');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1834,'江夏区',1810,'0,18,1810',0,'1834',1834,'','','114.367082,30.252484');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1835,'黄陂区',1810,'0,18,1810',0,'1835',1835,'','','114.364644,30.985286');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1836,'新洲区',1810,'0,18,1810',0,'1836',1836,'','','114.762085,30.803888');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1837,'东湖高新区',1810,'0,18,1810',0,'1837',1837,'','','115.910148,28.692375');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1838,'文保区',1810,'0,18,1810',0,'1838',1838,'','','110.393286,21.255532');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1839,'沌口区',1810,'0,18,1810',0,'1839',1839,'','','114.190664,30.465972');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1840,'黄石港区',1811,'0,18,1811',0,'1840',1840,'','','115.073159,30.233765');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1841,'西塞山区',1811,'0,18,1811',0,'1841',1841,'','','115.132267,30.184486');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1842,'下陆区',1811,'0,18,1811',0,'1842',1842,'','','114.992987,30.195818');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1843,'铁山区',1811,'0,18,1811',0,'1843',1843,'','','114.903009,30.218698');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1844,'阳新县',1811,'0,18,1811',0,'1844',1844,'','','115.140493,29.828087');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1845,'大冶市',1811,'0,18,1811',0,'1845',1845,'','','114.846142,30.072896');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1846,'茅箭区',1812,'0,18,1812',0,'1846',1846,'','','110.785953,32.605602');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1847,'张湾区',1812,'0,18,1812',0,'1847',1847,'','','110.717401,32.66384');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1848,'郧县',1812,'0,18,1812',0,'1848',1848,'','','110.736399,32.864335');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1849,'郧西县',1812,'0,18,1812',0,'1849',1849,'','','110.150151,33.048428');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1850,'竹山县',1812,'0,18,1812',0,'1850',1850,'','','110.07274,2.240142');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1851,'竹溪县',1812,'0,18,1812',0,'1851',1851,'','','109.791237,32.037738');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1852,'房县',1812,'0,18,1812',0,'1852',1852,'','','110.628795,32.079873');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1853,'丹江口市',1812,'0,18,1812',0,'1853',1853,'','','111.193228,32.567477');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1854,'西陵区',1813,'0,18,1813',0,'1854',1854,'','','111.313706,30.740828');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1855,'伍家岗区',1813,'0,18,1813',0,'1855',1855,'','','111.380922,30.678659');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1856,'点军区',1813,'0,18,1813',0,'1856',1856,'','','111.216279,30.625385');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1857,'虎亭区',1813,'0,18,1813',0,'1857',1857,'','','118.992995,26.345278');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1858,'夷陵区',1813,'0,18,1813',0,'1858',1858,'','','111.310649,30.979971');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1859,'远安县',1813,'0,18,1813',0,'1859',1859,'','','111.585113,31.176854');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1860,'兴山县',1813,'0,18,1813',0,'1860',1860,'','','110.824406,31.31935');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1861,'秭归县',1813,'0,18,1813',0,'1861',1861,'','','110.685993,30.903335');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1862,'长阳土家族自治县',1813,'0,18,1813',0,'1862',1862,'','','110.853968,30.482855');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1863,'五峰土家族自治县',1813,'0,18,1813',0,'1863',1863,'','','110.709999,30.173165');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1864,'宜都市',1813,'0,18,1813',0,'1864',1864,'','','111.375534,30.29492');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1865,'当阳市',1813,'0,18,1813',0,'1865',1865,'','','111.842712,30.825538');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1866,'枝江市',1813,'0,18,1813',0,'1866',1866,'','','111.728567,30.451767');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1867,'襄城区',1814,'0,18,1814',0,'1867',1867,'','','112.017083,31.93536');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1868,'樊城区',1814,'0,18,1814',0,'1868',1868,'','','111.928528,32.153953');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1869,'襄阳区',1814,'0,18,1814',0,'1869',1869,'','','112.250093,32.229169');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1870,'南漳县',1814,'0,18,1814',0,'1870',1870,'','','111.764629,31.64328');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1871,'谷城县',1814,'0,18,1814',0,'1871',1871,'','','111.495958,32.173452');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1872,'保康县',1814,'0,18,1814',0,'1872',1872,'','','111.209905,31.719673');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1873,'老河口市',1814,'0,18,1814',0,'1873',1873,'','','111.76583,2.434166');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1874,'枣阳市',1814,'0,18,1814',0,'1874',1874,'','','112.772607,32.092511');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1875,'宜城市',1814,'0,18,1814',0,'1875',1875,'','','112.372745,31.673335');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1876,'梁子湖区',1815,'0,18,1815',0,'1876',1876,'','','114.650029,30.172732');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1877,'华容区',1815,'0,18,1815',0,'1877',1877,'','','114.701472,30.473068');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1878,'鄂城区',1815,'0,18,1815',0,'1878',1878,'','','114.901016,30.320603');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1879,'东宝区',1816,'0,18,1816',0,'1879',1879,'','','112.087311,31.129835');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1880,'掇刀区',1816,'0,18,1816',0,'1880',1880,'','','112.193923,30.932878');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1881,'京山县',1816,'0,18,1816',0,'1881',1881,'','','113.112261,31.085752');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1882,'沙洋县',1816,'0,18,1816',0,'1882',1882,'','','112.395983,30.66455');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1883,'钟祥市',1816,'0,18,1816',0,'1883',1883,'','','112.584826,31.244981');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1884,'孝南区',1817,'0,18,1817',0,'1884',1884,'','','114.016142,30.944617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1885,'孝昌县',1817,'0,18,1817',0,'1885',1885,'','','114.034872,31.239759');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1886,'大悟县',1817,'0,18,1817',0,'1886',1886,'','','114.3103,0.578255');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1887,'云梦县',1817,'0,18,1817',0,'1887',1887,'','','113.778186,31.004979');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1888,'应城市',1817,'0,18,1817',0,'1888',1888,'','','113.55644,0.925709');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1889,'安陆市',1817,'0,18,1817',0,'1889',1889,'','','113.633387,31.304355');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1890,'汉川市',1817,'0,18,1817',0,'1890',1890,'','','113.681678,30.622039');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1891,'沙市区',1818,'0,18,1818',0,'1891',1891,'','','112.424109,30.325723');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1892,'荆州区',1818,'0,18,1818',0,'1892',1892,'','','112.099857,30.396103');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1893,'公安县',1818,'0,18,1818',0,'1893',1893,'','','112.153618,29.95713');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1894,'监利县',1818,'0,18,1818',0,'1894',1894,'','','113.001956,29.848933');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1895,'江陵县',1818,'0,18,1818',0,'1895',1895,'','','112.473701,30.101503');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1896,'石首市',1818,'0,18,1818',0,'1896',1896,'','','112.51436,9.742222');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1897,'洪湖市',1818,'0,18,1818',0,'1897',1897,'','','113.538915,29.996772');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1898,'松滋市',1818,'0,18,1818',0,'1898',1898,'','','111.696205,30.105224');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1899,'黄州区',1819,'0,18,1819',0,'1899',1899,'','','114.949569,30.518802');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1900,'团风县',1819,'0,18,1819',0,'1900',1900,'','','115.014087,30.723706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1901,'红安县',1819,'0,18,1819',0,'1901',1901,'','','114.628119,31.290123');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1902,'罗田县',1819,'0,18,1819',0,'1902',1902,'','','115.481022,30.932373');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1903,'英山县',1819,'0,18,1819',0,'1903',1903,'','','115.774302,30.872992');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1904,'浠水县',1819,'0,18,1819',0,'1904',1904,'','','115.276251,30.5074');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1905,'蕲春县',1819,'0,18,1819',0,'1905',1905,'','','115.600771,30.328717');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1906,'黄梅县',1819,'0,18,1819',0,'1906',1906,'','','115.941883,29.998876');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1907,'麻城市',1819,'0,18,1819',0,'1907',1907,'','','115.089715,31.217943');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1908,'武穴市',1819,'0,18,1819',0,'1908',1908,'','','115.625834,30.015614');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1909,'咸安区',1820,'0,18,1820',0,'1909',1909,'','','114.391867,29.85465');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1910,'嘉鱼县',1820,'0,18,1820',0,'1910',1910,'','','113.967139,30.013807');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1911,'通城县',1820,'0,18,1820',0,'1911',1911,'','','113.853266,29.229496');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1912,'崇阳县',1820,'0,18,1820',0,'1912',1912,'','','114.067935,29.461789');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1913,'通山县',1820,'0,18,1820',0,'1913',1913,'','','114.615246,29.55767');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1914,'赤壁市',1820,'0,18,1820',0,'1914',1914,'','','113.889168,29.742561');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1915,'曾都区',1821,'0,18,1821',0,'1915',1915,'','','113.294246,31.890024');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1916,'广水市',1821,'0,18,1821',0,'1916',1916,'','','113.812619,31.682325');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1917,'恩施市',1822,'0,18,1822',0,'1917',1917,'','','109.517433,30.308979');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1918,'利川市',1822,'0,18,1822',0,'1918',1918,'','','108.8271,0.239967');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1919,'建始县',1822,'0,18,1822',0,'1919',1919,'','','109.939599,30.578576');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1920,'巴东县',1822,'0,18,1822',0,'1920',1920,'','','110.300617,30.827453');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1921,'宣恩县',1822,'0,18,1822',0,'1921',1921,'','','109.565069,29.886112');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1922,'咸丰县',1822,'0,18,1822',0,'1922',1922,'','','109.003815,29.736284');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1923,'来凤县',1822,'0,18,1822',0,'1923',1923,'','','109.246714,29.425663');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1924,'鹤峰县',1822,'0,18,1822',0,'1924',1924,'','','110.20022,9.918894');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1925,'仙桃市',1823,'0,18,1823',0,'1925',1925,NULL,NULL,'113.387448,30.293966');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1926,'潜江市',1823,'0,18,1823',0,'1926',1926,NULL,NULL,'112.768768,30.343116');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1927,'天门市',1823,'0,18,1823',0,'1927',1927,NULL,NULL,'113.12623,30.649047');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1928,'神农架林区',1823,'0,18,1823',0,'1928',1928,NULL,NULL,'110.487231,31.595768');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1929,'长沙市',19,'0,19',1,'1929,1943,1944,1945,1946,1947,1948,1949,1950,1951',1929,NULL,NULL,'112.979353,28.213478');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1930,'株洲市',19,'0,19',1,'1930,1952,1953,1954,1955,1956,1957,1958,1959,1960',1930,NULL,NULL,'113.131695,27.827433');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1931,'湘潭市',19,'0,19',1,'1931,1961,1962,1963,1964,1965',1931,NULL,NULL,'112.935556,27.835095');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1932,'衡阳市',19,'0,19',1,'1932,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977',1932,NULL,NULL,'112.583819,26.898164');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1933,'邵阳市',19,'0,19',1,'1933,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989',1933,NULL,NULL,'111.461525,27.236811');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1934,'岳阳市',19,'0,19',1,'1934,1990,1991,1992,1993,1994,1995,1996,1997,1998',1934,NULL,NULL,'113.146196,29.378007');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1935,'常德市',19,'0,19',1,'1935,1999,2000,2001,2002,2003,2004,2005,2006,2007',1935,NULL,NULL,'111.653718,29.012149');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1936,'张家界市',19,'0,19',1,'1936,2008,2009,2010,2011',1936,NULL,NULL,'110.48162,29.124889');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1937,'益阳市',19,'0,19',1,'1937,2012,2013,2014,2015,2016,2017',1937,NULL,NULL,'112.366547,28.588088');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1938,'郴州市',19,'0,19',1,'1938,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028',1938,NULL,NULL,'113.037704,25.782264');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1939,'永州市',19,'0,19',1,'1939,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039',1939,NULL,NULL,'111.614648,26.435972');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1940,'怀化市',19,'0,19',1,'1940,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051',1940,NULL,NULL,'109.986959,27.557483');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1941,'娄底市',19,'0,19',1,'1941,2052,2053,2054,2055,2056',1941,NULL,NULL,'111.996396,27.741073');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1942,'湘西土家族苗族自治州',19,'0,19',1,'1942,2057,2058,2059,2060,2061,2062,2063,2064',1942,'','','109.745746,28.317951');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1943,'芙蓉区',1929,'0,19,1929',0,'1943',1943,'','','113.020969,28.203811');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1944,'天心区',1929,'0,19,1929',0,'1944',1944,'','','112.996195,28.144471');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1945,'岳麓区',1929,'0,19,1929',0,'1945',1945,'','','112.908699,28.202707');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1946,'开福区',1929,'0,19,1929',0,'1946',1946,'','','113.02473,8.260219');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1947,'雨花区',1929,'0,19,1929',0,'1947',1947,'','','113.020201,28.146444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1948,'长沙县',1929,'0,19,1929',0,'1948',1948,'','','113.224946,28.322759');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1949,'望城县',1929,'0,19,1929',0,'1949',1949,'','','112.825207,28.297078');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1950,'宁乡县',1929,'0,19,1929',0,'1950',1950,'','','112.360465,28.131213');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1951,'浏阳市',1929,'0,19,1929',0,'1951',1951,'','','113.721985,28.234472');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1952,'荷塘区',1930,'0,19,1930',0,'1952',1952,'','','113.212526,27.907229');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1953,'芦淞区',1930,'0,19,1930',0,'1953',1953,'','','113.16976,7.822073');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1954,'石峰区',1930,'0,19,1930',0,'1954',1954,'','','113.163511,27.941584');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1955,'天元区',1930,'0,19,1930',0,'1955',1955,'','','113.068009,27.777772');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1956,'株洲县',1930,'0,19,1930',0,'1956',1956,'','','113.153348,27.535936');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1957,'攸县',1930,'0,19,1930',0,'1957',1957,'','','113.487831,27.172268');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1958,'茶陵县',1930,'0,19,1930',0,'1958',1958,'','','113.652481,26.806729');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1959,'炎陵县',1930,'0,19,1930',0,'1959',1959,'','','113.850536,26.382712');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1960,'醴陵市',1930,'0,19,1930',0,'1960',1960,'','','113.470625,27.662279');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1961,'雨湖区',1931,'0,19,1931',0,'1961',1961,'','','112.89448,7.871843');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1962,'岳塘区',1931,'0,19,1931',0,'1962',1962,'','','113.023488,27.927747');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1963,'湘潭县',1931,'0,19,1931',0,'1963',1963,'','','112.788805,27.669223');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1964,'湘乡市',1931,'0,19,1931',0,'1964',1964,'','','112.355169,27.77668');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1965,'韶山市',1931,'0,19,1931',0,'1965',1965,'','','112.533095,27.927333');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1966,'珠晖区',1932,'0,19,1932',0,'1966',1966,'','','112.68849,6.882225');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1967,'雁峰区',1932,'0,19,1932',0,'1967',1967,'','','112.607907,26.852862');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1968,'石鼓区',1932,'0,19,1932',0,'1968',1968,'','','112.602488,26.95888');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1969,'蒸湘区',1932,'0,19,1932',0,'1969',1969,'','','112.555047,26.886509');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1970,'南岳区',1932,'0,19,1932',0,'1970',1970,'','','112.708767,27.259359');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1971,'衡阳县',1932,'0,19,1932',0,'1971',1971,'','','112.351579,27.109626');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1972,'衡南县',1932,'0,19,1932',0,'1972',1972,'','','112.648514,26.759845');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1973,'衡山县',1932,'0,19,1932',0,'1973',1973,'','','112.71963,7.281912');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1974,'衡东县',1932,'0,19,1932',0,'1974',1974,'','','113.029002,27.08508');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1975,'祁东县',1932,'0,19,1932',0,'1975',1975,'','','111.961606,26.806848');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1976,'耒阳市',1932,'0,19,1932',0,'1976',1976,'','','112.921552,26.423993');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1977,'常宁市',1932,'0,19,1932',0,'1977',1977,'','','112.435504,26.365629');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1978,'双清区',1933,'0,19,1933',0,'1978',1978,'','','111.545347,27.248222');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1979,'大祥区',1933,'0,19,1933',0,'1979',1979,'','','111.486639,27.156737');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1980,'北塔区',1933,'0,19,1933',0,'1980',1980,'','','111.422279,27.250338');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1981,'邵东县',1933,'0,19,1933',0,'1981',1981,'','','111.85672,7.193654');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1982,'新邵县',1933,'0,19,1933',0,'1982',1982,'','','111.471275,27.431199');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1983,'邵阳县',1933,'0,19,1933',0,'1983',1983,'','','111.332372,26.984977');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1984,'隆回县',1933,'0,19,1933',0,'1984',1984,'','','110.973326,27.351831');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1985,'洞口县',1933,'0,19,1933',0,'1985',1985,'','','110.599739,27.103196');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1986,'绥宁县',1933,'0,19,1933',0,'1986',1986,'','','110.205985,26.714433');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1987,'新宁县',1933,'0,19,1933',0,'1987',1987,'','','110.924698,26.548581');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1988,'城步苗族自治县',1933,'0,19,1933',0,'1988',1988,'','','110.325303,26.325515');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1989,'武冈市',1933,'0,19,1933',0,'1989',1989,'','','110.745815,26.786578');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1990,'岳阳楼区',1934,'0,19,1934',0,'1990',1990,'','','113.15537,9.367743');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1991,'云溪区',1934,'0,19,1934',0,'1991',1991,'','','113.353774,29.526211');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1992,'君山区',1934,'0,19,1934',0,'1992',1992,'','','112.82353,9.461963');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1993,'岳阳县',1934,'0,19,1934',0,'1993',1993,'','','113.237527,29.178499');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1994,'华容县',1934,'0,19,1934',0,'1994',1994,'','','112.651009,29.493396');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1995,'湘阴县',1934,'0,19,1934',0,'1995',1995,'','','112.805374,28.71309');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1996,'平江县',1934,'0,19,1934',0,'1996',1996,'','','113.720846,28.762203');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1997,'汨罗市',1934,'0,19,1934',0,'1997',1997,'','','113.125027,28.801958');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1998,'临湘市',1934,'0,19,1934',0,'1998',1998,'','','113.519749,29.496146');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (1999,'武陵区',1935,'0,19,1935',0,'1999',1999,'','','111.69745,8.996871');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2000,'鼎城区',1935,'0,19,1935',0,'2000',2000,'','','111.747796,28.995243');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2001,'安乡县',1935,'0,19,1935',0,'2001',2001,'','','112.162437,29.448996');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2002,'汉寿县',1935,'0,19,1935',0,'2002',2002,'','','112.044311,28.8648');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2003,'澧县',1935,'0,19,1935',0,'2003',2003,'','','111.707703,29.750168');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2004,'临澧县',1935,'0,19,1935',0,'2004',2004,'','','111.625422,29.486257');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2005,'桃源县',1935,'0,19,1935',0,'2005',2005,'','','111.270707,28.917818');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2006,'石门县',1935,'0,19,1935',0,'2006',2006,'','','111.044287,29.801743');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2007,'津市市',1935,'0,19,1935',0,'2007',2007,'','','111.90685,9.474442');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2008,'永定区',1936,'0,19,1936',0,'2008',2008,'','','110.501007,29.088539');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2009,'武陵源区',1936,'0,19,1936',0,'2009',2009,'','','110.488496,29.357201');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2010,'慈利县',1936,'0,19,1936',0,'2010',2010,'','','110.9362,0.397693');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2011,'桑植县',1936,'0,19,1936',0,'2011',2011,'','','110.187336,29.567692');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2012,'资阳区',1937,'0,19,1937',0,'2012',2012,'','','112.343121,28.694069');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2013,'赫山区',1937,'0,19,1937',0,'2013',2013,'','','112.461324,28.456919');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2014,'南县',1937,'0,19,1937',0,'2014',2014,'','','112.444499,29.242714');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2015,'桃江县',1937,'0,19,1937',0,'2015',2015,'','','111.990464,28.464142');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2016,'安化县',1937,'0,19,1937',0,'2016',2016,'','','111.390782,28.28658');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2017,'沅江市',1937,'0,19,1937',0,'2017',2017,'','','112.564942,28.977186');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2018,'北湖区',1938,'0,19,1938',0,'2018',2018,'','','112.884476,25.679158');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2019,'苏仙区',1938,'0,19,1938',0,'2019',2019,'','','113.051002,25.773515');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2020,'桂阳县',1938,'0,19,1938',0,'2020',2020,'','','112.608108,25.89349');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2021,'宜章县',1938,'0,19,1938',0,'2021',2021,'','','112.933447,25.275887');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2022,'永兴县',1938,'0,19,1938',0,'2022',2022,'','','113.198393,26.216492');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2023,'嘉禾县',1938,'0,19,1938',0,'2023',2023,'','','112.414353,25.637287');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2024,'临武县',1938,'0,19,1938',0,'2024',2024,'','','112.568041,25.343997');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2025,'汝城县',1938,'0,19,1938',0,'2025',2025,'','','113.677677,25.555137');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2026,'桂东县',1938,'0,19,1938',0,'2026',2026,'','','113.906401,25.986645');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2027,'安仁县',1938,'0,19,1938',0,'2027',2027,'','','113.365699,26.580786');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2028,'资兴市',1938,'0,19,1938',0,'2028',2028,'','','113.468522,25.937184');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2029,'芝山区',1939,'0,19,1939',0,'2029',2029,'','','111.625805,26.230722');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2030,'冷水滩区',1939,'0,19,1939',0,'2030',2030,'','','111.621586,26.560382');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2031,'祁阳县',1939,'0,19,1939',0,'2031',2031,'','','111.972594,26.460846');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2032,'东安县',1939,'0,19,1939',0,'2032',2032,'','','111.342809,26.495588');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2033,'双牌县',1939,'0,19,1939',0,'2033',2033,'','','111.716294,25.914933');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2034,'道县',1939,'0,19,1939',0,'2034',2034,'','','111.602042,25.499397');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2035,'江永县',1939,'0,19,1939',0,'2035',2035,'','','111.253887,25.199988');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2036,'宁远县',1939,'0,19,1939',0,'2036',2036,'','','111.988063,25.65384');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2037,'蓝山县',1939,'0,19,1939',0,'2037',2037,'','','112.196393,25.319503');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2038,'新田县',1939,'0,19,1939',0,'2038',2038,'','','112.234807,25.890527');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2039,'江华瑶族自治县',1939,'0,19,1939',0,'2039',2039,'','','111.752496,24.977642');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2040,'鹤城区',1940,'0,19,1940',0,'2040',2040,'','','109.945539,27.612024');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2041,'中方县',1940,'0,19,1940',0,'2041',2041,'','','110.165362,27.520935');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2042,'沅陵县',1940,'0,19,1940',0,'2042',2042,'','','110.601178,28.576605');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2043,'辰溪县',1940,'0,19,1940',0,'2043',2043,'','','110.273009,27.895902');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2044,'溆浦县',1940,'0,19,1940',0,'2044',2044,'','','110.658581,27.83591');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2045,'会同县',1940,'0,19,1940',0,'2045',2045,'','','109.809945,26.914136');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2046,'麻阳苗族自治县',1940,'0,19,1940',0,'2046',2046,'','','109.729179,27.791376');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2047,'新晃侗族自治县',1940,'0,19,1940',0,'2047',2047,'','','109.168741,27.234509');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2048,'芷江侗族自治县',1940,'0,19,1940',0,'2048',2048,'','','109.611105,27.40251');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2049,'靖州苗族侗族自治县',1940,'0,19,1940',0,'2049',2049,'','','109.590833,26.550431');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2050,'通道侗族自治县',1940,'0,19,1940',0,'2050',2050,'','','109.744661,26.215115');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2051,'洪江市',1940,'0,19,1940',0,'2051',2051,'','','110.087193,27.239105');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2052,'娄星区',1941,'0,19,1941',0,'2052',2052,'','','112.004619,27.766945');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2053,'双峰县',1941,'0,19,1941',0,'2053',2053,'','','112.187923,27.465564');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2054,'新化县',1941,'0,19,1941',0,'2054',2054,'','','111.246845,27.873273');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2055,'冷水江市',1941,'0,19,1941',0,'2055',2055,'','','111.493942,27.684915');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2056,'涟源市',1941,'0,19,1941',0,'2056',2056,'','','111.794581,27.743727');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2057,'吉首市',1942,'0,19,1942',0,'2057',2057,'','','109.770926,28.317143');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2058,'泸溪县',1942,'0,19,1942',0,'2058',2058,'','','110.0027,0.164426');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2059,'凤凰县',1942,'0,19,1942',0,'2059',2059,'','','109.518882,28.013633');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2060,'花垣县',1942,'0,19,1942',0,'2060',2060,'','','109.439129,28.431708');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2061,'保靖县',1942,'0,19,1942',0,'2061',2061,'','','109.573905,28.672428');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2062,'古丈县',1942,'0,19,1942',0,'2062',2062,'','','110.008149,28.603594');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2063,'永顺县',1942,'0,19,1942',0,'2063',2063,'','','109.976124,29.015941');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2064,'龙山县',1942,'0,19,1942',0,'2064',2064,'','','109.515961,29.225529');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2065,'广州市',20,'0,20',1,'2065,2086,2087,2088,2089,2090,2091,2092,2093,2094,2095,2096,2097',2065,NULL,NULL,'113.30765,23.120049');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2066,'韶关市',20,'0,20',1,'2066,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108',2066,NULL,NULL,'113.594461,24.80296');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2067,'深圳市',20,'0,20',1,'2067,2109,2110,2111,2112,2113,2114',2067,NULL,NULL,'114.025974,22.546054');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2068,'珠海市',20,'0,20',1,'2068,2115,2116,2117',2068,NULL,NULL,'113.562447,22.256915');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2069,'汕头市',20,'0,20',1,'2069,2118,2119,2120,2121,2122,2123,2124,2125,2126',2069,NULL,NULL,'116.72865,23.383908');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2070,'佛山市',20,'0,20',1,'2070,2127,2128,2129,2130,2131',2070,NULL,NULL,'113.134026,23.035095');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2071,'江门市',20,'0,20',1,'2071,2132,2133,2134,2135,2136,2137,2138',2071,NULL,NULL,'113.078125,22.575117');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2072,'湛江市',20,'0,20',1,'2072,2139,2140,2141,2142,2143,2144,2145,2146,2147',2072,NULL,NULL,'110.365067,21.257463');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2073,'茂名市',20,'0,20',1,'2073,2148,2149,2150,2151,2152,2153',2073,NULL,NULL,'110.931245,21.668226');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2074,'肇庆市',20,'0,20',1,'2074,2154,2155,2156,2157,2158,2159,2160,2161,2162',2074,NULL,NULL,'112.479653,23.078663');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2075,'惠州市',20,'0,20',1,'2075,2163,2164,2165,2166,2167',2075,NULL,NULL,'114.410658,23.11354');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2076,'梅州市',20,'0,20',1,'2076,2168,2169,2170,2171,2172,2173,2174,2175',2076,NULL,NULL,'116.126403,24.304571');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2077,'汕尾市',20,'0,20',1,'2077,2176,2177,2178,2179',2077,NULL,NULL,'115.372924,22.778731');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2078,'河源市',20,'0,20',1,'2078,2180,2181,2182,2183,2184,2185',2078,NULL,NULL,'114.713721,23.757251');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2079,'阳江市',20,'0,20',1,'2079,2186,2187,2188,2189',2079,NULL,NULL,'111.97701,21.871517');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2080,'清远市',20,'0,20',1,'2080,2190,2191,2192,2193,2194,2195,2196,2197',2080,NULL,NULL,'113.040773,23.698469');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2081,'东莞市',20,'0,20',1,'2081,2198,2199,2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210,2211,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221,2222,2223,2224,2225,2226,2227,2228,2229,2230',2081,NULL,NULL,'113.763434,23.043024');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2082,'中山市',20,'0,20',0,'2082',2082,NULL,NULL,'113.42206,22.545178');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2083,'潮州市',20,'0,20',1,'2083,2231,2232,2233',2083,NULL,NULL,'116.630076,23.661812');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2084,'揭阳市',20,'0,20',1,'2084,2234,2235,2236,2237,2238',2084,NULL,NULL,'116.379501,23.547999');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2085,'云浮市',20,'0,20',1,'2085,2239,2240,2241,2242,2243',2085,NULL,NULL,'112.050946,22.937976');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2086,'东山区',2065,'0,20,2065',0,'2086',2086,'','','130.247501,47.483737');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2087,'荔湾区',2065,'0,20,2065',0,'2087',2087,'','','113.234423,23.093666');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2088,'越秀区',2065,'0,20,2065',0,'2088',2088,'','','113.287833,23.139278');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2089,'海珠区',2065,'0,20,2065',0,'2089',2089,'','','113.333841,23.087629');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2090,'天河区',2065,'0,20,2065',0,'2090',2090,'','','113.385643,23.166129');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2091,'芳村区',2065,'0,20,2065',0,'2091',2091,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2092,'白云区',2065,'0,20,2065',0,'2092',2092,'','','113.331306,23.294514');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2093,'黄埔区',2065,'0,20,2065',0,'2093',2093,'','','113.492885,23.108712');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2094,'番禺区',2065,'0,20,2065',0,'2094',2094,'','','113.4168,0.934591');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2095,'花都区',2065,'0,20,2065',0,'2095',2095,'','','113.220176,23.446661');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2096,'增城市',2065,'0,20,2065',0,'2096',2096,'','','113.767687,23.346745');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2097,'从化市',2065,'0,20,2065',0,'2097',2097,'','','113.684824,23.680249');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2098,'北江区',2066,'0,20,2066',0,'2098',2098,'','','113.606842,24.810385');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2099,'武江区',2066,'0,20,2066',0,'2099',2099,'','','113.379606,24.708193');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2100,'浈江区',2066,'0,20,2066',0,'2100',2100,'','','113.57745,4.919162');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2101,'曲江县',2066,'0,20,2066',0,'2101',2101,'','','113.609891,24.687282');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2102,'始兴县',2066,'0,20,2066',0,'2102',2102,'','','114.115404,24.852706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2103,'仁化县',2066,'0,20,2066',0,'2103',2103,'','','113.785474,25.148466');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2104,'翁源县',2066,'0,20,2066',0,'2104',2104,'','','114.030428,24.426735');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2105,'乳源瑶族自治县',2066,'0,20,2066',0,'2105',2105,'','','113.175778,24.812052');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2106,'新丰县',2066,'0,20,2066',0,'2106',2106,'','','114.141775,24.070092');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2107,'乐昌市',2066,'0,20,2066',0,'2107',2107,'','','113.246956,25.244442');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2108,'南雄市',2066,'0,20,2066',0,'2108',2108,'','','114.386583,25.189905');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2109,'罗湖区',2067,'0,20,2067',0,'2109',2109,'','','114.156395,22.581934');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2110,'福田区',2067,'0,20,2067',0,'2110',2110,'','','114.055593,22.551731');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2111,'南山区',2067,'0,20,2067',0,'2111',2111,'','','130.281765,47.298821');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2112,'宝安区',2067,'0,20,2067',0,'2112',2112,'','','113.930013,22.707433');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2113,'龙岗区',2067,'0,20,2067',0,'2113',2113,'','','114.347696,22.657462');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2114,'盐田区',2067,'0,20,2067',0,'2114',2114,'','','114.278483,22.606981');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2115,'香洲区',2068,'0,20,2068',0,'2115',2115,'','','113.533731,22.2656');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2116,'斗门区',2068,'0,20,2068',0,'2116',2116,'','','113.247982,22.216637');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2117,'金湾区',2068,'0,20,2068',0,'2117',2117,'','','113.41759,2.047215');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2118,'龙湖区',2069,'0,20,2069',0,'2118',2118,'','','116.759347,23.408849');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2119,'金平区',2069,'0,20,2069',0,'2119',2119,'','','116.651794,23.399888');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2120,'濠江区',2069,'0,20,2069',0,'2120',2120,'','','116.711363,23.282443');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2121,'潮阳区',2069,'0,20,2069',0,'2121',2121,'','','116.485448,23.347254');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2122,'潮南区',2069,'0,20,2069',0,'2122',2122,'','','116.414056,23.181395');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2123,'澄海区',2069,'0,20,2069',0,'2123',2123,'','','116.814808,23.532997');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2124,'南澳县',2069,'0,20,2069',0,'2124',2124,'','','117.070405,23.439132');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2125,'潮阳市',2069,'0,20,2069',0,'2125',2125,'','','116.485448,23.347254');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2126,'澄海市',2069,'0,20,2069',0,'2126',2126,'','','116.814808,23.532997');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2127,'禅城区',2070,'0,20,2070',0,'2127',2127,'','','113.070423,23.00421');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2128,'南海区',2070,'0,20,2070',0,'2128',2128,'','','113.041381,23.078265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2129,'顺德区',2070,'0,20,2070',0,'2129',2129,'','','113.18703,2.84851');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2130,'三水区',2070,'0,20,2070',0,'2130',2130,'','','112.904677,23.294581');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2131,'高明区',2070,'0,20,2070',0,'2131',2131,'','','112.683258,22.824523');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2132,'蓬江区',2071,'0,20,2071',0,'2132',2132,'','','113.06077,2.660133');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2133,'江海区',2071,'0,20,2071',0,'2133',2133,'','','113.135371,22.554847');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2134,'新会区',2071,'0,20,2071',0,'2134',2134,'','','113.034751,22.388215');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2135,'台山市',2071,'0,20,2071',0,'2135',2135,'','','112.715908,22.034639');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2136,'开平市',2071,'0,20,2071',0,'2136',2136,'','','112.548041,22.374201');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2137,'鹤山市',2071,'0,20,2071',0,'2137',2137,'','','112.801618,22.675317');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2138,'恩平市',2071,'0,20,2071',0,'2138',2138,'','','112.286461,22.240985');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2139,'赤坎区',2072,'0,20,2072',0,'2139',2139,'','','110.379723,21.287668');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2140,'霞山区',2072,'0,20,2072',0,'2140',2140,'','','110.385196,21.204847');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2141,'坡头区',2072,'0,20,2072',0,'2141',2141,'','','110.512726,21.28382');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2142,'麻章区',2072,'0,20,2072',0,'2142',2142,'','','110.338022,21.0941');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2143,'遂溪县',2072,'0,20,2072',0,'2143',2143,'','','110.039895,21.270307');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2144,'徐闻县',2072,'0,20,2072',0,'2144',2144,'','','110.257847,20.429968');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2145,'廉江市',2072,'0,20,2072',0,'2145',2145,'','','110.141711,21.645265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2146,'雷州市',2072,'0,20,2072',0,'2146',2146,'','','110.012636,20.796584');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2147,'吴川市',2072,'0,20,2072',0,'2147',2147,'','','110.708187,21.441681');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2148,'茂南区',2073,'0,20,2073',0,'2148',2148,'','','110.86861,1.676116');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2149,'茂港区',2073,'0,20,2073',0,'2149',2149,'','','110.986287,21.579411');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2150,'电白县',2073,'0,20,2073',0,'2150',2150,'','','111.240553,21.685028');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2151,'高州市',2073,'0,20,2073',0,'2151',2151,'','','110.975605,22.035522');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2152,'化州市',2073,'0,20,2073',0,'2152',2152,'','','110.539591,21.845482');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2153,'信宜市',2073,'0,20,2073',0,'2153',2153,'','','111.125429,22.431974');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2154,'端州区',2074,'0,20,2074',0,'2154',2154,'','','112.477794,23.103323');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2155,'鼎湖区',2074,'0,20,2074',0,'2155',2155,'','','112.625249,23.208968');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2156,'大旺区',2074,'0,20,2074',0,'2156',2156,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2157,'广宁县',2074,'0,20,2074',0,'2157',2157,'','','112.443316,23.677207');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2158,'怀集县',2074,'0,20,2074',0,'2158',2158,'','','112.18024,3.974273');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2159,'封开县',2074,'0,20,2074',0,'2159',2159,'','','111.723487,23.561267');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2160,'德庆县',2074,'0,20,2074',0,'2160',2160,'','','111.987268,23.276367');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2161,'高要市',2074,'0,20,2074',0,'2161',2161,'','','112.461712,23.082587');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2162,'四会市',2074,'0,20,2074',0,'2162',2162,'','','112.687558,23.431444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2163,'惠城区',2075,'0,20,2075',0,'2163',2163,'','','114.485898,23.163063');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2164,'博罗县',2075,'0,20,2075',0,'2164',2164,'','','114.288475,23.352582');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2165,'惠东县',2075,'0,20,2075',0,'2165',2165,'','','114.955518,23.049117');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2166,'龙门县',2075,'0,20,2075',0,'2166',2166,'','','114.137243,23.666408');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2167,'惠阳市',2075,'0,20,2075',0,'2167',2167,'','','114.478072,22.804197');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2168,'梅江区',2076,'0,20,2076',0,'2168',2168,'','','116.115952,24.29075');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2169,'梅县',2076,'0,20,2076',0,'2169',2169,'','','116.199543,24.371491');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2170,'大埔县',2076,'0,20,2076',0,'2170',2170,'','','116.664124,24.347934');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2171,'丰顺县',2076,'0,20,2076',0,'2171',2171,'','','116.291395,23.916085');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2172,'五华县',2076,'0,20,2076',0,'2172',2172,'','','115.64132,3.802833');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2173,'平远县',2076,'0,20,2076',0,'2173',2173,'','','115.932656,24.695654');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2174,'蕉岭县',2076,'0,20,2076',0,'2174',2174,'','','116.196142,24.683283');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2175,'兴宁市',2076,'0,20,2076',0,'2175',2175,'','','115.7533,0.267311');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2176,'城区',2077,'0,20,2077',0,'2176',2176,'','','113.612838,37.857865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2177,'海丰县',2077,'0,20,2077',0,'2177',2177,'','','115.286322,22.9696');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2178,'陆河县',2077,'0,20,2077',0,'2178',2178,'','','115.629196,23.284407');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2179,'陆丰市',2077,'0,20,2077',0,'2179',2179,'','','115.78803,2.967877');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2180,'源城区',2078,'0,20,2078',0,'2180',2180,'','','114.654484,23.693604');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2181,'紫金县',2078,'0,20,2078',0,'2181',2181,'','','115.064471,23.525442');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2182,'龙川县',2078,'0,20,2078',0,'2182',2182,'','','115.362292,24.33468');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2183,'连平县',2078,'0,20,2078',0,'2183',2183,'','','114.542977,24.340566');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2184,'和平县',2078,'0,20,2078',0,'2184',2184,'','','115.011815,24.45211');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2185,'东源县',2078,'0,20,2078',0,'2185',2185,'','','114.826946,23.933053');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2186,'江城区',2079,'0,20,2079',0,'2186',2186,'','','111.930036,21.762804');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2187,'阳西县',2079,'0,20,2079',0,'2187',2187,'','','111.600509,21.72061');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2188,'阳东县',2079,'0,20,2079',0,'2188',2188,'','','112.066283,21.963855');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2189,'阳春市',2079,'0,20,2079',0,'2189',2189,'','','111.694449,22.223898');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2190,'清城区',2080,'0,20,2080',0,'2190',2190,'','','113.114585,23.625856');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2191,'佛冈县',2080,'0,20,2080',0,'2191',2191,'','','113.566689,23.881077');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2192,'阳山县',2080,'0,20,2080',0,'2192',2192,'','','112.68133,4.509486');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2193,'连山壮族瑶族自治县',2080,'0,20,2080',0,'2193',2193,'','','112.100806,24.515165');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2194,'连南瑶族自治县',2080,'0,20,2080',0,'2194',2194,'','','112.263642,24.574156');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2195,'清新县',2080,'0,20,2080',0,'2195',2195,'','','112.886548,23.899181');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2196,'英德市',2080,'0,20,2080',0,'2196',2196,'','','113.323169,24.22568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2197,'连州市',2080,'0,20,2080',0,'2197',2197,'','','112.459189,24.937021');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2198,'市辖区',2081,'0,20,2081',0,'2198',2198,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2199,'莞城',2081,'0,20,2081',0,'2199',2199,'','','113.764076,23.041403');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2200,'南城',2081,'0,20,2081',0,'2200',2200,'','','116.681732,27.518966');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2201,'万江',2081,'0,20,2081',0,'2201',2201,'','','113.743131,23.059139');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2202,'东城',2081,'0,20,2081',0,'2202',2202,'','','116.421885,39.938574');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2203,'石碣',2081,'0,20,2081',0,'2203',2203,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2204,'石龙',2081,'0,20,2081',0,'2204',2204,'','','112.894691,33.892094');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2205,'茶山',2081,'0,20,2081',0,'2205',2205,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2206,'石排',2081,'0,20,2081',0,'2206',2206,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2207,'企石',2081,'0,20,2081',0,'2207',2207,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2208,'横沥',2081,'0,20,2081',0,'2208',2208,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2209,'桥头',2081,'0,20,2081',0,'2209',2209,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2210,'谢岗',2081,'0,20,2081',0,'2210',2210,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2211,'东坑',2081,'0,20,2081',0,'2211',2211,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2212,'常平',2081,'0,20,2081',0,'2212',2212,'','','114.021532,22.972935');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2213,'寮步',2081,'0,20,2081',0,'2213',2213,'','','113.844362,23.02382');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2214,'大朗',2081,'0,20,2081',0,'2214',2214,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2215,'黄江',2081,'0,20,2081',0,'2215',2215,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2216,'清溪',2081,'0,20,2081',0,'2216',2216,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2217,'塘厦',2081,'0,20,2081',0,'2217',2217,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2218,'凤岗',2081,'0,20,2081',0,'2218',2218,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2219,'长安',2081,'0,20,2081',0,'2219',2219,'','','114.592622,38.076875');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2220,'虎门',2081,'0,20,2081',0,'2220',2220,'','','117.318197,36.566469');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2221,'厚街',2081,'0,20,2081',0,'2221',2221,'','','106.64806,0.479612');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2222,'沙田',2081,'0,20,2081',0,'2222',2222,'','','114.213219,22.394258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2223,'道窖',2081,'0,20,2081',0,'2223',2223,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2224,'洪梅',2081,'0,20,2081',0,'2224',2224,'','','113.621792,22.998181');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2225,'麻涌',2081,'0,20,2081',0,'2225',2225,'','','111.930366,21.739358');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2226,'中堂',2081,'0,20,2081',0,'2226',2226,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2227,'高埗',2081,'0,20,2081',0,'2227',2227,'','','113.734634,23.087341');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2228,'樟木头',2081,'0,20,2081',0,'2228',2228,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2229,'大岭山',2081,'0,20,2081',0,'2229',2229,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2230,'望牛墩',2081,'0,20,2081',0,'2230',2230,'','','117.185876,31.119428');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2231,'湘桥区',2083,'0,20,2083',0,'2231',2231,'','','116.6779,0.700044');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2232,'潮安县',2083,'0,20,2083',0,'2232',2232,'','','116.633845,23.725927');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2233,'饶平县',2083,'0,20,2083',0,'2233',2233,'','','116.906123,23.86503');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2234,'榕城区',2084,'0,20,2084',0,'2234',2234,'','','116.369224,23.529453');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2235,'揭东县',2084,'0,20,2084',0,'2235',2235,'','','116.361709,23.606752');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2236,'揭西县',2084,'0,20,2084',0,'2236',2236,'','','115.916825,23.494712');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2237,'惠来县',2084,'0,20,2084',0,'2237',2237,'','','116.224799,23.034047');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2238,'普宁市',2084,'0,20,2084',0,'2238',2238,'','','116.078166,23.288954');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2239,'云城区',2085,'0,20,2085',0,'2239',2239,'','','112.171604,22.973002');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2240,'新兴县',2085,'0,20,2085',0,'2240',2240,'','','112.217541,22.626992');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2241,'郁南县',2085,'0,20,2085',0,'2241',2241,'','','111.619938,23.043633');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2242,'云安县',2085,'0,20,2085',0,'2242',2242,'','','111.963134,22.847396');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2243,'罗定市',2085,'0,20,2085',0,'2243',2243,'','','111.493242,22.690984');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2244,'南宁市',21,'0,21',1,'2244,2258,2259,2260,2261,2262,2263,2264,2265,2266,2267,2268,2269',2244,NULL,NULL,'108.297234,22.806493');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2245,'柳州市',21,'0,21',1,'2245,2270,2271,2272,2273,2274,2275,2276,2277,2278,2279',2245,NULL,NULL,'109.422402,24.329053');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2246,'桂林市',21,'0,21',1,'2246,2280,2281,2282,2283,2284,2285,2286,2287,2288,2289,2290,2291,2292,2293,2294,2295,2296',2246,NULL,NULL,'110.26092,25.262901');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2247,'梧州市',21,'0,21',1,'2247,2297,2298,2299,2300,2301,2302,2303,2304',2247,NULL,NULL,'111.305472,23.485395');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2248,'北海市',21,'0,21',1,'2248,2305,2306,2307,2308',2248,NULL,NULL,'109.122628,21.472718');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2249,'防城港市',21,'0,21',1,'2249,2309,2310,2311,2312',2249,NULL,NULL,'108.351791,21.617398');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2250,'钦州市',21,'0,21',1,'2250,2313,2314,2315,2316',2250,NULL,NULL,'108.638798,21.97335');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2251,'贵港市',21,'0,21',1,'2251,2317,2318,2319,2320',2251,NULL,NULL,'109.613708,23.103373');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2252,'玉林市',21,'0,21',1,'2252,2321,2322,2323,2324,2325,2326',2252,NULL,NULL,'110.151676,22.643974');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2253,'百色市',21,'0,21',1,'2253,2327,2328,2329,2330,2331,2332,2333,2334,2335,2336,2337,2338',2253,NULL,NULL,'106.631821,23.901512');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2254,'贺州市',21,'0,21',1,'2254,2339,2340,2341,2342',2254,NULL,NULL,'111.552594,24.411054');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2255,'河池市',21,'0,21',1,'2255,2343,2344,2345,2346,2347,2348,2349,2350,2351,2352,2353',2255,NULL,NULL,'108.069948,24.699521');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2256,'来宾市',21,'0,21',1,'2256,2354,2355,2356,2357,2358,2359',2256,NULL,NULL,'109.231817,23.741166');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2257,'崇左市',21,'0,21',1,'2257,2360,2361,2362,2363,2364,2365,2366',2257,NULL,NULL,'107.357322,22.415455');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2258,'兴宁区',2244,'0,21,2244',0,'2258',2258,'','','108.417621,22.924531');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2259,'新城区',2244,'0,21,2244',0,'2259',2259,'','','108.991539,34.271474');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2260,'城北区',2244,'0,21,2244',0,'2260',2260,'','','101.712664,36.686368');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2261,'江南区',2244,'0,21,2244',0,'2261',2261,'','','108.135591,22.663807');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2262,'永新区',2244,'0,21,2244',0,'2262',2262,'','','114.188447,26.973089');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2263,'邕宁县',2244,'0,21,2244',0,'2263',2263,'','','108.492793,22.75918');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2264,'武鸣县',2244,'0,21,2244',0,'2264',2264,'','','108.260139,23.258066');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2265,'隆安县',2244,'0,21,2244',0,'2265',2265,'','','107.690666,23.110228');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2266,'马山县',2244,'0,21,2244',0,'2266',2266,'','','108.169604,23.664943');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2267,'上林县',2244,'0,21,2244',0,'2267',2267,'','','108.645815,23.52173');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2268,'宾阳县',2244,'0,21,2244',0,'2268',2268,'','','108.940495,23.168344');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2269,'横县',2244,'0,21,2244',0,'2269',2269,'','','109.168927,22.774919');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2270,'城中区',2245,'0,21,2245',0,'2270',2270,'','','101.777361,36.606649');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2271,'鱼峰区',2245,'0,21,2245',0,'2271',2271,'','','109.456327,24.275816');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2272,'柳南区',2245,'0,21,2245',0,'2272',2272,'','','109.343466,24.306184');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2273,'柳北区',2245,'0,21,2245',0,'2273',2273,'','','109.413915,24.471743');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2274,'柳江县',2245,'0,21,2245',0,'2274',2274,'','','109.274221,24.209539');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2275,'柳城县',2245,'0,21,2245',0,'2275',2275,'','','109.230197,24.629882');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2276,'鹿寨县',2245,'0,21,2245',0,'2276',2276,'','','109.802816,24.532198');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2277,'融安县',2245,'0,21,2245',0,'2277',2277,'','','109.51401,5.139783');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2278,'融水苗族自治县',2245,'0,21,2245',0,'2278',2278,'','','109.057863,25.343699');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2279,'三江侗族自治县',2245,'0,21,2245',0,'2279',2279,'','','109.510081,25.747566');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2280,'秀峰区',2246,'0,21,2246',0,'2280',2280,'','','110.274549,25.287138');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2281,'叠彩区',2246,'0,21,2246',0,'2281',2281,'','','110.336226,25.318874');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2282,'象山区',2246,'0,21,2246',0,'2282',2282,'','','110.284608,25.215755');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2283,'七星区',2246,'0,21,2246',0,'2283',2283,'','','110.356588,25.26467');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2284,'雁山区',2246,'0,21,2246',0,'2284',2284,'','','110.371485,25.112806');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2285,'阳朔县',2246,'0,21,2246',0,'2285',2285,'','','110.482929,24.857282');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2286,'临桂县',2246,'0,21,2246',0,'2286',2286,'','','110.071405,25.306238');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2287,'灵川县',2246,'0,21,2246',0,'2287',2287,'','','110.418129,25.381009');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2288,'全州县',2246,'0,21,2246',0,'2288',2288,'','','111.026435,25.936465');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2289,'兴安县',2246,'0,21,2246',0,'2289',2289,'','','110.601021,25.607031');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2290,'永福县',2246,'0,21,2246',0,'2290',2290,'','','109.91693,4.99733');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2291,'灌阳县',2246,'0,21,2246',0,'2291',2291,'','','111.077708,25.458881');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2292,'龙胜各族自治县',2246,'0,21,2246',0,'2292',2292,'','','110.01025,5.868328');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2293,'资源县',2246,'0,21,2246',0,'2293',2293,'','','110.598427,26.067857');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2294,'平乐县',2246,'0,21,2246',0,'2294',2294,'','','110.79769,4.55892');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2295,'荔蒲县',2246,'0,21,2246',0,'2295',2295,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2296,'恭城瑶族自治县',2246,'0,21,2246',0,'2296',2296,'','','110.909447,24.949326');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2297,'万秀区',2247,'0,21,2247',0,'2297',2297,'','','111.421626,23.563455');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2298,'蝶山区',2247,'0,21,2247',0,'2298',2298,'','','111.311404,23.545602');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2299,'长洲区',2247,'0,21,2247',0,'2299',2299,'','','111.189914,23.5602');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2300,'市郊区',2247,'0,21,2247',0,'2300',2300,'','','108.316953,22.847725');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2301,'苍梧县',2247,'0,21,2247',0,'2301',2301,'','','111.298352,23.626738');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2302,'藤县',2247,'0,21,2247',0,'2302',2302,'','','110.778838,23.510903');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2303,'蒙山县',2247,'0,21,2247',0,'2303',2303,'','','110.561223,24.133851');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2304,'岑溪市',2247,'0,21,2247',0,'2304',2304,'','','111.02872,2.925291');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2305,'海城区',2248,'0,21,2248',0,'2305',2305,'','','109.165344,21.518621');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2306,'银海区',2248,'0,21,2248',0,'2306',2306,'','','109.251591,21.489723');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2307,'铁山港区',2248,'0,21,2248',0,'2307',2307,'','','109.422489,21.574915');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2308,'合浦县',2248,'0,21,2248',0,'2308',2308,'','','109.335393,21.740444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2309,'港口区',2249,'0,21,2249',0,'2309',2309,'','','108.449166,21.662036');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2310,'防城区',2249,'0,21,2249',0,'2310',2310,'','','108.02974,1.764842');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2311,'上思县',2249,'0,21,2249',0,'2311',2311,'','','107.902344,22.053625');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2312,'东兴市',2249,'0,21,2249',0,'2312',2312,'','','108.061081,21.62717');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2313,'钦南区',2250,'0,21,2250',0,'2313',2313,'','','108.816524,21.896681');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2314,'钦北区',2250,'0,21,2250',0,'2314',2314,'','','108.528676,22.171133');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2315,'灵山县',2250,'0,21,2250',0,'2315',2315,'','','109.147748,22.315716');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2316,'浦北县',2250,'0,21,2250',0,'2316',2316,'','','109.542367,22.271304');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2317,'港北区',2251,'0,21,2251',0,'2317',2317,'','','109.689558,23.244655');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2318,'港南区',2251,'0,21,2251',0,'2318',2318,'','','109.709851,22.874751');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2319,'平南县',2251,'0,21,2251',0,'2319',2319,'','','110.412601,23.538683');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2320,'桂平市',2251,'0,21,2251',0,'2320',2320,'','','110.087119,23.333281');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2321,'玉州区',2252,'0,21,2252',0,'2321',2321,'','','110.064534,22.557213');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2322,'容县',2252,'0,21,2252',0,'2322',2322,'','','110.610277,22.831614');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2323,'陆川县',2252,'0,21,2252',0,'2323',2323,'','','110.272113,22.251747');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2324,'博白县',2252,'0,21,2252',0,'2324',2324,'','','109.878905,22.066766');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2325,'兴业县',2252,'0,21,2252',0,'2325',2325,'','','109.928611,22.798462');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2326,'北流市',2252,'0,21,2252',0,'2326',2326,'','','110.467055,22.52889');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2327,'右江区',2253,'0,21,2253',0,'2327',2327,'','','106.505596,23.941866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2328,'田阳县',2253,'0,21,2253',0,'2328',2328,'','','106.81127,3.729759');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2329,'田东县',2253,'0,21,2253',0,'2329',2329,'','','107.191637,23.614585');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2330,'平果县',2253,'0,21,2253',0,'2330',2330,'','','107.577512,23.540954');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2331,'德保县',2253,'0,21,2253',0,'2331',2331,'','','106.594285,23.382215');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2332,'靖西县',2253,'0,21,2253',0,'2332',2332,'','','106.321095,23.149606');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2333,'那坡县',2253,'0,21,2253',0,'2333',2333,'','','105.834705,23.247546');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2334,'凌云县',2253,'0,21,2253',0,'2334',2334,'','','106.648379,24.363726');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2335,'乐业县',2253,'0,21,2253',0,'2335',2335,'','','106.517899,24.829664');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2336,'田林县',2253,'0,21,2253',0,'2336',2336,'','','105.999827,24.392538');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2337,'西林县',2253,'0,21,2253',0,'2337',2337,'','','105.097327,24.391378');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2338,'隆林各族自治县',2253,'0,21,2253',0,'2338',2338,'','','105.303213,24.680433');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2339,'八步区',2254,'0,21,2254',0,'2339',2339,'','','111.688352,24.309336');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2340,'昭平县',2254,'0,21,2254',0,'2340',2340,'','','110.976908,24.108073');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2341,'钟山县',2254,'0,21,2254',0,'2341',2341,'','','111.248833,24.513865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2342,'富川瑶族自治县',2254,'0,21,2254',0,'2342',2342,'','','111.313243,24.891614');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2343,'金城江区',2255,'0,21,2255',0,'2343',2343,'','','107.873444,24.660762');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2344,'南丹县',2255,'0,21,2255',0,'2344',2344,'','','107.468001,25.119439');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2345,'天峨县',2255,'0,21,2255',0,'2345',2345,'','','106.996594,25.018834');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2346,'凤山县',2255,'0,21,2255',0,'2346',2346,'','','107.019716,24.560065');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2347,'东兰县',2255,'0,21,2255',0,'2347',2347,'','','107.413534,24.5116');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2348,'罗城仫佬族自治县',2255,'0,21,2255',0,'2348',2348,'','','108.827191,24.904568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2349,'环江毛南族自治县',2255,'0,21,2255',0,'2349',2349,'','','108.291985,25.104531');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2350,'巴马瑶族自治县',2255,'0,21,2255',0,'2350',2350,'','','107.207666,24.157596');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2351,'都安瑶族自治县',2255,'0,21,2255',0,'2351',2351,'','','108.118061,24.169778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2352,'大化瑶族自治县',2255,'0,21,2255',0,'2352',2352,'','','107.711959,23.970745');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2353,'宜州市',2255,'0,21,2255',0,'2353',2353,'','','108.546552,24.481177');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2354,'兴宾区',2256,'0,21,2256',0,'2354',2354,'','','109.193205,23.664271');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2355,'忻城县',2256,'0,21,2256',0,'2355',2355,'','','108.752319,24.018747');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2356,'象州县',2256,'0,21,2256',0,'2356',2356,'','','109.771968,24.01917');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2357,'武宣县',2256,'0,21,2256',0,'2357',2357,'','','109.68768,3.610721');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2358,'金秀瑶族自治县',2256,'0,21,2256',0,'2358',2358,'','','110.137776,24.089877');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2359,'合山市',2256,'0,21,2256',0,'2359',2359,'','','108.94254,3.802816');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2360,'江洲区',2257,'0,21,2257',0,'2360',2360,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2361,'扶绥县',2257,'0,21,2257',0,'2361',2361,'','','107.829125,22.524058');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2362,'宁明县',2257,'0,21,2257',0,'2362',2362,'','','107.294659,22.005062');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2363,'龙州县',2257,'0,21,2257',0,'2363',2363,'','','106.858539,22.431578');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2364,'大新县',2257,'0,21,2257',0,'2364',2364,'','','107.137109,22.813463');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2365,'天等县',2257,'0,21,2257',0,'2365',2365,'','','107.081339,23.117161');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2366,'凭祥市',2257,'0,21,2257',0,'2366',2366,'','','106.837053,22.093647');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2367,'海口市',22,'0,22',1,'2367,2370,2371,2372,2373',2367,NULL,NULL,'110.330802,20.022071');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2368,'三亚市',22,'0,22',0,'2368',2368,NULL,NULL,'109.522771,18.257776');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2369,'省直辖县级行政单位',22,'0,22',1,'2369,2374,2375,2376,2377,2378,2379,2380,2381,2382,2383,2384,2385,2386,2387,2388,2389,2390,2391',2369,'','','118.785346,31.779079');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2370,'秀英区',2367,'0,22,2367',0,'2370',2370,'','','110.2632,0.884344');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2371,'龙华区',2367,'0,22,2367',0,'2371',2371,'','','110.335224,19.905351');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2372,'琼山区',2367,'0,22,2367',0,'2372',2372,'','','110.48011,9.741334');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2373,'美兰区',2367,'0,22,2367',0,'2373',2373,'','','110.507269,19.942909');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2374,'五指山市',2369,'0,22,2369',0,'2374',2374,NULL,NULL,'109.51775,18.831306');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2375,'琼海市',2369,'0,22,2369',0,'2375',2375,NULL,NULL,'110.414359,19.21483');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2376,'儋州市',2369,'0,22,2369',0,'2376',2376,NULL,NULL,'109.413973,19.571153');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2377,'文昌市',2369,'0,22,2369',0,'2377',2377,NULL,NULL,'110.780909,19.750947');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2378,'万宁市',2369,'0,22,2369',0,'2378',2378,NULL,NULL,'110.292505,18.839886');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2379,'东方市',2369,'0,22,2369',0,'2379',2379,NULL,NULL,'108.85101,18.998161');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2380,'定安县',2369,'0,22,2369',0,'2380',2380,NULL,NULL,'110.32009,19.490991');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2381,'屯昌县',2369,'0,22,2369',0,'2381',2381,NULL,NULL,'110.063364,19.347749');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2382,'澄迈县',2369,'0,22,2369',0,'2382',2382,NULL,NULL,'109.996736,19.693135');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2383,'临高县',2369,'0,22,2369',0,'2383',2383,NULL,NULL,'109.724101,19.805922');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2384,'白沙黎族自治县',2369,'0,22,2369',0,'2384',2384,NULL,NULL,'109.358586,19.216056');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2385,'昌江黎族自治县',2369,'0,22,2369',0,'2385',2385,NULL,NULL,'109.0113,19.222483');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2386,'乐东黎族自治县',2369,'0,22,2369',0,'2386',2386,NULL,NULL,'109.062698,18.658614');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2387,'陵水黎族自治县',2369,'0,22,2369',0,'2387',2387,NULL,NULL,'109.948661,18.575985');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2388,'保亭黎族苗族自治县',2369,'0,22,2369',0,'2388',2388,NULL,NULL,'109.656113,18.597592');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2389,'琼中黎族苗族自治县',2369,'0,22,2369',0,'2389',2389,NULL,NULL,'109.861849,19.039771');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2390,'西沙群岛',2369,'0,22,2369',0,'2390',2390,'','','111.673087,16.497085');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2391,'南沙群岛',2369,'0,22,2369',0,'2391',2391,'','','112.660302,4.974366');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2392,'成都市',23,'0,23',1,'2392,2413,2414,2415,2416,2417,2418,2419,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429,2430,2431',2392,NULL,NULL,'104.067923,30.679943');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2393,'自贡市',23,'0,23',1,'2393,2432,2433,2434,2435,2436,2437',2393,NULL,NULL,'104.776071,29.359157');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2394,'攀枝花市',23,'0,23',1,'2394,2438,2439,2440,2441,2442',2394,NULL,NULL,'101.722423,26.587571');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2395,'泸州市',23,'0,23',1,'2395,2443,2444,2445,2446,2447,2448,2449',2395,NULL,NULL,'105.44397,28.89593');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2396,'德阳市',23,'0,23',1,'2396,2450,2451,2452,2453,2454,2455',2396,NULL,NULL,'104.402398,31.13114');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2397,'绵阳市',23,'0,23',1,'2397,2456,2457,2458,2459,2460,2461,2462,2463,2464',2397,NULL,NULL,'104.705519,31.504701');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2398,'广元市',23,'0,23',1,'2398,2465,2466,2467,2468,2469,2470,2471',2398,NULL,NULL,'105.819687,32.44104');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2399,'遂宁市',23,'0,23',1,'2399,2472,2473,2474,2475',2399,NULL,NULL,'105.564888,30.557491');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2400,'内江市',23,'0,23',1,'2400,2476,2477,2478,2479,2480',2400,NULL,NULL,'105.073056,29.599462');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2401,'乐山市',23,'0,23',1,'2401,2481,2482,2483,2484,2485,2486,2487,2488,2489,2490,2491',2401,NULL,NULL,'103.760824,29.600958');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2402,'南充市',23,'0,23',1,'2402,2492,2493,2494,2495,2496,2497,2498,2499,2500',2402,NULL,NULL,'106.105554,30.800965');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2403,'眉山市',23,'0,23',1,'2403,2501,2502,2503,2504,2505,2506',2403,NULL,NULL,'103.84143,30.061115');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2404,'宜宾市',23,'0,23',1,'2404,2507,2508,2509,2510,2511,2512,2513,2514,2515,2516',2404,NULL,NULL,'104.633019,28.769675');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2405,'广安市',23,'0,23',1,'2405,2517,2518,2519,2520,2521',2405,NULL,NULL,'106.63572,30.463984');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2406,'达州市',23,'0,23',1,'2406,2522,2523,2524,2525,2526,2527,2528',2406,NULL,NULL,'107.494973,31.214199');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2407,'雅安市',23,'0,23',1,'2407,2529,2530,2531,2532,2533,2534,2535,2536',2407,NULL,NULL,'103.009356,29.999716');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2408,'巴中市',23,'0,23',1,'2408,2537,2538,2539,2540',2408,NULL,NULL,'106.757916,31.869189');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2409,'资阳市',23,'0,23',1,'2409,2541,2542,2543,2544',2409,NULL,NULL,'104.63593,30.132191');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2410,'阿坝藏族羌族自治州',23,'0,23',1,'2410,2545,2546,2547,2548,2549,2550,2551,2552,2553,2554,2555,2556,2557',2410,'','','102.228565,31.905763');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2411,'甘孜藏族自治州',23,'0,23',1,'2411,2558,2559,2560,2561,2562,2563,2564,2565,2566,2567,2568,2569,2570,2571,2572,2573,2574,2575',2411,'','','101.969232,30.055144');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2412,'凉山彝族自治州',23,'0,23',1,'2412,2576,2577,2578,2579,2580,2581,2582,2583,2584,2585,2586,2587,2588,2589,2590,2591,2592',2412,'','','102.259591,27.892393');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2413,'锦江区',2392,'0,23,2392',0,'2413',2413,'','','104.124269,30.606302');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2414,'青羊区',2392,'0,23,2392',0,'2414',2414,'','','103.988429,30.685102');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2415,'金牛区',2392,'0,23,2392',0,'2415',2415,'','','104.061377,30.735622');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2416,'武侯区',2392,'0,23,2392',0,'2416',2416,'','','104.04124,0.612882');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2417,'成华区',2392,'0,23,2392',0,'2417',2417,'','','104.150032,30.69504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2418,'龙泉驿区',2392,'0,23,2392',0,'2418',2418,'','','104.301181,30.603368');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2419,'青白江区',2392,'0,23,2392',0,'2419',2419,'','','104.34643,0.796354');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2420,'新都区',2392,'0,23,2392',0,'2420',2420,'','','104.116583,30.839504');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2421,'金堂县',2392,'0,23,2392',0,'2421',2421,'','','104.615371,30.728613');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2422,'双流县',2392,'0,23,2392',0,'2422',2422,'','','104.040899,30.459478');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2423,'温江县',2392,'0,23,2392',0,'2423',2423,'','','103.841501,30.705853');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2424,'郫县',2392,'0,23,2392',0,'2424',2424,'','','103.884625,30.839642');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2425,'大邑县',2392,'0,23,2392',0,'2425',2425,'','','103.388452,30.614941');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2426,'蒲江县',2392,'0,23,2392',0,'2426',2426,'','','103.497738,30.239939');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2427,'新津县',2392,'0,23,2392',0,'2427',2427,'','','103.832177,30.427866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2428,'都江堰市',2392,'0,23,2392',0,'2428',2428,'','','103.637342,31.039124');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2429,'彭州市',2392,'0,23,2392',0,'2429',2429,'','','103.889866,31.148577');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2430,'邛崃市',2392,'0,23,2392',0,'2430',2430,'','','103.376512,30.388736');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2431,'崇州市',2392,'0,23,2392',0,'2431',2431,'','','103.529467,30.719641');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2432,'自流井区',2393,'0,23,2393',0,'2432',2432,'','','104.707854,29.282614');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2433,'贡井区',2393,'0,23,2393',0,'2433',2433,'','','104.602735,29.314591');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2434,'大安区',2393,'0,23,2393',0,'2434',2434,'','','104.877566,29.411548');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2435,'沿滩区',2393,'0,23,2393',0,'2435',2435,'','','104.854763,29.24264');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2436,'荣县',2393,'0,23,2393',0,'2436',2436,'','','104.372408,29.398978');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2437,'富顺县',2393,'0,23,2393',0,'2437',2437,'','','105.02222,9.152297');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2438,'东区',2394,'0,23,2394',0,'2438',2438,'','','114.235394,22.276112');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2439,'西区',2394,'0,23,2394',0,'2439',2439,'','','101.555332,26.610869');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2440,'仁和区',2394,'0,23,2394',0,'2440',2440,'','','101.669702,26.567907');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2441,'米易县',2394,'0,23,2394',0,'2441',2441,'','','102.000726,26.932749');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2442,'盐边县',2394,'0,23,2394',0,'2442',2442,'','','101.58605,6.940087');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2443,'江阳区',2395,'0,23,2395',0,'2443',2443,'','','105.371713,28.876901');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2444,'纳溪区',2395,'0,23,2395',0,'2444',2444,'','','105.390606,28.614041');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2445,'龙马潭区',2395,'0,23,2395',0,'2445',2445,'','','105.437842,28.98746');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2446,'泸县',2395,'0,23,2395',0,'2446',2446,'','','105.508267,29.12492');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2447,'合江县',2395,'0,23,2395',0,'2447',2447,'','','105.9316,0.751865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2448,'叙永县',2395,'0,23,2395',0,'2448',2448,'','','105.468592,28.099207');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2449,'古蔺县',2395,'0,23,2395',0,'2449',2449,'','','105.936293,27.983319');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2450,'旌阳区',2396,'0,23,2396',0,'2450',2450,'','','104.415258,31.179805');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2451,'中江县',2396,'0,23,2396',0,'2451',2451,'','','104.804952,30.887114');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2452,'罗江县',2396,'0,23,2396',0,'2452',2452,'','','104.53541,1.320265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2453,'广汉市',2396,'0,23,2396',0,'2453',2453,'','','104.298476,31.006481');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2454,'什邡市',2396,'0,23,2396',0,'2454',2454,'','','104.019871,31.293694');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2455,'绵竹市',2396,'0,23,2396',0,'2455',2455,'','','104.129294,31.436657');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2456,'涪城区',2397,'0,23,2397',0,'2456',2456,'','','104.670514,31.435735');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2457,'游仙区',2397,'0,23,2397',0,'2457',2457,'','','104.98158,1.518816');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2458,'三台县',2397,'0,23,2397',0,'2458',2458,'','','105.042581,31.118872');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2459,'盐亭县',2397,'0,23,2397',0,'2459',2459,'','','105.479071,31.247943');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2460,'安县',2397,'0,23,2397',0,'2460',2460,'','','104.368786,31.589182');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2461,'梓潼县',2397,'0,23,2397',0,'2461',2461,'','','105.193834,31.653621');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2462,'北川县',2397,'0,23,2397',0,'2462',2462,'','','104.459694,31.830042');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2463,'平武县',2397,'0,23,2397',0,'2463',2463,'','','104.404308,32.446912');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2464,'江油市',2397,'0,23,2397',0,'2464',2464,'','','104.933149,31.952427');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2465,'市中区',2398,'0,23,2398',0,'2465',2465,NULL,NULL,'117.002545,36.656617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2466,'元坝区',2398,'0,23,2398',0,'2466',2466,'','','105.883379,32.149903');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2467,'朝天区',2398,'0,23,2398',0,'2467',2467,'','','106.022164,32.708417');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2468,'旺苍县',2398,'0,23,2398',0,'2468',2468,'','','106.401823,32.37214');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2469,'青川县',2398,'0,23,2398',0,'2469',2469,'','','105.190447,32.51586');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2470,'剑阁县',2398,'0,23,2398',0,'2470',2470,'','','105.503021,31.921948');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2471,'苍溪县',2398,'0,23,2398',0,'2471',2471,'','','106.113283,31.918552');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2472,'市中区',2399,'0,23,2399',0,'2472',2472,NULL,NULL,'117.002545,36.656617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2473,'蓬溪县',2399,'0,23,2399',0,'2473',2473,'','','105.716088,30.657491');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2474,'射洪县',2399,'0,23,2399',0,'2474',2474,'','','105.388245,30.908079');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2475,'大英县',2399,'0,23,2399',0,'2475',2475,'','','105.256372,30.580191');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2476,'市中区',2400,'0,23,2400',0,'2476',2476,NULL,NULL,'117.002545,36.656617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2477,'东兴区',2400,'0,23,2400',0,'2477',2477,'','','105.202169,29.628089');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2478,'威远县',2400,'0,23,2400',0,'2478',2478,'','','104.593976,29.599589');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2479,'资中县',2400,'0,23,2400',0,'2479',2479,'','','104.807466,29.813836');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2480,'隆昌县',2400,'0,23,2400',0,'2480',2480,'','','105.252958,29.367869');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2481,'市中区',2401,'0,23,2401',0,'2481',2481,NULL,NULL,'117.002545,36.656617');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2482,'沙湾区',2401,'0,23,2401',0,'2482',2482,'','','103.604548,29.31641');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2483,'五通桥区',2401,'0,23,2401',0,'2483',2483,'','','103.846633,29.395444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2484,'金口河区',2401,'0,23,2401',0,'2484',2484,'','','103.073366,29.29382');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2485,'犍为县',2401,'0,23,2401',0,'2485',2485,'','','103.980199,29.23119');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2486,'井研县',2401,'0,23,2401',0,'2486',2486,'','','104.05533,9.644501');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2487,'夹江县',2401,'0,23,2401',0,'2487',2487,'','','103.559263,29.776107');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2488,'沐川县',2401,'0,23,2401',0,'2488',2488,'','','103.826503,29.006905');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2489,'峨边彝族自治县',2401,'0,23,2401',0,'2489',2489,'','','103.21674,9.050416');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2490,'马边彝族自治县',2401,'0,23,2401',0,'2490',2490,'','','103.481388,28.776739');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2491,'峨眉山市',2401,'0,23,2401',0,'2491',2491,'','','103.400912,29.507004');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2492,'顺庆区',2402,'0,23,2402',0,'2492',2492,'','','106.115798,30.949625');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2493,'高坪区',2402,'0,23,2402',0,'2493',2493,'','','106.259759,30.754684');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2494,'嘉陵区',2402,'0,23,2402',0,'2494',2494,'','','105.938703,30.665452');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2495,'南部县',2402,'0,23,2402',0,'2495',2495,'','','105.923514,31.349803');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2496,'营山县',2402,'0,23,2402',0,'2496',2496,'','','106.718527,31.162323');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2497,'蓬安县',2402,'0,23,2402',0,'2497',2497,'','','106.428917,31.007076');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2498,'仪陇县',2402,'0,23,2402',0,'2498',2498,'','','106.534725,31.443593');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2499,'西充县',2402,'0,23,2402',0,'2499',2499,'','','105.857332,31.063877');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2500,'阆中市',2402,'0,23,2402',0,'2500',2500,'','','106.078093,31.602117');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2501,'东坡区',2403,'0,23,2403',0,'2501',2501,'','','103.748333,30.057372');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2502,'仁寿县',2403,'0,23,2403',0,'2502',2502,'','','104.225519,29.985869');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2503,'彭山县',2403,'0,23,2403',0,'2503',2503,'','','103.865691,30.254453');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2504,'洪雅县',2403,'0,23,2403',0,'2504',2504,'','','103.180159,29.694316');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2505,'丹棱县',2403,'0,23,2403',0,'2505',2505,'','','103.434513,30.014803');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2506,'青神县',2403,'0,23,2403',0,'2506',2506,'','','103.837508,29.82276');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2507,'翠屏区',2404,'0,23,2404',0,'2507',2507,'','','104.693255,28.81582');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2508,'宜宾县',2404,'0,23,2404',0,'2508',2508,'','','104.38271,8.906871');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2509,'南溪县',2404,'0,23,2404',0,'2509',2509,'','','104.941453,28.897216');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2510,'江安县',2404,'0,23,2404',0,'2510',2510,'','','105.128778,28.663533');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2511,'长宁县',2404,'0,23,2404',0,'2511',2511,'','','104.931149,28.515434');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2512,'高县',2404,'0,23,2404',0,'2512',2512,'','','104.593066,28.4632');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2513,'珙县',2404,'0,23,2404',0,'2513',2513,'','','104.806618,28.19699');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2514,'筠连县',2404,'0,23,2404',0,'2514',2514,'','','104.588433,28.042099');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2515,'兴文县',2404,'0,23,2404',0,'2515',2515,'','','105.141226,28.255538');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2516,'屏山县',2404,'0,23,2404',0,'2516',2516,'','','103.999118,28.702429');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2517,'广安区',2405,'0,23,2405',0,'2517',2517,'','','106.758912,30.59925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2518,'岳池县',2405,'0,23,2405',0,'2518',2518,'','','106.420833,30.540769');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2519,'武胜县',2405,'0,23,2405',0,'2519',2519,'','','106.231366,30.373905');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2520,'邻水县',2405,'0,23,2405',0,'2520',2520,'','','107.003334,30.263284');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2521,'华莹市',2405,'0,23,2405',0,'2521',2521,'','','114.289176,30.574889');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2522,'通川区',2406,'0,23,2406',0,'2522',2522,'','','107.519204,31.238764');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2523,'达县',2406,'0,23,2406',0,'2523',2523,'','','107.424315,31.182047');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2524,'宣汉县',2406,'0,23,2406',0,'2524',2524,'','','107.936033,31.519798');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2525,'开江县',2406,'0,23,2406',0,'2525',2525,'','','107.891012,31.051587');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2526,'大竹县',2406,'0,23,2406',0,'2526',2526,'','','107.279877,30.690772');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2527,'渠县',2406,'0,23,2406',0,'2527',2527,'','','106.987602,30.948814');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2528,'万源市',2406,'0,23,2406',0,'2528',2528,'','','107.993811,31.986241');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2529,'雨城区',2407,'0,23,2407',0,'2529',2529,'','','103.038405,29.928507');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2530,'名山县',2407,'0,23,2407',0,'2530',2530,'','','103.227349,30.132433');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2531,'荥经县',2407,'0,23,2407',0,'2531',2531,'','','102.691946,29.740878');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2532,'汉源县',2407,'0,23,2407',0,'2532',2532,'','','102.625136,29.431576');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2533,'石棉县',2407,'0,23,2407',0,'2533',2533,'','','102.29397,9.235485');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2534,'天全县',2407,'0,23,2407',0,'2534',2534,'','','102.578305,30.078875');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2535,'芦山县',2407,'0,23,2407',0,'2535',2535,'','','103.018099,30.440282');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2536,'宝兴县',2407,'0,23,2407',0,'2536',2536,'','','102.716894,30.56765');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2537,'巴州区',2408,'0,23,2408',0,'2537',2537,'','','106.739266,31.785303');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2538,'通江县',2408,'0,23,2408',0,'2538',2538,'','','107.352775,32.136407');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2539,'南江县',2408,'0,23,2408',0,'2539',2539,'','','106.836181,32.337239');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2540,'平昌县',2408,'0,23,2408',0,'2540',2540,'','','107.167357,31.597715');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2541,'雁江区',2409,'0,23,2409',0,'2541',2541,'','','104.755417,30.091647');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2542,'安岳县',2409,'0,23,2409',0,'2542',2542,'','','105.400876,29.999677');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2543,'乐至县',2409,'0,23,2409',0,'2543',2543,'','','105.028316,30.313945');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2544,'简阳市',2409,'0,23,2409',0,'2544',2544,'','','104.536305,30.393006');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2545,'汶川县',2410,'0,23,2410',0,'2545',2545,'','','103.294317,31.168774');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2546,'理县',2410,'0,23,2410',0,'2546',2546,'','','103.021281,31.579557');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2547,'茂县',2410,'0,23,2410',0,'2547',2547,'','','103.635043,31.855708');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2548,'松潘县',2410,'0,23,2410',0,'2548',2548,'','','103.532712,32.625459');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2549,'九寨沟县',2410,'0,23,2410',0,'2549',2549,'','','103.934044,33.317446');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2550,'金川县',2410,'0,23,2410',0,'2550',2550,'','','101.804769,31.52757');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2551,'小金县',2410,'0,23,2410',0,'2551',2551,'','','102.475493,31.135396');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2552,'黑水县',2410,'0,23,2410',0,'2552',2552,'','','103.055487,32.16531');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2553,'马尔康县',2410,'0,23,2410',0,'2553',2553,'','','102.023305,32.019304');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2554,'壤塘县',2410,'0,23,2410',0,'2554',2554,'','','101.059717,32.148226');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2555,'阿坝县',2410,'0,23,2410',0,'2555',2555,'','','101.787569,32.890762');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2556,'若尔盖县',2410,'0,23,2410',0,'2556',2556,'','','102.895582,33.668819');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2557,'红原县',2410,'0,23,2410',0,'2557',2557,'','','102.64115,2.736132');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2558,'康定县',2411,'0,23,2411',0,'2558',2558,'','','101.755331,29.957989');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2559,'泸定县',2411,'0,23,2411',0,'2559',2559,'','','102.120066,29.747744');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2560,'丹巴县',2411,'0,23,2411',0,'2560',2560,'','','101.752398,30.967074');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2561,'九龙县',2411,'0,23,2411',0,'2561',2561,'','','101.63508,8.917804');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2562,'雅江县',2411,'0,23,2411',0,'2562',2562,'','','100.96924,9.922924');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2563,'道孚县',2411,'0,23,2411',0,'2563',2563,'','','101.194842,30.870126');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2564,'炉霍县',2411,'0,23,2411',0,'2564',2564,'','','100.675871,31.492155');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2565,'甘孜县',2411,'0,23,2411',0,'2565',2565,'','','99.762677,2.029329');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2566,'新龙县',2411,'0,23,2411',0,'2566',2566,'','','100.287518,30.945763');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2567,'德格县',2411,'0,23,2411',0,'2567',2567,'','','98.967481,2.059409');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2568,'白玉县',2411,'0,23,2411',0,'2568',2568,'','','99.291922,1.052586');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2569,'石渠县',2411,'0,23,2411',0,'2569',2569,'','','98.204993,3.187627');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2570,'色达县',2411,'0,23,2411',0,'2570',2570,'','','100.213885,32.35662');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2571,'理塘县',2411,'0,23,2411',0,'2571',2571,'','','100.18511,9.895283');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2572,'巴塘县',2411,'0,23,2411',0,'2572',2572,'','','99.300291,9.916288');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2573,'乡城县',2411,'0,23,2411',0,'2573',2573,'','','99.738452,9.117376');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2574,'稻城县',2411,'0,23,2411',0,'2574',2574,'','','100.265891,28.766497');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2575,'得荣县',2411,'0,23,2411',0,'2575',2575,'','','99.324235,8.736358');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2576,'西昌市',2412,'0,23,2412',0,'2576',2576,'','','102.117888,27.863377');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2577,'木里藏族自治县',2412,'0,23,2412',0,'2577',2577,'','','100.953057,28.360344');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2578,'盐源县',2412,'0,23,2412',0,'2578',2578,'','','101.467624,27.603028');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2579,'德昌县',2412,'0,23,2412',0,'2579',2579,'','','102.191734,27.331194');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2580,'会理县',2412,'0,23,2412',0,'2580',2580,'','','102.263927,26.591301');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2581,'会东县',2412,'0,23,2412',0,'2581',2581,'','','102.742967,26.573608');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2582,'宁南县',2412,'0,23,2412',0,'2582',2582,'','','102.716634,27.09125');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2583,'普格县',2412,'0,23,2412',0,'2583',2583,'','','102.568091,27.548286');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2584,'布拖县',2412,'0,23,2412',0,'2584',2584,'','','102.881928,27.599974');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2585,'金阳县',2412,'0,23,2412',0,'2585',2585,'','','103.201059,27.706169');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2586,'昭觉县',2412,'0,23,2412',0,'2586',2586,'','','102.832818,28.013719');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2587,'喜德县',2412,'0,23,2412',0,'2587',2587,'','','102.449968,28.196489');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2588,'冕宁县',2412,'0,23,2412',0,'2588',2588,'','','102.068914,28.514859');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2589,'越西县',2412,'0,23,2412',0,'2589',2589,'','','102.628681,28.59219');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2590,'甘洛县',2412,'0,23,2412',0,'2590',2590,'','','102.767401,28.974853');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2591,'美姑县',2412,'0,23,2412',0,'2591',2591,'','','103.10173,8.443545');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2592,'雷波县',2412,'0,23,2412',0,'2592',2592,'','','103.512505,28.279341');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2593,'贵阳市',24,'0,24',1,'2593,2602,2603,2604,2605,2606,2607,2608,2609,2610,2611',2593,NULL,NULL,'106.709177,26.629907');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2594,'六盘水市',24,'0,24',1,'2594,2612,2613,2614,2615',2594,NULL,NULL,'104.852087,26.591866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2595,'遵义市',24,'0,24',1,'2595,2616,2617,2618,2619,2620,2621,2622,2623,2624,2625,2626,2627,2628',2595,NULL,NULL,'106.93126,27.699961');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2596,'安顺市',24,'0,24',1,'2596,2629,2630,2631,2632,2633,2634',2596,NULL,NULL,'105.92827,26.228595');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2597,'铜仁地区',24,'0,24',1,'2597,2635,2636,2637,2638,2639,2640,2641,2642,2643,2644',2597,NULL,NULL,'109.196161,27.726271');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2598,'黔西南州',24,'0,24',1,'2598,2645,2646,2647,2648,2649,2650,2651,2652',2598,'','','106.120805,27.050413');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2599,'毕节地区',24,'0,24',1,'2599,2653,2654,2655,2656,2657,2658,2659',2599,NULL,NULL,'105.300492,27.302612');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2600,'黔东南苗族侗族自治州',24,'0,24',1,'2600,2660,2661,2662,2663,2664,2665,2666,2667,2668,2669,2670,2671,2672,2673,2674,2675',2600,'','','107.985353,26.583992');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2601,'黔南布依族苗族自治州',24,'0,24',1,'2601,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687',2601,'','','107.523205,26.264536');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2602,'南明区',2593,'0,24,2593',0,'2602',2602,'','','106.724173,26.541413');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2603,'云岩区',2593,'0,24,2593',0,'2603',2603,'','','106.717914,26.603525');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2604,'花溪区',2593,'0,24,2593',0,'2604',2604,'','','106.665273,26.397917');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2605,'乌当区',2593,'0,24,2593',0,'2605',2605,'','','106.73345,6.688326');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2606,'白云区',2593,'0,24,2593',0,'2606',2606,'','','113.331306,23.294514');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2607,'小河区',2593,'0,24,2593',0,'2607',2607,'','','106.70098,6.496945');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2608,'开阳县',2593,'0,24,2593',0,'2608',2608,'','','107.046881,27.075427');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2609,'息烽县',2593,'0,24,2593',0,'2609',2609,'','','106.68198,7.150808');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2610,'修文县',2593,'0,24,2593',0,'2610',2610,'','','106.590593,26.931538');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2611,'清镇市',2593,'0,24,2593',0,'2611',2611,'','','106.353814,26.688621');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2612,'钟山区',2594,'0,24,2594',0,'2612',2612,'','','104.762547,26.731157');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2613,'六枝特区',2594,'0,24,2594',0,'2613',2613,'','','105.383034,26.235865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2614,'水城县',2594,'0,24,2594',0,'2614',2614,'','','104.930357,26.430547');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2615,'盘县',2594,'0,24,2594',0,'2615',2615,'','','104.666913,25.772838');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2616,'红花岗区',2595,'0,24,2595',0,'2616',2616,'','','106.922651,27.670445');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2617,'遵义县',2595,'0,24,2595',0,'2617',2617,'','','106.902662,27.669342');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2618,'桐梓县',2595,'0,24,2595',0,'2618',2618,'','','106.886331,28.41448');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2619,'绥阳县',2595,'0,24,2595',0,'2619',2619,'','','107.203542,28.146365');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2620,'正安县',2595,'0,24,2595',0,'2620',2620,'','','107.412773,28.506639');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2621,'道真仡佬族苗族自治县',2595,'0,24,2595',0,'2621',2621,'','','107.616865,28.934154');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2622,'务川仡佬族苗族自治县',2595,'0,24,2595',0,'2622',2622,'','','107.919935,28.661404');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2623,'凤冈县',2595,'0,24,2595',0,'2623',2623,'','','107.771574,27.928827');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2624,'湄潭县',2595,'0,24,2595',0,'2624',2624,'','','107.49168,7.764873');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2625,'余庆县',2595,'0,24,2595',0,'2625',2625,'','','107.70936,7.394794');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2626,'习水县',2595,'0,24,2595',0,'2626',2626,'','','106.358926,28.35732');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2627,'赤水市',2595,'0,24,2595',0,'2627',2627,'','','105.920513,28.493334');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2628,'仁怀市',2595,'0,24,2595',0,'2628',2628,'','','106.347908,27.839203');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2629,'西秀区',2596,'0,24,2596',0,'2629',2629,'','','106.060017,26.197377');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2630,'平坝县',2596,'0,24,2596',0,'2630',2630,'','','106.291405,26.408769');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2631,'普定县',2596,'0,24,2596',0,'2631',2631,'','','105.742693,26.345748');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2632,'镇宁布依族苗族自治县',2596,'0,24,2596',0,'2632',2632,'','','105.833553,25.844353');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2633,'关岭布依族苗族自治县',2596,'0,24,2596',0,'2633',2633,'','','105.568727,25.86219');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2634,'紫云苗族布依族自治县',2596,'0,24,2596',0,'2634',2634,'','','106.188362,25.700615');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2635,'铜仁市',2597,'0,24,2597',0,'2635',2635,'','','109.168558,27.674903');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2636,'江口县',2597,'0,24,2597',0,'2636',2636,'','','108.778623,27.72881');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2637,'玉屏侗族自治县',2597,'0,24,2597',0,'2637',2637,'','','108.99183,7.335871');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2638,'石阡县',2597,'0,24,2597',0,'2638',2638,'','','108.169934,27.49076');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2639,'思南县',2597,'0,24,2597',0,'2639',2639,'','','108.14948,7.848809');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2640,'印江土家族苗族自治县',2597,'0,24,2597',0,'2640',2640,'','','108.532367,27.998718');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2641,'德江县',2597,'0,24,2597',0,'2641',2641,'','','108.094797,28.264527');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2642,'沿河土家族自治县',2597,'0,24,2597',0,'2642',2642,'','','108.344245,28.624269');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2643,'松桃苗族自治县',2597,'0,24,2597',0,'2643',2643,'','','109.041543,28.129714');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2644,'万山特区',2597,'0,24,2597',0,'2644',2644,'','','109.26968,7.529383');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2645,'兴义市',2598,'0,24,2598',0,'2645',2645,'','','104.857837,25.002544');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2646,'兴仁县',2598,'0,24,2598',0,'2646',2646,'','','105.27763,5.499784');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2647,'普安县',2598,'0,24,2598',0,'2647',2647,'','','105.000167,25.727814');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2648,'晴隆县',2598,'0,24,2598',0,'2648',2648,'','','105.208462,25.84135');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2649,'贞丰县',2598,'0,24,2598',0,'2649',2649,'','','105.69335,5.421634');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2650,'望谟县',2598,'0,24,2598',0,'2650',2650,'','','106.173282,25.232322');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2651,'册亨县',2598,'0,24,2598',0,'2651',2651,'','','105.838606,24.923562');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2652,'安龙县',2598,'0,24,2598',0,'2652',2652,'','','105.380224,25.139971');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2653,'毕节市',2599,'0,24,2599',0,'2653',2653,'','','105.333323,27.408562');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2654,'大方县',2599,'0,24,2599',0,'2654',2654,'','','105.694534,27.23128');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2655,'黔西县',2599,'0,24,2599',0,'2655',2655,'','','106.120805,27.050413');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2656,'金沙县',2599,'0,24,2599',0,'2656',2656,'','','106.275142,27.448578');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2657,'织金县',2599,'0,24,2599',0,'2657',2657,'','','105.792167,26.648167');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2658,'纳雍县',2599,'0,24,2599',0,'2658',2658,'','','105.283876,26.808509');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2659,'赫章县',2599,'0,24,2599',0,'2659',2659,'','','104.638175,27.135471');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2660,'凯里市',2600,'0,24,2600',0,'2660',2660,'','','107.948239,26.631742');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2661,'黄平县',2600,'0,24,2600',0,'2661',2661,'','','107.869245,26.953082');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2662,'施秉县',2600,'0,24,2600',0,'2662',2662,'','','108.154109,27.070345');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2663,'三穗县',2600,'0,24,2600',0,'2663',2663,'','','108.762217,26.94023');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2664,'镇远县',2600,'0,24,2600',0,'2664',2664,'','','108.475888,27.12163');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2665,'岑巩县',2600,'0,24,2600',0,'2665',2665,'','','108.707447,27.365341');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2666,'天柱县',2600,'0,24,2600',0,'2666',2666,'','','109.26453,6.924696');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2667,'锦屏县',2600,'0,24,2600',0,'2667',2667,'','','109.132436,26.566755');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2668,'剑河县',2600,'0,24,2600',0,'2668',2668,'','','108.694596,26.651212');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2669,'台江县',2600,'0,24,2600',0,'2669',2669,'','','108.323555,26.656112');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2670,'黎平县',2600,'0,24,2600',0,'2670',2670,'','','109.074591,26.157514');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2671,'榕江县',2600,'0,24,2600',0,'2671',2671,'','','108.419917,26.036271');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2672,'从江县',2600,'0,24,2600',0,'2672',2672,'','','108.729733,25.718844');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2673,'雷山县',2600,'0,24,2600',0,'2673',2673,'','','108.154491,26.343206');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2674,'麻江县',2600,'0,24,2600',0,'2674',2674,'','','107.618713,26.468254');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2675,'丹寨县',2600,'0,24,2600',0,'2675',2675,'','','107.931258,26.231206');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2676,'都匀市',2601,'0,24,2601',0,'2676',2676,'','','107.477559,26.153657');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2677,'福泉市',2601,'0,24,2601',0,'2677',2677,'','','107.491217,26.777119');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2678,'荔波县',2601,'0,24,2601',0,'2678',2678,'','','107.930213,25.401318');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2679,'贵定县',2601,'0,24,2601',0,'2679',2679,'','','107.203904,26.433664');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2680,'瓮安县',2601,'0,24,2601',0,'2680',2680,'','','107.421412,27.17234');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2681,'独山县',2601,'0,24,2601',0,'2681',2681,'','','107.563752,25.636841');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2682,'平塘县',2601,'0,24,2601',0,'2682',2682,'','','107.113088,25.791849');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2683,'罗甸县',2601,'0,24,2601',0,'2683',2683,'','','106.709797,25.419237');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2684,'长顺县',2601,'0,24,2601',0,'2684',2684,'','','106.404198,26.000476');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2685,'龙里县',2601,'0,24,2601',0,'2685',2685,'','','106.995901,26.506568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2686,'惠水县',2601,'0,24,2601',0,'2686',2686,'','','106.722223,25.982997');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2687,'三都水族自治县',2601,'0,24,2601',0,'2687',2687,'','','107.956506,25.852864');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2688,'昆明市',25,'0,25',1,'2688,2704,2705,2706,2707,2708,2709,2710,2711,2712,2713,2714,2715,2716,2717',2688,NULL,NULL,'102.714601,25.049153');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2689,'曲靖市',25,'0,25',1,'2689,2718,2719,2720,2721,2722,2723,2724,2725,2726',2689,NULL,NULL,'103.782539,25.520758');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2690,'玉溪市',25,'0,25',1,'2690,2727,2728,2729,2730,2731,2732,2733,2734',2690,NULL,NULL,'102.545068,24.370447');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2691,'保山市',25,'0,25',1,'2691,2735,2736,2737,2738,2739',2691,NULL,NULL,'99.177996,25.120489');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2692,'昭通市',25,'0,25',1,'2692,2740,2741,2742,2743,2744,2745,2746,2747,2748,2749,2750',2692,NULL,NULL,'103.725021,27.340633');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2693,'丽江市',25,'0,25',1,'2693,2751,2752,2753,2754,2755',2693,NULL,NULL,'100.229628,26.875351');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2694,'楚雄彝族自治州',25,'0,25',1,'2694,2756,2757,2758,2759,2760,2761,2762,2763,2764,2765',2694,'','','101.529382,25.066356');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2695,'红河哈尼族彝族自治州',25,'0,25',1,'2695,2766,2767,2768,2769,2770,2771,2772,2773,2774,2775,2776,2777,2778',2695,'','','103.384065,23.367718');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2696,'文山壮族苗族自治州',25,'0,25',1,'2696,2779,2780,2781,2782,2783,2784,2785,2786',2696,NULL,NULL,'104.089112,23.401781');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2697,'思茅地区',25,'0,25',1,'2697,2787,2788,2789,2790,2791,2792,2793,2794,2795,2796,2797',2697,'','','100.855253,22.739133');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2698,'西双版纳傣族自治州',25,'0,25',1,'2698,2798,2799,2800',2698,NULL,NULL,'100.803038,22.009433');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2699,'大理白族自治州',25,'0,25',1,'2699,2801,2802,2803,2804,2805,2806,2807,2808,2809,2810,2811,2812',2699,'','','100.223675,25.5969');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2700,'德宏傣族景颇族自治州',25,'0,25',1,'2700,2813,2814,2815,2816,2817',2700,'','','98.589434,4.44124');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2701,'怒江傈僳族自治州',25,'0,25',1,'2701,2818,2819,2820,2821',2701,'','','98.859932,5.860677');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2702,'迪庆藏族自治州',25,'0,25',1,'2702,2822,2823,2824',2702,'','','99.713682,7.831029');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2703,'临沧地区',25,'0,25',1,'2703,2825,2826,2827,2828,2829,2830,2831',2703,'','','100.09368,3.887286');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2704,'五华区',2688,'0,25,2688',0,'2704',2704,'','','102.649377,25.261306');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2705,'盘龙区',2688,'0,25,2688',0,'2705',2705,'','','102.767556,25.274019');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2706,'官渡区',2688,'0,25,2688',0,'2706',2706,'','','102.828819,25.031311');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2707,'西山区',2688,'0,25,2688',0,'2707',2707,'','','102.603478,24.98363');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2708,'东川区',2688,'0,25,2688',0,'2708',2708,'','','103.078562,26.139329');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2709,'呈贡县',2688,'0,25,2688',0,'2709',2709,'','','102.872617,24.871682');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2710,'晋宁县',2688,'0,25,2688',0,'2710',2710,'','','102.579614,24.605041');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2711,'富民县',2688,'0,25,2688',0,'2711',2711,'','','102.584103,25.363439');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2712,'宜良县',2688,'0,25,2688',0,'2712',2712,'','','103.192815,24.944908');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2713,'石林彝族自治县',2688,'0,25,2688',0,'2713',2713,'','','103.427336,24.754309');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2714,'嵩明县',2688,'0,25,2688',0,'2714',2714,'','','103.006525,25.3179');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2715,'禄劝彝族苗族自治县',2688,'0,25,2688',0,'2715',2715,'','','102.593027,25.943771');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2716,'寻甸回族彝族自治县',2688,'0,25,2688',0,'2716',2716,'','','103.127813,25.66661');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2717,'安宁市',2688,'0,25,2688',0,'2717',2717,'','','102.391127,24.852355');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2718,'麒麟区',2689,'0,25,2689',0,'2718',2718,'','','103.913326,25.360057');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2719,'马龙县',2689,'0,25,2689',0,'2719',2719,'','','103.513095,25.36884');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2720,'陆良县',2689,'0,25,2689',0,'2720',2720,'','','103.707386,25.037571');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2721,'师宗县',2689,'0,25,2689',0,'2721',2721,'','','104.129479,24.680198');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2722,'罗平县',2689,'0,25,2689',0,'2722',2722,'','','104.349279,24.983157');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2723,'富源县',2689,'0,25,2689',0,'2723',2723,'','','104.367452,25.467214');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2724,'会泽县',2689,'0,25,2689',0,'2724',2724,'','','103.468544,26.462218');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2725,'沾益县',2689,'0,25,2689',0,'2725',2725,'','','103.846238,25.786711');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2726,'宣威市',2689,'0,25,2689',0,'2726',2726,'','','104.152571,26.276829');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2727,'红塔区',2690,'0,25,2690',0,'2727',2727,'','','102.499895,24.369854');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2728,'江川县',2690,'0,25,2690',0,'2728',2728,'','','102.769728,24.357607');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2729,'澄江县',2690,'0,25,2690',0,'2729',2729,'','','102.94685,4.67838');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2730,'通海县',2690,'0,25,2690',0,'2730',2730,'','','102.711416,24.117558');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2731,'华宁县',2690,'0,25,2690',0,'2731',2731,'','','102.999068,24.284812');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2732,'易门县',2690,'0,25,2690',0,'2732',2732,'','','102.122197,24.696404');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2733,'峨山彝族自治县',2690,'0,25,2690',0,'2733',2733,'','','102.21925,4.246115');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2734,'新平彝族傣族自治县',2690,'0,25,2690',0,'2734',2734,'','','101.739131,24.029741');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2735,'隆阳区',2691,'0,25,2691',0,'2735',2735,'','','99.069046,5.205265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2736,'施甸县',2691,'0,25,2691',0,'2736',2736,'','','99.15749,0.65722 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2737,'腾冲县',2691,'0,25,2691',0,'2737',2737,'','','98.499988,5.279978');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2738,'龙陵县',2691,'0,25,2691',0,'2738',2738,'','','98.842542,4.499046');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2739,'昌宁县',2691,'0,25,2691',0,'2739',2739,'','','99.591112,4.758163');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2740,'昭阳区',2692,'0,25,2692',0,'2740',2740,'','','103.607277,27.427583');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2741,'鲁甸县',2692,'0,25,2692',0,'2741',2741,'','','103.425856,27.205703');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2742,'巧家县',2692,'0,25,2692',0,'2742',2742,'','','103.13002,7.008328');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2743,'盐津县',2692,'0,25,2692',0,'2743',2743,'','','104.230535,28.130707');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2744,'大关县',2692,'0,25,2692',0,'2744',2744,'','','103.912178,27.905096');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2745,'永善县',2692,'0,25,2692',0,'2745',2745,'','','103.652823,27.953163');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2746,'绥江县',2692,'0,25,2692',0,'2746',2746,'','','104.015588,28.538866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2747,'镇雄县',2692,'0,25,2692',0,'2747',2747,'','','104.833852,27.568916');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2748,'彝良县',2692,'0,25,2692',0,'2748',2748,'','','104.241449,27.630986');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2749,'威信县',2692,'0,25,2692',0,'2749',2749,'','','105.050283,27.891463');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2750,'水富县',2692,'0,25,2692',0,'2750',2750,'','','104.228833,28.51093');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2751,'古城区',2693,'0,25,2693',0,'2751',2751,'','','100.328596,26.8593');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2752,'玉龙纳西族自治县',2693,'0,25,2693',0,'2752',2752,'','','99.951634,7.104463');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2753,'永胜县',2693,'0,25,2693',0,'2753',2753,'','','100.704921,26.491706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2754,'华坪县',2693,'0,25,2693',0,'2754',2754,'','','101.251729,26.645807');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2755,'宁蒗彝族自治县',2693,'0,25,2693',0,'2755',2755,'','','100.778302,27.265589');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2756,'楚雄市',2694,'0,25,2694',0,'2756',2756,'','','101.328638,24.880252');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2757,'双柏县',2694,'0,25,2694',0,'2757',2757,'','','101.640322,24.535545');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2758,'牟定县',2694,'0,25,2694',0,'2758',2758,'','','101.596758,25.407357');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2759,'南华县',2694,'0,25,2694',0,'2759',2759,'','','101.038012,25.103523');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2760,'姚安县',2694,'0,25,2694',0,'2760',2760,'','','101.211238,25.516954');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2761,'大姚县',2694,'0,25,2694',0,'2761',2761,'','','101.242913,25.94767');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2762,'永仁县',2694,'0,25,2694',0,'2762',2762,'','','101.56019,6.143679');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2763,'元谋县',2694,'0,25,2694',0,'2763',2763,'','','101.870511,25.783196');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2764,'武定县',2694,'0,25,2694',0,'2764',2764,'','','102.201176,25.73111');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2765,'禄丰县',2694,'0,25,2694',0,'2765',2765,'','','102.02613,5.185819');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2766,'个旧市',2695,'0,25,2695',0,'2766',2766,'','','103.149155,23.305692');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2767,'开远市',2695,'0,25,2695',0,'2767',2767,'','','103.400155,23.729056');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2768,'蒙自县',2695,'0,25,2695',0,'2768',2768,'','','103.499689,23.346572');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2769,'屏边苗族自治县',2695,'0,25,2695',0,'2769',2769,'','','103.748419,23.102937');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2770,'建水县',2695,'0,25,2695',0,'2770',2770,'','','102.889674,23.683914');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2771,'石屏县',2695,'0,25,2695',0,'2771',2771,'','','102.456249,23.746259');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2772,'弥勒县',2695,'0,25,2695',0,'2772',2772,'','','103.389766,24.226172');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2773,'泸西县',2695,'0,25,2695',0,'2773',2773,'','','103.783253,24.517287');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2774,'元阳县',2695,'0,25,2695',0,'2774',2774,'','','102.819567,23.069203');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2775,'红河县',2695,'0,25,2695',0,'2775',2775,'','','102.243348,23.250955');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2776,'绿春县',2695,'0,25,2695',0,'2776',2776,'','','102.245327,22.879206');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2777,'河口瑶族自治县',2695,'0,25,2695',0,'2777',2777,'','','103.823449,22.787363');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2778,'金平县',2695,'0,25,2695',0,'2778',2778,'','','103.102957,22.782363');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2779,'文山县',2696,'0,25,2696',0,'2779',2779,'','','104.089112,23.401781');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2780,'砚山县',2696,'0,25,2696',0,'2780',2780,'','','104.255968,23.68779');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2781,'西畴县',2696,'0,25,2696',0,'2781',2781,'','','104.687854,23.362736');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2782,'麻栗坡县',2696,'0,25,2696',0,'2782',2782,'','','104.902518,23.225356');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2783,'马关县',2696,'0,25,2696',0,'2783',2783,'','','104.270312,22.956555');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2784,'丘北县',2696,'0,25,2696',0,'2784',2784,'','','104.110334,24.127817');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2785,'广南县',2696,'0,25,2696',0,'2785',2785,'','','105.00649,3.96782');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2786,'富宁县',2696,'0,25,2696',0,'2786',2786,'','','105.749608,23.707256');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2787,'普洱市',2697,'0,25,2697',0,'2787',2787,'','','100.980058,22.788778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2788,'思茅区',2697,'0,25,2697',0,'2788',2788,'','','100.855253,22.739133');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2789,'孟连县',2697,'0,25,2697',0,'2789',2789,'','','99.478068,2.294225');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2790,'镇沅县',2697,'0,25,2697',0,'2790',2790,'','','100.982054,23.947142');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2791,'宁洱哈尼族彝族自治县',2697,'0,25,2697',0,'2791',2791,'','','101.19686,3.09735');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2792,'墨江哈尼族自治县',2697,'0,25,2697',0,'2792',2792,'','','101.555486,23.363251');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2793,'景东彝族自治县',2697,'0,25,2697',0,'2793',2793,'','','100.795206,24.396729');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2794,'景谷傣族彝族自治县',2697,'0,25,2697',0,'2794',2794,'','','100.564291,23.368117');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2795,'江城哈尼族彝族自治县',2697,'0,25,2697',0,'2795',2795,'','','101.796929,22.625658');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2796,'澜沧拉祜族自治县',2697,'0,25,2697',0,'2796',2796,'','','99.984537,2.665994');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2797,'西盟佤族自治县',2697,'0,25,2697',0,'2797',2797,'','','99.52212,0.708423');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2798,'景洪市',2698,'0,25,2698',0,'2798',2798,'','','100.927318,22.111413');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2799,'勐海县',2698,'0,25,2698',0,'2799',2799,'','','100.337382,21.960731');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2800,'勐腊县',2698,'0,25,2698',0,'2800',2800,'','','101.461959,21.73666');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2801,'大理市',2699,'0,25,2699',0,'2801',2801,'','','100.219209,25.693967');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2802,'漾濞彝族自治县',2699,'0,25,2699',0,'2802',2802,'','','99.898375,5.605572');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2803,'祥云县',2699,'0,25,2699',0,'2803',2803,'','','100.778071,25.516673');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2804,'宾川县',2699,'0,25,2699',0,'2804',2804,'','','100.627538,25.875307');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2805,'弥渡县',2699,'0,25,2699',0,'2805',2805,'','','100.581866,25.191108');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2806,'南涧彝族自治县',2699,'0,25,2699',0,'2806',2806,'','','100.4249,0.903014');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2807,'巍山彝族回族自治县',2699,'0,25,2699',0,'2807',2807,'','','100.178639,25.246753');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2808,'永平县',2699,'0,25,2699',0,'2808',2808,'','','99.600792,5.374647');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2809,'云龙县',2699,'0,25,2699',0,'2809',2809,'','','99.310078,5.894118');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2810,'洱源县',2699,'0,25,2699',0,'2810',2810,'','','99.912156,6.072916');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2811,'剑川县',2699,'0,25,2699',0,'2811',2811,'','','99.750308,6.439596');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2812,'鹤庆县',2699,'0,25,2699',0,'2812',2812,'','','100.277175,26.335454');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2813,'瑞丽市',2700,'0,25,2700',0,'2813',2813,'','','97.811532,4.037273');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2814,'潞西市',2700,'0,25,2700',0,'2814',2814,'','','98.426939,4.329497');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2815,'梁河县',2700,'0,25,2700',0,'2815',2815,'','','98.322123,4.743717');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2816,'盈江县',2700,'0,25,2700',0,'2816',2816,'','','97.922052,4.862316');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2817,'陇川县',2700,'0,25,2700',0,'2817',2817,'','','97.965385,4.381371');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2818,'泸水县',2701,'0,25,2701',0,'2818',2818,'','','98.8593 ,070228 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2819,'福贡县',2701,'0,25,2701',0,'2819',2819,'','','98.868659,6.996507');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2820,'贡山独龙族怒族自治县',2701,'0,25,2701',0,'2820',2820,'','','98.509416,7.891993');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2821,'兰坪白族普米族自治县',2701,'0,25,2701',0,'2821',2821,'','','99.2639 ,633568 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2822,'香格里拉县',2702,'0,25,2702',0,'2822',2822,'','','99.831599,7.907358');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2823,'德钦县',2702,'0,25,2702',0,'2823',2823,'','','99.037554,8.351417');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2824,'维西傈僳族自治县',2702,'0,25,2702',0,'2824',2824,'','','99.152723,7.452958');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2825,'临沧县',2703,'0,25,2703',0,'2825',2825,'','','100.094219,23.883928');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2826,'凤庆县',2703,'0,25,2703',0,'2826',2826,'','','99.92091,0.610506');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2827,'云县',2703,'0,25,2703',0,'2827',2827,'','','100.23368,4.327406');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2828,'永德县',2703,'0,25,2703',0,'2828',2828,'','','99.427632,4.08958');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2829,'镇康县',2703,'0,25,2703',0,'2829',2829,'','','99.005736,3.901063');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2830,'耿马傣族佤族自治县',2703,'0,25,2703',0,'2830',2830,'','','99.434265,3.64173');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2831,'沧源佤族自治县',2703,'0,25,2703',0,'2831',2831,'','','99.270498,3.274581');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2832,'拉萨市',26,'0,26',1,'2832,2839,2840,2841,2842,2843,2844,2845,2846',2832,NULL,NULL,'91.111891,29.662557');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2833,'昌都地区',26,'0,26',1,'2833,2847,2848,2849,2850,2851,2852,2853,2854,2855,2856,2857',2833,NULL,NULL,'97.185582,31.140576');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2834,'山南地区',26,'0,26',1,'2834,2858,2859,2860,2861,2862,2863,2864,2865,2866,2867,2868,2869',2834,NULL,NULL,'91.750644,29.229027');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2835,'日喀则地区',26,'0,26',1,'2835,2870,2871,2872,2873,2874,2875,2876,2877,2878,2879,2880,2881,2882,2883,2884,2885,2886,2887',2835,NULL,NULL,'88.891486,29.269023');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2836,'那曲地区',26,'0,26',1,'2836,2888,2889,2890,2891,2892,2893,2894,2895,2896,2897',2836,NULL,NULL,'92.067018,31.48068');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2837,'阿里地区',26,'0,26',1,'2837,2898,2899,2900,2901,2902,2903,2904',2837,NULL,NULL,'81.107669,30.404557');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2838,'林芝地区',26,'0,26',1,'2838,2905,2906,2907,2908,2909,2910,2911',2838,NULL,NULL,'94.349985,29.666941');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2839,'城关区',2832,'0,26,2832',0,'2839',2839,'','','91.16873,0.6664  ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2840,'林周县',2832,'0,26,2832',0,'2840',2840,'','','91.347043,0.116478');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2841,'当雄县',2832,'0,26,2832',0,'2841',2841,'','','90.894815,0.424299');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2842,'尼木县',2832,'0,26,2832',0,'2842',2842,'','','90.095471,9.603194');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2843,'曲水县',2832,'0,26,2832',0,'2843',2843,'','','90.714553,9.445004');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2844,'堆龙德庆县',2832,'0,26,2832',0,'2844',2844,'','','90.793393,9.804706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2845,'达孜县',2832,'0,26,2832',0,'2845',2845,'','','91.473901,9.747666');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2846,'墨竹工卡县',2832,'0,26,2832',0,'2846',2846,'','','92.031892,9.916718');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2847,'昌都县',2833,'0,26,2833',0,'2847',2847,'','','97.244052,1.44848');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2848,'江达县',2833,'0,26,2833',0,'2848',2848,'','','98.036375,1.8137 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2849,'贡觉县',2833,'0,26,2833',0,'2849',2849,'','','98.496122,0.746651');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2850,'类乌齐县',2833,'0,26,2833',0,'2850',2850,'','','96.405088,1.44057');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2851,'丁青县',2833,'0,26,2833',0,'2851',2851,'','','95.311845,1.681676');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2852,'察雅县',2833,'0,26,2833',0,'2852',2852,'','','97.843886,0.589053');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2853,'八宿县',2833,'0,26,2833',0,'2853',2853,'','','96.885641,0.162298');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2854,'左贡县',2833,'0,26,2833',0,'2854',2854,'','','97.808288,9.562561');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2855,'芒康县',2833,'0,26,2833',0,'2855',2855,'','','98.62076,0.620319');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2856,'洛隆县',2833,'0,26,2833',0,'2856',2856,'','','95.916922,0.735105');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2857,'边坝县',2833,'0,26,2833',0,'2857',2857,'','','94.599889,0.89183');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2858,'乃东县',2834,'0,26,2834',0,'2858',2858,'','','91.83204,0.213116');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2859,'扎囊县',2834,'0,26,2834',0,'2859',2859,'','','91.408245,9.280298');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2860,'贡嘎县',2834,'0,26,2834',0,'2860',2860,'','','90.94437,0.213067');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2861,'桑日县',2834,'0,26,2834',0,'2861',2861,'','','92.230603,9.407083');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2862,'琼结县',2834,'0,26,2834',0,'2862',2862,'','','91.61377,0.011722');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2863,'曲松县',2834,'0,26,2834',0,'2863',2863,'','','92.210064,8.950715');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2864,'措美县',2834,'0,26,2834',0,'2864',2864,'','','91.515318,8.576671');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2865,'洛扎县',2834,'0,26,2834',0,'2865',2865,'','','90.873599,8.216916');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2866,'加查县',2834,'0,26,2834',0,'2866',2866,'','','92.719872,9.293908');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2867,'隆子县',2834,'0,26,2834',0,'2867',2867,'','','92.926094,8.481868');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2868,'错那县',2834,'0,26,2834',0,'2868',2868,'','','92.900839,7.67283');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2869,'浪卡子县',2834,'0,26,2834',0,'2869',2869,'','','90.638268,8.761273');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2870,'日喀则市',2835,'0,26,2835',0,'2870',2870,'','','88.956063,9.26816');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2871,'南木林县',2835,'0,26,2835',0,'2871',2871,'','','89.380043,9.814826');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2872,'江孜县',2835,'0,26,2835',0,'2872',2872,'','','89.66905,0.91068 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2873,'定日县',2835,'0,26,2835',0,'2873',2873,'','','86.999961,8.477712');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2874,'萨迦县',2835,'0,26,2835',0,'2874',2874,'','','88.34757,0.854891');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2875,'拉孜县',2835,'0,26,2835',0,'2875',2875,'','','87.858421,9.179935');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2876,'昂仁县',2835,'0,26,2835',0,'2876',2876,'','','86.629188,9.956055');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2877,'谢通门县',2835,'0,26,2835',0,'2877',2877,'','','88.082372,9.914903');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2878,'白朗县',2835,'0,26,2835',0,'2878',2878,'','','89.104404,8.820024');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2879,'仁布县',2835,'0,26,2835',0,'2879',2879,'','','89.976281,9.224222');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2880,'康马县',2835,'0,26,2835',0,'2880',2880,'','','89.655312,8.443364');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2881,'定结县',2835,'0,26,2835',0,'2881',2881,'','','87.913745,8.23751');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2882,'仲巴县',2835,'0,26,2835',0,'2882',2882,'','','83.662595,0.484477');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2883,'亚东县',2835,'0,26,2835',0,'2883',2883,'','','89.081382,7.815088');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2884,'吉隆县',2835,'0,26,2835',0,'2884',2884,'','','85.306389,8.8668 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2885,'聂拉木县',2835,'0,26,2835',0,'2885',2885,'','','86.067461,8.599824');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2886,'萨嘎县',2835,'0,26,2835',0,'2886',2886,'','','85.083569,9.402132');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2887,'岗巴县',2835,'0,26,2835',0,'2887',2887,'','','88.571885,8.316706');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2888,'那曲县',2836,'0,26,2836',0,'2888',2888,'','','92.034626,1.252315');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2889,'嘉黎县',2836,'0,26,2836',0,'2889',2889,'','','92.961316,0.668912');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2890,'比如县',2836,'0,26,2836',0,'2890',2890,'','','93.493424,1.447136');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2891,'聂荣县',2836,'0,26,2836',0,'2891',2891,'','','92.642153,2.24965');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2892,'安多县',2836,'0,26,2836',0,'2892',2892,'','','90.569314,3.321682');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2893,'申扎县',2836,'0,26,2836',0,'2893',2893,'','','88.735362,1.035234');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2894,'索县',2836,'0,26,2836',0,'2894',2894,'','','94.31255,0.592788');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2895,'班戈县',2836,'0,26,2836',0,'2895',2895,'','','90.123401,1.218112');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2896,'巴青县',2836,'0,26,2836',0,'2896',2896,'','','94.018949,2.198839');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2897,'尼玛县',2836,'0,26,2836',0,'2897',2897,'','','87.654847,3.536966');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2898,'普兰县',2837,'0,26,2837',0,'2898',2898,'','','81.530583,0.63712');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2899,'札达县',2837,'0,26,2837',0,'2899',2899,'','','79.552757,1.553649');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2900,'噶尔县',2837,'0,26,2837',0,'2900',2900,'','','80.315974,2.005501');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2901,'日土县',2837,'0,26,2837',0,'2901',2901,'','','80.719742,3.984683');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2902,'革吉县',2837,'0,26,2837',0,'2902',2902,'','','82.033798,2.057883');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2903,'改则县',2837,'0,26,2837',0,'2903',2903,'','','84.285002,3.841205');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2904,'措勤县',2837,'0,26,2837',0,'2904',2904,'','','85.210286,0.749851');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2905,'林芝县',2838,'0,26,2838',0,'2905',2905,'','','94.380416,9.783256');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2906,'工布江达县',2838,'0,26,2838',0,'2906',2906,'','','93.242098,0.025216');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2907,'米林县',2838,'0,26,2838',0,'2907',2907,'','','94.018213,9.24841');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2908,'墨脱县',2838,'0,26,2838',0,'2908',2908,'','','95.017836,8.732211');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2909,'波密县',2838,'0,26,2838',0,'2909',2909,'','','95.556585,0.124828');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2910,'察隅县',2838,'0,26,2838',0,'2910',2910,'','','97.069124,8.681698');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2911,'朗县',2838,'0,26,2838',0,'2911',2911,'','','93.106766,8.96475');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2912,'西安市',27,'0,27',1,'2912,2922,2923,2924,2925,2926,2927,2928,2929,2930,2931,2932,2933,2934',2912,NULL,NULL,'108.953098,34.2778');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2913,'铜川市',27,'0,27',1,'2913,2935,2936,2937,2938',2913,NULL,NULL,'108.968067,34.908368');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2914,'宝鸡市',27,'0,27',1,'2914,2939,2940,2941,2942,2943,2944,2945,2946,2947,2948,2949,2950',2914,NULL,NULL,'107.170645,34.364081');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2915,'咸阳市',27,'0,27',1,'2915,2951,2952,2953,2954,2955,2956,2957,2958,2959,2960,2961,2962,2963,2964',2915,NULL,NULL,'108.707509,34.345373');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2916,'渭南市',27,'0,27',1,'2916,2965,2966,2967,2968,2969,2970,2971,2972,2973,2974,2975',2916,NULL,NULL,'109.483933,34.502358');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2917,'延安市',27,'0,27',1,'2917,2976,2977,2978,2979,2980,2981,2982,2983,2984,2985,2986,2987,2988',2917,NULL,NULL,'109.50051,36.60332');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2918,'汉中市',27,'0,27',1,'2918,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999',2918,NULL,NULL,'107.045478,33.081569');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2919,'榆林市',27,'0,27',1,'2919,3000,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010,3011',2919,NULL,NULL,'109.745926,38.279439');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2920,'安康市',27,'0,27',1,'2920,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021',2920,NULL,NULL,'109.038045,32.70437');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2921,'商洛市',27,'0,27',1,'2921,3022,3023,3024,3025,3026,3027,3028',2921,NULL,NULL,'109.934208,33.873907');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2922,'新城区',2912,'0,27,2912',0,'2922',2922,'','','108.991539,34.271474');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2923,'碑林区',2912,'0,27,2912',0,'2923',2923,'','','108.966259,34.255485');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2924,'莲湖区',2912,'0,27,2912',0,'2924',2924,'','','108.915547,34.273192');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2925,'灞桥区',2912,'0,27,2912',0,'2925',2925,'','','109.108755,34.303915');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2926,'未央区',2912,'0,27,2912',0,'2926',2926,'','','108.926462,34.331331');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2927,'雁塔区',2912,'0,27,2912',0,'2927',2927,'','','108.93879,4.221415');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2928,'阎良区',2912,'0,27,2912',0,'2928',2928,'','','109.313417,34.686373');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2929,'临潼区',2912,'0,27,2912',0,'2929',2929,'','','109.310453,34.456277');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2930,'长安区',2912,'0,27,2912',0,'2930',2930,'','','114.592622,38.076875');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2931,'蓝田县',2912,'0,27,2912',0,'2931',2931,'','','109.42339,4.100787');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2932,'周至县',2912,'0,27,2912',0,'2932',2932,'','','108.113541,33.953602');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2933,'户县',2912,'0,27,2912',0,'2933',2933,'','','108.592481,34.003834');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2934,'高陵县',2912,'0,27,2912',0,'2934',2934,'','','109.073775,34.513762');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2935,'王益区',2913,'0,27,2913',0,'2935',2935,'','','109.068504,35.070041');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2936,'印台区',2913,'0,27,2913',0,'2936',2936,'','','109.185386,35.160934');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2937,'耀州区',2913,'0,27,2913',0,'2937',2937,'','','108.8355,0.032   ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2938,'宜君县',2913,'0,27,2913',0,'2938',2938,'','','109.204402,35.383902');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2939,'渭滨区',2914,'0,27,2914',0,'2939',2939,'','','107.108244,34.311027');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2940,'金台区',2914,'0,27,2914',0,'2940',2940,'','','107.117614,34.403175');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2941,'宝鸡县',2914,'0,27,2914',0,'2941',2941,'','','107.170645,34.364081');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2942,'凤翔县',2914,'0,27,2914',0,'2942',2942,'','','107.436789,34.577026');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2943,'岐山县',2914,'0,27,2914',0,'2943',2943,'','','107.688985,34.410705');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2944,'扶风县',2914,'0,27,2914',0,'2944',2944,'','','107.925102,34.411974');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2945,'眉县',2914,'0,27,2914',0,'2945',2945,'','','107.833844,34.15054');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2946,'陇县',2914,'0,27,2914',0,'2946',2946,'','','106.773064,34.876941');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2947,'千阳县',2914,'0,27,2914',0,'2947',2947,'','','107.177974,34.766951');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2948,'麟游县',2914,'0,27,2914',0,'2948',2948,'','','107.710775,34.785693');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2949,'凤县',2914,'0,27,2914',0,'2949',2949,'','','106.766104,33.993252');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2950,'太白县',2914,'0,27,2914',0,'2950',2950,'','','107.416865,33.942972');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2951,'秦都区',2915,'0,27,2915',0,'2951',2951,'','','108.683415,34.354285');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2952,'杨凌区',2915,'0,27,2915',0,'2952',2952,'','','108.100608,34.259456');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2953,'渭城区',2915,'0,27,2915',0,'2953',2953,'','','108.817312,34.423853');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2954,'三原县',2915,'0,27,2915',0,'2954',2954,'','','108.9807,0.703212');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2955,'泾阳县',2915,'0,27,2915',0,'2955',2955,'','','108.780753,34.608867');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2956,'乾县',2915,'0,27,2915',0,'2956',2956,'','','108.229483,34.527673');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2957,'礼泉县',2915,'0,27,2915',0,'2957',2957,'','','108.482569,34.597854');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2958,'永寿县',2915,'0,27,2915',0,'2958',2958,'','','108.136714,34.777656');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2959,'彬县',2915,'0,27,2915',0,'2959',2959,'','','108.067986,35.051835');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2960,'长武县',2915,'0,27,2915',0,'2960',2960,'','','107.8348,0.170582');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2961,'旬邑县',2915,'0,27,2915',0,'2961',2961,'','','108.494125,35.216832');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2962,'淳化县',2915,'0,27,2915',0,'2962',2962,'','','108.570219,34.869116');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2963,'武功县',2915,'0,27,2915',0,'2963',2963,'','','108.190993,34.316553');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2964,'兴平市',2915,'0,27,2915',0,'2964',2964,'','','108.47576,4.307609');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2965,'临渭区',2916,'0,27,2916',0,'2965',2965,'','','109.564746,34.55352');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2966,'华县',2916,'0,27,2916',0,'2966',2966,'','','109.812703,34.411964');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2967,'潼关县',2916,'0,27,2916',0,'2967',2967,'','','110.295546,34.507137');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2968,'大荔县',2916,'0,27,2916',0,'2968',2968,'','','110.01195,4.79684');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2969,'合阳县',2916,'0,27,2916',0,'2969',2969,'','','110.191104,35.208388');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2970,'澄城县',2916,'0,27,2916',0,'2970',2970,'','','109.901605,35.222564');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2971,'蒲城县',2916,'0,27,2916',0,'2971',2971,'','','109.628246,34.967697');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2972,'白水县',2916,'0,27,2916',0,'2972',2972,'','','109.570166,35.271646');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2973,'富平县',2916,'0,27,2916',0,'2973',2973,'','','109.23594,4.879424');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2974,'韩城市',2916,'0,27,2916',0,'2974',2974,'','','110.393774,35.582782');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2975,'华阴市',2916,'0,27,2916',0,'2975',2975,'','','110.058188,34.532718');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2976,'宝塔区',2917,'0,27,2917',0,'2976',2976,'','','109.648602,36.575992');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2977,'延长县',2917,'0,27,2917',0,'2977',2977,'','','110.138204,36.543669');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2978,'延川县',2917,'0,27,2917',0,'2978',2978,'','','110.084097,36.882427');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2979,'子长县',2917,'0,27,2917',0,'2979',2979,'','','109.62229,7.231002');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2980,'安塞县',2917,'0,27,2917',0,'2980',2980,'','','109.170681,36.92692');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2981,'志丹县',2917,'0,27,2917',0,'2981',2981,'','','108.662447,36.753503');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2982,'吴旗县',2917,'0,27,2917',0,'2982',2982,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2983,'甘泉县',2917,'0,27,2917',0,'2983',2983,'','','109.182239,36.353544');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2984,'富县',2917,'0,27,2917',0,'2984',2984,'','','109.049604,36.017427');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2985,'洛川县',2917,'0,27,2917',0,'2985',2985,'','','109.560982,35.744158');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2986,'宜川县',2917,'0,27,2917',0,'2986',2986,'','','110.191127,36.071139');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2987,'黄龙县',2917,'0,27,2917',0,'2987',2987,'','','109.945101,35.702636');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2988,'黄陵县',2917,'0,27,2917',0,'2988',2988,'','','108.953058,35.628414');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2989,'汉台区',2918,'0,27,2918',0,'2989',2989,'','','107.046167,33.187204');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2990,'南郑县',2918,'0,27,2918',0,'2990',2990,'','','106.969741,32.812036');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2991,'城固县',2918,'0,27,2918',0,'2991',2991,'','','107.260837,33.223583');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2992,'洋县',2918,'0,27,2918',0,'2992',2992,'','','107.616093,33.371587');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2993,'西乡县',2918,'0,27,2918',0,'2993',2993,'','','107.753712,32.894903');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2994,'勉县',2918,'0,27,2918',0,'2994',2994,'','','106.664578,33.243886');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2995,'宁强县',2918,'0,27,2918',0,'2995',2995,'','','106.140871,32.914183');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2996,'略阳县',2918,'0,27,2918',0,'2996',2996,'','','106.162834,33.385374');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2997,'镇巴县',2918,'0,27,2918',0,'2997',2997,'','','107.882774,32.517416');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2998,'留坝县',2918,'0,27,2918',0,'2998',2998,'','','106.959628,33.61296');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (2999,'佛坪县',2918,'0,27,2918',0,'2999',2999,'','','107.928836,33.549939');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3000,'榆阳区',2919,'0,27,2919',0,'3000',3000,'','','109.642692,38.386407');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3001,'神木县',2919,'0,27,2919',0,'3001',3001,'','','110.33127,8.829036');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3002,'府谷县',2919,'0,27,2919',0,'3002',3002,'','','110.866934,39.187272');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3003,'横山县',2919,'0,27,2919',0,'3003',3003,'','','109.466991,37.851606');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3004,'靖边县',2919,'0,27,2919',0,'3004',3004,'','','108.813259,37.484216');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3005,'定边县',2919,'0,27,2919',0,'3005',3005,'','','107.754293,37.388791');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3006,'绥德县',2919,'0,27,2919',0,'3006',3006,'','','110.396144,37.520861');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3007,'米脂县',2919,'0,27,2919',0,'3007',3007,'','','110.186901,37.828529');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3008,'佳县',2919,'0,27,2919',0,'3008',3008,'','','110.37374,8.07838');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3009,'吴堡县',2919,'0,27,2919',0,'3009',3009,'','','110.691877,37.594879');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3010,'清涧县',2919,'0,27,2919',0,'3010',3010,'','','110.289294,37.187444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3011,'子洲县',2919,'0,27,2919',0,'3011',3011,'','','109.877293,37.533672');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3012,'汉滨区',2920,'0,27,2920',0,'3012',3012,'','','108.896243,32.814464');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3013,'汉阴县',2920,'0,27,2920',0,'3013',3013,'','','108.496955,32.902521');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3014,'石泉县',2920,'0,27,2920',0,'3014',3014,'','','108.250518,33.065316');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3015,'宁陕县',2920,'0,27,2920',0,'3015',3015,'','','108.451796,33.536924');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3016,'紫阳县',2920,'0,27,2920',0,'3016',3016,'','','108.444826,32.448942');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3017,'岚皋县',2920,'0,27,2920',0,'3017',3017,'','','108.887181,32.24247');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3018,'平利县',2920,'0,27,2920',0,'3018',3018,'','','109.270397,32.291257');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3019,'镇坪县',2920,'0,27,2920',0,'3019',3019,'','','109.456711,31.939262');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3020,'旬阳县',2920,'0,27,2920',0,'3020',3020,'','','109.42358,2.902077');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3021,'白河县',2920,'0,27,2920',0,'3021',3021,'','','109.918375,32.729865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3022,'商州区',2921,'0,27,2921',0,'3022',3022,'','','109.873271,33.895485');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3023,'洛南县',2921,'0,27,2921',0,'3023',3023,'','','110.272643,34.165684');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3024,'丹凤县',2921,'0,27,2921',0,'3024',3024,'','','110.4438,0.684554');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3025,'商南县',2921,'0,27,2921',0,'3025',3025,'','','110.766533,33.411703');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3026,'山阳县',2921,'0,27,2921',0,'3026',3026,'','','109.981319,33.427684');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3027,'镇安县',2921,'0,27,2921',0,'3027',3027,'','','109.077371,33.380939');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3028,'柞水县',2921,'0,27,2921',0,'3028',3028,'','','109.280549,33.6954');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3029,'兰州市',28,'0,28',1,'3029,3043,3044,3045,3046,3047,3048,3049,3050',3029,NULL,NULL,'103.823305,36.064226');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3030,'嘉峪关市',28,'0,28',1,'3030,3051,3052,3053',3030,NULL,NULL,'98.281635,39.802397');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3031,'金昌市',28,'0,28',1,'3031,3054,3055',3031,NULL,NULL,'102.208126,38.516072');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3032,'白银市',28,'0,28',1,'3032,3056,3057,3058,3059,3060',3032,NULL,NULL,'104.171241,36.546682');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3033,'天水市',28,'0,28',1,'3033,3061,3062,3063,3064,3065,3066,3067',3033,NULL,NULL,'105.736932,34.584319');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3034,'武威市',28,'0,28',1,'3034,3068,3069,3070,3071',3034,NULL,NULL,'102.640147,37.933172');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3035,'张掖市',28,'0,28',1,'3035,3072,3073,3074,3075,3076,3077',3035,NULL,NULL,'100.459892,38.93932');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3036,'平凉市',28,'0,28',1,'3036,3078,3079,3080,3081,3082,3083,3084',3036,NULL,NULL,'106.688911,35.55011');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3037,'酒泉市',28,'0,28',1,'3037,3085,3086,3087,3088,3089,3090,3091',3037,NULL,NULL,'98.508415,39.741474');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3038,'庆阳市',28,'0,28',1,'3038,3092,3093,3094,3095,3096,3097,3098,3099',3038,NULL,NULL,'107.644227,35.726801');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3039,'定西地区',28,'0,28',1,'3039,3100,3101,3102,3103,3104,3105,3106',3039,'','','104.632422,35.590444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3040,'陇南地区',28,'0,28',1,'3040,3107,3108,3109,3110,3111,3112,3113,3114,3115',3040,'','','104.934573,33.39448');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3041,'临夏回族自治州',28,'0,28',1,'3041,3116,3117,3118,3119,3120,3121,3122',3041,'','','103.215249,35.598514');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3042,'甘南藏族自治州',28,'0,28',1,'3042,3123,3124,3125,3126,3127,3128,3129,3130',3042,'','','102.917442,34.992211');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3043,'城关区',3029,'0,28,3029',0,'3043',3043,'','','91.16873,0.6664  ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3044,'七里河区',3029,'0,28,3029',0,'3044',3044,'','','103.771994,35.992495');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3045,'西固区',3029,'0,28,3029',0,'3045',3045,'','','103.56268,6.106472');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3046,'安宁区',3029,'0,28,3029',0,'3046',3046,'','','103.719156,36.115523');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3047,'红古区',3029,'0,28,3029',0,'3047',3047,'','','103.060275,36.303488');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3048,'永登县',3029,'0,28,3029',0,'3048',3048,'','','103.252794,36.616924');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3049,'皋兰县',3029,'0,28,3029',0,'3049',3049,'','','103.890467,36.394688');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3050,'榆中县',3029,'0,28,3029',0,'3050',3050,'','','104.24429,5.999785');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3051,'峪泉镇',3030,'0,28,3030',0,'3051',3051,'','','98.237954,9.813924');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3052,'文殊镇',3030,'0,28,3030',0,'3052',3052,'','','98.384819,9.700128');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3053,'新城镇',3030,'0,28,3030',0,'3053',3053,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3054,'金川区',3031,'0,28,3031',0,'3054',3054,'','','102.32868,8.492172');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3055,'永昌县',3031,'0,28,3031',0,'3055',3055,'','','102.034316,38.43341');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3056,'白银区',3032,'0,28,3032',0,'3056',3056,'','','104.205649,36.501822');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3057,'平川区',3032,'0,28,3032',0,'3057',3057,'','','104.945609,36.69035');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3058,'靖远县',3032,'0,28,3032',0,'3058',3058,'','','104.732327,36.749103');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3059,'会宁县',3032,'0,28,3032',0,'3059',3059,'','','105.101861,35.963482');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3060,'景泰县',3032,'0,28,3032',0,'3060',3060,'','','104.061668,37.146079');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3061,'秦城区',3033,'0,28,3033',0,'3061',3061,'','','105.730825,34.589253');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3062,'北道区',3033,'0,28,3033',0,'3062',3062,'','','105.896871,34.576405');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3063,'清水县',3033,'0,28,3033',0,'3063',3063,'','','106.14008,4.742527');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3064,'秦安县',3033,'0,28,3033',0,'3064',3064,'','','105.698041,34.9535');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3065,'甘谷县',3033,'0,28,3033',0,'3065',3065,'','','105.274532,34.809421');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3066,'武山县',3033,'0,28,3033',0,'3066',3066,'','','104.88673,4.680182');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3067,'张家川回族自治县',3033,'0,28,3033',0,'3067',3067,'','','106.282137,34.995955');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3068,'凉州区',3034,'0,28,3034',0,'3068',3068,'','','102.759477,37.916272');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3069,'民勤县',3034,'0,28,3034',0,'3069',3069,'','','103.202473,38.827728');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3070,'古浪县',3034,'0,28,3034',0,'3070',3070,'','','103.342923,37.531272');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3071,'天祝藏族自治县',3034,'0,28,3034',0,'3071',3071,'','','102.761164,37.280912');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3072,'甘州区',3035,'0,28,3035',0,'3072',3072,'','','100.522079,39.010621');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3073,'肃南裕固族自治县',3035,'0,28,3035',0,'3073',3073,'','','99.326772,8.920571');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3074,'民乐县',3035,'0,28,3035',0,'3074',3074,'','','100.798429,38.473163');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3075,'临泽县',3035,'0,28,3035',0,'3075',3075,'','','100.191224,39.347032');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3076,'高台县',3035,'0,28,3035',0,'3076',3076,'','','99.607521,9.541675');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3077,'山丹县',3035,'0,28,3035',0,'3077',3077,'','','101.231647,38.530221');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3078,'崆峒区',3036,'0,28,3036',0,'3078',3078,'','','106.748887,35.515774');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3079,'泾川县',3036,'0,28,3036',0,'3079',3079,'','','107.441405,35.354115');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3080,'灵台县',3036,'0,28,3036',0,'3080',3080,'','','107.409606,35.074478');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3081,'崇信县',3036,'0,28,3036',0,'3081',3081,'','','107.003776,35.249103');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3082,'华亭县',3036,'0,28,3036',0,'3082',3082,'','','106.60867,5.20555');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3083,'庄浪县',3036,'0,28,3036',0,'3083',3083,'','','106.065686,35.255968');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3084,'静宁县',3036,'0,28,3036',0,'3084',3084,'','','105.677562,35.434012');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3085,'肃州区',3037,'0,28,3037',0,'3085',3085,'','','98.802616,9.598374');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3086,'金塔县',3037,'0,28,3037',0,'3086',3086,'','','99.186587,0.382579');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3087,'安西县',3037,'0,28,3037',0,'3087',3087,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3088,'肃北蒙古族自治县',3037,'0,28,3037',0,'3088',3088,'','','96.532551,0.67652');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3089,'阿克塞哈萨克族自治县',3037,'0,28,3037',0,'3089',3089,'','','94.452301,9.02589');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3090,'玉门市',3037,'0,28,3037',0,'3090',3090,'','','97.461209,0.225552');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3091,'敦煌市',3037,'0,28,3037',0,'3091',3091,'','','94.158042,0.388771');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3092,'西峰区',3038,'0,28,3038',0,'3092',3092,'','','107.673674,35.677201');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3093,'庆城县',3038,'0,28,3038',0,'3093',3093,'','','107.682548,36.046138');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3094,'环县',3038,'0,28,3038',0,'3094',3094,'','','107.072172,36.616789');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3095,'华池县',3038,'0,28,3038',0,'3095',3095,'','','108.034312,36.444472');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3096,'合水县',3038,'0,28,3038',0,'3096',3096,'','','108.317341,36.01426');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3097,'正宁县',3038,'0,28,3038',0,'3097',3097,'','','108.378087,35.414732');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3098,'宁县',3038,'0,28,3038',0,'3098',3098,'','','108.114173,35.571366');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3099,'镇原县',3038,'0,28,3038',0,'3099',3099,'','','107.177227,35.787954');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3100,'定西县',3039,'0,28,3039',0,'3100',3100,'','','104.626638,35.586056');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3101,'通渭县',3039,'0,28,3039',0,'3101',3101,'','','105.193978,35.213474');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3102,'陇西县',3039,'0,28,3039',0,'3102',3102,'','','104.632913,35.111802');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3103,'渭源县',3039,'0,28,3039',0,'3103',3103,'','','104.146328,35.139481');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3104,'临洮县',3039,'0,28,3039',0,'3104',3104,'','','103.912015,35.531079');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3105,'漳县',3039,'0,28,3039',0,'3105',3105,'','','104.365403,34.726751');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3106,'岷县',3039,'0,28,3039',0,'3106',3106,'','','104.246726,34.429644');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3107,'武都县',3040,'0,28,3040',0,'3107',3107,'','','104.931228,33.398411');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3108,'宕昌县',3040,'0,28,3040',0,'3108',3108,'','','104.452827,34.013489');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3109,'成县',3040,'0,28,3040',0,'3109',3109,'','','105.688289,33.747297');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3110,'康县',3040,'0,28,3040',0,'3110',3110,'','','105.637974,33.28499');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3111,'文县',3040,'0,28,3040',0,'3111',3111,'','','104.784206,32.947265');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3112,'西和县',3040,'0,28,3040',0,'3112',3112,'','','105.338531,33.919625');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3113,'礼县',3040,'0,28,3040',0,'3113',3113,'','','105.064091,34.111637');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3114,'两当县',3040,'0,28,3040',0,'3114',3114,'','','106.403885,33.911379');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3115,'徽县',3040,'0,28,3040',0,'3115',3115,'','','106.033317,33.892851');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3116,'临夏市',3041,'0,28,3041',0,'3116',3116,'','','103.200576,35.585835');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3117,'临夏县',3041,'0,28,3041',0,'3117',3117,'','','103.050791,35.518719');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3118,'康乐县',3041,'0,28,3041',0,'3118',3118,'','','103.62902,5.258018');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3119,'永靖县',3041,'0,28,3041',0,'3119',3119,'','','103.225044,36.007875');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3120,'广河县',3041,'0,28,3041',0,'3120',3120,'','','103.63114,5.478027');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3121,'和政县',3041,'0,28,3041',0,'3121',3121,'','','103.298568,35.345732');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3122,'东乡族自治县',3041,'0,28,3041',0,'3122',3122,'','','103.452145,35.698472');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3123,'合作市',3042,'0,28,3042',0,'3123',3123,'','','103.085649,34.99726');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3124,'临潭县',3042,'0,28,3042',0,'3124',3124,'','','103.631906,34.742615');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3125,'卓尼县',3042,'0,28,3042',0,'3125',3125,'','','103.39362,4.614458');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3126,'舟曲县',3042,'0,28,3042',0,'3126',3126,'','','104.326323,33.63481');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3127,'迭部县',3042,'0,28,3042',0,'3127',3127,'','','103.570446,34.005621');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3128,'玛曲县',3042,'0,28,3042',0,'3128',3128,'','','101.668977,33.850722');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3129,'碌曲县',3042,'0,28,3042',0,'3129',3129,'','','102.477547,34.392609');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3130,'夏河县',3042,'0,28,3042',0,'3130',3130,'','','102.506578,35.023031');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3131,'西宁市',29,'0,29',1,'3131,3139,3140,3141,3142,3143,3144,3145',3131,NULL,NULL,'101.767921,36.640739');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3132,'海东地区',29,'0,29',1,'3132,3146,3147,3148,3149,3150,3151',3132,NULL,NULL,'102.085207,36.51761');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3133,'海北藏族自治州',29,'0,29',1,'3133,3152,3153,3154,3155',3133,'','','100.879802,36.960654');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3134,'黄南藏族自治州',29,'0,29',1,'3134,3156,3157,3158,3159',3134,'','','102.0076,0.522852');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3135,'海南藏族自治州',29,'0,29',1,'3135,3160,3161,3162,3163,3164',3135,NULL,NULL,'109.733755,19.180501');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3136,'果洛藏族自治州',29,'0,29',1,'3136,3165,3166,3167,3168,3169,3170',3136,'','','100.223723,34.480485');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3137,'玉树藏族自治州',29,'0,29',1,'3137,3171,3172,3173,3174,3175,3176',3137,'','','97.013316,3.00624');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3138,'海西蒙古族藏族自治州',29,'0,29',1,'3138,3177,3178,3179,3180,3181',3138,'','','97.342625,7.373799');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3139,'城东区',3131,'0,29,3131',0,'3139',3139,'','','101.831865,36.602117');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3140,'城中区',3131,'0,29,3131',0,'3140',3140,'','','101.777361,36.606649');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3141,'城西区',3131,'0,29,3131',0,'3141',3141,'','','101.727603,36.631636');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3142,'城北区',3131,'0,29,3131',0,'3142',3142,'','','101.712664,36.686368');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3143,'大通回族土族自治县',3131,'0,29,3131',0,'3143',3143,'','','101.490478,37.120688');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3144,'湟中县',3131,'0,29,3131',0,'3144',3144,'','','101.544494,36.579759');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3145,'湟源县',3131,'0,29,3131',0,'3145',3145,'','','101.163178,36.636355');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3146,'平安县',3132,'0,29,3132',0,'3146',3146,'','','102.003965,36.406412');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3147,'民和回族土族自治县',3132,'0,29,3132',0,'3147',3147,'','','102.775994,36.157718');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3148,'乐都县',3132,'0,29,3132',0,'3148',3148,'','','102.429725,36.50789');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3149,'互助土族自治县',3132,'0,29,3132',0,'3149',3149,'','','102.151905,36.849455');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3150,'化隆回族自治县',3132,'0,29,3132',0,'3150',3150,'','','102.243978,36.071883');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3151,'循化撒拉族自治县',3132,'0,29,3132',0,'3151',3151,'','','102.463877,35.713963');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3152,'门源回族自治县',3133,'0,29,3133',0,'3152',3152,'','','101.731344,37.458384');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3153,'祁连县',3133,'0,29,3133',0,'3153',3153,'','','99.711263,8.327949');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3154,'海晏县',3133,'0,29,3133',0,'3154',3154,'','','100.843355,37.114748');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3155,'刚察县',3133,'0,29,3133',0,'3155',3155,'','','99.988383,7.556877');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3156,'同仁县',3134,'0,29,3134',0,'3156',3156,'','','102.078449,35.426829');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3157,'尖扎县',3134,'0,29,3134',0,'3157',3157,'','','101.849754,35.918697');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3158,'泽库县',3134,'0,29,3134',0,'3158',3158,'','','101.435446,35.139217');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3159,'河南蒙古族自治县',3134,'0,29,3134',0,'3159',3159,NULL,NULL,'113.486804,34.157184');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3160,'共和县',3135,'0,29,3135',0,'3160',3160,'','','100.064876,36.538342');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3161,'同德县',3135,'0,29,3135',0,'3161',3161,'','','100.601739,35.068401');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3162,'贵德县',3135,'0,29,3135',0,'3162',3162,'','','101.415762,36.010503');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3163,'兴海县',3135,'0,29,3135',0,'3163',3163,'','','99.733309,5.5403 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3164,'贵南县',3135,'0,29,3135',0,'3164',3164,'','','100.88461,5.698086');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3165,'玛沁县',3136,'0,29,3136',0,'3165',3165,'','','99.794262,4.504017');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3166,'班玛县',3136,'0,29,3136',0,'3166',3166,'','','100.550429,32.909736');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3167,'甘德县',3136,'0,29,3136',0,'3167',3167,'','','100.147842,34.021808');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3168,'达日县',3136,'0,29,3136',0,'3168',3168,'','','99.410809,3.482697');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3169,'久治县',3136,'0,29,3136',0,'3169',3169,'','','101.005508,33.473903');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3170,'玛多县',3136,'0,29,3136',0,'3170',3170,'','','98.244477,4.79757');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3171,'玉树县',3137,'0,29,3137',0,'3171',3171,'','','96.67212,0.922694');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3172,'杂多县',3137,'0,29,3137',0,'3172',3172,'','','94.301315,3.065764');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3173,'称多县',3137,'0,29,3137',0,'3173',3173,'','','97.001974,3.935172');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3174,'治多县',3137,'0,29,3137',0,'3174',3174,'','','92.608642,4.884439');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3175,'囊谦县',3137,'0,29,3137',0,'3175',3175,'','','96.137026,2.178289');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3176,'曲麻莱县',3137,'0,29,3137',0,'3176',3176,'','','95.140846,4.876865');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3177,'格尔木市',3138,'0,29,3138',0,'3177',3177,'','','92.701667,5.580972');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3178,'德令哈市',3138,'0,29,3138',0,'3178',3178,'','','97.162832,7.727059');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3179,'乌兰县',3138,'0,29,3138',0,'3179',3179,'','','98.672631,6.902367');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3180,'都兰县',3138,'0,29,3138',0,'3180',3180,'','','97.154435,6.160067');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3181,'天峻县',3138,'0,29,3138',0,'3181',3181,'','','98.496512,8.051753');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3182,'银川市',30,'0,30',1,'3182,3186,3187,3188,3189,3190,3191',3182,NULL,NULL,'106.206479,38.502621');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3183,'石嘴山市',30,'0,30',1,'3183,3192,3193,3194,3195,3196',3183,NULL,NULL,'106.379337,39.020223');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3184,'吴忠市',30,'0,30',1,'3184,3197,3198,3199,3200,3201,3202',3184,NULL,NULL,'106.208254,37.993561');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3185,'固原市',30,'0,30',1,'3185,3203,3204,3205,3206,3207,3208',3185,NULL,NULL,'106.285268,36.021523');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3186,'兴庆区',3182,'0,30,3182',0,'3186',3186,'','','106.382121,38.464266');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3187,'西夏区',3182,'0,30,3182',0,'3187',3187,'','','106.055556,38.553281');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3188,'金凤区',3182,'0,30,3182',0,'3188',3188,'','','106.24265,8.478591');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3189,'永宁县',3182,'0,30,3182',0,'3189',3189,'','','106.109048,38.295049');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3190,'贺兰县',3182,'0,30,3182',0,'3190',3190,'','','106.266518,38.687107');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3191,'灵武市',3182,'0,30,3182',0,'3191',3191,'','','106.532 ,935175 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3192,'大武口区',3183,'0,30,3183',0,'3192',3192,'','','106.387216,38.967534');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3193,'石嘴山区',3183,'0,30,3183',0,'3193',3193,'','','106.782192,39.238492');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3194,'平罗县',3183,'0,30,3183',0,'3194',3194,'','','106.544379,38.891511');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3195,'陶乐县',3183,'0,30,3183',0,'3195',3195,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3196,'惠农县',3183,'0,30,3183',0,'3196',3196,'','','106.718034,39.138138');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3197,'利通区',3184,'0,30,3184',0,'3197',3197,'','','106.219012,37.767882');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3198,'中卫县',3184,'0,30,3184',0,'3198',3198,'','','105.196754,37.521124');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3199,'中宁县',3184,'0,30,3184',0,'3199',3199,'','','105.69187,7.360097');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3200,'盐池县',3184,'0,30,3184',0,'3200',3200,'','','107.049761,37.625337');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3201,'同心县',3184,'0,30,3184',0,'3201',3201,'','','106.247387,37.098457');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3202,'青铜峡市',3184,'0,30,3184',0,'3202',3202,'','','105.961462,37.942125');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3203,'原州区',3185,'0,30,3185',0,'3203',3203,'','','106.254011,36.206829');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3204,'海原县',3185,'0,30,3185',0,'3204',3204,'','','105.679649,36.603125');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3205,'西吉县',3185,'0,30,3185',0,'3205',3205,'','','105.726749,35.939934');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3206,'隆德县',3185,'0,30,3185',0,'3206',3206,'','','106.073611,35.589138');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3207,'泾源县',3185,'0,30,3185',0,'3207',3207,'','','106.354023,35.529746');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3208,'彭阳县',3185,'0,30,3185',0,'3208',3208,'','','106.662473,35.972546');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3209,'乌鲁木齐市',31,'0,31',1,'3209,3224,3225,3226,3227,3228,3229,3230,3231,3232',3209,NULL,NULL,'87.564988,43.84038');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3210,'克拉玛依市',31,'0,31',1,'3210,3233,3234,3235,3236',3210,NULL,NULL,'84.88118,45.594331');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3211,'吐鲁番地区',31,'0,31',1,'3211,3237,3238,3239',3211,NULL,NULL,'89.181595,42.96047');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3212,'哈密地区',31,'0,31',1,'3212,3240,3241,3242',3212,NULL,NULL,'93.528355,42.858596');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3213,'昌吉回族自治州',31,'0,31',1,'3213,3243,3244,3245,3246,3247,3248,3249,3250',3213,'','','87.296038,4.007058');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3214,'博尔塔拉蒙古自治州',31,'0,31',1,'3214,3251,3252,3253',3214,'','','82.052436,4.913651');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3215,'巴音郭楞蒙古自治州',31,'0,31',1,'3215,3254,3255,3256,3257,3258,3259,3260,3261,3262',3215,NULL,NULL,'86.121688,41.771362');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3216,'阿克苏地区',31,'0,31',1,'3216,3263,3264,3265,3266,3267,3268,3269,3270,3271',3216,NULL,NULL,'80.269846,41.171731');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3217,'克孜勒苏柯尔克孜',31,'0,31',1,'3217,3272,3273,3274,3275',3217,'','','76.137564,9.750346');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3218,'喀什地区',31,'0,31',1,'3218,3276,3277,3278,3279,3280,3281,3282,3283,3284,3285,3286',3218,NULL,NULL,'75.992973,39.470627');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3219,'和田地区',31,'0,31',1,'3219,3287,3288,3289,3290,3291,3292,3293,3294',3219,NULL,NULL,'79.930239,37.116774');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3220,'伊犁哈萨克自治州',31,'0,31',1,'3220,3295,3296,3297,3298,3299,3300,3301,3302,3303,3304',3220,'','','81.297854,3.922248');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3221,'塔城地区',31,'0,31',1,'3221,3305,3306,3307,3308,3309,3310,3311',3221,NULL,NULL,'82.974881,46.758684');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3222,'阿勒泰地区',31,'0,31',1,'3222,3312,3313,3314,3315,3316,3317,3318',3222,NULL,NULL,'88.137915,47.839744');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3223,'省直辖行政单位',31,'0,31',1,'3223,3319,3320,3321,3322',3223,'','','116.489045,39.974612');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3224,'天山区',3209,'0,31,3209',0,'3224',3224,'','','87.632903,3.78386');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3225,'沙依巴克区',3209,'0,31,3209',0,'3225',3225,'','','87.545631,3.807886');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3226,'新市区',3209,'0,31,3209',0,'3226',3226,'','','115.412245,38.881183');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3227,'水磨沟区',3209,'0,31,3209',0,'3227',3227,'','','87.668014,3.843907');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3228,'头屯河区',3209,'0,31,3209',0,'3228',3228,'','','87.425049,3.925789');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3229,'达坂城区',3209,'0,31,3209',0,'3229',3229,'','','87.527134,3.004872');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3230,'东山区',3209,'0,31,3209',0,'3230',3230,'','','130.247501,47.483737');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3231,'开发区',3209,'0,31,3209',0,'3231',3231,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3232,'乌鲁木齐县',3209,'0,31,3209',0,'3232',3232,'','','87.360244,3.419108');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3233,'独山子区',3210,'0,31,3210',0,'3233',3233,'','','84.899917,4.302338');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3234,'克拉玛依区',3210,'0,31,3210',0,'3234',3234,'','','84.92699,0.203919');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3235,'白碱滩区',3210,'0,31,3210',0,'3235',3235,'','','85.177829,5.633602');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3236,'乌尔禾区',3210,'0,31,3210',0,'3236',3236,'','','85.511149,6.006576');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3237,'吐鲁番市',3211,'0,31,3211',0,'3237',3237,'','','89.266025,2.678925');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3238,'鄯善县',3211,'0,31,3211',0,'3238',3238,'','','90.616574,2.291735');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3239,'托克逊县',3211,'0,31,3211',0,'3239',3239,'','','88.424282,2.450354');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3240,'哈密市',3212,'0,31,3212',0,'3240',3240,'','','93.529373,2.344467');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3241,'巴里坤哈萨克自治县',3212,'0,31,3212',0,'3241',3241,'','','92.809873,4.273632');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3242,'伊吾县',3212,'0,31,3212',0,'3242',3242,'','','94.91157,0.570382');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3243,'昌吉市',3213,'0,31,3213',0,'3243',3243,'','','87.073618,4.175083');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3244,'阜康市',3213,'0,31,3213',0,'3244',3244,'','','88.305949,4.424104');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3245,'米泉市',3213,'0,31,3213',0,'3245',3245,'','','87.666864,3.959148');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3246,'呼图壁县',3213,'0,31,3213',0,'3246',3246,'','','86.693166,4.380956');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3247,'玛纳斯县',3213,'0,31,3213',0,'3247',3247,'','','86.137669,4.503552');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3248,'奇台县',3213,'0,31,3213',0,'3248',3248,'','','90.110269,4.527652');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3249,'吉木萨尔县',3213,'0,31,3213',0,'3249',3249,'','','89.053073,4.352914');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3250,'木垒哈萨克自治县',3213,'0,31,3213',0,'3250',3250,'','','90.823488,4.106619');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3251,'博乐市',3214,'0,31,3214',0,'3251',3251,'','','81.874285,4.844209');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3252,'精河县',3214,'0,31,3214',0,'3252',3252,'','','82.922362,4.557568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3253,'温泉县',3214,'0,31,3214',0,'3253',3253,'','','80.952156,4.96882');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3254,'库尔勒市',3215,'0,31,3215',0,'3254',3254,'','','85.709418,1.7055 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3255,'轮台县',3215,'0,31,3215',0,'3255',3255,'','','84.578959,1.819288');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3256,'尉犁县',3215,'0,31,3215',0,'3256',3256,'','','86.866991,0.858796');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3257,'若羌县',3215,'0,31,3215',0,'3257',3257,'','','89.762772,8.973844');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3258,'且末县',3215,'0,31,3215',0,'3258',3258,'','','85.506366,8.100709');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3259,'焉耆回族自治县',3215,'0,31,3215',0,'3259',3259,'','','86.076068,2.096104');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3260,'和静县',3215,'0,31,3215',0,'3260',3260,'','','85.200093,2.828681');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3261,'和硕县',3215,'0,31,3215',0,'3261',3261,'','','87.588716,2.141076');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3262,'博湖县',3215,'0,31,3215',0,'3262',3262,'','','86.885379,1.857898');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3263,'阿克苏市',3216,'0,31,3216',0,'3263',3263,'','','81.156013,0.349444');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3264,'温宿县',3216,'0,31,3216',0,'3264',3264,'','','80.461878,1.582085');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3265,'库车县',3216,'0,31,3216',0,'3265',3265,'','','83.459807,1.781933');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3266,'沙雅县',3216,'0,31,3216',0,'3266',3266,'','','82.925516,0.406065');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3267,'新和县',3216,'0,31,3216',0,'3267',3267,'','','81.985216,1.3657 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3268,'拜城县',3216,'0,31,3216',0,'3268',3268,'','','81.901235,2.045285');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3269,'乌什县',3216,'0,31,3216',0,'3269',3269,'','','79.281639,1.261847');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3270,'阿瓦提县',3216,'0,31,3216',0,'3270',3270,'','','80.439932,0.060788');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3271,'柯坪县',3216,'0,31,3216',0,'3271',3271,'','','78.994696,0.456666');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3272,'阿图什市',3217,'0,31,3217',0,'3272',3272,'','','76.867154,0.13123');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3273,'阿克陶县',3217,'0,31,3217',0,'3273',3273,'','','75.258638,8.632494');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3274,'阿合奇县',3217,'0,31,3217',0,'3274',3274,'','','77.891629,0.855268');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3275,'乌恰县',3217,'0,31,3217',0,'3275',3275,'','','74.921544,9.834579');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3276,'喀什市',3218,'0,31,3218',0,'3276',3276,'','','76.014343,9.513111');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3277,'疏附县',3218,'0,31,3218',0,'3277',3277,'','','75.754898,9.409741');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3278,'疏勒县',3218,'0,31,3218',0,'3278',3278,'','','76.36999,0.187645');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3279,'英吉沙县',3218,'0,31,3218',0,'3279',3279,'','','76.368709,8.800015');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3280,'泽普县',3218,'0,31,3218',0,'3280',3280,'','','77.226408,8.122553');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3281,'莎车县',3218,'0,31,3218',0,'3281',3281,'','','77.014833,8.322588');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3282,'叶城县',3218,'0,31,3218',0,'3282',3282,'','','77.223631,6.993014');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3283,'麦盖提县',3218,'0,31,3218',0,'3283',3283,'','','78.24231,0.848363');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3284,'岳普湖县',3218,'0,31,3218',0,'3284',3284,'','','76.989631,9.116645');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3285,'伽师县',3218,'0,31,3218',0,'3285',3285,'','','77.231563,9.599103');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3286,'巴楚县',3218,'0,31,3218',0,'3286',3286,'','','78.907139,9.618107');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3287,'和田市',3219,'0,31,3219',0,'3287',3287,'','','79.915814,7.15335');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3288,'和田县',3219,'0,31,3219',0,'3288',3288,'','','79.354993,5.683432');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3289,'墨玉县',3219,'0,31,3219',0,'3289',3289,'','','80.047148,8.384224');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3290,'皮山县',3219,'0,31,3219',0,'3290',3290,'','','78.52185,0.228319');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3291,'洛浦县',3219,'0,31,3219',0,'3291',3291,'','','80.741311,8.02422');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3292,'策勒县',3219,'0,31,3219',0,'3292',3292,'','','81.097996,7.084314');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3293,'于田县',3219,'0,31,3219',0,'3293',3293,'','','81.995463,7.16913');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3294,'民丰县',3219,'0,31,3219',0,'3294',3294,'','','83.352763,7.173147');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3295,'伊宁市',3220,'0,31,3220',0,'3295',3295,'','','81.289048,4.020356');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3296,'奎屯市',3220,'0,31,3220',0,'3296',3296,'','','85.013934,4.559557');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3297,'伊宁县',3220,'0,31,3220',0,'3297',3297,'','','81.75694,0.008117');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3298,'察布查尔锡伯自治县',3220,'0,31,3220',0,'3298',3298,'','','81.098298,3.638377');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3299,'霍城县',3220,'0,31,3220',0,'3299',3299,'','','80.781159,4.30912');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3300,'巩留县',3220,'0,31,3220',0,'3300',3300,'','','82.445701,3.30246');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3301,'新源县',3220,'0,31,3220',0,'3301',3301,'','','83.55815,0.376951');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3302,'昭苏县',3220,'0,31,3220',0,'3302',3302,'','','80.984257,2.776878');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3303,'特克斯县',3220,'0,31,3220',0,'3303',3303,'','','82.006852,2.925564');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3304,'尼勒克县',3220,'0,31,3220',0,'3304',3304,'','','83.2311 ,816731 ');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3305,'塔城市',3221,'0,31,3221',0,'3305',3305,'','','83.190128,6.811367');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3306,'乌苏市',3221,'0,31,3221',0,'3306',3306,'','','84.277878,4.407687');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3307,'额敏县',3221,'0,31,3221',0,'3307',3307,'','','84.20932,0.590664');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3308,'沙湾县',3221,'0,31,3221',0,'3308',3308,'','','85.474874,4.353745');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3309,'托里县',3221,'0,31,3221',0,'3309',3309,'','','83.895485,5.656986');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3310,'裕民县',3221,'0,31,3221',0,'3310',3310,'','','82.814799,6.004456');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3311,'和布克赛尔蒙古自治县',3221,'0,31,3221',0,'3311',3311,'','','86.217436,6.256703');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3312,'阿勒泰市',3222,'0,31,3222',0,'3312',3312,'','','87.926214,7.890136');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3313,'布尔津县',3222,'0,31,3222',0,'3313',3313,'','','87.235518,8.316007');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3314,'富蕴县',3222,'0,31,3222',0,'3314',3314,'','','89.393484,6.536157');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3315,'福海县',3222,'0,31,3222',0,'3315',3315,'','','88.050871,6.391694');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3316,'哈巴河县',3222,'0,31,3222',0,'3316',3316,'','','86.409673,8.316559');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3317,'青河县',3222,'0,31,3222',0,'3317',3317,'','','90.403028,6.268151');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3318,'吉木乃县',3222,'0,31,3222',0,'3318',3318,'','','86.208104,7.406311');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3319,'石河子市',3223,'0,31,3223',0,'3319',3319,NULL,NULL,'86.041865,44.308259');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3320,'阿拉尔市',3223,'0,31,3223',0,'3320',3320,NULL,NULL,'81.291737,40.61568');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3321,'图木舒克市',3223,'0,31,3223',0,'3321',3321,NULL,NULL,'79.198155,39.889223');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3322,'五家渠市',3223,'0,31,3223',0,'3322',3322,NULL,NULL,'87.565449,44.368899');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3323,'北部地区',32,'0,32',1,'3323,3327,3328,3329,3330,3331,3332,3333',3323,'','','126.81557,1.785256');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3324,'中部地区',32,'0,32',1,'3324,3334,3335,3336,3337,3338,3339',3324,'','','88.051176,9.821628');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3325,'南部地区',32,'0,32',1,'3325,3340,3341,3342,3343,3344,3345,3346,3347',3325,'','','105.923514,31.349803');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3326,'东部地区',32,'0,32',1,'3326,3348,3349',3326,'','','104.113008,30.666811');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3327,'台北市',3323,'0,32,3323',0,'3327',3327,'','','114.130474,22.374833');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3328,'基隆市',3323,'0,32,3323',0,'3328',3328,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3329,'新竹市',3323,'0,32,3323',0,'3329',3329,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3330,'台北县',3323,'0,32,3323',0,'3330',3330,'','','114.130474,22.374833');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3331,'桃园县',3323,'0,32,3323',0,'3331',3331,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3332,'宜兰县',3323,'0,32,3323',0,'3332',3332,'','','113.832978,34.037717');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3333,'新竹县',3323,'0,32,3323',0,'3333',3333,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3334,'台中市',3324,'0,32,3324',0,'3334',3334,'','','119.337634,26.091194');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3335,'台中县',3324,'0,32,3324',0,'3335',3335,'','','119.337634,26.091194');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3336,'苗栗县',3324,'0,32,3324',0,'3336',3336,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3337,'彰化县',3324,'0,32,3324',0,'3337',3337,'','','109.042927,26.632603');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3338,'南投县',3324,'0,32,3324',0,'3338',3338,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3339,'云林县',3324,'0,32,3324',0,'3339',3339,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3340,'高雄市',3325,'0,32,3325',0,'3340',3340,'','','111.590953,21.946482');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3341,'台南市',3325,'0,32,3325',0,'3341',3341,'','','121.360526,38.965845');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3342,'嘉义市',3325,'0,32,3325',0,'3342',3342,'','','114.246701,22.728866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3343,'台南县',3325,'0,32,3325',0,'3343',3343,'','','121.360526,38.965845');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3344,'高雄县',3325,'0,32,3325',0,'3344',3344,'','','111.590953,21.946482');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3345,'屏东县',3325,'0,32,3325',0,'3345',3345,'','','119.308468,26.107057');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3346,'嘉义县',3325,'0,32,3325',0,'3346',3346,'','','114.246701,22.728866');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3347,'澎湖县',3325,'0,32,3325',0,'3347',3347,'','','121.131566,30.875327');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3348,'花莲县',3326,'0,32,3326',0,'3348',3348,'','','110.476598,19.437607');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3349,'台东县',3326,'0,32,3326',0,'3349',3349,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3350,'香港岛(岛港区)',33,'0,33',1,'3350,3354,3355,3356,3357',3350,'','','119.315039,26.082585');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3351,'九龙半岛',33,'0,33',1,'3351,3358,3359,3360,3361,3362,3363',3351,'','','104.413023,31.125827');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3352,'新界',33,'0,33',1,'3352,3364,3365,3366,3367,3368,3369,3370,3371',3352,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3353,'离岛区',33,'0,33',0,'3353',3353,'','','114.030792,22.224767');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3354,'中西区',3350,'0,33,3350',0,'3354',3354,'','','114.148789,22.285445');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3355,'湾仔区',3350,'0,33,3350',0,'3355',3355,'','','114.194766,22.273695');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3356,'东区',3350,'0,33,3350',0,'3356',3356,'','','114.235394,22.276112');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3357,'南区',3350,'0,33,3350',0,'3357',3357,'','','114.218796,22.231257');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3358,'九龙城区',3351,'0,33,3351',0,'3358',3358,'','','114.203018,22.320098');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3359,'观塘区',3351,'0,33,3351',0,'3359',3359,'','','114.236781,22.316253');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3360,'深水埗区',3351,'0,33,3351',0,'3360',3360,'','','114.164764,22.333562');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3361,'黄大仙区',3351,'0,33,3351',0,'3361',3361,'','','114.214275,22.346981');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3362,'油尖区',3351,'0,33,3351',0,'3362',3362,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3363,'旺角区',3351,'0,33,3351',0,'3363',3363,'','','');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3364,'沙田区',3352,'0,33,3352',0,'3364',3364,'','','114.213219,22.394258');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3365,'大埔区',3352,'0,33,3352',0,'3365',3365,'','','114.31628,2.481765');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3366,'北区',3352,'0,33,3352',0,'3366',3366,'','','114.218796,22.522803');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3367,'荃湾区',3352,'0,33,3352',0,'3367',3367,'','','114.083034,22.364575');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3368,'葵青区',3352,'0,33,3352',0,'3368',3368,'','','114.120975,22.33942');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3369,'屯门区',3352,'0,33,3352',0,'3369',3369,'','','113.961777,22.378576');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3370,'元朗区',3352,'0,33,3352',0,'3370',3370,'','','114.033391,22.453932');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3371,'西贡区',3352,'0,33,3352',0,'3371',3371,'','','114.394457,22.305232');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3372,'澳门半岛',34,'0,34',1,'3372,3374,3375,3376,3377,3378',3372,'','','113.566432,22.195004');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3373,'澳门离岛',34,'0,34',1,'3373,3379,3380,3381',3373,'','','113.557519,22.204118');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3374,'花地玛堂区(北区)',3372,'0,34,3372',0,'3374',3374,'','','114.218796,22.522803');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3375,'圣安多尼堂区(花王堂区)',3372,'0,34,3372',0,'3375',3375,'','','113.551037,22.202182');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3376,'大堂区(中区)',3372,'0,34,3372',0,'3376',3376,'','','113.561136,22.192745');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3377,'望德堂区',3372,'0,34,3372',0,'3377',3377,'','','113.560171,22.202173');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3378,'风顺堂区',3372,'0,34,3372',0,'3378',3378,'','','113.546138,22.192831');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3379,'嘉模堂区',3373,'0,34,3373',0,'3379',3379,'','','113.567096,22.161098');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3380,'圣方济堂区',3373,'0,34,3373',0,'3380',3380,'','','114.237388,22.42566');
insert  into `area`(`areaid`,`areaname`,`parentid`,`arrparentid`,`child`,`arrchildid`,`listorder`,`dili`,`areadir`,`marker`) values (3381,'路氹城',3373,'0,34,3373',0,'3381',3381,'','','113.574069,22.145896');

/*Table structure for table `bg_company` */

CREATE TABLE `bg_company` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(30) DEFAULT NULL COMMENT '客户公司名称',
  `address` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `personName` varchar(20) DEFAULT NULL COMMENT '公司联系人',
  `mobile` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `status` int(2) DEFAULT NULL,
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客户信息表：管理运营商基础信息';

/*Data for the table `bg_company` */

insert  into `bg_company`(`id`,`companyName`,`address`,`personName`,`mobile`,`status`,`reqTime`) values (1,'东方能源',NULL,NULL,NULL,NULL,'2018-04-03 00:35:19');

/*Table structure for table `bg_equipment` */

CREATE TABLE `bg_equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `simId` bigint(20) DEFAULT NULL COMMENT 'sim卡ID',
  `name` varchar(30) DEFAULT NULL COMMENT '设备名称',
  `equipCode` varchar(50) DEFAULT NULL COMMENT '设备编码',
  `companyId` bigint(20) DEFAULT NULL COMMENT '绑定的公司ID',
  `saleDate` date DEFAULT NULL COMMENT '销售时间（服务开始日期）',
  `serviceDay` int(10) DEFAULT NULL COMMENT '服务周期/天',
  `remainDay` int(10) DEFAULT NULL COMMENT '剩余天数',
  `status` int(2) DEFAULT '0',
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备信息表：管理汉邦设备信息';

/*Data for the table `bg_equipment` */

/*Table structure for table `bg_history_report` */

CREATE TABLE `bg_history_report` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `custonlineid` int(20) DEFAULT NULL COMMENT '公司主键',
  `modulName` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `datainfor` decimal(10,2) DEFAULT NULL COMMENT '报警数据',
  `description` varchar(500) DEFAULT NULL COMMENT '报警描述',
  `creattime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '报警时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bg_history_report` */

/*Table structure for table `bg_level` */

CREATE TABLE `bg_level` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `levelName` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `companyid` int(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='模块';

/*Data for the table `bg_level` */

insert  into `bg_level`(`id`,`levelName`,`companyid`) values (1,'haha',1);
insert  into `bg_level`(`id`,`levelName`,`companyid`) values (2,'heihei',1);

/*Table structure for table `bg_level_data` */

CREATE TABLE `bg_level_data` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `levelid` int(20) DEFAULT NULL COMMENT '模块id',
  `leveldata` decimal(20,2) DEFAULT NULL COMMENT '模块数据',
  `levelunit` varchar(100) DEFAULT NULL COMMENT '模块单位',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `moduleid` int(20) DEFAULT NULL COMMENT '模块id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `bg_level_data` */

insert  into `bg_level_data`(`id`,`levelid`,`leveldata`,`levelunit`,`createtime`,`moduleid`) values (1,1,33.00,'升','2018-03-21 20:50:14',1);
insert  into `bg_level_data`(`id`,`levelid`,`leveldata`,`levelunit`,`createtime`,`moduleid`) values (2,1,13.00,'1','2018-03-21 20:50:56',1);
insert  into `bg_level_data`(`id`,`levelid`,`leveldata`,`levelunit`,`createtime`,`moduleid`) values (3,1,11.00,'11','2018-03-21 20:51:16',1);
insert  into `bg_level_data`(`id`,`levelid`,`leveldata`,`levelunit`,`createtime`,`moduleid`) values (4,2,31.00,'123','2018-03-21 20:51:43',2);
insert  into `bg_level_data`(`id`,`levelid`,`leveldata`,`levelunit`,`createtime`,`moduleid`) values (5,2,33.00,'1','2018-03-21 20:51:53',2);
insert  into `bg_level_data`(`id`,`levelid`,`leveldata`,`levelunit`,`createtime`,`moduleid`) values (6,2,22.00,'3','2018-03-21 20:52:04',2);

/*Table structure for table `bg_log_recharge` */

CREATE TABLE `bg_log_recharge` (
  `id` bigint(20) NOT NULL,
  `equipId` bigint(20) DEFAULT NULL COMMENT '设备ID',
  `companyId` bigint(20) DEFAULT NULL COMMENT '公司ID',
  `dayBefore` int(10) DEFAULT NULL COMMENT '充值前剩余天数',
  `dayAdd` int(10) DEFAULT NULL COMMENT '充值天数',
  `dayAfter` int(10) DEFAULT NULL COMMENT '充值后剩余天数',
  `addTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '充值时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值记录表：记录每次充值的流水信息';

/*Data for the table `bg_log_recharge` */

/*Table structure for table `bg_module` */

CREATE TABLE `bg_module` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `fieldname` varchar(255) DEFAULT NULL COMMENT '模块字段',
  `nuitname` varchar(255) DEFAULT NULL COMMENT '单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `bg_module` */

insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (1,'储罐液位','cgyw','毫米水柱');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (2,'储罐压力','cgyl','千帕');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (3,'出口温度','ckwd','3');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (4,'出口压力','ckyl','3');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (5,'环境温度','hjwd','4');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (6,'燃气报警1','rqbj1','5');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (7,'燃气报警2','rqbj2','6');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (8,'燃气报警3','rqbj3','8');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (9,'燃气报警4','rqbj4','7');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (10,'出液阀状态','cyfzt','9');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (11,'进液阀状态','jyfzt','1');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (12,'增压阀状态','zyfzt','0');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (13,'流量计温度','lljwd','摄氏度');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (14,'流量计压力','lljyl','千帕');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (15,'流量计瞬时流量','lljssll','立方/小时');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (16,'流量计累计流量','lljljll','立方');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (17,'ic卡剩余量','icksyl','1');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (18,'ic卡累计充值','ickljcz','2');
insert  into `bg_module`(`id`,`moduleName`,`fieldname`,`nuitname`) values (19,'ic卡充值量','ickczl','3');

/*Table structure for table `bg_movement` */

CREATE TABLE `bg_movement` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `custonlineid` int(20) DEFAULT NULL COMMENT '公司id',
  `minlimit` int(20) DEFAULT NULL COMMENT '最低限',
  `maxlimit` int(20) DEFAULT NULL COMMENT '最高限',
  `steelphone` varchar(255) DEFAULT NULL COMMENT '推送方式',
  `username` varchar(255) DEFAULT NULL COMMENT '推送人姓名',
  `userid` varchar(255) DEFAULT NULL COMMENT '用户id',
  `fieldname` varchar(255) DEFAULT NULL COMMENT '模块字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bg_movement` */

/*Table structure for table `bg_patrol` */

CREATE TABLE `bg_patrol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskname` varchar(128) DEFAULT NULL COMMENT '巡检任务名称',
  `userid` int(10) DEFAULT NULL COMMENT '巡检人员',
  `status` int(8) DEFAULT NULL COMMENT '巡检状态，0：待处理，1：进行中，2：已完成',
  `posttime` datetime NOT NULL,
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bg_patrol` */

/*Table structure for table `bg_patrol_pos` */

CREATE TABLE `bg_patrol_pos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskid` bigint(20) NOT NULL COMMENT '巡检任务id',
  `type` int(8) DEFAULT NULL COMMENT '类型：0：开始巡检，1：中间，2：结束巡检',
  `posttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '定位时间',
  `position` varchar(128) DEFAULT NULL COMMENT '位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `bg_patrol_pos` */

insert  into `bg_patrol_pos`(`id`,`taskid`,`type`,`posttime`,`position`) values (1,1,0,'2018-03-20 21:24:48','望京');
insert  into `bg_patrol_pos`(`id`,`taskid`,`type`,`posttime`,`position`) values (2,1,1,'2018-03-20 21:25:09','望京西');
insert  into `bg_patrol_pos`(`id`,`taskid`,`type`,`posttime`,`position`) values (3,1,1,'2018-03-20 21:25:28','奥林匹克公园');
insert  into `bg_patrol_pos`(`id`,`taskid`,`type`,`posttime`,`position`) values (4,1,1,'2018-03-20 21:25:45','奥体中心');
insert  into `bg_patrol_pos`(`id`,`taskid`,`type`,`posttime`,`position`) values (5,1,2,'2018-03-20 21:26:41','北土城');

/*Table structure for table `bg_platform` */

CREATE TABLE `bg_platform` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_uniqu` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='平台参数表';

/*Data for the table `bg_platform` */

insert  into `bg_platform`(`id`,`name`) values (1,'东正捷燃气运营监控平台');

/*Table structure for table `bg_role` */

CREATE TABLE `bg_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色信息表：维护角色信息';

/*Data for the table `bg_role` */

insert  into `bg_role`(`id`,`name`,`reqTime`) values (1,'系统管理员','2017-11-24 16:18:32');
insert  into `bg_role`(`id`,`name`,`reqTime`) values (2,'运营商管理员','2017-11-24 16:18:27');
insert  into `bg_role`(`id`,`name`,`reqTime`) values (3,'运营商员工','2017-11-24 16:18:52');
insert  into `bg_role`(`id`,`name`,`reqTime`) values (4,'运营商客户','2017-11-24 16:19:02');
insert  into `bg_role`(`id`,`name`,`reqTime`) values (5,'','2017-11-28 20:14:14');

/*Table structure for table `bg_simcard` */

CREATE TABLE `bg_simcard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cardNumber` varchar(20) DEFAULT NULL COMMENT 'sim卡号码',
  `status` int(2) DEFAULT '0',
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `bg_simcard` */

insert  into `bg_simcard`(`id`,`cardNumber`,`status`,`reqTime`) values (5,'',1,'2018-03-25 23:11:40');
insert  into `bg_simcard`(`id`,`cardNumber`,`status`,`reqTime`) values (6,'18500156605',1,'2018-03-25 23:11:15');

/*Table structure for table `bg_user` */

CREATE TABLE `bg_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '登陆密码',
  `roleId` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `status` int(2) DEFAULT '0' COMMENT '用户状态',
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `realname` varchar(32) DEFAULT NULL,
  `auth` int(11) DEFAULT NULL COMMENT '权限，0为全部客户，1为部分客户',
  `company` varchar(40) DEFAULT NULL,
  `companyid` varchar(11) DEFAULT NULL COMMENT '所属公司id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_uniqu` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='用户管理表，用于平台和APP登陆';

/*Data for the table `bg_user` */

insert  into `bg_user`(`id`,`username`,`password`,`roleId`,`status`,`reqTime`,`realname`,`auth`,`company`,`companyid`) values (28,'13512253703','13512253703',NULL,0,'2018-04-23 13:46:35','',0,'中石气燃气集团安平门站','1');
insert  into `bg_user`(`id`,`username`,`password`,`roleId`,`status`,`reqTime`,`realname`,`auth`,`company`,`companyid`) values (29,'15810909376','15810909376',1,0,'2018-04-11 10:53:00','13512253703',NULL,'栋整洁','1');

/*Table structure for table `bg_user_cust` */

CREATE TABLE `bg_user_cust` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `custid` bigint(20) NOT NULL COMMENT '客户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `bg_user_cust` */

insert  into `bg_user_cust`(`id`,`userid`,`custid`) values (1,10,1);
insert  into `bg_user_cust`(`id`,`userid`,`custid`) values (2,10,2);
insert  into `bg_user_cust`(`id`,`userid`,`custid`) values (3,10,3);

/*Table structure for table `bg_user_setting_cust` */

CREATE TABLE `bg_user_setting_cust` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '管理员id',
  `custid` bigint(20) NOT NULL COMMENT '客户id',
  `status` int(11) NOT NULL COMMENT '状态',
  `posttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `bg_user_setting_cust` */

/*Table structure for table `custonline` */

CREATE TABLE `custonline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `custname` varchar(255) DEFAULT NULL,
  `deviceid` varchar(255) DEFAULT NULL,
  `contractor` varchar(255) DEFAULT NULL,
  `contractdetail` varchar(255) DEFAULT NULL,
  `custaddress` varchar(255) DEFAULT NULL,
  `onlinetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `custrole` varchar(255) DEFAULT NULL,
  `custauth` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `companyid` varchar(11) DEFAULT NULL COMMENT '所属公司id',
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `marker` varchar(255) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='客户上线，用户与设备绑定';

/*Data for the table `custonline` */

insert  into `custonline`(`id`,`custname`,`deviceid`,`contractor`,`contractdetail`,`custaddress`,`onlinetime`,`custrole`,`custauth`,`userid`,`companyid`,`province_id`,`city_id`,`area_id`,`marker`,`a`) values (48,'中石气燃气集团安平门站','39539218197322179973421739839112','中石气燃气集团安平门站','13512253703','','2018-04-03 00:36:12',NULL,NULL,'28','1',NULL,NULL,NULL,NULL,NULL);
insert  into `custonline`(`id`,`custname`,`deviceid`,`contractor`,`contractdetail`,`custaddress`,`onlinetime`,`custrole`,`custauth`,`userid`,`companyid`,`province_id`,`city_id`,`area_id`,`marker`,`a`) values (49,'联合利达','42199218197322179973454730838222','韩高波','15810909376','北京市海淀区西土城路4号','2018-04-11 10:33:45','','','29','',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `deviceinfo` */

CREATE TABLE `deviceinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deviceid` varchar(40) DEFAULT NULL,
  `devname` varchar(30) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `cmd` varchar(50) DEFAULT NULL,
  `msgid` varchar(30) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `usr` varchar(30) DEFAULT NULL,
  `pwd` varchar(15) DEFAULT NULL,
  `ver` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `reqTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cgyw` varchar(20) NOT NULL COMMENT '储罐液位',
  `cgyl` varchar(20) DEFAULT NULL COMMENT '储罐压力',
  `ckwd` varchar(20) DEFAULT NULL COMMENT '出口温度',
  `ckyl` varchar(20) DEFAULT NULL COMMENT '出口压力',
  `hjwd` varchar(20) DEFAULT NULL COMMENT '环境温度',
  `rqbj1` varchar(20) DEFAULT NULL COMMENT '燃气报警1',
  `rqbj2` varchar(20) DEFAULT NULL COMMENT '燃气报警2',
  `rqbj3` varchar(20) DEFAULT NULL COMMENT '燃气报警3',
  `rqbj4` varchar(20) DEFAULT NULL COMMENT '燃气报警4',
  `cyfzt` varchar(20) DEFAULT NULL COMMENT '出液阀状态',
  `jyfzt` varchar(20) DEFAULT NULL COMMENT '进液阀状态',
  `zyfzt` varchar(20) DEFAULT NULL COMMENT '增压阀状态',
  `lljwd` varchar(20) DEFAULT NULL COMMENT '流量计温度',
  `lljyl` varchar(20) DEFAULT NULL COMMENT '流量计压力',
  `lljssll` varchar(20) DEFAULT NULL COMMENT '流量计瞬时流量',
  `lljljll` varchar(20) DEFAULT NULL COMMENT '流量计累计流量',
  `icksyl` varchar(20) DEFAULT NULL COMMENT 'ic卡剩余量',
  `ickljcz` varchar(20) DEFAULT NULL COMMENT 'ic卡累计充值',
  `ickczl` varchar(20) DEFAULT NULL COMMENT 'ic卡充值量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_devid` (`deviceid`) COMMENT '唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=776 DEFAULT CHARSET=utf8 COMMENT='设备最新的信息';

/*Data for the table `deviceinfo` */


CREATE TABLE `deviceinfo_his` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deviceid` varchar(40) DEFAULT NULL,
  `devname` varchar(30) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `cmd` varchar(50) DEFAULT NULL,
  `msgid` varchar(30) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `usr` varchar(30) DEFAULT NULL,
  `pwd` varchar(15) DEFAULT NULL,
  `ver` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `reqTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cgyw` varchar(20) NOT NULL COMMENT '储罐液位',
  `cgyl` varchar(20) DEFAULT NULL COMMENT '储罐压力',
  `ckwd` varchar(20) DEFAULT NULL COMMENT '出口温度',
  `ckyl` varchar(20) DEFAULT NULL COMMENT '出口压力',
  `hjwd` varchar(20) DEFAULT NULL COMMENT '环境温度',
  `rqbj1` varchar(20) DEFAULT NULL COMMENT '燃气报警1',
  `rqbj2` varchar(20) DEFAULT NULL COMMENT '燃气报警2',
  `rqbj3` varchar(20) DEFAULT NULL COMMENT '燃气报警3',
  `rqbj4` varchar(20) DEFAULT NULL COMMENT '燃气报警4',
  `cyfzt` varchar(20) DEFAULT NULL COMMENT '出液阀状态',
  `jyfzt` varchar(20) DEFAULT NULL COMMENT '进液阀状态',
  `zyfzt` varchar(20) DEFAULT NULL COMMENT '增压阀状态',
  `lljwd` varchar(20) DEFAULT NULL COMMENT '流量计温度',
  `lljyl` varchar(20) DEFAULT NULL COMMENT '流量计压力',
  `lljssll` varchar(20) DEFAULT NULL COMMENT '流量计瞬时流量',
  `lljljll` varchar(20) DEFAULT NULL COMMENT '流量计累计流量',
  `icksyl` varchar(20) DEFAULT NULL COMMENT 'ic卡剩余量',
  `ickljcz` varchar(20) DEFAULT NULL COMMENT 'ic卡累计充值',
  `ickczl` varchar(20) DEFAULT NULL COMMENT 'ic卡充值量',
  PRIMARY KEY (`id`),
  KEY `reqTime` (`reqTime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53325 DEFAULT CHARSET=utf8 COMMENT='设备信息，历史表，用户查询历史数据，及报表生成';

/*Table structure for table `third_device_detail` */

CREATE TABLE `third_device_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(20) DEFAULT NULL COMMENT '表具ID',
  `accountDate` varchar(10) DEFAULT NULL COMMENT '结算日期（月、日）',
  `price` decimal(15,3) DEFAULT NULL COMMENT '单价',
  `chargeNumber` varchar(40) DEFAULT NULL COMMENT '充值流水号',
  `purchase` decimal(20,3) DEFAULT NULL COMMENT '购买量',
  `curRemainData` decimal(20,3) DEFAULT NULL COMMENT '当前剩余数据',
  `curTotalFlow` decimal(20,3) DEFAULT NULL COMMENT '当前累计流量',
  `accountDateTotalFlow` decimal(20,3) DEFAULT NULL COMMENT '结算日累计流量',
  `cellVoltage` decimal(20,3) DEFAULT NULL COMMENT '电池电压',
  `signalIntensity` varchar(10) DEFAULT NULL COMMENT '信号强度',
  `reqTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '实时时间',
  `status` varchar(10) DEFAULT NULL COMMENT '状态ST',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='第三方表具明细';

/*Data for the table `third_device_detail` */

insert  into `third_device_detail`(`id`,`deviceId`,`accountDate`,`price`,`chargeNumber`,`purchase`,`curRemainData`,`curTotalFlow`,`accountDateTotalFlow`,`cellVoltage`,`signalIntensity`,`reqTime`,`status`) values (4,'20215555555555','0102',10.000,'1234',200.000,300.000,400.000,500.000,0.000,'0','2018-05-05 15:15:11','1');

/*Table structure for table `third_user_usage_info` */

CREATE TABLE `third_user_usage_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` varchar(64) DEFAULT NULL COMMENT '用户编号',
  `areaId` varchar(64) DEFAULT NULL COMMENT '区域编码',
  `stockPrice` decimal(20,2) DEFAULT NULL COMMENT '囤积量金额',
  `alarmprice` decimal(20,2) DEFAULT NULL COMMENT '报警量金额',
  `overdraftPrice` decimal(20,2) DEFAULT NULL COMMENT '透支量金额',
  `oneStagePrice` decimal(20,2) DEFAULT NULL COMMENT '一段单价',
  `oneStageLimit` decimal(20,1) DEFAULT NULL COMMENT '一段限量',
  `twoStagePrice` decimal(20,2) DEFAULT NULL COMMENT '二段单价',
  `twoStageLimit` decimal(20,1) DEFAULT NULL COMMENT '二段限量',
  `threeStagePrice` decimal(20,2) DEFAULT NULL COMMENT '三段单价',
  `threeStageLimit` decimal(20,1) DEFAULT NULL COMMENT '三段限量',
  `fourStagePrice` decimal(20,2) DEFAULT NULL COMMENT '四段单价',
  `fourStageLimit` decimal(20,1) DEFAULT NULL COMMENT '四段限量',
  `fiveStagePrice` decimal(20,2) DEFAULT NULL COMMENT '五段单价',
  `totalPurchasePrice` decimal(20,2) DEFAULT NULL COMMENT '累计购买金额',
  `totalUsedPrice` decimal(20,2) DEFAULT NULL COMMENT '累计使用金额',
  `overdraftUsedPrice` decimal(20,2) DEFAULT NULL COMMENT '透支累计使用金额',
  `periodUsage` decimal(20,2) DEFAULT NULL COMMENT '周期使用量',
  `reqTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '写入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='第三方用户使用情况明细';

/*Data for the table `third_user_usage_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
