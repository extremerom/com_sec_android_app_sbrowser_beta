.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    return-object p0
.end method

.method public isErrorPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isErrorPage()Z

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isLoading()Z

    move-result p0

    return p0
.end method

.method public isMultiCpUrl()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result p0

    return p0
.end method

.method public isOfflineMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isOfflineModePage()Z

    move-result p0

    return p0
.end method

.method public isReaderPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isSplitMode()Z

    move-result p0

    return p0
.end method

.method public isUnifiedHomepageUrl()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isUnifiedHomepageUrl()Z

    move-result p0

    return p0
.end method

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUrlBlockedByParentalControl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
