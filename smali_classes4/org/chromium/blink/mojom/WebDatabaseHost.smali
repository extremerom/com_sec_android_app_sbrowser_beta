.class public interface abstract Lorg/chromium/blink/mojom/WebDatabaseHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WebDatabaseHost$GetSpaceAvailable_Response;,
        Lorg/chromium/blink/mojom/WebDatabaseHost$GetFileAttributes_Response;,
        Lorg/chromium/blink/mojom/WebDatabaseHost$DeleteFile_Response;,
        Lorg/chromium/blink/mojom/WebDatabaseHost$OpenFile_Response;,
        Lorg/chromium/blink/mojom/WebDatabaseHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract closed(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract deleteFile(Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/WebDatabaseHost$DeleteFile_Response;)V
.end method

.method public abstract getFileAttributes(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/WebDatabaseHost$GetFileAttributes_Response;)V
.end method

.method public abstract getSpaceAvailable(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/blink/mojom/WebDatabaseHost$GetSpaceAvailable_Response;)V
.end method

.method public abstract handleSqliteError(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;I)V
.end method

.method public abstract modified(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract openFile(Lorg/chromium/mojo_base/mojom/String16;ILorg/chromium/blink/mojom/WebDatabaseHost$OpenFile_Response;)V
.end method

.method public abstract opened(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;)V
.end method
