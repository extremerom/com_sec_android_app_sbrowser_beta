.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrint()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->print()V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyRefresh()V

    :cond_0
    return-void
.end method

.method public onSaveAllImages(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->saveAllImages(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveWebPage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOnSaveWebPage()V

    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyContextMenuShown()V

    :cond_0
    return-void
.end method

.method public onZoom()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$2;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->showZoomInOutPopup()V

    :cond_0
    return-void
.end method
