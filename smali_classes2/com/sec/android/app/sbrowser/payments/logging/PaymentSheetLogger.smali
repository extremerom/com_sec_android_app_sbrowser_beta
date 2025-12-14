.class public Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;


# instance fields
.field private mEventMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventWithDetails:Lcom/sec/android/app/sbrowser/payments/events/EventListener;

.field private final mEventWithDetailsList:Lcom/sec/android/app/sbrowser/payments/events/EventListener;

.field private final mEventWithNoDetails:Lcom/sec/android/app/sbrowser/payments/events/EventListener;

.field private mMethodDetailsMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$1;-><init>(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventWithNoDetails:Lcom/sec/android/app/sbrowser/payments/events/EventListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$2;-><init>(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventWithDetails:Lcom/sec/android/app/sbrowser/payments/events/EventListener;

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$3;-><init>(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventWithDetailsList:Lcom/sec/android/app/sbrowser/payments/events/EventListener;

    sget-object v3, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->PAY_CLICKED:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->addListener(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V

    sget-object v4, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->SKIPPED_SHOW:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {v4, v0}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->addListener(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V

    sget-object v5, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->COMPLETED_WITH_SUCCESS:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {v5, v1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->addListener(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V

    sget-object v6, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->COMPLETED_WITH_FAIL:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {v6, v1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->addListener(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V

    sget-object v7, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->ABORTED_BY_MERCHANT:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {v7, v0}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->addListener(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->INSTRUMENT_DETAILS_ERROR:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->addListener(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->SPAY_SUB_INFORMATIONS_READY:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->addListener(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventMap:Ljava/util/EnumMap;

    const-string v2, "2308"

    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventMap:Ljava/util/EnumMap;

    const-string v2, "9148"

    invoke-virtual {v1, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventMap:Ljava/util/EnumMap;

    const-string v2, "9144"

    invoke-virtual {v1, v5, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventMap:Ljava/util/EnumMap;

    const-string v2, "9146"

    invoke-virtual {v1, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventMap:Ljava/util/EnumMap;

    const-string v2, "9147"

    invoke-virtual {v1, v7, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventMap:Ljava/util/EnumMap;

    const-string v2, "9145"

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mMethodDetailsMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->BASIC_CARD:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mMethodDetailsMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->SPAY:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mMethodDetailsMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->OTHERS:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mMethodDetailsMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->UNKNOWN:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    invoke-virtual {p0, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)Ljava/util/EnumMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mEventMap:Ljava/util/EnumMap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)Ljava/util/EnumMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->mMethodDetailsMap:Ljava/util/EnumMap;

    return-object p0
.end method

.method public static enable()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->sInstance:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->sInstance:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    :cond_0
    return-void
.end method
