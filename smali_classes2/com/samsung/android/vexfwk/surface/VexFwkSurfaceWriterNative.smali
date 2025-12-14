.class public final Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 #2\u00060\u0001j\u0002`\u0002:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J5\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004R\u0014\u0010\u001b\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "<init>",
        "()V",
        "Landroid/view/Surface;",
        "surface",
        "",
        "width",
        "height",
        "format",
        "maxBufferCount",
        "Ldb/r;",
        "configure",
        "(Landroid/view/Surface;IIII)V",
        "Landroid/hardware/HardwareBuffer;",
        "dequeueBuffer",
        "()Landroid/hardware/HardwareBuffer;",
        "hardwareBuffer",
        "",
        "timestampNs",
        "rotationDegree",
        "enqueueBuffer",
        "(Landroid/hardware/HardwareBuffer;JI)V",
        "cancelBuffer",
        "(Landroid/hardware/HardwareBuffer;)V",
        "close",
        "nativeHandle",
        "J",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "",
        "isClosed",
        "Z",
        "Companion",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isClosed:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->Companion:Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;

    const-string v0, "VexFwkSurfaceWriterNative"

    sput-object v0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->Companion:Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;

    invoke-static {v0}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;->access$createHandleNative(Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->nativeHandle:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public static final synthetic access$cancelBufferNative(JLandroid/hardware/HardwareBuffer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->cancelBufferNative(JLandroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method public static final synthetic access$configureNative(JLandroid/view/Surface;IIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->configureNative(JLandroid/view/Surface;IIII)V

    return-void
.end method

.method public static final synthetic access$createHandleNative()J
    .locals 2

    invoke-static {}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->createHandleNative()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$dequeueBufferNative(J)Landroid/hardware/HardwareBuffer;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->dequeueBufferNative(J)Landroid/hardware/HardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$enqueueBufferNative(JLandroid/hardware/HardwareBuffer;JI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->enqueueBufferNative(JLandroid/hardware/HardwareBuffer;JI)V

    return-void
.end method

.method public static final synthetic access$freeHandleNative(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->freeHandleNative(J)V

    return-void
.end method

.method private static final native cancelBufferNative(JLandroid/hardware/HardwareBuffer;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native configureNative(JLandroid/view/Surface;IIII)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native createHandleNative()J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native dequeueBufferNative(J)Landroid/hardware/HardwareBuffer;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native enqueueBufferNative(JLandroid/hardware/HardwareBuffer;JI)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native freeHandleNative(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method


# virtual methods
.method public final cancelBuffer(Landroid/hardware/HardwareBuffer;)V
    .locals 3
    .param p1    # Landroid/hardware/HardwareBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hardwareBuffer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->Companion:Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->nativeHandle:J

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;->access$cancelBufferNative(Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;JLandroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method public close()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->isClosed:Z

    sget-object v4, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->Companion:Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;

    iget-wide v5, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->nativeHandle:J

    invoke-static {v4, v5, v6}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;->access$freeHandleNative(Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    :goto_3
    if-ge v3, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public final configure(Landroid/view/Surface;IIII)V
    .locals 9
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "surface"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->Companion:Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;

    iget-wide v2, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->nativeHandle:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;->access$configureNative(Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;JLandroid/view/Surface;IIII)V

    return-void
.end method

.method public final dequeueBuffer()Landroid/hardware/HardwareBuffer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->isClosed:Z

    if-eqz v1, :cond_0

    sget-object p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->TAG:Ljava/lang/String;

    const-string v1, "dequeueImage called after close"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->Companion:Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;

    iget-wide v2, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->nativeHandle:J

    invoke-static {v1, v2, v3}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;->access$dequeueBufferNative(Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;J)Landroid/hardware/HardwareBuffer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p0

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0
.end method

.method public final enqueueBuffer(Landroid/hardware/HardwareBuffer;JI)V
    .locals 8
    .param p1    # Landroid/hardware/HardwareBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hardwareBuffer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->Companion:Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;

    iget-wide v2, p0, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative;->nativeHandle:J

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;->access$enqueueBufferNative(Lcom/samsung/android/vexfwk/surface/VexFwkSurfaceWriterNative$Companion;JLandroid/hardware/HardwareBuffer;JI)V

    return-void
.end method
