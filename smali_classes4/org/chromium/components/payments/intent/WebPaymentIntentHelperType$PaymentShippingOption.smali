.class public final Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentShippingOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentShippingOption"
.end annotation


# static fields
.field public static final EXTRA_SHIPPING_OPTION_AMOUNT:Ljava/lang/String; = "amount"

.field public static final EXTRA_SHIPPING_OPTION_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_SHIPPING_OPTION_LABEL:Ljava/lang/String; = "label"

.field public static final EXTRA_SHIPPING_OPTION_SELECTED:Ljava/lang/String; = "selected"


# instance fields
.field public final amount:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;

.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final selected:Z


# direct methods
.method private asBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentShippingOption;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "label"

    iget-object v2, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentShippingOption;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentShippingOption;->amount:Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;

    invoke-virtual {v1}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentCurrencyAmount;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "selected"

    iget-boolean p0, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentShippingOption;->selected:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static buildPaymentShippingOptionList(Ljava/util/List;)[Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentShippingOption;",
            ">;)[",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentShippingOption;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentShippingOption;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method
