.class public interface abstract Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Interface$Proxy$Handler$QueryVersionCallback;
    }
.end annotation


# virtual methods
.method public abstract getVersion()I
.end method

.method public abstract passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
.end method
