.class public final Ll9/b;
.super Lbc/d;
.source "SourceFile"


# static fields
.field public static final s:Landroid/view/animation/PathInterpolator;

.field public static final t:Ll9/b;

.field public static final u:Ll9/b;


# instance fields
.field public b:Z

.field public c:Ll9/a;

.field public final d:Landroid/graphics/PointF;

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:I

.field public i:F

.field public j:Ljava/lang/Integer;

.field public final k:F

.field public l:F

.field public final m:F

.field public n:F

.field public final o:J

.field public p:Z

.field public q:F

.field public final r:J


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3ed70a3d    # 0.42f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ll9/b;->s:Landroid/view/animation/PathInterpolator;

    new-instance v0, Ll9/b;

    move-object v5, v0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const v23, 0x3ffff

    invoke-direct/range {v5 .. v23}, Ll9/b;-><init>(ZLl9/a;FFFIFLjava/lang/Integer;FFFFJFJI)V

    sget-object v1, Ll9/a;->PREMULT:Ll9/a;

    iput-object v1, v0, Ll9/b;->c:Ll9/a;

    const v2, 0x3e6b851f    # 0.23f

    iput v2, v0, Ll9/b;->l:F

    const/4 v2, 0x1

    iput-boolean v2, v0, Ll9/b;->p:Z

    iput-boolean v2, v0, Ll9/b;->b:Z

    sput-object v0, Ll9/b;->t:Ll9/b;

    new-instance v0, Ll9/b;

    move-object v3, v0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const v21, 0x3ffff

    invoke-direct/range {v3 .. v21}, Ll9/b;-><init>(ZLl9/a;FFFIFLjava/lang/Integer;FFFFJFJI)V

    sget-object v3, Ll9/a;->ADD:Ll9/a;

    iput-object v3, v0, Ll9/b;->c:Ll9/a;

    const v3, 0x3f051eb8    # 0.52f

    iput v3, v0, Ll9/b;->l:F

    const-string v3, "#010101"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Ll9/b;->j:Ljava/lang/Integer;

    const/4 v3, 0x0

    iput-boolean v3, v0, Ll9/b;->p:Z

    iput-boolean v2, v0, Ll9/b;->b:Z

    sput-object v0, Ll9/b;->u:Ll9/b;

    new-instance v0, Ll9/b;

    move-object v4, v0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const v22, 0x3ffff

    invoke-direct/range {v4 .. v22}, Ll9/b;-><init>(ZLl9/a;FFFIFLjava/lang/Integer;FFFFJFJI)V

    iput-object v1, v0, Ll9/b;->c:Ll9/a;

    const/4 v1, 0x0

    iput v1, v0, Ll9/b;->l:F

    iput-boolean v3, v0, Ll9/b;->p:Z

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ll9/b;->j:Ljava/lang/Integer;

    iput-boolean v3, v0, Ll9/b;->b:Z

    return-void
.end method

.method public constructor <init>(ZLl9/a;FFFIFLjava/lang/Integer;FFFFJFJI)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    sget-object v3, Ll9/a;->ADD:Ll9/a;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    sget-object v4, Ll9/i;->c:Landroid/graphics/PointF;

    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_3

    const v6, 0x40033333    # 2.05f

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x20

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_4

    move v7, v8

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_5

    const/4 v9, -0x1

    goto :goto_5

    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_8

    const v11, 0x3f947ae1    # 1.16f

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x800

    if-eqz v12, :cond_9

    const v12, 0x3e4ccccd    # 0.2f

    goto :goto_9

    :cond_9
    move/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x1000

    if-eqz v13, :cond_a

    const v13, 0x3d4ccccd    # 0.05f

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_b

    const/high16 v14, 0x42a80000    # 84.0f

    goto :goto_b

    :cond_b
    move/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_c

    const-wide/16 v15, 0x7d0

    move-wide/from16 v17, v15

    goto :goto_c

    :cond_c
    move-wide/from16 v17, p13

    :goto_c
    const/high16 v15, 0x10000

    and-int/2addr v15, v1

    if-eqz v15, :cond_d

    const/high16 v15, 0x42700000    # 60.0f

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_e

    const-wide/16 v19, 0x0

    move-wide/from16 v21, v19

    goto :goto_e

    :cond_e
    move-wide/from16 v21, p16

    :goto_e
    const-string v1, "blendMode"

    invoke-static {v3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lightPos"

    invoke-static {v4, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbc/d;-><init>(I)V

    iput-boolean v2, v0, Ll9/b;->b:Z

    iput-object v3, v0, Ll9/b;->c:Ll9/a;

    iput-object v4, v0, Ll9/b;->d:Landroid/graphics/PointF;

    iput v5, v0, Ll9/b;->e:F

    iput v6, v0, Ll9/b;->f:F

    iput v7, v0, Ll9/b;->g:F

    iput v9, v0, Ll9/b;->h:I

    iput v8, v0, Ll9/b;->i:F

    iput-object v10, v0, Ll9/b;->j:Ljava/lang/Integer;

    iput v11, v0, Ll9/b;->k:F

    iput v12, v0, Ll9/b;->l:F

    iput v13, v0, Ll9/b;->m:F

    iput v14, v0, Ll9/b;->n:F

    move-wide/from16 v1, v17

    iput-wide v1, v0, Ll9/b;->o:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Ll9/b;->p:Z

    iput v15, v0, Ll9/b;->q:F

    move-wide/from16 v1, v21

    iput-wide v1, v0, Ll9/b;->r:J

    return-void
.end method
