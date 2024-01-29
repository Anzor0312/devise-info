class PaymentConfirmModel {
  Book book;

  PaymentConfirmModel({
    required this.book,
  });

  factory PaymentConfirmModel.fromJson(Map<String, dynamic> json) =>
      PaymentConfirmModel(
        book: json["book"] != null
            ? Book.fromJson(json["book"])
            : Book(
                order: Order(
                    orderId: 0,
                    billingNumber: 0,
                    channel: Channel(code: "", source: Source(code: "")),
                    sig: "",
                    expire: "",
                    expireRemain: 0,
                    created: "",
                    status: OrderStatus(sign: "", title: ""),
                    userId: 0,
                    isReal: false,
                    price: Price(
                        rub: Rub(
                            fare: 0,
                            fee: 0,
                            taxes: 0,
                            insurance: 0,
                            discount: 0,
                            extraBaggage: 0,
                            amount: 0,
                            amountBase: 0,
                            amountWithoutPaymentExpense: 0)),
                    payment: Payment(
                        paySystem: "",
                        payCode: "",
                        merchant: '',
                        typePay: "",
                        date: "",
                        amountPay: 0,
                        currPay: "",
                        card: '',
                        statusCode: "",
                        method: ""),
                    alfaPodeliPayment: "",
                    payments: []),
                isVtrip: false,
                tickets: [],
                flight: BookFlight(
                    duration: 0,
                    type: "",
                    isVtrip: false,
                    fareFamilyType: "",
                    provider: FlightProvider(
                        gds: "",
                        name: "",
                        supplier: Supplier(id: "", code: "", title: "")),
                    segments: [],
                    isTourOperator: false),
                passengers: [],
                insurances: [],
                payedData: PayedData(
                    paySystem: "",
                    payCode: "",
                    merchant: "",
                    typePay: "",
                    date: "",
                    amountPay: 0,
                    currPay: "",
                    card: "",
                    statusCode: ""),
                orderPriceDetails: OrderPriceDetails(
                    myAgentFee: 0,
                    affiliateFee: 0,
                    agentAffiliateFee: 0,
                    partnerAffiliateFee: 0,
                    comsa: 0,
                    totalAgentProfit: 0,
                    ticketsPrice: 0,
                    insurancePrice: 0,
                    acquiring: 0,
                    totalPrice: 0),
                passengersPriceDetails: [],
                refundRequestAlreadySent: false,
                isPriceChanged: false,
                isSearchPriceChanged: false,
                isPaymentDisabled: false,
                paymentDisablingReason: "",
                disablingReasonTicket: "",
                refundAvailability: RefundAvailability(
                    isAutoRefundRequestAvailable: false, tickets: []),
                isEticketAvailable: false,
                documents: BookDocuments(
                    adt: Adt(ru: [], other: []),
                    chd: Adt(ru: [], other: []),
                    inf: Adt(ru: [], other: []),
                    ins: Adt(ru: [], other: []),
                    src: Src(ru: [], other: []),
                    yth: Src(ru: [], other: [])),
                agentModePrices: AgentModePrices(
                    debitFromBalance: 0,
                    totalAmountForActiveAgentMode: 0,
                    passengersAmountsDetails: [])),
      );

  Map<String, dynamic> toJson() => {
        "book": book.toJson(),
      };
}

class Book {
  Order order;
  bool isVtrip;
  List<Ticket> tickets;
  BookFlight flight;
  List<Passenger> passengers;
  List<dynamic> insurances;
  PayedData payedData;
  OrderPriceDetails orderPriceDetails;
  List<PassengersPriceDetail> passengersPriceDetails;
  bool refundRequestAlreadySent;
  bool isPriceChanged;
  bool isSearchPriceChanged;
  bool isPaymentDisabled;
  String paymentDisablingReason;
  String disablingReasonTicket;
  RefundAvailability refundAvailability;
  bool isEticketAvailable;
  BookDocuments documents;
  AgentModePrices agentModePrices;

