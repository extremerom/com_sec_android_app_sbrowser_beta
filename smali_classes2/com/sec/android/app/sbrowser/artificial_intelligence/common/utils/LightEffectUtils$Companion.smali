.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jk\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016H\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ9\u0010#\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0008\u0002\u0010!\u001a\u00020\u001dH\u0007\u00a2\u0006\u0004\u0008#\u0010$J/\u0010(\u001a\u00020\'2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020%H\u0007\u00a2\u0006\u0004\u0008(\u0010)R\u0014\u0010*\u001a\u00020\u00148\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/graphics/drawable/Drawable;",
        "backgroundDrawable",
        "",
        "inset",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;",
        "cornerRadius",
        "",
        "isRoundedCorner",
        "Lm9/b;",
        "state",
        "Lk9/p;",
        "showAnimationType",
        "Lk9/n;",
        "hideAnimationType",
        "",
        "hideDelayMillis",
        "Lk9/o;",
        "movement",
        "Lk9/r;",
        "showLightEffectAnimation",
        "(Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;)Lk9/r;",
        "Landroid/content/Context;",
        "context",
        "",
        "angle",
        "Ll9/a;",
        "blendMode",
        "frameRate",
        "Ll9/e;",
        "createProcessingLightEffectAnimation",
        "(Landroid/content/Context;Landroid/view/View;FLl9/a;F)Ll9/e;",
        "Ln9/a;",
        "revealMode",
        "Ln9/d;",
        "createTransitionLightEffectAnimation",
        "(Landroid/content/Context;Landroid/view/View;FLn9/a;)Ln9/d;",
        "DO_NOT_HIDE",
        "J",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk9/r;Lk9/n;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->showLightEffectAnimation$lambda$3$lambda$2$lambda$1$lambda$0(Lk9/r;Lk9/n;)V

    return-void
.end method

.method public static synthetic b(Ltb/w;Lk9/o;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ILm9/b;Lk9/p;JLandroid/view/View;Lk9/n;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->showLightEffectAnimation$lambda$3$lambda$2(Ltb/w;Lk9/o;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ILm9/b;Lk9/p;JLandroid/view/View;Lk9/n;)V

    return-void
.end method

.method public static synthetic showLightEffectAnimation$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;ILjava/lang/Object;)Lk9/r;
    .locals 14

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    sget-object v1, Lm9/b;->Mono:Lm9/b;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    sget-object v1, Lk9/p;->LUMINANCE:Lk9/p;

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    sget-object v1, Lk9/n;->LUMINANCE:Lk9/n;

    move-object v10, v1

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    const-wide/16 v1, -0x1

    move-wide v11, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v11, p9

    :goto_3
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    sget-object v0, Lk9/o;->NONE:Lk9/o;

    move-object v13, v0

    goto :goto_4

    :cond_4
    move-object/from16 v13, p11

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v13}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->showLightEffectAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;)Lk9/r;

    move-result-object v0

    return-object v0
.end method

