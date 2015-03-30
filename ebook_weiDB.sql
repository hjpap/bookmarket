prompt PL/SQL Developer import file
prompt Created on 2012年7月24日 by Rio
set feedback off
set define off
prompt Disabling triggers for EBOOK_AD...
alter table EBOOK_AD disable all triggers;
prompt Disabling triggers for EBOOK_ADMIN...
alter table EBOOK_ADMIN disable all triggers;
prompt Disabling triggers for EBOOK_BOARD...
alter table EBOOK_BOARD disable all triggers;
prompt Disabling triggers for EBOOK_COMMENT...
alter table EBOOK_COMMENT disable all triggers;
prompt Disabling triggers for EBOOK_GOODS...
alter table EBOOK_GOODS disable all triggers;
prompt Disabling triggers for EBOOK_ORDER...
alter table EBOOK_ORDER disable all triggers;
prompt Disabling triggers for EBOOK_ORDER_DETAIL...
alter table EBOOK_ORDER_DETAIL disable all triggers;
prompt Disabling triggers for EBOOK_TYPE1...
alter table EBOOK_TYPE1 disable all triggers;
prompt Disabling triggers for EBOOK_TYPE2...
alter table EBOOK_TYPE2 disable all triggers;
prompt Disabling triggers for EBOOK_USERS...
alter table EBOOK_USERS disable all triggers;
prompt Deleting EBOOK_USERS...
delete from EBOOK_USERS;
commit;
prompt Deleting EBOOK_TYPE2...
delete from EBOOK_TYPE2;
commit;
prompt Deleting EBOOK_TYPE1...
delete from EBOOK_TYPE1;
commit;
prompt Deleting EBOOK_ORDER_DETAIL...
delete from EBOOK_ORDER_DETAIL;
commit;
prompt Deleting EBOOK_ORDER...
delete from EBOOK_ORDER;
commit;
prompt Deleting EBOOK_GOODS...
delete from EBOOK_GOODS;
commit;
prompt Deleting EBOOK_COMMENT...
delete from EBOOK_COMMENT;
commit;
prompt Deleting EBOOK_BOARD...
delete from EBOOK_BOARD;
commit;
prompt Deleting EBOOK_ADMIN...
delete from EBOOK_ADMIN;
commit;
prompt Deleting EBOOK_AD...
delete from EBOOK_AD;
commit;
prompt Loading EBOOK_AD...
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (1, '去qq', 'http://www.qq.com', '120720144327102353199490.jpg', '1');
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (2, '1111', 'http://www.baidu.com', 'reel_2.jpg', '1');
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (3, '11111', 'http://www.baidu.com', 'reel_4.jpg', '1');
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (4, '1111111', 'http://www.baidu.com', 'reel_3.jpg', '1');
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (5, '11111111', 'http://www.baidu.com', 'reel_4.jpg', '1');
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (6, 'dd', '22', '120720141530396777540794.jpg', '2');
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (7, '22', 'http://www.163.com', 'reel_4.jpg', '2');
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (8, '2222', 'http://www.163.com', 'reel_1.jpg', '2');
insert into EBOOK_AD (AD_ID, AD_TITLE, AD_URL, AD_IMAGE, AD_TYPE)
values (9, null, null, 'reel_3.jpg', '2');
commit;
prompt 9 records loaded
prompt Loading EBOOK_ADMIN...
insert into EBOOK_ADMIN (ADMIN_ID, PWD, ADMIN_NAME, TEL, GRADE)
values ('admin', 'admin', '王威', '13596419152', '1');
commit;
prompt 1 records loaded
prompt Loading EBOOK_BOARD...
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (6, '22', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '22</p>' || chr(13) || '' || chr(10) || '', to_date('16-07-2012', 'dd-mm-yyyy'), '22', '0');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (8, '44', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '44</p>' || chr(13) || '' || chr(10) || '', to_date('15-07-2012', 'dd-mm-yyyy'), '44', '0');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (12, '99', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '99</p>' || chr(13) || '' || chr(10) || '', to_date('14-07-2012', 'dd-mm-yyyy'), '99', '1');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (14, 'sdd', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '11</p>' || chr(13) || '' || chr(10) || '', to_date('13-07-2012', 'dd-mm-yyyy'), '11', '0');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (9, '55', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '55</p>' || chr(13) || '' || chr(10) || '', to_date('12-07-2012', 'dd-mm-yyyy'), '55', '0');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (17, '新书上架，欢迎选购', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '新书上架，欢迎选购！！</p>' || chr(13) || '' || chr(10) || '', to_date('18-07-2012', 'dd-mm-yyyy'), 'admin', '2');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (5, '111', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '1</p>' || chr(13) || '' || chr(10) || '', to_date('11-07-2012', 'dd-mm-yyyy'), '1', '3');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (16, '欢迎来到簿客网', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '欢迎来到簿客网!</p>' || chr(13) || '' || chr(10) || '', to_date('18-07-2012', 'dd-mm-yyyy'), 'admin', '4');
commit;
prompt 8 records loaded
prompt Loading EBOOK_COMMENT...
insert into EBOOK_COMMENT (PJ_ID, PJ_CONTENT, USER_ID, GOODS_ID, PJ_DATE, PJ_LEVEL)
values ('201207201257034', '很好', '1', '42', '2012-07-20 01:23:12', '好评');
insert into EBOOK_COMMENT (PJ_ID, PJ_CONTENT, USER_ID, GOODS_ID, PJ_DATE, PJ_LEVEL)
values ('20120720023853', 'dafasdfsadfsadfsadf', '1', '64', '2012-07-20 14:46:02', '中评');
insert into EBOOK_COMMENT (PJ_ID, PJ_CONTENT, USER_ID, GOODS_ID, PJ_DATE, PJ_LEVEL)
values ('201207200748113', '很好很快', '1', '48', '2012-07-20 01:20:07', '好评');
insert into EBOOK_COMMENT (PJ_ID, PJ_CONTENT, USER_ID, GOODS_ID, PJ_DATE, PJ_LEVEL)
values ('201207205421694', '很好 很快 书本质量很好', '1', '41', '2012-07-20 01:22:54', '好评');
commit;
prompt 4 records loaded
prompt Loading EBOOK_GOODS...
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (43, '2', '33', '不曾苟且（套装）', '新星出版社', '22737395', '40', '45', '2012-05-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">他们是一群秉持独立精神的写作者，带着满身才情，写下他们对周围世界的观察和思考；他们不苟且行事、不苟且为文，洞察力深刻却不炫耀，行文恣肆，余味无穷。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　《不曾苟且Ⅰ》选取了崔卫平、熊培云、陈丹青、刘瑜、易中天等四十六位令人尊敬的写作者在2010年里的曼妙之作，他们的人品文风，无需多言，知者自知。这是一本向文字英雄致敬的小书，也可能是中文世界最具价值的年度文本。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　《不曾苟且Ⅱ》选取贺卫方、崔卫平、熊培云、陈丹青、刘瑜等三十七位令人尊敬的写作者在2011年里的曼妙之作，他们的人品文风，无需多言，知者自知。这将是一本令人温暖、令人有力的年度选本。</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '999', '5', '2', '120719221528829-319157099.jpg', '1', '45');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (62, '2', '33', '青瓷（足本）', '湖南文艺出版社', '9787540455651', '26', '34', '2012-07-02', '<div class="customize" id="content_text">' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="content">　他是湖南省高院院长吴振汉贪污受贿案的涉案人员；<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　他白手起家，在&ldquo;权钱交易&rdquo;中摸爬滚打，短时间内聚积了上千万的财产；<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　他在失去人生自由三百零六天的时间里，创作出了这部带有强烈亲身体验的图书。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　小说主人公张仲平是3D拍卖公司的董事长兼总经理，他的日常工作就是&ldquo;三陪&rdquo;，陪法院干部吃、喝、玩、乐，然后再把他们搞定。他的取胜之道就是第一步 进行感情投资；第二步向对方证明自己能把事情做好；第三步向&ldquo;受贿者&rdquo;证明&ldquo;绝对安全&rdquo;。这几乎成了他致富的&ldquo;不二&rdquo;法门。如果小说仅仅是停留在对这些莺 歌燕舞、繁华似锦的奢侈生活的描述上，就没有多大意义了，作者还对这些表面生活后面隐藏着的社会诟病进行了深层次的思考。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　虽然张仲平的生意开始做得一帆风顺，风生火起，然而正如鲁迅先生所说：&ldquo;行贿有术，也有效，然而有限，以此成大事者，古今未有。&rdquo;书中的执行局局长刘永健仕途正旺时，东窗事发、锒铛入狱，张仲平眼看快到手的大买卖也鸡飞蛋打。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　总之这是一本你看了想说好，但不一定大声&ldquo;叫好&rdquo;的书，想说坏，却又忍不住想偷着学两招的书</span></div>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '1207201252078971079808311.jpg', '3', '34');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (65, '1', '35', '七夜谈', '新世界出版社', '9787510423659', '13', '16', '2012-07-09', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">　世间万物，莫不过&hellip;&hellip; 因绝望而死，源希望而生 失障目之叶，得自在菩提 今夜，寒风积雪，有暖暖暗香。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　&mdash;&mdash;《七夜谈》<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　【第一夜】：&ldquo;生前不愿看你，不能唤你，不舍怜你，不敢爱你，现在，请让我一一补回来。&rdquo;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　【第二夜】：&ldquo;和我一起。将来的风风雨雨，我们两个人一起面对。别想一个人逃，别想再丢下我。&rdquo;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　【第三夜】：城破了，家毁了，我，回不去了&hellip;&hellip;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　【第四夜】：&ldquo;世人看他，看见的是他皇族的姓氏、尊贵的衣袍，而我看他，看见的却是他的勇敢、睿智，与寂寞。&rdquo;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　【第五夜】：拥抱得到的躯体；感应得到的呼吸；情投意合的欢喜&hellip;&hellip;真是让人，好生羡慕。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　【第六夜】：我知道第一夜的欷歔、第二夜的博弈、第三夜的执拗、第四夜的孤寂、第五夜的释怀&hellip;&hellip;可我是谁？<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　【第七夜】：属于第七夜的真相&hellip;&hellip;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　★簿客网独家赠送十四阙《祸国Ⅱ&middot;归程》未刊登番外。</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '1207201258112151560588410.jpg', '2', '17');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (66, '1', '38', '那些回不去的年少时光+那些回不去的年少时光终场', '江苏文艺出版社', '9787539931494', '25', '27', '2012-07-02', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">　《那些回不去的年少时光（合订本）（套装共2 册）》为套装分别包括《那些回不去的少年时代》、《那些回不去的年少时光&middot;终场》。2008年5月12日，汶川发生了里氏8.0级大地震，陕西、甘肃发生 了里氏6.5级到7.0级的余震。那一日，身在旧金山的罗琦琦如往常一般开车去上班，提前三十分钟到办公室，边喝牛奶，边上网收发邮件，突然，她看到了汶 川地震的消息，震惊地点击进去，确定了这条消息的真实性。</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '120720130222925-1028510897.jpg', '2', '27');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (67, '1', '36', '银河帝国3：第二基地', '江苏文艺出版社', '9787539952680', '21', '25', '2012-02-06', '<div class="customize" id="content_text">' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="content">　人类蜗居在银河系的一个小角落&mdash;&mdash;太阳系，在围绕太阳旋转的第三颗行星上，生活了十多万年之久。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　人类在这个小小的行星（他们称之为&ldquo;地球&rdquo;）上，建立了两百多个不同的行政区域（他们称之为&ldquo;国家&rdquo;），直到地球上诞生了第一个会思考的机器人。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　在机器人的帮助下，人类迅速掌握了改造外星球的技术，开启了恢弘的星际殖民运动；人类在银河系如蝗虫般繁衍扩张，带着他们永不磨灭的愚昧与智慧、贪婪 与良知，登上了一个个荒凉的星球，并将银河系卷入漫长的星际战国时代，直至整个银河被统一，一个统治超过2500万个住人行星、疆域横跨十万光年、总计数 兆亿人口的庞大帝国崛起&mdash;&mdash;银河帝国。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　一个微妙的转折发生在银河帝国建国后的12020年。哈里?谢顿，这个刚满32岁的年轻数学家，开创了&ldquo;心理史学&rdquo;，这门学科能用数学公式准确推演全人类的未来&mdash;&mdash;&ldquo;预言&rdquo;从此成为一门可以信任的科学，人类由此可以看见未来。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　谢顿的第一个预言是：虽然毫无征兆，但已存在一万两千年之久的银河帝国即将灭亡。</span></div>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '120720130513530-1993944285.jpg', '2', '25');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (48, '1', '2', '岛（令整个欧洲潸然泪下的生死悲欢）', '南海出版社', '9787544244077', '16', '18', '2010-04-16', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">多年来，阿丽克西斯发觉母亲总是过分守护着自己的过去，不仅掩埋了自己的根，还把上面的泥土踩得结结实实。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '阿丽克西斯决定打开母亲尘封的过去。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '她来到爱琴海的布拉卡，登上一座叫斯皮纳龙格的荒凉小岛。这是一处禁地，一处令布拉卡、爱琴海，甚至整个欧洲都谈虎色变的禁地，更是母亲的禁地。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '禁地打开，一个融合爱恨纠葛的凄凉故事怆然铺展，一曲令整个欧洲潸然泪下的生死悲欢徐徐打开&hellip;&hellip;</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '998', '1', '5', '120719222516181-573539838.jpg', '1', '18');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (45, '2', '31', '浴血荣光', '北京联合出版公司', '9787550208421', '33', '38.5', '2012-07-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">　从世界政党史上很难找到，有哪一个政党像中国共产党这样，领导层像割韭菜一样，一批一批被对方屠杀。这就是中国革命和其他革命都无法类比的空前残酷性&hellip;&hellip;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　那是一个热血澎湃、狂飙突进的时代。中国共产党的一批年轻人浴血奋斗，国民党的一批年轻人也在拼命奋斗，共产国际的一批年轻人也在奋斗。这是一个年纪轻轻就干大事的时代，也是一个年纪轻轻就丢掉性命的时代。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　列宁去世的时候不到54岁。斯大林42岁当上总书记。蒋介石39岁出任国民革命军总司令。李大钊就义时还不到38岁。毛泽东34岁上井冈山。周恩来 29岁主持南昌暴动。朱德31岁参加护法战争。博古24岁出任中共中央临时总负责人。聂耳不到23岁谱写《义勇军进行曲》。寻淮洲21岁担任红军军团长。 邹容18岁写《革命军》&hellip;&hellip;&nbsp;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　没有一个人老态龙钟，没有一个人德高望重，而且没有一个人研究长寿，切磋保养，都是主义、奋斗、牺牲、救亡。这样的现象应那个时代而生，也应那个时代而完成。</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '999', '3', '3', '120719221852107-601442160.jpg', '2', '40');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (42, '24', '61', '财务成本管理 ', '中国财政经济出版社', '9787509534571', '30', '39.9', '2012-04-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '《财务成本管理》中国注册会计师协会。 本教材以体现注册会计师考试改革总体目标为宗旨，以读者基本掌握大学会计等相关专业本科以上专业知识为基础，以全面性与系统性、实用性与时效性并重为原则 编写而成。本教材作为指导考生复习和学习之用，不作为注册会计师全国统一考试的指定用书。</p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '998', '1', '5', '1207192211485711750332032.jpg', '1', '40');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (46, '1', '34', '别相信任何人(一举攻占37国小说畅销榜首)', '中信出版社', '9787508628332', '22', '25.5', '2012-07-02', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="content">如果你怀疑，身边最亲近的人为你虚构了一个人生，你还能相信谁？</span></p>' || chr(13) || '' || chr(10) || '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="content">　　你看到的世界，不是真实的，更何况是别人要你看的。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　20年来，克丽丝的记忆只能保持一天。每天早上醒来，她都会完全忘了昨天的事&mdash;&mdash;包括她的身份、她的过往，甚至她爱的人。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　克丽丝的丈夫叫本，是她在这个世界里唯一的支柱，关于她生命中的一切，都只能由本告知。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　但是有一天，克丽丝找到了自己的日记，发现第一页赫然写着：不要相信本。</span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '999', '1', '6', '120719222133404-1575727121.jpg', '3', '26');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (47, '1', '2', '江上芳菲', '国际文化出版公司', '9787512503694', '13', '16.9', '2012-07-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">　　命运注定会让我们失去所爱的人，否则，我们永远也不会知道他对我们有多么重要。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　家庭发生巨变的富家女方妍在商场专柜工作时偶遇初恋情人江涛，再次相见，前尘往事破茧而出，记忆把两人带到时光的另一端。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　当年他年少气盛，不肯接受她父亲的给予；<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　当年她青春正好，为爱义无反顾地离家出走。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　当年他们一无所有，爱情把彼此牢系在一起，却因命运的捉弄而分开&hellip;&hellip;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　曾经的穷小子如今功成名就，而且身边有了新的恋人陈悦然；<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　富家公子苏元楷对方妍穷追不舍，却又暗藏玄机。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　当事情的真相终于浮出水面，她却早已心如止水。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　一步错，步步错，他们能否破镜重圆，重回初恋的美好时光呢？</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '999', '0', '0', '1207192223554621400433462.jpg', '2', '17');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (68, '4', '48', '随遇而安(江苏"非诚勿扰"主持人孟非首部个人自传)', '浙江文艺出版社', '9787533932510', '21', '28.8', '2012-06-12', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">这是孟非对过往四十年岁月的动情回顾、从容讲述。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '童年重庆、少年南京，不同的文化对他影响深远。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '中学时代的严重偏科，黑暗得让他看不到未来。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '临时工的日子辛酸艰苦，却奠定了他往后的不平凡。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '他从摄像、记者、编导、制片人、主持人的不同角色上一一走过。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '四十年，人生坎坷，从平凡到精彩，命运总在不经意间转折。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '顺应本心，淡定从容，坦然面对每一次改变。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '随遇而安，是很多人问起他的心路历程时，他给出的唯一答案。</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '4', '120720131443979-185481602.jpg', '1', '30');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (41, '21', '23', '遇见心想事成的自己 [平装]', '湖南文艺出版社', '9787540455583', '20.8', '25', '2012-05-28', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '《遇见心想事成的自己》编辑推荐：华语世界首席身心灵作家张德芬的身心灵三部曲之一，《遇见未知的自己》的重生创造篇。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '《遇见心想事成的自己》以故事的形式，讲述了一场触动人心的追寻之旅。主人公阿南不辞辛苦，跋山涉水去遥远的神秘国寻找心想事成的秘密。一路上经历了一系列不可思议的事件，终于揭示出心想事成的真相：清除层层的内在阻碍后，心所向往的东西，会毫不费力地来到你我的生命中。</p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '998', '1', '1', '120719220823451683597771.jpg', '1', '25');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (69, '4', '40', '史蒂夫·乔布斯传', '中信出版社', '9787508630069', '40', '46', '2011-10-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">这本乔布斯唯一授权的官方传记，全球出版日期最终确定为2011年10月24日，简体中文版也将同步上市。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '&nbsp;&nbsp;&nbsp;&nbsp; 原定明年3月出版的唯一授权的传记《史蒂夫&middot;乔布斯传》，一度提前到今年的11月21日，乔布斯病逝当天，美国出版方西蒙舒斯特宣布提前至10月24日出 版，而本书最终成稿已是9月下旬，但为了让这份乔布斯留给世人的最后的礼物早日到达读者手中，该书简体中文版的出版方中信出版社承诺与英文版同步于10月 24日上市。并透露，后续，还会为广大果粉奉献精美的包括精装书和乔布斯与家人的相册在内的限量纪念版套装。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '乔布斯曾说，活着的时候不该出版自传，现在还不到回忆的时候。然而，两年前，乔布斯的妻子劳伦打电话给《时代》杂志的前总编艾萨克森，说&ldquo;如果你要写他 （乔布斯）的传记，那最好现在就要开始了。&rdquo;沃尔特?艾萨克森曾为爱因斯坦、富兰克林等名人著传，但2005年乔布斯找到他时，他拒绝了乔布斯的请求，他 那时认为乔布斯仅是一个企业家而已。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '两年多的时间，与乔布斯40多次的面对面倾谈，以及与乔布斯一百多个家庭成员、朋友、竞争对手、同事的不受限的采访，造就了这本独家传记。</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '1207201316236041703979743.jpg', '3', '46');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (64, '1', '35', '一仙难求（1、2、3）', '江苏文艺出版社', '9787539953045', '30', '46', '2012-06-03', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">　陌天歌是个出身俗世的普通村女，父亲失踪，母亲早逝。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　她寄养于祖父母的身边，无意中触发了祖先留下的禁制，走上了修仙之路。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　天歌在飞云镇集市上遇到散修李玉山。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　李玉山发现她是纯阴体质，便欲把她拐走作为炉鼎。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　玄清门叶景文接受师叔秦守静的任务，欲将天歌母女接回师门，并带她去寻找血缘亲人&mdash;&mdash;二叔叶江。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　谁料叶景文和天歌被叶江误解，他们两个无奈逃离，成为散修。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　天歌改头换面，女扮男装，通过仙台会进入云雾山成为正式弟子，开始修仙之途。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　从卑微的炼气小修士，到举手移山倒海的化神大修士，数百年的时光，天歌遇到了许许多多的人，经历了许许多多的事，渐渐得到了朋友、师长、爱人，继续坚定地走在仙路上。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　最后，天歌终于得窥仙机，却发现，世界变化的秘密&hellip;&hellip;</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '998', '1', '2', '12072012562471840051298.jpg', '3', '46');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (61, '21', '21', '高效能人士的七个习惯（20周年纪念版)', '中国青年出版社', '9787500695356', '21', '25', '2012-07-25', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">本书在每一章最后增加了一个&ldquo;付诸行动&rdquo;版块，精选柯维培训课程中的实践训练习题，以帮助读者加深对&ldquo;七个习惯&rdquo;的理解和掌握，使&ldquo;七个习惯&rdquo;成为属于每个人自己的行动指南,价值堪比18000元的柯维现场培训课。</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '120720125012766677177226.jpg', '3', '25');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (63, '21', '22', '六度人脉(再版)', '湖南文艺出版社', '9787540455125', '13', '17.6', '2012-05-14', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">20世纪60年代，&ldquo;六度人脉&rdquo;概念由美国心理学家Stanley Milgram提出并加以验证。所谓六度人脉是指：地球上所有的人都可以通过六层以内的熟人链和任何其他人联系起来。通俗地说：&ldquo;你和任何一个陌生人之间所间隔的人不会超过六个，也就是说，只要你愿意，最多通过六个人你就能够认识世界上的任何一个陌生人。&rdquo;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　最初&ldquo;六度人脉&rdquo;是政治圈与财经圈里高端人士必用的成功法则。政客用它获得竞选资本，商人用它获取资源。到了后来，它以强大的趋势流行到到美、加、 英、法、德、意、葡、日、韩、丹麦、荷兰、巴西、爱尔兰、西班牙、澳大利亚、马来西亚等160多个国家，并开始进入我们每个人的生活。它小到改变我们每个 人的命运，大到改变这个世界。<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '　　全球500强企业里有80%的企业的管理层都接受过六度人脉基础课训练，以便于他们用最短的时间丰富有效资源，找到想合作的那个人。西方越来越多的父母在孩子16岁后送孩子上六度人脉专业课，以便于孩子在进入社会前就有意识地筛选与丰富自己的人脉库。</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '1', '1207201253505338511642.jpg', '3', '18');
commit;
prompt 16 records loaded
prompt Loading EBOOK_ORDER...
insert into EBOOK_ORDER (ORDER_ID, SALE_DATE, USER_ID, STATUS, ADDRESS)
values ('201207202756200', '2012-07-20', '1', '4', '王威   13596419152    浙江省  绍兴市  新昌县  城关镇');
insert into EBOOK_ORDER (ORDER_ID, SALE_DATE, USER_ID, STATUS, ADDRESS)
values ('201207205190657', '2012-07-20', '1', '4', 'sdf   13596419152    上海市   上海市   上海市   黄浦区   fadgsadfsadf');
insert into EBOOK_ORDER (ORDER_ID, SALE_DATE, USER_ID, STATUS, ADDRESS)
values ('201207201559315', '2012-07-20', '1', '4', '王威   13596419152    浙江省  绍兴市  新昌县  城关镇');
commit;
prompt 3 records loaded
prompt Loading EBOOK_ORDER_DETAIL...
insert into EBOOK_ORDER_DETAIL (ORDER_ID, GOODS_ID, BUY_COUNT, PINGJIA, COST_PRICE, SALE_PRICE)
values ('201207202756200', '48', '1', '2', '16.0', '18.0');
insert into EBOOK_ORDER_DETAIL (ORDER_ID, GOODS_ID, BUY_COUNT, PINGJIA, COST_PRICE, SALE_PRICE)
values ('201207201559315', '41', '1', '2', '20.8', '25.0');
insert into EBOOK_ORDER_DETAIL (ORDER_ID, GOODS_ID, BUY_COUNT, PINGJIA, COST_PRICE, SALE_PRICE)
values ('201207201559315', '42', '1', '2', '30.0', '39.9');
insert into EBOOK_ORDER_DETAIL (ORDER_ID, GOODS_ID, BUY_COUNT, PINGJIA, COST_PRICE, SALE_PRICE)
values ('201207205190657', '64', '1', '2', '30.0', '46.0');
commit;
prompt 4 records loaded
prompt Loading EBOOK_TYPE1...
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (2, '文学');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (1, '小说');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (4, '传记');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (28, '少儿');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (24, '经济与管理');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (41, '将抗');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (21, '励志与成功');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (27, '家庭与育儿');
commit;
prompt 8 records loaded
prompt Loading EBOOK_TYPE2...
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (24, '个人修养', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (21, '成功学', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (22, '为人处事', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (25, '思维与智力', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (30, '名家作品及欣赏', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (34, '侦探/推理', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (41, '历代帝王', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (45, '科学家', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (47, '文学家', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (48, '明星', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (53, '幼儿启蒙', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (57, '管理信息系统', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (58, '领导学', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (60, '世界经济', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (61, '财务管理', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (63, '家庭保健', 27);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (64, '家庭医护', 27);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (66, '家庭理财', 27);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (27, '演讲与口才', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (28, '文学理论', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (29, '文学史', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (31, '中国文学', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (33, '散文随笔', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (35, '魔幻/奇幻/玄幻', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (51, '7-10岁', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (54, '儿童文学', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (81, 'ddd', 41);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (38, '青春', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (1, '都市', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (2, '言情', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (32, '外国文学', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (36, '科幻', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (39, '历史', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (40, '财经人物', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (42, '领袖首脑', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (44, '宗教人物', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (49, '0-2岁', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (52, '11-14岁', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (55, '科普/百科', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (26, '人际与交往', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (43, '政治人物', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (46, '艺术家', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (50, '3-6岁', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (4, '军事', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (23, '心灵读物', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (37, '恐怖/惊悚', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (56, '管理学', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (59, '经济史', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (62, '家庭关系', 27);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (65, '家庭教育', 27);
commit;
prompt 50 records loaded
prompt Loading EBOOK_USERS...
insert into EBOOK_USERS (USER_ID, PWD, USER_NAME, SEX, ADRESS, EMAIL, TEL, JIFEN, GRADE, ZC_DATE)
values ('3', '3', '未填', '男', '未填', '2@2.com', '未填', '0', '普通会员', '2012-07-14');
insert into EBOOK_USERS (USER_ID, PWD, USER_NAME, SEX, ADRESS, EMAIL, TEL, JIFEN, GRADE, ZC_DATE)
values ('4', '4', '未填', '男', '未填', '4@4.com', '未填', '0', '普通会员', '2012-07-15');
insert into EBOOK_USERS (USER_ID, PWD, USER_NAME, SEX, ADRESS, EMAIL, TEL, JIFEN, GRADE, ZC_DATE)
values ('1', '1', '王威', '男', '浙江省  绍兴市  新昌县  城关镇', '1@11.com', '13596419152', '681', '普通会员', '2012-07-14');
commit;
prompt 3 records loaded
prompt Enabling triggers for EBOOK_AD...
alter table EBOOK_AD enable all triggers;
prompt Enabling triggers for EBOOK_ADMIN...
alter table EBOOK_ADMIN enable all triggers;
prompt Enabling triggers for EBOOK_BOARD...
alter table EBOOK_BOARD enable all triggers;
prompt Enabling triggers for EBOOK_COMMENT...
alter table EBOOK_COMMENT enable all triggers;
prompt Enabling triggers for EBOOK_GOODS...
alter table EBOOK_GOODS enable all triggers;
prompt Enabling triggers for EBOOK_ORDER...
alter table EBOOK_ORDER enable all triggers;
prompt Enabling triggers for EBOOK_ORDER_DETAIL...
alter table EBOOK_ORDER_DETAIL enable all triggers;
prompt Enabling triggers for EBOOK_TYPE1...
alter table EBOOK_TYPE1 enable all triggers;
prompt Enabling triggers for EBOOK_TYPE2...
alter table EBOOK_TYPE2 enable all triggers;
prompt Enabling triggers for EBOOK_USERS...
alter table EBOOK_USERS enable all triggers;
set feedback on
set define on
prompt Done.
