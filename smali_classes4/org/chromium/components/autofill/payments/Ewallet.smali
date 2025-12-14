.class public Lorg/chromium/components/autofill/payments/Ewallet;
.super Lorg/chromium/components/autofill/payments/PaymentInstrument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/payments/Ewallet$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mAccountDisplayName:Ljava/lang/String;

.field private final mEwalletName:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/components/autofill/payments/PaymentInstrument;-><init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZ)V

    iput-object p7, p0, Lorg/chromium/components/autofill/payments/Ewallet;->mEwalletName:Ljava/lang/String;

    iput-object p8, p0, Lorg/chromium/components/autofill/payments/Ewallet;->mAccountDisplayName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/chromium/components/autofill/payments/Ewallet;-><init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static create(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;)Lorg/chromium/components/autofill/payments/Ewallet;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/autofill/payments/Ewallet$Builder;

    invoke-direct {v0}, Lorg/chromium/components/autofill/payments/Ewallet$Builder;-><init>()V

    new-instance v1, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;

    invoke-direct {v1}, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;-><init>()V

    invoke-virtual {v1, p0, p1}, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->setInstrumentId(J)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->setNickname(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->setDisplayIconUrl(Lorg/chromium/url/GURL;)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->setSupportedPaymentRails([I)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->setIsFidoEnrolled(Z)Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/autofill/payments/PaymentInstrument$Builder;->build()Lorg/chromium/components/autofill/payments/PaymentInstrument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->setPaymentInstrument(Lorg/chromium/components/autofill/payments/PaymentInstrument;)Lorg/chromium/components/autofill/payments/Ewallet$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->setEwalletName(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/Ewallet$Builder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->setAccountDisplayName(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/Ewallet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/autofill/payments/Ewallet$Builder;->build()Lorg/chromium/components/autofill/payments/Ewallet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/chromium/components/autofill/payments/Ewallet;

    if-nez v1, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/chromium/components/autofill/payments/Ewallet;

    invoke-super {p0, p1}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/autofill/payments/Ewallet;->mEwalletName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/payments/Ewallet;->getEwalletName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/Ewallet;->mAccountDisplayName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/payments/Ewallet;->getAccountDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAccountDisplayName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/Ewallet;->mAccountDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getEwalletName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/Ewallet;->mEwalletName:Ljava/lang/String;

    return-object p0
.end method
