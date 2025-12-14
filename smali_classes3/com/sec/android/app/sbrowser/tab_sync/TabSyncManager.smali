.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager$TabSyncAccountDelegate;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTabSyncAccountDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager$TabSyncAccountDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_sync/i;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->mTabSyncAccountDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager$TabSyncAccountDelegate;

    return-void
.end method

.method private getScreenId()Ljava/lang/String;
    .locals 0

    const-string p0, "403"

    return-object p0
.end method


# virtual methods
.method public launchSyncTabs()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isSamsungSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->mTabSyncAccountDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager$TabSyncAccountDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager$TabSyncAccountDelegate;->isSamsungAccountSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->getScreenId()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v3, "Cloud Tab"

    goto :goto_1

    :cond_1
    const-string v3, "No Account"

    :goto_1
    const-string v4, "4007"

    invoke-static {v2, v4, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->startSyncTabActivityForResult(I)V

    return-void
.end method

.method public startSyncTabActivityForResult(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SBrowserMainActivityContextId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "selectedAccount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x0

    const/16 v1, 0x6f

    const/16 v2, 0x300

    invoke-static {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V

    return-void
.end method
