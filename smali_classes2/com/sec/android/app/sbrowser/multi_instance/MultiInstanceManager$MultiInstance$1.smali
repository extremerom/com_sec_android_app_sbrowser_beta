.class Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->onBrowserPreferenceChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;->this$1:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;->this$1:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;->this$1:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->b(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;->setFullScreenEnabled(Landroid/app/Activity;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;->this$1:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->b(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;->this$1:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;->setFullScreenEnabled(Landroid/app/Activity;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;->this$1:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->this$0:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;)V

    return-void
.end method
