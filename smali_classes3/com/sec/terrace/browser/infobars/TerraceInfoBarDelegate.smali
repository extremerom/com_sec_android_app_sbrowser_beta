.class public Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;,
        Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;
    }
.end annotation


# instance fields
.field private mNativePtr:J

.field private mType:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mType:I

    iput-wide p2, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    return-void
.end method

.method private static create(IJ)Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public getInfoBarType()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mType:I

    return p0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    return-wide v0
.end method

.method public getResources()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onButtonClicked(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegateJni;->get()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;->onButtonClicked(JLcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;I)V

    :cond_0
    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegateJni;->get()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;->onCloseButtonClicked(JLcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)V

    :cond_0
    return-void
.end method

.method public onLinkClicked()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegateJni;->get()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;->onLinkClicked(JLcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)V

    :cond_0
    return-void
.end method

.method public onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->mNativePtr:J

    return-void
.end method
