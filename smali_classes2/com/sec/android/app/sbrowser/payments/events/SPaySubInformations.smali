.class public final enum Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/events/EventDetails;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;",
        ">;",
        "Lcom/sec/android/app/sbrowser/payments/events/EventDetails;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

.field public static final enum IN_PAYMENT_INSTRUMENTS:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

.field public static final enum IN_SUPPORTED_METHODS:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

.field public static final enum IS_DEFAULT_OPTION:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IN_SUPPORTED_METHODS:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IN_PAYMENT_INSTRUMENTS:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    sget-object v2, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IS_DEFAULT_OPTION:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    const-string v1, "IN_SUPPORTED_METHODS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IN_SUPPORTED_METHODS:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    const-string v1, "IN_PAYMENT_INSTRUMENTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IN_PAYMENT_INSTRUMENTS:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    const-string v1, "IS_DEFAULT_OPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IS_DEFAULT_OPTION:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->$values()[Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->$VALUES:[Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->$VALUES:[Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    return-object v0
.end method
