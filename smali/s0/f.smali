.class public final Ls0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/b;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:J

.field public h:J

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:J

.field public n:Ls0/g;

.field public o:Z

.field public p:I

.field public q:LH0/c;


# virtual methods
.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Ls0/f;->q:LH0/c;

    iget p0, p0, LH0/c;->a:F

    return p0
.end method

.method public final m()F
    .locals 0

    iget-object p0, p0, Ls0/f;->q:LH0/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
