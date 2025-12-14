.class public final Lu2/b;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lu2/i;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/List;

.field public c:F

.field public d:Lu2/c;

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu2/b;->a:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lu2/b;->b:Ljava/util/List;

    const p1, 0x3d5a511a    # 0.0533f

    iput p1, p0, Lu2/b;->c:F

    sget-object p1, Lu2/c;->g:Lu2/c;

    iput-object p1, p0, Lu2/b;->d:Lu2/c;

    const p1, 0x3da3d70a    # 0.08f

    iput p1, p0, Lu2/b;->e:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lu2/c;FF)V
    .locals 0

    iput-object p1, p0, Lu2/b;->b:Ljava/util/List;

    iput-object p2, p0, Lu2/b;->d:Lu2/c;

    iput p3, p0, Lu2/b;->c:F

    iput p4, p0, Lu2/b;->e:F

    :goto_0
    iget-object p2, p0, Lu2/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    new-instance p3, Lu2/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lu2/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lu2/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v7, v3, v7

    if-le v7, v5, :cond_29

    if-gt v6, v4, :cond_1

    goto/16 :goto_18

    :cond_1
    sub-int v8, v7, v5

    iget v9, v0, Lu2/b;->c:F

    const/4 v10, 0x0

    invoke-static {v10, v3, v9, v8}, LG5/j2;->d(IIFI)F

    move-result v9

    const/4 v11, 0x0

    cmpg-float v12, v9, v11

    if-gtz v12, :cond_2

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    move v13, v10

    :goto_0
    if-ge v13, v12, :cond_29

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lq2/b;

    iget v15, v14, Lq2/b;->m:I

    const/high16 v17, 0x3f800000    # 1.0f

    const v11, -0x800001

    const/high16 v10, -0x80000000

    if-eq v15, v10, :cond_6

    invoke-virtual {v14}, Lq2/b;->a()Lq2/a;

    move-result-object v15

    iput v11, v15, Lq2/a;->f:F

    iput v10, v15, Lq2/a;->g:I

    const/4 v10, 0x0

    iput-object v10, v15, Lq2/a;->b:Landroid/text/Layout$Alignment;

    iget v10, v14, Lq2/b;->d:I

    iget v11, v14, Lq2/b;->c:F

    if-nez v10, :cond_3

    sub-float v10, v17, v11

    iput v10, v15, Lq2/a;->c:F

    const/4 v10, 0x0

    iput v10, v15, Lq2/a;->d:I

    goto :goto_1

    :cond_3
    neg-float v10, v11

    sub-float v10, v10, v17

    iput v10, v15, Lq2/a;->c:F

    const/4 v10, 0x1

    iput v10, v15, Lq2/a;->d:I

    :goto_1
    iget v10, v14, Lq2/b;->e:I

    if-eqz v10, :cond_5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    iput v10, v15, Lq2/a;->e:I

    goto :goto_2

    :cond_5
    const/4 v11, 0x2

    iput v11, v15, Lq2/a;->e:I

    :goto_2
    invoke-virtual {v15}, Lq2/a;->a()Lq2/b;

    move-result-object v14

    :cond_6
    iget v10, v14, Lq2/b;->k:I

    iget v11, v14, Lq2/b;->l:F

    invoke-static {v10, v3, v11, v8}, LG5/j2;->d(IIFI)F

    move-result v10

    iget-object v11, v0, Lu2/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lu2/h;

    iget-object v15, v0, Lu2/b;->d:Lu2/c;

    move-object/from16 v18, v2

    iget v2, v0, Lu2/b;->e:F

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v14, Lq2/b;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    move/from16 v19, v3

    move/from16 v34, v4

    move/from16 v33, v5

    move/from16 v32, v6

    move/from16 v31, v7

    move/from16 v20, v8

    move/from16 v35, v9

    move/from16 v29, v12

    move/from16 v30, v13

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    goto/16 :goto_17

    :cond_7
    move/from16 v19, v3

    iget v3, v15, Lu2/c;->c:I

    move/from16 v20, v8

    iget-object v8, v11, Lu2/h;->h:Ljava/lang/CharSequence;

    move/from16 v29, v12

    iget-object v12, v11, Lu2/h;->f:Landroid/text/TextPaint;

    move/from16 v30, v13

    iget v13, v14, Lq2/b;->i:F

    iget v1, v14, Lq2/b;->h:F

    move/from16 v31, v7

    iget v7, v14, Lq2/b;->g:I

    move/from16 v32, v6

    iget v6, v14, Lq2/b;->f:F

    move/from16 v33, v5

    iget v5, v14, Lq2/b;->e:I

    move/from16 v34, v4

    iget v4, v14, Lq2/b;->d:I

    move/from16 v21, v2

    iget v2, v14, Lq2/b;->c:F

    iget-object v14, v14, Lq2/b;->b:Landroid/text/Layout$Alignment;

    if-eq v8, v0, :cond_9

    if-eqz v8, :cond_8

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    move v8, v1

    move/from16 v22, v4

    move-object/from16 v4, p1

    goto/16 :goto_8

    :cond_9
    :goto_3
    iget-object v8, v11, Lu2/h;->i:Landroid/text/Layout$Alignment;

    if-nez v8, :cond_b

    if-nez v14, :cond_a

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    invoke-virtual {v8, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_4
    if-eqz v8, :cond_8

    iget v8, v11, Lu2/h;->j:F

    cmpl-float v8, v8, v2

    if-nez v8, :cond_8

    iget v8, v11, Lu2/h;->k:I

    if-ne v8, v4, :cond_8

    iget v8, v11, Lu2/h;->l:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v22, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v4, v11, Lu2/h;->m:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_12

    iget v4, v11, Lu2/h;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v4, v11, Lu2/h;->o:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_12

    iget v4, v11, Lu2/h;->p:F

    cmpl-float v4, v4, v13

    if-nez v4, :cond_12

    iget v4, v11, Lu2/h;->q:I

    iget v8, v15, Lu2/c;->a:I

    if-ne v4, v8, :cond_12

    iget v4, v11, Lu2/h;->r:I

    iget v8, v15, Lu2/c;->b:I

    if-ne v4, v8, :cond_12

    iget v4, v11, Lu2/h;->s:I

    if-ne v4, v3, :cond_12

    iget v4, v11, Lu2/h;->u:I

    iget v8, v15, Lu2/c;->d:I

    if-ne v4, v8, :cond_12

    iget v4, v11, Lu2/h;->t:I

    iget v8, v15, Lu2/c;->e:I

    if-ne v4, v8, :cond_12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    iget-object v8, v15, Lu2/c;->f:Landroid/graphics/Typeface;

    if-nez v4, :cond_d

    if-nez v8, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    :cond_d
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_5
    if-eqz v4, :cond_12

    iget v4, v11, Lu2/h;->v:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_12

    iget v4, v11, Lu2/h;->w:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_12

    iget v4, v11, Lu2/h;->x:F

    cmpl-float v4, v4, v21

    if-nez v4, :cond_12

    iget v4, v11, Lu2/h;->y:I

    move/from16 v8, v34

    if-ne v4, v8, :cond_11

    iget v4, v11, Lu2/h;->z:I

    move/from16 v23, v1

    move/from16 v1, v33

    if-ne v4, v1, :cond_10

    iget v4, v11, Lu2/h;->A:I

    move/from16 v33, v1

    move/from16 v1, v32

    if-ne v4, v1, :cond_f

    iget v4, v11, Lu2/h;->B:I

    move/from16 v32, v1

    move/from16 v1, v31

    if-ne v4, v1, :cond_e

    move-object/from16 v4, p1

    move/from16 v31, v1

    move/from16 v34, v8

    const/4 v1, 0x1

    invoke-virtual {v11, v4, v1}, Lu2/h;->a(Landroid/graphics/Canvas;Z)V

    move/from16 v35, v9

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_17

    :cond_e
    move-object/from16 v4, p1

    move/from16 v31, v1

    :goto_6
    move/from16 v34, v8

    move/from16 v8, v23

    goto :goto_8

    :cond_f
    move-object/from16 v4, p1

    move/from16 v32, v1

    goto :goto_6

    :cond_10
    move-object/from16 v4, p1

    move/from16 v33, v1

    goto :goto_6

    :cond_11
    move-object/from16 v4, p1

    move/from16 v34, v8

    :goto_7
    move v8, v1

    goto :goto_8

    :cond_12
    move-object/from16 v4, p1

    goto :goto_7

    :goto_8
    iput-object v0, v11, Lu2/h;->h:Ljava/lang/CharSequence;

    iput-object v14, v11, Lu2/h;->i:Landroid/text/Layout$Alignment;

    iput v2, v11, Lu2/h;->j:F

    move/from16 v0, v22

    iput v0, v11, Lu2/h;->k:I

    iput v5, v11, Lu2/h;->l:I

    iput v6, v11, Lu2/h;->m:F

    iput v7, v11, Lu2/h;->n:I

    iput v8, v11, Lu2/h;->o:F

    iput v13, v11, Lu2/h;->p:F

    iget v0, v15, Lu2/c;->a:I

    iput v0, v11, Lu2/h;->q:I

    iget v0, v15, Lu2/c;->b:I

    iput v0, v11, Lu2/h;->r:I

    iput v3, v11, Lu2/h;->s:I

    iget v0, v15, Lu2/c;->d:I

    iput v0, v11, Lu2/h;->u:I

    iget v0, v15, Lu2/c;->e:I

    iput v0, v11, Lu2/h;->t:I

    iget-object v0, v15, Lu2/c;->f:Landroid/graphics/Typeface;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput v9, v11, Lu2/h;->v:F

    iput v10, v11, Lu2/h;->w:F

    move/from16 v0, v21

    iput v0, v11, Lu2/h;->x:F

    move/from16 v0, v34

    iput v0, v11, Lu2/h;->y:I

    move/from16 v1, v33

    iput v1, v11, Lu2/h;->z:I

    move/from16 v6, v32

    iput v6, v11, Lu2/h;->A:I

    move/from16 v3, v31

    iput v3, v11, Lu2/h;->B:I

    iget-object v2, v11, Lu2/h;->h:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v11, Lu2/h;->h:Ljava/lang/CharSequence;

    instance-of v5, v2, Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_13

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_13
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v5, v11, Lu2/h;->h:Ljava/lang/CharSequence;

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_9
    iget v5, v11, Lu2/h;->A:I

    iget v7, v11, Lu2/h;->y:I

    sub-int/2addr v5, v7

    iget v7, v11, Lu2/h;->B:I

    iget v8, v11, Lu2/h;->z:I

    sub-int/2addr v7, v8

    iget v8, v11, Lu2/h;->v:F

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v8, v11, Lu2/h;->v:F

    const/high16 v10, 0x3e000000    # 0.125f

    mul-float/2addr v8, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v8, v10

    float-to-int v8, v8

    mul-int/lit8 v10, v8, 0x2

    sub-int v13, v5, v10

    iget v14, v11, Lu2/h;->o:F

    const v15, -0x800001

    cmpl-float v21, v14, v15

    if-eqz v21, :cond_14

    int-to-float v13, v13

    mul-float/2addr v13, v14

    float-to-int v13, v13

    :cond_14
    const-string v14, "SubtitlePainter"

    if-gtz v13, :cond_15

    const-string v2, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v14, v2}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v34, v0

    move/from16 v33, v1

    move/from16 v31, v3

    move/from16 v32, v6

    move/from16 v35, v9

    :goto_a
    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_16

    :cond_15
    iget v15, v11, Lu2/h;->w:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    move/from16 v34, v0

    if-lez v15, :cond_16

    new-instance v15, Landroid/text/style/AbsoluteSizeSpan;

    iget v0, v11, Lu2/h;->w:F

    float-to-int v0, v0

    invoke-direct {v15, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    move/from16 v33, v1

    move/from16 v31, v3

    const/4 v1, 0x0

    const/high16 v3, 0xff0000

    invoke-virtual {v2, v15, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_16
    move/from16 v33, v1

    move/from16 v31, v3

    const/4 v1, 0x0

    :goto_b
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v3, v11, Lu2/h;->u:I

    const/4 v15, 0x1

    if-ne v3, v15, :cond_17

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v15, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v1, v3, v15}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ForegroundColorSpan;

    array-length v1, v3

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v1, :cond_17

    move/from16 v22, v1

    aget-object v1, v3, v15

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v22

    goto :goto_c

    :cond_17
    iget v1, v11, Lu2/h;->r:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_1a

    iget v1, v11, Lu2/h;->u:I

    if-eqz v1, :cond_18

    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    :cond_18
    move/from16 v32, v6

    const/high16 v6, 0xff0000

    const/4 v15, 0x0

    goto :goto_d

    :cond_19
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v3, v11, Lu2/h;->r:I

    invoke-direct {v1, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v32, v6

    const/high16 v6, 0xff0000

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v15, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :goto_d
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v3, v11, Lu2/h;->r:I

    invoke-direct {v1, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v15, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :cond_1a
    move/from16 v32, v6

    :goto_e
    iget-object v1, v11, Lu2/h;->i:Landroid/text/Layout$Alignment;

    if-nez v1, :cond_1b

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_1b
    new-instance v3, Landroid/text/StaticLayout;

    iget v6, v11, Lu2/h;->e:F

    const/16 v28, 0x1

    iget v15, v11, Lu2/h;->d:F

    move-object/from16 v21, v3

    move-object/from16 v22, v2

    move-object/from16 v23, v12

    move/from16 v24, v13

    move-object/from16 v25, v1

    move/from16 v26, v15

    move/from16 v27, v6

    invoke-direct/range {v21 .. v28}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v11, Lu2/h;->C:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    iget-object v6, v11, Lu2/h;->C:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    move/from16 v35, v9

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v6, :cond_1c

    move/from16 v21, v6

    iget-object v6, v11, Lu2/h;->C:Landroid/text/StaticLayout;

    invoke-virtual {v6, v15}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    move-object/from16 v36, v0

    move-object/from16 v37, v1

    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v21

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    goto :goto_f

    :cond_1c
    move-object/from16 v36, v0

    move-object/from16 v37, v1

    iget v0, v11, Lu2/h;->o:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    if-ge v9, v13, :cond_1d

    goto :goto_10

    :cond_1d
    move v13, v9

    :goto_10
    add-int/2addr v13, v10

    iget v0, v11, Lu2/h;->m:F

    cmpl-float v6, v0, v1

    if-eqz v6, :cond_20

    int-to-float v1, v5

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, v11, Lu2/h;->y:I

    add-int/2addr v0, v1

    iget v5, v11, Lu2/h;->n:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1e

    goto :goto_11

    :cond_1e
    sub-int/2addr v0, v13

    goto :goto_11

    :cond_1f
    const/4 v6, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v13

    div-int/2addr v0, v6

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v13, v0

    iget v1, v11, Lu2/h;->A:I

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_12

    :cond_20
    const/4 v6, 0x2

    sub-int/2addr v5, v13

    div-int/2addr v5, v6

    iget v0, v11, Lu2/h;->y:I

    add-int/2addr v0, v5

    add-int v1, v0, v13

    :goto_12
    sub-int/2addr v1, v0

    if-gtz v1, :cond_21

    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v14, v0}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_21
    iget v5, v11, Lu2/h;->j:F

    const v6, -0x800001

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_27

    iget v6, v11, Lu2/h;->k:I

    if-nez v6, :cond_24

    int-to-float v6, v7

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v11, Lu2/h;->z:I

    add-int/2addr v5, v6

    iget v6, v11, Lu2/h;->l:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_22

    sub-int/2addr v5, v3

    goto :goto_13

    :cond_22
    const/4 v9, 0x1

    if-ne v6, v9, :cond_23

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    div-int/2addr v5, v7

    :cond_23
    :goto_13
    const/4 v6, 0x0

    const/4 v9, 0x0

    goto :goto_14

    :cond_24
    iget-object v5, v11, Lu2/h;->C:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iget-object v7, v11, Lu2/h;->C:Landroid/text/StaticLayout;

    invoke-virtual {v7, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v11, Lu2/h;->j:F

    const/4 v9, 0x0

    cmpl-float v10, v7, v9

    if-ltz v10, :cond_25

    int-to-float v5, v5

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v7, v11, Lu2/h;->z:I

    add-int/2addr v5, v7

    goto :goto_14

    :cond_25
    add-float v7, v7, v17

    int-to-float v5, v5

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v7, v11, Lu2/h;->B:I

    add-int/2addr v5, v7

    sub-int/2addr v5, v3

    :goto_14
    add-int v7, v5, v3

    iget v10, v11, Lu2/h;->B:I

    if-le v7, v10, :cond_26

    sub-int v5, v10, v3

    goto :goto_15

    :cond_26
    iget v3, v11, Lu2/h;->z:I

    if-ge v5, v3, :cond_28

    move v5, v3

    goto :goto_15

    :cond_27
    const/4 v6, 0x0

    const/4 v9, 0x0

    iget v5, v11, Lu2/h;->B:I

    sub-int/2addr v5, v3

    int-to-float v3, v7

    iget v7, v11, Lu2/h;->x:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    sub-int/2addr v5, v3

    :cond_28
    :goto_15
    new-instance v3, Landroid/text/StaticLayout;

    iget v7, v11, Lu2/h;->e:F

    const/16 v28, 0x1

    iget v10, v11, Lu2/h;->d:F

    move-object/from16 v21, v3

    move-object/from16 v22, v2

    move-object/from16 v23, v12

    move/from16 v24, v1

    move-object/from16 v25, v37

    move/from16 v26, v10

    move/from16 v27, v7

    invoke-direct/range {v21 .. v28}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v11, Lu2/h;->C:Landroid/text/StaticLayout;

    new-instance v2, Landroid/text/StaticLayout;

    iget v3, v11, Lu2/h;->e:F

    iget v7, v11, Lu2/h;->d:F

    move-object/from16 v21, v2

    move-object/from16 v22, v36

    move/from16 v26, v7

    move/from16 v27, v3

    invoke-direct/range {v21 .. v28}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v11, Lu2/h;->D:Landroid/text/StaticLayout;

    iput v0, v11, Lu2/h;->E:I

    iput v5, v11, Lu2/h;->F:I

    iput v8, v11, Lu2/h;->G:I

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v11, v4, v0}, Lu2/h;->a(Landroid/graphics/Canvas;Z)V

    :goto_17
    add-int/lit8 v13, v30, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v10, v6

    move v11, v9

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v8, v20

    move/from16 v12, v29

    move/from16 v7, v31

    move/from16 v6, v32

    move/from16 v5, v33

    move/from16 v4, v34

    move/from16 v9, v35

    goto/16 :goto_0

    :cond_29
    :goto_18
    return-void
.end method
