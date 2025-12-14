.class public Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconDrawableId:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mPrimaryButtonText:Ljava/lang/String;

.field private mSecondaryButtonText:Ljava/lang/String;

.field private mTertiaryButtonText:Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mIconDrawableId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mIcon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mMessage:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mPrimaryButtonText:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mSecondaryButtonText:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mTertiaryButtonText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->getIconDrawableId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mIconDrawableId:I

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->getPrimaryButtonText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mPrimaryButtonText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->getSecondaryButtonText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mSecondaryButtonText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->getTertiaryButtonText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mTertiaryButtonText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIconDrawableId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mIconDrawableId:I

    return p0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPrimaryButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mPrimaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mSecondaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getTertiaryButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mTertiaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
