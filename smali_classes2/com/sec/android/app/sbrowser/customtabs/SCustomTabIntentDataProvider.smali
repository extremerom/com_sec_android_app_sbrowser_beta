.class public Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;
.super Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;
.source "SourceFile"


# instance fields
.field private final mExtraFullScreenMode:I

.field private final mExtraLaunchWithReadArticlesAloud:Z

.field private final mExtraRemoveMenuItems:Z

.field private final mExtraRemoveOpenInInternet:Z

.field private final mExtraRemoveSecurityIcon:Z

.field private final mExtraShowTitleAfterCompleteLoad:Z

.field private final mExtraTitle:Ljava/lang/String;

.field private final mExtraTitleColor:I

.field private final mExtraTitleSize:F


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;-><init>(Landroid/content/Intent;Landroid/content/Context;I)V

    const-string p2, "com.sec.android.app.sbrowser.beta.customtabs.NEW_TITLE_INFO"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getToolbarColor()I

    move-result p2

    const-string p3, "com.sec.android.app.sbrowser.beta.customtabs.NEW_TITLE_COLOR"

    invoke-static {p1, p3, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitleColor:I

    const-string p2, "com.sec.android.app.sbrowser.beta.customtabs.NEW_TITLE_TEXT_SIZE"

    const/high16 p3, -0x40800000    # -1.0f

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetFloatExtra(Landroid/content/Intent;Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitleSize:F

    const-string p2, "com.sec.android.app.sbrowser.beta.customtabs.NEW_FULLSCREEN_MODE"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraFullScreenMode:I

    const-string p2, "com.sec.android.app.sbrowser.beta.customtabs.show_title_after_complete_load"

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraShowTitleAfterCompleteLoad:Z

    const-string p2, "com.sec.android.app.sbrowser.beta.customtabs.REMOVE_MENU_ITEMS"

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveMenuItems:Z

    const-string p2, "com.sec.android.app.sbrowser.beta.customtabs.REMOVE_SECURITY_ICON"

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveSecurityIcon:Z

    const-string p2, "com.sec.android.app.sbrowser.beta.customtabs.extra.REMOVE_OPEN_IN_INTERNET"

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveOpenInInternet:Z

    const-string p2, "com.sec.android.app.sbrowser.beta.customtabs.EXTRA_LAUNCH_WITH_READ_ARTICLES_ALOUD"

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraLaunchWithReadArticlesAloud:Z

    if-eqz p2, :cond_0

    const-string p2, "SCustomTabIntentDataProvider"

    const-string p3, "launchWithReadArticlesAloud : true"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->logCustomTabFeatures(Landroid/content/Intent;)V

    return-void
.end method

.method private logCustomTabFeatures(Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitleColor:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getToolbarColor()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitleSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_3
    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.NEW_FULLSCREEN_MODE"

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getStatusBarColor()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getInitialBackgroundColor()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_6
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraShowTitleAfterCompleteLoad:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_7
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveMenuItems:Z

    if-eqz p1, :cond_8

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_8
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveSecurityIcon:Z

    if-eqz p1, :cond_9

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_9
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveOpenInInternet:Z

    if-eqz p1, :cond_a

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_a
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraLaunchWithReadArticlesAloud:Z

    if-eqz p0, :cond_b

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->log(I)V

    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->printLog()V

    return-void
.end method


# virtual methods
.method public getExtraFullScreenMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraFullScreenMode:I

    return p0
.end method

.method public getExtraTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraTitleColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitleColor:I

    return p0
.end method

.method public getExtraTitleSize()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraTitleSize:F

    return p0
.end method

.method public isExtraLaunchWithReadArticlesAloud()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraLaunchWithReadArticlesAloud:Z

    return p0
.end method

.method public isExtraRemoveOpenInInternetEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveOpenInInternet:Z

    return p0
.end method

.method public isExtraRemoveSecurityIconEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveSecurityIcon:Z

    return p0
.end method

.method public isNoUiMode()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isNoUiMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraLaunchWithReadArticlesAloud:Z

    return p0
.end method

.method public shouldRemoveMenuItems()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraRemoveMenuItems:Z

    return p0
.end method

.method public showTitleAfterCompleteLoad()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;->mExtraShowTitleAfterCompleteLoad:Z

    return p0
.end method
