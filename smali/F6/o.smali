.class public final LF6/o;
.super LF6/s;
.source "SourceFile"


# instance fields
.field public final a:LF6/q;

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(LF6/q;FF)V
    .locals 0

    invoke-direct {p0}, LF6/s;-><init>()V

    iput-object p1, p0, LF6/o;->a:LF6/q;

    iput p2, p0, LF6/o;->b:F

    iput p3, p0, LF6/o;->c:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget-object v0, p0, LF6/o;->a:LF6/q;

    iget v1, v0, LF6/q;->c:F

    iget v2, p0, LF6/o;->c:F

    sub-float/2addr v1, v2

    iget v0, v0, LF6/q;->b:F

    iget p0, p0, LF6/o;->b:F

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
