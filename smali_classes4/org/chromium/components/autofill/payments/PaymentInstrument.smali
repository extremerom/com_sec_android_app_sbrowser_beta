.class public Lorg/chromium/components/autofill/payments/PaymentInstrument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mDisplayIconUrl:Lorg/chromium/url/GURL;

.field private final mInstrumentId:J

.field private final mIsFidoEnrolled:Z

.field private final mNickname:Ljava/lang/String;

.field private final mSupportedPaymentRails:[I


# direct methods
.method public constructor <init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mInstrumentId:J

    iput-object p3, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mNickname:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mDisplayIconUrl:Lorg/chromium/url/GURL;

    iput-object p5, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mSupportedPaymentRails:[I

    iput-boolean p6, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mIsFidoEnrolled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/chromium/components/autofill/payments/PaymentInstrument;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/chromium/components/autofill/payments/PaymentInstrument;

    iget-wide v1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mInstrumentId:J

    invoke-virtual {p1}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getInstrumentId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mNickname:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mDisplayIconUrl:Lorg/chromium/url/GURL;

    invoke-virtual {p1}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getDisplayIconUrl()Lorg/chromium/url/GURL;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mSupportedPaymentRails:[I

    invoke-virtual {p1}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getSupportedPaymentRails()[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mIsFidoEnrolled:Z

    invoke-virtual {p1}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getIsFidoEnrolled()Z

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getDisplayIconUrl()Lorg/chromium/url/GURL;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mDisplayIconUrl:Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public getInstrumentId()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mInstrumentId:J

    return-wide v0
.end method

.method public getIsFidoEnrolled()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mIsFidoEnrolled:Z

    return p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mNickname:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedPaymentRails()[I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/PaymentInstrument;->mSupportedPaymentRails:[I

    return-object p0
.end method
