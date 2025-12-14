.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;


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
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrint()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->print()V

    return-void
.end method

.method public onSaveAllImages(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->saveAllImages(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveWebPage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOnSaveWebPage()V

    return-void
.end method

.method public onZoom()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->showZoomInOutPopup()V

    :cond_0
    return-void
.end method