  Book({
    required this.order,
    required this.isVtrip,
    required this.tickets,
    required this.flight,
    required this.passengers,
    required this.insurances,
    required this.payedData,
    required this.orderPriceDetails,
    required this.passengersPriceDetails,
    required this.refundRequestAlreadySent,
    required this.isPriceChanged,
    required this.isSearchPriceChanged,
    required this.isPaymentDisabled,
    required this.paymentDisablingReason,
    required this.disablingReasonTicket,
    required this.refundAvailability,
    required this.isEticketAvailable,
    required this.documents,
    required this.agentModePrices,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
      order: json["order"] != null
          ? Order.fromJson(json["order"])
          : Order(
              orderId: 0,
              billingNumber: 0,
              channel: Channel(code: "", source: Source(code: "")),
              sig: "",
              expire: "",
              expireRemain: 0,
              created: "",
              status: OrderStatus(sign: "", title: ""),
              userId: 0,
              isReal: false,
              price: Price(
                  rub: Rub(
                      fare: 0,
                      fee: 0,
                      taxes: 0,
                      insurance: 0,
                      discount: 0,
                      extraBaggage: 0,
                      amount: 0,
                      amountBase: 0,
                      amountWithoutPaymentExpense: 0)),
              payment: Payment(
                  paySystem: "",
                  payCode: "",
                  merchant: '',
                  typePay: "",
                  date: "",
                  amountPay: 0,
                  currPay: "",
                  card: '',
                  statusCode: "",
                  method: ""),
              alfaPodeliPayment: "",
              payments: []),
      isVtrip: json["is_vtrip"] ?? false,
      tickets: json["tickets"] != null
          ? List<Ticket>.from(json["tickets"].map((x) => Ticket.fromJson(x)))
          : [],
      flight: json["flight"] != null
          ? BookFlight.fromJson(json["flight"])
          : BookFlight(
              duration: 0,
              type: "",
              isVtrip: false,
              fareFamilyType: "",
              provider: FlightProvider(
                  gds: "",
                  name: "",
                  supplier: Supplier(id: "", code: "", title: "")),
              segments: [],
              isTourOperator: false),
      passengers: json["passengers"] != null
          ? List<Passenger>.from(
              json["passengers"].map((x) => Passenger.fromJson(x)))
          : [],
      insurances: json["insurances"] != null
          ? List<dynamic>.from(json["insurances"].map((x) => x))
          : [],
      payedData: json["payed_data"] != null
          ? PayedData.fromJson(json["payed_data"])
          : PayedData(
              paySystem: "",
              payCode: "",
              merchant: "",
              typePay: "",
              date: "",
              amountPay: 0,
              currPay: "",
              card: "",
              statusCode: ""),
      orderPriceDetails: json["order_price_details"] != null
          ? OrderPriceDetails.fromJson(json["order_price_details"])
          : OrderPriceDetails(
              myAgentFee: 0,
              affiliateFee: 0,
              agentAffiliateFee: 0,
              partnerAffiliateFee: 0,
              comsa: 0,
              totalAgentProfit: 0,
              ticketsPrice: 0,
              insurancePrice: 0,
              acquiring: 0,
              totalPrice: 0),
      passengersPriceDetails: json["passengers_price_details"] != null
          ? List<PassengersPriceDetail>.from(json["passengers_price_details"]
              .map((x) => PassengersPriceDetail.fromJson(x)))
          : [],
      refundRequestAlreadySent: json["refund_request_already_sent"] ?? false,
      isPriceChanged: json["is_price_changed"] ?? false,
      isSearchPriceChanged: json["is_search_price_changed"] ?? false,
      isPaymentDisabled: json["is_payment_disabled"] ?? false,
      paymentDisablingReason: json["payment_disabling_reason"] ?? "",
      disablingReasonTicket: json["disabling_reason_ticket"] ?? "",
      refundAvailability: json["refund_availability"] != null
          ? RefundAvailability.fromJson(json["refund_availability"])
          : RefundAvailability(
              isAutoRefundRequestAvailable: false, tickets: []),
      isEticketAvailable: json["is_eticket_available"] ?? false,
      documents: json["documents"] != null ? BookDocuments.fromJson(json["documents"]) : BookDocuments(adt: Adt(ru: [], other: []), chd: Adt(ru: [], other: []), inf: Adt(ru: [], other: []), ins: Adt(ru: [], other: []), src: Src(ru: [], other: []), yth: Src(ru: [], other: [])),
      agentModePrices: json["agent_mode_prices"] != null ? AgentModePrices.fromJson(json["agent_mode_prices"]) : AgentModePrices(debitFromBalance: 0, totalAmountForActiveAgentMode: 0, passengersAmountsDetails: []));

  Map<String, dynamic> toJson() => {
        "order": order.toJson(),
        "is_vtrip": isVtrip,
        "tickets": List<dynamic>.from(tickets.map((x) => x.toJson())),
        "flight": flight.toJson(),
        "passengers": List<dynamic>.from(passengers.map((x) => x.toJson())),
        "insurances": List<dynamic>.from(insurances.map((x) => x)),
        "payed_data": payedData.toJson(),
        "order_price_details": orderPriceDetails.toJson(),
        "passengers_price_details":
            List<dynamic>.from(passengersPriceDetails.map((x) => x.toJson())),
        "refund_request_already_sent": refundRequestAlreadySent,
        "is_price_changed": isPriceChanged,
        "is_search_price_changed": isSearchPriceChanged,
        "is_payment_disabled": isPaymentDisabled,
        "payment_disabling_reason": paymentDisablingReason,
        "disabling_reason_ticket": disablingReasonTicket,
        "refund_availability": refundAvailability.toJson(),
        "is_eticket_available": isEticketAvailable,
        "documents": documents.toJson(),
        "agent_mode_prices": agentModePrices.toJson(),
      };
}

class AgentModePrices {
  int debitFromBalance;
  int totalAmountForActiveAgentMode;
  List<PassengersAmountsDetail> passengersAmountsDetails;

  AgentModePrices({
    required this.debitFromBalance,
    required this.totalAmountForActiveAgentMode,
    required this.passengersAmountsDetails,
  });

  factory AgentModePrices.fromJson(Map<String, dynamic> json) =>
      AgentModePrices(
        debitFromBalance: json["debit_from_balance"] ?? 0,
        totalAmountForActiveAgentMode:
            json["total_amount_for_active_agent_mode"] ?? 0,
        passengersAmountsDetails: json["passengers_amounts_details"] != null
            ? List<PassengersAmountsDetail>.from(
                json["passengers_amounts_details"]
                    .map((x) => PassengersAmountsDetail.fromJson(x)))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "debit_from_balance": debitFromBalance,
        "total_amount_for_active_agent_mode": totalAmountForActiveAgentMode,
        "passengers_amounts_details":
            List<dynamic>.from(passengersAmountsDetails.map((x) => x.toJson())),
      };
}

class PassengersAmountsDetail {
  String key;
  int serviceAmountForActiveAgentMode;
  int serviceAmountForNonActiveAgentMode;

  PassengersAmountsDetail({
    required this.key,
    required this.serviceAmountForActiveAgentMode,
    required this.serviceAmountForNonActiveAgentMode,
  });

  factory PassengersAmountsDetail.fromJson(Map<String, dynamic> json) =>
      PassengersAmountsDetail(
        key: json["key"] ?? "",
        serviceAmountForActiveAgentMode:
            json["service_amount_for_active_agent_mode"] ?? 0,
        serviceAmountForNonActiveAgentMode:
            json["service_amount_for_non_active_agent_mode"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "service_amount_for_active_agent_mode": serviceAmountForActiveAgentMode,
        "service_amount_for_non_active_agent_mode":
            serviceAmountForNonActiveAgentMode,
      };
}

class BookDocuments {
  Adt adt;
  Adt chd;
  Adt inf;
  Adt ins;
  Src src;
  Src yth;

  BookDocuments({
    required this.adt,
    required this.chd,
    required this.inf,
    required this.ins,
    required this.src,
    required this.yth,
  });

  factory BookDocuments.fromJson(Map<String, dynamic> json) => BookDocuments(
        adt: json["adt"] != null
            ? Adt.fromJson(json["adt"])
            : Adt(ru: [], other: []),
        chd: json["chd"] != null
            ? Adt.fromJson(json["chd"])
            : Adt(ru: [], other: []),
        inf: json["inf"] != null
            ? Adt.fromJson(json["inf"])
            : Adt(ru: [], other: []),
        ins: json["ins"] != null
            ? Adt.fromJson(json["ins"])
            : Adt(ru: [], other: []),
        src: json["src"] != null
            ? Src.fromJson(json["src"])
            : Src(ru: [], other: []),
        yth: json["yth"] != null
            ? Src.fromJson(json["yth"])
            : Src(ru: [], other: []),
      );

  Map<String, dynamic> toJson() => {
        "adt": adt.toJson(),
        "chd": chd.toJson(),
        "inf": inf.toJson(),
        "ins": ins.toJson(),
        "src": src.toJson(),
        "yth": yth.toJson(),
      };
}

class Adt {
  List<String> ru;
  List<String> other;

  Adt({
    required this.ru,
    required this.other,
  });

  factory Adt.fromJson(Map<String, dynamic> json) => Adt(
        ru: json["ru"] != null
            ? List<String>.from(json["ru"].map((x) => x))
            : [],
        other: json["other"] != null
            ? List<String>.from(json["other"].map((x) => x))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "ru": List<dynamic>.from(ru.map((x) => x)),
        "other": List<dynamic>.from(other.map((x) => x)),
      };
}

class Src {
  List<String> ru;
  List<dynamic> other;

