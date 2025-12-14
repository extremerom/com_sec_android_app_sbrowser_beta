.class public final enum Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/events/EventDetails;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;",
        ">;",
        "Lcom/sec/android/app/sbrowser/payments/events/EventDetails;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

.field public static final enum BASIC_CARD:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

.field public static final enum OTHERS:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

.field public static final enum SPAY:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

.field public static final enum UNKNOWN:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->BASIC_CARD:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->SPAY:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    sget-object v2, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->OTHERS:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    sget-object v3, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->UNKNOWN:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    const-string v1, "BASIC_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->BASIC_CARD:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    const-string v1, "SPAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->SPAY:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    const-string v1, "OTHERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->OTHERS:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->UNKNOWN:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->$values()[Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->$VALUES:[Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->$VALUES:[Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    return-object v0
.end method
