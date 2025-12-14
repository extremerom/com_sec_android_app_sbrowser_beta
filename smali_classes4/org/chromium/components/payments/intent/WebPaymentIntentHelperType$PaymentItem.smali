.class public final Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentItem"
.end annotation


# instance fields
.field public final amount:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;


# direct methods
.method public constructor <init>(Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;->amount:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;

    return-void
.end method


# virtual methods
.method public serializeAndRedact(Landroid/util/JsonWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v0, "amount"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object p0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;->amount:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;

    invoke-virtual {p0, p1}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->serialize(Landroid/util/JsonWriter;)V

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method
