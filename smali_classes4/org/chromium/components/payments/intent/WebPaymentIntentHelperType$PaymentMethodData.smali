.class public final Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentMethodData"
.end annotation


# instance fields
.field public final stringifiedData:Ljava/lang/String;

.field public final supportedMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;->supportedMethod:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentMethodData;->stringifiedData:Ljava/lang/String;

    return-void
.end method
