.class public interface abstract Lorg/chromium/mojo/system/Handle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCore()Lorg/chromium/mojo/system/Core;
.end method

.method public abstract isValid()Z
.end method

.method public abstract releaseNativeHandle()J
.end method

.method public abstract toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;
.end method
