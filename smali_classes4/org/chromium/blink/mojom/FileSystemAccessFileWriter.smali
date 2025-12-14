.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Abort_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Close_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Truncate_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Write_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileWriter;",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileWriter_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileWriter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract abort(Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Abort_Response;)V
.end method

.method public abstract close(Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Close_Response;)V
.end method

.method public abstract truncate(JLorg/chromium/blink/mojom/FileSystemAccessFileWriter$Truncate_Response;)V
.end method

.method public abstract write(JLorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/blink/mojom/FileSystemAccessFileWriter$Write_Response;)V
.end method
