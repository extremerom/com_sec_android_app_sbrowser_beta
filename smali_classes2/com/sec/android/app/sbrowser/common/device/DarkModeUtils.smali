.class public Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;,
        Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$ManageDarkMode;,
        Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkMode;
    }
.end annotation


# instance fields
.field private mCannotApplyNightModeInformRequired:Z

.field private final mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemNightTheme:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/device/a;-><init>(ILjava/lang/Object;)V

    invoke-super {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    return-object v0
.end method

.method public static isDarkTheme(I)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_high_contrast_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->onHighContrastModeEnabled(Z)V

    :cond_0
    return-void
.end method

.method private onHighContrastModeEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setHighContrastMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setNightMode(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mSystemNightTheme:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setHighContrastBeforeSystemNight(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->callObservers()V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x2

    :cond_3
    invoke-static {v0}, Lm/p;->n(I)V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public callObservers()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getCurrentMode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;->onDarkModeChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isUseWebsiteDarkThemeEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getManageDarkModeSetting()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getManageDarkModeSystemDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p0

    return p0
.end method

.method public getManageDarkModeSystemDefault()Z
    .locals 2

    const-string v0, "pref_manage_dark_mode_system_default"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getWebDarkModeBrightness()F
    .locals 2

    const-string v0, "pref_web_dark_mode_brightness"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public initialize()V
    .locals 4

    const-string v0, "pref_use_website_dark_theme"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DarkModeUtils"

    const-string v3, "PREF_USE_WEBSITE_DARK_THEME is true  then set PREF_APPLY_DEFAULT_DARK_MODE as false "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "pref_apply_default_dark_mode"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setHighContrastMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setNightMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getWebDarkModeBrightness()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setVAXContrastFactor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isUseWebsiteDarkThemeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setForceDarkBehavior(I)V

    return-void
.end method

.method public isApplyDefaultDarkModeEnabled()Z
    .locals 2

    const-string v0, "pref_apply_default_dark_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isContentDarkModeEnabled()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_content_dark_mode"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isDarkModeEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHighContrastBeforeSystemNight()Z
    .locals 2

    const-string v0, "pref_high_contrast_before_system_night"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isHighContrastModeEnabled()Z
    .locals 2

    const-string v0, "pref_high_contrast_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNightModeEnabled()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getManageDarkModeSystemDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "pref_night_mode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSystemNightThemeChanged(Landroid/content/res/Configuration;)Z
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDefaultNightModeIfNeeded :  systemNightTheme="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " PrevSystemNightTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mSystemNightTheme:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DarkModeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mSystemNightTheme:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mSystemNightTheme:Ljava/lang/Boolean;

    const/4 p0, 0x1

    return p0
.end method

.method public isUseWebsiteDarkThemeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isApplyDefaultDarkModeEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyCanNotApplyToastIfNeeded(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mCannotApplyNightModeInformRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mCannotApplyNightModeInformRequired:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentDarkModeEnabled(Z)V
    .locals 1

    const-string v0, "pref_content_dark_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setNightMode(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->callObservers()V

    return-void
.end method

.method public setDefaultNightModeIfNeeded()V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v1

    sget v2, Lm/p;->b:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getManageDarkModeSystemDefault()Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/4 v7, 0x2

    if-nez v4, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mSystemNightTheme:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v0, :cond_4

    :cond_1
    if-nez v1, :cond_4

    if-eqz v0, :cond_2

    if-ne v2, v7, :cond_4

    :cond_2
    if-nez v0, :cond_3

    if-eq v2, v6, :cond_3

    goto :goto_1

    :cond_3
    move v8, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v6

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setDefaultNightModeIfNeeded: systemNightThemeSupported = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", systemNightTheme = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mSystemNightTheme:Ljava/lang/Boolean;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", nightModeEnabled = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", highContrastMode = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", contentDarkMode = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", defaultNightMode = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", appTheme = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", shouldChangeUiMode = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DarkModeUtils"

    invoke-static {v2, v9, v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mSystemNightTheme:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastBeforeSystemNight()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mCannotApplyNightModeInformRequired:Z

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setHighContrastBeforeSystemNight(Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setHighContrastBeforeSystemNight(Z)V

    :cond_6
    :goto_3
    if-eqz v8, :cond_9

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setNightMode(Z)V

    :cond_7
    or-int p0, v0, v1

    if-eqz p0, :cond_8

    move v6, v7

    :cond_8
    invoke-static {v6}, Lm/p;->n(I)V

    :cond_9
    return-void
.end method

.method public setDefaultNightModeIfNeeded(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isSystemNightThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setDefaultNightModeIfNeeded()V

    return-void
.end method

.method public setHighContrastBeforeSystemNight(Z)V
    .locals 1

    const-string v0, "pref_high_contrast_before_system_night"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setManageDarkModeSetting(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "DarkModeUtils"

    const-string p1, "system does not support night theme"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setManageDarkModeSystemDefault(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setNightModeEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setManageDarkModeSystemDefault(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setNightModeEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setManageDarkModeSystemDefault(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setNightModeEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setManageDarkModeSystemDefault(Z)V
    .locals 2

    const-string v0, "setManageDarkModeSystemDefault = "

    const-string v1, "DarkModeUtils"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "pref_manage_dark_mode_system_default"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNightModeEnabled(Z)V
    .locals 1

    const-string v0, "pref_night_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->callObservers()V

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Lm/p;->n(I)V

    return-void
.end method

.method public setSystemNightTheme(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->mSystemNightTheme:Ljava/lang/Boolean;

    return-void
.end method

.method public setWebDarkModeBrightness(F)V
    .locals 1

    const-string v0, "pref_web_dark_mode_brightness"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistFloat(Ljava/lang/String;F)V

    return-void
.end method
