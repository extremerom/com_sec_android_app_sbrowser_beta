.class public interface abstract Lorg/chromium/media/mojom/CdmFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmFile$Write_Response;,
        Lorg/chromium/media/mojom/CdmFile$Read_Response;,
        Lorg/chromium/media/mojom/CdmFile$Proxy;,
        Lorg/chromium/media/mojom/CdmFile$Status;
    }
.end annotation


# virtual methods
.method public abstract read(Lorg/chromium/media/mojom/CdmFile$Read_Response;)V
.end method

.method public abstract write([BLorg/chromium/media/mojom/CdmFile$Write_Response;)V
.end method
