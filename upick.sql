-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2025 at 05:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upick`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `sku` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `details` varchar(3000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`sku`, `name`, `price`, `image`, `details`, `link`, `category`) VALUES
('UP25AG00A', 'MUSe Garden 圣诞季 原盒英国Cath kidston合家欢釉中彩8寸餐盘', 0, 'UP25AG00A.jpg', '圣诞季限定陶瓷餐盘，采用经典花卉印花设计，质感细腻优雅。由高品质陶瓷制成，表面光滑易清洁，兼具实用性与收藏价值。', 'https://item.taobao.com/item.htm?id=745403740517&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00B', '原来是泥kp山茶花碗盘杯套装陶瓷盘子汤碗复古餐具一人食', 0, 'UP25AG00B.jpg', '这款手工陶瓷餐具套装以山茶花为主题，采用手绘工艺与复古釉面质感，兼具艺术感与实用性。套装包含碗盘杯组合，适合日常或送礼。', 'https://item.taobao.com/item.htm?id=694753166402&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00C', '复古陶瓷家用10英寸长方形餐盘蛋糕点心盘水果小吃盘高级感餐盘Plates & Bowls', 0, 'UP25AG00C.jpg', '这款复古风陶瓷长方盘以植物插画为主题，搭配自然做旧的釉边设计，兼具优雅与质感。尺寸为25×18CM，适合点心、水果、早餐展示。', 'https://detail.1688.com/offer/899595096786.html', 'Gifts'),
('UP25AG00D', '手捏创意马克杯家用陶瓷高脚杯艺术感水杯咖啡杯子办公室大水杯', 0, 'UP25AG00D.jpg', '单个手捏陶瓷高脚杯，容量530ML。采用耐用陶瓷制作，高脚设计更具艺术风格，可作为咖啡杯或日常饮水杯。', 'https://detail.1688.com/offer/819119881444.html', 'Gifts'),
('UP25AG00E', '可爱面包陶瓷餐具家用饭高颜值圆盘卡通造型盘甜品小吃盘早餐盘子', 0, 'UP25AG00E.jpg', '面包主题渐变黄色不规则餐盘，采用优质瓷器制作，可微波炉使用。包含多种尺寸盘碗组合，可用于甜品、小吃、早餐摆盘。', 'https://detail.1688.com/offer/971659033047.html', 'Gifts'),
('UP25AG00F', '日式同款手绘可爱卡通熊熊杯子高脚杯聚会红酒杯玻璃冰激凌杯', 0, 'UP25AG00F.jpg', '日式同款手绘玻璃杯，卡通熊熊造型，可作为冰激凌杯、果汁杯、聚会红酒杯使用。透明玻璃工艺清晰可爱，适合家用或送礼。', 'https://detail.1688.com/offer/718710120324.html', 'Gifts'),
('UP25AG00G', 'round deep ceramic dish油画风复古花朵意面碟子陶瓷盘深盘西餐盘水果甜品', 0, 'UP25AG00G.webp', '油画风复古花朵图案陶瓷深盘，适用于意面、甜品、水果等食物。深盘设计大方实用，结合艺术复古气质，提升餐桌氛围感。', 'https://item.taobao.com/item.htm?id=677035546157&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00H', 'Pop Key Holder阿楹 项链钥匙手表首饰小收纳盒可爱柜梳妆台香水展示托盘置物架波普风', 0, 'UP25AG00H.webp', '波普风格多功能展示托盘，适合摆放钥匙、项链、戒指、手表及香水等小物件。造型可爱，适合放在玄关、梳妆台或办公桌。', 'https://detail.tmall.com/item.htm?id=858112717823&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00I', 'book-style matches,江边样子 | 几把洋子X兔子狗 联名火焰 原创老书式火柴摆件', 0, 'UP25AG00I.webp', '原创老书造型火柴摆件，江边样子 × 几把洋子 × 兔子狗联名款，可用作拍摄道具、装饰摆件或创意礼物。', 'https://item.taobao.com/item.htm?id=713479684536&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00J', 'Nightingale & Rose Vase半然夜莺与玫瑰双面手绘陶瓷花瓶摆件客厅插花景德镇摆件', 0, 'UP25AG00J.jpg', '半然品牌夜莺与玫瑰主题双面手绘陶瓷花瓶，采用景德镇工艺，艺术感强，适合客厅、书房或工作室摆放与插花。', 'https://item.taobao.com/item.htm?id=853403133672&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00K', '3D birthday card, Sanrio授权可爱猫猫塔立体生日贺卡创意装饰卡片送闺蜜圣诞节', 0, 'UP25AG00K.webp', 'Sanrio授权3D立体生日贺卡，猫猫塔造型，可作为礼物、桌面装饰或节日贺卡，适合送闺蜜、朋友或用于节日庆祝。', 'https://item.taobao.com/item.htm?id=588945966579&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00L', '肆月创意葡萄酒杯甜酒杯女生微醺酒杯可爱高脚杯红酒杯啤酒杯轻奢', 0, 'UP25AG00L.webp', '肆月原创设计甜酒杯，轻奢风格，可用于红酒、甜酒、果酒等。杯身圆润可爱，适合女生微醺或节日聚会使用。', 'https://item.taobao.com/item.htm?id=966034690865&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00M', 'candle《碎花茶》羊绒木茶香香薰蜡烛礼盒生日结婚新婚礼物伴手礼摆件', 0, 'UP25AG00M.webp', '《碎花茶》主题香薰蜡烛，茶香搭配羊绒木香调，气质温柔治愈。附礼盒包装，适合作为生日、婚礼或节日礼物。', 'https://item.taobao.com/item.htm?id=843335720155&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00N', 'Apple scented candle《苹苹果》苹果味香薰蜡烛平安果苹果元素礼物圣诞女生圣诞节', 0, 'UP25AG00N.webp', '苹果造型香薰蜡烛，果香清甜，造型可爱。适合作为平安夜礼物、节日装饰、氛围摆件或送女生的小礼物。', 'https://item.taobao.com/item.htm?id=856775300065&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00O', 'Seagull plush keychain云朵工厂八头船海鸥小挂件可爱萌趣毛绒公仔包包挂饰钥匙扣', 0, 'UP25AG00O.webp', '海鸥主题毛绒玩偶挂件，造型萌趣，可挂在钥匙、包包、背包等。云朵工厂八头船系列设计，适合作为礼物或收藏。', 'https://detail.tmall.com/item.htm?id=969778384574&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00P', 'Embroidered Flower Plate手绘花朵浮雕陶瓷ins风餐盘甜品盘水果小吃盘', 0, 'UP25AG00P.jpg', '手绘浮雕花朵餐盘，工艺细腻，适合甜品、水果、小吃摆盘。ins风格设计，适合作为装饰或拍照 props。', 'https://item.taobao.com/item.htm?id=922380850326&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00Q', '微醺香槟杯葡萄酒杯女生小众高脚杯餐厅酒吧甜酒杯圣诞节礼物', 0, 'UP25AG00Q.webp', '微醺风格香槟杯，透明玻璃材质，小众造型适合女生。可用于葡萄酒、甜酒，也适合作为圣诞节或生日礼物。', 'https://detail.tmall.com/item.htm?id=626921030598&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00R', 'Crystal Glass Dessert Cup高脚玻璃甜品杯冰激凌杯餐厅酒吧透明果冻杯', 0, 'UP25AG00R.jpg', '透明高脚甜品杯，适合冰激凌、果冻、饮品展示，餐厅、酒吧常用款。杯身造型优雅，适合拍照及甜品摆盘。', 'https://item.taobao.com/item.htm?id=713398241264&ns=1&spm=a1z09.2.0.0', 'Gifts'),
('UP25AG00S', 'Vintage Plate Set复古浮雕陶瓷盘套装ins风装饰盘拍照道具甜品盘水果盘', 0, 'UP25AG00S.webp', '复古浮雕陶瓷盘套装，做旧风格设计，适合作为甜品盘、水果盘以及拍照道具。高级质感，文艺家居装饰必备。', 'https://detail.tmall.com/item.htm?_u=b2p1ulc4cf&id=858112717823', 'Gifts'),
('UP25AS00A', 'CryingCenter x WeekendHub notebook & card holder联名系列学院风格纹手账本书衣卡册', 0, 'UP25AS00A.webp', 'CryingCenter x WeekendHub 联名学院风格手账本书衣卡册，设计灵感来源于校园元素，兼具笔记本与卡片收纳功能，适合日常记录与整理学习、工作或生活小物。\r\nCryingCenter x WeekendHub college-style notebook & card holder, inspired by campus elements, combines notebook functionality with card storage. Ideal for daily journaling, organizing study, work, or personal items. ', 'https://item.taobao.com/item.htm?id=864615293277&mi_id=00009VzYkbSpU0yeeoW7DNAqCbl7wuXDTYbg67ygx3WLhUU&spm=tbpc.mytb_itemcollect.item.goods&upStreamPrice=9950', 'Stationeries'),
('UP25AS00B', 'Pencil Case雨过山原创奖杯毛绒笔袋', 0, 'UP25AS00B.webp', '雨过山 Mounrain 奖杯造型笔袋，创意趣味设计，适合收纳文具或小物件。基础包装，轻巧便携，适合学生、办公人士或作为礼品赠送。\r\nMounrain trophy-shaped pencil case with a creative and fun design, ideal for storing stationery or small items. Comes in basic packaging, lightweight and portable, suitable for students, office workers, or as a gift.', 'https://item.taobao.com/item.htm?abbucket=8&id=785031876576&mi_id=00003J3cL2cdHtVKBO5_h9AgwMEBEfhx2ZTNo08klQmeO2A&ns=1&priceTId=2100c89117621177531245481e0907&skuId=5528903130801&spm=a21n57.1.hoverItem.28&utparam=%7B%22aplus_abtest%22%3A%22f930146ce80bae2a144db7baf9f1d791%22%7D&xxc=taobaoSearch', 'Stationeries'),
('UP25AS00C', 'Colorful journal clip彩色手账夹子多功能照片电影票大号金属铁夹学生整理文件大夹子', 0, 'UP25AS00C.webp', '彩色手账夹子，多功能设计，可固定照片、电影票、试卷、文件或音乐剧票据。\r\nColorful journal clip with multi-purpose design, perfect for holding photos, movie tickets, worksheets, documents, or musical tickets.', 'https://detail.tmall.com/item.htm?_u=32p1ulc4e&pvid=646b9690b2d8bb8e78ef0829d97b5e90&pos=1&acm=05304.1003.1.1684294105933&scm=1007.40986.284090.0&id=68476189', 'Stationeries'),
('UP25AS00D', 'Tulip flower cup少女心郁金香花杯笔筒化妆刷收纳桶复古花朵摆件花瓶教师节礼物', 0, 'UP25AS00D.webp', '郁金香花杯，多功能设计，可用作笔筒、化妆刷收纳桶或小摆件。\r\nTulip flower cup, multifunctional design suitable as a pen holder, makeup brush organizer, or decorative piece.', 'https://item.taobao.com/item.htm?abbucket=8&id=89651978358&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00E', 'Tagi.《66go》Anniversary Limited Edition Album  纪念册可放拍立得照片相册手账装饰', 0, 'UP25AS00E.jpg', 'Tagi 《66go》6周年限定相册，采用布艺拼贴与精美刺绣设计，适用于拍立得照片及各类纪念物收纳。\r\nTagi **66go** anniversary edition album with fabric collage and exquisite embroidery. Designed for polaroid and other memorabilia storage.', 'https://detail.tmall.com/item.htm?id=940564351287&rn=1a00006743...（此处省略）', 'Stationeries'),
('UP25AS00F', 'DIY wooden ballpoint pen小红书同款diy搞怪木质圆珠笔环保黑色高颜值签字笔学生文具', 0, 'UP25AS00F.webp', 'DIY木质圆珠笔，环保松木材质，黑色笔芯，简约高颜值设计，可爱搞怪。\r\nDIY wooden ballpoint pen made of eco-friendly pine wood, featuring black ink, minimalist styling, and cute quirky shape.', 'https://item.taobao.com/item.htm?id=824503727338&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00G', 'YouthWill Snowy Night puzzle  雪夜拼图 烫金圣诞新年礼物原创插画500片', 0, 'UP25AS00G.webp', 'YouthWill 雪夜拼图，共500片，原创插画＋烫金设计，节日氛围感拉满。\r\nYouthWill Snowy Night jigsaw puzzle (500 pcs), featuring original illustration with gold foil art.', 'https://item.taobao.com/item.htm?id=847692188987&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00H', 'Winter Night’s Dreamseasonal scrapbook set银河信差冬季梦境手账本 整理本', 0, 'UP25AS00H.webp', '银河信差 Winter Night’s Dream冬季梦境主题手账本，B6尺寸，配有多款彩色页面，灵感来自冬夜梦境。', 'https://item.taobao.com/item.htm?id=856965245858&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00I', 'everything wins original notepad时幻原创简约星星苹果红色拍纸本 120g双面书写', 0, 'UP25AS00I.webp', '时幻原创星星苹果设计，简约红色拍纸本，采用120g双面特种纸，适合写作、涂鸦或手账记录。', 'https://item.taobao.com/item.htm?id=895596469793&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00J', 'Morose Eggman movie ticketbookmark布达佩斯大饭店 电影票造型金属书签', 0, 'UP25AS00J.webp', '布达佩斯大饭店主题电影票金属书签，独特文艺风设计，适合阅读、收藏或作为礼物送影迷。', 'https://item.taobao.com/item.htm?abbucket=8&id=874638190276&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00K', 'stained-glass bookmark无用小猫｜透光镂空彩窗书签 书与地下城系列 原创设计', 0, 'UP25AS00K.webp', '透光镂空彩窗风格的小猫书签，书与地下城系列原创设计，适合作为收藏或阅读使用，质感精致。', 'https://item.taobao.com/item.htm?abbucket=8&id=879385312662&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00L', '西班牙巴塞罗那透光书签文创镂空金属书签个性礼物送闺蜜', 0, 'UP25AS00L.webp', '巴塞罗那主题镂空金属透光书签，设计感强，适合送礼或收藏，兼具艺术与实用价值。', 'https://item.taobao.com/item.htm?abbucket=8&id=963413906983&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00M', 'night light多巴胺小夜灯悬挂式宿舍床上用好物氛围感台灯卧室装饰吊灯床头灯', 0, 'UP25AS00M.jpg', '悬挂式小夜灯，多巴胺风格，可悬挂在宿舍、卧室等空间。可营造柔和氛围光，支持多档亮度调节。', 'https://item.taobao.com/item.htm?abbucket=8&id=909511327717&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00N', 'Miffy Rabbit embossing tool可爱米菲兔手账压花器韩系ins风高颜值工具', 0, 'UP25AS00N.webp', '米菲兔压花器，小型DIY工具，适合手账、贺卡、纸艺等制作。造型可爱，高颜值风格让创作更有乐趣。', 'https://item.taobao.com/item.htm?abbucket=8&id=983844145733&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00O', '2026 Doodle mechanical flip calendar盐岛时光 2026年机械翻页日历 手账桌面摆件', 0, 'UP25AS00O.webp', '2026机械翻页日历，采用复古齿轮结构，木质底座搭配独特插画，非常适合作为桌面摆件或手账周边收藏。', 'https://item.taobao.com/item.htm?id=980584458016&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00P', 'wooden stamp小熊茶话会木质印章蝴蝶结手帐diy装饰摆件道具学生用印素材', 0, 'UP25AS00P.webp', '小熊茶话会主题木质印章，雕刻细致，适合手账、DIY、礼物包装与装饰使用。', 'https://item.taobao.com/item.htm?id=740527082471&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AS00Q', 'Voice ヴォイス', 0, 'UP25AS00Q.jpg', '手工纸质日本风动物主题日历，采用品质材料和挂绳。尼泊尔产手作设计，深受欢迎。', 'https://www.yuigaia.com/cgi/2026/', 'Stationeries'),
('UP25AS00R', '苹果幻境切割烫金模切切割things可爱苹果手工diy装饰', 0, 'UP25AS00R.webp', '苹果主题烫金模切片，适合DIY装饰手账和贺卡，小巧可爱，适用于多种场景。', 'https://item.taobao.com/item.htm?id=966272337578&ns=1&spm=a1z09.2.0.0', 'Stationeries'),
('UP25AW00A', 'Daiwing knit vest心跳不止 秋冬学院风男女生假两件软糯款式格纹针织毛衣', 0, 'UP25AW00A.jpg', '柔软蓬松的针织毛衣，采用复古格纹设计与学院风徽章装饰，宽松版型，舒适百搭。\n\nSoft knit vest with retro plaid design and academy-style emblem. Loose fit, comfortable for daily wear.', 'https://item.taobao.com/item.htm?id=9846959943', 'Wearables'),
('UP25AW00B', 'knit vest秋冬日系复古软糯苹果提花V领针织衫马甲叠穿毛衣背心女', 0, 'UP25AW00B.jpg', '秋冬日系复古针织马甲，采用柔软亲肤面料，苹果提花设计，V领剪裁，可轻松叠穿毛衣或衬衫。', 'https://item.taobao.com/item.htm?id=9764384362', 'Wearables'),
('UP25AW00C', '“Candlelight Sway” 925 Sterling Silver Baroque Pearl Necklace原创烛光摇曳银饰项链', 0, 'UP25AW00C.jpg', '灵感来自烛光摇曳的温柔光影，搭配巴洛克珍珠独特曲线，展现古典与浪漫并存的气质。', 'https://item.taobao.com/item.htm?anchorId=1896', 'Wearables'),
('UP25AW00D', 'Vintage Embroidered Leaf Tie咖沫原创复古中国风刺绣衬衫领带女装饰长款挂件', 0, 'UP25AW00D.webp', '以“秋枫落叶”为灵感，将东方意境与现代剪裁相结合，轻盈垂坠、适合多种穿搭风格。', 'https://item.taobao.com/item.htm?id=6805799167', 'Wearables'),
('UP25AW00E', 'Vintage Washed Denim Maxi Skirt for Women复古做旧牛仔半身裙', 0, 'UP25AW00E.webp', '复古洗水牛仔半身裙，毛边与破洞细节营造自然随性氛围，百搭、舒适，适合四季穿搭。', 'https://item.taobao.com/item.htm?id=7445223042', 'Wearables'),
('UP25AW00F', 'Vintage Wool Beret秋冬复古羊毛法式贝雷帽日系百搭拍照帽子', 0, 'UP25AW00F.webp', '经典法式复古羊毛贝雷帽，柔软保暖，适合秋冬穿搭。百搭小众款，可用于拍照、通勤或日常休闲造型。', 'https://item.taobao.com/item.htm?id=713398241264', 'Wearables'),
('UP25AW00G', 'Floral Lace Gloves原创花边蕾丝手套拍照道具法式复古宫廷风配饰', 0, 'UP25AW00G.webp', '浪漫法式宫廷风蕾丝手套，轻薄透气，细密花纹展现优雅气质。适合拍照、舞会、演出或搭配复古穿搭。', 'https://item.taobao.com/item.htm?id=713398241265', 'Wearables'),
('UP25AW00H', 'Ribbon Hair Clip大蝴蝶结发夹甜美气质ins风发饰少女度假必备', 0, 'UP25AW00H.webp', '大蝴蝶结设计甜美可爱，适合日常、度假、拍照穿搭。夹力稳定不易滑落，多色可选。', 'https://item.taobao.com/item.htm?id=713398241266', 'Wearables'),
('UP25AW00I', 'Embroidered Little Bear Scarf刺绣小熊围巾保暖围脖秋冬可爱软糯学生文艺百搭', 0, 'UP25AW00I.jpg', '软糯亲肤的刺绣小熊围巾，可爱又保暖。适合学生、通勤、秋冬拍照穿搭，百搭空山新雨风格。', 'https://item.taobao.com/item.htm?id=713398241267', 'Wearables'),
('UP25AW00J', 'Vintage Leaf Earrings秋日落叶耳饰原创设计小众法式文艺气质耳环', 0, 'UP25AW00J.webp', '以秋天落叶为灵感的原创设计耳环，小众复古文艺风，适合秋冬穿搭或拍照。轻盈不压耳。', 'https://item.taobao.com/item.htm?id=713398241268', 'Wearables'),
('UP25AW00K', 'French Chic Baguette Handbag法式俏皮腊肠包可爱星星刺绣法棍包', 0, 'UP25AW00K.webp', '这款法式俏皮腊肠包以简约法棍造型结合可爱的星星刺绣设计，展现轻盈而灵动的法式时尚感。牛仔质感面料搭配深色包边与圆弧造型，既复古又百搭。', 'https://item.taobao.com/item.htm?id=857069726427', 'Wearables'),
('UP25AW00L', '“Office Lady” Cute Pillow Hair Clip   office lady系列可爱休闲卡通百搭枕头包发夹', 0, 'UP25AW00L.webp', '这款来自 Office Lady 系列的发夹，以“枕头包”造型展现慵懒与可爱并存的趣味风格。浅蓝色布料搭配粉色刺绣字样 “OFFICE LAZY”，传递轻松自在的日常态度。', 'https://item.taobao.com/item.htm?id=832491235409', 'Wearables'),
('UP25AW00M', 'Funny Croissant Fluffy Shoulder Bag趣味毛绒单肩斜挎包秋冬牛角包造型', 0, 'UP25AW00M.jpg', '这款毛绒包以“牛角包”造型为灵感，将可爱趣味与秋冬温暖质感完美结合。柔软蓬松的仿羊羔绒材质手感细腻，可单肩或斜挎背负，适合作为秋冬造型亮点单品。', 'https://detail.tmall.com/item.htm?id=848679053399', 'Wearables'),
('UP25AW00N', 'Three-Color Bunny Ear Knit Hat三色兔耳朵针织帽保暖可爱大纽扣装饰', 0, 'UP25AW00N.jpg', '这款兔耳朵针织帽以俏皮可爱的兔耳造型为亮点，柔软针织材质温暖舒适，带来秋冬季的治愈氛围感。', 'https://item.taobao.com/item.htm?id=689014206512', 'Wearables'),
('UP25AW00O', '外贸品女拖鞋超萌小兔子可爱卡通全包拖鞋秋冬居家保暖棉鞋', 0, 'UP25AW00O.webp', '', 'https://item.taobao.com/item.htm?id=856204060353', 'Wearables'),
('UP25AW00P', 'Vintage Bow Pearl Brooch复古蝴蝶结珍珠胸针小众设计法式优雅配饰', 0, 'UP25AW00P.jpg', '复古法式蝴蝶结胸针，搭配珍珠设计优雅百搭。可用于外套、毛衣、围巾等多种穿搭点缀，气质温柔精致。', 'https://detail.tmall.com/item.htm?id=855113037690', 'Wearables'),
('UP25AW00Q', 'Winter Warm Fluffy Socks秋冬加厚毛绒袜子保暖家居地板袜可爱女生款', 0, 'UP25AW00Q.jpg', '柔软加厚的秋冬毛绒袜，亲肤保暖，适合居家穿着。防滑设计更安全，可爱配色提升氛围感。', 'https://item.taobao.com/item.htm?id=967838347709', 'Wearables'),
('UP25AW00R', 'Cozy Lamb Velvet Mittens仿羊羔绒保暖手套冬季可爱毛绒手套学生情侣款', 0, 'UP25AW00R.webp', '仿羊羔绒冬季保暖手套，柔软蓬松、保暖性强。可爱小众风格，适合学生、通勤、外出拍照。', 'https://item.taobao.com/item.htm?id=983059807312', 'Wearables');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `saved` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`id`, `userid`, `sku`, `saved`) VALUES
(1, 1, 'UP25AS00I', 0),
(2, 1, 'UP25AS00K', 0),
(3, 1, 'UP25AS00J', 1),
(4, 1, 'UP25AG00E', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(1, 'admin', 'adminpassword');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`sku`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
