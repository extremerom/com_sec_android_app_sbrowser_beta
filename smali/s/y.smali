.class public final Ls/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;
.implements Ls/x;
.implements Ls/t;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/graphics/Rect;

.field public final b:Landroid/content/Context;

.field public final c:Ls/i;

.field public final d:Ls/f;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Lt/t0;

.field public final i:Z

.field public j:Landroid/widget/ListView;

.field public k:Z

.field public final l:LH6/q;

.field public final m:LK6/p;

.field public n:Ls/q;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Ls/s;

.field public r:Landroid/view/ViewTreeObserver;

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/view/View;Ls/i;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/y;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ls/y;->j:Landroid/widget/ListView;

    const/4 v2, 0x1

    iput-boolean v2, p0, Ls/y;->k:Z

    new-instance v2, LH6/q;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, LH6/q;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Ls/y;->l:LH6/q;

    new-instance v2, LK6/p;

    invoke-direct {v2, v3, p0}, LK6/p;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Ls/y;->m:LK6/p;

    iput v0, p0, Ls/y;->v:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    new-instance v3, Lr/d;

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, p2, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Ls/y;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Ls/y;->b:Landroid/content/Context;

    :goto_0
    iput-object p4, p0, Ls/y;->c:Ls/i;

    instance-of v2, p4, Ls/z;

    iput-boolean v2, p0, Ls/y;->i:Z

    iput-boolean p5, p0, Ls/y;->e:Z

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    iget-object v2, p4, Ls/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Ls/y;->c:Ls/i;

    invoke-virtual {v3, v0}, Ls/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Ls/k;

    invoke-virtual {v3}, Ls/k;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ls/f;

    iget-boolean v2, p0, Ls/y;->e:Z

    const v3, 0x7f0e085e

    invoke-direct {v0, p4, p5, v2, v3}, Ls/f;-><init>(Ls/i;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Ls/y;->d:Ls/f;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ls/f;

    iget-boolean v2, p0, Ls/y;->e:Z

    const v3, 0x7f0e085d

    invoke-direct {v0, p4, p5, v2, v3}, Ls/f;-><init>(Ls/i;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Ls/y;->d:Ls/f;

    :goto_2
    iput p1, p0, Ls/y;->g:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    iget-object v0, p0, Ls/y;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0711c2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    iput p5, p0, Ls/y;->f:I

    iput-object p3, p0, Ls/y;->o:Landroid/view/View;

    new-instance p3, Lt/t0;

    iget-object p5, p0, Ls/y;->b:Landroid/content/Context;

    invoke-direct {p3, p5, v1, p1}, Lt/q0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p3, p0, Ls/y;->h:Lt/t0;

    iget-boolean p1, p0, Ls/y;->e:Z

    invoke-virtual {p3, p1}, Lt/q0;->setIsOverflowPopup(Z)V

    invoke-virtual {p4, p0, p2}, Ls/i;->b(Ls/t;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Ls/i;Z)V
    .locals 1

    iget-object v0, p0, Ls/y;->c:Ls/i;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ls/y;->dismiss()V

    iget-object p0, p0, Ls/y;->q:Ls/s;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Ls/s;->a(Ls/i;Z)V

    :cond_1
    return-void
.end method

.method public final b(Ls/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ls/z;)Z
    .locals 9

    invoke-virtual {p1}, Ls/i;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Ls/r;

    iget-object v5, p0, Ls/y;->p:Landroid/view/View;

    iget-object v4, p0, Ls/y;->b:Landroid/content/Context;

    iget-boolean v7, p0, Ls/y;->e:Z

    iget v3, p0, Ls/y;->g:I

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Ls/r;-><init>(ILandroid/content/Context;Landroid/view/View;Ls/i;Z)V

    iget-object v2, p0, Ls/y;->q:Ls/s;

    iput-object v2, v0, Ls/r;->h:Ls/s;

    iget-object v3, v0, Ls/r;->i:Ls/y;

    if-eqz v3, :cond_0

    iput-object v2, v3, Ls/y;->q:Ls/s;

    :cond_0
    iget-object v2, p1, Ls/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Ls/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v3, v0, Ls/r;->g:Z

    iget-object v2, v0, Ls/r;->i:Ls/y;

    if-eqz v2, :cond_3

    iget-object v2, v2, Ls/y;->d:Ls/f;

    iput-boolean v3, v2, Ls/f;->e:Z

    :cond_3
    iget-object v2, p0, Ls/y;->n:Ls/q;

    iput-object v2, v0, Ls/r;->j:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    iput-object v2, p0, Ls/y;->n:Ls/q;

    iget-object v3, p0, Ls/y;->c:Ls/i;

    iget-object v4, v3, Ls/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-virtual {v3, v5}, Ls/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v7

    if-ne p1, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object v6, v2

    :goto_3
    iget-object v4, p0, Ls/y;->d:Ls/f;

    invoke-virtual {v4}, Ls/f;->getCount()I

    move-result v5

    move v7, v1

    :goto_4
    if-ge v7, v5, :cond_7

    invoke-virtual {v4, v7}, Ls/f;->b(I)Ls/k;

    move-result-object v8

    if-ne v6, v8, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, -0x1

    :goto_5
    iget-object v4, p0, Ls/y;->j:Landroid/widget/ListView;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v7, v2

    if-ltz v7, :cond_8

    iget-object v2, p0, Ls/y;->j:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    :cond_8
    iget-object v2, p0, Ls/y;->j:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    :cond_a
    iget v2, p0, Ls/y;->v:I

    iput v2, v0, Ls/r;->f:I

    invoke-virtual {v3, v1}, Ls/i;->c(Z)V

    invoke-virtual {v0}, Ls/r;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    iget-object v2, v0, Ls/r;->e:Landroid/view/View;

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v0, v1, v1, v3, v3}, Ls/r;->d(IIZZ)V

    :goto_6
    iget-object p0, p0, Ls/y;->q:Ls/s;

    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Ls/s;->K(Ls/i;)Z

    :cond_d
    return v3

    :cond_e
    :goto_7
    return v1
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/y;->t:Z

    iget-object p0, p0, Ls/y;->d:Ls/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Ls/y;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ls/y;->h:Lt/t0;

    invoke-virtual {p0}, Lt/q0;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e(Landroid/content/Context;Ls/i;)V
    .locals 0

    return-void
.end method

.method public final f(Ls/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Ls/y;->h:Lt/t0;

    invoke-virtual {p0}, Lt/q0;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public final isShowing()Z
    .locals 1

    iget-boolean v0, p0, Ls/y;->s:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Ls/y;->h:Lt/t0;

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/y;->s:Z

    iget-object v1, p0, Ls/y;->c:Ls/i;

    invoke-virtual {v1, v0}, Ls/i;->c(Z)V

    iget-object v0, p0, Ls/y;->r:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ls/y;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Ls/y;->r:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Ls/y;->r:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Ls/y;->l:LH6/q;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/y;->r:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Ls/y;->p:Landroid/view/View;

    iget-object v1, p0, Ls/y;->m:LK6/p;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Ls/y;->n:Ls/q;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ls/q;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Ls/f;

    goto :goto_0

    :cond_0
    move-object p2, p1

    check-cast p2, Ls/f;

    :goto_0
    iget-object p2, p2, Ls/f;->a:Ls/i;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p0, p3}, Ls/i;->q(Landroid/view/MenuItem;Ls/t;I)Z

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Ls/y;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
