/**
 * Created by zhendu on 16/8/23.
 */
function translateIptoInt(ip) {
    console.log(ip);
    var StrArray = ip.split(".");
    for (var i = 0; i < StrArray.length; i++) {
        StrArray[i] = parseInt(StrArray[i]);
        console.log(StrArray[i] + "\n");
    }

    //下面将一个ip值转化为一个Int值
    var result = StrArray[3] + StrArray[2] * 256 + StrArray[1] * 256 * 256 + StrArray[0] * 256 * 256 * 256;
    console.log(result);
    return result;
}

function translateInttoIp(a) {
    // var IpArray;
    // var tempres;
    // var temprem = parseInt(int);
    // for (var i = 3; i >= 0; i--) {
    //     tempres = temprem / Math.pow(256, i);
    //     IpArray += tempres;
    //     console.log(IpArray);
    //     if (i > 0) {
    //         IpArray += '.';
    //     }
    //     temprem = temprem % Math.pow(256, i);
    // }
    // console.log(IpArray);
    // return IpArray;
    //把a想成256位的数，转化为4个数字

    var part1 = a % 256;//这个是第一个数字
    a = (a - part1) / 256;//低位减去，然后位移

    var part2 = a % 256;//这个是第二个数字
    a = (a - part2) / 256;//再减去低位然后移位

    var part3 = a % 256;//这个是第三个数字
    a = ( a - part3 ) / 256;//减去低位然后移位

    var part4 = parseInt(a % 256);//这个是第四位数字

    return "" + part4 + "." + part3 + "." + part2 + "." + part1;
}

function translateRegionIdToName(regionid) {
    var regionid = regionid.slice(0, 2);
    if (regionid == "11") {
        return "北京市";
    }
    if (regionid == "12") {
        return "天津市";
    }
    if (regionid == "13") {
        return "河北省";
    }
    if (regionid == "14") {
        return "陕西省";
    }
    if (regionid == "15") {
        return "内蒙古";
    }
    if (regionid == "21") {
        return "辽宁省";
    }
    if (regionid == "22") {
        return "吉林省";
    }
    if (regionid == "23") {
        return "黑龙江";
    }
    if (regionid == "31") {
        return "上海市";
    }
    if (regionid == "32") {
        return "江苏省";
    }
    if (regionid == "33") {
        return "浙江省";
    }
    if (regionid == "34") {
        return "安徽省";
    }
    if (regionid == "35") {
        return "福建省";
    }
    if (regionid == "36") {
        return "江西省";
    }
    if (regionid == "37") {
        return "山东省";
    }
    if (regionid == "41") {
        return "河南省";
    }
    if (regionid == "42") {
        return "湖北省";
    }
    if (regionid == "43") {
        return "湖南省";
    }
    if (regionid == "44") {
        return "广东省";
    }
    if (regionid == "45") {
        return "广西";
    }
    if (regionid == "46") {
        return "海南省";
    }
    if (regionid == "50") {
        return "重庆市";
    }
    if (regionid == "51") {
        return "四川省";
    }
    if (regionid == "52") {
        return "贵州省";
    }
    if (regionid == "53") {
        return "云南省";
    }
    if (regionid == "54") {
        return "西藏";
    }
    if (regionid == "61") {
        return "陕西省";
    }
    if (regionid == "62") {
        return "甘肃省";
    }
    if (regionid == "63") {
        return "青海省";
    }
    if (regionid == "64") {
        return "宁夏";
    }
    if (regionid == "65") {
        return "新疆";
    }
    if (regionid == "TW") {
        return "台湾";
    }
    if (regionid == "HK") {
        return "香港";
    }
    if (regionid == "MO") {
        return "澳门";
    }
    if (regionid == "81") {
        return "香港";
    }
    if (regionid == "71") {
        return "台湾";
    }
    if (regionid == "82") {
        return "澳门";
    }

    return "火星";
}