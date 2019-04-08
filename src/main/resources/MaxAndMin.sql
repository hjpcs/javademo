select '所属地区' as name, cast(max(residence) as string) as max, cast(min(residence) as string) as min from acct_wt_user_client_info union
select '户籍地' as name, cast(max(domicile) as string) as max, cast(min(domicile) as string) as min from acct_wt_user_client_info union
select '股票佣金贡献' as name, cast(max(stock_commission_offer) as string) as max, cast(min(stock_commission_offer) as string) as min from acct_wt_user_day_commission_offer union
select '股票佣金贡献（近一月）' as name, cast(max(total_stock_commission_offer) as string) as max, cast(min(total_stock_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=1 union
select '股票佣金贡献（近三月）' as name, cast(max(total_stock_commission_offer) as string) as max, cast(min(total_stock_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=2 union
select '股票佣金贡献（近半年）' as name, cast(max(total_stock_commission_offer) as string) as max, cast(min(total_stock_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=3 union
select '股票佣金贡献（近一年）' as name, cast(max(total_stock_commission_offer) as string) as max, cast(min(total_stock_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=4 union
select '场内基金市值' as name, cast(max(of_market_value) as string) as max, cast(min(of_market_value) as string) as min from acct_wt_user_of_market_value union
select '日均场内基金市值（近一月）' as name, cast(max(avg_of_market_value) as string) as max, cast(min(avg_of_market_value) as string) as min from acct_wt_user_avg_of_market_value where interval_type=1 union
select '日均场内基金市值（近三月）' as name, cast(max(avg_of_market_value) as string) as max, cast(min(avg_of_market_value) as string) as min from acct_wt_user_avg_of_market_value where interval_type=2 union
select '日均场内基金市值（近半年）' as name, cast(max(avg_of_market_value) as string) as max, cast(min(avg_of_market_value) as string) as min from acct_wt_user_avg_of_market_value where interval_type=3 union
select '日均场内基金市值（近一年）' as name, cast(max(avg_of_market_value) as string) as max, cast(min(avg_of_market_value) as string) as min from acct_wt_user_avg_of_market_value where interval_type=4 union
select '场内基金佣金贡献' as name, cast(max(of_commission_offer) as string) as max, cast(min(of_commission_offer) as string) as min from acct_wt_user_day_commission_offer union
select '场内基金佣金贡献（近一月）' as name, cast(max(total_of_commission_offer) as string) as max, cast(min(total_of_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=1 union
select '场内基金佣金贡献（近三月）' as name, cast(max(total_of_commission_offer) as string) as max, cast(min(total_of_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=2 union
select '场内基金佣金贡献（近半年）' as name, cast(max(total_of_commission_offer) as string) as max, cast(min(total_of_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=3 union
select '场内基金佣金贡献（近一年）' as name, cast(max(total_of_commission_offer) as string) as max, cast(min(total_of_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=4 union
select '债券佣金贡献' as name, cast(max(bond_commission_offer) as string) as max, cast(min(bond_commission_offer) as string) as min from acct_wt_user_day_commission_offer union
select '债券佣金贡献（近一月）' as name, cast(max(total_bond_commission_offer) as string) as max, cast(min(total_bond_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=1 union
select '债券佣金贡献（近三月）' as name, cast(max(total_bond_commission_offer) as string) as max, cast(min(total_bond_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=2 union
select '债券佣金贡献（近半年）' as name, cast(max(total_bond_commission_offer) as string) as max, cast(min(total_bond_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=3 union
select '债券佣金贡献（近一年）' as name, cast(max(total_bond_commission_offer) as string) as max, cast(min(total_bond_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=4 union
select '其他市值' as name, cast(max(other_market_value) as string) as max, cast(min(other_market_value) as string) as min from acct_wt_user_other_market_value union
select '日均其他市值（近一月）' as name, cast(max(avg_market_value) as string) as max, cast(min(avg_market_value) as string) as min from acct_wt_user_avg_other_market_value where interval_type=1 union
select '日均其他市值（近三月）' as name, cast(max(avg_market_value) as string) as max, cast(min(avg_market_value) as string) as min from acct_wt_user_avg_other_market_value where interval_type=2 union
select '日均其他市值（近半年）' as name, cast(max(avg_market_value) as string) as max, cast(min(avg_market_value) as string) as min from acct_wt_user_avg_other_market_value where interval_type=3 union
select '日均其他市值（近一年）' as name, cast(max(avg_market_value) as string) as max, cast(min(avg_market_value) as string) as min from acct_wt_user_avg_other_market_value where interval_type=4 union
select '其他交易金额' as name, cast(max(other_trade_balance) as string) as max, cast(min(other_trade_balance) as string) as min from acct_wt_user_other_trade_balance union
select '日均其他交易金额（近一月）' as name, cast(max(avg_trade_balance) as string) as max, cast(min(avg_trade_balance) as string) as min from acct_wt_user_avg_other_trade_balance where interval_type=1 union
select '日均其他交易金额（近三月）' as name, cast(max(avg_trade_balance) as string) as max, cast(min(avg_trade_balance) as string) as min from acct_wt_user_avg_other_trade_balance where interval_type=2 union
select '日均其他交易金额（近半年）' as name, cast(max(avg_trade_balance) as string) as max, cast(min(avg_trade_balance) as string) as min from acct_wt_user_avg_other_trade_balance where interval_type=3 union
select '日均其他交易金额（近一年）' as name, cast(max(avg_trade_balance) as string) as max, cast(min(avg_trade_balance) as string) as min from acct_wt_user_avg_other_trade_balance where interval_type=4 union
select '其他交易次数（近一月）' as name, cast(max(total_trade_times) as string) as max, cast(min(total_trade_times) as string) as min from acct_wt_user_total_other_trade_times where interval_type=1 union
select '其他交易次数（近三月）' as name, cast(max(total_trade_times) as string) as max, cast(min(total_trade_times) as string) as min from acct_wt_user_total_other_trade_times where interval_type=2 union
select '其他交易次数（近半年）' as name, cast(max(total_trade_times) as string) as max, cast(min(total_trade_times) as string) as min from acct_wt_user_total_other_trade_times where interval_type=3 union
select '其他交易次数（近一年）' as name, cast(max(total_trade_times) as string) as max, cast(min(total_trade_times) as string) as min from acct_wt_user_total_other_trade_times where interval_type=4 union
select '其他佣金贡献' as name, cast(max(other_commission_offer) as string) as max, cast(min(other_commission_offer) as string) as min from acct_wt_user_day_commission_offer union
select '其他佣金贡献（近一月）' as name, cast(max(total_other_commission_offer) as string) as max, cast(min(total_other_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=1 union
select '其他佣金贡献（近三月）' as name, cast(max(total_other_commission_offer) as string) as max, cast(min(total_other_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=2 union
select '其他佣金贡献（近半年）' as name, cast(max(total_other_commission_offer) as string) as max, cast(min(total_other_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=3 union
select '其他佣金贡献（近一年）' as name, cast(max(total_other_commission_offer) as string) as max, cast(min(total_other_commission_offer) as string) as min from acct_wt_user_total_commission_offer where interval_type=4 union
select '场外开基总市值' as name, cast(max(otc_open_market_value) as string) as max, cast(min(otc_open_market_value) as string) as min from acct_wt_user_outside_prod_market_value union
select '日均场外开基总市值（近一月）' as name, cast(max(avg_otc_open_market_value) as string) as max, cast(min(avg_otc_open_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=1 union
select '日均场外开基总市值（近三月）' as name, cast(max(avg_otc_open_market_value) as string) as max, cast(min(avg_otc_open_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=2 union
select '日均场外开基总市值（近半年）' as name, cast(max(avg_otc_open_market_value) as string) as max, cast(min(avg_otc_open_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=3 union
select '日均场外开基总市值（近一年）' as name, cast(max(avg_otc_open_market_value) as string) as max, cast(min(avg_otc_open_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=4 union
select '场外开基认申购金额' as name, cast(max(otc_open_sub_app_balance) as string) as max, cast(min(otc_open_sub_app_balance) as string) as min from acct_wt_user_outside_prod_redeem_balance union
select '场外开基认申购金额（近一月）' as name, cast(max(total_otc_open_sub_app_balance) as string) as max, cast(min(total_otc_open_sub_app_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=1 union
select '场外开基认申购金额（近三月）' as name, cast(max(total_otc_open_sub_app_balance) as string) as max, cast(min(total_otc_open_sub_app_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=2 union
select '场外开基认申购金额（近半年）' as name, cast(max(total_otc_open_sub_app_balance) as string) as max, cast(min(total_otc_open_sub_app_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=3 union
select '场外开基认申购金额（近一年）' as name, cast(max(total_otc_open_sub_app_balance) as string) as max, cast(min(total_otc_open_sub_app_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=4 union
select '场外开基赎回金额' as name, cast(max(otc_open_redeem_balance) as string) as max, cast(min(otc_open_redeem_balance) as string) as min from acct_wt_user_outside_prod_redeem_balance union
select '场外开基赎回金额（近一月）' as name, cast(max(total_otc_open_redeem_balance) as string) as max, cast(min(total_otc_open_redeem_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=1 union
select '场外开基赎回金额（近三月）' as name, cast(max(total_otc_open_redeem_balance) as string) as max, cast(min(total_otc_open_redeem_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=2 union
select '场外开基赎回金额（近半年）' as name, cast(max(total_otc_open_redeem_balance) as string) as max, cast(min(total_otc_open_redeem_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=3 union
select '场外开基赎回金额（近一年）' as name, cast(max(total_otc_open_redeem_balance) as string) as max, cast(min(total_otc_open_redeem_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=4 union
select '炎黄汇利市值' as name, cast(max(c90005_market_value) as string) as max, cast(min(c90005_market_value) as string) as min from acct_wt_user_outside_prod_market_value union
select '日均炎黄汇利市值（近一月）' as name, cast(max(avg_c90005_market_value) as string) as max, cast(min(avg_c90005_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=1 union
select '日均炎黄汇利市值（近三月）' as name, cast(max(avg_c90006_market_value) as string) as max, cast(min(avg_c90006_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=2 union
select '日均炎黄汇利市值（近半年）' as name, cast(max(avg_c90007_market_value) as string) as max, cast(min(avg_c90007_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=3 union
select '日均炎黄汇利市值（近一年）' as name, cast(max(avg_c90008_market_value) as string) as max, cast(min(avg_c90008_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=4 union
select '资管产品市值' as name, cast(max(assetmg_market_value) as string) as max, cast(min(assetmg_market_value) as string) as min from acct_wt_user_outside_prod_market_value union
select '日均资管产品市值（近一月）' as name, cast(max(avg_assetmg_market_value) as string) as max, cast(min(avg_assetmg_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=1 union
select '日均资管产品市值（近三月）' as name, cast(max(avg_assetmg_market_value) as string) as max, cast(min(avg_assetmg_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=2 union
select '日均资管产品市值（近半年）' as name, cast(max(avg_assetmg_market_value) as string) as max, cast(min(avg_assetmg_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=3 union
select '日均资管产品市值（近一年）' as name, cast(max(avg_assetmg_market_value) as string) as max, cast(min(avg_assetmg_market_value) as string) as min from acct_wt_user_avg_outside_prod_market_value where interval_type=4 union
select '资管产品认申购金额' as name, cast(max(assetmg_sub_app_balance) as string) as max, cast(min(assetmg_sub_app_balance) as string) as min from acct_wt_user_outside_prod_redeem_balance union
select '资管产品认申购金额（近一月）' as name, cast(max(total_assetmg_sub_app_balance) as string) as max, cast(min(total_assetmg_sub_app_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=1 union
select '资管产品认申购金额（近三月）' as name, cast(max(total_assetmg_sub_app_balance) as string) as max, cast(min(total_assetmg_sub_app_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=2 union
select '资管产品认申购金额（近半年）' as name, cast(max(total_assetmg_sub_app_balance) as string) as max, cast(min(total_assetmg_sub_app_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=3 union
select '资管产品认申购金额（近一年）' as name, cast(max(total_assetmg_sub_app_balance) as string) as max, cast(min(total_assetmg_sub_app_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=4 union
select '资管产品赎回金额' as name, cast(max(assetmg_redeem_balance) as string) as max, cast(min(assetmg_redeem_balance) as string) as min from acct_wt_user_outside_prod_redeem_balance union
select '资管产品赎回金额（近一月）' as name, cast(max(total_assetmg_redeem_balance) as string) as max, cast(min(total_assetmg_redeem_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=1 union
select '资管产品赎回金额（近三月）' as name, cast(max(total_assetmg_redeem_balance) as string) as max, cast(min(total_assetmg_redeem_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=2 union
select '资管产品赎回金额（近半年）' as name, cast(max(total_assetmg_redeem_balance) as string) as max, cast(min(total_assetmg_redeem_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=3 union
select '资管产品赎回金额（近一年）' as name, cast(max(total_assetmg_redeem_balance) as string) as max, cast(min(total_assetmg_redeem_balance) as string) as min from acct_wt_user_outside_prod_total_redeem_balance where interval_type=4 union
select '信用账户佣金贡献' as name, cast(max(commission_offer) as string) as max, cast(min(commission_offer) as string) as min from acct_wt_user_daily_credit_sum_deliver union
select '信用账户佣金贡献（近一月）' as name, cast(max(commission_offer) as string) as max, cast(min(commission_offer) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=1 union
select '信用账户佣金贡献（近三月）' as name, cast(max(commission_offer) as string) as max, cast(min(commission_offer) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=2 union
select '信用账户佣金贡献（近半年）' as name, cast(max(commission_offer) as string) as max, cast(min(commission_offer) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=3 union
select '信用账户佣金贡献（近一年）' as name, cast(max(commission_offer) as string) as max, cast(min(commission_offer) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=4 union
select '信用账户利息贡献' as name, cast(max(interest_offer) as string) as max, cast(min(interest_offer) as string) as min from acct_wt_user_daily_credit_asset_details union
select '信用账户利息贡献（近一月）' as name, cast(max(interest_offer) as string) as max, cast(min(interest_offer) as string) as min from acct_wt_user_credit_asset_details where interval_type=1 union
select '信用账户利息贡献（近三月）' as name, cast(max(interest_offer) as string) as max, cast(min(interest_offer) as string) as min from acct_wt_user_credit_asset_details where interval_type=2 union
select '信用账户利息贡献（近半年）' as name, cast(max(interest_offer) as string) as max, cast(min(interest_offer) as string) as min from acct_wt_user_credit_asset_details where interval_type=3 union
select '信用账户利息贡献（近一年）' as name, cast(max(interest_offer) as string) as max, cast(min(interest_offer) as string) as min from acct_wt_user_credit_asset_details where interval_type=4 union
select '信用账户普通交易次数' as name, cast(max(credit_assure_trade_times) as string) as max, cast(min(credit_assure_trade_times) as string) as min from acct_wt_user_daily_credit_sum_deliver union
select '信用账户普通交易次数（近一月）' as name, cast(max(credit_assure_trade_times) as string) as max, cast(min(credit_assure_trade_times) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=1 union
select '信用账户普通交易次数（近三月）' as name, cast(max(credit_assure_trade_times) as string) as max, cast(min(credit_assure_trade_times) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=2 union
select '信用账户普通交易次数（近半年）' as name, cast(max(credit_assure_trade_times) as string) as max, cast(min(credit_assure_trade_times) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=3 union
select '信用账户普通交易次数（近一年）' as name, cast(max(credit_assure_trade_times) as string) as max, cast(min(credit_assure_trade_times) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=4 union
select '融资融券交易次数' as name, cast(max(credit_trade_times) as string) as max, cast(min(credit_trade_times) as string) as min from acct_wt_user_daily_credit_sum_deliver union
select '融资融券交易次数（近一月）' as name, cast(max(credit_trade_times) as string) as max, cast(min(credit_trade_times) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=1 union
select '融资融券交易次数（近三月）' as name, cast(max(credit_trade_times) as string) as max, cast(min(credit_trade_times) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=2 union
select '融资融券交易次数（近半年）' as name, cast(max(credit_trade_times) as string) as max, cast(min(credit_trade_times) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=3 union
select '融资融券交易次数（近一年）' as name, cast(max(credit_trade_times) as string) as max, cast(min(credit_trade_times) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=4 union
select '信用账户普通交易金额' as name, cast(max(credit_assure_trade_balance) as string) as max, cast(min(credit_assure_trade_balance) as string) as min from acct_wt_user_daily_credit_sum_deliver union
select '日均信用账户普通交易金额（近一月）' as name, cast(max(credit_avg_assure_trade_balance) as string) as max, cast(min(credit_avg_assure_trade_balance) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=1 union
select '日均信用账户普通交易金额（近三月）' as name, cast(max(credit_avg_assure_trade_balance) as string) as max, cast(min(credit_avg_assure_trade_balance) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=2 union
select '日均信用账户普通交易金额（近半年）' as name, cast(max(credit_avg_assure_trade_balance) as string) as max, cast(min(credit_avg_assure_trade_balance) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=3 union
select '日均信用账户普通交易金额（近一年）' as name, cast(max(credit_avg_assure_trade_balance) as string) as max, cast(min(credit_avg_assure_trade_balance) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=4 union
select '融资融券交易金额' as name, cast(max(credit_trade_balance) as string) as max, cast(min(credit_trade_balance) as string) as min from acct_wt_user_daily_credit_sum_deliver union
select '日均融资融券交易金额（近一月）' as name, cast(max(credit_avg_trade_balance) as string) as max, cast(min(credit_avg_trade_balance) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=1 union
select '日均融资融券交易金额（近三月）' as name, cast(max(credit_avg_trade_balance) as string) as max, cast(min(credit_avg_trade_balance) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=2 union
select '日均融资融券交易金额（近半年）' as name, cast(max(credit_avg_trade_balance) as string) as max, cast(min(credit_avg_trade_balance) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=3 union
select '日均融资融券交易金额（近一年）' as name, cast(max(credit_avg_trade_balance) as string) as max, cast(min(credit_avg_trade_balance) as string) as min from acct_wt_user_credit_sum_deliver where interval_type=4 union
select '触碰平仓线次数（近一月）' as name, cast(max(hit_flat_line_count) as string) as max, cast(min(hit_flat_line_count) as string) as min from acct_wt_user_credit_hit_flat_line_count where interval_type=1 union
select '触碰平仓线次数（近三月）' as name, cast(max(hit_flat_line_count) as string) as max, cast(min(hit_flat_line_count) as string) as min from acct_wt_user_credit_hit_flat_line_count where interval_type=2 union
select '触碰平仓线次数（近半年）' as name, cast(max(hit_flat_line_count) as string) as max, cast(min(hit_flat_line_count) as string) as min from acct_wt_user_credit_hit_flat_line_count where interval_type=3 union
select '触碰平仓线次数（近一年）' as name, cast(max(hit_flat_line_count) as string) as max, cast(min(hit_flat_line_count) as string) as min from acct_wt_user_credit_hit_flat_line_count where interval_type=4 union
select '期权佣金贡献' as name, cast(max(opt_commission_offer) as string) as max, cast(min(opt_commission_offer) as string) as min from acct_wt_user_opt_commission_offer union
select '期权佣金贡献（近一月）' as name, cast(max(total_opt_commission_offer) as string) as max, cast(min(total_opt_commission_offer) as string) as min from acct_wt_user_total_opt_commission_offer where interval_type=1 union
select '期权佣金贡献（近三月）' as name, cast(max(total_opt_commission_offer) as string) as max, cast(min(total_opt_commission_offer) as string) as min from acct_wt_user_total_opt_commission_offer where interval_type=2 union
select '期权佣金贡献（近半年）' as name, cast(max(total_opt_commission_offer) as string) as max, cast(min(total_opt_commission_offer) as string) as min from acct_wt_user_total_opt_commission_offer where interval_type=3 union
select '期权佣金贡献（近一年）' as name, cast(max(total_opt_commission_offer) as string) as max, cast(min(total_opt_commission_offer) as string) as min from acct_wt_user_total_opt_commission_offer where interval_type=4 union
select '日均资金余额（近一月）' as name, cast(max(avg_current_balance) as string) as max, cast(min(avg_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=1 union
select '日均资金余额（近三月）' as name, cast(max(avg_current_balance) as string) as max, cast(min(avg_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=2 union
select '日均资金余额（近半年）' as name, cast(max(avg_current_balance) as string) as max, cast(min(avg_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=3 union
select '日均资金余额（近一年）' as name, cast(max(avg_current_balance) as string) as max, cast(min(avg_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=4 union
select '持仓市值峰值（近一月）' as name, cast(max(max_current_balance) as string) as max, cast(min(max_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=1 union
select '持仓市值峰值（近三月）' as name, cast(max(max_current_balance) as string) as max, cast(min(max_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=2 union
select '持仓市值峰值（近半年）' as name, cast(max(max_current_balance) as string) as max, cast(min(max_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=3 union
select '持仓市值峰值（近一年）' as name, cast(max(max_current_balance) as string) as max, cast(min(max_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=4 union
select '持仓市值谷值（近一月）' as name, cast(max(min_current_balance) as string) as max, cast(min(min_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=1 union
select '持仓市值谷值（近三月）' as name, cast(max(min_current_balance) as string) as max, cast(min(min_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=2 union
select '持仓市值谷值（近半年）' as name, cast(max(min_current_balance) as string) as max, cast(min(min_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=3 union
select '持仓市值谷值（近一年）' as name, cast(max(min_current_balance) as string) as max, cast(min(min_current_balance) as string) as min from acct_wt_user_day_current_balance where interval_type=4 union
select '客户总资产' as name, cast(max(client_total_asset) as string) as max, cast(min(client_total_asset) as string) as min from acct_wt_user_client_total_asset union
select '日均客户总资产（近一月）' as name, cast(max(client_avg_total_asset) as string) as max, cast(min(client_avg_total_asset) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=1 union
select '日均客户总资产（近三月）' as name, cast(max(client_avg_total_asset) as string) as max, cast(min(client_avg_total_asset) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=2 union
select '日均客户总资产（近半年）' as name, cast(max(client_avg_total_asset) as string) as max, cast(min(client_avg_total_asset) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=3 union
select '日均客户总资产（近一年）' as name, cast(max(client_avg_total_asset) as string) as max, cast(min(client_avg_total_asset) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=4 union
select '客户佣金贡献' as name, cast(max(client_commission_offer) as string) as max, cast(min(client_commission_offer) as string) as min from acct_wt_user_client_commission_offer union
select '客户佣金贡献（近一月）' as name, cast(max(client_total_commission_offer) as string) as max, cast(min(client_total_commission_offer) as string) as min from acct_wt_user_client_total_commission_offer where interval_type=1 union
select '客户佣金贡献（近三月）' as name, cast(max(client_total_commission_offer) as string) as max, cast(min(client_total_commission_offer) as string) as min from acct_wt_user_client_total_commission_offer where interval_type=2 union
select '客户佣金贡献（近半年）' as name, cast(max(client_total_commission_offer) as string) as max, cast(min(client_total_commission_offer) as string) as min from acct_wt_user_client_total_commission_offer where interval_type=3 union
select '客户佣金贡献（近一年）' as name, cast(max(client_total_commission_offer) as string) as max, cast(min(client_total_commission_offer) as string) as min from acct_wt_user_client_total_commission_offer where interval_type=4 union
select '客户总持仓市值' as name, cast(max(client_market_value) as string) as max, cast(min(client_market_value) as string) as min from acct_wt_user_client_total_asset union
select '日均客户总持仓市值（近一月）' as name, cast(max(client_avg_market_value) as string) as max, cast(min(client_avg_market_value) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=1 union
select '日均客户总持仓市值（近三月）' as name, cast(max(client_avg_market_value) as string) as max, cast(min(client_avg_market_value) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=2 union
select '日均客户总持仓市值（近半年）' as name, cast(max(client_avg_market_value) as string) as max, cast(min(client_avg_market_value) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=3 union
select '日均客户总持仓市值（近一年）' as name, cast(max(client_avg_market_value) as string) as max, cast(min(client_avg_market_value) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=4 union
select '客户交易次数' as name, cast(max(client_trade_times) as string) as max, cast(min(client_trade_times) as string) as min from acct_wt_user_client_trade_times union
select '客户交易次数（近一月）' as name, cast(max(client_trade_times) as string) as max, cast(min(client_trade_times) as string) as min from acct_wt_user_client_total_trade_times where interval_type=1 union
select '客户交易次数（近三月）' as name, cast(max(client_trade_times) as string) as max, cast(min(client_trade_times) as string) as min from acct_wt_user_client_total_trade_times where interval_type=2 union
select '客户交易次数（近半年）' as name, cast(max(client_trade_times) as string) as max, cast(min(client_trade_times) as string) as min from acct_wt_user_client_total_trade_times where interval_type=3 union
select '客户交易次数（近一年）' as name, cast(max(client_trade_times) as string) as max, cast(min(client_trade_times) as string) as min from acct_wt_user_client_total_trade_times where interval_type=4 union
select '客户交易金额' as name, cast(max(client_trade_balance) as string) as max, cast(min(client_trade_balance) as string) as min from acct_wt_user_client_trade_times union
select '客户交易金额（近一月）' as name, cast(max(client_trade_balance) as string) as max, cast(min(client_trade_balance) as string) as min from acct_wt_user_client_total_trade_times where interval_type=1 union
select '客户交易金额（近三月）' as name, cast(max(client_trade_balance) as string) as max, cast(min(client_trade_balance) as string) as min from acct_wt_user_client_total_trade_times where interval_type=2 union
select '客户交易金额（近半年）' as name, cast(max(client_trade_balance) as string) as max, cast(min(client_trade_balance) as string) as min from acct_wt_user_client_total_trade_times where interval_type=3 union
select '客户交易金额（近一年）' as name, cast(max(client_trade_balance) as string) as max, cast(min(client_trade_balance) as string) as min from acct_wt_user_client_total_trade_times where interval_type=4 union
select '客户盈亏金额' as name, cast(max(client_income) as string) as max, cast(min(client_income) as string) as min from acct_wt_user_client_daily_income union
select '客户盈亏金额（近一月）' as name, cast(max(client_income) as string) as max, cast(min(client_income) as string) as min from acct_wt_user_client_income where interval_type=1 union
select '客户盈亏金额（近三月）' as name, cast(max(client_income) as string) as max, cast(min(client_income) as string) as min from acct_wt_user_client_income where interval_type=2 union
select '客户盈亏金额（近半年）' as name, cast(max(client_income) as string) as max, cast(min(client_income) as string) as min from acct_wt_user_client_income where interval_type=3 union
select '客户盈亏金额（近一年）' as name, cast(max(client_income) as string) as max, cast(min(client_income) as string) as min from acct_wt_user_client_income where interval_type=4 union
select '客户总收益率' as name, cast(max(client_day_income_ratio) as string) as max, cast(min(client_day_income_ratio) as string) as min from acct_wt_user_client_day_income_ratio union
select '客户总收益率（近一月）' as name, cast(max(client_income_ratio) as string) as max, cast(min(client_income_ratio) as string) as min from acct_wt_user_client_income_ratio where interval_type=1 union
select '客户总收益率（近三月）' as name, cast(max(client_income_ratio) as string) as max, cast(min(client_income_ratio) as string) as min from acct_wt_user_client_income_ratio where interval_type=2 union
select '客户总收益率（近半年）' as name, cast(max(client_income_ratio) as string) as max, cast(min(client_income_ratio) as string) as min from acct_wt_user_client_income_ratio where interval_type=3 union
select '客户总收益率（近一年）' as name, cast(max(client_income_ratio) as string) as max, cast(min(client_income_ratio) as string) as min from acct_wt_user_client_income_ratio where interval_type=4 union
select '客户仓位' as name, cast(max(client_position) as string) as max, cast(min(client_position) as string) as min from acct_wt_user_client_position union
select '客户仓位（近一月）' as name, cast(max(client_avg_position) as string) as max, cast(min(client_avg_position) as string) as min from acct_wt_user_client_avg_position where interval_type=1 union
select '客户仓位（近三月）' as name, cast(max(client_avg_position) as string) as max, cast(min(client_avg_position) as string) as min from acct_wt_user_client_avg_position where interval_type=2 union
select '客户仓位（近半年）' as name, cast(max(client_avg_position) as string) as max, cast(min(client_avg_position) as string) as min from acct_wt_user_client_avg_position where interval_type=3 union
select '客户仓位（近一年）' as name, cast(max(client_avg_position) as string) as max, cast(min(client_avg_position) as string) as min from acct_wt_user_client_avg_position where interval_type=4 union
select '投资品种偏好' as name, cast(max(preference_type) as string) as max, cast(min(preference_type) as string) as min from acct_wt_user_investment_preference union
select '净赚最多股票（近一周）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_profit_stock where interval_type=5 union
select '净赚最多股票（近一月）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_profit_stock where interval_type=1 union
select '净赚最多股票（近三月）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_profit_stock where interval_type=2 union
select '净赚最多股票（近半年）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_profit_stock where interval_type=3 union
select '净赚最多股票（近一年）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_profit_stock where interval_type=4 union
select '亏损最多股票（近一周）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_loss_stock where interval_type=5 union
select '亏损最多股票（近一月）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_loss_stock where interval_type=1 union
select '亏损最多股票（近三月）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_loss_stock where interval_type=2 union
select '亏损最多股票（近半年）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_loss_stock where interval_type=3 union
select '亏损最多股票（近一年）' as name, cast(max(stock_income_balance) as string) as max, cast(min(stock_income_balance) as string) as min from acct_wt_user_max_loss_stock where interval_type=4 union
select '普通账户收益率（近一月）' as name, cast(max(last_month_income_ratio) as string) as max, cast(min(last_month_income_ratio) as string) as min from acct_wt_user_last_month_income_ratio where interval_type=1 union
select '普通账户收益率（近三月）' as name, cast(max(last_quarter_income_ratio) as string) as max, cast(min(last_quarter_income_ratio) as string) as min from acct_wt_user_last_quarter_income_ratio where interval_type=2 union
select '普通账户收益率（近半年）' as name, cast(max(last_halfyear_income_ratio) as string) as max, cast(min(last_halfyear_income_ratio) as string) as min from acct_wt_user_last_halfyear_income_ratio where interval_type=3 union
select '普通账户收益率（近一年）' as name, cast(max(last_year_income_ratio) as string) as max, cast(min(last_year_income_ratio) as string) as min from acct_wt_user_last_year_income_ratio where interval_type=4 union
select '期权账户总资产' as name, cast(max(opt_total_asset) as string) as max, cast(min(opt_total_asset) as string) as min from acct_wt_user_opt_day_asset union
select '普通账户盈亏额（近一月）' as name, cast(max(total_income_balance) as string) as max, cast(min(total_income_balance) as string) as min from acct_wt_user_account_income_balance where interval_type=1 union
select '普通账户盈亏额（近三月）' as name, cast(max(total_income_balance) as string) as max, cast(min(total_income_balance) as string) as min from acct_wt_user_account_income_balance where interval_type=2 union
select '普通账户盈亏额（近半年）' as name, cast(max(total_income_balance) as string) as max, cast(min(total_income_balance) as string) as min from acct_wt_user_account_income_balance where interval_type=3 union
select '普通账户盈亏额（近一年）' as name, cast(max(total_income_balance) as string) as max, cast(min(total_income_balance) as string) as min from acct_wt_user_account_income_balance where interval_type=4 union
select '信用账户盈亏额（近一月）' as name, cast(max(credit_income) as string) as max, cast(min(credit_income) as string) as min from acct_wt_user_credit_income where interval_type=1 union
select '信用账户盈亏额（近三月）' as name, cast(max(credit_income) as string) as max, cast(min(credit_income) as string) as min from acct_wt_user_credit_income where interval_type=2 union
select '信用账户盈亏额（近半年）' as name, cast(max(credit_income) as string) as max, cast(min(credit_income) as string) as min from acct_wt_user_credit_income where interval_type=3 union
select '信用账户盈亏额（近一年）' as name, cast(max(credit_income) as string) as max, cast(min(credit_income) as string) as min from acct_wt_user_credit_income where interval_type=4 union
select '期权账户盈亏额（近一月）' as name, cast(max(opt_total_income) as string) as max, cast(min(opt_total_income) as string) as min from acct_wt_user_opt_total_income where interval_type=1 union
select '期权账户盈亏额（近三月）' as name, cast(max(opt_total_income) as string) as max, cast(min(opt_total_income) as string) as min from acct_wt_user_opt_total_income where interval_type=2 union
select '期权账户盈亏额（近半年）' as name, cast(max(opt_total_income) as string) as max, cast(min(opt_total_income) as string) as min from acct_wt_user_opt_total_income where interval_type=3 union
select '期权账户盈亏额（近一年）' as name, cast(max(opt_total_income) as string) as max, cast(min(opt_total_income) as string) as min from acct_wt_user_opt_total_income where interval_type=4 union
select '理财产品总市值' as name, cast(max(prod_market_value) as string) as max, cast(min(prod_market_value) as string) as min from acct_wt_user_prod_market_value union
select '客户转入金额（近一月）' as name, cast(max(in_balance) as string) as max, cast(min(in_balance) as string) as min from acct_wt_user_client_in_out_balance where interval_type=1 union
select '客户转入金额（近三月）' as name, cast(max(in_balance) as string) as max, cast(min(in_balance) as string) as min from acct_wt_user_client_in_out_balance where interval_type=2 union
select '客户转入金额（近半年）' as name, cast(max(in_balance) as string) as max, cast(min(in_balance) as string) as min from acct_wt_user_client_in_out_balance where interval_type=3 union
select '客户转入金额（近一年）' as name, cast(max(in_balance) as string) as max, cast(min(in_balance) as string) as min from acct_wt_user_client_in_out_balance where interval_type=4 union
select '客户转出金额（近一月）' as name, cast(max(out_balance) as string) as max, cast(min(out_balance) as string) as min from acct_wt_user_client_in_out_balance where interval_type=1 union
select '客户转出金额（近三月）' as name, cast(max(out_balance) as string) as max, cast(min(out_balance) as string) as min from acct_wt_user_client_in_out_balance where interval_type=2 union
select '客户转出金额（近半年）' as name, cast(max(out_balance) as string) as max, cast(min(out_balance) as string) as min from acct_wt_user_client_in_out_balance where interval_type=3 union
select '客户转出金额（近一年）' as name, cast(max(out_balance) as string) as max, cast(min(out_balance) as string) as min from acct_wt_user_client_in_out_balance where interval_type=4 union
select '客户资金余额' as name, cast(max(client_current_balance) as string) as max, cast(min(client_current_balance) as string) as min from acct_wt_user_client_total_asset union
select '客户日均资金余额（近一月）' as name, cast(max(client_avg_fund_asset) as string) as max, cast(min(client_avg_fund_asset) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=1 union
select '客户日均资金余额（近三月）' as name, cast(max(client_avg_fund_asset) as string) as max, cast(min(client_avg_fund_asset) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=2 union
select '客户日均资金余额（近半年）' as name, cast(max(client_avg_fund_asset) as string) as max, cast(min(client_avg_fund_asset) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=3 union
select '客户日均资金余额（近一年）' as name, cast(max(client_avg_fund_asset) as string) as max, cast(min(client_avg_fund_asset) as string) as min from acct_wt_user_client_avg_total_asset where interval_type=4 union
