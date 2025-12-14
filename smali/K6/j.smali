.class public final synthetic LK6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LK6/j;->a:I

    iput-object p2, p0, LK6/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, LK6/j;->a:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "this$0"

    iget-object p0, p0, LK6/j;->b:Ljava/lang/Object;

    check-cast p0, Lw6/q;

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lw6/q;->u:Ly6/b;

    instance-of p2, p1, Ly6/c;

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Ly6/b;->p:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lw6/q;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :pswitch_0
    iget-object p0, p0, LK6/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->f(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, LK6/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, LK6/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_3
    iget-object p0, p0, LK6/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->b(Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_4
    iget-object p0, p0, LK6/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;->b(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_5
    iget-object p0, p0, LK6/j;->b:Ljava/lang/Object;

    check-cast p0, LK6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, LK6/m;->o:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2

    const-wide/16 v3, 0x12c

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_3

    iput-boolean p2, p0, LK6/m;->m:Z

    :cond_3
    invoke-virtual {p0}, LK6/m;->u()V

    iput-boolean v0, p0, LK6/m;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LK6/m;->o:J

    :cond_4
    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
