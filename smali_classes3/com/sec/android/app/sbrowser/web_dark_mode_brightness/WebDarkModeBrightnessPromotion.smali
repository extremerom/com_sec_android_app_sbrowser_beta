.class public Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;


# instance fields
.field private mActivated:Z

.field private final mActivitySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonClicked:Z

.field private mIsValuesInitialized:Z

.field private mLastPromotionTime:J

.field private mPromotionCount:I

.field private mSystemBrightness:I

.field private mSystemBrightnessChangedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivitySet:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->lambda$showPromotionIfNeeded$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->lambda$onStart$1(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->lambda$showInfoBar$2(Landroid/content/Context;I)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->sInstance:Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->sInstance:Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->sInstance:Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getScreenId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$onStart$1(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->addActivity(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->releaseInstance()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showInfoBar$2(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->sendEventLog(Landroid/content/Context;I)V

    const v0, 0x7f0b01f0

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_info_bar_button_clicked"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const p0, 0x7f0b01fb

    if-ne p2, p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class p2, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sbrowser.settings.show_fragment"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showPromotionIfNeeded$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->showPromotion(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->releaseInstance()V

    :cond_0
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LG6/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->sInstance:Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendEventLog(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    const v0, 0x7f0b01ed

    if-eq p2, v0, :cond_2

    const v0, 0x7f0b01f0

    if-eq p2, v0, :cond_1

    const v0, 0x7f0b01fb

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getScreenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "2497"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getScreenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "2498"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getWebDarkModeBrightness()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const-string v1, "BRT"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getScreenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "2496"

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public static showPromotionIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V
    .locals 3

    const-string v0, "WebDarkModeBrightnessPromotion"

    const-string v1, "showPromotionIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LGa/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WebDarkModeBrightnessPromotion"

    const-string v1, "activate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;)V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivated:Z

    return-void
.end method

.method public addActivity(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->isForceContentDarkMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->isPromotionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivitySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->activate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public deactivate()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WebDarkModeBrightnessPromotion"

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;)V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivated:Z

    return-void
.end method

.method public getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    const-string p0, "pref_web_dark_mode_brightness_promotion"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public initValues()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mIsValuesInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mSystemBrightness:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebDarkModeBrightnessPromotion"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_system_brightness_changed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mSystemBrightnessChangedCount:I

    const-string v1, "pref_promotion_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mPromotionCount:I

    const-string v1, "pref_last_promotion_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mLastPromotionTime:J

    const-string v1, "pref_info_bar_button_clicked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mButtonClicked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mIsValuesInitialized:Z

    return-void
.end method

.method public isForceContentDarkMode()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isUseWebsiteDarkThemeEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMatchedConditions()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->isForceContentDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->isPromotionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mSystemBrightnessChangedCount:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPromotionValid()Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->initValues()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mLastPromotionTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mPromotionCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mButtonClicked:Z

    if-nez p0, :cond_0

    const-wide/16 v2, 0x2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityStateChange : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebDarkModeBrightnessPromotion"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->removeActivity(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onScreenBrightnessChanged(F)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onScreenBrightnessChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebDarkModeBrightnessPromotion"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mSystemBrightness:I

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mSystemBrightness:I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_brightness_mode"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ne v2, v3, :cond_1

    const/16 v0, 0x46

    if-ge p1, v0, :cond_1

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mSystemBrightnessChangedCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mSystemBrightnessChangedCount:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->updateSystemBrightnessChangedCount(I)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    const-string v0, "pref_promotion_count"

    const-string v1, "pref_info_bar_button_clicked"

    const-string v2, "pref_system_brightness_changed"

    const-string v3, "pref_last_promotion_time"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mPromotionCount:I

    goto :goto_1

    :pswitch_1
    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mButtonClicked:Z

    goto :goto_1

    :pswitch_2
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mSystemBrightnessChangedCount:I

    goto :goto_1

    :pswitch_3
    const-wide/16 v0, 0x0

    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mLastPromotionTime:J

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->isPromotionValid()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->deactivate()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivitySet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7485266a -> :sswitch_3
        -0x4ab37646 -> :sswitch_2
        0x37dd3adb -> :sswitch_1
        0x6716bc57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivitySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivitySet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "WebDarkModeBrightnessPromotion"

    const-string v0, "all activity is removed from hashset"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->deactivate()V

    :cond_0
    return-void
.end method

.method public showInfoBar(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V
    .locals 3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    new-instance v1, LHa/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;)Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    return-void
.end method

.method public showPromotion(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Z
    .locals 2

    const-string v0, "WebDarkModeBrightnessPromotion"

    const-string v1, "showPromotion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->isMatchedConditions()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mActivated:Z

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->updateSystemBrightnessChangedCount(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->updatePromotionInfo()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->showInfoBar(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getScreenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "2495"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updatePromotionInfo()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mPromotionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->mPromotionCount:I

    const-string p0, "pref_promotion_count"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_last_promotion_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateSystemBrightnessChangedCount(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_system_brightness_changed"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
