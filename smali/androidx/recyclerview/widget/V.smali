.class public final Landroidx/recyclerview/widget/V;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/recyclerview/widget/X;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/X;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/V;->b:Landroidx/recyclerview/widget/X;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/V;->a:Z

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/V;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/V;->b:Landroidx/recyclerview/widget/X;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/X;->h(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    iget-object v2, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/U;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object p0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1404ac

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/X;->l:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput v2, p0, Landroidx/recyclerview/widget/X;->d:F

    iput p1, p0, Landroidx/recyclerview/widget/X;->e:F

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/X;->i:F

    iput p1, p0, Landroidx/recyclerview/widget/X;->h:F

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/U;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    :cond_2
    return-void
.end method
