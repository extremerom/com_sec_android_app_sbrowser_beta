.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;
.super Lcom/sec/android/app/sbrowser/tab/Tab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->createReaderContextMenuPopulator()Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;Lcom/sec/terrace/Terrace;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->lambda$openInNewTab$0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$openInNewTab$0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isIncognito()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOpenInNewTab(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public findOnPage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public goBack()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->goBack()V

    const/4 p0, 0x1

    return p0
.end method

.method public openInNewTab(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openLink(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setReaderPageEnabled(ZZZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrlWithRunnable(Ljava/lang/String;)V

    return-void
.end method

.method public selectText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->selectLongPressedLink()V

    return-void
.end method

.method public showTabGroupList(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyShowTabGroupList(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
