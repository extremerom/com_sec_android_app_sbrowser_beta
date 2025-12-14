.class public Ls/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls/i;

.field public c:Z

.field public final d:I

.field public e:Landroid/view/View;

.field public f:I

.field public g:Z

.field public h:Ls/s;

.field public i:Ls/y;

.field public j:Landroid/widget/PopupWindow$OnDismissListener;

.field public final k:Z

.field public final l:I

.field public final m:Ls/q;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/view/View;Ls/i;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Ls/r;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/r;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Ls/r;->l:I

    new-instance v0, Ls/q;

    invoke-direct {v0, p0}, Ls/q;-><init>(Ls/r;)V

    iput-object v0, p0, Ls/r;->m:Ls/q;

    iput-object p2, p0, Ls/r;->a:Landroid/content/Context;

    iput-object p4, p0, Ls/r;->b:Ls/i;

    iput-object p3, p0, Ls/r;->e:Landroid/view/View;

    iput-boolean p5, p0, Ls/r;->c:Z

    iput p1, p0, Ls/r;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ls/y;
    .locals 8

    iget-object v0, p0, Ls/r;->i:Ls/y;

    if-nez v0, :cond_2

    const-string v0, "window"

    iget-object v1, p0, Ls/r;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance v0, Ls/y;

    iget-object v5, p0, Ls/r;->e:Landroid/view/View;

    iget-boolean v7, p0, Ls/r;->c:Z

    iget v3, p0, Ls/r;->d:I

    iget-object v4, p0, Ls/r;->a:Landroid/content/Context;

    iget-object v6, p0, Ls/r;->b:Ls/i;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ls/y;-><init>(ILandroid/content/Context;Landroid/view/View;Ls/i;Z)V

    iget v1, p0, Ls/r;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Ls/y;->h:Lt/t0;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lt/q0;->setHeight(I)V

    :cond_0
    iget-boolean v1, p0, Ls/r;->k:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Ls/y;->k:Z

    :cond_1
    iget-object v1, p0, Ls/r;->m:Ls/q;

    iput-object v1, v0, Ls/y;->n:Ls/q;

    iget-object v1, p0, Ls/r;->e:Landroid/view/View;

    iput-object v1, v0, Ls/y;->o:Landroid/view/View;

    iget-object v1, p0, Ls/r;->h:Ls/s;

    iput-object v1, v0, Ls/y;->q:Ls/s;

    iget-boolean v1, p0, Ls/r;->g:Z

    iget-object v2, v0, Ls/y;->d:Ls/f;

    iput-boolean v1, v2, Ls/f;->e:Z

    iget v1, p0, Ls/r;->f:I

    iput v1, v0, Ls/y;->v:I

    iput-object v0, p0, Ls/r;->i:Ls/y;

    :cond_2
    iget-object p0, p0, Ls/r;->i:Ls/y;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Ls/r;->i:Ls/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls/y;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ls/r;->i:Ls/y;

    iget-object p0, p0, Ls/r;->j:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final d(IIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ls/r;->a()Ls/y;

    move-result-object v5

    move/from16 v6, p4

    iput-boolean v6, v5, Ls/y;->w:Z

    if-eqz p3, :cond_2

    iget-object v6, v0, Ls/r;->e:Landroid/view/View;

    sget-object v7, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    if-ne v6, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iget-object v0, v0, Ls/r;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0711c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    if-eqz v6, :cond_1

    add-int v6, p1, v7

    iget-object v7, v5, Ls/y;->h:Lt/t0;

    invoke-virtual {v7, v6}, Lt/q0;->setHorizontalOffset(I)V

    goto :goto_1

    :cond_1
    sub-int v6, p1, v7

    iget-object v7, v5, Ls/y;->h:Lt/t0;

    invoke-virtual {v7, v6}, Lt/q0;->setHorizontalOffset(I)V

    :goto_1
    iget-object v6, v5, Ls/y;->h:Lt/t0;

    invoke-virtual {v6, v1}, Lt/q0;->setVerticalOffset(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42400000    # 48.0f

    mul-float/2addr v0, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    float-to-int v0, v0

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, p1, v0

    sub-int v8, v1, v0

    add-int v9, p1, v0

    add-int/2addr v0, v1

    invoke-direct {v6, v7, v8, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v5, Ls/y;->a:Landroid/graphics/Rect;

    :cond_2
    invoke-virtual {v5}, Ls/y;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-boolean v0, v5, Ls/y;->s:Z

    if-nez v0, :cond_10

    iget-object v0, v5, Ls/y;->o:Landroid/view/View;

    if-eqz v0, :cond_10

    iput-object v0, v5, Ls/y;->p:Landroid/view/View;

    iget-boolean v0, v5, Ls/y;->k:Z

    iget-object v1, v5, Ls/y;->h:Lt/t0;

    if-nez v0, :cond_4

    invoke-virtual {v1, v0}, Lt/q0;->seslSetAllowScrollingAnchorParent(Z)V

    :cond_4
    invoke-virtual {v1, v5}, Lt/q0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {v1, v5}, Lt/q0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v3}, Lt/q0;->setModal(Z)V

    iget-object v0, v5, Ls/y;->p:Landroid/view/View;

    iget-object v6, v5, Ls/y;->r:Landroid/view/ViewTreeObserver;

    if-nez v6, :cond_5

    move v6, v3

    goto :goto_2

    :cond_5
    move v6, v4

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, v5, Ls/y;->r:Landroid/view/ViewTreeObserver;

    if-eqz v6, :cond_6

    iget-object v6, v5, Ls/y;->l:LH6/q;

    invoke-virtual {v7, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_6
    iget-object v6, v5, Ls/y;->m:LK6/p;

    invoke-virtual {v0, v6}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v1, v0}, Lt/q0;->setAnchorView(Landroid/view/View;)V

    iget v0, v5, Ls/y;->v:I

    invoke-virtual {v1, v0}, Lt/q0;->setDropDownGravity(I)V

    iget-boolean v0, v5, Ls/y;->t:Z

    iget-object v6, v5, Ls/y;->b:Landroid/content/Context;

    iget-object v7, v5, Ls/y;->d:Ls/f;

    if-nez v0, :cond_c

    iget v0, v5, Ls/y;->f:I

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7}, Ls/f;->getCount()I

    move-result v10

    move v11, v4

    move v12, v11

    move v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v11, v10, :cond_b

    invoke-virtual {v7, v11}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    if-eq v2, v13, :cond_7

    move v13, v2

    const/4 v15, 0x0

    :cond_7
    if-nez v14, :cond_8

    new-instance v14, Landroid/widget/FrameLayout;

    invoke-direct {v14, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_8
    invoke-virtual {v7, v11, v15, v14}, Ls/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lt v2, v0, :cond_9

    goto :goto_4

    :cond_9
    if-le v2, v12, :cond_a

    move v12, v2

    :cond_a
    add-int/2addr v11, v3

    goto :goto_3

    :cond_b
    move v0, v12

    :goto_4
    iput v0, v5, Ls/y;->u:I

    iput-boolean v3, v5, Ls/y;->t:Z

    :cond_c
    iget v0, v5, Ls/y;->u:I

    invoke-virtual {v1, v0}, Lt/q0;->setContentWidth(I)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lt/q0;->setInputMethodMode(I)V

    iget-object v0, v5, Ls/y;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lt/q0;->setEpicenterBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lt/q0;->show()V

    invoke-virtual {v1}, Lt/q0;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v2, v5, Ls/y;->i:Z

    if-eqz v2, :cond_d

    const/4 v3, 0x0

    goto :goto_5

    :cond_d
    move-object v3, v0

    :goto_5
    iput-object v3, v5, Ls/y;->j:Landroid/widget/ListView;

    iget-boolean v3, v5, Ls/y;->w:Z

    if-eqz v3, :cond_f

    iget-object v3, v5, Ls/y;->c:Ls/i;

    iget-object v5, v3, Ls/i;->m:Ljava/lang/CharSequence;

    if-eqz v5, :cond_f

    if-nez v2, :cond_f

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0e085c

    invoke-virtual {v2, v5, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_e

    iget-object v3, v3, Ls/i;->m:Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_f
    invoke-virtual {v1, v7}, Lt/q0;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Lt/q0;->show()V

    :goto_6
    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
