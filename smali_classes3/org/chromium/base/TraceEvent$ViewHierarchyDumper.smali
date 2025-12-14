.class final Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHierarchyDumper"
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;


# instance fields
.field private mLastDumpTs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->lambda$updateEnabledState$0()V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/base/TraceEvent$ActivityInfo;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->dumpView(Lorg/chromium/base/TraceEvent$ActivityInfo;ILandroid/view/View;)V

    return-void
.end method

.method private static dumpView(Lorg/chromium/base/TraceEvent$ActivityInfo;ILandroid/view/View;)V
    .locals 10

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v7

    iget-object v8, p0, Lorg/chromium/base/TraceEvent$ActivityInfo;->mViews:Ljava/util/ArrayList;

    new-instance v9, Lorg/chromium/base/TraceEvent$ViewInfo;

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->isDirty()Z

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v0, v9

    move v1, v7

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/chromium/base/TraceEvent$ViewInfo;-><init>(IIZZLjava/lang/String;Landroid/content/res/Resources;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v7, v0}, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->dumpView(Lorg/chromium/base/TraceEvent$ActivityInfo;ILandroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateEnabledState$0()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/TraceEventJni;->get()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/TraceEvent$Natives;->viewHierarchyDumpEnabled()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->setEnabled(Z)V

    return-void
.end method

.method private static setEnabled(Z)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance p0, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;

    invoke-direct {p0}, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;-><init>()V

    sput-object p0, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p0

    sget-object v0, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p0

    sget-object v0, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 p0, 0x0

    sput-object p0, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->sInstance:Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateEnabledState()V
    .locals 2

    new-instance v0, Lorg/chromium/base/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/base/f;-><init>(I)V

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 6

    invoke-static {}, Lorg/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->mLastDumpTs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lorg/chromium/base/TraceEvent$ViewHierarchyDumper;->mLastDumpTs:J

    invoke-static {}, Lorg/chromium/base/TraceEvent;->snapshotViewHierarchy()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
