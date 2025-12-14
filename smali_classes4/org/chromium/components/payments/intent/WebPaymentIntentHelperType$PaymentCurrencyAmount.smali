.class public final Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentCurrencyAmount"
.end annotation


# static fields
.field public static EXTRA_CURRENCY:Ljava/lang/String; = "currency"

.field public static EXTRA_VALUE:Ljava/lang/String; = "value"


# instance fields
.field public final currency:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->currency:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->EXTRA_CURRENCY:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->EXTRA_VALUE:Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->serialize(Landroid/util/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "currency"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method