  Src({
    required this.ru,
    required this.other,
  });

  factory Src.fromJson(Map<String, dynamic> json) => Src(
        ru: json["ru"] != null
            ? List<String>.from(json["ru"].map((x) => x))
            : [],
        other: json["other"] != null
            ? List<String>.from(json["other"].map((x) => x))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "ru": List<dynamic>.from(ru.map((x) => x)),
        "other": List<dynamic>.from(other.map((x) => x)),
      };
}

class BookFlight {
  int duration;
  String type;
  bool isVtrip;
  String fareFamilyType;
  FlightProvider provider;
  List<Segment> segments;
  bool isTourOperator;

  BookFlight({
    required this.duration,
    required this.type,
    required this.isVtrip,
    required this.fareFamilyType,
    required this.provider,
    required this.segments,
    required this.isTourOperator,
  });

  factory BookFlight.fromJson(Map<String, dynamic> json) => BookFlight(
        duration: json["duration"] ?? 0,
        type: json["type"] ?? "",
        isVtrip: json["is_vtrip"] ?? false,
        fareFamilyType: json["fare_family_type"] ?? "",
        provider: json["provider"] != null
            ? FlightProvider.fromJson(json["provider"])
            : FlightProvider(
                gds: "",
                name: "",
                supplier: Supplier(id: "", code: "", title: "")),
        segments: json["segments"] != null
            ? List<Segment>.from(
                json["segments"].map((x) => Segment.fromJson(x)))
            : [],
        isTourOperator: json["is_tour_operator"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "duration": duration,
        "type": type,
        "is_vtrip": isVtrip,
        "fare_family_type": fareFamilyType,
        "provider": provider.toJson(),
        "segments": List<dynamic>.from(segments.map((x) => x.toJson())),
        "is_tour_operator": isTourOperator,
      };
}

class FlightProvider {
  String gds;
  String name;
  Supplier supplier;

  FlightProvider({
    required this.gds,
    required this.name,
    required this.supplier,
  });

  factory FlightProvider.fromJson(Map<String, dynamic> json) => FlightProvider(
        gds: json["gds"] ?? "",
        name: json["name"] ?? "",
        supplier: json["supplier"] != null
            ? Supplier.fromJson(json["supplier"])
            : Supplier(id: "", code: "", title: ""),
      );

  Map<String, dynamic> toJson() => {
        "gds": gds,
        "name": name,
        "supplier": supplier.toJson(),
      };
}

class Supplier {
  String id;
  String code;
  String title;

  Supplier({
    required this.id,
    required this.code,
    required this.title,
  });

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
        id: json["id"] ?? "",
        code: json["code"] ?? "",
        title: json["title"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "title": title,
      };
}

class Segment {
  int ticketDuration;
  String type;
  SegmentProvider provider;
  NewValueClass baggage;
  String comment;
  Cbaggage cbaggage;
  bool isRefund;
  bool isChange;
  Arr arr;
  Arr dep;
  String aircraft;
  AircraftDetails aircraftDetails;
  String flightNumber;
  int direction;
  Duration duration;
  Class segmentClass;
  String fareCode;
  Carrier carrier;
  bool isMiniRulesExists;
  bool isOnlineCheckinRequired;
  List<dynamic> stops;
  SegmentStatus status;
  List<FlightChange> flightChanges;
  List<ParametersForEachPassenger> parametersForEachPassenger;
  bool baggageRecheck;
  String refundedStatus;

  Segment({
    required this.ticketDuration,
    required this.type,
    required this.provider,
    required this.baggage,
    required this.comment,
    required this.cbaggage,
    required this.isRefund,
    required this.isChange,
    required this.arr,
    required this.dep,
    required this.aircraft,
    required this.aircraftDetails,
    required this.flightNumber,
    required this.direction,
    required this.duration,
    required this.segmentClass,
    required this.fareCode,
    required this.carrier,
    required this.isMiniRulesExists,
    required this.isOnlineCheckinRequired,
    required this.stops,
    required this.status,
    required this.flightChanges,
    required this.parametersForEachPassenger,
    required this.baggageRecheck,
    required this.refundedStatus,
  });

  factory Segment.fromJson(Map<String, dynamic> json) => Segment(
        ticketDuration: json["ticket_duration"] ?? 0,
        type: json["type"] ?? "",
        provider: json["provider"] != null
            ? SegmentProvider.fromJson(json["provider"])
            : SegmentProvider(
                gds: 0,
                name: "",
                supplier: Carrier(id: 0, code: "", title: "")),
        baggage: json["baggage"] != null
            ? NewValueClass.fromJson(json["baggage"])
            : NewValueClass(piece: 0, weight: ""),
        comment: json["comment"] ?? "",
        cbaggage: json["cbaggage"] != null
            ? Cbaggage.fromJson(json["cbaggage"])
            : Cbaggage(piece: 0, weight: 0),
        isRefund: json["is_refund"] ?? false,
        isChange: json["is_change"] ?? "",
        arr: json["arr"] != null
            ? Arr.fromJson(json["arr"])
            : Arr(
                airport: Carrier(id: 0, code: "", title: ""),
                city: Carrier(id: 0, code: "", title: ""),
                country: Carrier(id: 0, code: "", title: ""),
                date: "",
                datetime: "",
                region: Supplier(id: "", code: "", title: ""),
                terminal: "",
                time: ""),
        dep: json["dep"] != null
            ? Arr.fromJson(json["dep"])
            : Arr(
                airport: Carrier(id: 0, code: "", title: ""),
                city: Carrier(id: 0, code: "", title: ""),
                country: Carrier(id: 0, code: "", title: ""),
                date: "",
                datetime: "",
                region: Supplier(id: "", code: "", title: ""),
                terminal: "",
                time: ""),
        aircraft: json["aircraft"] ?? "",
        aircraftDetails: json["aircraft_details"] != null
            ? AircraftDetails.fromJson(json["aircraft_details"])
            : AircraftDetails(code: "", title: ""),
        flightNumber: json["flight_number"] ?? "",
        direction: json["direction"] ?? 0,
        duration: json["duration"] != null
            ? Duration.fromJson(json["duration"])
            : Duration(flight: DurationFlight(common: 0, hour: 0, minute: 0)),
        segmentClass: Class.fromJson(json["class"]),
        fareCode: json["fare_code"] ?? "",
        carrier: json["carrier"] != null
            ? Carrier.fromJson(json["carrier"])
            : Carrier(id: 0, code: "", title: ""),
        isMiniRulesExists: json["is_mini_rules_exists"] ?? false,
        isOnlineCheckinRequired: json["is_online_checkin_required"] ?? false,
        stops: json["stops"] != null
            ? List<dynamic>.from(json["stops"].map((x) => x))
            : [],
        status: json["status"] != null
            ? SegmentStatus.fromJson(json["status"])
            : SegmentStatus(code: "", description: ""),
        flightChanges: json["flight_changes"] != null
            ? List<FlightChange>.from(
                json["flight_changes"].map((x) => FlightChange.fromJson(x)))
            : [],
        parametersForEachPassenger:
            json["parameters_for_each_passenger"] != null
                ? List<ParametersForEachPassenger>.from(
                    json["parameters_for_each_passenger"]
                        .map((x) => ParametersForEachPassenger.fromJson(x)))
                : [],
        baggageRecheck: json["baggage_recheck"] ?? false,
        refundedStatus: json["refunded_status"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "ticket_duration": ticketDuration,
        "type": type,
        "provider": provider.toJson(),
        "baggage": baggage.toJson(),
        "comment": comment,
        "cbaggage": cbaggage.toJson(),
        "is_refund": isRefund,
        "is_change": isChange,
        "arr": arr.toJson(),
        "dep": dep.toJson(),
        "aircraft": aircraft,
        "aircraft_details": aircraftDetails.toJson(),
        "flight_number": flightNumber,
        "direction": direction,
        "duration": duration.toJson(),
        "class": segmentClass.toJson(),
        "fare_code": fareCode,
        "carrier": carrier.toJson(),
        "is_mini_rules_exists": isMiniRulesExists,
        "is_online_checkin_required": isOnlineCheckinRequired,
        "stops": List<dynamic>.from(stops.map((x) => x)),
        "status": status.toJson(),
        "flight_changes":
            List<dynamic>.from(flightChanges.map((x) => x.toJson())),
        "parameters_for_each_passenger": List<dynamic>.from(
            parametersForEachPassenger.map((x) => x.toJson())),
        "baggage_recheck": baggageRecheck,
        "refunded_status": refundedStatus,
      };
}

class AircraftDetails {
  String code;
  String title;

