.class public final LZ2/r;
.super LZ2/i;
.source "SourceFile"


# static fields
.field public static final j:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:LZ2/p;

.field public c:Landroid/graphics/PorterDuffColorFilter;

.field public d:Landroid/graphics/ColorFilter;

.field public e:Z

.field public f:Z

.field public final g:[F

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, LZ2/r;->j:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LZ2/r;->f:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, LZ2/r;->g:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LZ2/r;->h:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LZ2/r;->i:Landroid/graphics/Rect;

    new-instance v0, LZ2/p;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, LZ2/p;->c:Landroid/content/res/ColorStateList;

    sget-object v1, LZ2/r;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, v0, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    new-instance v1, LZ2/o;

    invoke-direct {v1}, LZ2/o;-><init>()V

    iput-object v1, v0, LZ2/p;->b:LZ2/o;

    iput-object v0, p0, LZ2/r;->b:LZ2/p;

    return-void
.end method

.method public constructor <init>(LZ2/p;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LZ2/r;->f:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, LZ2/r;->g:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LZ2/r;->h:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LZ2/r;->i:Landroid/graphics/Rect;

    iput-object p1, p0, LZ2/r;->b:LZ2/p;

    iget-object v0, p1, LZ2/p;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, LZ2/r;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LZ2/r;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LZ2/i;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final canApplyTheme()Z
    .locals 0

    iget-object p0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v2, v0, LZ2/r;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, v0, LZ2/r;->d:Landroid/graphics/ColorFilter;

    if-nez v3, :cond_2

    iget-object v3, v0, LZ2/r;->c:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v4, v0, LZ2/r;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v5, v0, LZ2/r;->g:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v4, 0x0

    aget v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x4

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x1

    aget v9, v5, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/4 v10, 0x3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v9, :cond_3

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_4

    :cond_3
    move v6, v11

    move v7, v6

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/16 v7, 0x800

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v5, :cond_d

    if-gtz v6, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v12, v2, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, LZ2/r;->isAutoMirrored()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v9

    if-ne v9, v8, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v9, v0, LZ2/r;->b:LZ2/p;

    iget-object v10, v9, LZ2/p;->f:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v5, v10, :cond_7

    iget-object v10, v9, LZ2/p;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ne v6, v10, :cond_7

    goto :goto_0

    :cond_7
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v9, LZ2/p;->f:Landroid/graphics/Bitmap;

    iput-boolean v8, v9, LZ2/p;->k:Z

    :goto_0
    iget-boolean v9, v0, LZ2/r;->f:Z

    if-nez v9, :cond_8

    iget-object v9, v0, LZ2/r;->b:LZ2/p;

    iget-object v10, v9, LZ2/p;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v15, Landroid/graphics/Canvas;

    iget-object v4, v9, LZ2/p;->f:Landroid/graphics/Bitmap;

    invoke-direct {v15, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v9, LZ2/p;->b:LZ2/o;

    sget-object v14, LZ2/o;->p:Landroid/graphics/Matrix;

    iget-object v13, v12, LZ2/o;->g:LZ2/l;

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, LZ2/o;->a(LZ2/l;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    goto :goto_1

    :cond_8
    iget-object v9, v0, LZ2/r;->b:LZ2/p;

    iget-boolean v10, v9, LZ2/p;->k:Z

    if-nez v10, :cond_9

    iget-object v10, v9, LZ2/p;->g:Landroid/content/res/ColorStateList;

    iget-object v11, v9, LZ2/p;->c:Landroid/content/res/ColorStateList;

    if-ne v10, v11, :cond_9

    iget-object v10, v9, LZ2/p;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v11, v9, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v10, v11, :cond_9

    iget-boolean v10, v9, LZ2/p;->j:Z

    iget-boolean v11, v9, LZ2/p;->e:Z

    if-ne v10, v11, :cond_9

    iget v10, v9, LZ2/p;->i:I

    iget-object v9, v9, LZ2/p;->b:LZ2/o;

    invoke-virtual {v9}, LZ2/o;->getRootAlpha()I

    move-result v9

    if-ne v10, v9, :cond_9

    goto :goto_1

    :cond_9
    iget-object v9, v0, LZ2/r;->b:LZ2/p;

    iget-object v10, v9, LZ2/p;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v15, Landroid/graphics/Canvas;

    iget-object v10, v9, LZ2/p;->f:Landroid/graphics/Bitmap;

    invoke-direct {v15, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v9, LZ2/p;->b:LZ2/o;

    sget-object v14, LZ2/o;->p:Landroid/graphics/Matrix;

    iget-object v13, v12, LZ2/o;->g:LZ2/l;

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, LZ2/o;->a(LZ2/l;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    iget-object v5, v0, LZ2/r;->b:LZ2/p;

    iget-object v6, v5, LZ2/p;->c:Landroid/content/res/ColorStateList;

    iput-object v6, v5, LZ2/p;->g:Landroid/content/res/ColorStateList;

    iget-object v6, v5, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v6, v5, LZ2/p;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v6, v5, LZ2/p;->b:LZ2/o;

    invoke-virtual {v6}, LZ2/o;->getRootAlpha()I

    move-result v6

    iput v6, v5, LZ2/p;->i:I

    iget-boolean v6, v5, LZ2/p;->e:Z

    iput-boolean v6, v5, LZ2/p;->j:Z

    iput-boolean v4, v5, LZ2/p;->k:Z

    :goto_1
    iget-object v0, v0, LZ2/r;->b:LZ2/p;

    iget-object v4, v0, LZ2/p;->b:LZ2/o;

    invoke-virtual {v4}, LZ2/o;->getRootAlpha()I

    move-result v4

    const/16 v5, 0xff

    const/4 v6, 0x0

    if-ge v4, v5, :cond_a

    goto :goto_2

    :cond_a
    if-nez v3, :cond_b

    move-object v3, v6

    goto :goto_3

    :cond_b
    :goto_2
    iget-object v4, v0, LZ2/p;->l:Landroid/graphics/Paint;

    if-nez v4, :cond_c

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, LZ2/p;->l:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_c
    iget-object v4, v0, LZ2/p;->l:Landroid/graphics/Paint;

    iget-object v5, v0, LZ2/p;->b:LZ2/o;

    invoke-virtual {v5}, LZ2/o;->getRootAlpha()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, LZ2/p;->l:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, v0, LZ2/p;->l:Landroid/graphics/Paint;

    :goto_3
    iget-object v0, v0, LZ2/p;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_d
    :goto_4
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LZ2/r;->b:LZ2/p;

    iget-object p0, p0, LZ2/p;->b:LZ2/o;

    invoke-virtual {p0}, LZ2/o;->getRootAlpha()I

    move-result p0

    return p0
.end method

.method public final getChangingConfigurations()I
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, LZ2/r;->b:LZ2/p;

    invoke-virtual {p0}, LZ2/p;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, LZ2/r;->d:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, LZ2/q;

    iget-object p0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-direct {v0, p0}, LZ2/q;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, LZ2/r;->b:LZ2/p;

    invoke-virtual {p0}, LZ2/r;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, LZ2/p;->a:I

    iget-object p0, p0, LZ2/r;->b:LZ2/p;

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LZ2/r;->b:LZ2/p;

    iget-object p0, p0, LZ2/p;->b:LZ2/o;

    iget p0, p0, LZ2/o;->i:F

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LZ2/r;->b:LZ2/p;

    iget-object p0, p0, LZ2/p;->b:LZ2/o;

    iget p0, p0, LZ2/o;->h:F

    float-to-int p0, p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    iget-object p0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, LZ2/r;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    iget-object v0, v1, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    iget-object v6, v1, LZ2/r;->b:LZ2/p;

    new-instance v0, LZ2/o;

    invoke-direct {v0}, LZ2/o;-><init>()V

    iput-object v0, v6, LZ2/p;->b:LZ2/o;

    sget-object v0, LZ2/a;->a:[I

    invoke-static {v2, v5, v4, v0}, LW0/b;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    iget-object v8, v1, LZ2/r;->b:LZ2/p;

    iget-object v9, v8, LZ2/p;->b:LZ2/o;

    const-string v0, "tintMode"

    const/4 v10, 0x6

    const/4 v11, -0x1

    invoke-static {v7, v3, v0, v10, v11}, LW0/b;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v13, 0x3

    const/16 v14, 0x9

    const/4 v15, 0x5

    if-eq v0, v13, :cond_2

    if-eq v0, v15, :cond_3

    if-eq v0, v14, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    :goto_0
    iput-object v12, v8, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v0, "tint"

    invoke-static {v3, v0}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const/4 v12, 0x1

    const/16 v16, 0x0

    const/4 v10, 0x2

    const/4 v14, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v7, v12, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v11, v0, Landroid/util/TypedValue;->type:I

    if-eq v11, v10, :cond_6

    const/16 v10, 0x1c

    if-lt v11, v10, :cond_5

    const/16 v10, 0x1f

    if-gt v11, v10, :cond_5

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    :cond_4
    :goto_1
    move-object/from16 v0, v16

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v7, v12, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    sget-object v11, LW0/c;->a:Ljava/lang/ThreadLocal;

    :try_start_0
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-static {v0, v10, v5}, LW0/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v10, "CSLCompat"

    const-string v11, "Failed to inflate ColorStateList."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to resolve attribute at index 1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_2
    if-eqz v0, :cond_7

    iput-object v0, v8, LZ2/p;->c:Landroid/content/res/ColorStateList;

    :cond_7
    iget-boolean v0, v8, LZ2/p;->e:Z

    const-string v10, "autoMirrored"

    invoke-static {v3, v10}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v7, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    :goto_3
    iput-boolean v0, v8, LZ2/p;->e:Z

    iget v0, v9, LZ2/o;->j:F

    const-string v8, "viewportWidth"

    invoke-static {v3, v8}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const/4 v10, 0x7

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v7, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    :goto_4
    iput v0, v9, LZ2/o;->j:F

    iget v0, v9, LZ2/o;->k:F

    const-string v8, "viewportHeight"

    invoke-static {v3, v8}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const/16 v11, 0x8

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v7, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    :goto_5
    iput v0, v9, LZ2/o;->k:F

    iget v8, v9, LZ2/o;->j:F

    const/4 v15, 0x0

    cmpg-float v8, v8, v15

    if-lez v8, :cond_39

    cmpg-float v0, v0, v15

    if-lez v0, :cond_38

    iget v0, v9, LZ2/o;->h:F

    invoke-virtual {v7, v13, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, LZ2/o;->h:F

    iget v0, v9, LZ2/o;->i:F

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, LZ2/o;->i:F

    iget v8, v9, LZ2/o;->h:F

    cmpg-float v8, v8, v15

    if-lez v8, :cond_37

    cmpg-float v0, v0, v15

    if-lez v0, :cond_36

    invoke-virtual {v9}, LZ2/o;->getAlpha()F

    move-result v0

    const-string v8, "alpha"

    invoke-static {v3, v8}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const/4 v10, 0x4

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v7, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    :goto_6
    invoke-virtual {v9, v0}, LZ2/o;->setAlpha(F)V

    invoke-virtual {v7, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iput-object v0, v9, LZ2/o;->m:Ljava/lang/String;

    iget-object v8, v9, LZ2/o;->o:LN/f;

    invoke-virtual {v8, v0, v9}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, LZ2/r;->getChangingConfigurations()I

    move-result v0

    iput v0, v6, LZ2/p;->a:I

    iput-boolean v12, v6, LZ2/p;->k:Z

    iget-object v0, v1, LZ2/r;->b:LZ2/p;

    iget-object v7, v0, LZ2/p;->b:LZ2/o;

    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v9, v7, LZ2/o;->g:LZ2/l;

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    add-int/lit8 v10, v20, 0x1

    move/from16 v20, v12

    :goto_7
    if-eq v9, v12, :cond_34

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ge v11, v10, :cond_d

    if-eq v9, v13, :cond_34

    :cond_d
    const-string v11, "group"

    const/4 v13, 0x2

    if-ne v9, v13, :cond_32

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LZ2/l;

    if-eqz v13, :cond_31

    const-string v12, "path"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iget-object v14, v7, LZ2/o;->o:LN/f;

    iget-object v13, v13, LZ2/l;->b:Ljava/util/ArrayList;

    const-string v15, "fillType"

    move-object/from16 v22, v7

    const-string v7, "pathData"

    if-eqz v12, :cond_22

    new-instance v9, LZ2/k;

    invoke-direct {v9}, LZ2/n;-><init>()V

    const/4 v12, 0x0

    iput v12, v9, LZ2/k;->e:F

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v9, LZ2/k;->g:F

    iput v11, v9, LZ2/k;->h:F

    iput v12, v9, LZ2/k;->i:F

    iput v11, v9, LZ2/k;->j:F

    iput v12, v9, LZ2/k;->k:F

    sget-object v11, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v11, v9, LZ2/k;->l:Landroid/graphics/Paint$Cap;

    sget-object v12, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v12, v9, LZ2/k;->m:Landroid/graphics/Paint$Join;

    move/from16 v23, v10

    const/high16 v10, 0x40800000    # 4.0f

    iput v10, v9, LZ2/k;->n:F

    sget-object v10, LZ2/a;->c:[I

    invoke-static {v2, v5, v4, v10}, LW0/b;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-static {v3, v7}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_14

    :cond_e
    move-object/from16 v20, v11

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    iput-object v11, v9, LZ2/n;->b:Ljava/lang/String;

    :cond_f
    const/4 v7, 0x2

    invoke-virtual {v10, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-static {v11}, LG5/p3;->b(Ljava/lang/String;)[LX0/d;

    move-result-object v7

    iput-object v7, v9, LZ2/n;->a:[LX0/d;

    :cond_10
    const-string v7, "fillColor"

    const/4 v11, 0x1

    invoke-static {v10, v3, v5, v7, v11}, LW0/b;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)LG5/g4;

    move-result-object v7

    iput-object v7, v9, LZ2/k;->f:LG5/g4;

    iget v7, v9, LZ2/k;->h:F

    const-string v11, "fillAlpha"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_11

    goto :goto_8

    :cond_11
    const/16 v11, 0xc

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_8
    iput v7, v9, LZ2/k;->h:F

    const-string v7, "strokeLineCap"

    invoke-static {v3, v7}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    const/4 v7, -0x1

    goto :goto_9

    :cond_12
    const/4 v7, -0x1

    const/16 v11, 0x8

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move/from16 v7, v21

    :goto_9
    iget-object v11, v9, LZ2/k;->l:Landroid/graphics/Paint$Cap;

    if-eqz v7, :cond_15

    move-object/from16 v24, v11

    const/4 v11, 0x1

    if-eq v7, v11, :cond_14

    const/4 v11, 0x2

    if-eq v7, v11, :cond_13

    move-object/from16 v11, v24

    goto :goto_a

    :cond_13
    sget-object v11, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_a

    :cond_14
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_a

    :cond_15
    move-object/from16 v11, v20

    :goto_a
    iput-object v11, v9, LZ2/k;->l:Landroid/graphics/Paint$Cap;

    const-string v7, "strokeLineJoin"

    invoke-static {v3, v7}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    const/4 v7, -0x1

    goto :goto_b

    :cond_16
    const/4 v7, -0x1

    const/16 v11, 0x9

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v7, v18

    :goto_b
    iget-object v11, v9, LZ2/k;->m:Landroid/graphics/Paint$Join;

    if-eqz v7, :cond_19

    move-object/from16 v20, v11

    const/4 v11, 0x1

    if-eq v7, v11, :cond_18

    const/4 v11, 0x2

    if-eq v7, v11, :cond_17

    move-object/from16 v12, v20

    goto :goto_c

    :cond_17
    sget-object v12, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_c

    :cond_18
    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    :cond_19
    :goto_c
    iput-object v12, v9, LZ2/k;->m:Landroid/graphics/Paint$Join;

    iget v7, v9, LZ2/k;->n:F

    const-string v11, "strokeMiterLimit"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1a

    goto :goto_d

    :cond_1a
    const/16 v11, 0xa

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_d
    iput v7, v9, LZ2/k;->n:F

    const-string v7, "strokeColor"

    const/4 v11, 0x3

    invoke-static {v10, v3, v5, v7, v11}, LW0/b;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)LG5/g4;

    move-result-object v7

    iput-object v7, v9, LZ2/k;->d:LG5/g4;

    iget v7, v9, LZ2/k;->g:F

    const-string v11, "strokeAlpha"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1b

    goto :goto_e

    :cond_1b
    const/16 v11, 0xb

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_e
    iput v7, v9, LZ2/k;->g:F

    iget v7, v9, LZ2/k;->e:F

    const-string v11, "strokeWidth"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v11, 0x4

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_f
    iput v7, v9, LZ2/k;->e:F

    iget v7, v9, LZ2/k;->j:F

    const-string v11, "trimPathEnd"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1d

    goto :goto_10

    :cond_1d
    const/4 v11, 0x6

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_10
    iput v7, v9, LZ2/k;->j:F

    iget v7, v9, LZ2/k;->k:F

    const-string v11, "trimPathOffset"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v11, 0x7

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_11
    iput v7, v9, LZ2/k;->k:F

    iget v7, v9, LZ2/k;->i:F

    const-string v11, "trimPathStart"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v11, 0x5

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_12
    iput v7, v9, LZ2/k;->i:F

    iget v7, v9, LZ2/n;->c:I

    invoke-static {v3, v15}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_20

    goto :goto_13

    :cond_20
    const/16 v11, 0xd

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    :goto_13
    iput v7, v9, LZ2/n;->c:I

    :goto_14
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, LZ2/n;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_21

    invoke-virtual {v9}, LZ2/n;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7, v9}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget v7, v0, LZ2/p;->a:I

    iput v7, v0, LZ2/p;->a:I

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v15, 0x5

    const/16 v18, 0x8

    const/16 v20, 0x0

    goto/16 :goto_1c

    :cond_22
    move/from16 v23, v10

    const/16 v12, 0x9

    const/16 v18, 0x8

    const-string v10, "clip-path"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    new-instance v9, LZ2/j;

    invoke-direct {v9}, LZ2/n;-><init>()V

    invoke-static {v3, v7}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_23

    goto :goto_16

    :cond_23
    sget-object v7, LZ2/a;->d:[I

    invoke-static {v2, v5, v4, v7}, LW0/b;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_24

    iput-object v11, v9, LZ2/n;->b:Ljava/lang/String;

    :cond_24
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_25

    invoke-static {v11}, LG5/p3;->b(Ljava/lang/String;)[LX0/d;

    move-result-object v10

    iput-object v10, v9, LZ2/n;->a:[LX0/d;

    :cond_25
    invoke-static {v3, v15}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_26

    const/4 v15, 0x0

    goto :goto_15

    :cond_26
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    :goto_15
    iput v15, v9, LZ2/n;->c:I

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :goto_16
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, LZ2/n;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_27

    invoke-virtual {v9}, LZ2/n;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7, v9}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget v7, v0, LZ2/p;->a:I

    iput v7, v0, LZ2/p;->a:I

    :cond_28
    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v15, 0x5

    goto/16 :goto_1c

    :cond_29
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    new-instance v7, LZ2/l;

    invoke-direct {v7}, LZ2/l;-><init>()V

    sget-object v9, LZ2/a;->b:[I

    invoke-static {v2, v5, v4, v9}, LW0/b;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    iget v10, v7, LZ2/l;->c:F

    const-string v11, "rotation"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2a

    const/4 v15, 0x5

    goto :goto_17

    :cond_2a
    const/4 v15, 0x5

    invoke-virtual {v9, v15, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    :goto_17
    iput v10, v7, LZ2/l;->c:F

    iget v10, v7, LZ2/l;->d:F

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v7, LZ2/l;->d:F

    iget v10, v7, LZ2/l;->e:F

    const/4 v12, 0x2

    invoke-virtual {v9, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v7, LZ2/l;->e:F

    iget v10, v7, LZ2/l;->f:F

    const-string v11, "scaleX"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2b

    goto :goto_18

    :cond_2b
    const/4 v11, 0x3

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    :goto_18
    iput v10, v7, LZ2/l;->f:F

    iget v10, v7, LZ2/l;->g:F

    const-string v11, "scaleY"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    const/4 v11, 0x4

    goto :goto_19

    :cond_2c
    const/4 v11, 0x4

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    :goto_19
    iput v10, v7, LZ2/l;->g:F

    iget v10, v7, LZ2/l;->h:F

    const-string v11, "translateX"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2d

    const/4 v11, 0x6

    goto :goto_1a

    :cond_2d
    const/4 v11, 0x6

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    :goto_1a
    iput v10, v7, LZ2/l;->h:F

    iget v10, v7, LZ2/l;->i:F

    const-string v11, "translateY"

    invoke-static {v3, v11}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2e

    const/4 v11, 0x7

    goto :goto_1b

    :cond_2e
    const/4 v11, 0x7

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    :goto_1b
    iput v10, v7, LZ2/l;->i:F

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2f

    iput-object v11, v7, LZ2/l;->k:Ljava/lang/String;

    :cond_2f
    invoke-virtual {v7}, LZ2/l;->c()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v7}, LZ2/l;->getGroupName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_30

    invoke-virtual {v7}, LZ2/l;->getGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9, v7}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    iget v7, v0, LZ2/p;->a:I

    iput v7, v0, LZ2/p;->a:I

    goto :goto_1c

    :cond_31
    move-object/from16 v22, v7

    move/from16 v23, v10

    move v10, v14

    const/4 v12, 0x2

    const/4 v15, 0x5

    const/16 v18, 0x8

    :goto_1c
    const/4 v7, 0x6

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/16 v17, 0x7

    const/16 v19, 0x4

    goto :goto_1d

    :cond_32
    move-object/from16 v22, v7

    move/from16 v23, v10

    move v10, v14

    const/4 v7, 0x6

    const/4 v15, 0x5

    const/16 v17, 0x7

    const/16 v18, 0x8

    const/16 v19, 0x4

    move v14, v12

    move v12, v13

    const/4 v13, 0x3

    if-ne v9, v13, :cond_33

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_33
    :goto_1d
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v12, v14

    move/from16 v11, v18

    move-object/from16 v7, v22

    const/4 v15, 0x0

    move v14, v10

    move/from16 v10, v23

    goto/16 :goto_7

    :cond_34
    if-nez v20, :cond_35

    iget-object v0, v6, LZ2/p;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v6, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, LZ2/r;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v1, LZ2/r;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :cond_35
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LZ2/r;->b:LZ2/p;

    iget-boolean p0, p0, LZ2/p;->e:Z

    return p0
.end method

.method public final isStateful()Z
    .locals 2

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LZ2/r;->b:LZ2/p;

    if-eqz v0, :cond_2

    iget-object v0, v0, LZ2/p;->b:LZ2/o;

    iget-object v1, v0, LZ2/o;->n:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    iget-object v1, v0, LZ2/o;->g:LZ2/l;

    invoke-virtual {v1}, LZ2/l;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, LZ2/o;->n:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, v0, LZ2/o;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, LZ2/r;->b:LZ2/p;

    iget-object p0, p0, LZ2/p;->c:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, LZ2/r;->e:Z

    if-nez v0, :cond_4

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_4

    new-instance v0, LZ2/p;

    iget-object v1, p0, LZ2/r;->b:LZ2/p;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, LZ2/p;->c:Landroid/content/res/ColorStateList;

    sget-object v2, LZ2/r;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_3

    iget v2, v1, LZ2/p;->a:I

    iput v2, v0, LZ2/p;->a:I

    new-instance v2, LZ2/o;

    iget-object v3, v1, LZ2/p;->b:LZ2/o;

    invoke-direct {v2, v3}, LZ2/o;-><init>(LZ2/o;)V

    iput-object v2, v0, LZ2/p;->b:LZ2/o;

    iget-object v3, v1, LZ2/p;->b:LZ2/o;

    iget-object v3, v3, LZ2/o;->e:Landroid/graphics/Paint;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, v1, LZ2/p;->b:LZ2/o;

    iget-object v4, v4, LZ2/o;->e:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v2, LZ2/o;->e:Landroid/graphics/Paint;

    :cond_1
    iget-object v2, v1, LZ2/p;->b:LZ2/o;

    iget-object v2, v2, LZ2/o;->d:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    iget-object v2, v0, LZ2/p;->b:LZ2/o;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, v1, LZ2/p;->b:LZ2/o;

    iget-object v4, v4, LZ2/o;->d:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v2, LZ2/o;->d:Landroid/graphics/Paint;

    :cond_2
    iget-object v2, v1, LZ2/p;->c:Landroid/content/res/ColorStateList;

    iput-object v2, v0, LZ2/p;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v1, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v1, v1, LZ2/p;->e:Z

    iput-boolean v1, v0, LZ2/p;->e:Z

    :cond_3
    iput-object v0, p0, LZ2/r;->b:LZ2/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, LZ2/r;->e:Z

    :cond_4
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, LZ2/r;->b:LZ2/p;

    iget-object v1, v0, LZ2/p;->c:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, v0, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v3}, LZ2/r;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, LZ2/r;->c:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, LZ2/r;->invalidateSelf()V

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, LZ2/p;->b:LZ2/o;

    iget-object v4, v3, LZ2/o;->n:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    iget-object v4, v3, LZ2/o;->g:LZ2/l;

    invoke-virtual {v4}, LZ2/l;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, LZ2/o;->n:Ljava/lang/Boolean;

    :cond_2
    iget-object v3, v3, LZ2/o;->n:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, LZ2/p;->b:LZ2/o;

    iget-object v3, v3, LZ2/o;->g:LZ2/l;

    invoke-virtual {v3, p1}, LZ2/l;->b([I)Z

    move-result p1

    iget-boolean v3, v0, LZ2/p;->k:Z

    or-int/2addr v3, p1

    iput-boolean v3, v0, LZ2/p;->k:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, LZ2/r;->invalidateSelf()V

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, LZ2/r;->b:LZ2/p;

    iget-object v0, v0, LZ2/p;->b:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, LZ2/r;->b:LZ2/p;

    iget-object v0, v0, LZ2/p;->b:LZ2/o;

    invoke-virtual {v0, p1}, LZ2/o;->setRootAlpha(I)V

    invoke-virtual {p0}, LZ2/r;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    :cond_0
    iget-object p0, p0, LZ2/r;->b:LZ2/p;

    iput-boolean p1, p0, LZ2/p;->e:Z

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, LZ2/r;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, LZ2/r;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, LG5/v3;->s(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LZ2/r;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, LZ2/r;->b:LZ2/p;

    iget-object v1, v0, LZ2/p;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, LZ2/p;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, LZ2/r;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LZ2/r;->c:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, LZ2/r;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, LZ2/r;->b:LZ2/p;

    iget-object v1, v0, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, LZ2/p;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, LZ2/p;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, LZ2/r;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LZ2/r;->c:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, LZ2/r;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LZ2/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
