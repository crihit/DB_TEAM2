CREATE INDEX idx_item_category ON item (Icategory);
# 상품들은 메인에서 부터 카테고리로 분류되는등 category와 join되는 경우가 많음. 따라서 본 인덱스를 생성.
CREATE INDEX idx_cart_cusid ON cart (Cusid);
# 장바구니들은 소유자에 종속되기 때문에 customer와 join되는 경우가 많음. 따라서 본 인덱스를 생성함.
CREATE INDEX idx_orders_Odate_cartID ON orders (Odate, CartID);
# 주문에서 날짜는 매출검색등 에서 사용되고 cart에 종속되기 때문에 cart와의 join도 많음. 따라서 본 인덱스를 생성함.
CREATE INDEX idx_retailer_RID_Astate ON retailer (RID,Astate);
# 매장은 주문자의 소재지에 따라 결정되기 때문에 customer와 Astate로 join되는 경우가있음. 그러나 Astate는 중복될 확률이 높기때문에 RID가 우선순위인 인덱스를 생성함.
