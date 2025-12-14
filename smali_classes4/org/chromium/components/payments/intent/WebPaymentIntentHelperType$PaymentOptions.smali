.class public final Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentOptions"
.end annotation


# instance fields
.field public final requestPayerEmail:Z

.field public final requestPayerName:Z

.field public final requestPayerPhone:Z

.field public final requestShipping:Z

.field public final shippingType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;->requestPayerName:Z

    iput-boolean p2, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;->requestPayerEmail:Z

    iput-boolean p3, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;->requestPayerPhone:Z

    iput-boolean p4, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;->requestShipping:Z

    iput-object p5, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;->shippingType:Ljava/lang/String;

    return-void
.end method
