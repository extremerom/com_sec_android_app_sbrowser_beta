.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static launchAdBlockerSettings(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SBrowserMainActivityContextId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.extensions.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.extensions.show_fragment_type"

    const-string v2, "singleTask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    const v1, 0x7f0b0057

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public static launchNewsFeedTabCategoriesSettingFragment(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabCategoriesSettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/16 v2, 0x96

    const/16 v3, 0x300

    invoke-static {p0, v3, v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V

    return-void
.end method

.method public static launchPrivacySettings(Landroid/content/Context;IZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const-string p1, "block_popups"

    goto :goto_0

    :cond_0
    const-string p1, "block_unwanted_webpages"

    goto :goto_0

    :cond_1
    const-string p1, "anti_tracking_level"

    :goto_0
    const-string p2, ":settings:fragment_args_key"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.intent.PREFERENCE_PRIVACY_REPORT"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    check-cast p0, Landroid/app/Activity;

    const p1, 0x7f0b006c

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public static launchQuickAccessAddShortcut(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/16 v2, 0x96

    const/16 v3, 0x300

    invoke-static {p0, v3, v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V

    return-void
.end method

.method public static launchQuickAccessNativePage(Landroid/app/Activity;)V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v2, "internet-native://newtab/"

    const v3, 0x4000001

    const/4 v4, 0x0

    move-object v1, v7

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->reload()V

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public static launchQuickAccessNewsInNewTab(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static launchQuickAccessSettings(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/livedata/Event;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;

    const-string v2, "toast_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    const-string p1, "show_with_homepage_settings"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    if-eqz p2, :cond_2

    const/16 p1, 0xa0

    goto :goto_1

    :cond_2
    const/16 p1, 0x96

    :goto_1
    const/16 p2, 0x300

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V

    return-void
.end method

.method public static launchQuickAccessSync(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/16 v2, 0x96

    const/16 v3, 0x300

    invoke-static {p0, v3, v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V

    return-void
.end method