  AircraftDetails({
    required this.code,
    required this.title,
  });

  factory AircraftDetails.fromJson(Map<String, dynamic> json) =>
      AircraftDetails(
        code: json["code"] ?? "",
        title: json["title"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "title": title,
      };
}

class Arr {
  String date;
  String time;
  String datetime;
  String terminal;
  Carrier airport;
  Carrier city;
  Supplier region;
  Carrier country;

  Arr({
    required this.date,
    required this.time,
    required this.datetime,
    required this.terminal,
    required this.airport,
    required this.city,
    required this.region,
    required this.country,
  });

  factory Arr.fromJson(Map<String, dynamic> json) => Arr(
        date: json["date"] ?? "",
        time: json["time"] ?? '',
        datetime: json["datetime"] ?? "",
        terminal: json["terminal"] ?? "",
        airport: json["airport"] != null
            ? Carrier.fromJson(json["airport"])
            : Carrier(id: 0, code: "", title: ""),
        city: json["city"] != null
            ? Carrier.fromJson(json["city"])
            : Carrier(id: 0, code: "", title: ""),
        region: json["region"] != null
            ? Supplier.fromJson(json["region"])
            : Supplier(id: "", code: "", title: ""),
        country: json["country"] != null
            ? Carrier.fromJson(json["country"])
            : Carrier(id: 0, code: "", title: ""),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "time": time,
        "datetime": datetime,
        "terminal": terminal,
        "airport": airport.toJson(),
        "city": city.toJson(),
        "region": region.toJson(),
        "country": country.toJson(),
      };
}

class Carrier {
  int id;
  String code;
  String title;

  Carrier({
    required this.id,
    required this.code,
    required this.title,
  });

  factory Carrier.fromJson(Map<String, dynamic> json) => Carrier(
        id: json["id"] ?? 0,
        code: json["code"] ?? "",
        title: json["title"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "title": title,
      };
}

class NewValueClass {
  int piece;
  String weight;

  NewValueClass({
    required this.piece,
    required this.weight,
  });

  factory NewValueClass.fromJson(Map<String, dynamic> json) => NewValueClass(
        piece: json["piece"] ?? 0,
        weight: json["weight"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "piece": piece,
        "weight": weight,
      };
}

class Cbaggage {
  int piece;
  int weight;

  Cbaggage({
    required this.piece,
    required this.weight,
  });

  factory Cbaggage.fromJson(Map<String, dynamic> json) => Cbaggage(
        piece: json["piece"] ?? 0,
        weight: json["weight"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "piece": piece,
        "weight": weight,
      };
}

class Duration {
  DurationFlight flight;

  Duration({
    required this.flight,
  });

  factory Duration.fromJson(Map<String, dynamic> json) => Duration(
        flight: json["flight"] != null
            ? DurationFlight.fromJson(json["flight"])
            : DurationFlight(common: 0, hour: 0, minute: 0),
      );

  Map<String, dynamic> toJson() => {
        "flight": flight.toJson(),
      };
}

class DurationFlight {
  int common;
  int hour;
  int minute;

  DurationFlight({
    required this.common,
    required this.hour,
    required this.minute,
  });

  factory DurationFlight.fromJson(Map<String, dynamic> json) => DurationFlight(
        common: json["common"] ?? 0,
        hour: json["hour"] ?? 0,
        minute: json["minute"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "hour": hour,
        "minute": minute,
      };
}

class FlightChange {
  FlightChangeBaggage baggage;
  CabinBaggage cabinBaggage;

  FlightChange({
    required this.baggage,
    required this.cabinBaggage,
  });

  factory FlightChange.fromJson(Map<String, dynamic> json) => FlightChange(
        baggage: json["baggage"] != null
            ? FlightChangeBaggage.fromJson(json["baggage"])
            : FlightChangeBaggage(
                fieldName: "",
                oldValue: Cbaggage(piece: 0, weight: 0),
                newValue: NewValueClass(piece: 0, weight: "")),
        cabinBaggage: json["cabin_baggage"] != null
            ? CabinBaggage.fromJson(json["cabin_baggage"])
            : CabinBaggage(
                fieldName: "",
                oldValue: OldValue(piece: "", weight: ""),
                newValue: Cbaggage(piece: 0, weight: 0)),
      );

  Map<String, dynamic> toJson() => {
        "baggage": baggage.toJson(),
        "cabin_baggage": cabinBaggage.toJson(),
      };
}

class FlightChangeBaggage {
  String fieldName;
  Cbaggage oldValue;
  NewValueClass newValue;

  FlightChangeBaggage({
    required this.fieldName,
    required this.oldValue,
    required this.newValue,
  });

