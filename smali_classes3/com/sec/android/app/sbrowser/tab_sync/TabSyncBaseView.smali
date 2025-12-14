.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;
    }
.end annotation


# instance fields
.field private mActionModeWithSelectAll:Z

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

.field protected mContext:Landroid/content/Context;

.field protected mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

.field protected mIsShiftKeyPressed:Z

.field protected mLocale:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResultValues:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

.field mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

.field private mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

.field mTabSyncActivity:Lm/n;

.field mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

.field mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActivityStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->NORMAL:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mIsShiftKeyPressed:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->lambda$createProgressDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActivityStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    return-object p0
.end method

.method private createProgressDialog()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f141004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/sec/android/app/sbrowser/common/utils/e;

    const/4 v0, 0x1

    invoke-direct {v7, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/e;-><init>(ILjava/lang/Object;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private synthetic lambda$createProgressDialog$0(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActivityStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;->finishActivityWithResult(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public callOnClickListener(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tabUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivityStatus()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActivityStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    return-object p0
.end method

.method public getControllerDelegate()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

    return-object p0
.end method

.method public handleDestroyActionMode()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->NORMAL:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V

    return-void
.end method

.method public handleSelectAll()V
    .locals 0

    return-void
.end method

.method public initializeUI(Lm/n;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public isActionModeWithSelectAll()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[isActionModeWithSelectAll] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActionModeWithSelectAll:Z

    const-string v2, "TabSyncUi"

    invoke-static {v2, v0, v1}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActionModeWithSelectAll:Z

    return p0
.end method

.method public isEditMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->EDIT:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMasterSyncOn()Z
    .locals 1

    const-string p0, "TabSyncUi"

    const-string v0, "[isMasterSyncOn:Base]"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isShiftKeyPressed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mIsShiftKeyPressed:Z

    return p0
.end method

.method public isShowingCustomSyncingLayout()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSignIn()Z
    .locals 1

    const-string p0, "TabSyncUi"

    const-string v0, "[isSignIn:Base]"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onBackPressed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onBackPressed] mScreenType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabSyncUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->NORMAL:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    if-ne v0, v1, :cond_1

    const-string v0, "403"

    const-string v1, "4013"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;->finishActivityWithResult(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->handleDestroyActionMode()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActivityStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onOptionsItemSelected:Base] item : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabSyncUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b03d7

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "[onOptionsItemSelected:Base] delete"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "403"

    const-string v0, "4014"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->startActionModeForDelete(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "[onOptionsItemSelected:Base] home"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->onBackPressed()V

    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;->BACKGROUND:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActivityStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "[onPrepareOptionsMenu]"

    const-string v1, "TabSyncUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v2, 0x7f0b03d7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->isMasterSyncOn()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->isSignIn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mResultValues:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mTabSyncData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "[onPrepareOptionsMenu] show menu"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const-string p0, "[onPrepareOptionsMenu] hide menu"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v3
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActivityStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public processPostExecuteUI(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mResultValues:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    return-void
.end method

.method public refreshUI()V
    .locals 4

    const-string v0, "TabSyncUi"

    const-string v1, "[refreshUI]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;-><init>(Landroid/content/Context;Landroid/app/ProgressDialog;)V

    filled-new-array {v1}, [Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    return-void
.end method

.method public setSyncTabController(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

    return-void
.end method

.method public showActionBarCheckBox(Z)V
    .locals 0

    return-void
.end method

.method public startActionModeForDelete(Z)V
    .locals 2

    const-string v0, "[startActionModeForDelete] selectAll : "

    const-string v1, "TabSyncUi"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->EDIT:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mActionModeWithSelectAll:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V

    return-void
.end method

.method public startTabSyncing(Z)V
    .locals 3

    const-string v0, "TabSyncUi"

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->isShowingCustomSyncingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "[startTabSyncing] Already syncing stage"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "[startTabSyncing] isFirst : "

    invoke-static {v1, v0, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;->isAccountSignUp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[startTabSyncing] is sign up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;-><init>(Landroid/content/Context;)V

    filled-new-array {v0}, [Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->createProgressDialog()V

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;-><init>(Landroid/content/Context;Landroid/app/ProgressDialog;)V

    filled-new-array {v0}, [Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mSyncTabAsync:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;

    goto :goto_0

    :cond_2
    const-string p1, "[startTabSyncing] no sign"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->processPostExecuteUI(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public turnOnSync()V
    .locals 0

    return-void
.end method

.method public updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V
    .locals 0

    return-void
.end method

.method public updateSelectAllLayoutNoDelay()V
    .locals 0

    return-void
.end method
