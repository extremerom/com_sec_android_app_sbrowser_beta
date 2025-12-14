.class public Lcom/sec/android/app/sbrowser/MultiInstanceActivity;
.super Landroid/app/LauncherActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method

.method private checkRunningActivitiesVisibilityStatus([Z[Ljava/lang/Integer;Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z[",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CMI: Running Activity - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  TASK -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  isShown -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",  activity.isTaskRoot() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiInstanceActivity"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    aput-boolean v2, p1, v1

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    goto/16 :goto_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private getLastFocusedActivity()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getFocusedActivity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private launchInstanceForDex(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->isActivityCountFull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->getLastFocusedActivity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->showMaxInstanceToast(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchNewInstance(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private launchInstanceForMobile(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "com.samsung.intent.extra.OTHER_WINDOW"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "MultiInstanceActivity"

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.intent.extra.TARGET_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMI: Target class name : "

    invoke-static {v1, v0, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [Z

    new-array v4, v0, [Ljava/lang/Integer;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->checkRunningActivitiesVisibilityStatus([Z[Ljava/lang/Integer;Ljava/util/HashSet;)V

    const-string v6, "com.samsung.intent.extra.NEW_WINDOW"

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchNewWindow(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_3

    aget-boolean v6, v3, v1

    if-eqz v6, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->isPrepareLaunch(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getFlagForNewTask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "CMI: Call hide but running activity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getClassNameByActivityId(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->isActivityCountFull()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->getLastFocusedActivity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->showMaxInstanceToast(Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchNewInstance(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    const-string v0, "CMI: launchMainActivity() className - "

    const-string v1, "MultiInstanceActivity"

    invoke-static {v0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.DIRECT_HANDLE_INTENT"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInFreeFormWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CMI: Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT is removed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x1001

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->setPreLaunchFlag(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->unsetPreLaunchFlag(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private launchNewInstance(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getNextId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getClassNameByActivityId(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CMI: launchNewInstance() next - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", next className: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MultiInstanceActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "invalid_class_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CMI: invalid class, launch default activity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getDefaultActivity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->unsetPreLaunchFlag(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getFlagForNewTask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private launchNewWindow(Landroid/content/Intent;)Z
    .locals 7

    const-string v0, "CMI: INTENT_EXTRA_NEW_WINDOW"

    const-string v1, "MultiInstanceActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.intent.extra.CURRENT_INSTANCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CMI: Class name : "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CMI: Sending class name : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v5, v3, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "CMI: Open in another window already exist"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private onMultiInstanceModeStarted(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchInstanceForDex(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchInstanceForMobile(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showMaxInstanceToast(Landroid/app/Activity;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "MultiInstanceActivity"

    const-string v1, "CMI: Maximum number of instances are showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120031

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v2, 0x13880

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x103012b

    invoke-direct {p1, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public needCustomMultiInstance(Landroid/content/Intent;)Z
    .locals 2

    const-string p0, "com.samsung.intent.extra.DIRECT_HANDLE_INTENT"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "MultiInstanceActivity"

    if-eqz p0, :cond_0

    const-string p0, "CMI: New instance is already created. prevent infinite loop."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string p0, "com.samsung.intent.extra.NEW_WINDOW"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    const-string p0, "CMI: Open in new window"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "CMI: onCreate()"

    const-string v0, "MultiInstanceActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->needCustomMultiInstance(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMI: custom multi instance is not needed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getDefaultActivity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->launchMainActivity(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;->onMultiInstanceModeStarted(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
