.class final Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/base/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/PatternMatcher;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$1;-><init>(Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;Lorg/chromium/base/Callback;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;->getRestrictionPatternsAsync()Lorg/chromium/base/Promise;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;->getRestrictionPatterns()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;)Lorg/chromium/base/Promise;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;->getRestrictionPatternsAsync()Lorg/chromium/base/Promise;

    move-result-object p0

    return-object p0
.end method

.method private getRestrictionPatterns()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/PatternMatcher;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RestrictAccountsToPatterns"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lorg/chromium/components/signin/PatternMatcher;

    invoke-direct {v4, v3}, Lorg/chromium/components/signin/PatternMatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/chromium/components/signin/PatternMatcher$IllegalPatternException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccountRestriction"

    const-string v2, "Can\'t get account restriction patterns"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method private getRestrictionPatternsAsync()Lorg/chromium/base/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/Promise<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/PatternMatcher;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    new-instance v1, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;

    invoke-direct {v1, p0, v0}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;-><init>(Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;Lorg/chromium/base/Promise;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-object v0
.end method
