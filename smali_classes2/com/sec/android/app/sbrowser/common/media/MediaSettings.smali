.class public Lcom/sec/android/app/sbrowser/common/media/MediaSettings;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/media/MediaSettings$BackgroundPlay;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;
    .locals 2

    new-instance v0, Lf1/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    return-object v0
.end method


# virtual methods
.method public clearAmbientModeDefault()V
    .locals 1

    const-string v0, "pref_ambient_mode_default"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearBackgroundPlayDefault()V
    .locals 1

    const-string v0, "pref_background_play_default"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public getBackgroundPlay()I
    .locals 2

    const-string v0, "pref_background_play_default"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "pref_background_play"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isAmbientModeEnabled()Z
    .locals 2

    const-string v0, "pref_ambient_mode_default"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "pref_ambient_mode"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setAmbientModeDefault(Z)V
    .locals 1

    const-string v0, "pref_ambient_mode_default"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAmbientModeEnabled(Z)V
    .locals 1

    const-string v0, "pref_ambient_mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackgroundPlay(I)V
    .locals 1

    const-string v0, "pref_background_play"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBackgroundPlayCustomDataTime(J)V
    .locals 1

    const-string v0, "pref_background_play_custom_data_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setBackgroundPlayDefault(I)V
    .locals 1

    const-string v0, "pref_background_play_default"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method
