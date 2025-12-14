.class public Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartClipCallback"
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->lambda$onSmartClipDataExtracted$0(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onSmartClipDataExtracted$0(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const-string p3, "context"

    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVisibleUrl()Lorg/chromium/url/GURL;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "html"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rect"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    new-instance p2, Lcom/sec/terrace/browser/autofill/a;

    invoke-direct {p2, p0, v0}, Lcom/sec/terrace/browser/autofill/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->requestContext(Landroid/os/Bundle;Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;)V

    return-void
.end method
