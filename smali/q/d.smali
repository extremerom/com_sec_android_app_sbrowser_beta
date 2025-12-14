.class public Lq/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lq/c;

.field public final c:Lq/c;

.field public final d:Lq/c;

.field public final e:Lq/c;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Landroid/graphics/Rect;

.field public l:LX0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lq/d;->k:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lq/d;->l:LX0/b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07121d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lq/d;->a:I

    invoke-static {p1}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v4, 0x7f04043c

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v3, Landroid/util/TypedValue;->resourceId:I

    const/16 v4, 0x1f

    const/16 v5, 0x1c

    if-lez p1, :cond_0

    iget v6, v3, Landroid/util/TypedValue;->type:I

    if-lt v6, v5, :cond_0

    if-gt v6, v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_0
    iget p1, v3, Landroid/util/TypedValue;->data:I

    if-lez p1, :cond_1

    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-lt v3, v5, :cond_1

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    const p1, 0x7f060aec

    goto :goto_0

    :cond_2
    const p1, 0x7f060aed

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lq/d;->i:I

    iput p1, p0, Lq/d;->h:I

    iput p1, p0, Lq/d;->g:I

    iput p1, p0, Lq/d;->f:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance p1, Lq/c;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v0, v3}, Lq/c;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Lq/d;->b:Lq/c;

    iput-object v2, p1, Lq/c;->d:Landroid/graphics/ColorFilter;

    new-instance p1, Lq/c;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-direct {p1, v1, v0, v3}, Lq/c;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Lq/d;->c:Lq/c;

    iput-object v2, p1, Lq/c;->d:Landroid/graphics/ColorFilter;

    new-instance p1, Lq/c;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-direct {p1, v1, v0, v3}, Lq/c;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Lq/d;->d:Lq/c;

    iput-object v2, p1, Lq/c;->d:Landroid/graphics/ColorFilter;

    new-instance p1, Lq/c;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-direct {p1, v1, v0, v3}, Lq/c;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Lq/d;->e:Lq/c;

    iput-object v2, p1, Lq/c;->d:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v3, p0, Lq/d;->k:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p2}, Lq/d;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lq/d;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lq/d;->l:LX0/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, v2, LX0/b;->a:I

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v1, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_1

    iget v5, v2, LX0/b;->c:I

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    iget v6, v2, LX0/b;->b:I

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    add-int/2addr v5, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_3

    iget v3, v2, LX0/b;->d:I

    :cond_3
    sub-int/2addr v0, v3

    iget v2, p0, Lq/d;->j:I

    and-int/lit8 v2, v2, 0x1

    iget v3, p0, Lq/d;->a:I

    if-eqz v2, :cond_4

    add-int v2, v1, v3

    add-int v6, v5, v3

    iget-object v7, p0, Lq/d;->b:Lq/c;

    invoke-virtual {v7, v1, v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Lq/c;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v2, p0, Lq/d;->j:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int v2, v4, v3

    add-int v6, v5, v3

    iget-object v7, p0, Lq/d;->c:Lq/c;

    invoke-virtual {v7, v2, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Lq/c;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget v2, p0, Lq/d;->j:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    sub-int v2, v0, v3

    add-int v6, v1, v3

    iget-object v7, p0, Lq/d;->d:Lq/c;

    invoke-virtual {v7, v1, v2, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Lq/c;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget v2, p0, Lq/d;->j:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    sub-int v2, v4, v3

    sub-int v3, v0, v3

    iget-object v6, p0, Lq/d;->e:Lq/c;

    invoke-virtual {v6, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, p1}, Lq/c;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget v2, p0, Lq/d;->f:I

    iget v3, p0, Lq/d;->g:I

    if-ne v2, v3, :cond_b

    iget v3, p0, Lq/d;->h:I

    if-ne v2, v3, :cond_b

    iget v3, p0, Lq/d;->i:I

    if-ne v2, v3, :cond_b

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lq/d;->l:LX0/b;

    if-eqz v2, :cond_8

    iget v2, v2, LX0/b;->b:I

    if-lez v2, :cond_8

    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Lq/d;->l:LX0/b;

    iget v7, v6, LX0/b;->a:I

    sub-int v7, v1, v7

    iget v8, v6, LX0/b;->b:I

    sub-int v8, v5, v8

    iget v6, v6, LX0/b;->c:I

    add-int/2addr v6, v4

    invoke-direct {v2, v7, v8, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_8
    iget-object v2, p0, Lq/d;->l:LX0/b;

    if-eqz v2, :cond_9

    iget v2, v2, LX0/b;->d:I

    if-lez v2, :cond_9

    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Lq/d;->l:LX0/b;

    iget v7, v6, LX0/b;->a:I

    sub-int v7, v1, v7

    iget v8, v6, LX0/b;->c:I

    add-int/2addr v8, v4

    iget v6, v6, LX0/b;->d:I

    add-int/2addr v6, v0

    invoke-direct {v2, v7, v0, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_9
    iget-object v2, p0, Lq/d;->l:LX0/b;

    if-eqz v2, :cond_a

    iget v2, v2, LX0/b;->a:I

    if-lez v2, :cond_a

    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Lq/d;->l:LX0/b;

    iget v7, v6, LX0/b;->a:I

    sub-int v7, v1, v7

    iget v8, v6, LX0/b;->b:I

    sub-int v8, v5, v8

    iget v6, v6, LX0/b;->d:I

    add-int/2addr v6, v0

    invoke-direct {v2, v7, v8, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_a
    iget-object v1, p0, Lq/d;->l:LX0/b;

    if-eqz v1, :cond_b

    iget v1, v1, LX0/b;->c:I

    if-lez v1, :cond_b

    new-instance v1, Landroid/graphics/Rect;

    iget-object p0, p0, Lq/d;->l:LX0/b;

    iget v2, p0, LX0/b;->b:I

    sub-int/2addr v5, v2

    iget v2, p0, LX0/b;->c:I

    add-int/2addr v2, v4

    iget p0, p0, LX0/b;->d:I

    add-int/2addr v0, p0

    invoke-direct {v1, v4, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method public final c(II)V
    .locals 2

    if-eqz p1, :cond_5

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iput p2, p0, Lq/d;->f:I

    iget-object v1, p0, Lq/d;->b:Lq/c;

    iput-object v0, v1, Lq/c;->d:Landroid/graphics/ColorFilter;

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    iput p2, p0, Lq/d;->g:I

    iget-object v1, p0, Lq/d;->c:Lq/c;

    iput-object v0, v1, Lq/c;->d:Landroid/graphics/ColorFilter;

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    iput p2, p0, Lq/d;->h:I

    iget-object v1, p0, Lq/d;->d:Lq/c;

    iput-object v0, v1, Lq/c;->d:Landroid/graphics/ColorFilter;

    :cond_2
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    iput p2, p0, Lq/d;->i:I

    iget-object p0, p0, Lq/d;->e:Lq/c;

    iput-object v0, p0, Lq/c;->d:Landroid/graphics/ColorFilter;

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Use wrong rounded corners to the param, corners = "

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "There is no rounded corner on = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_0

    iput p1, p0, Lq/d;->j:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use wrong rounded corners to the param, corners = "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
