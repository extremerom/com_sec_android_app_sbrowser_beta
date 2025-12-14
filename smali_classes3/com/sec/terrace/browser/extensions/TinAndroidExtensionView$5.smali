.class Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->launchExtensionsRenderView(II)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closePopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->n(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    return-void
.end method

.method public getClientType()Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;
    .locals 0

    sget-object p0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->EXTENSION_POPUP:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->g(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    return-object p0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->c(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lorg/chromium/ui/base/ActivityWindowAndroid;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->n(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    return-void
.end method

.method public onCloseTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->b(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->i(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    :cond_0
    return-void
.end method

.method public onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V
    .locals 0

    return-void
.end method

.method public onHideTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->b(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->i(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    :cond_0
    return-void
.end method

.method public onInitializeTerrace(Lcom/sec/terrace/Terrace;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->a(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "TinAndroidExtensionView"

    const-string p1, "onInitializeTerrace mExtensionsRenderView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->n(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    return-void
.end method

.method public onSetContentViewBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public onShowTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->a(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->a(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->h(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->setCurrentWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    :cond_0
    return-void
.end method

.method public setOverlayVideoMode(Z)V
    .locals 0

    return-void
.end method
