.class Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateInternalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->updateIfNeededInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;->val$callback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;->val$delegate:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update failed - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GlobalConfigUpdateClient"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;->val$callback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;->onFinished(Landroid/content/Context;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;->val$delegate:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigDelegate;->invokeUpdateFailedForAllFeatures(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdated(Landroid/content/Context;)V
    .locals 2

    const-string v0, "GlobalConfigUpdateClient"

    const-string v1, "updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$1;->val$callback:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigUpdateClient$UpdateCallback;->onFinished(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
