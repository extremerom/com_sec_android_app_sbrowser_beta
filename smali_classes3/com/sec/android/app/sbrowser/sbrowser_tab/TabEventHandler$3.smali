.class Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initLiveTextController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public onExtractTextEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->onExtractTextEnded()V

    return-void
.end method

.method public onExtractTextStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->onExtractTextStarted()V

    return-void
.end method

.method public onExtractTextSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$3;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyExtractTextSuccess()V

    return-void
.end method
