.class Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor$CompositorDelegateFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositorDelegateFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createForCaptureResult(Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;JLorg/chromium/url/GURL;Ljava/lang/String;ZLorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;Lorg/chromium/base/Callback;)Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;
    .locals 10
    .param p4    # Lorg/chromium/url/GURL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;",
            "J",
            "Lorg/chromium/url/GURL;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;"
        }
    .end annotation

    new-instance v9, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;

    move-object v0, v9

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;-><init>(Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;JLorg/chromium/url/GURL;Ljava/lang/String;ZLorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;Lorg/chromium/base/Callback;)V

    return-object v9
.end method
