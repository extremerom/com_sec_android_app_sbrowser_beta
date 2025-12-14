.class Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;-><init>(I)V

    sput-object v0, Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler$LazyHolder;->INSTANCE:Lorg/chromium/mojo/bindings/ExceptionHandler$DefaultExceptionHandler;

    return-void
.end method