  factory FlightChangeBaggage.fromJson(Map<String, dynamic> json) =>
      FlightChangeBaggage(
        fieldName: json["field_name"] ?? "",
        oldValue: json["old_value"] != null
            ? Cbaggage.fromJson(json["old_value"])
            : Cbaggage(piece: 0, weight: 0),
        newValue: json["new_value"] != null
            ? NewValueClass.fromJson(json["new_value"])
            : NewValueClass(piece: 0, weight: ""),
      );

  Map<String, dynamic> toJson() => {
        "field_name": fieldName,
        "old_value": oldValue.toJson(),
        "new_value": newValue.toJson(),
      };
}

class CabinBaggage {
  String fieldName;
  OldValue oldValue;
  Cbaggage newValue;

  CabinBaggage({
    required this.fieldName,
    required this.oldValue,
    required this.newValue,
  });

  factory CabinBaggage.fromJson(Map<String, dynamic> json) => CabinBaggage(
        fieldName: json["field_name"] ?? 0,
        oldValue: json["old_value"] != null
            ? OldValue.fromJson(json["old_value"])
            : OldValue(piece: "", weight: ""),
        newValue: json["new_value"] != null
            ? Cbaggage.fromJson(json["new_value"])
            : Cbaggage(piece: 0, weight: 0),
      );

  Map<String, dynamic> toJson() => {
        "field_name": fieldName,
        "old_value": oldValue.toJson(),
        "new_value": newValue.toJson(),
      };
}

class OldValue {
  String piece;
  String weight;

  OldValue({
    required this.piece,
    required this.weight,
  });

  factory OldValue.fromJson(Map<String, dynamic> json) => OldValue(
        piece: json["piece"] ?? "",
        weight: json["weight"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "piece": piece,
        "weight": weight,
      };
}

class ParametersForEachPassenger {
  String passengerId;
  String flightComment;
  bool isRefundable;
  bool isExchangeable;
  FlightClass flightClass;
  ParametersForEachPassengerBaggage baggage;
  CarryOnBaggage carryOnBaggage;
  String ticketNumber;
  String brand;

  ParametersForEachPassenger({
    required this.passengerId,
    required this.flightComment,
    required this.isRefundable,
    required this.isExchangeable,
    required this.flightClass,
    required this.baggage,
    required this.carryOnBaggage,
    required this.ticketNumber,
    required this.brand,
  });

  factory ParametersForEachPassenger.fromJson(Map<String, dynamic> json) =>
      ParametersForEachPassenger(
        passengerId: json["passenger_id"] ?? "",
        flightComment: json["flight_comment"] ?? "",
        isRefundable: json["is_refundable"] ?? false,
        isExchangeable: json["is_exchangeable"] ?? false,
        flightClass: FlightClass.fromJson(json["flight_class"]),
        baggage: json["baggage"] != null
            ? ParametersForEachPassengerBaggage.fromJson(json["baggage"])
            : ParametersForEachPassengerBaggage(
                bagsCount: 0, weight: "", weightUnit: "", dimensions: ""),
        carryOnBaggage: json["carry_on_baggage"] != null
            ? CarryOnBaggage.fromJson(json["carry_on_baggage"])
            : CarryOnBaggage(
                bagsCount: 0,
                weight: 0,
                weightUnit: "",
                dimensions: Dimensions(width: 0, length: 0, height: 0)),
        ticketNumber: json["ticket_number"] ?? "",
        brand: json["brand"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "passenger_id": passengerId,
        "flight_comment": flightComment,
        "is_refundable": isRefundable,
        "is_exchangeable": isExchangeable,
        "flight_class": flightClass.toJson(),
        "baggage": baggage.toJson(),
        "carry_on_baggage": carryOnBaggage.toJson(),
        "ticket_number": ticketNumber,
        "brand": brand,
      };
}

class ParametersForEachPassengerBaggage {
  int bagsCount;
  String weight;
  String weightUnit;
  String dimensions;

  ParametersForEachPassengerBaggage({
    required this.bagsCount,
    required this.weight,
    required this.weightUnit,
    required this.dimensions,
  });

  factory ParametersForEachPassengerBaggage.fromJson(
          Map<String, dynamic> json) =>
      ParametersForEachPassengerBaggage(
        bagsCount: json["bags_count"] ?? 0,
        weight: json["weight"] ?? "",
        weightUnit: json["weight_unit"] ?? "",
        dimensions: json["dimensions"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "bags_count": bagsCount,
        "weight": weight,
        "weight_unit": weightUnit,
        "dimensions": dimensions,
      };
}

class CarryOnBaggage {
  int bagsCount;
  dynamic weight;
  String weightUnit;
  Dimensions dimensions;

  CarryOnBaggage({
    required this.bagsCount,
    required this.weight,
    required this.weightUnit,
    required this.dimensions,
  });

  factory CarryOnBaggage.fromJson(Map<String, dynamic> json) => CarryOnBaggage(
        bagsCount: json["bags_count"] ?? 0,
        weight: json["weight"] ?? 0,
        weightUnit: json["weight_unit"] ?? "",
        dimensions: json["dimensions"] != null
            ? Dimensions.fromJson(json["dimensions"])
            : Dimensions(width: 0, length: 0, height: 0),
      );

  Map<String, dynamic> toJson() => {
        "bags_count": bagsCount,
        "weight": weight,
        "weight_unit": weightUnit,
        "dimensions": dimensions.toJson(),
      };
}

class Dimensions {
  int width;
  int length;
  int height;

