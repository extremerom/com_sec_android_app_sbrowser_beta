.class public Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor$CompositorDelegateFactory;
    }
.end annotation


# static fields
.field private static sCompositorDelegateFactory:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;


# instance fields
.field private mCompositorCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor$CompositorDelegateFactory;

    invoke-direct {v0}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor$CompositorDelegateFactory;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->sCompositorDelegateFactory:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/url/GURL;Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;Ljava/lang/String;JLorg/chromium/base/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/GURL;",
            "Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;",
            "Ljava/lang/String;",
            "J",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->mCompositorCallback:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->getCompositorDelegateFactory()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 p6, 0x11

    invoke-direct {v7, p6, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    new-instance v8, Lcom/sec/terrace/a;

    const/4 p6, 0x2

    invoke-direct {v8, p6, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    const/4 v6, 0x1

    move-object v1, p2

    move-wide v2, p4

    move-object v4, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v8}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;->createForCaptureResult(Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;JLorg/chromium/url/GURL;Ljava/lang/String;ZLorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;Lorg/chromium/base/Callback;)Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->mDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    return-void
.end method

.method private getCompositorDelegateFactory()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;
    .locals 0

    sget-object p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->sCompositorDelegateFactory:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->mDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->mDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    :cond_0
    return-void
.end method

.method public onCompositorError(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->mCompositorCallback:Lorg/chromium/base/Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onCompositorReady(Lorg/chromium/base/UnguessableToken;[Lorg/chromium/base/UnguessableToken;[I[I[I[Lorg/chromium/base/UnguessableToken;[IFJ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->mCompositorCallback:Lorg/chromium/base/Callback;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public requestBitmap(Landroid/graphics/Rect;FLjava/lang/Runnable;Lorg/chromium/base/Callback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "F",
            "Ljava/lang/Runnable;",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->mDelegate:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    invoke-interface {p0, p1, p2, p4, p3}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;->requestBitmap(Landroid/graphics/Rect;FLorg/chromium/base/Callback;Ljava/lang/Runnable;)I

    move-result p0

    return p0
.end method
