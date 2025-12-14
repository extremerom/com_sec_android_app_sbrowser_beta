.class Lcom/sec/terrace/TerraceActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$TerraceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/TerraceActivity;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeExtensionPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->closeExtensionPopup()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object p0

    return-object p0
.end method

.method public getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isExtensionTerrace()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p1}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->j(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/ActivityWindowAndroid;

    move-result-object p0

    return-object p0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->onBackgroundColorChanged(I)V

    :cond_0
    return-void
.end method

.method public onCloseTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isExtensionTerrace()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->onCloseTerrace(Lcom/sec/terrace/Terrace;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->g(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/sec/terrace/TerraceActivity;->k(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V

    :cond_1
    return-void
.end method

.method public onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->getClientType()Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->EXTENSION_POPUP:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public onHideTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isExtensionTerrace()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->onHideTerrace(Lcom/sec/terrace/Terrace;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->g(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/sec/terrace/TerraceActivity;->k(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V

    :cond_1
    return-void
.end method

.method public onInitializeCompositorView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->m(Lcom/sec/terrace/TerraceActivity;)V

    return-void
.end method

.method public onInitializeTerrace(Lcom/sec/terrace/Terrace;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isExtensionTerrace()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->onInitializeTerrace(Lcom/sec/terrace/Terrace;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0, p1, p2}, Lm/n;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onSetContentViewBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->onSetContentViewBackgroundColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setSurfaceViewBackgroundColor(I)V

    return-void
.end method

.method public onShowTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isExtensionTerrace()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->onShowTerrace(Lcom/sec/terrace/Terrace;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->g(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->g(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->g(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->hide()V

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p1, v0}, Lcom/sec/terrace/TerraceActivity;->k(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setCurrentWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0

    :cond_2
    const-string p0, "TerraceActivity"

    const-string p1, "onShowTerrace : CompositorView not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public setOverlayVideoMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->h(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;->setOverlayVideoMode(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$4;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setOverlayVideoMode(Z)V

    return-void
.end method
