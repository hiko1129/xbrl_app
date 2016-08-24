xbrl_appのメモ
それぞれの要素名を記述
***
受取手形、売掛金を分けて計算しようかと思う。両方の勘定科目があるとは限らないため。純額の記載があるものとないものがある（対処必要）、純額の記載がないものは総額を利用する。安全性での利用時には貸し倒れ引当金を全て引く。効率性の利用では貸し倒れ引当金を引かないようにする。すべての情報を見れる形にする。
個別のものに注目するときつい。
固定資産の科目がなく、有形固定資産と無形固定資産の科目がある場合には、それを利用する式にする。
株主資本の科目ない場合には純資産を利用して対処できると思われる。
当座比率、売上債権回転率は諦めたほうが楽かもしれない。
## 一般商工業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 受取手形（純額）:NotesReceivableTradeNet
* 受取手形及び売掛金（純額）:NotesAndAccountsReceivableTradeNet
* 受取手形及び営業未収入金:NotesAndOperatingAccountsReceivableCA
* 売掛金:AccountsReceivableTrade
* 売掛金（純額）:AccountsReceivableTradeNet
* 割賦売掛金:AccountsReceivableInstallment
* 信用保証割賦売掛金:AccountsReceivableInstallmentSalesCreditGuaranteeCA
* 貸倒引当金:AllowanceForDoubtfulAccountsNotesAndAccountsReceivableTrade
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:

## 建設業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 完成工事未収入金:AccountsReceivableFromCompletedConstructionContractsCNS
* 貸倒引当金（受取手形、完成工事未収入金以外のも含まれていると思われる）:AllowanceForDoubtfulAccountsCA
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:

## 銀行・信託業
* 流動資産:個別の勘定科目なし
* 流動負債:個別の勘定科目なし
* 現金預け金:CashAndDueFromBanksAssetsBNK
* 受取手形及び売掛金:勘定科目なし
* 貸倒引当金:AllowanceForLoanLossesAssetsBNK
* 有価証券:SecuritiesAssetsBNK
* 固定資産:なし
* 有形固定資産:PropertyPlantAndEquipment
* 無形固定資産:IntangibleAssets
* 株主資本:ShareholdersEquity
* たな卸資産:なし
* 支払手形:


## 銀行・信託業（特定取引勘定設置銀行）
* 流動資産：個別の勘定科目なし
* 流動負債:個別の勘定科目なし
* 現金預け金:CashAndDueFromBanksAssetsBNK
* 受取手形及び売掛金:勘定科目なし
* 貸倒引当金:AllowanceForLoanLossesAssetsBNK
* 有価証券:SecuritiesAssetsBNK
* 有形固定資産:PropertyPlantAndEquipment
* 無形固定資産:IntangibleAssets
* 株主資本:ShareholdersEquity
* たな卸資産:なし
* 支払手形:


## 建設保証業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 売掛金:勘定科目なし
* 貸倒引当金:AllowanceForDoubtfulAccountsCA
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 有形固定資産:PropertyPlantAndEquipmentAbstract
* 無形固定資産:IntangibleAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:


## 第一種金融商品取引業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形及び売掛金:勘定科目なし
* 貸倒引当金:AllowanceForDoubtfulAccountsCA
* 有価証券:なし
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:なし
* 支払手形:


## 生命保険業
* 流動資産:個別の勘定科目なし
* 流動負債:個別の勘定科目なし
* 現金及び預貯金:CashAndDepositsAssetsINS
* 受取手形及び売掛金:勘定科目なし
* 貸倒引当金:AllowanceForDoubtfulAccountsAssetsINS
* 有価証券:SecuritiesAssetsINS
* 固定資産:なし
* 有形固定資産:PropertyPlantAndEquipment
* 無形固定資産:IntangibleAssets
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:なし
* 支払手形:


## 損害保険業
* 流動資産:個別の勘定科目なし
* 流動負債:個別の勘定科目なし
* 現金及び預貯金:CashAndDepositsAssetsINS
* 受取手形及び売掛金:勘定科目なし
* 貸倒引当金:AllowanceForDoubtfulAccountsAssetsINS
* 有価証券:SecuritiesAssetsINS
* 固定資産:なし
* 有形固定資産:PropertyPlantAndEquipment
* 無形固定資産:IntangibleAssets
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:なし
* 支払手形:


## 鉄道事業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 受取手形、売掛金及び未収運賃（B表記）:NotesAccountsReceivableTradeAndAccruedFreightRWY
* 売掛金:なし
* 貸倒引当金:AllowanceForDoubtfulAccountsCA
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:


