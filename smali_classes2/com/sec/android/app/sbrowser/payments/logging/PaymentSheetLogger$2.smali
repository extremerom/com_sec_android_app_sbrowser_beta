.class Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$2;->this$0:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Lcom/sec/android/app/sbrowser/payments/events/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$2;->this$0:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->a(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;->getType()Lcom/sec/android/app/sbrowser/payments/events/EventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$2;->this$0:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->b(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)Ljava/util/EnumMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;->getDetails()Lcom/sec/android/app/sbrowser/payments/events/EventDetails;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "201"

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
