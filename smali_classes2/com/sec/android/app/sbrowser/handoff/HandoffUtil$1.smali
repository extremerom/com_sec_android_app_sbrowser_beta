.class Lcom/sec/android/app/sbrowser/handoff/HandoffUtil$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->setTimer(Ljava/lang/String;Lcom/sec/android/app/sbrowser/handoff/HandoffUtil$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->a()Lcom/sec/android/app/sbrowser/handoff/HandoffUtil$Listener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->a()Lcom/sec/android/app/sbrowser/handoff/HandoffUtil$Listener;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil$Listener;->onTimeOut(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
