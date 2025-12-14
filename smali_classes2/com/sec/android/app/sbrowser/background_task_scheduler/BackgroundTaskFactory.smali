.class public Lcom/sec/android/app/sbrowser/background_task_scheduler/BackgroundTaskFactory;
.super Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/background_task_scheduler/BackgroundTaskFactory;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/background_task_scheduler/BackgroundTaskFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/background_task_scheduler/BackgroundTaskFactory;-><init>()V

    return-object v0
.end method

.method public static setAsDefault()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/background_task_scheduler/BackgroundTaskFactory;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;

    invoke-static {v0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;->setAsDefault(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;)V

    return-void
.end method


# virtual methods
.method public getBackgroundExternalTaskFromTaskId(I)Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;
    .locals 0

    const p0, 0x18705

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLoggingTask;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLoggingTask;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLoggingTask;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLoggingTask;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
