.class Lorg/chromium/base/task/TaskRunnerImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/task/TaskRunnerImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/base/task/TaskRunnerImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/task/TaskRunnerImplJni;

    invoke-direct {v0}, Lorg/chromium/base/task/TaskRunnerImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MERCiIV8(J)V

    return-void
.end method

.method public init(II)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M5_IQXaH(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public postDelayedTask(JJI)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MGnQU$47(JJI)V

    return-void
.end method
