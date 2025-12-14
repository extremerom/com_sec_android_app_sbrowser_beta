.class public Lorg/chromium/mojo/bindings/InterfaceRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/HandleOwner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lorg/chromium/mojo/bindings/Interface;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/HandleOwner<",
        "Lorg/chromium/mojo/system/MessagePipeHandle;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->close()V

    return-void
.end method

.method public bridge synthetic passHandle()Lorg/chromium/mojo/system/Handle;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/InterfaceRequest;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    return-object p0
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {p0}, Lorg/chromium/mojo/system/MessagePipeHandle;->pass()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    return-object p0
.end method
