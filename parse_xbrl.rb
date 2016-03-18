require 'bundler/setup'
require 'nokogiri'
require 'pp'

module ParseXbrl
  #後で変更する
  # puts 'ファイルのパスを入力してください'
  # file_path = gets.chomp
  path = './6301/jpfr-asr-E01532-000-2009-03-31-01-2009-06-25.xbrl'
  parsed_xbrl = File.open(path) do |f|
    Nokogiri::XML.parse(f)
  end

  main_tag = 'jpfr-t-cte'
  attribute = :contextRef

  proc = Proc.new do |sub_tag, context|
    result = 0
    tag = "#{main_tag}:#{sub_tag}"
    parsed_xbrl.xpath("//#{tag}").each do |_sub|
      if _sub[attribute] == context
        result = _sub.text.to_f
      end
    end
    result
  end

  #連結の財務諸表を含むかどうか
  if parsed_xbrl.text.include?('CurrentYearConsolidatedInstant')
    flag = true
  else
    flag = false
  end

  if flag
    status = 'CurrentYearConsolidatedInstant'
  else
    status = 'CurrentYearNonConsolidatedInstant'
  end
  #構造体を使ってデータをまとめる
  #タグ名が異なるものへ対応する必要がある
  #資産、負債、資本
  #流動資産
  pp current_assets = proc.call('CurrentAssets', status)
  #流動負債
  pp current_liabilities = proc.call('CurrentLiabilities', status)
  #現金及び預金
  pp cash_and_deposits = proc.call('CashAndDeposits', status)
  #売掛金及び受取手形（総額）
  pp note_and_accounts_receivable_trade = proc.call('NotesAndAccountsReceivableTrade', status)
  #受取手形（総額）
  pp notes_receivable_trade = proc.call('NotesReceivableTrade', status)
  #売掛金（総額）
  pp accounts_receivable_trade = proc.call('AccountsReceivableTrade', status)
  #有価証券
  pp short_term_investment_securities = proc.call('ShortTermInvestmentSecurities', status)
  #当座資産
  pp liquid_assets = cash_and_deposits + note_and_accounts_receivable_trade + short_term_investment_securities
  #固定資産
  pp noncurrent_assets = proc.call('NoncurrentAssets', status)
  #自己資本
  pp net_assets = proc.call('NetAssets', status)
  #株主資本
  pp shareholders_equity = proc.call('ShareholdersEquity', status)
  #棚卸資産
  pp inventories = proc.call('Inventories' ,status)
  #商品及び製品
  pp merchandise_and_finished_goods = proc.call('MerchandiseAndFinishedGoods')
  #支払手形及び買掛金
  pp notes_and_accounts_payable_trade = proc.call('NotesAndAccountsPayableTrade', status)
  #固定負債
  pp noncurrent_liabilities = proc.call('NoncurrentLiabilities', status)
  #負債の部（総負債）
  pp liabilities = proc.call('Liabilities', status)
  #建設仮勘定
  pp construction_in_progress = proc.call('ConstructionInProgress', status)
  #投資その他の資産
  pp investments_and_other_assets = proc.call('InvestmentsAndOtherAssets', status)
  #繰延資産
  pp deferred_assets = proc.call('DeferredAssets', status)
  #総資産（総資本）
  pp assets = proc.call('Assets', status)
  #経営資本
  pp operating_capital = assets - (construction_in_progress + investments_and_other_assets + deferred_assets)

  puts
  if flag
    status = 'CurrentYearConsolidatedDuration'
  else
    status = 'CurrentYearNonConsolidatedDuration'
  end
  #収益、費用、キャッシュ・フロー
  #営業利益
  pp operating_income = proc.call('OperatingIncome', status)
  #受取利息
  pp interest_income = proc.call('InterestIncomeNOI', status)
  #受取配当金
  pp dividends_income = proc.call('DividendsIncomeNOI', status)
  #事業利益
  pp net_operating_profit = operating_income + interest_income + dividends_income
  #売上高
  pp net_sales = proc.call('NetSales', status)
  #売上総利益
  pp gross_profit = proc.call('GrossProfit', status)
  #経常利益
  pp ordinary_income = proc.call('OrdinaryIncome', status)
  #税引前当期純利益
  pp income_before_income_taxes = proc.call('IncomeBeforeIncomeTaxes', status)
  #売上原価
  pp cost_of_sales = proc.call('CostOfSales', status)
  #営業活動によるキャッシュ・フロー
  pp net_cash_provided_by_used_in_operating_activities = proc.call('NetCashProvidedByUsedInOperatingActivities', status)
end
