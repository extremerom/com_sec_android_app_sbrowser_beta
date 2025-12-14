.class public Lorg/chromium/mojo/bindings/ExecutorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXECUTORS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTIFY_BUFFER:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/chromium/mojo/bindings/ExecutorFactory;->EXECUTORS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static bridge synthetic a()Ljava/nio/ByteBuffer;
    .locals 1

    sget-object v0, Lorg/chromium/mojo/bindings/ExecutorFactory;->NOTIFY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static getExecutorForCurrentThread(Lorg/chromium/mojo/system/Core;)Ljava/util/concurrent/Executor;
    .locals 2

    sget-object v0, Lorg/chromium/mojo/bindings/ExecutorFactory;->EXECUTORS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    new-instance v1, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;

    invoke-direct {v1, p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;-><init>(Lorg/chromium/mojo/system/Core;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method
