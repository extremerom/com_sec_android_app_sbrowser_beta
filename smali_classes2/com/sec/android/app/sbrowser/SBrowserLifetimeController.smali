.class Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerraceApplicationLifetime$Observer;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# static fields
.field private static final sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mRemainingActivitiesCount:I

.field private mRestartChromeOnDestroy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->mRemainingActivitiesCount:I

    return-void
.end method

.method private fireBrowserRestartActivityIntent(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/sbrowser/SBrowserRestartActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sbrowser.beta.SBrowserRestartActivity.main_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sbrowser.beta.SBrowserRestartActivity.restart"

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->mRestartChromeOnDestroy:Z

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static init()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/browser/TerraceApplicationLifetime;->addObserver(Lcom/sec/terrace/browser/TerraceApplicationLifetime$Observer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->mRemainingActivitiesCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->mRemainingActivitiesCount:I

    if-nez p1, :cond_0

    const-string p1, "com.sec.android.app.sbrowser.beta.SBrowserRestartActivity.kill_process"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->fireBrowserRestartActivityIntent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTerminate(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->mRestartChromeOnDestroy:Z

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->mRemainingActivitiesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->mRemainingActivitiesCount:I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "com.sec.android.app.sbrowser.beta.SBrowserRestartActivity.start_watchdog"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->fireBrowserRestartActivityIntent(Ljava/lang/String;)V

    return-void
.end method
