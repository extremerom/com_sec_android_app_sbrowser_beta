.class public Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap$LazyHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mInputTransferHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/content_public/browser/InputTransferHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->mInputTransferHandlerMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;-><init>()V

    return-void
.end method

.method public static getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/content_public/browser/InputTransferHandler;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap$LazyHolder;->a()Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->mInputTransferHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method public static remove(I)V
    .locals 2

    invoke-static {}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/InputTransferHandler;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/InputTransferHandler;->destroy()V

    invoke-static {}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
