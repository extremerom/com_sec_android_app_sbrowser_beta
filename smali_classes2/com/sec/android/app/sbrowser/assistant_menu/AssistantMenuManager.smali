.class public Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;
    }
.end annotation


# instance fields
.field private mAssistantMenuBroadcastReceiver:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;

.field private mIsBroadcastReceiverAdded:Z

.field private mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    new-instance p1, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;-><init>(Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mAssistantMenuBroadcastReceiver:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;

    return-void
.end method

.method private addAssistantMenu(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "addAssistantMenu called."

    const-string v1, "si__AssistantMenuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget v2, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY:I

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityName"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "IconName"

    const-string v3, "Enter web address;Tabs;New tab;"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "register"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->assistantMenuUpdate(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->updateBroadcastReceiverIfNecessary()V

    const-string p0, "addAssistantMenu done"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private assistantMenuUpdate(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Bundle;)Z
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/sbrowser/spl/wrapper/MajoAccessibilityManager;->assistantMenuUpdate(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "si__AssistantMenuManager"

    const-string p1, "Failed assistantMenuUpdate"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private registerBroadcastReceiver(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.doWindowManager"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.doInputURL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.doNewWindow"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mAssistantMenuBroadcastReceiver:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mIsBroadcastReceiverAdded:Z

    return-void
.end method

.method private removeAssistantMenu(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "removeAssistantMenu called"

    const-string v1, "si__AssistantMenuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget v2, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY:I

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityName"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "register"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->assistantMenuUpdate(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->updateBroadcastReceiverIfNecessary()V

    const-string p0, "removeAssistantMenu done"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldAddAssistantMenu(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)Z
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isMainViewShowing()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isCurrentTabEditMode()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isNoTabsShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_3
    return p1
.end method

.method private unregisterBroadcastReceiver(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mAssistantMenuBroadcastReceiver:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mIsBroadcastReceiverAdded:Z

    return-void
.end method

.method private updateBroadcastReceiverIfNecessary()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mIsBroadcastReceiverAdded:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->unregisterBroadcastReceiver(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mIsBroadcastReceiverAdded:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->registerBroadcastReceiver(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getBroadcastReceiver()Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mAssistantMenuBroadcastReceiver:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;

    return-object p0
.end method

.method public getMainActivityDelegate()Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return-object p0
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->updateAssistantMenuIfNecessary()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mAssistantMenuBroadcastReceiver:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;->release()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mAssistantMenuBroadcastReceiver:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;

    return-void
.end method

.method public updateAssistantMenuIfNecessary()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAssistantMenuMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByIndex(I)Landroid/app/Activity;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->shouldAddAssistantMenu(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->addAssistantMenu(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->removeAssistantMenu(Landroid/app/Activity;)V

    :goto_1
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->removeAssistantMenu(Landroid/app/Activity;)V

    return-void
.end method
