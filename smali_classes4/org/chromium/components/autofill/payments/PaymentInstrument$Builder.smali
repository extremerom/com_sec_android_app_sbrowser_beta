.class public Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/payments/PaymentInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDisplayIconUrl:Lorg/chromium/url/GURL;

.field private mInstrumentId:J

.field private mIsFidoEnrolled:Z

.field private mNickname:Ljava/lang/String;

.field private mSupportedPaymentRails:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/components/autofill/payments/PaymentInstrument;
    .locals 8

    new-instance v7, Lorg/chromium/components/autofill/payments/PaymentInstrument;

    iget-wide v1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mInstrumentId:J

    iget-object v3, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mNickname:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mDisplayIconUrl:Lorg/chromium/url/GURL;

    iget-object v5, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mSupportedPaymentRails:[I

    iget-boolean v6, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mIsFidoEnrolled:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/chromium/components/autofill/payments/PaymentInstrument;-><init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZ)V

    return-object v7
.end method

.method public setDisplayIconUrl(Lorg/chromium/url/GURL;)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mDisplayIconUrl:Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public setInstrumentId(J)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;
    .locals 0

    iput-wide p1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mInstrumentId:J

    return-object p0
.end method

.method public setIsFidoEnrolled(Z)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mIsFidoEnrolled:Z

    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mNickname:Ljava/lang/String;

    return-object p0
.end method

.method public setSupportedPaymentRails([I)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->mSupportedPaymentRails:[I

    return-object p0
.end method
