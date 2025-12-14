.class public final enum Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/events/EventType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;",
        ">;",
        "Lcom/sec/android/app/sbrowser/payments/events/EventType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

.field public static final enum ABORTED_BY_MERCHANT:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

.field public static final enum CANCEL_CLICKED:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

.field public static final enum COMPLETED_WITH_FAIL:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

.field public static final enum COMPLETED_WITH_SUCCESS:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

.field public static final enum INSTRUMENT_DETAILS_ERROR:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

.field public static final enum PAY_CLICKED:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

.field public static final enum SKIPPED_SHOW:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

.field public static final enum SPAY_SUB_INFORMATIONS_READY:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;
    .locals 8

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->PAY_CLICKED:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->CANCEL_CLICKED:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    sget-object v2, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->SKIPPED_SHOW:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    sget-object v3, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->COMPLETED_WITH_SUCCESS:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    sget-object v4, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->COMPLETED_WITH_FAIL:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    sget-object v5, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->ABORTED_BY_MERCHANT:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    sget-object v6, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->INSTRUMENT_DETAILS_ERROR:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    sget-object v7, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->SPAY_SUB_INFORMATIONS_READY:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    const-string v1, "PAY_CLICKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->PAY_CLICKED:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    const-string v1, "CANCEL_CLICKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->CANCEL_CLICKED:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    const-string v1, "SKIPPED_SHOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->SKIPPED_SHOW:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    const-string v1, "COMPLETED_WITH_SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->COMPLETED_WITH_SUCCESS:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    const-string v1, "COMPLETED_WITH_FAIL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->COMPLETED_WITH_FAIL:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    const-string v1, "ABORTED_BY_MERCHANT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->ABORTED_BY_MERCHANT:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    const-string v1, "INSTRUMENT_DETAILS_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->INSTRUMENT_DETAILS_ERROR:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    const-string v1, "SPAY_SUB_INFORMATIONS_READY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->SPAY_SUB_INFORMATIONS_READY:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->$values()[Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->$VALUES:[Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->$VALUES:[Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    return-object v0
.end method
