.class public Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static MAX_LOCK_TAB_COUNT:I

.field private static MAX_TAB_COUNT:I


# instance fields
.field private mNewTabId:I

.field private mOldestTabClosedInstanceId:I

.field private mPendingUndoSnackbar:Z

.field private mReopenClicked:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mOldestTabClosedInstanceId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mNewTabId:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugMaximumTabCountLimit()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugMaximumTabCountLimit()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->setMaxTabCount(I)V

    goto :goto_0

    :cond_0
    sput v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->MAX_TAB_COUNT:I

    const/16 p0, 0x13

    sput p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->MAX_LOCK_TAB_COUNT:I

    :goto_0
    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->lambda$closeOldestTabWithReopenSnackBar$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->lambda$setReopenAction$1(Landroid/view/View;)V

    return-void
.end method

.method private canReopenClosedOldestTabFromInstance(I)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object p0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->canReopenClosedOldestTab()Z

    move-result p0

    return p0
.end method

.method private closeOldestTab()Z
    .locals 13

    const/4 v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move v5, v0

    move v6, v5

    move-wide v7, v1

    move v4, v3

    :goto_0
    const/4 v9, 0x5

    if-ge v4, v9, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceIdByIndex(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getOldestTabFromInstance(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v10

    if-eqz v10, :cond_1

    cmp-long v11, v7, v1

    if-eqz v11, :cond_0

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTimestampMillis()J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-gtz v11, :cond_1

    :cond_0
    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v5

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTimestampMillis()J

    move-result-wide v7

    move v6, v9

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ", id: "

    const-string v2, "si__MultiInstanceTabCountManager"

    if-eq v5, v0, :cond_4

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->closeOldestTabFromInstance(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[closeOldestTab] closed oldest tab in instance, instanceId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->updateMultiTabView()V

    :cond_3
    iput v6, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mOldestTabClosedInstanceId:I

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "[closeOldestTab] failed to close oldest tab in instance, instanceId: "

    invoke-static {v6, v5, p0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private closeOldestTabFromInstance(I)I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object p0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->closeOldestTab()I

    move-result p0

    return p0
.end method

.method private closeOldestTabWithReopenSnackBar(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->closeOldestTab()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->checkGlobalTabRestoring()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[closeOldestTabWithUndoSnackBar] closed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRestoring: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "si__MultiInstanceTabCountManager"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[closeOldestTabWithUndoSnackBar] instanceCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldestTabClosedInstanceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mOldestTabClosedInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "4054"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getSnackBarDelay(Landroid/content/Context;)J

    move-result-wide p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private closeTabFromInstance(II)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object p0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->closeTabByMaxTabLimit(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mPendingUndoSnackbar:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mPendingUndoSnackbar:Z

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    return-object v0
.end method

.method private getOldestTabFromInstance(I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object p0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    return-object p0
.end method

.method private getScreenID()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSnackBarDelay(Landroid/content/Context;)J
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c00bb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    int-to-long p0, p0

    return-wide p0

    :cond_0
    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c0025

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private isMaxTabCountReached()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getGlobalTabCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getFocusedInstanceActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$closeOldestTabWithReopenSnackBar$0(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->showReopenSnackBar(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$setReopenAction$1(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mReopenClicked:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mReopenClicked:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->reopenClosedOldestTab()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4079"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reopenClosedOldestTab()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->isMaxTabCountReached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getFocusedInstanceId()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mNewTabId:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->closeTabFromInstance(II)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "si__MultiInstanceTabCountManager"

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    const-string p0, "[reopenClosedOldestTab] cannot close new tab"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mOldestTabClosedInstanceId:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mNewTabId:I

    invoke-direct {p0, v0, v4}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->reopenClosedOldestTabFromInstance(II)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v2, :cond_5

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getFocusedInstanceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->updateMultiTabView()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[reopenClosedOldestTab] newTabClosed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isReopened: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reopenClosedOldestTabFromInstance(II)I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object p0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->reopenClosedOldestTab(I)I

    move-result p0

    return p0
.end method

.method private setMaxTabCount(I)V
    .locals 1

    sput p1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->MAX_TAB_COUNT:I

    div-int/lit8 p1, p1, 0x5

    sput p1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->MAX_LOCK_TAB_COUNT:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[setMaxTabCount] tabLimit: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->MAX_TAB_COUNT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", lockLimit: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->MAX_LOCK_TAB_COUNT:I

    const-string v0, "si__MultiInstanceTabCountManager"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private setReopenAction(Landroid/content/Context;LH6/o;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LH6/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mReopenClicked:Z

    new-instance p1, LK6/a;

    const/16 v0, 0xa

    invoke-direct {p1, v0, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    const p0, 0x7f14102f

    invoke-virtual {p2, p0, p1}, LH6/o;->j(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showReopenSnackBar(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f140310

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mOldestTabClosedInstanceId:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->canReopenClosedOldestTabFromInstance(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->setReopenAction(Landroid/content/Context;LH6/o;)V

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object v0

    :goto_0
    new-instance p1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager$1;-><init>(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;)V

    invoke-virtual {v0, p1}, LH6/m;->a(LH6/n;)V

    invoke-virtual {v0}, LH6/o;->l()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4078"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkGlobalTabCountLimit(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getGlobalTabCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->closeOldestTabWithReopenSnackBar(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getGlobalTabCount()I
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab_manager/TabList;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[getGlobalTabCount] instanceId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => tabCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v2, v1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "si__MultiInstanceTabCountManager"

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "[getGlobalTabCount] totalTabCount: "

    const-string v1, "/"

    invoke-static {v2, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2
.end method

.method public getMaxLockTabCount()I
    .locals 0

    sget p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->MAX_LOCK_TAB_COUNT:I

    return p0
.end method

.method public getMaxTabCount()I
    .locals 0

    sget p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->MAX_TAB_COUNT:I

    return p0
.end method

.method public recordNewTabId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->mNewTabId:I

    return-void
.end method
