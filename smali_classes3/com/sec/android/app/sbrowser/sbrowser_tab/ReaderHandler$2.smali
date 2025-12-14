.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/reader/ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->createReaderCallback()Lcom/sec/android/app/sbrowser/reader/ReaderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->lambda$createReaderTab$0(Ljava/lang/Void;)V

    return-void
.end method

.method private synthetic lambda$createReaderTab$0(Ljava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->destroyReader()V

    return-void
.end method


# virtual methods
.method public attachReaderTab()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attachReaderTab(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->notifyReaderTabAttached()V

    return-void
.end method

.method public createReaderTab()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    const-string v1, "createReaderTab(): "

    const-string v2, "si__ReaderHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already exist."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    new-instance v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->e(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->i(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->e(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/sbrowser/sbrowser_tab/f;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/f;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->initializeReaderTab(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is created."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public destroyReaderTab()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroyReaderTab(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->close()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->i(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V

    return-void
.end method

.method public extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V

    return-void
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->notifyDataLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExtractionFailed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyReaderModeFailed()V

    return-void
.end method

.method public showReaderTab()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showReaderTab(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->show()V

    return-void
.end method
