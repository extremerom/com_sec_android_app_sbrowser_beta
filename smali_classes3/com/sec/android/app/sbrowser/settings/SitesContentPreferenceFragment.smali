.class public Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"


# instance fields
.field mDefaultStoragePreference:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method private createShowFolderIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultInternalDownloadPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "MEMORY_CARD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultExternalDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getAbsoluteRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->isPickMyFilesSupported()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "samsung.myfiles.intent.extra.START_PATH"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.PICK_SELECT_PATH"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TOP_PATH"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uri"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ONLY_FOLDER"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->lambda$updateView$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private isPickMyFilesSupported()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->lambda$updateView$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updateView$0(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "PHONE"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->openMyFilesForRelativePath(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateView$1(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadDefaultStorage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->openMyFilesForRelativePath(Ljava/lang/String;)V

    return-void
.end method

.method private openMyFilesForRelativePath(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->createShowFolderIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->isPickMyFilesSupported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to start activity"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SitesContentPreference"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->l(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    const-string v0, "PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f140c91

    goto :goto_2

    :cond_2
    const p1, 0x7f140c92

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private restoringPreference()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBackUpAndRestoreDone()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBackUpAndRestoreDone(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->initializePreferencesValues()V

    return-void
.end method

.method private sendSALoggingEvent(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f140c93

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadPathDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendSALoggingStatus(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f140d57

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadPathDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateView()V
    .locals 4

    const v0, 0x7f180076

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    const-string v3, "pref_hide_status_bar_no_cutout"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    :cond_0
    const-string v0, "web_push_notification_fragment"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isWebPushFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string v0, "download_default_storyage"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->mDefaultStoragePreference:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isDownloadStorageVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->mDefaultStoragePreference:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->mDefaultStoragePreference:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/j;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->setOnPreferenceClickListener(Lw2/n;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->mDefaultStoragePreference:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/d;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    const-string v0, "download_show_rename_popup"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string v0, "secure_download_service"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "download_label"

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140cd3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "536"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140a50

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->updateView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p2, 0x1

    const v1, 0x7f1404a3

    const v2, 0x1020002

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->setDownloadPathFromMyFiles(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setDownloadRelativePath(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->sendSALoggingEvent(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->sendSALoggingStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->mDefaultStoragePreference:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->updateView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDownloadSaveAsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->setDownloadPathFromMyFiles(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setDownloadDefaultStorage(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->sendSALoggingEvent(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->sendSALoggingStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->mDefaultStoragePreference:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->updateView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->restoringPreference()V

    return-void
.end method
