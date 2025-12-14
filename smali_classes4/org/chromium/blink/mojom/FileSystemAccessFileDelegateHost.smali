.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$SetLength_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$GetLength_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Write_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Read_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost;",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract getLength(Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$GetLength_Response;)V
.end method

.method public abstract read(JILorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Read_Response;)V
.end method

.method public abstract setLength(JLorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$SetLength_Response;)V
.end method

.method public abstract write(JLorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Write_Response;)V
.end method
