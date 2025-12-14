.class abstract Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;
.super Lcom/sec/android/app/sbrowser/common/utils/NamedAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sec/android/app/sbrowser/common/utils/NamedAsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "TResult;>;"
        }
    .end annotation
.end field

.field protected final mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

.field protected mThreadName:Ljava/lang/String;

.field protected final mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/NamedAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method

.method public static synthetic a(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->lambda$shouldUpdateColor$0(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$shouldUpdateColor$0(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    if-eq v0, p0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public doExecute()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final varargs doInBackgroundWithName([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->doExecute()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mThreadName:Ljava/lang/String;

    return-object p0
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCancelled with name "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mThreadName:Ljava/lang/String;

    const-string v0, "BaseNamedAsyncTask"

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->postExecute(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->preExecute()V

    :cond_1
    :goto_0
    return-void
.end method

.method public postExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public preExecute()V
    .locals 0

    return-void
.end method

.method public shouldUpdateColor()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_saver/task/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/a;-><init>(I)V

    return-object v0
.end method
