.class public Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;
.super Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sec/terrace/TerraceState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTabToRestore:Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Lcom/sec/terrace/TerraceState;",
            ">;",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const-string p1, "LoadTabTask"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mThreadName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;->mTabToRestore:Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    return-void
.end method


# virtual methods
.method public doExecute()Lcom/sec/terrace/TerraceState;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;->mTabToRestore:Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->restoreTerraceState(II)Lcom/sec/terrace/TerraceState;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to read state: "

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic doExecute()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;->doExecute()Lcom/sec/terrace/TerraceState;

    move-result-object p0

    return-object p0
.end method

.method public getTabToRestore()Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;->mTabToRestore:Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    return-object p0
.end method
