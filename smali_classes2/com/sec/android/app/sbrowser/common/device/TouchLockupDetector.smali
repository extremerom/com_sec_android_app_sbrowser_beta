.class public Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;

.field private mListener:Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->mTimeout:I

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;-><init>(Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->mHandler:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;)Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->mListener:Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;

    return-object p0
.end method


# virtual methods
.method public end()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->mHandler:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->mListener:Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->mTimeout:I

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->mHandler:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector$TouchLockupHandler;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->mTimeout:I

    int-to-long v1, p0

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
