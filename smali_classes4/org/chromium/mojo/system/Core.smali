.class public interface abstract Lorg/chromium/mojo/system/Core;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/system/Core$HandleSignalsState;,
        Lorg/chromium/mojo/system/Core$HandleSignals;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final DEADLINE_INFINITE:J = -0x1L


# virtual methods
.method public abstract acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;
.end method

.method public abstract createDataPipe(Lorg/chromium/mojo/system/DataPipe$CreateOptions;)Lorg/chromium/mojo/system/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/DataPipe$CreateOptions;",
            ")",
            "Lorg/chromium/mojo/system/Pair<",
            "Lorg/chromium/mojo/system/DataPipe$ProducerHandle;",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;",
            ")",
            "Lorg/chromium/mojo/system/Pair<",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWatcher()Lorg/chromium/mojo/system/Watcher;
.end method

.method public abstract wrapFileDescriptor(Landroid/os/ParcelFileDescriptor;)Lorg/chromium/mojo/system/UntypedHandle;
.end method
