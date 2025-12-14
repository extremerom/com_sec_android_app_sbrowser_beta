.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->handleDelayedInitialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$appContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$delegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    const-string v0, "ContentBlock.Manager"

    const-string v1, "handleDelayedInitialize onCompleted"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->n(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->i(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->registerBroadcastReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->k(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->j(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->f(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->d(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->m(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$appContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initContentBlocker(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->registerStatisticsListener()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$delegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$3;->val$appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setNeverShowPromotions(Landroid/content/Context;)V

    return-void
.end method
