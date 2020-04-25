require 'pry-byebug'

DX = [0, 1, 0, -1]
DY = [1, 0, -1, 0]
def cut_off_tree(grid)
  return -1 if grid[0][0] == 0
  steps = 0
  numbers = {}
  for i in 0..grid.size-1
    for j in 0..grid[0].size-1
      numbers[grid[i][j]] = [i,j] if grid[i][j]!=0 && grid[i][j]!=1
    end
  end
  numbers = numbers.sort_by{|k,v| k}
  last_pos = [0,0]
  numbers.each do |k, v|
    dist = bfs(grid, last_pos, k)
    return -1 if dist == -1
    steps+=dist
    last_pos = v
  end
  steps
end

def bfs(grid, last_post, looking)
  return 0 if grid[last_post[0]][last_post[1]] == looking
  n = grid.size
  m = grid[0].size
  dist = Array.new(n) { Array.new(m, -1 ) }
  queue=[last_post]
  dist[last_post[0]][last_post[1]] = 0;
  while(queue.size != 0)
    cell = queue.shift
    4.times do |i|
      new_x = cell[0]+DX[i]
      new_y = cell[1]+DY[i]

      next if !inside?(new_x, new_y, n, m)

      value = grid[new_x][new_y]
      if value == looking
        return dist[cell[0]][cell[1]] + 1;
      end
      if value != 0 && value !=1 && dist[new_x][new_y] == -1
        dist[new_x][new_y] = dist[cell[0]][cell[1]] + 1;
        queue.push([new_x, new_y])
      end
    end
  end
  -1
end
def inside?(i, j, n, m)
  i>=0 && i< n && j>=0 && j <m
end

# def children(x,y, grid)
#   children = []
#   4.times do |i|
#     new_x = x+DX[i]
#     new_y = y+DY[i]
#     children << [new_x, new_y] if inside?(new_x, new_y, grid) && grid[new_x][new_y]!=0
#   end
#   children
# end

# puts cut_off_tree([[1,2,3],[0,0,4],[7,6,5]])
# puts cut_off_tree([[1,2,3],[0,0,0],[7,6,5]])
# puts cut_off_tree([[1,7,3],[0,0,4],[2,6,5]])
# puts cut_off_tree([[1,7,3],[0,0,0],[2,6,5]])
# raise "x"

