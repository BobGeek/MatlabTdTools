%% Matlab ���׽ӿ�_20171213
% �����߽���ѧϰ����,ʹ�ù����е��µ��ʻ������������Ͷ�������ге���

%% ע��ӿ�
td = TdxTrader; 

%% �ʻ���Ϣ
td.apikey = 'PDOFDSJFDSF3';         % APIkey, Ĭ�� PDOFDSJFDSF3
td.AccountNo = '1001001001';        % ��½�ʻ�
td.TradeAccount = '1001001001';     % �����˻�(Ĭ��ͬ��½�˻�)
td.JyPassword = '123456';           % ��½����
td.TxPassword = '123456';           % ��������(Ĭ��ͬ��½����)
td.YybID = '0';                     % Ӫҵ��id Ĭ��Ϊ0
td.Version = '6.10';                % ���׳���汾
td.Ip = '180.153.18.180';           % ����ȯ��ip
td.Port = '7708';                   % ����ȯ�̶˿�
td.SHshareholder = 'A000000000';    % �Ϻ��ɶ����루�µ���Ҫ��
td.SZshareholder = '0000000000';    % ���ڹɶ����루�µ���Ҫ��

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
Holding = td.QueryData('Holding')


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

