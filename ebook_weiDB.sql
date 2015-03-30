prompt PL/SQL Developer import file
prompt Created on 2012��7��24�� by Rio
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
values (1, 'ȥqq', 'http://www.qq.com', '120720144327102353199490.jpg', '1');
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
values ('admin', 'admin', '����', '13596419152', '1');
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
values (17, '�����ϼܣ���ӭѡ��', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '�����ϼܣ���ӭѡ������</p>' || chr(13) || '' || chr(10) || '', to_date('18-07-2012', 'dd-mm-yyyy'), 'admin', '2');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (5, '111', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '1</p>' || chr(13) || '' || chr(10) || '', to_date('11-07-2012', 'dd-mm-yyyy'), '1', '3');
insert into EBOOK_BOARD (BOARD_ID, TITLE, CONTENT, POST_DATE, POSTER, READ_COUNT)
values (16, '��ӭ����������', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '��ӭ����������!</p>' || chr(13) || '' || chr(10) || '', to_date('18-07-2012', 'dd-mm-yyyy'), 'admin', '4');
commit;
prompt 8 records loaded
prompt Loading EBOOK_COMMENT...
insert into EBOOK_COMMENT (PJ_ID, PJ_CONTENT, USER_ID, GOODS_ID, PJ_DATE, PJ_LEVEL)
values ('201207201257034', '�ܺ�', '1', '42', '2012-07-20 01:23:12', '����');
insert into EBOOK_COMMENT (PJ_ID, PJ_CONTENT, USER_ID, GOODS_ID, PJ_DATE, PJ_LEVEL)
values ('20120720023853', 'dafasdfsadfsadfsadf', '1', '64', '2012-07-20 14:46:02', '����');
insert into EBOOK_COMMENT (PJ_ID, PJ_CONTENT, USER_ID, GOODS_ID, PJ_DATE, PJ_LEVEL)
values ('201207200748113', '�ܺúܿ�', '1', '48', '2012-07-20 01:20:07', '����');
insert into EBOOK_COMMENT (PJ_ID, PJ_CONTENT, USER_ID, GOODS_ID, PJ_DATE, PJ_LEVEL)
values ('201207205421694', '�ܺ� �ܿ� �鱾�����ܺ�', '1', '41', '2012-07-20 01:22:54', '����');
commit;
prompt 4 records loaded
prompt Loading EBOOK_GOODS...
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (43, '2', '33', '�������ң���װ��', '���ǳ�����', '22737395', '40', '45', '2012-05-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">������һȺ���ֶ��������д���ߣ�����������飬д�����Ƕ���Χ����Ĺ۲��˼�������ǲ��������¡�������Ϊ�ģ����������ȴ����ҫ�������������ζ���<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������������Ң�ѡȡ�˴���ƽ�������ơ��µ��ࡢ��褡����������ʮ��λ�����𾴵�д������2010���������֮�������ǵ���Ʒ�ķ磬������ԣ�֪����֪������һ��������Ӣ���¾���С�飬Ҳ����������������߼�ֵ������ı���<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������������Ң�ѡȡ������������ƽ�������ơ��µ��ࡢ��褵���ʮ��λ�����𾴵�д������2011���������֮�������ǵ���Ʒ�ķ磬������ԣ�֪����֪���⽫��һ��������ů���������������ѡ����</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '999', '5', '2', '120719221528829-319157099.jpg', '1', '45');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (62, '2', '33', '��ɣ��㱾��', '�������ճ�����', '9787540455651', '26', '34', '2012-07-02', '<div class="customize" id="content_text">' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="content">�����Ǻ���ʡ��ԺԺ������̰���ܻ߰����永��Ա��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '������������ң���&ldquo;ȨǮ����&rdquo;���������򣬶�ʱ���ھۻ�����ǧ��ĲƲ���<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������ʧȥ�������������������ʱ������������ⲿ����ǿ�����������ͼ�顣<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����С˵���˹�����ƽ��3D������˾�Ķ��³����ܾ��������ճ���������&ldquo;����&rdquo;���㷨Ժ�ɲ��ԡ��ȡ��桢�֣�Ȼ���ٰ����Ǹ㶨������ȡʤ֮�����ǵ�һ�� ���и���Ͷ�ʣ��ڶ�����Է�֤���Լ��ܰ��������ã���������&ldquo;�ܻ���&rdquo;֤��&ldquo;���԰�ȫ&rdquo;���⼸���������¸���&ldquo;����&rdquo;���š����С˵������ͣ���ڶ���Щݺ �����衢�����ƽ����ݳ�����������ϣ���û�ж�������ˣ����߻�����Щ����������������ŵ����ڸ�����������ε�˼����<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '������Ȼ����ƽ�����⿪ʼ����һ����˳����������Ȼ������³Ѹ������˵��&ldquo;�л�������Ҳ��Ч��Ȼ�����ޣ��Դ˳ɴ����ߣ��Ž�δ�С�&rdquo;���е�ִ�о־ֳ���������;����ʱ�������·����������������ƽ�ۿ��쵽�ֵĴ�����Ҳ���ɵ���<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '������֮����һ���㿴����˵�ã�����һ������&ldquo;�к�&rdquo;���飬��˵����ȴ���̲�ס��͵��ѧ���е���</span></div>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '1207201252078971079808311.jpg', '3', '34');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (65, '1', '35', '��ҹ̸', '�����������', '9787510423659', '13', '16', '2012-07-09', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">���������Ī����&hellip;&hellip; �����������Դϣ������ ʧ��Ŀ֮Ҷ������������ ��ҹ�������ѩ����ůů���㡣<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����&mdash;&mdash;����ҹ̸��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������һҹ����&ldquo;��ǰ��Ը���㣬���ܻ��㣬�������㣬���Ұ��㣬���ڣ�������һһ��������&rdquo;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������ڶ�ҹ����&ldquo;����һ�𡣽����ķ�����꣬����������һ����ԡ�����һ�����ӣ������ٶ����ҡ�&rdquo;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����������ҹ���������ˣ��һ��ˣ��ң��ز�ȥ��&hellip;&hellip;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����������ҹ����&ldquo;���˿�����������������������ϡ��������ۣ����ҿ�����������ȴ�������¸ҡ���ǣ����į��&rdquo;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����������ҹ����ӵ���õ������壻��Ӧ�õ��ĺ�������Ͷ��ϵĻ�ϲ&hellip;&hellip;�������ˣ�������Ľ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����������ҹ������֪����һҹ��줚[���ڶ�ҹ�Ĳ��ġ�����ҹ��ִ�֡�����ҹ�Ĺ¼š�����ҹ���ͻ�&hellip;&hellip;������˭��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����������ҹ�������ڵ���ҹ������&hellip;&hellip;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�����ﲾ������������ʮ���ڡ�������&middot;��̡�δ���Ƿ��⡣</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '1207201258112151560588410.jpg', '2', '17');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (66, '1', '38', '��Щ�ز�ȥ������ʱ��+��Щ�ز�ȥ������ʱ���ճ�', '�������ճ�����', '9787539931494', '25', '27', '2012-07-02', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">������Щ�ز�ȥ������ʱ�⣨�϶���������װ��2 �ᣩ��Ϊ��װ�ֱ��������Щ�ز�ȥ������ʱ����������Щ�ز�ȥ������ʱ��&middot;�ճ�����2008��5��12�գ��봨����������8.0����������������෢�� ������6.5����7.0����������һ�գ����ھɽ�ɽ��������������һ�㿪��ȥ�ϰ࣬��ǰ��ʮ���ӵ��칫�ң��ߺ�ţ�̣��������շ��ʼ���ͻȻ������������ ���������Ϣ���𾪵ص����ȥ��ȷ����������Ϣ����ʵ�ԡ�</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '120720130222925-1028510897.jpg', '2', '27');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (67, '1', '36', '���ӵ۹�3���ڶ�����', '�������ճ�����', '9787539952680', '21', '25', '2012-02-06', '<div class="customize" id="content_text">' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="content">�������Ͼ�������ϵ��һ��С����&mdash;&mdash;̫��ϵ����Χ��̫����ת�ĵ����������ϣ�������ʮ������֮�á�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������������СС�����ǣ����ǳ�֮Ϊ&ldquo;����&rdquo;���ϣ����������ٶ����ͬ�������������ǳ�֮Ϊ&ldquo;����&rdquo;����ֱ�������ϵ����˵�һ����˼���Ļ����ˡ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�����ڻ����˵İ����£�����Ѹ�������˸���������ļ����������˻ֺ���Ǽ�ֳ���˶�������������ϵ��ȳ�㷱�����ţ�������������ĥ����������ǻۡ�̰�� ����֪��������һ�������������򣬲�������ϵ�����������Ǽ�ս��ʱ����ֱ���������ӱ�ͳһ��һ��ͳ�γ���2500���ס�����ǡ�������ʮ����ꡢ�ܼ��� �����˿ڵ��Ӵ�۹�����&mdash;&mdash;���ӵ۹���<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����һ��΢���ת�۷��������ӵ۹��������12020�ꡣ����?л�٣��������32���������ѧ�ң�������&ldquo;����ʷѧ&rdquo;������ѧ��������ѧ��ʽ׼ȷ����ȫ�����δ��&mdash;&mdash;&ldquo;Ԥ��&rdquo;�Ӵ˳�Ϊһ�ſ������εĿ�ѧ�������ɴ˿��Կ���δ����<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����л�ٵĵ�һ��Ԥ���ǣ���Ȼ�������ף����Ѵ���һ����ǧ��֮�õ����ӵ۹�����������</span></div>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '120720130513530-1993944285.jpg', '2', '25');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (48, '1', '2', '����������ŷ����Ȼ���µ�����������', '�Ϻ�������', '9787544244077', '16', '18', '2010-04-16', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">����������������˹����ĸ�����ǹ����ػ����Լ��Ĺ�ȥ�������������Լ��ĸ�����������������ȵý��ʵʵ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������˹������ĸ�׳���Ĺ�ȥ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '���������ٺ��Ĳ�����������һ����˹Ƥ������Ļ���С��������һ�����أ�һ������������ٺ�����������ŷ�޶�̸��ɫ��Ľ��أ�����ĸ�׵Ľ��ء�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '���ش򿪣�һ���ںϰ��޾��������������Ȼ��չ��һ��������ŷ����Ȼ���µ��������������&hellip;&hellip;</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '998', '1', '5', '120719222516181-573539838.jpg', '1', '18');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (45, '2', '31', 'ԡѪ�ٹ�', '�������ϳ��湫˾', '9787550208421', '33', '38.5', '2012-07-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">������������ʷ�Ϻ����ҵ�������һ���������й��������������쵼�����²�һ����һ��һ�����Է���ɱ��������й������������������޷���ȵĿ�ǰ�п���&hellip;&hellip;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������һ����Ѫ���ȡ����ͻ����ʱ�����й���������һ��������ԡѪ�ܶ������񵳵�һ��������Ҳ��ƴ���ܶ����������ʵ�һ��������Ҳ�ڷܶ�������һ���������͸ɴ��µ�ʱ����Ҳ��һ���������Ͷ���������ʱ����<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������ȥ����ʱ�򲻵�54�ꡣ˹����42�굱������ǡ�����ʯ39����ι����������˾�����Ⱦ���ʱ������38�ꡣë��34���Ͼ���ɽ���ܶ��� 29�������ϲ����������31��μӻ���ս��������24������й�������ʱ�ܸ����ˡ���������23����д�����¾�����������Ѱ����21�굣�κ�����ų��� ����18��д����������&hellip;&hellip;&nbsp;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����û��һ������̬���ӣ�û��һ���˵¸����أ�����û��һ�����о����٣��д豣�����������塢�ܶ�������������������������Ӧ�Ǹ�ʱ��������ҲӦ�Ǹ�ʱ������ɡ�</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '999', '3', '3', '120719221852107-601442160.jpg', '2', '40');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (42, '24', '61', '����ɱ����� ', '�й��������ó�����', '9787509534571', '30', '39.9', '2012-04-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '������ɱ������й�ע����ʦЭ�ᡣ ���̲�������ע����ʦ���Ըĸ�����Ŀ��Ϊ��ּ���Զ��߻������մ�ѧ��Ƶ����רҵ��������רҵ֪ʶΪ��������ȫ������ϵͳ�ԡ�ʵ������ʱЧ�Բ���Ϊԭ�� ��д���ɡ����̲���Ϊָ��������ϰ��ѧϰ֮�ã�����Ϊע����ʦȫ��ͳһ���Ե�ָ�����顣</p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '998', '1', '5', '1207192211485711750332032.jpg', '1', '40');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (46, '1', '34', '�������κ���(һ�ٹ�ռ37��С˵��������)', '���ų�����', '9787508628332', '22', '25.5', '2012-07-02', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="content">����㻳�ɣ�������׽�����Ϊ���鹹��һ���������㻹������˭��</span></p>' || chr(13) || '' || chr(10) || '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="content">�����㿴�������磬������ʵ�ģ����ο��Ǳ���Ҫ�㿴�ġ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����20����������˿�ļ���ֻ�ܱ���һ�졣ÿ��������������������ȫ�����������&mdash;&mdash;����������ݡ����Ĺ����������������ˡ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������˿���ɷ�б������������������Ψһ��֧���������������е�һ�У���ֻ���ɱ���֪��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����������һ�죬����˿�ҵ����Լ����ռǣ����ֵ�һҳ��Ȼд�ţ���Ҫ���ű���</span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '999', '1', '6', '120719222133404-1575727121.jpg', '3', '26');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (47, '1', '2', '���Ϸ���', '�����Ļ����湫˾', '9787512503694', '13', '16.9', '2012-07-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">��������ע����������ʧȥ�������ˣ�����������ԶҲ����֪�����������ж�ô��Ҫ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '������ͥ�����ޱ�ĸ���Ů�������̳�ר����ʱż���������˽��Σ��ٴ������ǰ�������Ƽ��������������˴���ʱ�����һ�ˡ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����������������ʢ�����Ͻ��������׵ĸ��裻<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�����������ഺ���ã�Ϊ�����޷��˵���ҳ��ߡ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '������������һ�����У�����ѱ˴���ϵ��һ��ȴ�����˵�׽Ū���ֿ�&hellip;&hellip;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '������������С����񹦳����ͣ�������������µ����˳���Ȼ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������ҹ�����Ԫ���Է�����׷���ᣬȴ�ְ���������<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '������������������ڸ���ˮ�棬��ȴ��������ֹˮ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����һ���������������ܷ��ƾ���Բ���ػس���������ʱ���أ�</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '999', '0', '0', '1207192223554621400433462.jpg', '2', '17');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (68, '4', '48', '��������(����"�ǳ�����"�������Ϸ��ײ������Դ�)', '�㽭���ճ�����', '9787533932510', '21', '28.8', '2012-06-12', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">�����ϷǶԹ�����ʮ�����µĶ���عˡ����ݽ�����<br />' || chr(13) || '' || chr(10) || '' || chr(9) || 'ͯ�����졢�����Ͼ�����ͬ���Ļ�����Ӱ����Զ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��ѧʱ��������ƫ�ƣ��ڰ�������������δ����<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��ʱ�������������࣬ȴ�춨��������Ĳ�ƽ����<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������񡢼��ߡ��ർ����Ƭ�ˡ������˵Ĳ�ͬ��ɫ��һһ�߹���<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��ʮ�꣬������������ƽ�������ʣ��������ڲ������ת�ۡ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '˳Ӧ���ģ��������ݣ�̹Ȼ���ÿһ�θı䡣<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�����������Ǻܶ�������������·����ʱ����������Ψһ�𰸡�</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '4', '120720131443979-185481602.jpg', '1', '30');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (41, '21', '23', '���������³ɵ��Լ� [ƽװ]', '�������ճ�����', '9787540455583', '20.8', '25', '2012-05-28', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '�����������³ɵ��Լ����༭�Ƽ�������������ϯ�����������ŵ·ҵ�������������֮һ��������δ֪���Լ�������������ƪ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�����������³ɵ��Լ����Թ��µ���ʽ��������һ���������ĵ�׷Ѱ֮�á����˹����ϲ������࣬��ɽ��ˮȥңԶ�����ع�Ѱ�������³ɵ����ܡ�һ·�Ͼ�����һϵ�в���˼����¼������ڽ�ʾ�������³ɵ����ࣺ������������谭�����������Ķ�����������������������ҵ������С�</p>' || chr(13) || '' || chr(10) || '', '2012-07-19', '998', '1', '1', '120719220823451683597771.jpg', '1', '25');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (69, '4', '40', 'ʷ�ٷ��ǲ�˹��', '���ų�����', '9787508630069', '40', '46', '2011-10-01', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">�Ȿ�ǲ�˹Ψһ��Ȩ�Ĺٷ����ǣ�ȫ�������������ȷ��Ϊ2011��10��24�գ��������İ�Ҳ��ͬ�����С�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '&nbsp;&nbsp;&nbsp;&nbsp; ԭ������3�³����Ψһ��Ȩ�Ĵ��ǡ�ʷ�ٷ�&middot;�ǲ�˹������һ����ǰ�������11��21�գ��ǲ�˹���ŵ��죬�������淽������˹��������ǰ��10��24�ճ� �棬���������ճɸ�����9����Ѯ����Ϊ��������ǲ�˹�������˵������������յ���������У�����������İ�ĳ��淽���ų������ŵ��Ӣ�İ�ͬ����10�� 24�����С���͸¶������������Ϊ�����۷��׾����İ�����װ����ǲ�˹����˵�������ڵ������������װ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�ǲ�˹��˵�����ŵ�ʱ�򲻸ó����Դ������ڻ����������ʱ��Ȼ��������ǰ���ǲ�˹���������״�绰����ʱ������־��ǰ�ܱబ����ɭ��˵&ldquo;�����Ҫд�� ���ǲ�˹���Ĵ��ǣ���������ھ�Ҫ��ʼ�ˡ�&rdquo;�ֶ���?������ɭ��Ϊ����˹̹���������ֵ�������������2005���ǲ�˹�ҵ���ʱ�����ܾ����ǲ�˹�������� ��ʱ��Ϊ�ǲ�˹����һ����ҵ�Ҷ��ѡ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '������ʱ�䣬���ǲ�˹40��ε��������̸���Լ����ǲ�˹һ�ٶ����ͥ��Ա�����ѡ��������֡�ͬ�µĲ����޵Ĳɷã�������Ȿ���Ҵ��ǡ�</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '1207201316236041703979743.jpg', '3', '46');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (64, '1', '35', 'һ������1��2��3��', '�������ճ�����', '9787539953045', '30', '46', '2012-06-03', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">��İ����Ǹ�������������ͨ��Ů������ʧ�٣�ĸ�����š�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������������游ĸ����ߣ������д������������µĽ��ƣ�����������֮·��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������ڷ�������������ɢ������ɽ��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������ɽ�������Ǵ������ʣ���������������Ϊ¯����<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����������Ҷ���Ľ���ʦ�����ؾ��������������ĸŮ�ӻ�ʦ�ţ�������ȥѰ��ѪԵ����&mdash;&mdash;����Ҷ����<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����˭��Ҷ���ĺ���豻Ҷ����⣬���������������룬��Ϊɢ�ޡ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '��������ͷ���棬Ů����װ��ͨ����̨���������ɽ��Ϊ��ʽ���ӣ���ʼ����֮;��<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�����ӱ�΢������С��ʿ����������ɽ�����Ļ������ʿ���������ʱ�⣬�����������������ˣ���������������£������õ������ѡ�ʦ�������ˣ������ᶨ��������·�ϡ�<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������������ڵÿ��ɻ���ȴ���֣�����仯������&hellip;&hellip;</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '998', '1', '2', '12072012562471840051298.jpg', '3', '46');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (61, '21', '21', '��Ч����ʿ���߸�ϰ�ߣ�20��������)', '�й����������', '9787500695356', '21', '25', '2012-07-25', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">������ÿһ�����������һ��&ldquo;�����ж�&rdquo;��飬��ѡ��ά��ѵ�γ��е�ʵ��ѵ��ϰ�⣬�԰������߼����&ldquo;�߸�ϰ��&rdquo;���������գ�ʹ&ldquo;�߸�ϰ��&rdquo;��Ϊ����ÿ�����Լ����ж�ָ��,��ֵ����18000Ԫ�Ŀ�ά�ֳ���ѵ�Ρ�</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '0', '120720125012766677177226.jpg', '3', '25');
insert into EBOOK_GOODS (GOODS_ID, TYPE1_ID, TYPE2_ID, GOODS_NAME, PRODUCER, SN_NUMBER, COST_PRICE, SALE_PRICE, PUB_DATE, CONTENT, ADD_DATE, GOODS_COUNT, BUY_COUNT, READ_COUNT, IMAGE_FILE, TUIJIAN, JIFEN)
values (63, '21', '22', '��������(�ٰ�)', '�������ճ�����', '9787540455125', '13', '17.6', '2012-05-14', '<p>' || chr(13) || '' || chr(10) || '' || chr(9) || '<span id="detail_all" style=""><span id="content">20����60�����&ldquo;��������&rdquo;��������������ѧ��Stanley Milgram�����������֤����ν����������ָ�����������е��˶�����ͨ���������ڵ����������κ���������ϵ������ͨ�׵�˵��&ldquo;����κ�һ��İ����֮����������˲��ᳬ��������Ҳ����˵��ֻҪ��Ը�⣬���ͨ������������ܹ���ʶ�����ϵ��κ�һ��İ���ˡ�&rdquo;<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '�������&ldquo;��������&rdquo;������Ȧ��ƾ�Ȧ��߶���ʿ���õĳɹ���������������þ�ѡ�ʱ�������������ȡ��Դ�����˺���������ǿ����������е��������ӡ� Ӣ�������¡��⡢�ϡ��ա��������󡢺����������������������������Ĵ����ǡ��������ǵ�160������ң�����ʼ��������ÿ���˵������С���ı�����ÿ�� �˵����ˣ��󵽸ı�������硣<br />' || chr(13) || '' || chr(10) || '' || chr(9) || '����ȫ��500ǿ��ҵ����80%����ҵ�Ĺ���㶼���ܹ���������������ѵ�����Ա�����������̵�ʱ��ḻ��Ч��Դ���ҵ���������Ǹ��ˡ�����Խ��Խ��ĸ�ĸ�ں���16����ͺ�������������רҵ�Σ��Ա��ں����ڽ������ǰ������ʶ��ɸѡ��ḻ�Լ��������⡣</span></span></p>' || chr(13) || '' || chr(10) || '', '2012-07-20', '999', '0', '1', '1207201253505338511642.jpg', '3', '18');
commit;
prompt 16 records loaded
prompt Loading EBOOK_ORDER...
insert into EBOOK_ORDER (ORDER_ID, SALE_DATE, USER_ID, STATUS, ADDRESS)
values ('201207202756200', '2012-07-20', '1', '4', '����   13596419152    �㽭ʡ  ������  �²���  �ǹ���');
insert into EBOOK_ORDER (ORDER_ID, SALE_DATE, USER_ID, STATUS, ADDRESS)
values ('201207205190657', '2012-07-20', '1', '4', 'sdf   13596419152    �Ϻ���   �Ϻ���   �Ϻ���   ������   fadgsadfsadf');
insert into EBOOK_ORDER (ORDER_ID, SALE_DATE, USER_ID, STATUS, ADDRESS)
values ('201207201559315', '2012-07-20', '1', '4', '����   13596419152    �㽭ʡ  ������  �²���  �ǹ���');
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
values (2, '��ѧ');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (1, 'С˵');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (4, '����');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (28, '�ٶ�');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (24, '���������');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (41, '����');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (21, '��־��ɹ�');
insert into EBOOK_TYPE1 (TYPE1_ID, TYPE1)
values (27, '��ͥ������');
commit;
prompt 8 records loaded
prompt Loading EBOOK_TYPE2...
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (24, '��������', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (21, '�ɹ�ѧ', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (22, 'Ϊ�˴���', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (25, '˼ά������', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (30, '������Ʒ������', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (34, '��̽/����', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (41, '��������', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (45, '��ѧ��', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (47, '��ѧ��', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (48, '����', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (53, '�׶�����', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (57, '������Ϣϵͳ', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (58, '�쵼ѧ', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (60, '���羭��', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (61, '�������', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (63, '��ͥ����', 27);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (64, '��ͥҽ��', 27);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (66, '��ͥ���', 27);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (27, '�ݽ���ڲ�', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (28, '��ѧ����', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (29, '��ѧʷ', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (31, '�й���ѧ', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (33, 'ɢ�����', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (35, 'ħ��/���/����', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (51, '7-10��', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (54, '��ͯ��ѧ', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (81, 'ddd', 41);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (38, '�ഺ', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (1, '����', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (2, '����', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (32, '�����ѧ', 2);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (36, '�ƻ�', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (39, '��ʷ', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (40, '�ƾ�����', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (42, '��������', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (44, '�ڽ�����', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (49, '0-2��', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (52, '11-14��', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (55, '����/�ٿ�', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (26, '�˼��뽻��', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (43, '��������', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (46, '������', 4);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (50, '3-6��', 28);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (4, '����', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (23, '�������', 21);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (37, '�ֲ�/���', 1);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (56, '����ѧ', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (59, '����ʷ', 24);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (62, '��ͥ��ϵ', 27);
insert into EBOOK_TYPE2 (TYPE2_ID, TYPE2, TYPE1_ID)
values (65, '��ͥ����', 27);
commit;
prompt 50 records loaded
prompt Loading EBOOK_USERS...
insert into EBOOK_USERS (USER_ID, PWD, USER_NAME, SEX, ADRESS, EMAIL, TEL, JIFEN, GRADE, ZC_DATE)
values ('3', '3', 'δ��', '��', 'δ��', '2@2.com', 'δ��', '0', '��ͨ��Ա', '2012-07-14');
insert into EBOOK_USERS (USER_ID, PWD, USER_NAME, SEX, ADRESS, EMAIL, TEL, JIFEN, GRADE, ZC_DATE)
values ('4', '4', 'δ��', '��', 'δ��', '4@4.com', 'δ��', '0', '��ͨ��Ա', '2012-07-15');
insert into EBOOK_USERS (USER_ID, PWD, USER_NAME, SEX, ADRESS, EMAIL, TEL, JIFEN, GRADE, ZC_DATE)
values ('1', '1', '����', '��', '�㽭ʡ  ������  �²���  �ǹ���', '1@11.com', '13596419152', '681', '��ͨ��Ա', '2012-07-14');
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
