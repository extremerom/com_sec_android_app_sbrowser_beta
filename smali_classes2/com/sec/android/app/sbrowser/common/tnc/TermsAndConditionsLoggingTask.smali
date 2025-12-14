.class public Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLoggingTask;
.super Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLoggingTask;->lambda$onStartTask$0(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$onStartTask$0(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method


# virtual methods
.method public onStartTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string p2, "url"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/common/tnc/a;

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0}, Lcom/sec/android/app/sbrowser/common/tnc/a;-><init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;I)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;->request(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onStopTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;->onStopTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;)Z

    move-result p0

    return p0
.end method
