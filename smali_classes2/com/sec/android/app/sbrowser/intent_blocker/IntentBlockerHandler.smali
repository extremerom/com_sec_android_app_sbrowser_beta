.class public Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

.field private mIconUpdateThread:Ljava/lang/Thread;

.field private mLastUpdatedTime:J

.field private mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mLastUpdatedTime:J

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->lambda$shouldIgnoreIntent$1(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)V

    return-void
.end method

.method private addHistory(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->insertHistory(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->notifyDataUpdated()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getPackagesCount(Z)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getPackagesCount(Z)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const p1, 0x7f140d4c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->lambda$notifyDataUpdated$0()V

    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sInstance:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sInstance:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;-><init>()V

    sput-object v2, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sInstance:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sInstance:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static getPackageNameIfBackgroundCaller(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "extra_background_caller"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "201"

    return-object p0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->isBlockedForPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSamsungInternet(Ljava/lang/String;)Z
    .locals 2

    const-string p0, ".beta"

    const-string v0, ""

    const-string v1, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$notifyDataUpdated$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;->onDataUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$shouldIgnoreIntent$1(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->addHistory(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->deleteOldHistory()V

    return-void
.end method

.method private sendSALoggingIfBlockedOrNot(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f140c51

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const p1, 0x7f140c02

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const p1, 0x7f140c01

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPackageNameIfBackgroundCaller(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const-string v0, "extra_background_caller"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearHistory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->clearHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->notifyDataUpdated()V

    :cond_0
    return-void
.end method

.method public deleteOldHistory()V
    .locals 2

    const-string v0, "IntentBlockerHandler"

    const-string v1, "deleteOldHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->deleteOldHistory()V

    return-void
.end method

.method public getAppHistory(I)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->getAppHistory(I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->getAppInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->setAppName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Could not get app information : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IntentBlockerHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method public getAppList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->getAppList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    :try_start_0
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getBlocked()Z

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not get app information : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IntentBlockerHandler"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f140d4b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f140d4c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getCountsByDate(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Z)",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->getCountsByDate(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getElapsedInterval(J)J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public getIntentDTO(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;-><init>()V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->setUrl(Ljava/lang/String;)V

    return-object v1

    :catch_0
    const-string p0, "Could not get app information : "

    const-string p2, "IntentBlockerHandler"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackagesCount(Z)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->getPackagesCount(Z)I

    move-result p0

    return p0
.end method

.method public isBackgroundApp(Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->getNotifyBackgroundExceptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "IntentBlockerHandler"

    if-eqz v0, :cond_0

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->queryAllWebBrowsersInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "browsable"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->getBackgroundImportanceValues()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "importance values: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "importance: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", process:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v7, v8, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return v1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const-string p0, "not found"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public notifyDataUpdated()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/intent_blocker/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/c;-><init>(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onIconUpdated()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestNotificationPermission(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;->requestNotificationPermission(Landroid/app/Activity;)V

    return-void
.end method

.method public resetBlocked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->resetBlocked()Z

    move-result p0

    return p0
.end method

.method public setBlocked(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->setBlocked(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->notifyDataUpdated()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const p2, 0x7f140d4b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getPackagesCount(Z)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setBlocked(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->setBlocked(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->notifyDataUpdated()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const p2, 0x7f140d4b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getPackagesCount(Z)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public shouldIgnoreIntent(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifierDelegate;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifierDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "IntentBlockerHandler"

    const-string v1, "shouldIgnoreIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    if-nez p4, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pkg:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sendSALoggingIfBlockedOrNot(Z)V

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->isSamsungInternet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sendSALoggingIfBlockedOrNot(Z)V

    return v2

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "empty url"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sendSALoggingIfBlockedOrNot(Z)V

    return v2

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getIntentDTO(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sendSALoggingIfBlockedOrNot(Z)V

    return v2

    :cond_4
    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->setIsCustomTabIntent(Z)V

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v1, LGa/d;

    const/16 v3, 0x1c

    invoke-direct {v1, v3, p0, p2}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->isBlocked(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p1, "blocked"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sendSALoggingIfBlockedOrNot(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->shouldShowNotification(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, p2, p5}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->showBlockedNotification(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifierDelegate;)V

    :cond_5
    return p1

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->isNotifyBackgroundCallerEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->isBackgroundApp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "background app"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->setPackageNameIfBackgroundCaller(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sendSALoggingIfBlockedOrNot(Z)V

    return v2

    :cond_8
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->sendSALoggingIfBlockedOrNot(Z)V

    return v2
.end method

.method public shouldShowNotification(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public showBlockedNotification(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifierDelegate;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifierDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifierDelegate;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;->setData(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;->show()V

    return-void
.end method

.method public updateDrawableIcons()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->getAppList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    :try_start_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mDbHelper:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->setImage(ILandroid/graphics/drawable/Drawable;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not get app information : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IntentBlockerHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mIconUpdateThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->onIconUpdated()V

    return-void
.end method

.method public updateDrawableIconsAsync()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mLastUpdatedTime:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getElapsedInterval(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mIconUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/intent_blocker/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/c;-><init>(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mIconUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->mLastUpdatedTime:J

    return-void
.end method
