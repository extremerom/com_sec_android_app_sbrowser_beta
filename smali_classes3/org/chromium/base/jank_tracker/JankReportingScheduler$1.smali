.class Lorg/chromium/base/jank_tracker/JankReportingScheduler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/jank_tracker/JankReportingScheduler;-><init>(Lorg/chromium/base/jank_tracker/FrameMetricsStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;


# direct methods
.method public constructor <init>(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$1;->this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/jank_tracker/JankReportingScheduler$1;->this$0:Lorg/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-static {p0}, Lorg/chromium/base/jank_tracker/JankReportingScheduler;->a(Lorg/chromium/base/jank_tracker/JankReportingScheduler;)Lorg/chromium/base/jank_tracker/FrameMetricsStore;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/jank_tracker/FrameMetricsStore;->initialize()V

    return-void
.end method
