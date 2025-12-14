.class public final Lu2/n;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lu2/i;


# instance fields
.field public final a:Lu2/b;

.field public final b:Lu2/l;

.field public c:Ljava/util/List;

.field public d:Lu2/c;

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lu2/n;->c:Ljava/util/List;

    sget-object v1, Lu2/c;->g:Lu2/c;

    iput-object v1, p0, Lu2/n;->d:Lu2/c;

    const v1, 0x3d5a511a    # 0.0533f

    iput v1, p0, Lu2/n;->e:F

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Lu2/n;->f:F

    new-instance v1, Lu2/b;

    invoke-direct {v1, p1}, Lu2/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lu2/n;->a:Lu2/b;

    new-instance v2, Lu2/l;

    invoke-direct {v2, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lu2/n;->b:Lu2/l;

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lu2/c;FF)V
    .locals 4

    iput-object p2, p0, Lu2/n;->d:Lu2/c;

    iput p3, p0, Lu2/n;->e:F

    iput p4, p0, Lu2/n;->f:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq2/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lu2/n;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iput-object v1, p0, Lu2/n;->c:Ljava/util/List;

    invoke-virtual {p0}, Lu2/n;->c()V

    :cond_2
    iget-object p1, p0, Lu2/n;->a:Lu2/b;

    invoke-virtual {p1, v0, p2, p3, p4}, Lu2/b;->a(Ljava/util/List;Lu2/c;FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(FI)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, v0, p1, v1}, LG5/j2;->d(IIFI)F

    move-result p1

    const p2, -0x800001

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const-string p0, "unset"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget p1, Lr2/e;->a:I

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "%.2fpx"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 37

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lu2/n;->d:Lu2/c;

    iget v4, v4, Lu2/c;->a:I

    invoke-static {v4}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lu2/n;->e:F

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lu2/n;->b(FI)Ljava/lang/String;

    move-result-object v5

    const v7, 0x3f99999a    # 1.2f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-object v9, v0, Lu2/n;->d:Lu2/c;

    iget v10, v9, Lu2/c;->d:I

    const/4 v11, 0x3

    iget v9, v9, Lu2/c;->e:I

    if-eq v10, v2, :cond_3

    if-eq v10, v1, :cond_2

    if-eq v10, v11, :cond_1

    const/4 v12, 0x4

    if-eq v10, v12, :cond_0

    const-string v9, "unset"

    goto :goto_0

    :cond_0
    invoke-static {v9}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lr2/e;->a:I

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "-0.05em -0.05em 0.15em "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-static {v9}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lr2/e;->a:I

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "0.06em 0.08em 0.15em "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    invoke-static {v9}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lr2/e;->a:I

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "0.1em 0.12em 0.15em "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_3
    invoke-static {v9}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    sget v10, Lr2/e;->a:I

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v10, v12, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    filled-new-array {v4, v5, v8, v9}, [Ljava/lang/Object;

    move-result-object v4

    sget v5, Lr2/e;->a:I

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v5, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v0, Lu2/n;->d:Lu2/c;

    iget v5, v5, Lu2/c;->b:I

    invoke-static {v5}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "background-color:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, ".default_bg,.default_bg *"

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v6

    :goto_1
    iget-object v10, v0, Lu2/n;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_43

    iget-object v10, v0, Lu2/n;->c:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq2/b;

    iget v12, v10, Lq2/b;->f:F

    const v13, -0x800001

    cmpl-float v14, v12, v13

    const/high16 v15, 0x42c80000    # 100.0f

    if-eqz v14, :cond_4

    mul-float/2addr v12, v15

    goto :goto_2

    :cond_4
    const/high16 v12, 0x42480000    # 50.0f

    :goto_2
    const/16 v16, -0x64

    iget v14, v10, Lq2/b;->g:I

    if-eq v14, v2, :cond_6

    if-eq v14, v1, :cond_5

    move v14, v6

    goto :goto_3

    :cond_5
    move/from16 v14, v16

    goto :goto_3

    :cond_6
    const/16 v14, -0x32

    :goto_3
    iget v11, v10, Lq2/b;->c:F

    cmpl-float v17, v11, v13

    const/high16 v18, 0x3f800000    # 1.0f

    const-string v6, "%.2f%%"

    iget v13, v10, Lq2/b;->m:I

    if-eqz v17, :cond_e

    iget v7, v10, Lq2/b;->d:I

    if-eq v7, v2, :cond_c

    mul-float/2addr v11, v15

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget v11, v10, Lq2/b;->e:I

    if-ne v13, v2, :cond_9

    if-eq v11, v2, :cond_8

    if-eq v11, v1, :cond_7

    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    move/from16 v11, v16

    goto :goto_4

    :cond_8
    const/16 v11, -0x32

    :goto_4
    neg-int v11, v11

    move/from16 v16, v11

    goto :goto_5

    :cond_9
    if-eq v11, v2, :cond_a

    if-eq v11, v1, :cond_b

    const/16 v16, 0x0

    goto :goto_5

    :cond_a
    const/16 v16, -0x32

    :cond_b
    :goto_5
    move-object/from16 v24, v7

    const/4 v1, 0x0

    const v7, 0x3f99999a    # 1.2f

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    cmpl-float v7, v11, v7

    const-string v1, "%.2fem"

    if-ltz v7, :cond_d

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    const/4 v1, 0x0

    :goto_6
    const/16 v16, 0x0

    goto :goto_7

    :cond_d
    const v7, 0x3f99999a    # 1.2f

    neg-float v2, v11

    sub-float v2, v2, v18

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    iget v1, v0, Lu2/n;->f:F

    sub-float v18, v18, v1

    mul-float v18, v18, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    const/4 v1, 0x0

    :goto_7
    iget v2, v10, Lq2/b;->h:F

    const v11, -0x800001

    cmpl-float v11, v2, v11

    if-eqz v11, :cond_f

    mul-float/2addr v2, v15

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    move-object/from16 v26, v2

    goto :goto_9

    :cond_f
    const-string v2, "fit-content"

    goto :goto_8

    :goto_9
    iget-object v2, v10, Lq2/b;->b:Landroid/text/Layout$Alignment;

    const-string v6, "center"

    if-nez v2, :cond_10

    move-object/from16 v27, v6

    const/4 v7, 0x2

    const/4 v11, 0x1

    goto :goto_b

    :cond_10
    sget-object v11, Lu2/m;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v11, v2

    const/4 v11, 0x1

    if-eq v2, v11, :cond_12

    const/4 v7, 0x2

    if-eq v2, v7, :cond_11

    move-object/from16 v27, v6

    goto :goto_b

    :cond_11
    const-string v2, "end"

    :goto_a
    move-object/from16 v27, v2

    goto :goto_b

    :cond_12
    const/4 v7, 0x2

    const-string v2, "start"

    goto :goto_a

    :goto_b
    if-eq v13, v11, :cond_14

    if-eq v13, v7, :cond_13

    const-string v2, "horizontal-tb"

    :goto_c
    move-object/from16 v28, v2

    goto :goto_d

    :cond_13
    const-string v2, "vertical-lr"

    goto :goto_c

    :cond_14
    const-string v2, "vertical-rl"

    goto :goto_c

    :goto_d
    iget v2, v10, Lq2/b;->k:I

    iget v6, v10, Lq2/b;->l:F

    invoke-virtual {v0, v6, v2}, Lu2/n;->b(FI)Ljava/lang/String;

    move-result-object v29

    iget-object v2, v0, Lu2/n;->d:Lu2/c;

    iget v2, v2, Lu2/c;->c:I

    invoke-static {v2}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v30

    const-string v2, "right"

    const-string v6, "top"

    const-string v7, "left"

    const/4 v11, 0x1

    if-eq v13, v11, :cond_19

    const/4 v11, 0x2

    if-eq v13, v11, :cond_16

    if-eqz v1, :cond_15

    const-string v6, "bottom"

    :cond_15
    move-object/from16 v23, v6

    move-object/from16 v21, v7

    :goto_e
    const/4 v1, 0x2

    goto :goto_11

    :cond_16
    if-eqz v1, :cond_17

    goto :goto_10

    :cond_17
    :goto_f
    move-object v2, v7

    :cond_18
    :goto_10
    move-object/from16 v23, v2

    move-object/from16 v21, v6

    goto :goto_e

    :cond_19
    if-eqz v1, :cond_18

    goto :goto_f

    :goto_11
    if-eq v13, v1, :cond_1b

    const/4 v1, 0x1

    if-ne v13, v1, :cond_1a

    goto :goto_12

    :cond_1a
    const-string v1, "width"

    move-object/from16 v25, v1

    goto :goto_13

    :cond_1b
    :goto_12
    const-string v1, "height"

    move-object/from16 v25, v1

    move/from16 v36, v16

    move/from16 v16, v14

    move/from16 v14, v36

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v2, Lu2/g;->a:Ljava/util/regex/Pattern;

    const-string v2, ""

    iget-object v6, v10, Lq2/b;->a:Ljava/lang/CharSequence;

    if-nez v6, :cond_1c

    new-instance v1, LQ6/i;

    const/4 v7, 0x2

    invoke-direct {v1, v2, v7}, LQ6/i;-><init>(Ljava/lang/String;I)V

    :goto_14
    move-object/from16 v34, v5

    move v5, v7

    move-object/from16 v35, v9

    goto/16 :goto_20

    :cond_1c
    const/4 v7, 0x2

    instance-of v10, v6, Landroid/text/Spanned;

    if-nez v10, :cond_1d

    new-instance v1, LQ6/i;

    invoke-static {v6}, Lu2/g;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v7}, LQ6/i;-><init>(Ljava/lang/String;I)V

    goto :goto_14

    :cond_1d
    check-cast v6, Landroid/text/Spanned;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v11, Landroid/text/style/BackgroundColorSpan;

    const/4 v13, 0x0

    invoke-interface {v6, v13, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/BackgroundColorSpan;

    array-length v11, v10

    const/4 v13, 0x0

    :goto_15
    if-ge v13, v11, :cond_1e

    aget-object v19, v10, v13

    invoke-virtual/range {v19 .. v19}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    add-int/2addr v13, v15

    const/high16 v15, 0x42c80000    # 100.0f

    goto :goto_15

    :cond_1e
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v13, "bg_"

    invoke-static {v11, v13}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "."

    move-object/from16 v19, v7

    const-string v7, ",."

    const-string v0, " *"

    invoke-static {v15, v13, v7, v13, v0}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v7

    sget v11, Lr2/e;->a:I

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v7, v19

    goto :goto_16

    :cond_1f
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v10, Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v6, v11, v7, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    array-length v10, v7

    const/4 v13, 0x0

    :goto_17
    if-ge v13, v10, :cond_3c

    aget-object v11, v7, v13

    instance-of v15, v11, Landroid/text/style/StrikethroughSpan;

    const/16 v19, 0x0

    if-eqz v15, :cond_20

    const-string v22, "<span style=\'text-decoration:line-through;\'>"

    move-object/from16 v34, v5

    move-object/from16 v35, v9

    move-object/from16 v5, v22

    move-object/from16 v22, v7

    goto/16 :goto_1a

    :cond_20
    move-object/from16 v34, v5

    instance-of v5, v11, Landroid/text/style/ForegroundColorSpan;

    if-eqz v5, :cond_21

    move-object v5, v11

    check-cast v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-static {v5}, LG5/i2;->j(I)Ljava/lang/String;

    move-result-object v5

    sget v22, Lr2/e;->a:I

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v22, v7

    const-string v7, "<span style=\'color:"

    move-object/from16 v35, v9

    const-string v9, ";\'>"

    invoke-static {v7, v5, v9}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1a

    :cond_21
    move-object/from16 v22, v7

    move-object/from16 v35, v9

    instance-of v5, v11, Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_22

    move-object v5, v11

    check-cast v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v5

    sget v7, Lr2/e;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<span class=\'bg_"

    const-string v9, "\'>"

    invoke-static {v5, v7, v9}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1a

    :cond_22
    instance-of v5, v11, Lq2/c;

    if-eqz v5, :cond_23

    const-string v5, "<span style=\'text-combine-upright:all;\'>"

    goto/16 :goto_1a

    :cond_23
    instance-of v5, v11, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v5, :cond_25

    move-object v5, v11

    check-cast v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v5}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v5}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v5

    int-to-float v5, v5

    goto :goto_18

    :cond_24
    invoke-virtual {v5}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    :goto_18
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    sget v7, Lr2/e;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v7, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1a

    :cond_25
    instance-of v5, v11, Landroid/text/style/RelativeSizeSpan;

    if-eqz v5, :cond_26

    move-object v5, v11

    check-cast v5, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v5}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v5

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    sget v9, Lr2/e;->a:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {v9, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    :cond_26
    instance-of v5, v11, Landroid/text/style/TypefaceSpan;

    if-eqz v5, :cond_27

    move-object v5, v11

    check-cast v5, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v5}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28

    sget v7, Lr2/e;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<span style=\'font-family:\""

    const-string v9, "\";\'>"

    invoke-static {v7, v5, v9}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    :cond_27
    instance-of v5, v11, Landroid/text/style/StyleSpan;

    if-eqz v5, :cond_2c

    move-object v5, v11

    check-cast v5, Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2b

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_29

    :cond_28
    :goto_19
    move-object/from16 v5, v19

    goto :goto_1a

    :cond_29
    const-string v5, "<b><i>"

    goto :goto_1a

    :cond_2a
    const-string v5, "<i>"

    goto :goto_1a

    :cond_2b
    const-string v5, "<b>"

    goto :goto_1a

    :cond_2c
    instance-of v5, v11, Lq2/e;

    if-eqz v5, :cond_30

    move-object v5, v11

    check-cast v5, Lq2/e;

    iget v5, v5, Lq2/e;->b:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2f

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2e

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2d

    goto :goto_19

    :cond_2d
    const-string v5, "<ruby style=\'ruby-position:under;\'>"

    goto :goto_1a

    :cond_2e
    const-string v5, "<ruby style=\'ruby-position:over;\'>"

    goto :goto_1a

    :cond_2f
    const-string v5, "<ruby style=\'ruby-position:unset;\'>"

    goto :goto_1a

    :cond_30
    instance-of v5, v11, Landroid/text/style/UnderlineSpan;

    if-eqz v5, :cond_28

    const-string v5, "<u>"

    :goto_1a
    const-string v7, "</span>"

    if-nez v15, :cond_38

    instance-of v9, v11, Landroid/text/style/ForegroundColorSpan;

    if-nez v9, :cond_38

    instance-of v9, v11, Landroid/text/style/BackgroundColorSpan;

    if-nez v9, :cond_38

    instance-of v9, v11, Lq2/c;

    if-nez v9, :cond_38

    instance-of v9, v11, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v9, :cond_38

    instance-of v9, v11, Landroid/text/style/RelativeSizeSpan;

    if-nez v9, :cond_38

    instance-of v9, v11, Landroid/text/style/TypefaceSpan;

    if-eqz v9, :cond_32

    move-object v9, v11

    check-cast v9, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v9}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_31

    move-object/from16 v19, v7

    :cond_31
    :goto_1b
    move-object/from16 v7, v19

    goto :goto_1c

    :cond_32
    instance-of v7, v11, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_36

    move-object v7, v11

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_35

    const/4 v9, 0x2

    if-eq v7, v9, :cond_34

    const/4 v9, 0x3

    if-eq v7, v9, :cond_33

    goto :goto_1b

    :cond_33
    const-string v19, "</i></b>"

    goto :goto_1b

    :cond_34
    const/4 v9, 0x3

    const-string v19, "</i>"

    goto :goto_1b

    :cond_35
    const/4 v9, 0x3

    const-string v19, "</b>"

    goto :goto_1b

    :cond_36
    const/4 v9, 0x3

    instance-of v7, v11, Lq2/e;

    if-eqz v7, :cond_37

    move-object v7, v11

    check-cast v7, Lq2/e;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v9, "<rt>"

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lq2/e;->a:Ljava/lang/String;

    invoke-static {v7}, Lu2/g;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</rt></ruby>"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_1b

    :cond_37
    instance-of v7, v11, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_31

    const-string v19, "</u>"

    goto :goto_1b

    :cond_38
    :goto_1c
    invoke-interface {v6, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v6, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    if-eqz v5, :cond_3b

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lu2/e;

    invoke-direct {v15, v9, v5, v11, v7}, Lu2/e;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu2/f;

    if-nez v5, :cond_39

    new-instance v5, Lu2/f;

    invoke-direct {v5}, Lu2/f;-><init>()V

    invoke-virtual {v0, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_39
    iget-object v5, v5, Lu2/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu2/f;

    if-nez v5, :cond_3a

    new-instance v5, Lu2/f;

    invoke-direct {v5}, Lu2/f;-><init>()V

    invoke-virtual {v0, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3a
    iget-object v5, v5, Lu2/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    const/4 v5, 0x1

    add-int/2addr v13, v5

    move-object/from16 v7, v22

    move-object/from16 v5, v34

    move-object/from16 v9, v35

    goto/16 :goto_17

    :cond_3c
    move-object/from16 v34, v5

    move-object/from16 v35, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_1d
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v13, v7, :cond_3f

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-interface {v6, v5, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lu2/g;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu2/f;

    iget-object v9, v5, Lu2/f;->b:Ljava/util/ArrayList;

    sget-object v10, Lu2/e;->f:LB0/r;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v9, v5, Lu2/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lu2/e;

    iget-object v10, v10, Lu2/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_3d
    iget-object v5, v5, Lu2/f;->a:Ljava/util/ArrayList;

    sget-object v9, Lu2/e;->e:LB0/r;

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lu2/e;

    iget-object v9, v9, Lu2/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_3e
    const/4 v9, 0x1

    add-int/2addr v13, v9

    move v5, v7

    goto :goto_1d

    :cond_3f
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v6, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lu2/g;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, LQ6/i;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5}, LQ6/i;-><init>(Ljava/lang/String;I)V

    move-object v1, v0

    :goto_20
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_40

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_21

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_42
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v33, v2

    filled-new-array/range {v20 .. v33}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<span class=\'default_bg\'>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, LQ6/i;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</span></div>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    add-int/2addr v8, v0

    const/4 v6, 0x0

    const v7, 0x3f99999a    # 1.2f

    const/4 v11, 0x3

    move v2, v0

    move v1, v5

    move-object/from16 v5, v34

    move-object/from16 v9, v35

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_43
    const-string v0, "</div></body></html>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><head><style>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_44
    const-string v1, "</style></head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/k;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "base64"

    move-object/from16 v3, p0

    iget-object v3, v3, Lu2/n;->b:Lu2/l;

    invoke-virtual {v3, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lu2/n;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lu2/n;->c()V

    :cond_0
    return-void
.end method