a = [
  [
  49131,
  27484,
  37079,
  5112,
  82512,
  77522,
  0,
  0,
  84740,
  46730,
  42986,
  25440,
  90350,
  97211,
  55002,
  0,
  0,
  2213,
  72085,
  0,
  36010,
  27828,
  29392,
  3048,
  52147,
  25009,
  16038,
  60927,
  76634,
  60050,
  59564,
  86787,
  13469,
  0,
  13521,
  73690,
  88332,
  73069,
  50836
  ],
  [
  39465,
  15069,
  0,
  14196,
  26313,
  13307,
  85182,
  46131,
  94818,
  67696,
  65746,
  11613,
  20200,
  4453,
  37454,
  2306,
  37090,
  99459,
  2053,
  0,
  5612,
  77130,
  17718,
  19870,
  19971,
  58239,
  41199,
  21584,
  69691,
  41963,
  53805,
  81773,
  38838,
  50612,
  32089,
  60095,
  70997,
  53700,
  83832
  ],
  [
  65872,
  99179,
  467,
  48443,
  73039,
  97051,
  17035,
  86315,
  63848,
  17689,
  37535,
  20831,
  51383,
  96663,
  97898,
  71217,
  80606,
  42209,
  69262,
  86849,
  0,
  84531,
  63092,
  24168,
  0,
  42882,
  33301,
  30283,
  54216,
  80343,
  8437,
  7247,
  68805,
  28948,
  0,
  53850,
  62034,
  33203,
  73499
  ],
  [
  43189,
  35233,
  36860,
  78878,
  94155,
  54711,
  62170,
  42727,
  28309,
  88408,
  79195,
  0,
  83939,
  45671,
  55250,
  84054,
  52656,
  24650,
  47924,
  47339,
  0,
  75272,
  65385,
  63344,
  0,
  78515,
  36242,
  43408,
  98376,
  90981,
  38763,
  29668,
  97659,
  50396,
  0,
  53281,
  95161,
  16347,
  47561
  ],
  [
  47045,
  23815,
  55056,
  99846,
  83840,
  9275,
  57731,
  36457,
  91239,
  8547,
  15021,
  41135,
  90046,
  75909,
  96464,
  39377,
  80514,
  8031,
  51794,
  56326,
  12264,
  19566,
  0,
  50726,
  13829,
  3055,
  12837,
  20362,
  45072,
  38821,
  1825,
  1542,
  15518,
  77914,
  94237,
  24912,
  23710,
  0,
  61137
  ],
  [
  23329,
  58600,
  55093,
  75794,
  45994,
  44073,
  21902,
  59620,
  67068,
  83634,
  4141,
  90863,
  0,
  39854,
  41813,
  2596,
  32510,
  72826,
  39767,
  40644,
  71762,
  82641,
  62187,
  96954,
  55151,
  80354,
  49069,
  83870,
  56915,
  62867,
  19441,
  41487,
  43067,
  75182,
  43988,
  16488,
  5054,
  0,
  49238
  ],
  [
  40854,
  50136,
  21930,
  63014,
  50657,
  95315,
  35876,
  67562,
  27367,
  60643,
  28017,
  52960,
  10048,
  0,
  78676,
  85682,
  76821,
  3684,
  10838,
  96789,
  35705,
  47200,
  4228,
  13125,
  65058,
  70194,
  58889,
  49511,
  84746,
  74874,
  19855,
  0,
  99663,
  41826,
  90705,
  74630,
  14258,
  68986,
  131
  ],
  [
  52683,
  80656,
  24345,
  1680,
  68513,
  0,
  23764,
  84910,
  15319,
  35388,
  38238,
  78543,
  0,
  38211,
  35371,
  6417,
  77490,
  43196,
  4943,
  0,
  27547,
  96237,
  45430,
  22246,
  27127,
  64973,
  0,
  0,
  21948,
  91410,
  0,
  53708,
  0,
  57138,
  82476,
  41911,
  67543,
  42140,
  91808
  ],
  [
  91941,
  35006,
  29446,
  34062,
  61640,
  28807,
  4363,
  51400,
  13534,
  41914,
  87400,
  12872,
  95381,
  0,
  34685,
  69692,
  31688,
  32842,
  42354,
  1813,
  23320,
  32444,
  72251,
  89754,
  53993,
  0,
  822,
  46234,
  86206,
  70962,
  86198,
  27503,
  95051,
  66114,
  73187,
  0,
  82682,
  14456,
  20830
  ],
  [
  12249,
  0,
  0,
  55889,
  11365,
  41624,
  0,
  4215,
  63798,
  67495,
  22793,
  19327,
  77569,
  8774,
  55994,
  6320,
  83574,
  99686,
  885,
  30672,
  0,
  8819,
  0,
  4265,
  0,
  70149,
  43594,
  98724,
  93483,
  82402,
  4432,
  79239,
  63297,
  0,
  58188,
  7079,
  65479,
  35447,
  63466
  ],
  [
  21847,
  65491,
  68272,
  0,
  663,
  20796,
  62467,
  40118,
  59941,
  66992,
  10893,
  33034,
  85655,
  39688,
  22828,
  55404,
  13980,
  35702,
  19030,
  80244,
  91075,
  9387,
  64581,
  48878,
  34075,
  83686,
  19268,
  93758,
  36732,
  85159,
  1124,
  41075,
  47732,
  86234,
  85918,
  45543,
  32111,
  77764,
  48744
  ],
  [
  8008,
  66194,
  85641,
  42438,
  25432,
  21965,
  0,
  68181,
  44609,
  26281,
  7606,
  29076,
  10563,
  29167,
  18823,
  25851,
  9878,
  77495,
  92039,
  70416,
  1348,
  71483,
  62713,
  74997,
  84995,
  37174,
  84622,
  64708,
  21574,
  96738,
  14433,
  6212,
  26799,
  73632,
  16293,
  13533,
  82062,
  68702,
  42245
  ],
  [
  79251,
  32544,
  79754,
  11444,
  62438,
  29036,
  41886,
  0,
  65107,
  98899,
  23335,
  42108,
  71522,
  0,
  79018,
  35499,
  81950,
  0,
  54911,
  21462,
  77637,
  6835,
  78075,
  50685,
  71982,
  5262,
  60986,
  62383,
  4940,
  30623,
  82421,
  5922,
  79972,
  18387,
  6031,
  50119,
  68258,
  0,
  79801
  ],
  [
  0,
  12463,
  0,
  73312,
  4847,
  67163,
  4246,
  0,
  33576,
  21727,
  66271,
  72451,
  7572,
  13397,
  60106,
  59091,
  39365,
  87892,
  12211,
  0,
  78987,
  57580,
  38401,
  8432,
  7588,
  16640,
  17926,
  27346,
  9912,
  65881,
  82424,
  93915,
  0,
  50568,
  95077,
  12215,
  25729,
  9781,
  66889
  ],
  [
  22393,
  36549,
  32702,
  62908,
  71625,
  51196,
  0,
  16883,
  81389,
  89862,
  28316,
  48135,
  46900,
  0,
  0,
  94458,
  82102,
  74435,
  89518,
  42328,
  23592,
  57626,
  3293,
  51438,
  37894,
  9891,
  6333,
  11222,
  26767,
  87178,
  29772,
  0,
  0,
  2939,
  26011,
  23040,
  75793,
  7228,
  91819
  ],
  [
  25619,
  75288,
  84718,
  14153,
  46269,
  12231,
  53129,
  95581,
  16602,
  2704,
  54943,
  6962,
  28044,
  0,
  61406,
  7230,
  89127,
  51270,
  1168,
  91263,
  12625,
  9242,
  31887,
  88669,
  6977,
  12044,
  79560,
  58495,
  71034,
  14291,
  52043,
  12103,
  50830,
  55629,
  96744,
  0,
  0,
  91897,
  81493
  ],
  [
  35769,
  18813,
  97316,
  34450,
  4551,
  40919,
  11449,
  14664,
  0,
  5528,
  0,
  0,
  72926,
  16525,
  0,
  43526,
  46541,
  7931,
  59160,
  12393,
  24689,
  2861,
  86051,
  15351,
  0,
  6664,
  13528,
  19055,
  46471,
  1868,
  67815,
  2214,
  0,
  39527,
  3785,
  57426,
  32036,
  68827,
  16435
  ],
  [
  3446,
  79885,
  0,
  94895,
  19996,
  35833,
  73596,
  37384,
  0,
  26218,
  90263,
  0,
  39006,
  86797,
  0,
  0,
  14016,
  772,
  0,
  54857,
  6770,
  14940,
  36121,
  58279,
  67144,
  24001,
  57628,
  22672,
  0,
  75027,
  15357,
  34195,
  98889,
  26897,
  0,
  38493,
  96431,
  42998,
  82708
  ],
  [
  64920,
  16206,
  36974,
  88238,
  79205,
  75343,
  20743,
  60634,
  35735,
  49609,
  0,
  57011,
  75844,
  56129,
  14660,
  29885,
  19487,
  79572,
  33335,
  35631,
  71914,
  84691,
  82362,
  7399,
  210,
  5547,
  83382,
  69063,
  66146,
  0,
  75517,
  97090,
  0,
  86944,
  39497,
  29290,
  65975,
  4147,
  12569
  ],
  [
  1704,
  76913,
  8662,
  0,
  47427,
  24711,
  96405,
  62473,
  52811,
  20813,
  74190,
  0,
  7689,
  63281,
  57038,
  6180,
  16278,
  95357,
  0,
  18561,
  58682,
  30667,
  32524,
  73001,
  76305,
  37695,
  14384,
  26340,
  71350,
  94917,
  18699,
  99486,
  14854,
  12236,
  27441,
  27664,
  76108,
  12161,
  45550
  ],
  [
  87214,
  34550,
  44850,
  2926,
  24243,
  85303,
  59588,
  17869,
  75203,
  3919,
  2303,
  29816,
  58055,
  22162,
  2979,
  15600,
  86287,
  21267,
  94195,
  55338,
  26077,
  47718,
  60117,
  31931,
  23808,
  22491,
  7724,
  64941,
  47005,
  95932,
  79791,
  28038,
  29046,
  59408,
  57810,
  69723,
  20069,
  79918,
  29738
  ],
  [
  60175,
  20438,
  0,
  0,
  89228,
  81820,
  43766,
  14559,
  68394,
  70976,
  2699,
  29371,
  18920,
  77261,
  42989,
  55362,
  3697,
  83830,
  87612,
  19486,
  41994,
  96207,
  6649,
  12472,
  58473,
  0,
  98752,
  35978,
  88204,
  38538,
  0,
  3345,
  79199,
  0,
  76391,
  20315,
  53814,
  19936,
  23801
  ],
  [
  41789,
  70658,
  0,
  33205,
  11175,
  30180,
  69081,
  10953,
  32509,
  71050,
  78984,
  21745,
  77920,
  0,
  96710,
  0,
  90077,
  6329,
  82257,
  82710,
  89404,
  31033,
  94424,
  49163,
  0,
  91301,
  40438,
  63564,
  17854,
  0,
  0,
  35761,
  63331,
  48897,
  0,
  25001,
  17845,
  66619,
  59479
  ],
  [
  0,
  24662,
  80269,
  81056,
  59862,
  70814,
  30475,
  51987,
  40917,
  16492,
  7998,
  99397,
  24850,
  7770,
  28721,
  48459,
  93081,
  54687,
  95194,
  26864,
  2856,
  0,
  75525,
  31798,
  83660,
  16404,
  39177,
  0,
  277,
  87586,
  5117,
  17703,
  46413,
  24269,
  0,
  15099,
  4318,
  93360,
  13227
  ],
  [
  98607,
  95857,
  40815,
  95516,
  83898,
  27206,
  48324,
  73196,
  7649,
  86187,
  12098,
  17187,
  14062,
  4891,
  51238,
  91404,
  1621,
  40464,
  38104,
  29224,
  2148,
  32157,
  34879,
  36490,
  0,
  59118,
  35201,
  34332,
  40798,
  79744,
  0,
  34193,
  19510,
  4815,
  3382,
  11211,
  19655,
  57005,
  64644
  ],
  [
  0,
  11829,
  74727,
  45214,
  95455,
  47598,
  74782,
  92656,
  38675,
  60461,
  0,
  72169,
  21313,
  86178,
  73353,
  77631,
  52335,
  32293,
  86500,
  9514,
  5463,
  81500,
  50471,
  67726,
  54815,
  95407,
  48171,
  52509,
  85049,
  0,
  83863,
  92145,
  43426,
  0,
  99597,
  18925,
  75135,
  5685,
  6805
  ],
  [
  0,
  41682,
  55669,
  28951,
  16424,
  43118,
  88778,
  82681,
  99032,
  81999,
  30218,
  25759,
  80308,
  0,
  0,
  70594,
  40799,
  92309,
  84988,
  24664,
  29378,
  36290,
  0,
  0,
  58442,
  95993,
  80946,
  10604,
  0,
  18165,
  23476,
  51631,
  17010,
  46086,
  0,
  0,
  62321,
  91326,
  93106
  ],
  [
  26378,
  24575,
  9803,
  90465,
  68117,
  8468,
  98790,
  84462,
  37628,
  52903,
  25648,
  41777,
  278,
  50698,
  65690,
  38919,
  3276,
  79786,
  30591,
  44235,
  2407,
  31725,
  27071,
  17715,
  51021,
  61353,
  0,
  24111,
  56056,
  18855,
  26072,
  92245,
  89894,
  12949,
  16351,
  84202,
  77044,
  0,
  99990
  ],
  [
  90076,
  48527,
  53368,
  23944,
  45532,
  91511,
  11443,
  41597,
  58064,
  50564,
  56806,
  23028,
  58583,
  56935,
  44929,
  53813,
  28431,
  47280,
  29410,
  41210,
  77298,
  42226,
  27074,
  0,
  39539,
  21932,
  0,
  52567,
  7108,
  33232,
  24184,
  13236,
  0,
  0,
  25466,
  73218,
  11657,
  43112,
  656
  ],
  [
  1253,
  30528,
  60620,
  24811,
  88617,
  34227,
  12035,
  18663,
  97618,
  0,
  16107,
  58666,
  87883,
  64538,
  68908,
  97721,
  94800,
  0,
  4249,
  0,
  0,
  97280,
  77953,
  0,
  99107,
  0,
  78893,
  73572,
  89549,
  74006,
  73331,
  93971,
  27028,
  66358,
  34084,
  50299,
  42578,
  99191,
  1366
  ],
  [
  85032,
  54000,
  91316,
  70320,
  13489,
  0,
  21781,
  37603,
  855,
  69666,
  6782,
  66851,
  3358,
  65603,
  77183,
  14255,
  38868,
  0,
  32815,
  10640,
  56395,
  50506,
  11531,
  56483,
  95195,
  38273,
  0,
  53212,
  82739,
  0,
  0,
  547,
  54762,
  49677,
  7978,
  97529,
  52362,
  9306,
  42584
  ],
  [
  12588,
  63359,
  69215,
  74356,
  40077,
  76268,
  408,
  7357,
  93185,
  0,
  99796,
  70845,
  56381,
  53125,
  27014,
  24078,
  12190,
  48969,
  0,
  12993,
  47279,
  53089,
  33444,
  92316,
  0,
  28368,
  9444,
  44230,
  84869,
  81200,
  37598,
  12937,
  29478,
  0,
  18032,
  85880,
  51411,
  44686,
  42892
  ],
  [
  75407,
  90307,
  51085,
  66615,
  4272,
  31921,
  56566,
  35335,
  44493,
  56287,
  40280,
  39374,
  91342,
  97186,
  33063,
  71538,
  67105,
  37340,
  25101,
  72348,
  79604,
  67943,
  9419,
  22519,
  83119,
  10361,
  16014,
  13772,
  66866,
  7006,
  93143,
  13644,
  39355,
  49995,
  0,
  37914,
  40414,
  52658,
  66075
  ],
  [
  96501,
  4536,
  27049,
  71257,
  99939,
  72003,
  41187,
  0,
  71708,
  0,
  31927,
  46175,
  5786,
  25284,
  55934,
  30621,
  20398,
  58858,
  27908,
  75313,
  28153,
  39461,
  12738,
  32988,
  36889,
  0,
  8710,
  93276,
  89201,
  0,
  57064,
  17014,
  38713,
  56466,
  15129,
  56629,
  53188,
  32312,
  90690
  ],
  [
  93787,
  98624,
  10749,
  61088,
  54334,
  83364,
  75076,
  73492,
  9591,
  71987,
  43121,
  86762,
  80533,
  15578,
  75153,
  6338,
  33045,
  53223,
  14612,
  72431,
  0,
  79584,
  23850,
  51949,
  41435,
  36292,
  51229,
  12413,
  30900,
  44498,
  83338,
  96630,
  14976,
  62268,
  66175,
  34813,
  71567,
  92411,
  30576
  ],
  [
  0,
  0,
  51099,
  58582,
  75410,
  13209,
  14158,
  88419,
  93095,
  22084,
  22289,
  62741,
  60977,
  83995,
  66022,
  2662,
  60226,
  18580,
  92927,
  70304,
  32223,
  42908,
  45573,
  86484,
  50297,
  77245,
  37749,
  25319,
  76662,
  23878,
  53596,
  87794,
  89570,
  55524,
  84550,
  63392,
  16446,
  87690,
  34646
  ],
  [
  12456,
  4405,
  80575,
  44852,
  50584,
  49364,
  0,
  84957,
  1985,
  70009,
  22125,
  68617,
  31362,
  391,
  0,
  91605,
  74932,
  10619,
  49715,
  97363,
  40335,
  16989,
  34273,
  45641,
  46955,
  77834,
  72261,
  45033,
  18653,
  49269,
  47207,
  60528,
  9277,
  99860,
  37141,
  86874,
  22226,
  78877,
  51913
  ],
  [
  61926,
  98641,
  7067,
  43340,
  59231,
  37116,
  20874,
  75887,
  20614,
  0,
  88117,
  49253,
  48432,
  47115,
  25967,
  77196,
  0,
  39784,
  73183,
  20235,
  37301,
  55120,
  38192,
  61495,
  20388,
  128,
  2108,
  4334,
  78037,
  83815,
  91425,
  66404,
  0,
  0,
  60406,
  55138,
  89742,
  86413,
  30899
  ],
  [
  0,
  0,
  16539,
  62770,
  98148,
  75492,
  42687,
  77792,
  3022,
  80207,
  1312,
  69581,
  25694,
  0,
  0,
  68940,
  96047,
  10493,
  4759,
  77314,
  55689,
  42267,
  22502,
  15542,
  73211,
  8228,
  93749,
  32422,
  2477,
  24518,
  62996,
  30948,
  18755,
  96545,
  7625,
  40181,
  59890,
  77060,
  92009
  ]
  ]

  puts cut_off_tree(a)