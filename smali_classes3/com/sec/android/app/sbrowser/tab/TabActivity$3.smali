.class Lcom/sec/android/app/sbrowser/tab/TabActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab/TabActivity;->initializeNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationFailure()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->u(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    const-string v0, "initializeNative"

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->q(Lcom/sec/android/app/sbrowser/tab/TabActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationSuccess()V

    :cond_0
    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method
