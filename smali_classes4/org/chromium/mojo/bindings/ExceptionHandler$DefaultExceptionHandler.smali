.class public Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/ExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/ExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultExceptionHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler$LazyHolder;
    }
.end annotation


# instance fields
.field private mDelegate:Lorg/chromium/mojo/bindings/ExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;
    .locals 1

    sget-object v0, Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler$LazyHolder;->INSTANCE:Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public handleException(Ljava/lang/RuntimeException;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;->mDelegate:Lorg/chromium/mojo/bindings/ExceptionHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/ExceptionHandler;->handleException(Ljava/lang/RuntimeException;)Z

    move-result p0

    return p0

    :cond_0
    throw p1
.end method
