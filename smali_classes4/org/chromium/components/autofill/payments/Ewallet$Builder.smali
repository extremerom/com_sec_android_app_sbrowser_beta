.class public final Lorg/chromium/components/autofill/payments/Ewallet$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/payments/Ewallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccountDisplayName:Ljava/lang/String;

.field private mEwalletName:Ljava/lang/String;

.field private mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/components/autofill/payments/Ewallet;
    .locals 11

    new-instance v10, Lorg/chromium/components/autofill/payments/Ewallet;

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getInstrumentId()J

    move-result-wide v1

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getNickname()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getDisplayIconUrl()Lorg/chromium/url/GURL;

    move-result-object v4

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getSupportedPaymentRails()[I

    move-result-object v5

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getIsFidoEnrolled()Z

    move-result v6

    iget-object v7, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mEwalletName:Ljava/lang/String;

    iget-object v8, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mAccountDisplayName:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/chromium/components/autofill/payments/Ewallet;-><init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;I)V

    return-object v10
.end method

.method public setAccountDisplayName(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/Ewallet$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mAccountDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setEwalletName(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/Ewallet$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mEwalletName:Ljava/lang/String;

    return-object p0
.end method

.method public setPaymentInstrument(Lorg/chromium/components/autofill/payments/PaymentInstrument;)Lorg/chromium/components/autofill/payments/Ewallet$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    return-object p0
.end method
