.class public Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/cached_flags/CachedFlagsSafeMode$Behavior;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final PREF_SAFE_VALUES_VERSION:Ljava/lang/String; = "Chrome.Flags.SafeValuesVersion"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sInstance:Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;


# instance fields
.field private final mBehavior:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mEndCheckpointWritten:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStartCheckpointWritten:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;

    invoke-direct {v0}, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;-><init>()V

    sput-object v0, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->sInstance:Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->mBehavior:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->mStartCheckpointWritten:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->mEndCheckpointWritten:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->mBehavior:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->writeSafeValues()V

    return-void
.end method

.method public static getSafeValuePreferences()Landroid/content/SharedPreferences;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "org.chromium.chrome.browser.flags.SafeModeValues"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private writeSafeValues()V
    .locals 3

    const-string p0, "writeSafeValues"

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->getSafeValuePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lorg/chromium/base/cached_flags/ValuesReturned;->dumpToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    const-string v1, "Chrome.Flags.SafeValuesVersion"

    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method
