.class Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/handoff/HandoffUtil$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->sendWebState(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$4;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HandoffHelper"

    const-string v1, "sendWebState, Resend WebState due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$4;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->sendWebState(Ljava/lang/String;)V

    return-void
.end method
