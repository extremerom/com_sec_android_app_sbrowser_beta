.class Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$1;
.super Lcom/sec/terrace/content/browser/TinGestureStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;-><init>(Lorg/chromium/content_public/browser/WebContents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$1;->this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    invoke-direct {p0, p2}, Lcom/sec/terrace/content/browser/TinGestureStateListener;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method


# virtual methods
.method public onScrollOffsetOrExtentChanged(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$1;->this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->b(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$1;->this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    invoke-virtual {p2}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isHoverScrolling()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$1;->this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopShownPix()I

    move-result p2

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->c(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;II)V

    :cond_1
    return-void
.end method
