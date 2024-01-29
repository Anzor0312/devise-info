// To parse this JSON data, do
//
//     final paymentModel = paymentModelFromMap(jsonString);

import 'dart:convert';

PaymentModel paymentModelFromMap(String str) =>
    PaymentModel.fromMap(json.decode(str));

String paymentModelToMap(PaymentModel data) => json.encode(data.toMap());

class PaymentModel {
  Book book;

  PaymentModel({
    required this.book,
  });

  factory PaymentModel.fromMap(Map<String, dynamic> json) => PaymentModel(
        book: Book.fromMap(json["book"]),
      );

  Map<String, dynamic> toMap() => {
        "book": book.toMap(),
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

  factory Book.fromMap(Map<String, dynamic> json) => Book(
        order: Order.fromMap(json["order"]),
        isVtrip: json["is_vtrip"],
        tickets:
            List<Ticket>.from(json["tickets"].map((x) => Ticket.fromMap(x))),
        flight: BookFlight.fromMap(json["flight"]),
        passengers: List<Passenger>.from(
            json["passengers"].map((x) => Passenger.fromMap(x))),
        insurances: List<dynamic>.from(json["insurances"].map((x) => x)),
        payedData: PayedData.fromMap(json["payed_data"]),
        orderPriceDetails:
            OrderPriceDetails.fromMap(json["order_price_details"]),
        passengersPriceDetails: List<PassengersPriceDetail>.from(
            json["passengers_price_details"]
                .map((x) => PassengersPriceDetail.fromMap(x))),
        refundRequestAlreadySent: json["refund_request_already_sent"],
        isPriceChanged: json["is_price_changed"],
        isSearchPriceChanged: json["is_search_price_changed"],
        isPaymentDisabled: json["is_payment_disabled"],
        paymentDisablingReason: json["payment_disabling_reason"],
        disablingReasonTicket: json["disabling_reason_ticket"],
        refundAvailability:
            RefundAvailability.fromMap(json["refund_availability"]),
        isEticketAvailable: json["is_eticket_available"],
        documents: BookDocuments.fromMap(json["documents"]),
        agentModePrices: AgentModePrices.fromMap(json["agent_mode_prices"]),
      );

  Map<String, dynamic> toMap() => {
        "order": order.toMap(),
        "is_vtrip": isVtrip,
        "tickets": List<dynamic>.from(tickets.map((x) => x.toMap())),
        "flight": flight.toMap(),
        "passengers": List<dynamic>.from(passengers.map((x) => x.toMap())),
        "insurances": List<dynamic>.from(insurances.map((x) => x)),
        "payed_data": payedData.toMap(),
        "order_price_details": orderPriceDetails.toMap(),
        "passengers_price_details":
            List<dynamic>.from(passengersPriceDetails.map((x) => x.toMap())),
        "refund_request_already_sent": refundRequestAlreadySent,
        "is_price_changed": isPriceChanged,
        "is_search_price_changed": isSearchPriceChanged,
        "is_payment_disabled": isPaymentDisabled,
        "payment_disabling_reason": paymentDisablingReason,
        "disabling_reason_ticket": disablingReasonTicket,
        "refund_availability": refundAvailability.toMap(),
        "is_eticket_available": isEticketAvailable,
        "documents": documents.toMap(),
        "agent_mode_prices": agentModePrices.toMap(),
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

  factory AgentModePrices.fromMap(Map<String, dynamic> json) => AgentModePrices(
        debitFromBalance: json["debit_from_balance"],
        totalAmountForActiveAgentMode:
            json["total_amount_for_active_agent_mode"],
        passengersAmountsDetails: List<PassengersAmountsDetail>.from(
            json["passengers_amounts_details"]
                .map((x) => PassengersAmountsDetail.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "debit_from_balance": debitFromBalance,
        "total_amount_for_active_agent_mode": totalAmountForActiveAgentMode,
        "passengers_amounts_details":
            List<dynamic>.from(passengersAmountsDetails.map((x) => x.toMap())),
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

  factory PassengersAmountsDetail.fromMap(Map<String, dynamic> json) =>
      PassengersAmountsDetail(
        key: json["key"],
        serviceAmountForActiveAgentMode:
            json["service_amount_for_active_agent_mode"],
        serviceAmountForNonActiveAgentMode:
            json["service_amount_for_non_active_agent_mode"],
      );

  Map<String, dynamic> toMap() => {
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

  factory BookDocuments.fromMap(Map<String, dynamic> json) => BookDocuments(
        adt: Adt.fromMap(json["adt"]),
        chd: Adt.fromMap(json["chd"]),
        inf: Adt.fromMap(json["inf"]),
        ins: Adt.fromMap(json["ins"]),
        src: Src.fromMap(json["src"]),
        yth: Src.fromMap(json["yth"]),
      );

  Map<String, dynamic> toMap() => {
        "adt": adt.toMap(),
        "chd": chd.toMap(),
        "inf": inf.toMap(),
        "ins": ins.toMap(),
        "src": src.toMap(),
        "yth": yth.toMap(),
      };
}

class Adt {
  List<String> ru;
  List<String> other;

  Adt({
    required this.ru,
    required this.other,
  });

  factory Adt.fromMap(Map<String, dynamic> json) => Adt(
        ru: List<String>.from(json["ru"].map((x) => x)),
        other: List<String>.from(json["other"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
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

  factory Src.fromMap(Map<String, dynamic> json) => Src(
        ru: List<String>.from(json["ru"].map((x) => x)),
        other: List<dynamic>.from(json["other"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
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

  factory BookFlight.fromMap(Map<String, dynamic> json) => BookFlight(
        duration: json["duration"],
        type: json["type"],
        isVtrip: json["is_vtrip"],
        fareFamilyType: json["fare_family_type"],
        provider: FlightProvider.fromMap(json["provider"]),
        segments:
            List<Segment>.from(json["segments"].map((x) => Segment.fromMap(x))),
        isTourOperator: json["is_tour_operator"],
      );

  Map<String, dynamic> toMap() => {
        "duration": duration,
        "type": type,
        "is_vtrip": isVtrip,
        "fare_family_type": fareFamilyType,
        "provider": provider.toMap(),
        "segments": List<dynamic>.from(segments.map((x) => x.toMap())),
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

  factory FlightProvider.fromMap(Map<String, dynamic> json) => FlightProvider(
        gds: json["gds"],
        name: json["name"],
        supplier: Supplier.fromMap(json["supplier"]),
      );

  Map<String, dynamic> toMap() => {
        "gds": gds,
        "name": name,
        "supplier": supplier.toMap(),
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

  factory Supplier.fromMap(Map<String, dynamic> json) => Supplier(
        id: json["id"],
        code: json["code"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
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

  factory Segment.fromMap(Map<String, dynamic> json) => Segment(
        ticketDuration: json["ticket_duration"],
        type: json["type"],
        provider: SegmentProvider.fromMap(json["provider"]),
        baggage: NewValueClass.fromMap(json["baggage"]),
        comment: json["comment"],
        cbaggage: Cbaggage.fromMap(json["cbaggage"]),
        isRefund: json["is_refund"],
        isChange: json["is_change"],
        arr: Arr.fromMap(json["arr"]),
        dep: Arr.fromMap(json["dep"]),
        aircraft: json["aircraft"],
        aircraftDetails: AircraftDetails.fromMap(json["aircraft_details"]),
        flightNumber: json["flight_number"],
        direction: json["direction"],
        duration: Duration.fromMap(json["duration"]),
        segmentClass: Class.fromMap(json["class"]),
        fareCode: json["fare_code"],
        carrier: Carrier.fromMap(json["carrier"]),
        isMiniRulesExists: json["is_mini_rules_exists"],
        isOnlineCheckinRequired: json["is_online_checkin_required"],
        stops: List<dynamic>.from(json["stops"].map((x) => x)),
        status: SegmentStatus.fromMap(json["status"]),
        flightChanges: List<FlightChange>.from(
            json["flight_changes"].map((x) => FlightChange.fromMap(x))),
        parametersForEachPassenger: List<ParametersForEachPassenger>.from(
            json["parameters_for_each_passenger"]
                .map((x) => ParametersForEachPassenger.fromMap(x))),
        baggageRecheck: json["baggage_recheck"],
        refundedStatus: json["refunded_status"],
      );

  Map<String, dynamic> toMap() => {
        "ticket_duration": ticketDuration,
        "type": type,
        "provider": provider.toMap(),
        "baggage": baggage.toMap(),
        "comment": comment,
        "cbaggage": cbaggage.toMap(),
        "is_refund": isRefund,
        "is_change": isChange,
        "arr": arr.toMap(),
        "dep": dep.toMap(),
        "aircraft": aircraft,
        "aircraft_details": aircraftDetails.toMap(),
        "flight_number": flightNumber,
        "direction": direction,
        "duration": duration.toMap(),
        "class": segmentClass.toMap(),
        "fare_code": fareCode,
        "carrier": carrier.toMap(),
        "is_mini_rules_exists": isMiniRulesExists,
        "is_online_checkin_required": isOnlineCheckinRequired,
        "stops": List<dynamic>.from(stops.map((x) => x)),
        "status": status.toMap(),
        "flight_changes":
            List<dynamic>.from(flightChanges.map((x) => x.toMap())),
        "parameters_for_each_passenger": List<dynamic>.from(
            parametersForEachPassenger.map((x) => x.toMap())),
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

  factory AircraftDetails.fromMap(Map<String, dynamic> json) => AircraftDetails(
        code: json["code"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
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

  factory Arr.fromMap(Map<String, dynamic> json) => Arr(
        date: json["date"],
        time: json["time"],
        datetime: json["datetime"],
        terminal: json["terminal"],
        airport: Carrier.fromMap(json["airport"]),
        city: Carrier.fromMap(json["city"]),
        region: Supplier.fromMap(json["region"]),
        country: Carrier.fromMap(json["country"]),
      );

  Map<String, dynamic> toMap() => {
        "date": date,
        "time": time,
        "datetime": datetime,
        "terminal": terminal,
        "airport": airport.toMap(),
        "city": city.toMap(),
        "region": region.toMap(),
        "country": country.toMap(),
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

  factory Carrier.fromMap(Map<String, dynamic> json) => Carrier(
        id: json["id"],
        code: json["code"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
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

  factory NewValueClass.fromMap(Map<String, dynamic> json) => NewValueClass(
        piece: json["piece"],
        weight: json["weight"],
      );

  Map<String, dynamic> toMap() => {
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

  factory Cbaggage.fromMap(Map<String, dynamic> json) => Cbaggage(
        piece: json["piece"],
        weight: json["weight"],
      );

  Map<String, dynamic> toMap() => {
        "piece": piece,
        "weight": weight,
      };
}

class Duration {
  DurationFlight flight;

  Duration({
    required this.flight,
  });

  factory Duration.fromMap(Map<String, dynamic> json) => Duration(
        flight: DurationFlight.fromMap(json["flight"]),
      );

  Map<String, dynamic> toMap() => {
        "flight": flight.toMap(),
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

  factory DurationFlight.fromMap(Map<String, dynamic> json) => DurationFlight(
        common: json["common"],
        hour: json["hour"],
        minute: json["minute"],
      );

  Map<String, dynamic> toMap() => {
        "common": common,
        "hour": hour,
        "minute": minute,
      };
}

class FlightChange {
  FlightChangeBaggage baggage;
  CabinBaggage? cabinBaggage;

  FlightChange({
    required this.baggage,
    this.cabinBaggage,
  });

  factory FlightChange.fromMap(Map<String, dynamic> json) => FlightChange(
        baggage: FlightChangeBaggage.fromMap(json["baggage"]),
        cabinBaggage: json["cabin_baggage"] == null
            ? null
            : CabinBaggage.fromMap(json["cabin_baggage"]),
      );

  Map<String, dynamic> toMap() => {
        "baggage": baggage.toMap(),
        "cabin_baggage": cabinBaggage?.toMap(),
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

  factory FlightChangeBaggage.fromMap(Map<String, dynamic> json) =>
      FlightChangeBaggage(
        fieldName: json["field_name"],
        oldValue: Cbaggage.fromMap(json["old_value"]),
        newValue: NewValueClass.fromMap(json["new_value"]),
      );

  Map<String, dynamic> toMap() => {
        "field_name": fieldName,
        "old_value": oldValue.toMap(),
        "new_value": newValue.toMap(),
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

  factory CabinBaggage.fromMap(Map<String, dynamic> json) => CabinBaggage(
        fieldName: json["field_name"],
        oldValue: OldValue.fromMap(json["old_value"]),
        newValue: Cbaggage.fromMap(json["new_value"]),
      );

  Map<String, dynamic> toMap() => {
        "field_name": fieldName,
        "old_value": oldValue.toMap(),
        "new_value": newValue.toMap(),
      };
}

class OldValue {
  String piece;
  String weight;

  OldValue({
    required this.piece,
    required this.weight,
  });

  factory OldValue.fromMap(Map<String, dynamic> json) => OldValue(
        piece: json["piece"],
        weight: json["weight"],
      );

  Map<String, dynamic> toMap() => {
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

  factory ParametersForEachPassenger.fromMap(Map<String, dynamic> json) =>
      ParametersForEachPassenger(
        passengerId: json["passenger_id"],
        flightComment: json["flight_comment"],
        isRefundable: json["is_refundable"],
        isExchangeable: json["is_exchangeable"],
        flightClass: FlightClass.fromMap(json["flight_class"]),
        baggage: ParametersForEachPassengerBaggage.fromMap(json["baggage"]),
        carryOnBaggage: CarryOnBaggage.fromMap(json["carry_on_baggage"]),
        ticketNumber: json["ticket_number"],
        brand: json["brand"],
      );

  Map<String, dynamic> toMap() => {
        "passenger_id": passengerId,
        "flight_comment": flightComment,
        "is_refundable": isRefundable,
        "is_exchangeable": isExchangeable,
        "flight_class": flightClass.toMap(),
        "baggage": baggage.toMap(),
        "carry_on_baggage": carryOnBaggage.toMap(),
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

  factory ParametersForEachPassengerBaggage.fromMap(
          Map<String, dynamic> json) =>
      ParametersForEachPassengerBaggage(
        bagsCount: json["bags_count"],
        weight: json["weight"],
        weightUnit: json["weight_unit"],
        dimensions: json["dimensions"],
      );

  Map<String, dynamic> toMap() => {
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

  factory CarryOnBaggage.fromMap(Map<String, dynamic> json) => CarryOnBaggage(
        bagsCount: json["bags_count"],
        weight: json["weight"],
        weightUnit: json["weight_unit"],
        dimensions: Dimensions.fromMap(json["dimensions"]),
      );

  Map<String, dynamic> toMap() => {
        "bags_count": bagsCount,
        "weight": weight,
        "weight_unit": weightUnit,
        "dimensions": dimensions.toMap(),
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

  factory Dimensions.fromMap(Map<String, dynamic> json) => Dimensions(
        width: json["width"],
        length: json["length"],
        height: json["height"],
      );

  Map<String, dynamic> toMap() => {
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

  factory FlightClass.fromMap(Map<String, dynamic> json) => FlightClass(
        id: json["id"],
        title: json["title"],
        providerCode: json["provider_code"],
      );

  Map<String, dynamic> toMap() => {
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

  factory SegmentProvider.fromMap(Map<String, dynamic> json) => SegmentProvider(
        gds: json["gds"],
        name: json["name"],
        supplier: Carrier.fromMap(json["supplier"]),
      );

  Map<String, dynamic> toMap() => {
        "gds": gds,
        "name": name,
        "supplier": supplier.toMap(),
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

  factory Class.fromMap(Map<String, dynamic> json) => Class(
        typeId: json["type_id"],
        name: json["name"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
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

  factory SegmentStatus.fromMap(Map<String, dynamic> json) => SegmentStatus(
        code: json["code"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
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

  factory Order.fromMap(Map<String, dynamic> json) => Order(
        orderId: json["order_id"],
        billingNumber: json["billing_number"],
        channel: Channel.fromMap(json["channel"]),
        sig: json["sig"],
        expire: json["expire"],
        expireRemain: json["expire_remain"],
        created: json["created"],
        status: OrderStatus.fromMap(json["status"]),
        userId: json["user_id"],
        isReal: json["is_real"],
        price: Price.fromMap(json["price"]),
        payment: Payment.fromMap(json["payment"]),
        alfaPodeliPayment: json["alfa_podeli_payment"],
        payments: List<dynamic>.from(json["payments"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "order_id": orderId,
        "billing_number": billingNumber,
        "channel": channel.toMap(),
        "sig": sig,
        "expire": expire,
        "expire_remain": expireRemain,
        "created": created,
        "status": status.toMap(),
        "user_id": userId,
        "is_real": isReal,
        "price": price.toMap(),
        "payment": payment.toMap(),
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

  factory Channel.fromMap(Map<String, dynamic> json) => Channel(
        code: json["code"],
        source: Source.fromMap(json["source"]),
      );

  Map<String, dynamic> toMap() => {
        "code": code,
        "source": source.toMap(),
      };
}

class Source {
  String code;

  Source({
    required this.code,
  });

  factory Source.fromMap(Map<String, dynamic> json) => Source(
        code: json["code"],
      );

  Map<String, dynamic> toMap() => {
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

  factory Payment.fromMap(Map<String, dynamic> json) => Payment(
        paySystem: json["pay_system"],
        payCode: json["pay_code"],
        merchant: json["merchant"],
        typePay: json["type_pay"],
        date: json["date"],
        amountPay: json["amount_pay"],
        currPay: json["curr_pay"],
        card: json["card"],
        statusCode: json["status_code"],
        method: json["method"],
      );

  Map<String, dynamic> toMap() => {
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

  factory Price.fromMap(Map<String, dynamic> json) => Price(
        rub: Rub.fromMap(json["RUB"]),
      );

  Map<String, dynamic> toMap() => {
        "RUB": rub.toMap(),
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

  factory Rub.fromMap(Map<String, dynamic> json) => Rub(
        fare: json["fare"],
        fee: json["fee"],
        taxes: json["taxes"],
        insurance: json["insurance"],
        discount: json["discount"],
        extraBaggage: json["extra_baggage"],
        amount: json["amount"],
        amountBase: json["amount_base"],
        amountWithoutPaymentExpense: json["amount_without_payment_expense"],
      );

  Map<String, dynamic> toMap() => {
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

  factory OrderStatus.fromMap(Map<String, dynamic> json) => OrderStatus(
        sign: json["sign"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
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

  factory OrderPriceDetails.fromMap(Map<String, dynamic> json) =>
      OrderPriceDetails(
        myAgentFee: json["my_agent_fee"],
        affiliateFee: json["affiliate_fee"],
        agentAffiliateFee: json["agent_affiliate_fee"],
        partnerAffiliateFee: json["partner_affiliate_fee"],
        comsa: json["comsa"],
        totalAgentProfit: json["total_agent_profit"],
        ticketsPrice: json["tickets_price"],
        insurancePrice: json["insurance_price"],
        acquiring: json["acquiring"],
        totalPrice: json["total_price"],
      );

  Map<String, dynamic> toMap() => {
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

  factory Passenger.fromMap(Map<String, dynamic> json) => Passenger(
        id: json["id"],
        name: Name.fromMap(json["name"]),
        email: json["email"],
        phone: json["phone"],
        gender: json["gender"],
        birthdate: json["birthdate"],
        citizenship: json["citizenship"],
        age: json["age"],
        document: Document.fromMap(json["document"]),
        ticketData: TicketData.fromMap(json["ticketData"]),
        bonusCard: json["bonus_card"],
        key: json["key"],
        uuid: json["uuid"],
        insurances: List<dynamic>.from(json["insurances"].map((x) => x)),
        accompanyingAdults:
            List<dynamic>.from(json["accompanying_adults"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name.toMap(),
        "email": email,
        "phone": phone,
        "gender": gender,
        "birthdate": birthdate,
        "citizenship": citizenship,
        "age": age,
        "document": document.toMap(),
        "ticketData": ticketData.toMap(),
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

  factory Document.fromMap(Map<String, dynamic> json) => Document(
        type: json["type"],
        num: json["num"],
        originalNumber: json["original_number"],
        expire: json["expire"],
      );

  Map<String, dynamic> toMap() => {
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

  factory Name.fromMap(Map<String, dynamic> json) => Name(
        first: json["first"],
        middle: json["middle"],
        last: json["last"],
      );

  Map<String, dynamic> toMap() => {
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

  factory TicketData.fromMap(Map<String, dynamic> json) => TicketData(
        number: json["number"],
        text: json["text"],
        refunded: json["refunded"],
      );

  Map<String, dynamic> toMap() => {
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

  factory PassengersPriceDetail.fromMap(Map<String, dynamic> json) =>
      PassengersPriceDetail(
        key: json["key"],
        affiliateFee: json["affiliate_fee"],
        agentAffiliateFee: json["agent_affiliate_fee"],
        partnerAffiliateFee: json["partner_affiliate_fee"],
        comsa: json["comsa"],
        ticketPrice: json["ticket_price"],
        acquiring: json["acquiring"],
        insurancePrice: json["insurance_price"],
        vat: json["vat"]?.toDouble(),
        taxesAmount: json["taxes_amount"],
        tariff: json["tariff"],
        fee: json["fee"],
        commissions: Commissions.fromMap(json["commissions"]),
        taxes: List<Tax>.from(json["taxes"].map((x) => Tax.fromMap(x))),
        uuid: json["uuid"],
        refundAmount: json["refund_amount"],
        refundAmounts: json["refund_amounts"],
      );

  Map<String, dynamic> toMap() => {
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
        "commissions": commissions.toMap(),
        "taxes": List<dynamic>.from(taxes.map((x) => x.toMap())),
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

  factory Commissions.fromMap(Map<String, dynamic> json) => Commissions(
        otherCommission: json["other_commission"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
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

  factory Tax.fromMap(Map<String, dynamic> json) => Tax(
        code: json["code"],
        amount: json["amount"],
        currency: json["currency"],
      );

  Map<String, dynamic> toMap() => {
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

  factory PayedData.fromMap(Map<String, dynamic> json) => PayedData(
        paySystem: json["pay_system"],
        payCode: json["pay_code"],
        merchant: json["merchant"],
        typePay: json["type_pay"],
        date: json["date"],
        amountPay: json["amount_pay"],
        currPay: json["curr_pay"],
        card: json["card"],
        statusCode: json["status_code"],
      );

  Map<String, dynamic> toMap() => {
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

  factory RefundAvailability.fromMap(Map<String, dynamic> json) =>
      RefundAvailability(
        isAutoRefundRequestAvailable: json["is_auto_refund_request_available"],
        tickets: List<dynamic>.from(json["tickets"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
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

  factory Ticket.fromMap(Map<String, dynamic> json) => Ticket(
        locator: json["locator"],
        vndLocators: List<String>.from(json["vnd_locators"].map((x) => x)),
        bookingOfficeId: json["booking_office_id"],
        receiptText: json["receipt_text"],
        actual: json["actual"],
        documents: TicketDocuments.fromMap(json["documents"]),
        bookingProvider: json["booking_provider"],
        provider: TicketProvider.fromMap(json["provider"]),
        carrier: Carrier.fromMap(json["carrier"]),
        duration: Duration.fromMap(json["duration"]),
        passengers: List<Passenger>.from(
            json["passengers"].map((x) => Passenger.fromMap(x))),
        specialTariffType: json["special_tariff_type"],
        fareFamilyMarketingName: json["fare_family_marketing_name"],
      );

  Map<String, dynamic> toMap() => {
        "locator": locator,
        "vnd_locators": List<dynamic>.from(vndLocators.map((x) => x)),
        "booking_office_id": bookingOfficeId,
        "receipt_text": receiptText,
        "actual": actual,
        "documents": documents.toMap(),
        "booking_provider": bookingProvider,
        "provider": provider.toMap(),
        "carrier": carrier.toMap(),
        "duration": duration.toMap(),
        "passengers": List<dynamic>.from(passengers.map((x) => x.toMap())),
        "special_tariff_type": specialTariffType,
        "fare_family_marketing_name": fareFamilyMarketingName,
      };
}

class TicketDocuments {
  String ticketReceipt;

  TicketDocuments({
    required this.ticketReceipt,
  });

  factory TicketDocuments.fromMap(Map<String, dynamic> json) => TicketDocuments(
        ticketReceipt: json["ticket_receipt"],
      );

  Map<String, dynamic> toMap() => {
        "ticket_receipt": ticketReceipt,
      };
}

class TicketProvider {
  String? name;
  String? currency;

  TicketProvider({
    required this.name,
    required this.currency,
  });

  TicketProvider.fromMap(Map<String, dynamic> json) {
  }

  Map<String, dynamic> toMap() => {
        "name": name,
        "currency": currency,
      };
}
