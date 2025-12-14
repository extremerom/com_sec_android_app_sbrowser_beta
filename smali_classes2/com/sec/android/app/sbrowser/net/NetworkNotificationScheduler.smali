.class public Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBuilder:LU0/o;

.field private final mContext:Landroid/content/Context;

.field private mJobQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;

.field private mTabId:I

.field private mTabIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mJobQueue:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabId:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    new-instance v0, LU0/o;

    const-string v1, "SBROWSER_NO_NETWORK_NOTIFICATION_CHANNEL"

    invoke-direct {v0, p1, v1}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mBuilder:LU0/o;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->lambda$getInstance$0()Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mJobQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabId:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabIdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabId:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    new-instance v2, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$getInstance$0()Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const v0, 0xc351

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public schedule(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabId:I

    if-eq v0, p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->cancelTask()V

    :cond_1
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "tabId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mJobQueue:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mJobQueue:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mJobQueue:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mJobQueue:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabId:I

    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sec/android/app/sbrowser/net/NetworkNotificationJobService;

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p2, Landroid/app/job/JobInfo$Builder;

    const v1, 0xc351

    invoke-direct {p2, v1, p1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    const-string p2, "jobscheduler"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public setObserver()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler$1;-><init>(Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mObserver:Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler;->setObserver(Lcom/sec/terrace/browser/net/TerraceNetNotificationScheduler$TerraceNetSchedulerObserver;)V

    return-void
.end method

.method public showNetworkNotification(ILjava/lang/String;)V
    .locals 4

    const-string v0, "showCompletedJobNotification "

    const-string v1, "NetworkNotificationScheduler"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabId:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mJobQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mTabIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForApplication()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_no_network_notification"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mBuilder:LU0/o;

    iget-object v1, p2, LU0/o;->z:Landroid/app/Notification;

    const v3, 0x7f08070b

    iput v3, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060293

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p2, LU0/o;->u:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140805

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, LU0/o;->e:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140804

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, LU0/o;->f:Ljava/lang/CharSequence;

    const/16 v1, 0x10

    invoke-virtual {p2, v1, v0}, LU0/o;->f(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p2, v1, v0}, LU0/o;->f(IZ)V

    iput v2, p2, LU0/o;->j:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mBuilder:LU0/o;

    iput-object p1, p2, LU0/o;->g:Landroid/app/PendingIntent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->mBuilder:LU0/o;

    invoke-virtual {p0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    const-string p0, "201"

    const-string p1, "6250"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
