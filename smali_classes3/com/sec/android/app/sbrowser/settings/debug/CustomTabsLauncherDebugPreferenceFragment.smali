.class public Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lw2/n;


# instance fields
.field private mClient:LH/k;

.field private mConnection:LH/v;

.field private mSession:LH/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;-><init>()V

    return-void
.end method

.method private applyColorSchemeExtras(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "pref_custom_tabs_launcher_statusbar_color"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.NEW_STATUSBAR_COLOR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putColorExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applySIExtras(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "pref_custom_tabs_launcher_toolbar_title"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.NEW_TITLE_INFO"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_toolbar_title_color"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.NEW_TITLE_COLOR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putColorExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_toolbar_title_size"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.NEW_TITLE_TEXT_SIZE"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putFloatExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_fullscreen_mode"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.NEW_FULLSCREEN_MODE"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putIntExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_show_title_after_load"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.show_title_after_complete_load"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_remove_menu_items"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.REMOVE_MENU_ITEMS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_remove_security_icon"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.REMOVE_SECURITY_ICON"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_remove_open_in_internet"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.extra.REMOVE_OPEN_IN_INTERNET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_launch_with_read_articles_aloud"

    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.EXTRA_LAUNCH_WITH_READ_ARTICLES_ALOUD"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applySideSheetExtra(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPartialCustomTabEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPartialCustomTabSideSheetEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "CustomTabsLauncherDebugPreferenceFragment"

    const-string v1, "applySideSheetExtra()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pref_custom_tabs_launcher_show_maximize_button"

    const-string v1, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_side_sheet_position"

    const-string v1, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_POSITION"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putIntExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_side_sheet_decoration_type"

    const-string v1, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_DECORATION_TYPE"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putIntExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_custom_tabs_launcher_side_sheet_rounded_corner_position"

    const-string v1, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putIntExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bindCustomTabService(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->mClient:LH/k;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "http://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    const-string v0, "CustomTabsClient"

    const-string v1, "Unable to find any Custom Tabs packages, you may need to add a <queries> element to your manifest. See the docs for CustomTabsClient#getPackageName."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->mConnection:LH/v;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LH/v;->setApplicationContext(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const/16 v1, 0x21

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private createButtonBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070239

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, p0, p0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createColorSchemeParams()LH/b;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "pref_custom_tabs_launcher_toolbar_color"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v3, "pref_custom_tabs_launcher_bottombar_color"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getColor(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    const-string v4, "pref_custom_tabs_launcher_navigation_bar_color"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getColor(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v4, "pref_custom_tabs_launcher_navigation_bar_divider_color"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getColor(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    new-instance p0, LH/b;

    invoke-direct {p0, v0, v3, v1, v2}, LH/b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method private createCustomPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsShareBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v1, 0x8000000

    invoke-static {}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getPendingIntentFlagMutable()I

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getCloseButtonPosition(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "Default"

    goto :goto_0

    :cond_0
    const-string p0, "End"

    goto :goto_0

    :cond_1
    const-string p0, "Start"

    :goto_0
    return-object p0
.end method

.method private getShareState(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "Default"

    goto :goto_0

    :cond_0
    const-string p0, "Off"

    goto :goto_0

    :cond_1
    const-string p0, "On"

    :goto_0
    return-object p0
.end method

.method private getUrlExtra()Landroid/net/Uri;
    .locals 2

    const-string v0, "pref_custom_tabs_launcher_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;)LH/k;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->mClient:LH/k;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;)LH/w;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->mSession:LH/w;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;LH/k;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->mClient:LH/k;

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;LH/w;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->mSession:LH/w;

    return-void
.end method

.method private launchCustomTab()Z
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, LH/p;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->mSession:LH/w;

    invoke-direct {v0, v2}, LH/p;-><init>(LH/w;)V

    const-string v2, "pref_custom_tabs_launcher_enter_animation"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const v3, 0x7f01010d

    const v4, 0x7f010118

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, v0, LH/p;->d:Landroid/app/ActivityOptions;

    :cond_1
    const-string v2, "pref_custom_tabs_launcher_exit_animation"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v5, v0, LH/p;->a:Landroid/content/Intent;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const-string v2, "pref_custom_tabs_launcher_custom_close_button"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0802d1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createButtonBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const-string v2, "pref_custom_tabs_launcher_url_bar_hiding"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "pref_custom_tabs_launcher_custom_action_buttons"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f08033c

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createButtonBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createCustomPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "android.support.customtabs.customaction.ID"

    invoke-virtual {v4, v6, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "android.support.customtabs.customaction.DESCRIPTION"

    const-string v6, "TEST"

    invoke-virtual {v4, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TINT_ACTION_BUTTON"

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string v2, "pref_custom_tabs_launcher_show_bottom_bar_buttons"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "CustomTabsLauncherDebugPreferenceFragment"

    if-eqz v2, :cond_5

    const-string v2, "launchCustomTab(): add secondary toolbar views"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0e01bd

    invoke-direct {v2, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v4, 0x7f0b03a7

    const v6, 0x7f0b03a6

    filled-new-array {v4, v6}, [I

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createCustomPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const-string v7, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_5
    const-string v2, "pref_custom_tabs_launcher_enable_swipe_up_gesture"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "launchCustomTab(): add secondary toolbar swipe up gesture"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createCustomPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const-string v4, "androidx.browser.customtabs.extra.SECONDARY_TOOLBAR_SWIPE_UP_GESTURE"

    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    const-string v2, "pref_custom_tabs_launcher_show_custom_option_menus"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Test option 1"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createCustomPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, LH/p;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    const-string v2, "Test option 2"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createCustomPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, LH/p;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    const-string v2, "Test option 3"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createCustomPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, LH/p;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    const-string v2, "Test option 4"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createCustomPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, LH/p;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    const-string v2, "Test option 5"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createCustomPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, LH/p;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    :cond_7
    const-string v2, "pref_custom_tabs_launcher_title_visibility_state"

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "pref_custom_tabs_launcher_share_state"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_19

    const/4 v6, 0x2

    if-gt v2, v6, :cond_19

    iput v2, v0, LH/p;->g:I

    const-string v7, "android.support.customtabs.extra.SHARE_MENU_ITEM"

    if-ne v2, v4, :cond_8

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_8
    if-ne v2, v6, :cond_9

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_9
    invoke-virtual {v5, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPartialCustomTabEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "pref_custom_tabs_launcher_initial_height_px"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getDimension(Ljava/lang/String;)I

    move-result v2

    const-string v7, "pref_custom_tabs_launcher_height_resize_behavior"

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-lez v2, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "launchCustomTab(): initialHeight -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "launchCustomTab(): resizeBehavior -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_b

    if-ltz v7, :cond_a

    if-gt v7, v6, :cond_a

    const-string v8, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_PX"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "androidx.browser.customtabs.extra.ACTIVITY_HEIGHT_RESIZE_BEHAVIOR"

    invoke-virtual {v5, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v2, v4

    goto :goto_1

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for the activityHeightResizeBehavior argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for the initialHeightPx argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    move v2, v1

    :goto_1
    const-string v7, "pref_custom_tabs_launcher_toolbar_radius_dp"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getDimension(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_e

    const/16 v8, 0x10

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ltz v7, :cond_d

    if-gt v7, v8, :cond_d

    const-string v8, "androidx.browser.customtabs.extra.TOOLBAR_CORNER_RADIUS_DP"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for the cornerRadiusDp argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_2
    const-string v7, "pref_custom_tabs_launcher_enable_background_interaction"

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    xor-int/2addr v7, v4

    const-string v8, "androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPartialCustomTabSideSheetEnabled()Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "pref_custom_tabs_launcher_initial_width_px"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getDimension(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_12

    const-string v8, "launchCustomTab(): initialWidth -> "

    invoke-static {v7, v8, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "Invalid value for the initialWidthPx argument"

    if-lez v7, :cond_11

    const-string v9, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_WIDTH_PX"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "pref_custom_tabs_launcher_break_point_dp"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getDimension(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_10

    const-string v9, "launchCustomTab(): breakPointDp -> "

    invoke-static {v7, v9, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-lez v7, :cond_f

    const-string v8, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_BREAKPOINT_DP"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_3
    move v7, v4

    goto :goto_4

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    move v7, v1

    goto :goto_4

    :cond_13
    move v2, v1

    move v7, v2

    :goto_4
    const-string v8, "pref_custom_tabs_launcher_close_button_position"

    invoke-virtual {p0, v8, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ltz v8, :cond_18

    if-gt v8, v6, :cond_18

    const-string v9, "androidx.browser.customtabs.extra.CLOSE_BUTTON_POSITION"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createColorSchemeParams()LH/b;

    move-result-object v5

    invoke-virtual {v5}, LH/b;->b()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v0, LH/p;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createColorSchemeParams()LH/b;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, LH/p;->c(LH/b;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->createColorSchemeParams()LH/b;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, LH/p;->c(LH/b;I)V

    invoke-virtual {v0}, LH/p;->b()LH/q;

    move-result-object v0

    iget-object v5, v0, LH/q;->a:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->applySIExtras(Landroid/content/Intent;)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->applyColorSchemeExtras(Landroid/content/Intent;)V

    if-eqz v7, :cond_14

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->applySideSheetExtra(Landroid/content/Intent;)V

    :cond_14
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;)V

    if-nez v2, :cond_16

    if-eqz v7, :cond_15

    goto :goto_5

    :cond_15
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->getUrlExtra()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, v0, LH/q;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v5, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_7

    :cond_16
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->getUrlExtra()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startNonPopOverActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_6
    return v4

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v3}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for the position argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for the shareState argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->mConnection:LH/v;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->bindCustomTabService(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "pref_custom_tabs_launcher_enable_swipe_up_gesture"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "pref_custom_tabs_launcher_show_bottom_bar_buttons"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "pref_custom_tabs_launcher_custom_action_buttons"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "pref_custom_tabs_launcher_exit_animation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "pref_custom_tabs_launcher_show_custom_option_menus"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v4, "pref_custom_tabs_launcher_url"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v4, "pref_custom_tabs_launcher_url_bar_hiding"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v4, "pref_custom_tabs_launcher_share_state"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v4, "pref_custom_tabs_launcher_title_visibility_state"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v4, "pref_custom_tabs_launcher_custom_close_button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v4, "pref_custom_tabs_launcher_close_button_position"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    move v3, v2

    goto :goto_0

    :sswitch_b
    const-string v4, "pref_custom_tabs_launcher_enter_animation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_1
    instance-of v3, p1, Landroidx/preference/ListPreference;

    if-eqz v3, :cond_c

    check-cast p1, Landroidx/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->getShareState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putInt(Ljava/lang/String;I)V

    return v2

    :cond_c
    return v1

    :pswitch_2
    instance-of v3, p1, Landroidx/preference/ListPreference;

    if-eqz v3, :cond_d

    check-cast p1, Landroidx/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->getCloseButtonPosition(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putInt(Ljava/lang/String;I)V

    return v2

    :cond_d
    return v1

    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBoolean(Ljava/lang/String;Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68deddd3 -> :sswitch_b
        -0x672f2961 -> :sswitch_a
        -0x62099749 -> :sswitch_9
        -0x46715d25 -> :sswitch_8
        -0x3434507f -> :sswitch_7
        -0x1f203155 -> :sswitch_6
        -0xf7d0f41 -> :sswitch_5
        -0x94d9cda -> :sswitch_4
        0x167f2453 -> :sswitch_3
        0x410fb856 -> :sswitch_2
        0x661e9b13 -> :sswitch_1
        0x78cf6c56 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_custom_tabs_launcher_execute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->launchCustomTab()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lw2/A;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f140403

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180020

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_custom_tabs_launcher_url"

    const-string p2, ""

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_enter_animation"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_exit_animation"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_url_bar_hiding"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_custom_close_button"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_custom_action_buttons"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_show_bottom_bar_buttons"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_enable_swipe_up_gesture"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_show_custom_option_menus"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_title_visibility_state"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_share_state"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->getShareState(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugListPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_close_button_position"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->getCloseButtonPosition(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugListPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_execute"

    invoke-virtual {p0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugClickablePreference(Ljava/lang/String;Lw2/n;)V

    return-void
.end method