## 海運事業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 受取手形（純額）:NotesReceivableTradeNet
* 売掛金:なし
* 貸倒引当金:AllowanceForDoubtfulAccountsNotesReceivableTrade
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:


## 高速道路事業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 売掛金:なし
* 貸倒引当金:AllowanceForDoubtfulAccountsCA
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:


## 電気通信事業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形及び売掛金:NotesAndAccountsReceivableTrade
* 受取手形:NotesReceivableTrade
* 売掛金:AccountsReceivableTrade
* 貸倒引当金:AllowanceForDoubtfulAccountsIOAByGroup
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:なし
* 支払手形:


## 電気事業
* 流動資産:CurrentAssets
* 流動負債:CurrentLiabilities
* 現金及び預金:CashAndDeposits
* 受取手形及び売掛金:NotesAndAccountsReceivableTrade
* 受取手形:NotesReceivableTrade
* 売掛金:AccountsReceivableTrade
* 貸倒引当金:AllowanceForDoubtfulAccountsIOAByGroup
* 有価証券:なし
* 固定資産:NoncurrentAssets
* 株主資本:ShareholdersEquity
* たな卸資産:Inventories
* 支払手形:


## ガス事業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形及び売掛金:NotesAndAccountsReceivableTrade
* 受取手形:NotesReceivableTrade
* 売掛金:AccountsReceivableTrade
* 貸倒引当金:AllowanceForDoubtfulAccountsIOAByGroup
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:


## 資産流動化業
* 流動資産:CurrentAssetsSpecificAssetsAbstractLIQ
* 流動負債:CurrentLiabilities
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 受取手形（純額）:NotesReceivableTrade
* 貸倒引当金:AllowanceForDoubtfulAccountsNotesReceivableTrade
* 有価証券:なし
* 売買目的有価証券:TradingSecuritiesLIQ
* 固定資産:NoncurrentAssetsSpecificAssetsAbstractLIQ
* 株主資本:なし
* たな卸資産:なし
* 支払手形:


## 投資運用業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilities
* 現金及び預金:CashAndDeposits
* 受取手形:なし
* 売掛金:なし
* 貸倒引当金:AllowanceForDoubtfulAccountsCA
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquity
* たな卸資産:なし
* 支払手形:


## 投資業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 受取手形（純額）:NotesReceivableTradeNet
* 売掛金:なし
* 貸倒引当金:AllowanceForDoubtfulAccountsNotesReceivableTrade
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:なし
* たな卸資産:なし
* 支払手形:


## 特定金融業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形及び売掛金:NotesAndAccountsReceivableTrade
* 受取手形及び売掛金（純額）:NotesAndAccountsReceivableTradeNet
* 受取手形:NotesReceivableTrade
* 受取手形（純額）:NotesReceivableTradeNet
* 売掛金:なし
* 割賦売掛金:AccountsReceivableInstallment
* 貸倒引当金:AllowanceForDoubtfulAccountsNotesAndAccountsReceivableTrade
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:


## 社会医療法人
* 流動資産:CurrentAssets
* 流動負債:CurrentLiabilities
* 現金及び預金:CashAndDeposits
* 受取手形:なし
* 売掛金:なし
* 貸倒引当金:AllowanceForDoubtfulAccountsOperatingAccountsReceivableMED
* 有価証券:ShortTermInvestmentSecurities
* 株主資本:なし
* たな卸資産:なし
* 支払手形:

## 学校法人
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:なし
* 売掛金:なし
* 貸倒引当金:AllowanceForDoubtfulAccountsLongTermLoansReceivable
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:なし
* たな卸資産:Inventories
* 支払手形:


## 商品先物取引業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形及び売掛金:NotesAndAccountsReceivableTrade
* 受取手形:NotesReceivableTrade
* 売掛金:AccountsReceivableTrade
* 貸倒引当金:AllowanceForDoubtfulAccountsCA
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:Inventories
* 支払手形:


## リース事業
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 現金及び預金:CashAndDeposits
* 受取手形:NotesReceivableTrade
* 売掛金:AccountsReceivableTrade
* 貸倒引当金:AllowanceForDoubtfulAccountsCA
* 有価証券:ShortTermInvestmentSecurities
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:ShareholdersEquityAbstract
* たな卸資産:なし
* 支払手形:


## 投資信託受益証券
* 流動資産:CurrentAssetsAbstract
* 流動負債:CurrentLiabilitiesAbstract
* 預金:DepositsCAFND
* 金銭信託（預金よりもリスクあるため計算には含めないかも）
* 受取手形:なし
* 売掛金:なし
* 貸倒引当金:なし
* 有価証券:なし
* 固定資産:NoncurrentAssetsAbstract
* 株主資本:なし
* たな卸資産:なし
* 支払手形:
