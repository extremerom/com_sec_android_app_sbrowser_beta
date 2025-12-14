.class public final Lm9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/Object;

.field public static d:Landroid/graphics/Bitmap;

.field public static final e:Landroid/util/Size;

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:F

.field public static final m:F

.field public static final n:F

.field public static final o:J

.field public static final p:F

.field public static final q:F

.field public static final r:J

.field public static final s:J

.field public static final t:Landroid/view/animation/PathInterpolator;

.field public static final u:Landroid/view/animation/PathInterpolator;

.field public static final v:Landroid/graphics/PointF;

.field public static final w:Landroid/graphics/PointF;

.field public static final x:Landroid/graphics/PointF;

.field public static final y:Landroid/graphics/PointF;

.field public static final z:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:Lm9/l;

.field public b:Ljava/util/ArrayList;

.field public c:Lm9/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lm9/d;->e:Landroid/util/Size;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lm9/d;->f:I

    const-string v0, "#8F74FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lm9/d;->g:I

    const-string v0, "#3E85FB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lm9/d;->h:I

    const-string v0, "#88E6E3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lm9/d;->i:I

    const-string v0, "#BDFAA5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lm9/d;->j:I

    const-string v0, "#FFE653"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lm9/d;->k:I

    const/high16 v0, 0x40100000    # 2.25f

    sput v0, Lm9/d;->l:F

    const/high16 v0, 0x40200000    # 2.5f

    sput v0, Lm9/d;->m:F

    const v0, 0x3f733333    # 0.95f

    sput v0, Lm9/d;->n:F

    const-wide/16 v0, 0x44c

    sput-wide v0, Lm9/d;->o:J

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lm9/d;->p:F

    const v0, 0x3eb33333    # 0.35f

    sput v0, Lm9/d;->q:F

    const-wide/16 v0, 0x4b0

    sput-wide v0, Lm9/d;->r:J

    const-wide/16 v0, 0x320

    sput-wide v0, Lm9/d;->s:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lm9/d;->t:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e6147ae    # 0.22f

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-direct {v0, v5, v6, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lm9/d;->u:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/graphics/PointF;

    const v6, 0x3e19999a    # 0.15f

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lm9/d;->v:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v5, 0x3f99999a    # 1.2f

    const v6, 0x3ec28f5c    # 0.38f

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lm9/d;->w:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v5, -0x42333333    # -0.1f

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lm9/d;->x:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v5, 0x3f3851ec    # 0.72f

    const v6, 0x3fa8f5c3    # 1.32f

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lm9/d;->y:Landroid/graphics/PointF;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lm9/d;->z:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ldb/j;

    invoke-direct {v2, v1, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ldb/j;

    invoke-direct {v5, v1, v4}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, Ldb/j;

    invoke-direct {v6, v4, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ldb/j;

    invoke-direct {v3, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v5, v6, v3}, [Ldb/j;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lm9/d;->A:Ljava/lang/Object;

    return-void
.end method
