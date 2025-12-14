.class public Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;
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
.field private mListData:[B

.field private mTabColorList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabsToRestore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeList:Ljava/util/Map;
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
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const-string p1, "SaveListTask"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mThreadName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mTabsToRestore:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic doExecute()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->doExecute()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doExecute()Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mListData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->saveIntegerMapToFile([B)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mThemeList:Ljava/util/Map;

    const-string v3, "_tab_wrapper_theme_list"

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->saveIntegerMapToFile(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mTabColorList:Ljava/util/Map;

    const-string v2, "_tab_wrapper_tab_color_list"

    invoke-virtual {v0, p0, v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->saveIntegerMapToFile(Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic postExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->postExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public postExecute(Ljava/lang/Void;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mListData:[B

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mThemeList:Ljava/util/Map;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mTabColorList:Ljava/util/Map;

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->postExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public preExecute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mTabsToRestore:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->serializeTabManager(Ljava/util/List;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mListData:[B

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->serializeTabThemeData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mThemeList:Ljava/util/Map;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->serializeTabColorData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;->mTabColorList:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception occurs while serialize tab data : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
