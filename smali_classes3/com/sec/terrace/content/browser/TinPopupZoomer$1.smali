.class Lcom/sec/terrace/content/browser/TinPopupZoomer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinPopupZoomer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private handleTapOrPress(Landroid/view/MotionEvent;Z)Z
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->a(Lcom/sec/terrace/content/browser/TinPopupZoomer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {v3, v0, v2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->d(Lcom/sec/terrace/content/browser/TinPopupZoomer;FF)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->g(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {v3}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->b(Lcom/sec/terrace/content/browser/TinPopupZoomer;)Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {v3, v0, v2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->c(Lcom/sec/terrace/content/browser/TinPopupZoomer;FF)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {v2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->b(Lcom/sec/terrace/content/browser/TinPopupZoomer;)Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move v8, p2

    invoke-interface/range {v3 .. v8}, Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;->onResolveTapDisambiguation(JFFZ)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->f(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->handleTapOrPress(Landroid/view/MotionEvent;Z)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {p2}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->a(Lcom/sec/terrace/content/browser/TinPopupZoomer;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p2, v1, p1}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->d(Lcom/sec/terrace/content/browser/TinPopupZoomer;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->g(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->this$0:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-static {p0, p3, p4}, Lcom/sec/terrace/content/browser/TinPopupZoomer;->e(Lcom/sec/terrace/content/browser/TinPopupZoomer;FF)V

    :goto_0
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/content/browser/TinPopupZoomer$1;->handleTapOrPress(Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method
