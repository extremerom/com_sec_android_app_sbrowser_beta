.class public final Lorg/chromium/components/autofill/payments/BankAccount$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/payments/BankAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountNumberSuffix:Ljava/lang/String;

.field private mAccountType:I

.field private mBankName:Ljava/lang/String;

.field private mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/components/autofill/payments/BankAccount;
    .locals 12

    new-instance v11, Lorg/chromium/components/autofill/payments/BankAccount;

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getInstrumentId()J

    move-result-wide v1

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getNickname()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getDisplayIconUrl()Lorg/chromium/url/GURL;

    move-result-object v4

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getSupportedPaymentRails()[I

    move-result-object v5

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    invoke-virtual {v0}, Lorg/chromium/components/autofill/payments/PaymentInstrument;->getIsFidoEnrolled()Z

    move-result v6

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mBankName:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mAccountNumberSuffix:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget v9, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mAccountType:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/chromium/components/autofill/payments/BankAccount;-><init>(JLjava/lang/String;Lorg/chromium/url/GURL;[IZLjava/lang/String;Ljava/lang/String;II)V

    return-object v11
.end method

.method public setAccountNumberSuffix(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/BankAccount$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mAccountNumberSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setAccountType(I)Lorg/chromium/components/autofill/payments/BankAccount$Builder;
    .locals 0

    iput p1, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mAccountType:I

    return-object p0
.end method

.method public setBankName(Ljava/lang/String;)Lorg/chromium/components/autofill/payments/BankAccount$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mBankName:Ljava/lang/String;

    return-object p0
.end method

.method public setPaymentInstrument(Lorg/chromium/components/autofill/payments/PaymentInstrument;)Lorg/chromium/components/autofill/payments/BankAccount$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/BankAccount$Builder;->mPaymentInstrument:Lorg/chromium/components/autofill/payments/PaymentInstrument;

    return-object p0
.end method
