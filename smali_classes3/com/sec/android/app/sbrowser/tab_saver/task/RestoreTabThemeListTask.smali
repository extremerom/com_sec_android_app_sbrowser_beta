.class public Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;
.super Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTabThemeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const-string p1, "RestoreTabThemeListTask"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mThreadName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;->lambda$postExecute$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private synthetic lambda$postExecute$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;->mTabThemeList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setThemeColor(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic doExecute()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;->doExecute()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doExecute()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_tab_wrapper_theme_list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->loadIntegerMapFromFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;->mTabThemeList:Ljava/util/Map;

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic postExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;->postExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public postExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;->mTabThemeList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->shouldUpdateColor()Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LH9/d;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, LH9/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->postExecute(Ljava/lang/Object;)V

    return-void
.end method
