.class public Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static handleTabTearingIntent(Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "org.chromium.chrome.browser.window_id"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "MultiInstanceUtil"

    if-gez v1, :cond_1

    const-string p0, "handleNewIntent(): EXTRA_WINDOW_ID is null"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getMultiInstanceByTaskId(I)Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "handleNewIntent(): target instance is null"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getTabId(Landroid/content/Intent;)I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->getInstance()Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->remove(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v4

    const-string v5, "tab_button_drag_item_index"

    invoke-virtual {p0, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v4, :cond_3

    const-string p0, "handleNewIntent(): tab is null ("

    const-string v0, ")"

    invoke-static {v1, p0, v0, v3}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v1, "tab_button_drop_on_another_window"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "4093"

    goto :goto_0

    :cond_4
    const-string p0, "4092"

    :goto_0
    const-string v1, "201"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addTabToInstance(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    :cond_5
    return-void
.end method

.method public static moveTabToTargetWindow(IIII)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByTaskId(I)Landroid/app/Activity;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const-string v3, "MultiInstanceUtil"

    if-nez v2, :cond_0

    const-string p0, "moveTabToOtherWindow(): target activity is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByTaskId(I)Landroid/app/Activity;

    move-result-object p0

    instance-of v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-nez v2, :cond_1

    const-string p0, "moveTabToTargetWindow(): source activity is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "moveTabToTargetWindow(): sourceInstanceTabManager is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "moveTabToTargetWindow(): moved tab is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "org.chromium.chrome.browser.window_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "create_new_tab"

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "tab_button_drag_item_index"

    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "tab_button_drag_item_instance"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p0

    invoke-virtual {v2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "tab_button_drag_item_id"

    invoke-virtual {v2, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "tab_button_drop_on_another_window"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->setTabId(Landroid/content/Intent;I)V

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->getInstance()Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;

    move-result-object p0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;->add(ILcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
