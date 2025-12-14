.class Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/jank_tracker/JankReportingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final HANDLER_THREAD:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Jank-Tracker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->HANDLER_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method
