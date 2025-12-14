.class Lcom/sec/terrace/content/browser/TinTapDisambiguator$3;
.super Lcom/sec/terrace/content/browser/TinPopupZoomer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinTapDisambiguator;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinTapDisambiguator;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$3;->this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/terrace/content/browser/TinPopupZoomer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;)V

    return-void
.end method


# virtual methods
.method public getContentOffsetYPix()F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$3;->this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->b(Lcom/sec/terrace/content/browser/TinTapDisambiguator;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result p0

    return p0
.end method
