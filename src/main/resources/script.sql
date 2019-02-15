select '客户姓名' as name, max(client_name) as max, min(client_name) as min from acct_wt_user_client_info union
select '出生日期' as name, max(client_birthday) as max, min(client_birthday) as min from acct_wt_user_client_info union
select '年龄' as name, max(client_age) as max, min(client_age) as min from acct_wt_user_client_info union
select '客户性别' as name, max(client_sex) as max, min(client_sex) as min from acct_wt_user_client_info union
select '客户年龄段' as name, max(age_group) as max, min(age_group) as min from acct_wt_user_client_info union
select '手机号码' as name, max(mobile_tel) as max, min(mobile_tel) as min from acct_wt_user_client_info union
select '客户印象' as name, max(impression) as max, min(impression) as min from acct_wt_user_account_impression union
select '业务权限' as name, max(business_access) as max, min(business_access) as min from acct_wt_user_businesspermission union
select '活跃程度' as name, max(activity_level) as max, min(activity_level) as min from acct_wt_user_activity union
select '开户时长' as name, max(open_time) as max, min(open_time) as min from acct_wt_user_client_info union
select '资产账号' as name, max(fund_account) as max, min(fund_account) as min from acct_wt_user_client_info union
select '开户日期' as name, max(open_date) as max, min(open_date) as min from acct_wt_user_client_info union
select '营业部' as name, max(branch_name) as max, min(branch_name) as min from acct_wt_user_client_info union
select '开户日期排名' as name, max(open_date_ranking) as max, min(open_date_ranking) as min from acct_wt_user_open_date_rank union
select '交易账户状态' as name, max(account_status) as max, min(account_status) as min from acct_wt_user_client_info union
select '个股持仓得分（最近一年）' as name, max(last_year_stock_position_score) as max, min(last_year_stock_position_score) as min from acct_wt_user_stock_score.stock_hold_score where interval_type=4 union
select '个股兴趣得分（最近一年）' as name, max(last_year_stock_interest_score) as max, min(last_year_stock_interest_score) as min from acct_wt_user_stock_score.stock_interest_score where interval_type=4 union
select '胜率等级' as name, max(winning_rate_level) as max, min(winning_rate_level) as min from acct_wt_user_stock_hold_cycle_winrate <- acct_wt_user_stock_hold_cycle_365,acct_wt_user_stock_hold_cycle_notend_365 union
select '场内基金持仓浮动盈亏额（资产账户）' as name, max(accumulated_hold_field_fund_incomebalance) as max, min(accumulated_hold_field_fund_incomebalance) as min from acct_wt_user_inside_fund_float_balance union
select '场内单一基金每日盈亏额' as name, max(day_single_field_fund_incomebalance) as max, min(day_single_field_fund_incomebalance) as min from acct_wt_user_tb_inside_day_fund_profit.day_profit union
select 'ETF基金收益率（最近一年）' as name, max(last_year_ETF_yield) as max, min(last_year_ETF_yield) as min from acct_wt_user_ETF_inco_rate where interval_type=4 union
select '可转债盈亏额（最近一年）' as name, max(last_year_convertible_bond_profit_and_loss) as max, min(last_year_convertible_bond_profit_and_loss) as min from acct_wt_user_convertible_bond where interval_type=4 union
select '国债逆回购盈亏额（最近一年）' as name, max(last_year_reverse_repos_profit_and_loss) as max, min(last_year_reverse_repos_profit_and_loss) as min from acct_wt_user_treasury_bond_income where interval_type=4 union
select '平均日收益率（近一月）' as name, max(last_month_day_income_ratio) as max, min(last_month_day_income_ratio) as min from acct_wt_user_avg_dayyield where interval_type=1 union
select '平均日收益率（近三月）' as name, max(last_three_month_day_income_ratio) as max, min(last_three_month_day_income_ratio) as min from acct_wt_user_avg_dayyield where interval_type=2 union
select '平均日收益率（近半年）' as name, max(last_six_month_day_income_ratio) as max, min(last_six_month_day_income_ratio) as min from acct_wt_user_avg_dayyield where interval_type=3 union
select '平均日收益率（近一年）' as name, max(last_year_day_income_ratio) as max, min(last_year_day_income_ratio) as min from acct_wt_user_avg_dayyield where interval_type=4 union
select '总盈亏（近三月）' as name, max(last_three_month_income_balance) as max, min(last_three_month_income_balance) as min from acct_wt_user_account_income_balance where interval_type=2 union
select '总盈亏（近半年）' as name, max(last_six_month_income_balance) as max, min(last_six_month_income_balance) as min from acct_wt_user_account_income_balance where interval_type=3 union
select '平均日盈亏（近一月）' as name, max(last_month_day_stock_profit) as max, min(last_month_day_stock_profit) as min from acct_wt_user_account_income_balance where interval_type=1 union
select '平均日盈亏（近三月）' as name, max(last_three_month_day_stock_profit) as max, min(last_three_month_day_stock_profit) as min from acct_wt_user_account_income_balance where interval_type=2 union
select '平均日盈亏（近半年）' as name, max(last_six_month_day_stock_profit) as max, min(last_six_month_day_stock_profit) as min from acct_wt_user_account_income_balance where interval_type=3 union
select '平均日盈亏（近一年）' as name, max(last_year_day_stock_profit) as max, min(last_year_day_stock_profit) as min from acct_wt_user_account_income_balance where interval_type=4 union
select '近一周收益最多的股票' as name, max(last_week_most_income_stock) as max, min(last_week_most_income_stock) as min from acct_wt_user_max_profit_stock union
select '近一周亏损最多的股票' as name, max(last_week_most_loss_stock) as max, min(last_week_most_loss_stock) as min from acct_wt_user_max_profit_stock union
select '股票投资周期偏好（最近一年）' as name, max(last_year_stock_invest_cycle_preference) as max, min(last_year_stock_invest_cycle_preference) as min from acct_wt_user_stock_hold_line_type where interval_type=4 union
select '兴趣行业板块（最近一年）' as name, max(last_year_taste_industry_plate) as max, min(last_year_taste_industry_plate) as min from acct_wt_user_interest_industry_block where interval_type=4 union
select '兴趣概念板块（最近一年）' as name, max(last_year_taste_concept_plate) as max, min(last_year_taste_concept_plate) as min from acct_wt_user_interest_concept_block where interval_type=4 union
select '股票市值偏好（近一月）' as name, max(last_month_stock_market_value_preference) as max, min(last_month_stock_market_value_preference) as min from acct_wt_user_float_share_preference where interval_type=1 union
select '股票价格偏好（近一月）' as name, max(last_month_stock_price_preference) as max, min(last_month_stock_price_preference) as min from acct_wt_user_price_preference_1 where interval_type=1 union
select '股票行业偏好（近一月）' as name, max(last_month_stock_industry_preference) as max, min(last_month_stock_industry_preference) as min from acct_wt_user_industry_preference where interval_type=1 union
select '偏好个股' as name, max(stock_preference) as max, min(stock_preference) as min from acct_wt_user_stock_preference union
select '股票短线偏好（最近一年）' as name, max(last_year_short_term_preference) as max, min(last_year_short_term_preference) as min from acct_wt_user_stock_hold_line_type where interval_type=4 union
select '股票中线偏好（最近一年）' as name, max(last_year_midline_preference) as max, min(last_year_midline_preference) as min from acct_wt_user_stock_hold_line_type where interval_type=4 union
select '股票长线偏好（最近一年）' as name, max(last_year_long_term_preference) as max, min(last_year_long_term_preference) as min from acct_wt_user_stock_hold_line_type where interval_type=4 union
select '股票投资周期偏好（近一月）' as name, max(last_month_client_style) as max, min(last_month_client_style) as min from acct_wt_user_stock_hold_line_type where interval_type=1 union
select '股票投资周期偏好（近三月）' as name, max(last_three_month_client_style) as max, min(last_three_month_client_style) as min from acct_wt_user_stock_hold_line_type where interval_type=2 union
select '股票投资周期偏好（近半年）' as name, max(last_six_month_client_style) as max, min(last_six_month_client_style) as min from acct_wt_user_stock_hold_line_type where interval_type=3 union
select '分散度得分（每月）' as name, max(month_dispersity_score) as max, min(month_dispersity_score) as min from acct_wt_user_position_score_month union
select '交易择时得分（最近一年）' as name, max(last_year_market_timing_account) as max, min(last_year_market_timing_account) as min from acct_wt_user_trans_timing_score_365 where interval_type=4 union
select '交易盈利得分（最近一年）' as name, max(last_year_profit_account) as max, min(last_year_profit_account) as min from acct_wt_user_trans_income_score_365 where interval_type=4 union
select '交易能力总分（最近一年）' as name, max(last_year_account) as max, min(last_year_account) as min from acct_wt_user_trans_ability_score_365 where interval_type=4 union
select '个股盈利得分（最近一年）' as name, max(last_year_stock_profit_account) as max, min(last_year_stock_profit_account) as min from acct_wt_user_stock_score.stock_income_score where interval_type=4 union
select '个股亏损得分（最近一年）' as name, max(last_year_stock_loss_account) as max, min(last_year_stock_loss_account) as min from acct_wt_user_stock_score.stock_loss_score where interval_type=4 union
select '抗风险能力（最近一月）' as name, max(last_month_risk_resistance) as max, min(last_month_risk_resistance) as min from acct_wt_user_antirisk_ability_1 where interval_type=1 union
select '抗风险能力（最近一年）' as name, max(last_year_risk_resistance) as max, min(last_year_risk_resistance) as min from acct_wt_user_antirisk_ability_4 where interval_type=4 union
select '夏普比率（最近一月）' as name, max(last_month_sharpe) as max, min(last_month_sharpe) as min from acct_wt_user_sharperatio where interval_type=1 union
select '夏普比率（最近一年）' as name, max(last_year_sharpe) as max, min(last_year_sharpe) as min from acct_wt_user_sharperatio where interval_type=4 union
select '交易稳定得分（近一年）' as name, max(last_year_stable_account) as max, min(last_year_stable_account) as min from acct_wt_user_stable_income_score_365 where interval_type=4 union
select '夏普比率（近三月）' as name, max(last_three_month_sharpe) as max, min(last_three_month_sharpe) as min from acct_wt_user_sharperatio where interval_type=2 union
select '夏普比率（近半年）' as name, max(last_six_month_sharpe) as max, min(last_six_month_sharpe) as min from acct_wt_user_sharperatio where interval_type=3 union
select '择时能力（近一月）' as name, max(last_month_CL_market_timing) as max, min(last_month_CL_market_timing) as min from acct_wt_user_stock_select_score_30 where interval_type=1 union
select '择时能力（近三月）' as name, max(last_three_month_CL_market_timing) as max, min(last_three_month_CL_market_timing) as min from acct_wt_user_stock_select_score_90 where interval_type=2 union
select '择时能力（近半年）' as name, max(last_six_month_CL_market_timing) as max, min(last_six_month_CL_market_timing) as min from acct_wt_user_stock_select_score_180 where interval_type=3 union
select '选股能力（近一月）' as name, max(last_month_CL_selectivity) as max, min(last_month_CL_selectivity) as min from acct_wt_user_stock_select_score_30 where interval_type=1 union
select '选股能力（近三月）' as name, max(last_three_month_CL_selectivity) as max, min(last_three_month_CL_selectivity) as min from acct_wt_user_stock_select_score_90 where interval_type=2 union
select '交易魄力得分（近一年）' as name, max(last_year_drive_account) as max, min(last_year_drive_account) as min from acct_wt_user_trans_boldness_score_365 where interval_type=4 union
select '交易纪律得分（近一年）' as name, max(last_year_discipline_account) as max, min(last_year_discipline_account) as min from acct_wt_user_trans_discipline_score_365 where interval_type=4 union
select '选股能力（近半年）' as name, max(last_six_month_CL_selectivity) as max, min(last_six_month_CL_selectivity) as min from acct_wt_user_stock_select_score_180 where interval_type=3 union
select '交易稳定得分（近一月）' as name, max(last_month_stable_account) as max, min(last_month_stable_account) as min from acct_wt_user_stable_income_score_30 where interval_type=1 union
select '交易稳定得分（近三月）' as name, max(last_three_month_stable_account) as max, min(last_three_month_stable_account) as min from acct_wt_user_stable_income_score_90 where interval_type=2 union
select '交易稳定得分（近半年）' as name, max(last_six_month_stable_account) as max, min(last_six_month_stable_account) as min from acct_wt_user_stable_income_score_180 where interval_type=3 union
select '交易魄力得分（近一月）' as name, max(last_month_drive_account) as max, min(last_month_drive_account) as min from acct_wt_user_trans_boldness_score_30 where interval_type=1 union
select '交易魄力得分（近三月）' as name, max(last_three_month_drive_account) as max, min(last_three_month_drive_account) as min from acct_wt_user_trans_boldness_score_90 where interval_type=2 union
select '交易魄力得分（近半年）' as name, max(last_six_month_drive_account) as max, min(last_six_month_drive_account) as min from acct_wt_user_trans_boldness_score_180 where interval_type=3 union
select '交易纪律得分（近一月）' as name, max(last_month_discipline_account) as max, min(last_month_discipline_account) as min from acct_wt_user_trans_discipline_score_30 where interval_type=1 union
select '交易纪律得分（近三月）' as name, max(last_three_month_discipline_account) as max, min(last_three_month_discipline_account) as min from acct_wt_user_trans_discipline_score_90 where interval_type=2 union
select '交易纪律得分（近半年）' as name, max(last_six_month_discipline_account) as max, min(last_six_month_discipline_account) as min from acct_wt_user_trans_discipline_score_180 where interval_type=3 union
select '擅长个股（最近一年）' as name, max(last_year_adept_stock) as max, min(last_year_adept_stock) as min from acct_wt_user_good_at_stock <- acct_wt_user_stock_hold_cycle_365, acct_wt_user_stock_hold_cycle_notend_365 where interval_type=4 union
select '亏损最多股票（近一月）' as name, max(last_month_lose_most) as max, min(last_month_lose_most) as min from acct_wt_user_max_loss_stock where interval_type=1 union
select '亏损最多股票（近三月）' as name, max(last_three_month_lose_most) as max, min(last_three_month_lose_most) as min from acct_wt_user_max_loss_stock where interval_type=2 union
select '亏损最多股票（近半年）' as name, max(last_six_month_lose_most) as max, min(last_six_month_lose_most) as min from acct_wt_user_max_loss_stock where interval_type=3 union
select '亏损最多股票（近一年）' as name, max(last_year_lose_most) as max, min(last_year_lose_most) as min from acct_wt_user_max_loss_stock where interval_type=4 union
select '场外基金累计盈亏额（资产账户）' as name, max(accumulated_court_fund_incomebalance) as max, min(accumulated_court_fund_incomebalance) as min from acct_wt_user_tb_outside_income_value union
select '场外基金持仓浮动盈亏额（资产账户）' as name, max(accumulated_hold_court_fund_incomebalance) as max, min(accumulated_hold_court_fund_incomebalance) as min from acct_wt_user_outside_fund_float_balance union
select '场外单一基金每日盈亏额' as name, max(day_otc_single_fund_profit_and_loss) as max, min(day_otc_single_fund_profit_and_loss) as min from acct_wt_user_tb_outside_day_fund_profit.day_profit union
select '场外基金盈亏额（最近一年）' as name, max(last_year_otc_fund_profit_and_loss) as max, min(last_year_otc_fund_profit_and_loss) as min from acct_wt_user_outside_fund_income where interval_type=4 union
select 'OTC产品盈亏额（最近一年）' as name, max(last_year_otc_product_profit_and_loss) as max, min(last_year_otc_product_profit_and_loss) as min from acct_wt_user_otc_income_balance where interval_type=4 union
select '最大盈利交易回合盈亏额（最近一年）' as name, max(last_year_max_profit_round_incomebalance) as max, min(last_year_max_profit_round_incomebalance) as min from acct_wt_user_max_profit_loss_round_incomebalance where interval_type=4 union
select '最大亏损（近一年）' as name, max(last_year_max_loss) as max, min(last_year_max_loss) as min from acct_wt_user_max_loss_profit where interval_type=4 union
select '最大回撤（近一年）' as name, max(last_year_Max_retracement) as max, min(last_year_Max_retracement) as min from acct_wt_user_drawdown_4 where interval_type=4 union
select '最大盈利(近一月)' as name, max(last_month_max_profit_round_incomebalance) as max, min(last_month_max_profit_round_incomebalance) as min from acct_wt_user_max_loss_profit where interval_type=1 union
select '最大盈利（近三月）' as name, max(last_three_month_max_profit_round_incomebalance) as max, min(last_three_month_max_profit_round_incomebalance) as min from acct_wt_user_max_loss_profit where interval_type=2 union
select '最大盈利(近半年)' as name, max(last_six_month_max_profit_round_incomebalance) as max, min(last_six_month_max_profit_round_incomebalance) as min from acct_wt_user_max_loss_profit where interval_type=3 union
select '最大亏损（近一月）' as name, max(last_month_max_loss) as max, min(last_month_max_loss) as min from acct_wt_user_max_loss_profit where interval_type=1 union
select '最大亏损（近三月）' as name, max(last_three_month_max_loss) as max, min(last_three_month_max_loss) as min from acct_wt_user_max_loss_profit where interval_type=2 union
select '最大亏损（近半年）' as name, max(last_six_month_max_loss) as max, min(last_six_month_max_loss) as min from acct_wt_user_max_loss_profit where interval_type=3 union
select '最大回撤（近一月）' as name, max(last_month_Max_retracement) as max, min(last_month_Max_retracement) as min from acct_wt_user_drawdown where interval_type=1 union
select '最大回撤（近三月）' as name, max(last_three_month_Max_retracement) as max, min(last_three_month_Max_retracement) as min from acct_wt_user_drawdown where interval_type=2 union
select '最大回撤（近半年）' as name, max(last_six_month_Max_retracement) as max, min(last_six_month_Max_retracement) as min from acct_wt_user_drawdown where interval_type=3 union
select '周转率' as name, max(turnover_rate) as max, min(turnover_rate) as min from acct_wt_user_business_balance_rate union
select '客户资产级别' as name, max(client_asset_level) as max, min(client_asset_level) as min from acct_wt_user_client_level union
select '每日总资产（资产账户）' as name, max(daily_total_asset) as max, min(daily_total_asset) as min from acct_wt_user_asset union
select '每日资金余额（资产账户）' as name, max(daily_fund_balance) as max, min(daily_fund_balance) as min from hs_clean_his_asset union
select '每日持仓总市值（资产账户）' as name, max(daily_current_amount_market_value) as max, min(daily_current_amount_market_value) as min from acct_wt_user_stock_market_total_value.total_market_value union
select '每日证券市值（资产账户）' as name, max(daily_security_market_value) as max, min(daily_security_market_value) as min from hs_clean_his_asset union
select '每日开基市值（资产账户）' as name, max(daily_opfund_market_value) as max, min(daily_opfund_market_value) as min from hs_clean_his_asset union
select '每日股票仓位（资产账户）' as name, max(daily_stock_position) as max, min(daily_stock_position) as min from acct_wt_user_day_position union
select '每日转入资金（资产账户）' as name, max(day_in_balance) as max, min(day_in_balance) as min from acct_wt_user_banktransfer union
select '每日转出资金（资产账户）' as name, max(day_out_balance) as max, min(day_out_balance) as min from acct_wt_user_banktransfer union
select '每日股票总市值（资产账户）' as name, max(daily_stock_market_value) as max, min(daily_stock_market_value) as min from acct_wt_user_stock_market_total_value union
select '每日基金总市值（资产账户）' as name, max(daily_fund_market_value) as max, min(daily_fund_market_value) as min from acct_wt_user_fund_market_value union
select '每日封闭式基金总市值（资产账户）' as name, max(daily_clofund_market_value) as max, min(daily_clofund_market_value) as min from acct_wt_user_stock_market_total_value.total_market_value union
select '每日ETF基金持仓市值（资产账户）' as name, max(day_etffund_market_value) as max, min(day_etffund_market_value) as min from acct_wt_user_ETF_market_value union
select '每日债券总市值（资产账户）' as name, max(daily_bonds_market_value) as max, min(daily_bonds_market_value) as min from acct_wt_user_daily_bond_total_market_value union
select '每日国债逆回购市值（资产账户）' as name, max(daily_treasury_reverse_repurchase) as max, min(daily_treasury_reverse_repurchase) as min from acct_wt_user_treasury_bond union
select '每日可转债市值（资产账户）' as name, max(daily_convertible_bonds_market_value) as max, min(daily_convertible_bonds_market_value) as min from acct_wt_user_daily_convertible_bond_market_value union
select '每日银行理财金额（资产账户）' as name, max(daily_bank_finance_balance) as max, min(daily_bank_finance_balance) as min from acct_wt_user_day_bank_market_value union
select '每日在途资金（资产账户）' as name, max(daily_fund_ongoing) as max, min(daily_fund_ongoing) as min from acct_wt_user_day_uncome_balance union
select '每日净流入（资产账户）' as name, max(daily_income) as max, min(daily_income) as min from acct_wt_user_banktransfer.occur_balance,business_flag=2041-acct_wt_user_banktransfer.occur_balance,business_flag=2042 union
select '持仓市盈率（资产账户）' as name, max(position_pe_ratio) as max, min(position_pe_ratio) as min from acct_wt_user_stock_earning_ratio union
select '月均持仓股票市值（资产账户）' as name, max(month_avg_stock_market_value) as max, min(month_avg_stock_market_value) as min from acct_wt_user_avg_month_market_value union
select '每日日初股票仓位（资产账户）' as name, max(Day_early_position) as max, min(Day_early_position) as min from acct_wt_user_day_position.position union
select '闲置资金最小资产占比（最近一月）' as name, max(last_month_free_balance_rate) as max, min(last_month_free_balance_rate) as min from acct_wt_user_min_asset_rate where interval_type=1 union
select '闲置资金最小金额数量级（最近一月）' as name, max(last_month_free_balance_level) as max, min(last_month_free_balance_level) as min from acct_wt_user_min_fund_asset_leavel where interval_type=1 union
select '每日单一股票持仓市值' as name, max(daily_single_stock_market_value) as max, min(daily_single_stock_market_value) as min from acct_wt_user_stock_market_value.market_value union
select '每日场内单一基金市值' as name, max(daily_single_Field_fund_market_value) as max, min(daily_single_Field_fund_market_value) as min from acct_wt_user_tb_inside_market_value.market_value union
select '平均股票仓位' as name, max(avg_stock_position) as max, min(avg_stock_position) as min from acct_wt_user_avg_position union
select '每日场外基金总市值（资产账户）' as name, max(daily_otcfund_market_value) as max, min(daily_otcfund_market_value) as min from acct_wt_user_fund_day_income_balance union
select '每日理财产品总市值（资产账户）' as name, max(daily_financial_product_market_value) as max, min(daily_financial_product_market_value) as min from acct_wt_user_prod_total_market_value union
select '每日现金类产品总市值（资产账户）' as name, max(daily_cash_product_market_value) as max, min(daily_cash_product_market_value) as min from acct_wt_uset_fund_prod_total_market_value union
select '每日收益凭证金额（资产账户）' as name, max(daily_income_voucher_balance) as max, min(daily_income_voucher_balance) as min from acct_wt_user_revenue_voucher union
select '每日场外单一基金市值' as name, max(daily_single_otcfund_market_value) as max, min(daily_single_otcfund_market_value) as min from acct_wt_user_tb_outside_market_value.market_value union
select '资金周转率（最近一年）' as name, max(lastyear_balance_turnover_rate) as max, min(lastyear_balance_turnover_rate) as min from acct_wt_user_business_balance_rate where interval_type=4 union
select '近一月转入金额' as name, max(last_month_in_balance) as max, min(last_month_in_balance) as min from acct_wt_user_money_in_out where interval_type=1 union
select '近一月转出金额' as name, max(last_month_out_balance) as max, min(last_month_out_balance) as min from acct_wt_user_money_in_out where interval_type=1 union
select '历史最高仓位（近一月）' as name, max(last_month_highest_position) as max, min(last_month_highest_position) as min from acct_wt_user_highest_lowest_position where interval_type=1 union
select '历史最高仓位（近三月）' as name, max(last_three_month_highest_position) as max, min(last_three_month_highest_position) as min from acct_wt_user_highest_lowest_position where interval_type=2 union
select '历史最高仓位（近半年）' as name, max(last_six_month_highest_position) as max, min(last_six_month_highest_position) as min from acct_wt_user_highest_lowest_position where interval_type=3 union
select '历史最高仓位（近一年）' as name, max(last_year_highest_position) as max, min(last_year_highest_position) as min from acct_wt_user_highest_lowest_position where interval_type=4 union
select '历史最低仓位（近一月）' as name, max(last_month_lowest_position) as max, min(last_month_lowest_position) as min from acct_wt_user_highest_lowest_position where interval_type=1 union
select '历史最低仓位（近三月）' as name, max(last_three_month_lowest_position) as max, min(last_three_month_lowest_position) as min from acct_wt_user_highest_lowest_position where interval_type=2 union
select '历史最低仓位（近半年）' as name, max(last_six_month_lowest_position) as max, min(last_six_month_lowest_position) as min from acct_wt_user_highest_lowest_position where interval_type=3 union
select '历史最低仓位（近一年）' as name, max(last_year_lowest_position) as max, min(last_year_lowest_position) as min from acct_wt_user_highest_lowest_position where interval_type=4 union
select '平均仓位（近一月）' as name, max(last_month_avg_stock_position) as max, min(last_month_avg_stock_position) as min from acct_wt_user_avg_position where interval_type=1 union
select '平均仓位（近三月）' as name, max(last_three_month_avg_stock_position) as max, min(last_three_month_avg_stock_position) as min from acct_wt_user_avg_position where interval_type=2 union
select '平均仓位（近半年）' as name, max(last_six_month_avg_stock_position) as max, min(last_six_month_avg_stock_position) as min from acct_wt_user_avg_position where interval_type=3 union
select '平均仓位（近一年）' as name, max(last_year_avg_stock_position) as max, min(last_year_avg_stock_position) as min from acct_wt_user_avg_position where interval_type=4 union
select '近一周平均仓位' as name, max(last_week_ave_position) as max, min(last_week_ave_position) as min from acct_wt_user_avg_position union
select '近一周资金闲置率' as name, max(last_week_idle_rate) as max, min(last_week_idle_rate) as min from acct_wt_user_unused_fund_rate union
select '场内基金市值' as name, max(daily_Field_fund_market_value) as max, min(daily_Field_fund_market_value) as min from acct_wt_user_daily_field_fund_market_value union
select '封闭基金市值' as name, max(daily_closed_end_Funds_market_value) as max, min(daily_closed_end_Funds_market_value) as min from acct_wt_user_close_fund_market_value union
select '资金利用率（累计）' as name, max(use_degree) as max, min(use_degree) as min from acct_wt_user_cumulative_balance_use_rate union
select '每日持股数量' as name, max(daily_hold_stock_number) as max, min(daily_hold_stock_number) as min from acct_wt_user_daily_hold_stock_number union
select '股票持仓天数（最近一年）' as name, max(last_year_hold_stock_days) as max, min(last_year_hold_stock_days) as min from acct_wt_user_stock_hold_days.stock_hold_days where interval_type=4 union
select '每日买入证券总额（资产账户）' as name, max(daily_buy_stock_balance) as max, min(daily_buy_stock_balance) as min from acct_wt_user_day_business_balance_in union
select '股票交易回合（最近一年）' as name, max(lastyear_trade_round) as max, min(lastyear_trade_round) as min from acct_wt_user_stock_hold_cycle_num where interval_type=4 union
select '股票交易回合平均时长（最近一年）' as name, max(lastyear_trade_round_avg_time) as max, min(lastyear_trade_round_avg_time) as min from acct_wt_user_avg_stock_hold_cycle where interval_type=4 union
select '股票交易额（最近一月）' as name, max(lastmonth_stock_trade_balance) as max, min(lastmonth_stock_trade_balance) as min from acct_wt_user_stock_business_balance.stock_business_balance where interval_type=1 union
select '股票交易个数（最近一月）' as name, max(lastmonth_stock_trade_count) as max, min(lastmonth_stock_trade_count) as min from acct_wt_user_trade_num where interval_type=1 union
select '股票交易次数（最近一月）' as name, max(lastmonth_stock_trade_times) as max, min(lastmonth_stock_trade_times) as min from acct_wt_user_business_num where interval_type=1 union
select '股票日交易频率（最近一月）' as name, max(lastmonth_stock_trade_daily_rate) as max, min(lastmonth_stock_trade_daily_rate) as min from acct_wt_user_trade_rate where interval_type=1 union
select '交易回合平均持股天数（最近一年）' as name, max(lastyear_trade_round_hold_avg) as max, min(lastyear_trade_round_hold_avg) as min from acct_wt_user_avg_stock_hold_cycle.avg_stock_hold_cycle where interval_type=4 union
select '交易回合内最大持仓市值' as name, max(max_balance_in_trade_round) as max, min(max_balance_in_trade_round) as min from acct_wt_user_max_position.max_position union
select '清仓股票（每月）' as name, max(month_flush_stock) as max, min(month_flush_stock) as min from acct_wt_user_month_stock_hold_cycle.stock_code union
select '最近一年板块交易金额（申万二级）' as name, max(lastyear_board_exchange_occur) as max, min(lastyear_board_exchange_occur) as min from acct_wt_user_block_trade_value.trade_value where interval_type=4 union
select '抓到涨停（最近一年）' as name, max(lastyear_get_uplimited_times) as max, min(lastyear_get_uplimited_times) as min from acct_wt_user_catch_limit where interval_type=4 union
select '日成本（每周）' as name, max(weekly_day_cost) as max, min(weekly_day_cost) as min from acct_wt_user_weekcost union
select '日成本（每月）' as name, max(monthly_day_cost) as max, min(monthly_day_cost) as min from acct_wt_user_monthcost union
select '日成本（每年）' as name, max(annually_day_cost) as max, min(annually_day_cost) as min from acct_wt_user_yearcost union
select '日成本（最近一年）' as name, max(last_year_day_cost) as max, min(last_year_day_cost) as min from acct_wt_user_recent_year_daycost where interval_type=4 union
select '日成本（累计）' as name, max(accumulated_day_cost) as max, min(accumulated_day_cost) as min from acct_wt_user_cumulative_daycost union
select '持仓最久股票（近一月）' as name, max(last_month_hold_longest) as max, min(last_month_hold_longest) as min from acct_wt_user_max_holddays_stock where interval_type=1 union
select '持仓最久股票（近三月）' as name, max(last_three_month_hold_longest) as max, min(last_three_month_hold_longest) as min from acct_wt_user_max_holddays_stock where interval_type=2 union
select '持仓最久股票（近半年）' as name, max(last_six_month_hold_longest) as max, min(last_six_month_hold_longest) as min from acct_wt_user_max_holddays_stock where interval_type=3 union
select '持仓最久股票（近一年）' as name, max(last_year_hold_longest) as max, min(last_year_hold_longest) as min from acct_wt_user_max_holddays_stock where interval_type=4 union
select '累计交易额 （累计）' as name, max(total_stock_trade_balance) as max, min(total_stock_trade_balance) as min from acct_wt_user_account_trans_volume_6 union
select '买卖次数（近三月）' as name, max(last_three_month_stock_trade_times) as max, min(last_three_month_stock_trade_times) as min from acct_wt_user_business_num where interval_type=2 union
select '买卖次数（近半年）' as name, max(last_six_month_stock_trade_times) as max, min(last_six_month_stock_trade_times) as min from acct_wt_user_business_num where interval_type=3 union
select '买卖次数（近一年）' as name, max(last_year_stock_trade_times) as max, min(last_year_stock_trade_times) as min from acct_wt_user_business_num where interval_type=4 union
select '交易股票数（近三月）' as name, max(last_three_month_stock_trade_count) as max, min(last_three_month_stock_trade_count) as min from acct_wt_user_trade_num where interval_type=2 union
select '交易股票数（近半年）' as name, max(last_six_month_stock_trade_count) as max, min(last_six_month_stock_trade_count) as min from acct_wt_user_trade_num where interval_type=3 union
select '交易股票数（近一年）' as name, max(last_year_stock_trade_count) as max, min(last_year_stock_trade_count) as min from acct_wt_user_trade_num where interval_type=4 union
select '平均持股天数（近一月）' as name, max(last_month_trade_round_hold_avg) as max, min(last_month_trade_round_hold_avg) as min from acct_wt_user_avg_stock_holddays_1 where interval_type=1 union
select '平均持股天数（近三月）' as name, max(las_three_month_trade_round_hold_avg) as max, min(las_three_month_trade_round_hold_avg) as min from acct_wt_user_avg_stock_holddays_2 where interval_type=2 union
select '平均持股天数（近半年）' as name, max(last_six_month_trade_round_hold_avg) as max, min(last_six_month_trade_round_hold_avg) as min from acct_wt_user_avg_stock_holddays_3 where interval_type=3 union
select '交易频率（近三月）' as name, max(last_three_month_stock_trade_daily_rate) as max, min(last_three_month_stock_trade_daily_rate) as min from acct_wt_user_trade_rate where interval_type=2 union
select '交易频率（近半年）' as name, max(last_six_month_stock_trade_daily_rate) as max, min(last_six_month_stock_trade_daily_rate) as min from acct_wt_user_trade_rate where interval_type=3 union
select '交易频率（近一年）' as name, max(last_year_stock_trade_daily_rate) as max, min(last_year_stock_trade_daily_rate) as min from acct_wt_user_trade_rate where interval_type=4 union
select '抓到涨停（近一月）' as name, max(last_month_get_uplimited_times) as max, min(last_month_get_uplimited_times) as min from acct_wt_user_catch_limit where interval_type=1 union
select '抓到涨停（近三月）' as name, max(last_three_month_get_uplimited_times) as max, min(last_three_month_get_uplimited_times) as min from acct_wt_user_catch_limit where interval_type=2 union
select '抓到涨停（近半年）' as name, max(last_six_month_get_uplimited_times) as max, min(last_six_month_get_uplimited_times) as min from acct_wt_user_catch_limit where interval_type=3 union
select '累计佣金贡献' as name, max(total_commision_fee) as max, min(total_commision_fee) as min from acct_wt_user_cumulative_fare_rencent union
select '账户盈亏状况（资产账户）' as name, max(account_profit_and_loss_asset) as max, min(account_profit_and_loss_asset) as min from acct_wt_user_monthyield_desc union
select '回合胜率' as name, max(round_success_rate) as max, min(round_success_rate) as min from acct_wt_user_stock_hold_cycle_winrate_6 union
select '股票交易回合的胜率（每月）' as name, max(month_trade_round_success_rate) as max, min(month_trade_round_success_rate) as min from acct_wt_user_stock_hold_cycle_winrate_month union
select '持股成功率（每月）' as name, max(month_stockhold_success_rate) as max, min(month_stockhold_success_rate) as min from acct_wt_user_month_hold_stock_profit_rate union
select '盈利卖出率（每月）' as name, max(month_profit_sell_rate) as max, min(month_profit_sell_rate) as min from acct_wt_user_month_profit_sell_rate union
select '赚钱次数（每月）' as name, max(month_profit_times) as max, min(month_profit_times) as min from acct_wt_user_win_num union
select '躲过跌停次数（最近一年）' as name, max(lastyear_miss_downlimited_time) as max, min(lastyear_miss_downlimited_time) as min from acct_wt_user_catch_limit where interval_type=4 union
select '日盈亏额（资产账户）' as name, max(daily_profit) as max, min(daily_profit) as min from acct_wt_user_asset union
select '单一股票盈亏额（最近一年）' as name, max(lastyear_single_stock_profit) as max, min(lastyear_single_stock_profit) as min from acct_wt_user_stock_year_income_balance.income_balance where interval_type=4 union
select '行业盈亏额（最近一年/申万一级）' as name, max(lastyear_industry_profit) as max, min(lastyear_industry_profit) as min from acct_wt_user_industry_year_income_balance.income_balance where interval_type=4 union
select '日收益率（资产账户）' as name, max(daily_income_ratio) as max, min(daily_income_ratio) as min from acct_wt_user_dayyield union
select '周收益率（资产账户每周）' as name, max(weekly_income_ratio) as max, min(weekly_income_ratio) as min from acct_wt_user_weekyield union
select '月收益率（资产账户每月）' as name, max(month_income_ratio) as max, min(month_income_ratio) as min from acct_wt_user_monthyield union
select '年收益率（资产账户每年）' as name, max(year_income_ratio) as max, min(year_income_ratio) as min from acct_wt_user_yearyield union
select '累计收益率（资产账户）' as name, max(accumulated_income_ratio) as max, min(accumulated_income_ratio) as min from acct_wt_user_tb_inside_income_value union
select '股票交易回合的胜率（最近一年）' as name, max(trade_round_success_rate) as max, min(trade_round_success_rate) as min from acct_wt_user_stock_hold_cycle_winrate_6 where interval_type=4 union
select '年收益率（最近一年）' as name, max(last_year_income_rate) as max, min(last_year_income_rate) as min from acct_wt_user_cumulative_yield where interval_type=4 union
select '股票盈亏额（最近一年）' as name, max(last_year_stock_incomebalance) as max, min(last_year_stock_incomebalance) as min from acct_wt_user_stock_income_balance where interval_type=4 union
select '收益率排名百分比（最近一年）' as name, max(last_year_income_ratio_rank_percent) as max, min(last_year_income_ratio_rank_percent) as min from acct_wt_user_ration_rank.ration_rate where interval_type=4 union
select '盈利天数（最近一年）' as name, max(last_year_profit_day) as max, min(last_year_profit_day) as min from acct_wt_user_profit_day where interval_type=4 union
select '亏损天数（最近一年）' as name, max(last_year_loss_day) as max, min(last_year_loss_day) as min from acct_wt_user_loss_day where interval_type=4 union
select '单一股票盈亏额排名百分比（最近一年）' as name, max(stock_incomebalance_rank_percent) as max, min(stock_incomebalance_rank_percent) as min from acct_wt_user_stock_year_rate_rank.rate_rank where interval_type=4 union
select '盈亏额（最近一月）' as name, max(last_month_incomebalance) as max, min(last_month_incomebalance) as min from acct_wt_user_account_income_balance where interval_type=1 union
select '收益率（最近一月）' as name, max(last_month_rate) as max, min(last_month_rate) as min from acct_wt_user_month_cumulative_yield where interval_type=1 union
select '股票盈亏额（最近一月）' as name, max(last_month_stock_incomebalance) as max, min(last_month_stock_incomebalance) as min from acct_wt_user_stock_income_balance where interval_type=1 union
select '收益率排名百分比（最近一月）' as name, max(last_month_income_ratio_rank_percent) as max, min(last_month_income_ratio_rank_percent) as min from acct_wt_user_ration_rank.ration_rate where interval_type=1 union
select '单一股票日盈亏额' as name, max(day_stock_incomebalance) as max, min(day_stock_incomebalance) as min from acct_wt_user_stock_day_income_balance.income_balance union
select '日收益率年化收益率（资产账户）' as name, max(daily_rate_annual_income_ratio_ratio) as max, min(daily_rate_annual_income_ratio_ratio) as min from acct_wt_user_day_yield_annualized_rate union
select '月盈亏额（资产账户）' as name, max(monthly_incomebalance) as max, min(monthly_incomebalance) as min from acct_wt_user_monthyield_desc union
select '股票盈亏额' as name, max(stock_incomebalance) as max, min(stock_incomebalance) as min from acct_wt_user_stock_income_balance union
select '股票盈亏排名（每月）' as name, max(monthly_stock_incomebalance_rank) as max, min(monthly_stock_incomebalance_rank) as min from acct_wt_user_month_stock_balance_rank union
select '累计股票盈亏额（资产账户）' as name, max(accumulated_stock_incomebalance) as max, min(accumulated_stock_incomebalance) as min from acct_wt_user_stock_income_balance union
select '累计收益率排名百分比' as name, max(accumulated_income_ratio_rank_percent) as max, min(accumulated_income_ratio_rank_percent) as min from acct_wt_user_cumulative_yield_rank union
select '交易回合收益率' as name, max(trade_round_income_ratio) as max, min(trade_round_income_ratio) as min from acct_wt_user_stock_hold_cycle_365.stock_income_rate,acct_wt_user_stock_hold_cycle_notend_365.stock_income_rate union
select '交易回合盈亏额' as name, max(trade_round_incomebalance) as max, min(trade_round_incomebalance) as min from acct_wt_user_stock_hold_cycle_365.stock_income_balance,acct_wt_user_stock_hold_cycle_notend_365.stock_income_balance union
select '基金盈亏额（每月）' as name, max(monthly_fund_incomebalance) as max, min(monthly_fund_incomebalance) as min from acct_wt_user_cumulative_month_fund_profit union
select '基金累计盈亏额（资产账户）' as name, max(accumulated_fund_incomebalance) as max, min(accumulated_fund_incomebalance) as min from acct_wt_user_fund_cumulative_income_value union
select '基金持仓浮动盈亏额（资产账户）' as name, max(accumulated_hold_fund_incomebalance) as max, min(accumulated_hold_fund_incomebalance) as min from acct_wt_user_inside_fund_float_balance.market_value union
select '场内基金累计盈亏额（资产账户）' as name, max(Field_fund_accumulated_income_ratio) as max, min(Field_fund_accumulated_income_ratio) as min from acct_wt_user_tb_inside_income_value union
select '净赚最多股票（近一月）' as name, max(last_month_most_profit) as max, min(last_month_most_profit) as min from acct_wt_user_max_profit_stock where interval_type=1 union
select '净赚最多股票（近三月）' as name, max(last_three_month_most_profit) as max, min(last_three_month_most_profit) as min from acct_wt_user_max_profit_stock where interval_type=2 union
select '净赚最多股票（近半年）' as name, max(last_six_month_most_profit) as max, min(last_six_month_most_profit) as min from acct_wt_user_max_profit_stock where interval_type=3 union
select '净赚最多股票（近一年）' as name, max(last_year_most_profit) as max, min(last_year_most_profit) as min from acct_wt_user_max_profit_stock where interval_type=4 union
select '胜率（近一月）' as name, max(last_month_success_rate) as max, min(last_month_success_rate) as min from acct_wt_user_stock_hold_cycle_winrate_month where interval_type=1 union
select '胜率（近三月）' as name, max(last_three_month_success_rate) as max, min(last_three_month_success_rate) as min from acct_wt_user_stock_hold_cycle_winrate_month where interval_type=2 union
select '胜率（近半年）' as name, max(last_six_month_success_rate) as max, min(last_six_month_success_rate) as min from acct_wt_user_stock_hold_cycle_winrate_month where interval_type=3 union
select '胜率（近一年）' as name, max(last_year_success_rate) as max, min(last_year_success_rate) as min from acct_wt_user_stock_hold_cycle_winrate_month where interval_type=4 union
select '场外基金购买个数（最近一年）' as name, max(lastyear_buy_ofund_amount) as max, min(lastyear_buy_ofund_amount) as min from acct_wt_user_outside_fund_bus_prod_count where interval_type=4 union
select '场外基金购买次数（最近一年）' as name, max(lastyear_buy_ofund_times) as max, min(lastyear_buy_ofund_times) as min from acct_wt_user_outside_fund_bus_count where interval_type=4 union
select '理财产品累计购买次数' as name, max(sum_prod_buy_times) as max, min(sum_prod_buy_times) as min from acct_wt_user_fund_total_trade_times union
select '擅长个股' as name, max(good_at_stock) as max, min(good_at_stock) as min from acct_wt_user_good_at_stock union
select '盈亏额（近30日）' as name, max(last_thirtydays_incomebalance) as max, min(last_thirtydays_incomebalance) as min from acct_wt_user_account_income_balance union
select '盈亏额（近三个月）' as name, max(last_three_month_incomebalance) as max, min(last_three_month_incomebalance) as min from acct_wt_user_account_income_balance union
select '盈亏额（近半年）' as name, max(last_six_month_incomebalance) as max, min(last_six_month_incomebalance) as min from acct_wt_user_account_income_balance where interval_type=3 union
select '盈亏额（近一年）' as name, max(last_year_incomebalance) as max, min(last_year_incomebalance) as min from acct_wt_user_account_income_balance where interval_type=4 union
select '债券盈亏额（每月）' as name, max(monthly_bond_profit_and_loss) as max, min(monthly_bond_profit_and_loss) as min from acct_wt_user_account_bond_day_income_balance union
select '持股数（近一月）' as name, max(last_month_hold_stock_number) as max, min(last_month_hold_stock_number) as min from 参考acct_wt_user_daily_hold_stock_number where interval_type=1 union
select '月盈利个股数' as name, max(month_stockhold_success_number) as max, min(month_stockhold_success_number) as min from acct_wt_user_month_hold_stock_profit_rate union
select '个股盈亏额（近一月）' as name, max(last_month_individual_stock_incomebalance) as max, min(last_month_individual_stock_incomebalance) as min from acct_wt_user_stock_income_balance where interval_type=1 union
select '转入资金（近一月）' as name, max(month_in_balance) as max, min(month_in_balance) as min from acct_wt_user_money_in_out where interval_type=1 union
select '收益率（近三个月）' as name, max(last_three_month_rate) as max, min(last_three_month_rate) as min from acct_wt_user_accumulative_yield union
select '收益率（近半年）' as name, max(last_six_month_rate) as max, min(last_six_month_rate) as min from acct_wt_user_accumulative_yield where interval_type=3 union
select '收益率（近一年）' as name, max(last_year_rate) as max, min(last_year_rate) as min from acct_wt_user_yearyield where interval_type=4 union
select '收益率排名百分比（近三个月）' as name, max(last_three_month_income_ratio_rank_percent) as max, min(last_three_month_income_ratio_rank_percent) as min from acct_wt_user_ration_rank union
select '收益率排名百分比（近半年）' as name, max(last_six_month_income_ratio_rank_percent) as max, min(last_six_month_income_ratio_rank_percent) as min from acct_wt_user_ration_rank where interval_type=3 union
select '持股数（近三个月）' as name, max(last_three_month_hold_stock_number) as max, min(last_three_month_hold_stock_number) as min from 参考acct_wt_user_daily_hold_stock_number union
select '持股数（近半年）' as name, max(last_six_month_hold_stock_number) as max, min(last_six_month_hold_stock_number) as min from 参考acct_wt_user_daily_hold_stock_number where interval_type=3 union
select '持股数（近一年）' as name, max(last_year_hold_stock_number) as max, min(last_year_hold_stock_number) as min from 参考acct_wt_user_daily_hold_stock_number where interval_type=4 union
select '盈利回合总盈亏值（近一月）' as name, max(last_month_profit_round_incomebalance) as max, min(last_month_profit_round_incomebalance) as min from acct_wt_user_hold_cycle_win_loss_balance where interval_type=1 union
select '盈利回合总盈亏值（近三个月）' as name, max(last_three_month_profit_round_incomebalance) as max, min(last_three_month_profit_round_incomebalance) as min from acct_wt_user_hold_cycle_win_loss_balance union
select '盈利回合总盈亏值（近半年）' as name, max(last_six_month_profit_round_incomebalance) as max, min(last_six_month_profit_round_incomebalance) as min from acct_wt_user_hold_cycle_win_loss_balance where interval_type=3 union
select '盈利回合总盈亏值（近一年）' as name, max(last_year_profit_round_incomebalance) as max, min(last_year_profit_round_incomebalance) as min from acct_wt_user_hold_cycle_win_loss_balance where interval_type=4 union
select '亏损回合总盈亏值（近一月）' as name, max(last_month_loss_round_incomebalance) as max, min(last_month_loss_round_incomebalance) as min from acct_wt_user_hold_cycle_win_loss_balance where interval_type=1 union
select '亏损回合总盈亏值（近三个月）' as name, max(last_three_month_loss_round_incomebalance) as max, min(last_three_month_loss_round_incomebalance) as min from acct_wt_user_hold_cycle_win_loss_balance union
select '亏损回合总盈亏值（近半年）' as name, max(last_six_month_loss_round_incomebalance) as max, min(last_six_month_loss_round_incomebalance) as min from acct_wt_user_hold_cycle_win_loss_balance where interval_type=3 union
select '亏损回合总盈亏值（近一年）' as name, max(last_year_loss_round_incomebalance) as max, min(last_year_loss_round_incomebalance) as min from acct_wt_user_hold_cycle_win_loss_balance where interval_type=4 union
select '股票交易回合（近一月）' as name, max(last_month_trade_round) as max, min(last_month_trade_round) as min from acct_wt_user_stock_hold_cycle where interval_type=1 union
select '股票交易回合（近三个月）' as name, max(last_three_month_trade_round) as max, min(last_three_month_trade_round) as min from acct_wt_user_stock_hold_cycle union
select '股票交易回合（近半年）' as name, max(last_six_month_trade_round) as max, min(last_six_month_trade_round) as min from acct_wt_user_stock_hold_cycle where interval_type=3 union
select '个股交易回合（近一月）' as name, max(last_month_individual_stock_trade_round) as max, min(last_month_individual_stock_trade_round) as min from acct_wt_user_stock_hold_cycle where interval_type=1 union
select '个股交易回合（近三个月）' as name, max(last_three_month_individual_stock_trade_round) as max, min(last_three_month_individual_stock_trade_round) as min from acct_wt_user_stock_hold_cycle union
select '个股交易回合（近半年 ）' as name, max(last_six_month_individual_stock_trade_round) as max, min(last_six_month_individual_stock_trade_round) as min from acct_wt_user_stock_hold_cycle where interval_type=3 union
select '现金盈亏额（每月）' as name, max(monthly_cash_incomebalance) as max, min(monthly_cash_incomebalance) as min from acct_wt_user_month_cash_income union
