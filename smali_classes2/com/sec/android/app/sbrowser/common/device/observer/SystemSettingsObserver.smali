.class public Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;,
        Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;,
        Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;,
        Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;,
        Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;,
        Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;,
        Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;
    }
.end annotation


# instance fields
.field private mAutofillServiceChangeObserver:Landroid/database/ContentObserver;

.field private mAutofillServiceChangeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEasyModeObserver:Landroid/database/ContentObserver;

.field private mEasyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyModeObserver:Landroid/database/ContentObserver;

.field private mEmergencyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNightDimObserver:Landroid/database/ContentObserver;

.field private mNightDimObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBrightnessObserver:Landroid/database/ContentObserver;

.field private mScreenBrightnessObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mShowPasswordObserver:Landroid/database/ContentObserver;

.field private mShowPasswordObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUltraPowerSavingModeObserver:Landroid/database/ContentObserver;

.field private mUltraPowerSavingModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    const-string v0, "exception : "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEasyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEmergencyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mUltraPowerSavingModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mShowPasswordObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mScreenBrightnessObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mNightDimObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mAutofillServiceChangeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$1;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mNightDimObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$2;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEasyModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$3;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEmergencyModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$4;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mUltraPowerSavingModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$5;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mShowPasswordObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$6;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$7;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$7;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mAutofillServiceChangeObserver:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mContext:Landroid/content/Context;

    const-string v2, "SystemSettingsObserver"

    if-nez v1, :cond_0

    const-string p0, "IMPOSSIBLE case : application context is NULL"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    :try_start_0
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EASY_MODE_SWITCH:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEasyModeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EASY_MODE_INTERNET:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEasyModeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->EMERGENCY_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEmergencyModeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->ULTRA_POWERSAVING_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mUltraPowerSavingModeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->BLUE_LIGHT_FILTER:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mNightDimObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$System;->BLUE_LIGHT_FILTER_NIGHT_DIM:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mNightDimObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    :try_end_5
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSettings$Secure;->ENHANCED_COMFORT_FONT_VALUE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mNightDimObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSecureContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    :try_end_6
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    :try_start_7
    const-string v1, "autofill_service"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mAutofillServiceChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSecureContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    const-string v0, "show_password"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mShowPasswordObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V

    const-string v0, "screen_brightness"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mAutofillServiceChangeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEasyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEmergencyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mNightDimObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mScreenBrightnessObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mShowPasswordObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mUltraPowerSavingModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->resetCachedSettings()V

    return-void
.end method

.method private registerSecureContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerSystemContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private resetCachedSettings()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->resetCachedSettings()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->resetCachedSettings()V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mAutofillServiceChangeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEasyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEmergencyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mNightDimObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mScreenBrightnessObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mShowPasswordObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mUltraPowerSavingModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mAutofillServiceChangeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEasyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mEmergencyModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$NightDimObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mNightDimObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mScreenBrightnessObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mShowPasswordObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->mUltraPowerSavingModeObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method
