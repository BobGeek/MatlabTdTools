%% Matlab ���׽ӿ�_20171109

%% ע��ӿ�
td = TdxTrader;

%% �ʻ���Ϣ
td.apikey = 'PDOFDSJFDSF2';
td.AccountNo = '987654321';
td.JyPassword = '123456';
td.YybID = '0';
td.Version = '8.24';
td.Ip = '180.153.18.180'; % ����֤ȯ
td.Port = '7708';
td.Hostip = '124.207.133.232';
td.Hostprot = 37280;
td.SHshareholder = 'A683065888';
td.SZshareholder = '0217377888';

%% ��½�ʻ�
td.login

%% ��ѯ
% QueryDataʹ�÷���
% ���ʽ�       td.QueryData('Fund')
% ��ֲ�       td.QueryData('Holding')
% ��ί��       td.QueryData('Order')
% ��ɽ�       td.QueryData('Matching')
% �ɳ���       td.QueryData('Cancelable')
% ��ɶ�       td.QueryData('Accountholder')
% Holding = td.QueryData('Holding')


%% ʵʱ�嵵����
% Quote = td.GetQuote(600022)


%% �µ�����
% SendOrderʹ�÷���
% �������     td.SendOrder('Buy','LimitPrice',600022,2.22,100)
% ��������     td.SendOrder('Sell','LimitPrice',600022,2.22,100)
% td.SendOrder('Buy','LimitPrice',600022,2.00,100)  % �����޼�ί��600022,�۸�2.22,����100��

%% ��������
% CancelOrderʹ�÷���
% ��������     td.CancelOrder('SH',1234)
% td.CancelOrder('SH',3287)

%% ע��
% Logoffʹ�÷���
% ��������     td.Logoff
% td.Logoff

