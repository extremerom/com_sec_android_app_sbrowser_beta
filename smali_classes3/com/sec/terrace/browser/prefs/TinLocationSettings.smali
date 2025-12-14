.class public Lcom/sec/terrace/browser/prefs/TinLocationSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/prefs/TinLocationSettings$Natives;
    }
.end annotation


# static fields
.field static final LOCATION_PROMPT_ACCEPT:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_PROMPT_DENY:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_LOCATION_REQUEST_CODE:I = 0x6e
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_LOCATION_REQUEST_CODE:I = 0x64
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sInstance:Lcom/sec/terrace/browser/prefs/TinLocationSettings;


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRand:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->mCallbackMap:Ljava/util/Map;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->mRand:Ljava/util/Random;

    return-void
.end method

.method private static canSitesRequestLocationPermission(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/prefs/TinLocationSettings;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->sInstance:Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    invoke-direct {v0}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->sInstance:Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->sInstance:Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    return-object v0
.end method

.method private static isGMSAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, La5/b;->d:La5/b;

    sget v2, La5/c;->a:I

    invoke-virtual {v1, v2, p0}, La5/c;->b(ILandroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private static isInLocationSettingsBackOff()Z
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location_backoff_time"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSystemLocationSettingEnabled()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static promptToEnableLocation(J)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->getInstance()Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/prefs/TinLocationSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/prefs/TinLocationSettings$2;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->promptToEnableLocationSetting(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method private promptToEnableLocationSetting(Lorg/chromium/base/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->getCurrentTerraceActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-static {v6}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->isGMSAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->mRand:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x6e

    iget-object v0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->mCallbackMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->b()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p1, LL5/c;->a:I

    new-instance p1, LD5/d;

    sget-object v3, LD5/d;->a:Lb5/g;

    sget-object v4, Lb5/c;->U:Lb5/b;

    sget-object v5, Lb5/i;->c:Lb5/i;

    move-object v0, p1

    move-object v1, v6

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1, v1}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v1

    new-instance v2, LI3/c;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, LI3/c;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, LG6/f;->d:Ljava/lang/Object;

    const/16 v0, 0x97a

    iput v0, v1, LG6/f;->c:I

    invoke-virtual {v1}, LG6/f;->a()Lc5/L;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb5/j;->doRead(Lc5/u;)LR5/h;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/prefs/TinLocationSettings$1;

    invoke-direct {v0, p0, v6, v7}, Lcom/sec/terrace/browser/prefs/TinLocationSettings$1;-><init>(Lcom/sec/terrace/browser/prefs/TinLocationSettings;Landroid/app/Activity;I)V

    check-cast p1, LR5/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LR5/l;

    sget-object v1, LR5/j;->a:LH4/s;

    invoke-direct {p0, v1, v0}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/d;)V

    iget-object v0, p1, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b(Landroid/app/Activity;)Lc5/l;

    move-result-object v0

    const-string v1, "TaskOnStopCallback"

    const-class v2, LR5/o;

    invoke-interface {v0, v2, v1}, Lc5/l;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v1

    check-cast v1, LR5/o;

    if-nez v1, :cond_2

    new-instance v1, LR5/o;

    invoke-direct {v1, v0}, LR5/o;-><init>(Lc5/l;)V

    :cond_2
    iget-object v0, v1, LR5/o;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, v1, LR5/o;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, LR5/p;->t()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static updatePrefLocationBackoffTime()V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x1cf7c5800L

    add-long/2addr v0, v2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "location_backoff_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addCallbackToMap(Ljava/lang/Integer;Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearLocationBackoff()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "location_backoff_time"

    const-wide/high16 v1, -0x8000000000000000L

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public isLocationRequestCode(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->mCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCallbackReceived(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->mCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->mCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