  Dimensions({
    required this.width,
    required this.length,
    required this.height,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        width: json["width"] ?? 0,
        length: json["length"] ?? 0,
        height: json["height"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "length": length,
        "height": height,
      };
}

class FlightClass {
  int id;
  String title;
  String providerCode;

  FlightClass({
    required this.id,
    required this.title,
    required this.providerCode,
  });

  factory FlightClass.fromJson(Map<String, dynamic> json) => FlightClass(
        id: json["id"] ?? 0,
        title: json["title"] ?? "",
        providerCode: json["provider_code"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "provider_code": providerCode,
      };
}

class SegmentProvider {
  int gds;
  String name;
  Carrier supplier;

  SegmentProvider({
    required this.gds,
    required this.name,
    required this.supplier,
  });

  factory SegmentProvider.fromJson(Map<String, dynamic> json) =>
      SegmentProvider(
        gds: json["gds"] ?? 0,
        name: json["name"] ?? "",
        supplier: json["supplier"] != null
            ? Carrier.fromJson(json["supplier"])
            : Carrier(id: 0, code: "", title: ""),
      );

  Map<String, dynamic> toJson() => {
        "gds": gds,
        "name": name,
        "supplier": supplier.toJson(),
      };
}

class Class {
  int typeId;
  String name;
  String title;

  Class({
    required this.typeId,
    required this.name,
    required this.title,
  });

  factory Class.fromJson(Map<String, dynamic> json) => Class(
        typeId: json["type_id"] ?? 0,
        name: json["name"] ?? "",
        title: json["title"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "type_id": typeId,
        "name": name,
        "title": title,
      };
}

class SegmentStatus {
  String code;
  String description;

  SegmentStatus({
    required this.code,
    required this.description,
  });

  factory SegmentStatus.fromJson(Map<String, dynamic> json) => SegmentStatus(
        code: json["code"] ?? "",
        description: json["description"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "description": description,
      };
}

class Order {
  int orderId;
  int billingNumber;
  Channel channel;
  String sig;
  String expire;
  int expireRemain;
  String created;
  OrderStatus status;
  int userId;
  bool isReal;
  Price price;
  Payment payment;
  String alfaPodeliPayment;
  List<dynamic> payments;

  Order({
    required this.orderId,
    required this.billingNumber,
    required this.channel,
    required this.sig,
    required this.expire,
    required this.expireRemain,
    required this.created,
    required this.status,
    required this.userId,
    required this.isReal,
    required this.price,
    required this.payment,
    required this.alfaPodeliPayment,
    required this.payments,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        orderId: json["order_id"] ?? 0,
        billingNumber: json["billing_number"] ?? 0,
        channel: json["channel"] != null
            ? Channel.fromJson(json["channel"])
            : Channel(code: "", source: Source(code: "")),
        sig: json["sig"] ?? "",
        expire: json["expire"],
        expireRemain: json["expire_remain"] ?? "",
        created: json["created"] ?? "",
        status: json["status"] != null
            ? OrderStatus.fromJson(json["status"])
            : OrderStatus(sign: "", title: ""),
        userId: json["user_id"] ?? 0,
        isReal: json["is_real"] ?? false,
        price: json["price"] != null
            ? Price.fromJson(json["price"])
            : Price(
                rub: Rub(
                    fare: 0,
                    fee: 0,
                    taxes: 0,
                    insurance: 0,
                    discount: 0,
                    extraBaggage: 0,
                    amount: 0,
                    amountBase: 0,
                    amountWithoutPaymentExpense: 0)),
        payment: json["payment"] != null
            ? Payment.fromJson(json["payment"])
            : Payment(
                paySystem: "",
                payCode: "",
                merchant: '',
                typePay: "",
                date: "",
                amountPay: 0,
                currPay: "",
                card: '',
                statusCode: "",
                method: ""),
        alfaPodeliPayment: json["alfa_podeli_payment"] ?? "",
        payments: json["payments"] != null
            ? List<dynamic>.from(json["payments"].map((x) => x))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "billing_number": billingNumber,
        "channel": channel.toJson(),
        "sig": sig,
        "expire": expire,
        "expire_remain": expireRemain,
        "created": created,
        "status": status.toJson(),
        "user_id": userId,
        "is_real": isReal,
        "price": price.toJson(),
        "payment": payment.toJson(),
        "alfa_podeli_payment": alfaPodeliPayment,
        "payments": List<dynamic>.from(payments.map((x) => x)),
      };
}

class Channel {
  String code;
  Source source;

  Channel({
    required this.code,
    required this.source,
  });

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
        code: json["code"] ?? "",
        source: json["source"] != null
            ? Source.fromJson(json["source"])
            : Source(code: ""),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "source": source.toJson(),
      };
}

class Source {
  String code;

  Source({
    required this.code,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        code: json["code"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "code": code,
      };
}

class Payment {
  String paySystem;
  String payCode;
  String merchant;
  String typePay;
  String date;
  int amountPay;
  String currPay;
  String card;
  String statusCode;
  String method;

  Payment({
    required this.paySystem,
    required this.payCode,
    required this.merchant,
    required this.typePay,
    required this.date,
    required this.amountPay,
    required this.currPay,
    required this.card,
    required this.statusCode,
    required this.method,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        paySystem: json["pay_system"] ?? "",
        payCode: json["pay_code"] ?? "",
        merchant: json["merchant"] ?? "",
        typePay: json["type_pay"] ?? "",
        date: json["date"] ?? '',
        amountPay: json["amount_pay"] ?? 0,
        currPay: json["curr_pay"] ?? '',
        card: json["card"] ?? '',
        statusCode: json["status_code"] ?? "",
        method: json["method"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "pay_system": paySystem,
        "pay_code": payCode,
        "merchant": merchant,
        "type_pay": typePay,
        "date": date,
        "amount_pay": amountPay,
        "curr_pay": currPay,
        "card": card,
        "status_code": statusCode,
        "method": method,
      };
}

class Price {
  Rub rub;

  Price({
    required this.rub,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        rub: json["RUB"] != null
            ? Rub.fromJson(json["RUB"])
            : Rub(
                fare: 0,
                fee: 0,
                taxes: 0,
                insurance: 0,
                discount: 0,
                extraBaggage: 0,
                amount: 0,
                amountBase: 0,
                amountWithoutPaymentExpense: 0),
      );

  Map<String, dynamic> toJson() => {
        "RUB": rub.toJson(),
      };
}

class Rub {
  int fare;
  int fee;
  int taxes;
  int insurance;
  int discount;
  int extraBaggage;
  int amount;
  int amountBase;
  int amountWithoutPaymentExpense;

  Rub({
    required this.fare,
    required this.fee,
    required this.taxes,
    required this.insurance,
    required this.discount,
    required this.extraBaggage,
    required this.amount,
    required this.amountBase,
    required this.amountWithoutPaymentExpense,
  });

  factory Rub.fromJson(Map<String, dynamic> json) => Rub(
        fare: json["fare"] ?? 0,
        fee: json["fee"] ?? 0,
        taxes: json["taxes"] ?? 0,
        insurance: json["insurance"] ?? 0,
        discount: json["discount"] ?? 0,
        extraBaggage: json["extra_baggage"] ?? 0,
        amount: json["amount"] ?? 0,
        amountBase: json["amount_base"] ?? 0,
        amountWithoutPaymentExpense:
            json["amount_without_payment_expense"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "fare": fare,
        "fee": fee,
        "taxes": taxes,
        "insurance": insurance,
        "discount": discount,
        "extra_baggage": extraBaggage,
        "amount": amount,
        "amount_base": amountBase,
        "amount_without_payment_expense": amountWithoutPaymentExpense,
      };
}

class OrderStatus {
  String sign;
  String title;

  OrderStatus({
    required this.sign,
    required this.title,
  });

  factory OrderStatus.fromJson(Map<String, dynamic> json) => OrderStatus(
        sign: json["sign"] ?? '',
        title: json["title"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "sign": sign,
        "title": title,
      };
}

class OrderPriceDetails {
  int myAgentFee;
  int affiliateFee;
  int agentAffiliateFee;
  int partnerAffiliateFee;
  int comsa;
  int totalAgentProfit;
  int ticketsPrice;
  int insurancePrice;
  int acquiring;
  int totalPrice;

  OrderPriceDetails({
    required this.myAgentFee,
    required this.affiliateFee,
    required this.agentAffiliateFee,
    required this.partnerAffiliateFee,
    required this.comsa,
    required this.totalAgentProfit,
    required this.ticketsPrice,
    required this.insurancePrice,
    required this.acquiring,
    required this.totalPrice,
  });

  factory OrderPriceDetails.fromJson(Map<String, dynamic> json) =>
      OrderPriceDetails(
        myAgentFee: json["my_agent_fee"] ?? 0,
        affiliateFee: json["affiliate_fee"] ?? 0,
        agentAffiliateFee: json["agent_affiliate_fee"] ?? 0,
        partnerAffiliateFee: json["partner_affiliate_fee"] ?? 0,
        comsa: json["comsa"] ?? 0,
        totalAgentProfit: json["total_agent_profit"] ?? 0,
        ticketsPrice: json["tickets_price"] ?? 0,
        insurancePrice: json["insurance_price"] ?? 0,
        acquiring: json["acquiring"] ?? 0,
        totalPrice: json["total_price"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "my_agent_fee": myAgentFee,
        "affiliate_fee": affiliateFee,
        "agent_affiliate_fee": agentAffiliateFee,
        "partner_affiliate_fee": partnerAffiliateFee,
        "comsa": comsa,
        "total_agent_profit": totalAgentProfit,
        "tickets_price": ticketsPrice,
        "insurance_price": insurancePrice,
        "acquiring": acquiring,
        "total_price": totalPrice,
      };
}

class Passenger {
  int id;
  Name name;
  String email;
  String phone;
  String gender;
  String birthdate;
  String citizenship;
  String age;
  Document document;
  TicketData ticketData;
  String bonusCard;
  String key;
  String uuid;
  List<dynamic> insurances;
  List<dynamic> accompanyingAdults;

  Passenger({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.birthdate,
    required this.citizenship,
    required this.age,
    required this.document,
    required this.ticketData,
    required this.bonusCard,
    required this.key,
    required this.uuid,
    required this.insurances,
    required this.accompanyingAdults,
  });

  factory Passenger.fromJson(Map<String, dynamic> json) => Passenger(
        id: json["id"] ?? 0,
        name: json["name"] != null
            ? Name.fromJson(json["name"])
            : Name(first: "", last: "", middle: ""),
        email: json["email"] ?? "",
        phone: json["phone"] ?? "",
        gender: json["gender"] ?? "",
        birthdate: json["birthdate"] ?? "",
        citizenship: json["citizenship"] ?? "",
        age: json["age"] ?? "",
        document: json["document"] != null
            ? Document.fromJson(json["document"])
            : Document(type: "", num: "", originalNumber: "", expire: ""),
        ticketData: json["ticketData"] != null
            ? TicketData.fromJson(json["ticketData"])
            : TicketData(number: "", text: "", refunded: false),
        bonusCard: json["bonus_card"] ?? "",
        key: json["key"] ?? "",
        uuid: json["uuid"] ?? "",
        insurances: json["insurances"] != null
            ? List<dynamic>.from(json["insurances"].map((x) => x))
            : [],
        accompanyingAdults: json["accompanying_adults"] != null
            ? List<dynamic>.from(json["accompanying_adults"].map((x) => x))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name.toJson(),
        "email": email,
        "phone": phone,
        "gender": gender,
        "birthdate": birthdate,
        "citizenship": citizenship,
        "age": age,
        "document": document.toJson(),
        "ticketData": ticketData.toJson(),
        "bonus_card": bonusCard,
        "key": key,
        "uuid": uuid,
        "insurances": List<dynamic>.from(insurances.map((x) => x)),
        "accompanying_adults":
            List<dynamic>.from(accompanyingAdults.map((x) => x)),
      };
}

class Document {
  String type;
  String num;
  String originalNumber;
  String expire;

  Document({
    required this.type,
    required this.num,
    required this.originalNumber,
    required this.expire,
  });

  factory Document.fromJson(Map<String, dynamic> json) => Document(
        type: json["type"] ?? "",
        num: json["num"] ?? "",
        originalNumber: json["original_number"] ?? "",
        expire: json["expire"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "num": num,
        "original_number": originalNumber,
        "expire": expire,
      };
}

class Name {
  String first;
  String middle;
  String last;

  Name({
    required this.first,
    required this.middle,
    required this.last,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        first: json["first"] ?? "",
        middle: json["middle"] ?? "",
        last: json["last"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "middle": middle,
        "last": last,
      };
}

class TicketData {
  String number;
  String text;
  bool refunded;

  TicketData({
    required this.number,
    required this.text,
    required this.refunded,
  });

  factory TicketData.fromJson(Map<String, dynamic> json) => TicketData(
        number: json["number"] ?? "",
        text: json["text"] ?? "",
        refunded: json["refunded"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "text": text,
        "refunded": refunded,
      };
}

class PassengersPriceDetail {
  String key;
  int affiliateFee;
  int agentAffiliateFee;
  int partnerAffiliateFee;
  int comsa;
  int ticketPrice;
  int acquiring;
  int insurancePrice;
  double vat;
  int taxesAmount;
  int tariff;
  int fee;
  Commissions commissions;
  List<Tax> taxes;
  String uuid;
  int refundAmount;
  String refundAmounts;

  PassengersPriceDetail({
    required this.key,
    required this.affiliateFee,
    required this.agentAffiliateFee,
    required this.partnerAffiliateFee,
    required this.comsa,
    required this.ticketPrice,
    required this.acquiring,
    required this.insurancePrice,
    required this.vat,
    required this.taxesAmount,
    required this.tariff,
    required this.fee,
    required this.commissions,
    required this.taxes,
    required this.uuid,
    required this.refundAmount,
    required this.refundAmounts,
  });

  factory PassengersPriceDetail.fromJson(Map<String, dynamic> json) =>
      PassengersPriceDetail(
        key: json["key"] ?? "",
        affiliateFee: json["affiliate_fee"] ?? 0,
        agentAffiliateFee: json["agent_affiliate_fee"] ?? 0,
        partnerAffiliateFee: json["partner_affiliate_fee"] ?? 0,
        comsa: json["comsa"] ?? 0,
        ticketPrice: json["ticket_price"] ?? 0,
        acquiring: json["acquiring"] ?? 0,
        insurancePrice: json["insurance_price"] ?? 0,
        vat: json["vat"].toDouble() ?? 0.0,
        taxesAmount: json["taxes_amount"] ?? 0,
        tariff: json["tariff"] ?? 0,
        fee: json["fee"] ?? 0,
        commissions: json["commissions"] != null
            ? Commissions.fromJson(json["commissions"])
            : Commissions(otherCommission: 0.0),
        taxes: json["taxes"] != null
            ? List<Tax>.from(json["taxes"].map((x) => Tax.fromJson(x)))
            : [],
        uuid: json["uuid"] ?? "",
        refundAmount: json["refund_amount"] ?? 0,
        refundAmounts: json["refund_amounts"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "affiliate_fee": affiliateFee,
        "agent_affiliate_fee": agentAffiliateFee,
        "partner_affiliate_fee": partnerAffiliateFee,
        "comsa": comsa,
        "ticket_price": ticketPrice,
        "acquiring": acquiring,
        "insurance_price": insurancePrice,
        "vat": vat,
        "taxes_amount": taxesAmount,
        "tariff": tariff,
        "fee": fee,
        "commissions": commissions.toJson(),
        "taxes": List<dynamic>.from(taxes.map((x) => x.toJson())),
        "uuid": uuid,
        "refund_amount": refundAmount,
        "refund_amounts": refundAmounts,
      };
}

class Commissions {
  double otherCommission;

  Commissions({
    required this.otherCommission,
  });

  factory Commissions.fromJson(Map<String, dynamic> json) => Commissions(
        otherCommission: json["other_commission"]?.toDouble() ?? 0.0,
      );

  Map<String, dynamic> toJson() => {
        "other_commission": otherCommission,
      };
}

class Tax {
  String code;
  int amount;
  String currency;

  Tax({
    required this.code,
    required this.amount,
    required this.currency,
  });

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        code: json["code"] ?? "",
        amount: json["amount"] ?? 0,
        currency: json["currency"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "amount": amount,
        "currency": currency,
      };
}

class PayedData {
  String paySystem;
  String payCode;
  String merchant;
  String typePay;
  String date;
  int amountPay;
  String currPay;
  String card;
  String statusCode;

  PayedData({
    required this.paySystem,
    required this.payCode,
    required this.merchant,
    required this.typePay,
    required this.date,
    required this.amountPay,
    required this.currPay,
    required this.card,
    required this.statusCode,
  });

  factory PayedData.fromJson(Map<String, dynamic> json) => PayedData(
        paySystem: json["pay_system"] ?? "",
        payCode: json["pay_code"] ?? "",
        merchant: json["merchant"] ?? "",
        typePay: json["type_pay"] ?? "",
        date: json["date"] ?? "",
        amountPay: json["amount_pay"] ?? 0,
        currPay: json["curr_pay"] ?? "",
        card: json["card"] ?? "",
        statusCode: json["status_code"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "pay_system": paySystem,
        "pay_code": payCode,
        "merchant": merchant,
        "type_pay": typePay,
        "date": date,
        "amount_pay": amountPay,
        "curr_pay": currPay,
        "card": card,
        "status_code": statusCode,
      };
}

class RefundAvailability {
  bool isAutoRefundRequestAvailable;
  List<dynamic> tickets;

  RefundAvailability({
    required this.isAutoRefundRequestAvailable,
    required this.tickets,
  });

  factory RefundAvailability.fromJson(Map<String, dynamic> json) =>
      RefundAvailability(
        isAutoRefundRequestAvailable:
            json["is_auto_refund_request_available"] ?? false,
        tickets: json["tickets"] != null
            ? List<dynamic>.from(json["tickets"].map((x) => x))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "is_auto_refund_request_available": isAutoRefundRequestAvailable,
        "tickets": List<dynamic>.from(tickets.map((x) => x)),
      };
}

class Ticket {
  String locator;
  List<String> vndLocators;
  String bookingOfficeId;
  String receiptText;
  bool actual;
  TicketDocuments documents;
  String bookingProvider;
  TicketProvider provider;
  Carrier carrier;
  Duration duration;
  List<Passenger> passengers;
  String specialTariffType;
  String fareFamilyMarketingName;

  Ticket({
    required this.locator,
    required this.vndLocators,
    required this.bookingOfficeId,
    required this.receiptText,
    required this.actual,
    required this.documents,
    required this.bookingProvider,
    required this.provider,
    required this.carrier,
    required this.duration,
    required this.passengers,
    required this.specialTariffType,
    required this.fareFamilyMarketingName,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => Ticket(
        locator: json["locator"] ?? "",
        vndLocators: json["vnd_locators"] != null
            ? List<String>.from(json["vnd_locators"].map((x) => x))
            : [],
        bookingOfficeId: json["booking_office_id"] ?? "",
        receiptText: json["receipt_text"] ?? "",
        actual: json["actual"] ?? false,
        documents: json["documents"] != null
            ? TicketDocuments.fromJson(json["documents"])
            : TicketDocuments(ticketReceipt: ""),
        bookingProvider: json["booking_provider"] ?? "",
        provider: json["provider"] != null
            ? TicketProvider.fromJson(json["provider"])
            : TicketProvider(name: "", currency: ""),
        carrier: json["carrier"] != null
            ? Carrier.fromJson(json["carrier"])
            : Carrier(id: 0, code: "", title: ""),
        duration: json["duration"] != null
            ? Duration.fromJson(json["duration"])
            : Duration(flight: DurationFlight(common: 0, hour: 0, minute: 0)),
        passengers: json["passengers"] != null
            ? List<Passenger>.from(
                json["passengers"].map((x) => Passenger.fromJson(x)))
            : [],
        specialTariffType: json["special_tariff_type"] ?? "",
        fareFamilyMarketingName: json["fare_family_marketing_name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "locator": locator,
        "vnd_locators": List<dynamic>.from(vndLocators.map((x) => x)),
        "booking_office_id": bookingOfficeId,
        "receipt_text": receiptText,
        "actual": actual,
        "documents": documents.toJson(),
        "booking_provider": bookingProvider,
        "provider": provider.toJson(),
        "carrier": carrier.toJson(),
        "duration": duration.toJson(),
        "passengers": List<dynamic>.from(passengers.map((x) => x.toJson())),
        "special_tariff_type": specialTariffType,
        "fare_family_marketing_name": fareFamilyMarketingName,
      };
}

class TicketDocuments {
  String ticketReceipt;

  TicketDocuments({
    required this.ticketReceipt,
  });

  factory TicketDocuments.fromJson(Map<String, dynamic> json) =>
      TicketDocuments(
        ticketReceipt: json["ticket_receipt"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "ticket_receipt": ticketReceipt,
      };
}

class TicketProvider {
  String name;
  String currency;

  TicketProvider({
    required this.name,
    required this.currency,
  });

  factory TicketProvider.fromJson(Map<String, dynamic> json) => TicketProvider(
        name: json["name"] ?? "",
        currency: json["currency"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "currency": currency,
      };
}
