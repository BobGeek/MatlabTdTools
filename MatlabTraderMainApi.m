%% Matlab 交易接口_20171213
% 本工具仅供学习交流,使用过程中导致的帐户亏损等问题由投资者自行承担！

%% 注册接口
td = TdxTrader; 

%% 帐户信息
td.apikey = 'PDOFDSJFDSF3';         % APIkey, 默认 PDOFDSJFDSF3
td.AccountNo = '1001001001';        % 登陆帐户
td.TradeAccount = '1001001001';     % 交易账户(默认同登陆账户)
td.JyPassword = '123456';           % 登陆密码
td.TxPassword = '123456';           % 交易密码(默认同登陆密码)
td.YybID = '0';                     % 营业部id 默认为0
td.Version = '6.10';                % 交易程序版本
td.Ip = '180.153.18.180';           % 交易券商ip
td.Port = '7708';                   % 交易券商端口
td.SHshareholder = 'A000000000';    % 上海股东代码（下单需要）
td.SZshareholder = '0000000000';    % 深圳股东代码（下单需要）

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
Holding = td.QueryData('Holding')


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

