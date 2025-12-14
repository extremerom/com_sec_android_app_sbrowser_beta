.class public Lorg/chromium/components/cached_flags/CachedFlagsSharedPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final FLAGS_CACHED:Lorg/chromium/base/shared_preferences/KeyPrefix;

.field public static final FLAGS_CRASH_STREAK_BEFORE_CACHE:Ljava/lang/String; = "Chrome.Flags.CrashStreakBeforeCache"

.field public static final FLAGS_FEATURE_PARAM_CACHED:Lorg/chromium/base/shared_preferences/KeyPrefix;

.field public static final FLAGS_SAFE_MODE_RUNS_LEFT:Ljava/lang/String; = "Chrome.Flags.SafeModeRunsLeft"

.field public static final REGISTRY:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/chromium/base/shared_preferences/KeyPrefix;

    const-string v1, "Chrome.Flags.CachedFlag.*"

    invoke-direct {v0, v1}, Lorg/chromium/base/shared_preferences/KeyPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/components/cached_flags/CachedFlagsSharedPreferences;->FLAGS_CACHED:Lorg/chromium/base/shared_preferences/KeyPrefix;

    new-instance v1, Lorg/chromium/base/shared_preferences/KeyPrefix;

    const-string v2, "Chrome.Flags.FeatureParamCached.*"

    invoke-direct {v1, v2}, Lorg/chromium/base/shared_preferences/KeyPrefix;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/chromium/components/cached_flags/CachedFlagsSharedPreferences;->FLAGS_FEATURE_PARAM_CACHED:Lorg/chromium/base/shared_preferences/KeyPrefix;

    sget-boolean v2, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v2, :cond_1

    new-instance v2, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    invoke-virtual {v0}, Lorg/chromium/base/shared_preferences/KeyPrefix;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/chromium/base/shared_preferences/KeyPrefix;->pattern()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Chrome.Flags.CrashStreakBeforeCache"

    const-string v4, "Chrome.Flags.SafeModeRunsLeft"

    filled-new-array {v0, v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v3, "cached_flags"

    invoke-direct {v2, v3, v0, v1, v1}, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sput-object v2, Lorg/chromium/components/cached_flags/CachedFlagsSharedPreferences;->REGISTRY:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    return-void
.end method

.method public static getInstance()Lorg/chromium/base/shared_preferences/SharedPreferencesManager;
    .locals 1

    sget-object v0, Lorg/chromium/components/cached_flags/CachedFlagsSharedPreferences;->REGISTRY:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    invoke-static {v0}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->getInstanceForRegistry(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    move-result-object v0

    return-object v0
.end method
