.class Lcom/sec/android/app/sbrowser/smp/SmpController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/smp/SmpController;->initializeInternal(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/smp/SmpController;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/smp/SmpController;Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smp/SmpController$1;->this$0:Lcom/sec/android/app/sbrowser/smp/SmpController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/smp/SmpController$1;->val$callback:Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->setSupported(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smp/SmpController$1;->val$callback:Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;->onFailure()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smp/SmpController$1;->this$0:Lcom/sec/android/app/sbrowser/smp/SmpController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->c(Lcom/sec/android/app/sbrowser/smp/SmpController;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smp/SmpController$1;->val$callback:Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;->onSuccess()V

    return-void
.end method
