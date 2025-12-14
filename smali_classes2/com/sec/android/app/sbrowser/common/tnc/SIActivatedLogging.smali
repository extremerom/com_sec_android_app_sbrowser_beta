.class public Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createTaskInfoForActivated(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->getExtraParams(ZLcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "params"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;->create()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;->build()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;

    move-result-object p0

    const p1, 0x186a5

    invoke-static {p1, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;->create(ILcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setRequiredNetworkType(I)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setIsPersisted(Z)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setUpdateCurrent(Z)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->build()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method private getExtraParams(ZLcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ui="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&iv="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&oc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SalesCodeUtil;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ag="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->b(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "&pv="

    invoke-static {p0, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->b(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->b(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pd="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->b(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->a(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->c(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "&tv="

    invoke-static {p0, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->c(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->b(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&td="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->c(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->a(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->a(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "&opv="

    invoke-static {p0, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->a(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->b(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&opd="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;->a(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;->a(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Term;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "&svs="

    invoke-static {p0, p1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ","

    invoke-static {p1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;

    return-object v0
.end method


# virtual methods
.method public activated(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->createTaskInfoForActivated(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskScheduler;->schedule(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;)Z

    return-void
.end method

.method public deactivated(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLoggingTask;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLoggingTask;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->getExtraParams(ZLcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLoggingTask;->onStartTask(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method
