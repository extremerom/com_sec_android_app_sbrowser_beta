.class Lcom/sec/terrace/TerraceConnectionInfoPopup$1;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceConnectionInfoPopup;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/TerraceConnectionInfoPopup;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup$1;->this$0:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public navigationEntryCommitted(Lorg/chromium/content_public/browser/LoadCommittedDetails;)V
    .locals 1

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadCommittedDetails;->isMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadCommittedDetails;->isSameDocument()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup$1;->this$0:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    invoke-static {p0}, Lcom/sec/terrace/TerraceConnectionInfoPopup;->a(Lcom/sec/terrace/TerraceConnectionInfoPopup;)Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;->dismissDialog()V

    :cond_0
    return-void
.end method

.method public webContentsDestroyed()V
    .locals 0

    invoke-super {p0}, Lorg/chromium/content_public/browser/WebContentsObserver;->webContentsDestroyed()V

    iget-object p0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup$1;->this$0:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    invoke-static {p0}, Lcom/sec/terrace/TerraceConnectionInfoPopup;->a(Lcom/sec/terrace/TerraceConnectionInfoPopup;)Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;->dismissDialog()V

    return-void
.end method
