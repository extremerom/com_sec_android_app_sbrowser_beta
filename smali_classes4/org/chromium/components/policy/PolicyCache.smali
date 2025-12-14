.class public Lorg/chromium/components/policy/PolicyCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/policy/PolicyCache$Type;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final POLICY_PREF:Ljava/lang/String; = "Components.Policy"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sInstance:Lorg/chromium/components/policy/PolicyCache;


# instance fields
.field private mReadable:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/policy/PolicyCache;->mReadable:Z

    new-instance v0, Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/policy/PolicyCache;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/chromium/components/policy/PolicyCache;->lambda$get$0()V

    return-void
.end method

.method private enableWriteOnlyMode()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/policy/PolicyCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/policy/PolicyCache;->mReadable:Z

    return-void
.end method

.method public static get()Lorg/chromium/components/policy/PolicyCache;
    .locals 3

    sget-object v0, Lorg/chromium/components/policy/PolicyCache;->sInstance:Lorg/chromium/components/policy/PolicyCache;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/policy/PolicyCache;

    invoke-direct {v0}, Lorg/chromium/components/policy/PolicyCache;-><init>()V

    sput-object v0, Lorg/chromium/components/policy/PolicyCache;->sInstance:Lorg/chromium/components/policy/PolicyCache;

    new-instance v1, LN4/a;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LN4/a;-><init>(I)V

    invoke-static {v1}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/policy/PolicyCache;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    iget-object v0, p0, Lorg/chromium/components/policy/PolicyCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v1

    :try_start_0
    const-string v2, "Components.Policy"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/policy/PolicyCache;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/chromium/components/policy/PolicyCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;
    .locals 3

    iget-object p0, p0, Lorg/chromium/components/policy/PolicyCache;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {p0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Components.Policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method private static synthetic lambda$get$0()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/policy/PolicyCache;->sInstance:Lorg/chromium/components/policy/PolicyCache;

    return-void
.end method


# virtual methods
.method public cachePolicies(Lorg/chromium/components/policy/PolicyMap;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/policy/PolicyMap;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lorg/chromium/components/policy/PolicyCache$Type;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/policy/PolicyCache;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/chromium/components/policy/PolicyCache$1;->$SwitchMap$org$chromium$components$policy$PolicyCache$Type:[I

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/components/policy/PolicyCache$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lorg/chromium/components/policy/PolicyMap;->getDictValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Lorg/chromium/components/policy/PolicyMap;->getListValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Lorg/chromium/components/policy/PolicyMap;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Lorg/chromium/components/policy/PolicyMap;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Lorg/chromium/components/policy/PolicyMap;->getIntValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskWrites()Lorg/chromium/base/StrictModeContext;

    move-result-object p1

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_7
    invoke-direct {p0}, Lorg/chromium/components/policy/PolicyCache;->enableWriteOnlyMode()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_8

    :try_start_1
    invoke-virtual {p1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p0
.end method

.method public getAllPolicies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/policy/PolicyCache;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method
