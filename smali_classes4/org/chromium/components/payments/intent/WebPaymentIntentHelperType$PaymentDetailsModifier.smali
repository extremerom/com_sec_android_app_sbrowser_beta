.class public final Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentDetailsModifier"
.end annotation


# instance fields
.field public final methodData:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;

.field public final total:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;


# direct methods
.method public constructor <init>(Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;->total:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;

    iput-object p2, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;->methodData:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;

    return-void
.end method

.method private serialize(Landroid/util/JsonWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;->total:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;

    const-string v1, "total"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object v0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;->total:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;

    invoke-virtual {v0, p1}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;->serializeAndRedact(Landroid/util/JsonWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    :goto_0
    const-string v0, "supportedMethods"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;->methodData:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;

    iget-object v0, v0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;->supportedMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;->methodData:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;

    iget-object p0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;->stringifiedData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public static serializeModifiers(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;

    invoke-static {v2}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType;->a(Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;)V

    invoke-direct {v2, v1}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentDetailsModifier;->serialize(Landroid/util/JsonWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "{}"

    return-object p0
.end method
