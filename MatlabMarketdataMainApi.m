%% Matlab ����ӿ�_20171109

%% ע��ӿ�
td = TdxTrader;

%% �ʻ���Ϣ
td.apikey = 'PDOFDSJFDSF3';
td.AccountNo = '987654321';
td.JyPassword = '123456';
td.YybID = '0';
td.Version = '8.24';
td.Ip = '180.153.18.180'; % ����֤ȯ
td.Port = '7708';
td.SHshareholder = 'A683065888';
td.SZshareholder = '0217377888';

%% ��ȡ�г�������֤ȯ������
% SecurityCountSH_str = td.GetSecurityCount('SH');
% SecurityCountSH = str2num(SecurityCountSH_str{1});
% SecurityCountSZ_str = td.GetSecurityCount('SZ');
% SecurityCountSZ = str2num(SecurityCountSZ_str{1});

%% ��ȡ�г��ڴ�ĳ��λ�ÿ�ʼ��1000֧��Ʊ�Ĺ�Ʊ����
% td.GetSecurityList('SH',0,1000)
% td.GetSecurityList('SZ',0,1000)

%% ��ȡ�����Ϻ���Ʊ����
% td.GetStockList('SH')
% td.GetStockList('SZ')

%% ��ȡ֤ȯ��K������
% GetSecurityBarsʹ�÷���
% ��1����      td.GetSecurityBars('1min','SH','600000',Start,Count)
% ��5����      td.GetSecurityBars('5min','SH','600000',Start,Count)
% ��15����     td.GetSecurityBars('15min','SH','600000',Start,Count)
% ��30����     td.GetSecurityBars('30min','SH','600000',Start,Count)
% ��1Сʱ      td.GetSecurityBars('1hour','SH','600000',Start,Count)
% ������       td.GetSecurityBars('day','SH','600000',Start,Count)
% ������       td.GetSecurityBars('week','SH','600000',Start,Count)
% ������       td.GetSecurityBars('month','SH','600000',Start,Count)
Start = 0;      % ��ʼ��bar���(������0)
Count = 100;    % ��ʼ��bar���(���800)
td.GetSecurityBars('day','SH','600000',Start,Count)

%% ��ȡָ����K������
% GetIndexBarsʹ�÷���
% ��1����      td.GetIndexBars('1min','SH','000300',Start,Count)
% ��5����      td.GetIndexBars('5min','SH','000300',Start,Count)
% ��15����     td.GetIndexBars('15min','SH','000300',Start,Count)
% ��30����     td.GetIndexBars('30min','SH','000300',Start,Count)
% ��1Сʱ      td.GetIndexBars('1hour','SH','000300',Start,Count)
% ������       td.GetIndexBars('day','SH','000300',Start,Count)
% ������       td.GetIndexBars('week','SH','000300',Start,Count)
% ������       td.GetIndexBars('month','SH','000300',Start,Count)
Start = 0;      % ��ʼ��bar���(������0)
Count = 100;    % ȡ����bar����(���2000)
td.GetIndexBars('day','SH','000300',Start,Count)

%% ��ȡ��ʱ����
% GetMinuteTimeDataʹ�÷���
% td.GetMinuteTimeData('Fund')
td.GetMinuteTimeData('SH','600000')

%% ��ȡ��ʷ��ʱ����
% GetMinuteTimeDataʹ�÷���
% td.GetMinuteTimeData('Fund')
td.GetHistoryMinuteTimeData('SH','600000','20171127')

%% ��ȡ��ʷ��ʱtick�ɽ�����
% GetTransactionDataʹ�÷���
start = 0;      % ��ʼ��tick���(����Ϊ0)
Count = 100;    % ȡ����tick����(���2000)
td.GetTransactionData('SH','600000',start,Count)

%% ��ȡ��ʷ��ʱtick�ɽ�����
% GetHistoryTransactionDataʹ�÷���
start = 0;          % ��ʼ��tick���(����Ϊ0)
Count = 100;        % ȡ����tick����(���2000)
Cdate = 20171129;   % ȡ������ʷ����ֵ
td.GetHistoryTransactionData('SH','600000',start,Count,Cdate)

%% ��ȡ��Ȩ��Ϣ��Ϣ
% GetXDXRInfoʹ�÷���
td.GetXDXRInfo('SZ','000001')

%% ��ȡ������Ϣ
% GetFinanceInfoʹ�÷���
td.GetFinanceInfo('SZ','000001')

%% ��ȡF10����
% GetCompanyInfoCategoryʹ�÷���
Category = td.GetCompanyInfoCategory('SZ','000001');
td.GetCompanyInfoContent('SZ','000001',Category{2,2},Category{2,3},Category{2,4});

%% ��ȡ�嵵����
% GetSecurityQuoteʹ�÷���
td.GetSecurityQuote('SH' , 600000)

%% ��ȡF10���ϵķ���
% GetCompanyInfoCategoryʹ�÷���
f10 = td.GetCompanyInfoCategory('SH' , '600000')

%% ��ȡF10���ϵ�ĳһ���������
% GetCompanyInfoContentʹ�÷���
filename = f10{3,2};	% �ϸ�����ȡ�����ļ���
start = f10{3,3};       % �ļ���ʼλ��
count = f10{3,4};        % �ı�����
td.GetCompanyInfoContent('SH' , '600000' , filename , start , count)
