.class public Landroidx/appcompat/widget/SeslLinearLayoutCompat;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# instance fields
.field public final p:Lt/D;

.field public final q:Ll/b;

.field public final r:Lq/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v3, Lk/a;->v:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v3, v6, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Lf1/T;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p2, 0x1

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lq/d;

    invoke-direct {v0, p1}, Lq/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->r:Lq/d;

    invoke-virtual {v0, p2}, Lq/d;->d(I)V

    new-instance p2, Lt/D;

    invoke-direct {p2}, Lt/D;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p2, Lt/D;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->p:Lt/D;

    new-instance p2, Ll/b;

    invoke-direct {p2, p1}, Ll/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->q:Ll/b;

    return-void
.end method

.method public static j(IILandroid/view/View;)Landroid/view/View;
    .locals 12

    instance-of v0, p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr p1, v2

    filled-new-array {p0, p1}, [I

    move-result-object p0

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aget v4, p0, p1

    const/4 v5, 0x1

    aget v6, p0, v5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v11, v4, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    aget v1, p0, p1

    aget v4, p0, v5

    invoke-static {v1, v4, v3}, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->j(IILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->r:Lq/d;

    iget-object v0, p0, Lq/d;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Lq/d;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->q:Ll/b;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ll/b;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ll/b;->b()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->q:Ll/b;

    iget-object v4, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->p:Lt/D;

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    const/16 v5, 0xd3

    if-eq v0, v5, :cond_5

    const/16 v5, 0xd4

    if-eq v0, v5, :cond_3

    goto/16 :goto_5

    :cond_0
    iget-object v0, v4, Lt/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    instance-of v5, v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    if-eqz v5, :cond_1

    check-cast v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iput-object v1, v4, Lt/D;->b:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v3}, Ll/b;->b()V

    goto/16 :goto_5

    :cond_3
    iget-object v0, v4, Lt/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iput-object v1, v4, Lt/D;->b:Ljava/lang/Object;

    :cond_4
    invoke-virtual {v3}, Ll/b;->b()V

    goto/16 :goto_5

    :cond_5
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v11

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move-object v5, v1

    :goto_2
    if-nez v5, :cond_8

    :goto_3
    move-object v0, v1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v0, v6, v5}, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->j(IILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    mul-int/2addr v7, v6

    int-to-double v6, v7

    int-to-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-gez v5, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v0, :cond_c

    iget-object v5, v4, Lt/D;->b:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    new-array v2, v2, [I

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iput-object v1, v4, Lt/D;->b:Ljava/lang/Object;

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v4, Lt/D;->b:Ljava/lang/Object;

    if-eqz v1, :cond_b

    const v2, 0x1010367

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_b
    invoke-virtual {v3, v0}, Ll/b;->a(Landroid/view/View;)V

    :cond_c
    :goto_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getRoundedCorner()Lq/d;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->r:Lq/d;

    return-object p0
.end method
