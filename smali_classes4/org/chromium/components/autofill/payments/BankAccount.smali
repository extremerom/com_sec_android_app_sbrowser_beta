.class public Lorg/chromium/components/autofill/payments/BankAccount;
.super Lorg/chromium/components/autofill/payments/PaymentInstrument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/payments/BankAccount$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mAccountNumberSuffix:Ljava/lang/String;

.field private final mAccountType:I

.field private final mBankName:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/components/autofill/payments/PaymentInstrument;-><init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZ)V

    iput-object p7, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mBankName:Ljava/lang/String;

    iput-object p8, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mAccountNumberSuffix:Ljava/lang/String;

    iput p9, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mAccountType:I

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/chromium/components/autofill/payments/BankAccount;-><init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static create(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;I)Lorg/chromium/components/autofill/payments/BankAccount;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;

    invoke-direct {v0}, Lorg/chromium/components/autofill/payments/BankAccount$Builder;-><init>()V

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

    invoke-virtual {v0, p0}, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->setPaymentInstrument(Lorg/chromium/components/autofill/payments/PaymentInstrument;)Lorg/chromium/components/autofill/payments/BankAccount$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->setBankName(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/BankAccount$Builder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->setAccountNumberSuffix(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/BankAccount$Builder;

    move-result-object p0

    invoke-virtual {p0, p8}, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->setAccountType(I)Lorg/chromium/components/autofill/payments/BankAccount$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->build()Lorg/chromium/components/autofill/payments/BankAccount;

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
    instance-of v1, p1, Lorg/chromium/components/autofill/payments/BankAccount;

    if-nez v1, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/chromium/components/autofill/payments/BankAccount;

    invoke-super {p0, p1}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mBankName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/payments/BankAccount;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mAccountNumberSuffix:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/chromium/components/autofill/payments/BankAccount;->getAccountNumberSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p0, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mAccountType:I

    invoke-virtual {v1}, Lorg/chromium/components/autofill/payments/BankAccount;->getAccountType()I

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAccountNumberSuffix()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mAccountNumberSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public getAccountType()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mAccountType:I

    return p0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/payments/BankAccount;->mBankName:Ljava/lang/String;

    return-object p0
.end method
