.class public abstract Lorg/chromium/mojo/bindings/Interface$Stub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lorg/chromium/mojo/bindings/Interface;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;"
    }
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mImpl:Lorg/chromium/mojo/bindings/Interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "TI;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    invoke-interface {p0}, Lorg/chromium/mojo/bindings/Interface;->close()V

    return-void
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mCore:Lorg/chromium/mojo/system/Core;

    return-object p0
.end method

.method public getImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    return-object p0
.end method
