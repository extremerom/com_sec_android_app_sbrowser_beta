.class public Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmInfoBarResources"
.end annotation


# instance fields
.field private mIconDrawableId:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mPrimaryButtonText:Ljava/lang/String;

.field private mSecondaryButtonText:Ljava/lang/String;


# virtual methods
.method public getIconDrawableId()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->mIconDrawableId:I

    return p0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPrimaryButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->mPrimaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;->mSecondaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getTertiaryButtonText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
