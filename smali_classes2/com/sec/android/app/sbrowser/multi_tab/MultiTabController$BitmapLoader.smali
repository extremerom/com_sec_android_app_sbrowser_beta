.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapLoader"
.end annotation


# instance fields
.field private mExitHandler:Landroid/os/Handler;

.field private mExitRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->l(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MultiTabController"

    if-nez v0, :cond_1

    const-string p0, "Tab is null in BitmapLoader"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->f(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p3, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    if-nez p4, :cond_2

    const-string p0, "Callback is null during Outro"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_3
    new-instance p4, Lcom/sec/android/app/sbrowser/multi_tab/h;

    invoke-direct {p4, p0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/h;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-static {p1, p2, p4}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/multi_tab/h;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mExitHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/i;

    const/4 p4, 0x0

    invoke-direct {p2, p4, p0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mExitRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->lambda$new$0(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->lambda$new$1(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->lambda$new$2(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mExitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mExitHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mExitRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[tobe removed] getFullScreenCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiTabController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    const-string p0, "Callback is null during Outro"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
