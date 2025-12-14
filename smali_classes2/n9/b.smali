.class public final Ln9/b;
.super Lbc/d;
.source "SourceFile"


# static fields
.field public static final o:Ln9/b;

.field public static final p:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final b:Landroid/graphics/Bitmap;

.field public final c:Landroid/graphics/Bitmap;

.field public d:Landroid/graphics/PointF;

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public i:Ln9/a;

.field public final j:J

.field public k:F

.field public final l:F

.field public final m:F

.field public n:Lcom/sec/android/app/sbrowser/tab_sync/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ln9/b;

    invoke-direct {v0}, Ln9/b;-><init>()V

    sput-object v0, Ln9/b;->o:Ln9/b;

    new-instance v0, Ln9/b;

    invoke-direct {v0}, Ln9/b;-><init>()V

    sget-object v1, Ln9/a;->VIEW:Ln9/a;

    iput-object v1, v0, Ln9/b;->i:Ln9/a;

    new-instance v0, Ln9/b;

    invoke-direct {v0}, Ln9/b;-><init>()V

    sget-object v1, Ln9/a;->BITMAP:Ln9/a;

    iput-object v1, v0, Ln9/b;->i:Ln9/a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3f051eb8    # 0.52f

    const v3, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ln9/b;->p:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Ln9/h;->f:Landroid/graphics/PointF;

    sget-object v1, Ln9/a;->VIEW:Ln9/a;

    const-string v2, "transPos"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "revealMode"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lbc/d;-><init>(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Ln9/b;->b:Landroid/graphics/Bitmap;

    iput-object v2, p0, Ln9/b;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Ln9/b;->d:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Ln9/b;->e:F

    iput v0, p0, Ln9/b;->f:F

    const v0, 0x3ef5c28f    # 0.48f

    iput v0, p0, Ln9/b;->g:F

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Ln9/b;->h:F

    iput-object v1, p0, Ln9/b;->i:Ln9/a;

    const-wide/16 v0, 0x92e

    iput-wide v0, p0, Ln9/b;->j:J

    const/high16 v0, 0x42a80000    # 84.0f

    iput v0, p0, Ln9/b;->k:F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Ln9/b;->l:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ln9/b;->m:F

    return-void
.end method
