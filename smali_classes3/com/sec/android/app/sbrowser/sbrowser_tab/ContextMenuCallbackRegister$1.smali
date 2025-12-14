.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;
.super Lcom/sec/android/app/sbrowser/tab/Tab;
.source "SourceFile"


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
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    return-void
.end method


# virtual methods
.method public findOnPage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public openInNewTab(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isIncognito()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOpenInNewTab(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public openLink(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->reload()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showTabGroupList(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyShowTabGroupList(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
