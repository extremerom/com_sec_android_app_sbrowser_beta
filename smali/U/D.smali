.class public final LU/D;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:LU/E;

.field public final synthetic b:I

.field public final synthetic c:Lz0/G;

.field public final synthetic d:I

.field public final synthetic e:LB0/I;


# direct methods
.method public constructor <init>(LU/E;ILz0/G;ILB0/I;)V
    .locals 0

    iput-object p1, p0, LU/D;->a:LU/E;

    iput p2, p0, LU/D;->b:I

    iput-object p3, p0, LU/D;->c:Lz0/G;

    iput p4, p0, LU/D;->d:I

    iput-object p5, p0, LU/D;->e:LB0/I;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lz0/F;

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LU/D;->a:LU/E;

    iget-object p1, p1, LU/E;->c:Ltb/m;

    iget-object v0, p0, LU/D;->c:Lz0/G;

    iget v1, v0, Lz0/G;->a:I

    iget v2, p0, LU/D;->b:I

    sub-int/2addr v2, v1

    iget v1, v0, Lz0/G;->b:I

    iget v3, p0, LU/D;->d:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, LG5/V2;->a(II)J

    move-result-wide v1

    new-instance v3, LH0/j;

    invoke-direct {v3, v1, v2}, LH0/j;-><init>(J)V

    iget-object p0, p0, LU/D;->e:LB0/I;

    invoke-interface {p0}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object p0

    invoke-interface {p1, v3, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH0/i;

    iget-wide p0, p0, LH0/i;->a:J

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lz0/F;->d(Lz0/G;JF)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
