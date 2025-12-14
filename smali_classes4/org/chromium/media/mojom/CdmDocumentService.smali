.class public interface abstract Lorg/chromium/media/mojom/CdmDocumentService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmDocumentService$GetStorageId_Response;,
        Lorg/chromium/media/mojom/CdmDocumentService$ChallengePlatform_Response;,
        Lorg/chromium/media/mojom/CdmDocumentService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract challengePlatform(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/media/mojom/CdmDocumentService$ChallengePlatform_Response;)V
.end method

.method public abstract getStorageId(ILorg/chromium/media/mojom/CdmDocumentService$GetStorageId_Response;)V
.end method
