.class public Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate$Natives;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;

.field private mResources:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;


# direct methods
.method private constructor <init>(IJLcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput-object p4, p0, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;->mResources:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;

    iput-object p5, p0, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;->mListener:Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;

    return-void
.end method

.method private static createJava(IJLjava/lang/Object;Ljava/lang/Object;)Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;

    move-object v4, p3

    check-cast v4, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;

    move-object v5, p4

    check-cast v5, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;-><init>(IJLcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;)V

    return-object v6
.end method


# virtual methods
.method public getResources()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;->mResources:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;

    return-object p0
.end method

.method public onButtonClicked(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;->mListener:Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;->onInfoBarButtonClicked(Z)Z

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->onButtonClicked(I)V

    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarDelegate;->mListener:Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/terrace/browser/ui/messages/infobar/TinSimpleConfirmInfoBarBuilder$Listener;->onInfoBarDismissed()V

    :cond_0
    invoke-super {p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->onCloseButtonClicked()V

    return-void
.end method
