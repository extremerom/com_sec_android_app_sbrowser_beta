.class Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchLockupHandler"
.end annotation


# instance fields
.field private final mDetector:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;->mDetector:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;->mDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "TouchLockupDetector"

    const-string v0, "Touch lockup is detected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->a(Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;)Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->a(Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;)Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;->onTouchLockup()V

    :cond_2
    return-void
.end method
