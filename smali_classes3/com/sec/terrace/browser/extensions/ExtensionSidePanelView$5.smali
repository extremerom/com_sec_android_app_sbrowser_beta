.class Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;
.super Lcom/sec/terrace/browser/extensions/ExtensionsTerraceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->launchExtensionsRenderView(II)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/ExtensionsTerraceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public hideClipboard()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->e(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->hideClipboard(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReportCrash dismissPopup() needToShowCrash: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " terminationStatus: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExtensionSidePanelView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->p(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    return-void
.end method

.method public registerClipboardPasteListener()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->e(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->registerClipboardPasteListener(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public showClipboard()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->e(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->showClipboard(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public unregisterClipboardPasteListener()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->e(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->unregisterClipboardPasteListener(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public webSearch(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->p(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->j(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "create_new_tab"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ActivityNotFoundException :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ExtensionSidePanelView"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
