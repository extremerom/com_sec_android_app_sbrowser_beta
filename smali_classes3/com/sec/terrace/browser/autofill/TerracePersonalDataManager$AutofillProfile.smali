.class public Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutofillProfile"
.end annotation


# instance fields
.field private mCompanyName:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mDependentLocality:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mGUID:Ljava/lang/String;

.field private mIsLocal:Z

.field private mLabel:Ljava/lang/String;

.field private mLanguageCode:Ljava/lang/String;

.field private mLocality:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mSortingCode:Ljava/lang/String;

.field private mStreetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 16

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    const-string v15, ""

    const-string v2, ""

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v13, ""

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mIsLocal:Z

    iput-object p3, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mStreetAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mRegion:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLocality:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mDependentLocality:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mPostalCode:Ljava/lang/String;

    iput-object p10, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mSortingCode:Ljava/lang/String;

    iput-object p11, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mCountryCode:Ljava/lang/String;

    iput-object p12, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    iput-object p13, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    iput-object p14, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
    .locals 16
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v15, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method


# virtual methods
.method public getCompanyName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public getDependentLocality()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mDependentLocality:Ljava/lang/String;

    return-object p0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    return-object p0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    return-object p0
.end method

.method public getIsLocal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mIsLocal:Z

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLocality:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mPostalCode:Ljava/lang/String;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mRegion:Ljava/lang/String;

    return-object p0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mSortingCode:Ljava/lang/String;

    return-object p0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mStreetAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setDependentLocality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mDependentLocality:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    return-void
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLocality:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mPostalCode:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public setSortingCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mSortingCode:Ljava/lang/String;

    return-void
.end method

.method public setStreetAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mStreetAddress:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->mLabel:Ljava/lang/String;

    return-object p0
.end method
