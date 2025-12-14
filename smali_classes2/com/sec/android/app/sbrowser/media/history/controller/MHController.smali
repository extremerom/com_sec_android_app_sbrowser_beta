.class public Lcom/sec/android/app/sbrowser/media/history/controller/MHController;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/history/view/IMHController;
.implements Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/history/controller/MHController$MessageHandler;,
        Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;,
        Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private final mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

.field private mItemDeleteTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;

.field private mThumbnailUpdateAsyncTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewFactory;->createMHistoryUI(Lcom/sec/android/app/sbrowser/media/history/view/IMHController;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$MessageHandler;

    invoke-direct {v1, p1, v0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$MessageHandler;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mItemDeleteTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mThumbnailUpdateAsyncTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public executeDelete()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mItemDeleteTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;-><init>(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mItemDeleteTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mItemDeleteTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mItemDeleteTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ItemDeleteTask;

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    const-string p0, "TAG"

    const-string v0, "Delete Task already running"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->finish()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public isPopOverMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onBackPressed()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseProvider;->matchUri(Landroid/net/Uri;)I

    move-result p2

    const/16 v0, 0x3f2

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onConfigurationChanged()V

    return-void
.end method

.method public onCreate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onCreate()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onItemClick(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onItemLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onResume()V

    return-void
.end method

.method public onShareButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->onShareButtonClicked()V

    return-void
.end method

.method public updateThumbnail()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mThumbnailUpdateAsyncTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mThumbnailUpdateAsyncTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mThumbnailUpdateAsyncTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->mThumbnailUpdateAsyncTask:Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
