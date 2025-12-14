.class Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$1;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$1;->this$0:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Lcom/sec/android/app/sbrowser/payments/events/Event;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger$1;->this$0:Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->a(Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;)Ljava/util/EnumMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;->getType()Lcom/sec/android/app/sbrowser/payments/events/EventType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "201"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
