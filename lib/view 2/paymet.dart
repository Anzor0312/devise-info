import 'package:flutter/material.dart';
import 'package:urllouncher/view%202/model.dart';

class PaymontPage extends StatefulWidget {
  const PaymontPage({super.key});

  @override
  State<PaymontPage> createState() => _PaymontPageState();
}

PaymentConfirmModel? data;

class _PaymontPageState extends State<PaymontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //body: Text("${data!.book.tickets[0].documents.ticketReceipt ?? "salom"}"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            data = funksions(data: dataa["data"]);
            print(data!.book.tickets[0].documents.ticketReceipt );
          });
        },
      ),
    );
  }

  PaymentConfirmModel funksions({required Map<String, dynamic> data}) {
    return PaymentConfirmModel.fromJson(data);
  }

  Map<String, dynamic> dataa = {
    "success": true,
    "code": 0,
    "pid": "41463_20231220161449836340",
    "time": {
        "execution": 0.2532
    },
    "data": {
        "book": {
            "order": {
                "order_id": 267032,
                "billing_number": 1253653760,
                "channel": {
                    "code": "API2EASY",
                    "source": {
                        "code": "EASY"
                    }
                },
                "sig": "a7bac0526d1e43e6c4c73978f61e2d4e51973909",
                "expire": "20.12.2023 16:25:00",
                "expire_remain": 611,
                "created": "20.12.2023 16:13:09",
                "status": {
                    "sign": "Ticketed",
                    "title": "Выписано"
                },
                "user_id": 410998,
                "is_real": true,
                "price": {
                    "RUB": {
                        "fare": 16930,
                        "fee": 300,
                        "taxes": 4375,
                        "insurance": 0,
                        "discount": 0,
                        "extra_baggage": 0,
                        "amount": 21605,
                        "amount_base": 21605,
                        "amount_without_payment_expense": 21605
                    }
                },
                "payment": {
                    "pay_system": "297",
                    "pay_code": "BLNC",
                    "merchant": "balanceMa",
                    "type_pay": "НАЛ",
                    "date": "20.12.2023 16:14:48",
                    "amount_pay": 21605,
                    "curr_pay": "RUB",
                    "card": "",
                    "status_code": "paid",
                    "method": "Баланс"
                },
                "alfa_podeli_payment": "",
                "payments": []
            },
            "is_vtrip": true,
            "tickets": [
                {
                    "locator": "TPLBS3",
                    "vnd_locators": [
                        "UT/W0CD8K"
                    ],
                    "booking_office_id": "MIXVEL_UT_3448",
                    "receipt_text": "",
                    "actual": true,
                    "documents": {
                        "ticket_receipt": "https://p22-ma-ak.crpo.su/api/eticket_1253653760_TPLBS3.pdf"
                    },
                    "booking_provider": "TUA",
                    "provider": {
                        "name": "TUA",
                        "currency": "RUB"
                    },
                    "carrier": {
                        "id": 819,
                        "code": "UT",
                        "title": "Utair"
                    },
                    "duration": {
                        "flight": {
                            "common": 1225,
                            "hour": 20,
                            "minute": 25
                        }
                    },
                    "passengers": [
                        {
                            "id": 338334,
                            "name": {
                                "first": "Abror",
                                "middle": "Abzal",
                                "last": "Ravshanov"
                            },
                            "email": "ravshanovanzor@gmail.com",
                            "phone": "998940874676",
                            "gender": "M",
                            "birthdate": "19.11.2004",
                            "citizenship": "UZ",
                            "age": "adt",
                            "document": {
                                "type": "A",
                                "num": "AD0172708",
                                "original_number": "AD0172708",
                                "expire": "2031-02-17 00:00:00"
                            },
                            "ticketData": {
                                "number": "9141691499387",
                                "text": "",
                                "refunded": false
                            },
                            "bonus_card": "",
                            "key": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                            "uuid": "9f91f38d-9a55-4409-aabe-53541cc4ccdf",
                            "insurances": [],
                            "accompanying_adults": []
                        }
                    ],
                    "special_tariff_type": "",
                    "fare_family_marketing_name": "МИНИМУМ"
                },
                {
                    "locator": "TPLBSS",
                    "vnd_locators": [
                        "DP/8C1GLM"
                    ],
                    "booking_office_id": "MIXVEL_TCH_3368",
                    "receipt_text": "",
                    "actual": true,
                    "documents": {
                        "ticket_receipt": "https://p22-ma-ak.crpo.su/api/eticket_1253653760_TPLBSS.pdf"
                    },
                    "booking_provider": "TUA",
                    "provider": {
                        "name": "TUA",
                        "currency": "RUB"
                    },
                    "carrier": {
                        "id": 1481,
                        "code": "DP",
                        "title": "Pobeda"
                    },
                    "duration": {
                        "flight": {
                            "common": 1225,
                            "hour": 20,
                            "minute": 25
                        }
                    },
                    "passengers": [
                        {
                            "id": 338335,
                            "name": {
                                "first": "Abror",
                                "middle": "Abzal",
                                "last": "Ravshanov"
                            },
                            "email": "ravshanovanzor@gmail.com",
                            "phone": "998940874676",
                            "gender": "M",
                            "birthdate": "19.11.2004",
                            "citizenship": "UZ",
                            "age": "adt",
                            "document": {
                                "type": "A",
                                "num": "AD0172708",
                                "original_number": "AD0172708",
                                "expire": "2031-02-17 00:00:00"
                            },
                            "ticketData": {
                                "number": "7215788299440",
                                "text": "",
                                "refunded": false
                            },
                            "bonus_card": "",
                            "key": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                            "uuid": "9f91f38d-9a55-4409-aabe-53541cc4ccdf",
                            "insurances": [],
                            "accompanying_adults": []
                        }
                    ],
                    "special_tariff_type": "",
                    "fare_family_marketing_name": "БАЗОВЫЙ"
                }
            ],
            "flight": {
                "duration": 2450,
                "type": "vtrip",
                "is_vtrip": true,
                "fare_family_type": "",
                "provider": {
                    "gds": "",
                    "name": "VTRIP",
                    "supplier": {
                        "id": "",
                        "code": "",
                        "title": ""
                    }
                },
                "segments": [
                    {
                        "ticket_duration": 1225,
                        "type": "regular",
                        "provider": {
                            "gds": 36,
                            "name": "TUA",
                            "supplier": {
                                "id": 819,
                                "code": "UT",
                                "title": "Utair"
                            }
                        },
                        "baggage": {
                            "piece": 0,
                            "weight": ""
                        },
                        "comment": "✈Подробная информация о правилах въезда и выезда из РФ  размещена на сайте Авиакомпании  https://www.utair.ru/support/12/pravila_vyezda_iz_rossijskoj_federacii  https://www.utair.ru/support/12/pravila_vezda_v_rossijskuyu_federaciyu    ✈ Если рейс выполняется партнером по ⎘ код-шерингу (рейс совместной эксплуатации) в отношении норм провоза ручной клади применяются правила авиакомпании перевозчика, с которыми можно ознакомиться на официальном сайте перевозчика",
                        "cbaggage": {
                            "piece": 1,
                            "weight": 5
                        },
                        "is_refund": false,
                        "is_change": true,
                        "arr": {
                            "date": "13.01.2024",
                            "time": "20:55:00",
                            "datetime": "13.01.2024 20:55:00",
                            "terminal": "A",
                            "airport": {
                                "id": 80753,
                                "code": "VKO",
                                "title": "Внуково"
                            },
                            "city": {
                                "id": 64192,
                                "code": "MOW",
                                "title": "Москва"
                            },
                            "region": {
                                "id": "",
                                "code": "",
                                "title": ""
                            },
                            "country": {
                                "id": 191,
                                "code": "RU",
                                "title": "Россия"
                            }
                        },
                        "dep": {
                            "date": "13.01.2024",
                            "time": "18:30:00",
                            "datetime": "13.01.2024 18:30:00",
                            "terminal": "2",
                            "airport": {
                                "id": 81720,
                                "code": "TAS",
                                "title": "Международный Аэропорт Ташкент"
                            },
                            "city": {
                                "id": 85524,
                                "code": "TAS",
                                "title": "Ташкент"
                            },
                            "region": {
                                "id": "",
                                "code": "",
                                "title": ""
                            },
                            "country": {
                                "id": 233,
                                "code": "UZ",
                                "title": "Узбекистан"
                            }
                        },
                        "aircraft": "Boeing 767-200/200ER",
                        "aircraft_details": {
                            "code": "762",
                            "title": "Boeing 767-200/200ER"
                        },
                        "flight_number": "806",
                        "direction": 0,
                        "duration": {
                            "flight": {
                                "common": 265,
                                "hour": 4,
                                "minute": 25
                            }
                        },
                        "class": {
                            "type_id": 1,
                            "name": "p",
                            "title": "Эконом"
                        },
                        "fare_code": "PLTOW",
                        "carrier": {
                            "id": 819,
                            "code": "UT",
                            "title": "Utair"
                        },
                        "is_mini_rules_exists": true,
                        "is_online_checkin_required": false,
                        "stops": [],
                        "status": {
                            "code": "HK",
                            "description": "Подтверждено"
                        },
                        "flight_changes": [
                            {
                                "baggage": {
                                    "field_name": "багаж",
                                    "old_value": {
                                        "piece": 0,
                                        "weight": 0
                                    },
                                    "new_value": {
                                        "piece": 0,
                                        "weight": ""
                                    }
                                }
                            }
                        ],
                        "parameters_for_each_passenger": [
                            {
                                "passenger_id": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                                "flight_comment": "✈Подробная информация о правилах въезда и выезда из РФ  размещена на сайте Авиакомпании  https://www.utair.ru/support/12/pravila_vyezda_iz_rossijskoj_federacii  https://www.utair.ru/support/12/pravila_vezda_v_rossijskuyu_federaciyu    ✈ Если рейс выполняется партнером по ⎘ код-шерингу (рейс совместной эксплуатации) в отношении норм провоза ручной клади применяются правила авиакомпании перевозчика, с которыми можно ознакомиться на официальном сайте перевозчика",
                                "is_refundable": false,
                                "is_exchangeable": true,
                                "flight_class": {
                                    "id": 1,
                                    "title": "Эконом",
                                    "provider_code": "p"
                                },
                                "baggage": {
                                    "bags_count": 0,
                                    "weight": "",
                                    "weight_unit": "",
                                    "dimensions": ""
                                },
                                "carry_on_baggage": {
                                    "bags_count": 1,
                                    "weight": 5,
                                    "weight_unit": "",
                                    "dimensions": {
                                        "width": 30,
                                        "length": 40,
                                        "height": 20
                                    }
                                },
                                "ticket_number": "9141691499387",
                                "brand": "MN"
                            }
                        ],
                        "baggage_recheck": false,
                        "refunded_status": ""
                    },
                    {
                        "ticket_duration": 1225,
                        "type": "regular",
                        "provider": {
                            "gds": 36,
                            "name": "TUA",
                            "supplier": {
                                "id": 1481,
                                "code": "DP",
                                "title": "Pobeda"
                            }
                        },
                        "baggage": {
                            "piece": 0,
                            "weight": ""
                        },
                        "comment": "►Тариф Базовый. Ручная кладь 1место 36х30х27см или 36х30х4см-10кг.  Автоматически назначенное предварительное место в салоне.  Изменение даты до вылета рейса  5000 р. + доплата по тарифу за 1 пассажира за 1 сегмент не позднее 48 часов до вылета рейса.",
                        "cbaggage": {
                            "piece": 1,
                            "weight": 0
                        },
                        "is_refund": false,
                        "is_change": true,
                        "arr": {
                            "date": "14.01.2024",
                            "time": "12:55:00",
                            "datetime": "14.01.2024 12:55:00",
                            "terminal": "",
                            "airport": {
                                "id": 80063,
                                "code": "IST",
                                "title": "Аэропорт Стамбула"
                            },
                            "city": {
                                "id": 69242,
                                "code": "IST",
                                "title": "Стамбул"
                            },
                            "region": {
                                "id": "",
                                "code": "",
                                "title": ""
                            },
                            "country": {
                                "id": 223,
                                "code": "TR",
                                "title": "Турция"
                            }
                        },
                        "dep": {
                            "date": "14.01.2024",
                            "time": "07:50:00",
                            "datetime": "14.01.2024 07:50:00",
                            "terminal": "A",
                            "airport": {
                                "id": 80753,
                                "code": "VKO",
                                "title": "Внуково"
                            },
                            "city": {
                                "id": 64192,
                                "code": "MOW",
                                "title": "Москва"
                            },
                            "region": {
                                "id": "",
                                "code": "",
                                "title": ""
                            },
                            "country": {
                                "id": 191,
                                "code": "RU",
                                "title": "Россия"
                            }
                        },
                        "aircraft": "Boeing 737-800",
                        "aircraft_details": {
                            "code": "738",
                            "title": "Boeing 737-800"
                        },
                        "flight_number": "737",
                        "direction": 0,
                        "duration": {
                            "flight": {
                                "common": 305,
                                "hour": 5,
                                "minute": 5
                            }
                        },
                        "class": {
                            "type_id": 1,
                            "name": "t",
                            "title": "Эконом"
                        },
                        "fare_code": "TECONALL",
                        "carrier": {
                            "id": 1481,
                            "code": "DP",
                            "title": "Pobeda"
                        },
                        "is_mini_rules_exists": true,
                        "is_online_checkin_required": false,
                        "stops": [],
                        "status": {
                            "code": "HK",
                            "description": "Подтверждено"
                        },
                        "flight_changes": [
                            {
                                "baggage": {
                                    "field_name": "багаж",
                                    "old_value": {
                                        "piece": 0,
                                        "weight": 0
                                    },
                                    "new_value": {
                                        "piece": 0,
                                        "weight": ""
                                    }
                                },
                                "cabin_baggage": {
                                    "field_name": "ручная кладь",
                                    "old_value": {
                                        "piece": "",
                                        "weight": ""
                                    },
                                    "new_value": {
                                        "piece": 1,
                                        "weight": 0
                                    }
                                }
                            }
                        ],
                        "parameters_for_each_passenger": [
                            {
                                "passenger_id": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                                "flight_comment": "►Тариф Базовый. Ручная кладь 1место 36х30х27см или 36х30х4см-10кг.  Автоматически назначенное предварительное место в салоне.  Изменение даты до вылета рейса  5000 р. + доплата по тарифу за 1 пассажира за 1 сегмент не позднее 48 часов до вылета рейса.",
                                "is_refundable": false,
                                "is_exchangeable": true,
                                "flight_class": {
                                    "id": 1,
                                    "title": "Эконом",
                                    "provider_code": "t"
                                },
                                "baggage": {
                                    "bags_count": 0,
                                    "weight": "",
                                    "weight_unit": "",
                                    "dimensions": ""
                                },
                                "carry_on_baggage": {
                                    "bags_count": 1,
                                    "weight": "",
                                    "weight_unit": "",
                                    "dimensions": {
                                        "width": 30,
                                        "length": 36,
                                        "height": 27
                                    }
                                },
                                "ticket_number": "7215788299440",
                                "brand": "ST"
                            }
                        ],
                        "baggage_recheck": true,
                        "refunded_status": ""
                    }
                ],
                "is_tour_operator": false
            },
            "passengers": [
                {
                    "id": 338334,
                    "name": {
                        "first": "Abror",
                        "middle": "Abzal",
                        "last": "Ravshanov"
                    },
                    "email": "ravshanovanzor@gmail.com",
                    "phone": "998940874676",
                    "gender": "M",
                    "birthdate": "19.11.2004",
                    "citizenship": "UZ",
                    "age": "adt",
                    "document": {
                        "type": "A",
                        "num": "AD0172708",
                        "original_number": "AD0172708",
                        "expire": "2031-02-17 00:00:00"
                    },
                    "ticketData": {
                        "number": "9141691499387",
                        "text": "",
                        "refunded": false
                    },
                    "bonus_card": "",
                    "key": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                    "uuid": "9f91f38d-9a55-4409-aabe-53541cc4ccdf",
                    "insurances": [],
                    "accompanying_adults": []
                }
            ],
            "insurances": [],
            "payed_data": {
                "pay_system": "297",
                "pay_code": "BLNC",
                "merchant": "balanceMa",
                "type_pay": "НАЛ",
                "date": "20.12.2023 16:14:48",
                "amount_pay": 21605,
                "curr_pay": "RUB",
                "card": "",
                "status_code": "paid"
            },
            "order_price_details": {
                "my_agent_fee": 300,
                "affiliate_fee": 0,
                "agent_affiliate_fee": 0,
                "partner_affiliate_fee": 0,
                "comsa": 2,
                "total_agent_profit": 2,
                "tickets_price": 21603,
                "insurance_price": 0,
                "acquiring": 0,
                "total_price": 21605
            },
            "passengers_price_details": [
                {
                    "key": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                    "affiliate_fee": 0,
                    "agent_affiliate_fee": 0,
                    "partner_affiliate_fee": 0,
                    "comsa": 1,
                    "ticket_price": 11184,
                    "acquiring": 0,
                    "insurance_price": 0,
                    "vat": 0,
                    "taxes_amount": 4100,
                    "tariff": 6930,
                    "fee": 155,
                    "commissions": {
                        "other_commission": 0.69
                    },
                    "taxes": [
                        {
                            "code": "YQ",
                            "amount": 1485,
                            "currency": "RUB"
                        },
                        {
                            "code": "YR",
                            "amount": 215,
                            "currency": "RUB"
                        },
                        {
                            "code": "FX",
                            "amount": 272,
                            "currency": "RUB"
                        },
                        {
                            "code": "UZ",
                            "amount": 770,
                            "currency": "RUB"
                        },
                        {
                            "code": "A2",
                            "amount": 1358,
                            "currency": "RUB"
                        }
                    ],
                    "uuid": "9f91f38d-9a55-4409-aabe-53541cc4ccdf",
                    "refund_amount": 0,
                    "refund_amounts": ""
                },
                {
                    "key": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                    "affiliate_fee": 0,
                    "agent_affiliate_fee": 0,
                    "partner_affiliate_fee": 0,
                    "comsa": 1,
                    "ticket_price": 10419,
                    "acquiring": 0,
                    "insurance_price": 0,
                    "vat": 45.83,
                    "taxes_amount": 275,
                    "tariff": 10000,
                    "fee": 145,
                    "commissions": {
                        "other_commission": 1
                    },
                    "taxes": [
                        {
                            "code": "ZZ",
                            "amount": 185,
                            "currency": "RUB"
                        },
                        {
                            "code": "YR",
                            "amount": 90,
                            "currency": "RUB"
                        }
                    ],
                    "uuid": "9f91f38d-9a55-4409-aabe-53541cc4ccdf",
                    "refund_amount": 0,
                    "refund_amounts": ""
                }
            ],
            "refund_request_already_sent": false,
            "is_price_changed": false,
            "is_search_price_changed": false,
            "is_payment_disabled": false,
            "payment_disabling_reason": "",
            "disabling_reason_ticket": "",
            "refund_availability": {
                "is_auto_refund_request_available": false,
                "tickets": []
            },
            "is_eticket_available": true,
            "documents": {
                "adt": {
                    "ru": [
                        "P"
                    ],
                    "other": [
                        "A"
                    ]
                },
                "chd": {
                    "ru": [
                        "P"
                    ],
                    "other": [
                        "A"
                    ]
                },
                "inf": {
                    "ru": [
                        "P"
                    ],
                    "other": [
                        "A"
                    ]
                },
                "ins": {
                    "ru": [
                        "P"
                    ],
                    "other": [
                        "A"
                    ]
                },
                "src": {
                    "ru": [
                        "P"
                    ],
                    "other": []
                },
                "yth": {
                    "ru": [
                        "P"
                    ],
                    "other": []
                }
            },
            "agent_mode_prices": {
                "debit_from_balance": 21605,
                "total_amount_for_active_agent_mode": 21603,
                "passengers_amounts_details": [
                    {
                        "key": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                        "service_amount_for_active_agent_mode": 11184,
                        "service_amount_for_non_active_agent_mode": 11185
                    },
                    {
                        "key": "RAVSHANOV_ABROR_AD0172708_19-11-2004",
                        "service_amount_for_active_agent_mode": 10419,
                        "service_amount_for_non_active_agent_mode": 10420
                    }
                ]
            }
        }
    }
};
}
