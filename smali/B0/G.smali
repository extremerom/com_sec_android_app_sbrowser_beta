.class public final LB0/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/compose/ui/node/a;

.field public b:Z

.field public c:LB0/v;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:I

.field public final m:LB0/F;

.field public n:LB0/C;

.field public final o:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    sget-object p1, LB0/v;->Idle:LB0/v;

    iput-object p1, p0, LB0/G;->c:LB0/v;

    new-instance p1, LB0/F;

    invoke-direct {p1, p0}, LB0/F;-><init>(LB0/G;)V

    iput-object p1, p0, LB0/G;->m:LB0/F;

    const/16 p1, 0xf

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, LG5/S2;->b(III)J

    move-result-wide v0

    iput-wide v0, p0, LB0/G;->o:J

    new-instance p1, LA4/a;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()LB0/O;
    .locals 0

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p0, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast p0, LB0/O;

    return-object p0
.end method

.method public final b(I)V
    .locals 3

    iget v0, p0, LB0/G;->l:I

    iput p1, p0, LB0/G;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v0, v1, :cond_4

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    iget p1, p0, LB0/G;->l:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, LB0/G;->b(I)V

    goto :goto_2

    :cond_3
    iget p1, p0, LB0/G;->l:I

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, LB0/G;->b(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, LB0/G;->k:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, LB0/G;->k:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, LB0/G;->j:Z

    if-nez v0, :cond_0

    iget p1, p0, LB0/G;->l:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, LB0/G;->b(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, LB0/G;->j:Z

    if-nez p1, :cond_1

    iget p1, p0, LB0/G;->l:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, LB0/G;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-boolean v0, p0, LB0/G;->j:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, LB0/G;->j:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, LB0/G;->k:Z

    if-nez v0, :cond_0

    iget p1, p0, LB0/G;->l:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, LB0/G;->b(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, LB0/G;->k:Z

    if-nez p1, :cond_1

    iget p1, p0, LB0/G;->l:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, LB0/G;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
