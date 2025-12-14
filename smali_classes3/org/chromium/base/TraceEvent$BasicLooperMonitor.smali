.class Lorg/chromium/base/TraceEvent$BasicLooperMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicLooperMonitor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final FILTERED_EVENT_NAME:Ljava/lang/String; = "Looper.dispatch: EVENT_NAME_FILTERED"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOOPER_TASK_PREFIX:Ljava/lang/String; = "Looper.dispatch: "
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SHORTEST_LOG_PREFIX_LENGTH:I = 0x12


# instance fields
.field private mCurrentTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x28

    sget v1, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->SHORTEST_LOG_PREFIX_LENGTH:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x29

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    :goto_0
    if-eq v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x7d

    sget v1, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->SHORTEST_LOG_PREFIX_LENGTH:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    :goto_0
    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static getTraceEventName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/TraceEvent;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Looper.dispatch: EVENT_NAME_FILTERED"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Looper.dispatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->getTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->getTargetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginHandling(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p1}, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->getTraceEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/chromium/base/TraceEventJni;->get()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    invoke-interface {p1, p0}, Lorg/chromium/base/TraceEvent$Natives;->beginToplevel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/chromium/base/EarlyTraceEvent;->begin(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public endHandling(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result p1

    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/chromium/base/TraceEventJni;->get()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/base/TraceEvent$Natives;->endToplevel()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/chromium/base/EarlyTraceEvent;->end(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->beginHandling(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/base/TraceEvent$BasicLooperMonitor;->endHandling(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
