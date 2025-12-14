.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCOUNT_ADDED_EXECUTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/IAccountExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstance:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;->sInstance:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;->ACCOUNT_ADDED_EXECUTORS:Ljava/util/Map;

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BrowserAccountExecutorImpl;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BrowserAccountExecutorImpl;-><init>()V

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;->sInstance:Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;

    return-object v0
.end method


# virtual methods
.method public addSamsungBookmark(Landroid/accounts/Account;Landroid/content/Context;Landroid/net/Uri;)J
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SyncAccountManager;->ACCOUNT_ADDED_EXECUTORS:Ljava/util/Map;

    const-string v0, "com.android.browser"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/IAccountExecutor;

    check-cast p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BrowserAccountExecutorImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BrowserAccountExecutorImpl;->addSamsungBookmark(Landroid/accounts/Account;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0
.end method
