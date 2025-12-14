.class public final LQ/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/h;


# instance fields
.field public final a:F

.field public final b:LQ/z;


# direct methods
.method public constructor <init>(FFF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LQ/r;->a:F

    new-instance p3, LQ/z;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p3, LQ/z;->a:F

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, p3, LQ/z;->b:D

    iput v0, p3, LQ/z;->g:F

    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-ltz v3, :cond_1

    iput p1, p3, LQ/z;->g:F

    const/4 p1, 0x0

    iput-boolean p1, p3, LQ/z;->c:Z

    mul-double/2addr v1, v1

    double-to-float v1, v1

    cmpg-float v0, v1, v0

    if-lez v0, :cond_0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p3, LQ/z;->b:D

    iput-boolean p1, p3, LQ/z;->c:Z

    iput-object p3, p0, LQ/r;->b:LQ/z;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(LA7/h;)LQ/J;
    .locals 2

    const-string v0, "converter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lo3/n;

    new-instance v0, LI3/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, LI3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0}, Lo3/n;-><init>(LQ/n;)V

    return-object p1
.end method
