.class Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/jank_tracker/FrameMetricsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayListenerBackend"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/jank_tracker/FrameMetricsListener;


# direct methods
.method private constructor <init>(Lorg/chromium/base/jank_tracker/FrameMetricsListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;->this$0:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/jank_tracker/FrameMetricsListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;-><init>(Lorg/chromium/base/jank_tracker/FrameMetricsListener;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;->this$0:Lorg/chromium/base/jank_tracker/FrameMetricsListener;

    invoke-static {p0}, Lorg/chromium/base/jank_tracker/FrameMetricsListener;->a(Lorg/chromium/base/jank_tracker/FrameMetricsListener;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public startListening()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method
