.class Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;-><init>(I)V

    sput-object v0, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap$LazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;
    .locals 1

    sget-object v0, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap$LazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;

    return-object v0
.end method
