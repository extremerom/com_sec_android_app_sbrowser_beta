.class Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$3;->this$0:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Lcom/sec/android/app/sbrowser/payments/events/Event;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;->getType()Lcom/sec/android/app/sbrowser/payments/events/EventType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->SPAY_SUB_INFORMATIONS_READY:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;->getDetailsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/events/EventDetails;

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_1
    const-string p0, "2329"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "201"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
