#!/usr/bin/env ruby

class Gtin
  class Gcp
    @@pcp_prefix = 
{"00"=>"7",
 "011"=>"8",
 "018"=>"10",
 "019"=>"7",
 "02"=>"0",
 "030"=>"6",
 "031"=>"7",
 "032"=>"7",
 "0330"=>"7",
 "0331"=>"7",
 "03321"=>"6",
 "03325"=>"7",
 "03326"=>"7",
 "03327"=>"7",
 "03328"=>"7",
 "0333"=>"7",
 "0334"=>"7",
 "0335"=>"7",
 "0336"=>"7",
 "0337"=>"7",
 "0338"=>"7",
 "0339"=>"7",
 "034"=>"7",
 "035"=>"7",
 "036"=>"7",
 "0370"=>"7",
 "03711"=>"7",
 "03714"=>"6",
 "03716"=>"7",
 "0372"=>"7",
 "0373"=>"7",
 "0375"=>"7",
 "0376"=>"7",
 "0378"=>"7",
 "0380"=>"6",
 "0381"=>"6",
 "0382"=>"6",
 "0383"=>"6",
 "0384"=>"6",
 "0385"=>"6",
 "0386"=>"6",
 "0387"=>"7",
 "0388"=>"6",
 "03891"=>"7",
 "03897"=>"6",
 "039"=>"7",
 "04"=>"0",
 "05"=>"0",
 "06"=>"7",
 "07"=>"7",
 "080"=>"7",
 "081"=>"9",
 "082"=>"7",
 "083"=>"9",
 "084"=>"8",
 "085"=>"10",
 "086"=>"11",
 "087"=>"9",
 "088"=>"7",
 "089"=>"10",
 "2"=>"0",
 "30"=>"6",
 "31"=>"6",
 "32"=>"6",
 "33"=>"6",
 "34"=>"6",
 "35"=>"6",
 "360"=>"6",
 "361"=>"6",
 "362"=>"6",
 "363"=>"6",
 "364"=>"6",
 "365"=>"6",
 "366"=>"7",
 "367"=>"7",
 "368"=>"7",
 "369"=>"7",
 "370"=>"8",
 "371"=>"8",
 "372"=>"8",
 "373"=>"8",
 "374"=>"8",
 "375"=>"8",
 "376"=>"9",
 "3770"=>"10",
 "3771"=>"10",
 "3772"=>"10",
 "3773"=>"10",
 "3774"=>"10",
 "3775"=>"11",
 "3776"=>"11",
 "3777"=>"11",
 "3778"=>"11",
 "3779"=>"12",
 "40"=>"7",
 "41"=>"7",
 "425"=>"8",
 "426"=>"9",
 "43"=>"7",
 "450"=>"7",
 "451"=>"7",
 "452"=>"7",
 "453"=>"7",
 "454"=>"7",
 "455"=>"7",
 "456"=>"9",
 "457"=>"9",
 "458"=>"9",
 "4820"=>"9",
 "4821"=>"9",
 "4822"=>"9",
 "4823"=>"8",
 "4824"=>"7",
 "4825"=>"7",
 "4826"=>"7",
 "4827"=>"7",
 "4828"=>"6",
 "486"=>"9",
 "49"=>"7",
 "500"=>"7",
 "501"=>"7",
 "502"=>"7",
 "503"=>"7",
 "5040"=>"6",
 "5041"=>"6",
 "5042"=>"7",
 "5043"=>"7",
 "5044"=>"7",
 "5045"=>"6",
 "5046"=>"6",
 "5047"=>"7",
 "5048"=>"6",
 "5049"=>"6",
 "5050"=>"7",
 "5051"=>"7",
 "5052"=>"7",
 "5053"=>"7",
 "5054"=>"7",
 "5055"=>"8",
 "5056"=>"8",
 "5058"=>"7",
 "5060"=>"9",
 "5061"=>"9",
 "5065"=>"10",
 "5066"=>"10",
 "5070"=>"11",
 "5071"=>"11",
 "5080"=>"7",
 "5091"=>"7",
 "5098"=>"7",
 "5099"=>"7",
 "5290"=>"7",
 "5291"=>"7",
 "5292"=>"7",
 "5310"=>"8",
 "5311"=>"9",
 "5312"=>"10",
 "5400"=>"7",
 "5401"=>"7",
 "5402"=>"7",
 "5403"=>"7",
 "5410"=>"7",
 "5411"=>"7",
 "5412"=>"7",
 "5413"=>"7",
 "5414"=>"7",
 "5415"=>"7",
 "5416"=>"7",
 "5417"=>"7",
 "5418"=>"7",
 "5450"=>"7",
 "5451"=>"7",
 "5404"=>"8",
 "5405"=>"8",
 "5406"=>"8",
 "5420"=>"8",
 "5421"=>"8",
 "5422"=>"8",
 "5423"=>"8",
 "5424"=>"8",
 "5452"=>"8",
 "5407"=>"9",
 "5408"=>"9",
 "5409"=>"9",
 "5425"=>"9",
 "5426"=>"9",
 "5427"=>"9",
 "5428"=>"9",
 "5429"=>"9",
 "5453"=>"9",
 "73000"=>"12",
 "73001"=>"12",
 "73002"=>"6",
 "73003"=>"6",
 "73004"=>"6",
 "73005"=>"6",
 "73006"=>"6",
 "73007"=>"6",
 "73008"=>"6",
 "73009"=>"6",
 "7301000"=>"7",
 "7301001"=>"7",
 "7301002"=>"8",
 "7301003"=>"7",
 "7301004"=>"7",
 "7301005"=>"7",
 "7301006"=>"7",
 "7301007"=>"7",
 "7301008"=>"7",
 "7301009"=>"7",
 "73100"=>"6",
 "73101"=>"6",
 "73102"=>"6",
 "73103"=>"6",
 "73104"=>"6",
 "73105"=>"6",
 "73106"=>"6",
 "73107"=>"6",
 "731080"=>"6",
 "731081"=>"6",
 "731082"=>"6",
 "731083"=>"6",
 "731084"=>"6",
 "731085"=>"6",
 "731086"=>"7",
 "731087"=>"6",
 "731088"=>"6",
 "731089"=>"6",
 "73109"=>"6",
 "7311"=>"6",
 "731200"=>"6",
 "731201"=>"6",
 "731202"=>"6",
 "731203"=>"6",
 "731204"=>"7",
 "731205"=>"6",
 "731206"=>"6",
 "731207"=>"6",
 "731208"=>"6",
 "731209"=>"6",
 "7313"=>"6",
 "7314"=>"6",
 "7315"=>"6",
 "7316"=>"6",
 "7317"=>"6",
 "7318"=>"6",
 "7319"=>"6",
 "732"=>"6",
 "733"=>"7",
 "734"=>"8",
 "735"=>"9",
 "736"=>"12",
 "737"=>"12",
 "73810000"=>"12",
 "73810001"=>"11",
 "738101"=>"10",
 "738102"=>"9",
 "7381030"=>"8",
 "7381031"=>"7",
 "73810320"=>"12",
 "73810321"=>"8",
 "73810322"=>"8",
 "73810323"=>"8",
 "73810324"=>"8",
 "73810325"=>"8",
 "73810326"=>"8",
 "73810327"=>"8",
 "73810328"=>"8",
 "73810329"=>"8",
 "7381033"=>"7",
 "7381034"=>"7",
 "7381035"=>"7",
 "7381036"=>"8",
 "73810370"=>"8",
 "73810371"=>"8",
 "73810372"=>"8",
 "73810373"=>"8",
 "73810374"=>"8",
 "73810375"=>"8",
 "73810376"=>"8",
 "73810377"=>"12",
 "73810378"=>"8",
 "73810379"=>"8",
 "7381038"=>"12",
 "7381039"=>"8",
 "738104"=>"6",
 "738105"=>"6",
 "738106"=>"6",
 "738107"=>"6",
 "738108"=>"6",
 "738109"=>"6",
 "7382"=>"6",
 "7383"=>"6",
 "7384"=>"6",
 "7385"=>"6",
 "7386"=>"6",
 "7387"=>"6",
 "73886"=>"6",
 "73888"=>"8",
 "73889"=>"5",
 "7389"=>"5",
 "739"=>"7",
 "7500"=>"6",
 "7501"=>"8",
 "7502"=>"9",
 "7503"=>"10",
 "7506"=>"7",
 "7509"=>"7",
 "759"=>"7",
 "8590"=>"7",
 "8591"=>"7",
 "8592"=>"7",
 "8593"=>"7",
 "8594"=>"9",
 "8595"=>"8",
 "860000"=>"7",
 "860001"=>"7",
 "860002"=>"7",
 "860003"=>"7",
 "860004"=>"7",
 "86000504"=>"9",
 "86000506"=>"8",
 "8600051"=>"7",
 "860006"=>"7",
 "860007"=>"7",
 "860008"=>"7",
 "860009"=>"7",
 "8600101"=>"10",
 "8600102"=>"10",
 "8600103"=>"10",
 "8600104"=>"7",
 "8600105"=>"7",
 "8600106"=>"7",
 "8600107"=>"7",
 "8600109"=>"7",
 "860011"=>"7",
 "860012"=>"7",
 "860013"=>"7",
 "860014"=>"7",
 "860015"=>"7",
 "860016"=>"7",
 "860017"=>"7",
 "860019"=>"7",
 "86002"=>"7",
 "86003"=>"7",
 "86004"=>"7",
 "86005"=>"7",
 "86006"=>"7",
 "86007"=>"7",
 "86009"=>"7",
 "86012"=>"10",
 "86013"=>"9",
 "86015"=>"7",
 "86019"=>"7",
 "8602"=>"7",
 "8605"=>"8",
 "86060"=>"9",
 "86061000"=>"10",
 "86061001"=>"10",
 "86061002"=>"10",
 "860610030"=>"10",
 "860610031"=>"10",
 "860610032"=>"10",
 "860610033"=>"10",
 "860610034"=>"10",
 "8606100350"=>"10",
 "8606100355"=>"11",
 "8606100358"=>"10",
 "860610036"=>"10",
 "860610037"=>"10",
 "860610038"=>"10",
 "860610039"=>"10",
 "86061004"=>"10",
 "86061005"=>"10",
 "86061006"=>"10",
 "86061007"=>"10",
 "86061008"=>"10",
 "86061009"=>"10",
 "8606101"=>"10",
 "8606102"=>"10",
 "8606103"=>"10",
 "86061040"=>"10",
 "86061041"=>"10",
 "8606104200"=>"10",
 "8606104201"=>"10",
 "8606104202"=>"10",
 "86061042030"=>"11",
 "86061042031"=>"11",
 "8606104204"=>"10",
 "8606104206"=>"10",
 "8606104207"=>"10",
 "860610421"=>"10",
 "860610422"=>"10",
 "860610423"=>"10",
 "860610424"=>"10",
 "860610425"=>"10",
 "860610426"=>"10",
 "860610427"=>"10",
 "860610428"=>"10",
 "860610429"=>"10",
 "86061043"=>"10",
 "86061044"=>"10",
 "86061045"=>"10",
 "86061046"=>"10",
 "86061047"=>"10",
 "86061048"=>"10",
 "86061049"=>"10",
 "8606105"=>"10",
 "8606106"=>"10",
 "8606107"=>"10",
 "860700"=>"11",
 "860702"=>"7",
 "860704"=>"7",
 "86071"=>"7",
 "8608"=>"7",
 "870"=>"7",
 "8710"=>"7",
 "8711"=>"7",
 "8712"=>"7",
 "8713"=>"7",
 "8714"=>"7",
 "8715"=>"7",
 "8716"=>"7",
 "871700"=>"7",
 "871701"=>"7",
 "871702"=>"7",
 "871703"=>"7",
 "871704"=>"7",
 "8717051"=>"7",
 "8717054"=>"7",
 "8717056"=>"9",
 "8717058"=>"7",
 "871706"=>"7",
 "871707"=>"7",
 "871708"=>"7",
 "871709"=>"7",
 "871710"=>"7",
 "871711"=>"7",
 "8717121"=>"7",
 "8717123"=>"7",
 "8717124"=>"7",
 "8717125"=>"7",
 "8717126"=>"7",
 "8717127"=>"9",
 "8717128"=>"7",
 "871713"=>"7",
 "871714"=>"7",
 "8717152"=>"7",
 "8717153"=>"7",
 "8717154"=>"9",
 "8717155"=>"7",
 "8717159"=>"7",
 "871716"=>"7",
 "871717"=>"7",
 "8717181"=>"7",
 "8717183"=>"7",
 "8717184"=>"7",
 "8717185"=>"9",
 "8717186"=>"7",
 "8717188"=>"7",
 "871719"=>"7",
 "8717200"=>"7",
 "8717202"=>"9",
 "8717205"=>"7",
 "8717207"=>"7",
 "8717209"=>"7",
 "871721"=>"7",
 "8717221"=>"7",
 "8717223"=>"7",
 "8717225"=>"7",
 "8717226"=>"7",
 "8717228"=>"9",
 "8717229"=>"7",
 "871723"=>"7",
 "8717241"=>"7",
 "8717242"=>"7",
 "8717244"=>"7",
 "8717245"=>"7",
 "8717247"=>"7",
 "8717249"=>"9",
 "871725"=>"7",
 "871726"=>"7",
 "8717272"=>"7",
 "8717273"=>"7",
 "8717274"=>"7",
 "8717275"=>"7",
 "8717277"=>"7",
 "8717278"=>"9",
 "8717279"=>"7",
 "871728"=>"7",
 "871729"=>"7",
 "8717300"=>"7",
 "8717302"=>"7",
 "8717304"=>"7",
 "8717306"=>"9",
 "8717307"=>"7",
 "8717308"=>"7",
 "8717309"=>"7",
 "871731"=>"7",
 "871732"=>"7",
 "871733"=>"7",
 "8717341"=>"7",
 "8717342"=>"7",
 "8717343"=>"7",
 "8717344"=>"9",
 "8717345"=>"7",
 "8717346"=>"7",
 "8717349"=>"7",
 "871735"=>"7",
 "871736"=>"7",
 "8717371"=>"9",
 "8717372"=>"7",
 "8717376"=>"7",
 "8717377"=>"7",
 "8717378"=>"7",
 "8717379"=>"7",
 "871738"=>"7",
 "8717392"=>"7",
 "8717393"=>"7",
 "8717394"=>"7",
 "8717395"=>"7",
 "8717396"=>"7",
 "8717397"=>"7",
 "8717398"=>"7",
 "8717399"=>"9",
 "871740"=>"7",
 "871741"=>"7",
 "871742"=>"7",
 "8717432"=>"7",
 "8717433"=>"7",
 "8717434"=>"7",
 "8717435"=>"7",
 "8717436"=>"7",
 "8717437"=>"7",
 "8717438"=>"9",
 "8717439"=>"7",
 "871744"=>"7",
 "871745"=>"7",
 "871746"=>"7",
 "8717471"=>"7",
 "8717472"=>"9",
 "8717473"=>"7",
 "8717474"=>"7",
 "8717475"=>"7",
 "8717477"=>"7",
 "8717478"=>"7",
 "8717479"=>"7",
 "871748"=>"7",
 "8717491"=>"7",
 "8717492"=>"7",
 "8717493"=>"7",
 "8717495"=>"7",
 "8717496"=>"9",
 "8717497"=>"7",
 "8717499"=>"7",
 "871750"=>"7",
 "871751"=>"7",
 "8717521"=>"7",
 "8717522"=>"7",
 "8717524"=>"9",
 "8717525"=>"7",
 "8717526"=>"7",
 "8717527"=>"7",
 "8717528"=>"7",
 "8717529"=>"7",
 "871753"=>"7",
 "8717542"=>"7",
 "8717543"=>"7",
 "8717545"=>"9",
 "8717546"=>"7",
 "8717549"=>"7",
 "871755"=>"7",
 "8717561"=>"7",
 "8717562"=>"7",
 "8717563"=>"7",
 "8717564"=>"7",
 "8717565"=>"7",
 "8717566"=>"7",
 "8717567"=>"7",
 "8717568"=>"9",
 "871757"=>"7",
 "871758"=>"7",
 "8717591"=>"9",
 "8717592"=>"7",
 "8717593"=>"7",
 "8717594"=>"7",
 "8717595"=>"7",
 "8717597"=>"7",
 "8717598"=>"7",
 "8717599"=>"7",
 "871760"=>"7",
 "871761"=>"7",
 "8717621"=>"7",
 "8717622"=>"7",
 "8717623"=>"7",
 "8717624"=>"9",
 "8717625"=>"7",
 "8717626"=>"7",
 "8717627"=>"7",
 "8717629"=>"7",
 "871763"=>"7",
 "871764"=>"7",
 "871765"=>"7",
 "8717661"=>"7",
 "8717662"=>"9",
 "8717663"=>"7",
 "8717665"=>"7",
 "8717666"=>"7",
 "8717667"=>"7",
 "8717669"=>"7",
 "8717671"=>"7",
 "8717672"=>"7",
 "8717673"=>"7",
 "8717674"=>"7",
 "8717675"=>"7",
 "8717677"=>"9",
 "8717679"=>"7",
 "871768"=>"7",
 "871769"=>"7",
 "8717701"=>"7",
 "8717703"=>"9",
 "8717704"=>"7",
 "8717706"=>"7",
 "8717707"=>"7",
 "8717709"=>"7",
 "871771"=>"7",
 "8717723"=>"7",
 "8717724"=>"7",
 "8717726"=>"7",
 "8717727"=>"7",
 "8717728"=>"7",
 "8717729"=>"9",
 "871773"=>"7",
 "871774"=>"7",
 "8717751"=>"7",
 "8717752"=>"7",
 "8717753"=>"7",
 "8717754"=>"7",
 "8717755"=>"9",
 "8717756"=>"7",
 "8717757"=>"7",
 "8717758"=>"7",
 "871776"=>"7",
 "8717771"=>"7",
 "8717772"=>"7",
 "8717773"=>"7",
 "8717774"=>"9",
 "87177754"=>"9",
 "87177755"=>"9",
 "87177756"=>"9",
 "87177757"=>"9",
 "87177758"=>"9",
 "87177759"=>"9",
 "8717777"=>"7",
 "8717778"=>"7",
 "871778"=>"7",
 "871779"=>"7",
 "871780"=>"7",
 "871781"=>"7",
 "8717821"=>"7",
 "8717822"=>"7",
 "8717823"=>"7",
 "8717824"=>"7",
 "8717825"=>"9",
 "8717826"=>"7",
 "8717827"=>"7",
 "8717828"=>"7",
 "8717829"=>"7",
 "871783"=>"7",
 "871784"=>"7",
 "8717851"=>"7",
 "8717852"=>"7",
 "8717853"=>"9",
 "8717854"=>"7",
 "8717855"=>"7",
 "8717857"=>"7",
 "8717858"=>"7",
 "8717859"=>"7",
 "871786"=>"7",
 "871787"=>"7",
 "871788"=>"7",
 "871789"=>"7",
 "8717900"=>"7",
 "8717901"=>"7",
 "8717903"=>"9",
 "8717904"=>"7",
 "8717905"=>"7",
 "8717906"=>"7",
 "8717907"=>"7",
 "8717908"=>"7",
 "8717909"=>"7",
 "871791"=>"7",
 "871792"=>"7",
 "8717931"=>"9",
 "8717932"=>"7",
 "8717933"=>"7",
 "8717937"=>"7",
 "8717938"=>"7",
 "8717939"=>"7",
 "871794"=>"7",
 "871795"=>"7",
 "871796"=>"7",
 "8717971"=>"7",
 "8717972"=>"7",
 "8717973"=>"9",
 "8717974"=>"7",
 "8717976"=>"7",
 "8717978"=>"7",
 "8717979"=>"7",
 "871798"=>"7",
 "871799"=>"7",
 "871800"=>"7",
 "871801"=>"7",
 "8718022"=>"7",
 "8718023"=>"7",
 "8718025"=>"7",
 "8718026"=>"9",
 "8718027"=>"7",
 "8718028"=>"7",
 "8718029"=>"7",
 "871803"=>"7",
 "871804"=>"7",
 "8718051"=>"7",
 "8718053"=>"9",
 "8718054"=>"7",
 "8718056"=>"7",
 "8718057"=>"7",
 "8718058"=>"7",
 "8718059"=>"7",
 "871806"=>"7",
 "871807"=>"7",
 "871808"=>"7",
 "871809"=>"7",
 "8718100"=>"7",
 "8718101"=>"7",
 "8718102"=>"7",
 "8718103"=>"7",
 "8718104"=>"9",
 "8718105"=>"7",
 "8718108"=>"7",
 "8718109"=>"7",
 "871811"=>"7",
 "871812"=>"7",
 "871813"=>"7",
 "8718141"=>"7",
 "8718142"=>"7",
 "8718143"=>"7",
 "8718144"=>"9",
 "8718146"=>"7",
 "8718147"=>"7",
 "8718148"=>"7",
 "871815"=>"7",
 "8718161"=>"7",
 "8718162"=>"7",
 "8718163"=>"7",
 "8718164"=>"9",
 "8718165"=>"7",
 "8718166"=>"7",
 "8718167"=>"7",
 "8718168"=>"7",
 "8718169"=>"7",
 "871817"=>"7",
 "8718181"=>"7",
 "8718182"=>"9",
 "8718183"=>"7",
 "8718184"=>"7",
 "8718185"=>"7",
 "8718186"=>"7",
 "8718187"=>"7",
 "8718188"=>"7",
 "8718189"=>"7",
 "871819"=>"7",
 "871820"=>"7",
 "8718211"=>"7",
 "8718212"=>"7",
 "8718213"=>"7",
 "8718214"=>"7",
 "8718215"=>"9",
 "8718216"=>"7",
 "8718217"=>"7",
 "8718218"=>"7",
 "8718221"=>"7",
 "8718222"=>"7",
 "8718223"=>"7",
 "8718224"=>"7",
 "8718225"=>"7",
 "8718226"=>"9",
 "8718227"=>"7",
 "8718228"=>"7",
 "8718229"=>"7",
 "871823"=>"7",
 "8718241"=>"7",
 "8718242"=>"7",
 "8718243"=>"7",
 "8718245"=>"7",
 "8718246"=>"7",
 "8718247"=>"9",
 "8718249"=>"7",
 "871825"=>"7",
 "871826"=>"7",
 "8718271"=>"7",
 "8718272"=>"7",
 "8718273"=>"7",
 "8718274"=>"9",
 "8718276"=>"7",
 "8718277"=>"7",
 "8718279"=>"7",
 "871828"=>"7",
 "871829"=>"7",
 "8718300"=>"7",
 "8718301"=>"7",
 "8718302"=>"7",
 "8718303"=>"7",
 "8718304"=>"7",
 "8718305"=>"7",
 "8718306"=>"7",
 "8718307"=>"7",
 "8718308"=>"7",
 "8718309"=>"9",
 "871831"=>"7",
 "871832"=>"7",
 "871833"=>"7",
 "8718341"=>"7",
 "8718342"=>"7",
 "8718343"=>"7",
 "8718346"=>"7",
 "8718347"=>"9",
 "8718348"=>"7",
 "8718349"=>"7",
 "871835"=>"7",
 "871836"=>"7",
 "8718372"=>"7",
 "8718373"=>"7",
 "8718374"=>"7",
 "8718375"=>"9",
 "8718376"=>"7",
 "8718377"=>"7",
 "8718378"=>"7",
 "8718379"=>"7",
 "871838"=>"7",
 "871839"=>"7",
 "8718400"=>"7",
 "8718401"=>"7",
 "8718402"=>"7",
 "8718403"=>"9",
 "8718404"=>"7",
 "8718405"=>"7",
 "8718406"=>"7",
 "8718407"=>"7",
 "8718408"=>"7",
 "8718409"=>"7",
 "871841"=>"7",
 "8718421"=>"9",
 "8718422"=>"7",
 "8718423"=>"7",
 "8718424"=>"7",
 "8718425"=>"7",
 "8718426"=>"7",
 "8718427"=>"7",
 "8718428"=>"7",
 "8718429"=>"7",
 "871843"=>"7",
 "8718441"=>"7",
 "8718442"=>"7",
 "8718443"=>"7",
 "8718444"=>"9",
 "8718445"=>"7",
 "8718446"=>"7",
 "8718447"=>"7",
 "8718448"=>"7",
 "8718449"=>"7",
 "871845"=>"7",
 "8718461"=>"7",
 "8718462"=>"7",
 "8718463"=>"7",
 "8718464"=>"7",
 "8718465"=>"7",
 "8718466"=>"7",
 "8718467"=>"7",
 "8718468"=>"7",
 "8718469"=>"9",
 "871847"=>"7",
 "8718481"=>"9",
 "8718482"=>"7",
 "8718483"=>"7",
 "8718484"=>"7",
 "8718485"=>"7",
 "8718486"=>"7",
 "8718487"=>"7",
 "8718488"=>"7",
 "8718489"=>"7",
 "871849"=>"7",
 "8718500"=>"7",
 "8718501"=>"7",
 "8718502"=>"7",
 "8718503"=>"9",
 "8718504"=>"7",
 "8718505"=>"7",
 "8718506"=>"7",
 "8718507"=>"7",
 "8718508"=>"7",
 "8718509"=>"7",
 "871851"=>"7",
 "871852"=>"7",
 "8718531"=>"9",
 "8718532"=>"7",
 "8718533"=>"7",
 "8718534"=>"7",
 "8718535"=>"7",
 "8718536"=>"7",
 "8718537"=>"7",
 "8718538"=>"7",
 "8718539"=>"7",
 "8718541"=>"7",
 "8718542"=>"7",
 "8718543"=>"7",
 "8718544"=>"7",
 "8718545"=>"7",
 "8718546"=>"9",
 "8718547"=>"7",
 "8718548"=>"7",
 "8718549"=>"7",
 "871855"=>"7",
 "8718561"=>"7",
 "8718562"=>"7",
 "8718563"=>"7",
 "8718564"=>"9",
 "8718565"=>"7",
 "8718566"=>"7",
 "8718567"=>"7",
 "8718568"=>"7",
 "8718569"=>"7",
 "871857"=>"7",
 "871858"=>"7",
 "8718591"=>"9",
 "8718592"=>"7",
 "8718593"=>"7",
 "8718594"=>"7",
 "8718595"=>"7",
 "8718596"=>"7",
 "8718597"=>"7",
 "8718598"=>"7",
 "8718599"=>"7",
 "871860"=>"7",
 "871861"=>"7",
 "8718621"=>"7",
 "8718622"=>"7",
 "8718623"=>"7",
 "8718624"=>"7",
 "8718625"=>"7",
 "8718626"=>"7",
 "8718627"=>"9",
 "8718628"=>"7",
 "8718629"=>"7",
 "871863"=>"7",
 "871864"=>"7",
 "87187"=>"7",
 "87188"=>"7",
 "87189"=>"7",
 "8719"=>"7",
 "872"=>"7",
 "8882"=>"7",
 "8883"=>"12",
 "8884"=>"5",
 "8885"=>"9",
 "8887"=>"7",
 "8888"=>"7",
 "8932"=>"7",
 "8934"=>"7",
 "8935"=>"8",
 "8936"=>"9",
 "8938"=>"10",
 "93"=>"7",
 "9500"=>"7",
 "9501"=>"7",
 "9502"=>"8",
 "9503"=>"9",
 "9504"=>"10",
 "9505"=>"10",
 "9506"=>"11",
 "977"=>"0",
 "98"=>"0",
 "99"=>"0"}

    def self.get_gcp(gtin)
      @@pcp_prefix.each do |k, v|
        if gtin.to_s[0..(k.size-1)] == k
#puts "#{gtin.to_s[0..(k.size-1)]} == #{k}"
          return k
        end
      end
#puts "ERROR #{gtin.to_s}"
      return false
    end
  end
end