.class public interface abstract Lorg/chromium/mojo/bindings/Interface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/ConnectionErrorHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Interface$Manager;,
        Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;,
        Lorg/chromium/mojo/bindings/Interface$Stub;,
        Lorg/chromium/mojo/bindings/Interface$AbstractProxy;,
        Lorg/chromium/mojo/bindings/Interface$Proxy;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract close()V
.end method
