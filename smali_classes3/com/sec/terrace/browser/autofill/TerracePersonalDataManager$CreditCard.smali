.class public Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreditCard"
.end annotation


# instance fields
.field private mBasicCardIssuerNetwork:Ljava/lang/String;

.field private mBillingAddressId:Ljava/lang/String;

.field private mCardNickName:Ljava/lang/String;

.field private mCustomIconUrl:Ljava/lang/String;

.field private mCvcForVirtualCard:Ljava/lang/String;

.field private mGUID:Ljava/lang/String;

.field private mIsVirtualCard:Z

.field private mIssuerIconDrawableId:I

.field private mMonth:Ljava/lang/String;

.field private mMonthOfPC:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mObfuscatedNumber:Ljava/lang/String;

.field private mOrigin:Ljava/lang/String;

.field private mPhysicalCardLastFour:Ljava/lang/String;

.field private mYear:Ljava/lang/String;

.field private mYearOfPC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const-string v16, ""

    const-string v17, ""

    const-string v1, ""

    const-string v2, "Internet setting"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    invoke-direct/range {v0 .. v17}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mOrigin:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mBasicCardIssuerNetwork:Ljava/lang/String;

    move v1, p9

    iput v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mIssuerIconDrawableId:I

    move-object v1, p10

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mBillingAddressId:Ljava/lang/String;

    move v1, p11

    iput-boolean v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mIsVirtualCard:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mCvcForVirtualCard:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mPhysicalCardLastFour:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mMonthOfPC:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mYearOfPC:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mCustomIconUrl:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mCardNickName:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
    .locals 19
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    new-instance v18, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-object/from16 v0, v18

    invoke-static/range {p8 .. p8}, Lcom/sec/terrace/browser/TerraceResourceId;->mapToDrawableId(I)I

    move-result v9

    invoke-direct/range {v0 .. v17}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18
.end method


# virtual methods
.method public getBasicCardIssuerNetwork()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mBasicCardIssuerNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public getBillingAddressId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mBillingAddressId:Ljava/lang/String;

    return-object p0
.end method

.method public getCardNickName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mCardNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomIconUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mCustomIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCvcForVirtualCard()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mCvcForVirtualCard:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedExpirationDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/sec/terrace/R$string;->autofill_expiration_date_separator:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    return-object p0
.end method

.method public getIsLocal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getIsVirtualCard()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mIsVirtualCard:Z

    return p0
.end method

.method public getIssuerIconDrawableId()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mIssuerIconDrawableId:I

    return p0
.end method

.method public getLastFourDigits()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    return-object p0
.end method

.method public getMonthOfPC()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mMonthOfPC:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getObfuscatedNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getPhysicalCardLastFour()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mPhysicalCardLastFour:Ljava/lang/String;

    return-object p0
.end method

.method public getYear()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    return-object p0
.end method

.method public getYearOfPC()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mYearOfPC:Ljava/lang/String;

    return-object p0
.end method

.method public hasValidCreditCardExpirationDate()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->add(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBasicCardIssuerNetwork(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mBasicCardIssuerNetwork:Ljava/lang/String;

    return-void
.end method

.method public setBillingAddressId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mBillingAddressId:Ljava/lang/String;

    return-void
.end method

.method public setCvcForVirtualCard(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mCvcForVirtualCard:Ljava/lang/String;

    return-void
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mGUID:Ljava/lang/String;

    return-void
.end method

.method public setIsVirtualCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mIsVirtualCard:Z

    return-void
.end method

.method public setIssuerIconDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mIssuerIconDrawableId:I

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mMonth:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setObfuscatedNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mObfuscatedNumber:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->mYear:Ljava/lang/String;

    return-void
.end method
