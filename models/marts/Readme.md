在 dbt 的資料建模架構中，mart 層是最後一層（又稱「業務層」），由分析師或 BI 工具直接使用。
這層模型包含最終的 事實表 (fact) 與 維度表 (dimension)，也就是傳統 Kimball 維度建模中的核心資料結構。​

mart 層的核心定位
- 為業務報表與分析工具建立「最終真相表 (single source of truth)」。
- 所有欄位均具業務意義，命名清晰、可直接被解讀。
- 每張表的粒度明確：
- Fact table: 代表「可被衡量的事件或交易」。
- Dimension table: 提供事件的背景描述。