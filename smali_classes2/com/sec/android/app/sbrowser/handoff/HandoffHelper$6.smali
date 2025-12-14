.class Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->onWebStateReceived(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$webState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;->val$webState:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HandoffHelper"

    const-string v1, "onWebStateReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->c(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;->val$url:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;->val$webState:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;->onWebStateReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