.method private static final showLightEffectAnimation$lambda$3$lambda$2(Ltb/w;Lk9/o;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ILm9/b;Lk9/p;JLandroid/view/View;Lk9/n;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    iget-object v6, v0, Ltb/w;->a:Ljava/lang/Object;

    check-cast v6, Lk9/r;

    const-string v7, "GuidingLightEffect"

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    const-string v9, "movement"

    invoke-static {v1, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v9, v6, Lk9/r;->j:Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setLightMovement: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", isRunning: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v6, Lk9/r;->c:Lk9/f;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v9, Lk9/f;->u:Lk9/o;

    sget-object v9, Lk9/o;->NONE:Lk9/o;

    iget-object v10, v6, Lk9/r;->g:Lm9/l;

    if-ne v1, v9, :cond_0

    invoke-virtual {v10, v8}, Li9/a;->d(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v6, Lk9/r;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, v6, Lk9/r;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-static {v1}, LG5/w;->d(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v1}, LG5/w;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Li9/a;->f()V

    :cond_2
    :goto_0
    iget-object v0, v0, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Lk9/r;

    if-eqz v0, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->getCornerRadiusSide()Lk9/m;

    move-result-object v1

    sget-object v6, Lk9/m;->ALL:Lk9/m;

    iget-object v9, v0, Lk9/r;->f:Lk9/g;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x4

    if-eq v1, v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->getRadius()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->getCornerRadiusSide()Lk9/m;

    move-result-object v6

    const-string v13, "applyPattern"

    invoke-static {v6, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk9/r;->c(F)V

    sget-object v1, Lk9/q;->c:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v11, :cond_7

    if-eq v1, v10, :cond_6

    const/4 v6, 0x3

    if-eq v1, v6, :cond_5

    if-eq v1, v12, :cond_4

    const/4 v6, 0x5

    if-eq v1, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Li9/a;->c()Lj9/h;

    move-result-object v1

    check-cast v1, Lk9/z;

    if-eqz v1, :cond_9

    sget-object v6, Lk9/d;->ALL:Lk9/d;

    invoke-virtual {v6}, Lk9/d;->a()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v1, v6}, Lk9/z;->n(Landroid/graphics/PointF;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Li9/a;->c()Lj9/h;

    move-result-object v1

    check-cast v1, Lk9/z;

    if-eqz v1, :cond_9

    sget-object v6, Lk9/d;->RIGHT:Lk9/d;

    invoke-virtual {v6}, Lk9/d;->a()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v1, v6}, Lk9/z;->n(Landroid/graphics/PointF;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Li9/a;->c()Lj9/h;

    move-result-object v1

    check-cast v1, Lk9/z;

    if-eqz v1, :cond_9

    sget-object v6, Lk9/d;->LEFT:Lk9/d;

    invoke-virtual {v6}, Lk9/d;->a()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v1, v6}, Lk9/z;->n(Landroid/graphics/PointF;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v9}, Li9/a;->c()Lj9/h;

    move-result-object v1

    check-cast v1, Lk9/z;

    if-eqz v1, :cond_9

    sget-object v6, Lk9/d;->DOWN:Lk9/d;

    invoke-virtual {v6}, Lk9/d;->a()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v1, v6}, Lk9/z;->n(Landroid/graphics/PointF;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v9}, Li9/a;->c()Lj9/h;

    move-result-object v1

    check-cast v1, Lk9/z;

    if-eqz v1, :cond_9

    sget-object v6, Lk9/d;->UP:Lk9/d;

    invoke-virtual {v6}, Lk9/d;->a()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v1, v6}, Lk9/z;->n(Landroid/graphics/PointF;)V

    goto :goto_1

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->getRadius()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lk9/r;->c(F)V

    :cond_9
    :goto_1
    invoke-virtual {v9}, Li9/a;->c()Lj9/h;

    move-result-object v1

    check-cast v1, Lk9/z;

    if-eqz v1, :cond_a

    new-instance v6, Landroid/graphics/Point;

    move/from16 v13, p3

    invoke-direct {v6, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    new-instance v13, Lk9/s;

    const/4 v14, 0x1

    invoke-direct {v13, v1, v6, v14}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {v1, v13}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_a
    const-string v1, "state"

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lk9/r;->i:Lm9/b;

    iget-object v1, v0, Lk9/r;->h:Lm9/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lm9/d;->a:Lm9/l;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Li9/a;->c()Lj9/h;

    move-result-object v6

    check-cast v6, Lm9/q;

    if-eqz v6, :cond_11

    iget-object v14, v1, Lm9/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/animation/ValueAnimator;

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2

    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v11, v8

    :goto_3
    if-ge v11, v12, :cond_e

    iget-object v13, v1, Lm9/d;->a:Lm9/l;

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Li9/a;->c()Lj9/h;

    move-result-object v13

    check-cast v13, Lm9/q;

    if-eqz v13, :cond_c

    sget-object v8, Lm9/d;->A:Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    iget-object v10, v13, Lm9/q;->o:[F

    mul-int/2addr v8, v12

    add-int/lit8 v13, v8, 0x3

    aget v13, v10, v13

    aget v12, v10, v8

    add-int/lit8 v17, v8, 0x1

    aget v4, v10, v17

    const/4 v5, 0x2

    add-int/2addr v8, v5

    aget v5, v10, v8

    invoke-static {v13, v12, v4, v5}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_d

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, p6

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x4

    goto :goto_3

    :cond_e
    new-instance v4, Ltb/v;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-wide v10, Lm9/d;->r:J

    iput-wide v10, v4, Ltb/v;->a:J

    new-instance v5, Ltb/w;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget-object v8, Lm9/d;->t:Landroid/view/animation/PathInterpolator;

    iput-object v8, v5, Ltb/w;->a:Ljava/lang/Object;

    sget-object v8, Lm9/b;->Processing:Lm9/b;

    if-ne v2, v8, :cond_f

    sget-wide v10, Lm9/d;->s:J

    iput-wide v10, v4, Ltb/v;->a:J

    sget-object v8, Lm9/d;->u:Landroid/view/animation/PathInterpolator;

    iput-object v8, v5, Ltb/w;->a:Ljava/lang/Object;

    :cond_f
    invoke-virtual/range {p4 .. p4}, Lm9/b;->c()Ljava/util/List;

    move-result-object v8

    new-instance v10, LC1/j;

    const/16 v11, 0x13

    invoke-direct {v10, v11, v4, v5}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lm9/c;

    invoke-direct {v4, v1, v2}, Lm9/c;-><init>(Lm9/d;Lm9/b;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_5
    const/4 v5, 0x4

    if-ge v2, v5, :cond_10

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    filled-new-array {v5, v11}, [I

    move-result-object v5

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v10, v5}, LC1/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lm9/a;

    invoke-direct {v11, v6, v2, v5}, Lm9/a;-><init>(Lm9/q;ILandroid/animation/ValueAnimator;)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_11
    iget-object v1, v0, Lk9/r;->k:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lk9/r;->b:Landroid/view/View;

    if-eqz v1, :cond_12

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lk9/r;->k:Ljava/lang/Boolean;

    const-string v1, "animationType"

    invoke-static {v3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show Guiding Light Effect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Li9/a;->f()V

    iget-object v1, v0, Lk9/r;->c:Lk9/f;

    iget-object v2, v1, Lk9/f;->u:Lk9/o;

    sget-object v4, Lk9/o;->DEFAULT:Lk9/o;

    if-ne v2, v4, :cond_14

    iget-object v2, v0, Lk9/r;->a:Landroid/content/Context;

    if-eqz v2, :cond_13

    invoke-static {v2}, LG5/w;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {v2}, LG5/w;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    iget-object v2, v0, Lk9/r;->g:Lm9/l;

    invoke-virtual {v2}, Li9/a;->f()V

    :cond_14
    :goto_7
    invoke-virtual {v0}, Lk9/r;->a()V

    sget-object v2, Lk9/q;->a:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    iget-object v3, v0, Lk9/r;->d:Ljava/util/ArrayList;

    iget v4, v1, Lk9/f;->n:F

    iget v5, v1, Lk9/f;->l:F

    iget v1, v1, Lk9/f;->e:F

    const/16 v6, 0x24

    const/16 v7, 0x2c

    packed-switch v2, :pswitch_data_0

    :cond_15
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_9

    :pswitch_0
    invoke-virtual {v9}, Li9/a;->c()Lj9/h;

    move-result-object v1

    check-cast v1, Lk9/z;

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lj9/h;->j(Z)V

    move v1, v2

    goto/16 :goto_9

    :pswitch_1
    sget-object v2, Lk9/a;->SHOW_SIZE_NOW_BAR_PHASE_1:Lk9/a;

    new-instance v4, Lk9/i;

    const/4 v7, 0x5

    invoke-direct {v4, v0, v1, v5, v7}, Lk9/i;-><init>(Ljava/lang/Object;FFI)V

    new-instance v7, Lk9/j;

    const/4 v8, 0x2

    invoke-direct {v7, v0, v8}, Lk9/j;-><init>(Lk9/r;I)V

    new-instance v8, Lk9/h;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v1, v5, v9}, Lk9/h;-><init>(Lk9/r;FFI)V

    const/4 v9, 0x4

    invoke-static {v2, v4, v7, v8, v9}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lk9/a;->HIDE_SIZE_NOW_BAR:Lk9/a;

    new-instance v4, Lk9/i;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v1, v5, v7}, Lk9/i;-><init>(Ljava/lang/Object;FFI)V

    new-instance v7, Lk9/h;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v1, v5, v8}, Lk9/h;-><init>(Lk9/r;FFI)V

    new-instance v8, Lk9/h;

    const/4 v9, 0x2

    invoke-direct {v8, v0, v1, v5, v9}, Lk9/h;-><init>(Lk9/r;FFI)V

    invoke-static {v2, v4, v8, v7, v6}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    :pswitch_2
    sget-object v2, Lk9/a;->SHOW_SIZE_NOW_BAR_PHASE_1:Lk9/a;

    new-instance v4, Lk9/i;

    const/4 v6, 0x3

    invoke-direct {v4, v0, v1, v5, v6}, Lk9/i;-><init>(Ljava/lang/Object;FFI)V

    new-instance v6, Lk9/j;

    const/4 v8, 0x1

    invoke-direct {v6, v0, v8}, Lk9/j;-><init>(Lk9/r;I)V

    new-instance v8, Lk9/h;

    const/4 v9, 0x5

    invoke-direct {v8, v0, v1, v5, v9}, Lk9/h;-><init>(Lk9/r;FFI)V

    const/4 v9, 0x4

    invoke-static {v2, v4, v6, v8, v9}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lk9/a;->SHOW_SIZE_NOW_BAR_PHASE_2:Lk9/a;

    new-instance v6, Lk9/i;

    const/4 v8, 0x4

    invoke-direct {v6, v0, v1, v5, v8}, Lk9/i;-><init>(Ljava/lang/Object;FFI)V

    new-instance v8, Lk9/h;

    const/4 v9, 0x6

    invoke-direct {v8, v0, v1, v5, v9}, Lk9/h;-><init>(Lk9/r;FFI)V

    const/4 v1, 0x0

    invoke-static {v2, v6, v1, v8, v7}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_8

    :pswitch_3
    sget-object v1, Lk9/a;->SHOW_LUMINANCE_LONG:Lk9/a;

    new-instance v2, Lk9/k;

    const/4 v5, 0x2

    invoke-direct {v2, v0, v4, v5}, Lk9/k;-><init>(Lk9/r;FI)V

    new-instance v5, Lk9/l;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v4, v6}, Lk9/l;-><init>(Ljava/lang/Object;FI)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v5, v7}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_8

    :pswitch_4
    sget-object v1, Lk9/a;->SHOW_LUMINANCE:Lk9/a;

    new-instance v2, Lk9/k;

    const/4 v5, 0x1

    invoke-direct {v2, v0, v4, v5}, Lk9/k;-><init>(Lk9/r;FI)V

    new-instance v5, Lk9/l;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v4, v6}, Lk9/l;-><init>(Ljava/lang/Object;FI)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v5, v7}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_8

    :pswitch_5
    sget-object v2, Lk9/a;->SHOW_SIZE_PHASE_1:Lk9/a;

    new-instance v8, Lk9/i;

    const/4 v9, 0x2

    invoke-direct {v8, v0, v1, v5, v9}, Lk9/i;-><init>(Ljava/lang/Object;FFI)V

    new-instance v9, Lk9/j;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lk9/j;-><init>(Lk9/r;I)V

    new-instance v10, Lk9/h;

    const/4 v11, 0x3

    invoke-direct {v10, v0, v1, v5, v11}, Lk9/h;-><init>(Lk9/r;FFI)V

    invoke-static {v2, v8, v9, v10, v6}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v3, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lk9/a;->SHOW_SIZE_PHASE_2:Lk9/a;

    new-instance v8, Lk9/i;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v1, v5, v9}, Lk9/i;-><init>(Ljava/lang/Object;FFI)V

    new-instance v9, Lk9/h;

    const/4 v10, 0x4

    invoke-direct {v9, v0, v1, v5, v10}, Lk9/h;-><init>(Lk9/r;FFI)V

    const/4 v1, 0x0

    invoke-static {v2, v8, v1, v9, v7}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v1, 0x1

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_16
    sget-object v1, Lk9/a;->SHOW_LUMINANCE:Lk9/a;

    new-instance v2, Lk9/k;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v4, v5}, Lk9/k;-><init>(Lk9/r;FI)V

    new-instance v5, Lk9/l;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v4, v6}, Lk9/l;-><init>(Ljava/lang/Object;FI)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v5, v7}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_8

    :goto_9
    iput-boolean v1, v0, Lk9/r;->j:Z

    const-wide/16 v1, -0x1

    move-wide/from16 v3, p6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_17

    new-instance v1, LGa/d;

    const/16 v2, 0x8

    move-object/from16 v5, p9

    invoke-direct {v1, v2, v0, v5}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final showLightEffectAnimation$lambda$3$lambda$2$lambda$1$lambda$0(Lk9/r;Lk9/n;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "animationType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hide Guiding Light Effect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuidingLightEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lk9/r;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lk9/r;->a()V

    sget-object v0, Lk9/q;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk9/r;->d()V

    goto :goto_0

    :cond_1
    sget-object p1, Lk9/a;->HIDE_LUMINANCE_LONG:Lk9/a;

    invoke-virtual {p0, p1}, Lk9/r;->b(Lk9/a;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lk9/a;->HIDE_LUMINANCE:Lk9/a;

    invoke-virtual {p0, p1}, Lk9/r;->b(Lk9/a;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lk9/r;->j:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final createProcessingLightEffectAnimation(Landroid/content/Context;Landroid/view/View;FLl9/a;F)Ll9/e;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ll9/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "blendMode"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ll9/b;->s:Landroid/view/animation/PathInterpolator;

    sget-object p0, Ll9/b;->t:Ll9/b;

    iput p3, p0, Ll9/b;->n:F

    iput-object p4, p0, Ll9/b;->c:Ll9/a;

    iput p5, p0, Ll9/b;->q:F

    new-instance p3, Ll9/e;

    invoke-direct {p3, p1, p2, p0}, Ll9/e;-><init>(Landroid/content/Context;Landroid/view/View;Ll9/b;)V

    return-object p3
.end method

.method public final createTransitionLightEffectAnimation(Landroid/content/Context;Landroid/view/View;FLn9/a;)Ln9/d;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ln9/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "revealMode"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ln9/b;->o:Ln9/b;

    sget-object p0, Ln9/b;->o:Ln9/b;

    iput p3, p0, Ln9/b;->k:F

    iput-object p4, p0, Ln9/b;->i:Ln9/a;

    new-instance p3, Ln9/d;

    invoke-direct {p3, p1, p2, p0}, Ln9/d;-><init>(Landroid/content/Context;Landroid/view/View;Ln9/b;)V

    return-object p3
.end method

.method public final showLightEffectAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;)Lk9/r;
    .locals 14
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lm9/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lk9/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lk9/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lk9/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object v11, p1

    move-object/from16 v0, p2

    const-string v1, "view"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backgroundDrawable"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cornerRadius"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "state"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "showAnimationType"

    move-object/from16 v6, p7

    invoke-static {v6, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hideAnimationType"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "movement"

    move-object/from16 v2, p11

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ltb/w;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move/from16 v4, p3

    invoke-direct {v1, v0, v4}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lk9/r;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lk9/f;->y:Lk9/f;

    :goto_0
    move/from16 v8, p5

    goto :goto_1

    :cond_0
    sget-object v7, Lk9/f;->x:Lk9/f;

    goto :goto_0

    :goto_1
    invoke-direct {v0, v1, p1, v7, v8}, Lk9/r;-><init>(Landroid/content/Context;Landroid/view/View;Lk9/f;Z)V

    iput-object v0, v12, Ltb/w;->a:Ljava/lang/Object;

    new-instance v13, Lba/a;

    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p11

    move-object/from16 v3, p4

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p9

    move-object v9, p1

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lba/a;-><init>(Ltb/w;Lk9/o;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ILm9/b;Lk9/p;JLandroid/view/View;Lk9/n;)V

    invoke-virtual {p1, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v12, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, Lk9/r;

    return-object v0
.end method
