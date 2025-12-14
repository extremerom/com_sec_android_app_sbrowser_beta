.class Lcom/sec/terrace/TerraceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceHelper;->setClipboardListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/TerraceHelper;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPaste()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isActiveTerraceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinClipboardUtils;->canPaste(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public copyToSecClipboard(Landroid/content/ClipData;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isActiveTerraceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinClipboardUtils;->copyToSecClipboard(Landroid/content/Context;Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method

.method public getPrimaryClipHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isActiveTerraceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinClipboardUtils;->getPrimaryClipHtml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryClipText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isActiveTerraceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper$1;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinClipboardUtils;->getPrimaryClipText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
