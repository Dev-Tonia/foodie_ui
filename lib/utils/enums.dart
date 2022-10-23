class Selections {
  static PaymentOption option = PaymentOption.card;
  static DeliveryOption deliveryOption = DeliveryOption.doorDelivery;
}

enum PaymentOption {
  card,
  paypal,
  bankAcount,
}

enum DeliveryOption {
  doorDelivery,
  pickUp,
}
