%% Matlab 行情接口_20171109

%% 注册接口
td = TdxTrader;

%% 帐户信息
td.apikey = 'PDOFDSJFDSF3';
td.AccountNo = '987654321';
td.JyPassword = '123456';
td.YybID = '0';
td.Version = '8.24';
td.Ip = '180.153.18.180'; % 中信证券
td.Port = '7708';
td.SHshareholder = 'A683065888';
td.SZshareholder = '0217377888';

%% 获取市场内所有证券的数量
% SecurityCountSH_str = td.GetSecurityCount('SH');
% SecurityCountSH = str2num(SecurityCountSH_str{1});
% SecurityCountSZ_str = td.GetSecurityCount('SZ');
% SecurityCountSZ = str2num(SecurityCountSZ_str{1});

%% 获取市场内从某个位置开始的1000支股票的股票代码
% td.GetSecurityList('SH',0,1000)
% td.GetSecurityList('SZ',0,1000)

%% 获取所有上海股票代码
% td.GetStockList('SH')
% td.GetStockList('SZ')

%% 获取证券的K线数据
% GetSecurityBars使用方法
% 查1分钟      td.GetSecurityBars('1min','SH','600000',Start,Count)
% 查5分钟      td.GetSecurityBars('5min','SH','600000',Start,Count)
% 查15分钟     td.GetSecurityBars('15min','SH','600000',Start,Count)
% 查30分钟     td.GetSecurityBars('30min','SH','600000',Start,Count)
% 查1小时      td.GetSecurityBars('1hour','SH','600000',Start,Count)
% 查日线       td.GetSecurityBars('day','SH','600000',Start,Count)
% 查周线       td.GetSecurityBars('week','SH','600000',Start,Count)
% 查月线       td.GetSecurityBars('month','SH','600000',Start,Count)
Start = 0;      % 开始的bar编号(当天是0)
Count = 100;    % 开始的bar编号(最大800)
td.GetSecurityBars('day','SH','600000',Start,Count)

%% 获取指数的K线数据
% GetIndexBars使用方法
% 查1分钟      td.GetIndexBars('1min','SH','000300',Start,Count)
% 查5分钟      td.GetIndexBars('5min','SH','000300',Start,Count)
% 查15分钟     td.GetIndexBars('15min','SH','000300',Start,Count)
% 查30分钟     td.GetIndexBars('30min','SH','000300',Start,Count)
% 查1小时      td.GetIndexBars('1hour','SH','000300',Start,Count)
% 查日线       td.GetIndexBars('day','SH','000300',Start,Count)
% 查周线       td.GetIndexBars('week','SH','000300',Start,Count)
% 查月线       td.GetIndexBars('month','SH','000300',Start,Count)
Start = 0;      % 开始的bar编号(当天是0)
Count = 100;    % 取出的bar数量(最大2000)
td.GetIndexBars('day','SH','000300',Start,Count)

%% 获取分时数据
% GetMinuteTimeData使用方法
% td.GetMinuteTimeData('Fund')
td.GetMinuteTimeData('SH','600000')

%% 获取历史分时数据
% GetMinuteTimeData使用方法
% td.GetMinuteTimeData('Fund')
td.GetHistoryMinuteTimeData('SH','600000','20171127')

%% 获取历史分时tick成交数据
% GetTransactionData使用方法
start = 0;      % 开始的tick编号(最新为0)
Count = 100;    % 取出的tick数量(最大2000)
td.GetTransactionData('SH','600000',start,Count)

%% 获取历史分时tick成交数据
% GetHistoryTransactionData使用方法
start = 0;          % 开始的tick编号(最新为0)
Count = 100;        % 取出的tick数量(最大2000)
Cdate = 20171129;   % 取出的历史日期值
td.GetHistoryTransactionData('SH','600000',start,Count,Cdate)

%% 获取除权除息信息
% GetXDXRInfo使用方法
td.GetXDXRInfo('SZ','000001')

%% 获取财务信息
% GetFinanceInfo使用方法
td.GetFinanceInfo('SZ','000001')

%% 获取F10资料
% GetCompanyInfoCategory使用方法
Category = td.GetCompanyInfoCategory('SZ','000001');
td.GetCompanyInfoContent('SZ','000001',Category{2,2},Category{2,3},Category{2,4});

%% 获取五档报价
% GetSecurityQuote使用方法
td.GetSecurityQuote('SH' , 600000)

%% 获取F10资料的分类
% GetCompanyInfoCategory使用方法
f10 = td.GetCompanyInfoCategory('SH' , '600000')

%% 获取F10资料的某一分类的内容
% GetCompanyInfoContent使用方法
filename = f10{3,2};	% 上个步骤取到的文件名
start = f10{3,3};       % 文件开始位置
count = f10{3,4};        % 文本长度
td.GetCompanyInfoContent('SH' , '600000' , filename , start , count)
