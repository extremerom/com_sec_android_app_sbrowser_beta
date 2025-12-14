.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;
.super Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->installConfig(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPackageCertificateManager;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setNeverShowPromotions(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->a(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;)Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->isEnabledForChinaGED()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setContentBlockerEnabledForChinaGED(Landroid/content/Context;Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;->onCompleted()V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "install success : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.ConfigManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$4;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
