.class Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$2;->this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$2;->this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->a(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;)Landroid/view/Choreographer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$2;->this$0:Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->doVSync()V

    :cond_0
    return-void
.end method
