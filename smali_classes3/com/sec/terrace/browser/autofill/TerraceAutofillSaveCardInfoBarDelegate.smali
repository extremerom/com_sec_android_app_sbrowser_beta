.class public Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# instance fields
.field protected mBillingAddressGUID:Ljava/lang/String;

.field protected mGUID:Ljava/lang/String;

.field protected mMonth:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNumber:Ljava/lang/String;

.field protected mYear:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput-object p3, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mGUID:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mMonth:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mYear:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mBillingAddressGUID:Ljava/lang/String;

    return-void
.end method

.method public static create(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v9, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v9, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;

    const-wide/16 v1, 0x0

    move-object v0, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method public getBillingAddressGUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mBillingAddressGUID:Ljava/lang/String;

    return-object p0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mGUID:Ljava/lang/String;

    return-object p0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mMonth:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->mYear:Ljava/lang/String;

    return-object p0
.end method
