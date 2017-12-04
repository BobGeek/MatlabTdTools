%% Matlab 交易接口_20171109

%% 注册接口
td = TdxTrader;

%% 帐户信息
td.apikey = 'PDOFDSJFDSF2';
td.AccountNo = '987654321';
td.JyPassword = '123456';
td.YybID = '0';
td.Version = '8.24';
td.Ip = '180.153.18.180'; % 中信证券
td.Port = '7708';
td.Hostip = '124.207.133.232';
td.Hostprot = 37280;
td.SHshareholder = 'A683065888';
td.SZshareholder = '0217377888';

%% 登陆帐户
td.login

%% 查询
% QueryData使用方法
% 查资金       td.QueryData('Fund')
% 查持仓       td.QueryData('Holding')
% 查委托       td.QueryData('Order')
% 查成交       td.QueryData('Matching')
% 可撤单       td.QueryData('Cancelable')
% 查股东       td.QueryData('Accountholder')
% Holding = td.QueryData('Holding')


%% 实时五档行情
% Quote = td.GetQuote(600022)


%% 下单买入
% SendOrder使用方法
% 买入操作     td.SendOrder('Buy','LimitPrice',600022,2.22,100)
% 卖出操作     td.SendOrder('Sell','LimitPrice',600022,2.22,100)
% td.SendOrder('Buy','LimitPrice',600022,2.00,100)  % 买入限价委托600022,价格2.22,数量100股

%% 撤单操作
% CancelOrder使用方法
% 撤单操作     td.CancelOrder('SH',1234)
% td.CancelOrder('SH',3287)

%% 注销
% Logoff使用方法
% 撤单操作     td.Logoff
% td.Logoff

