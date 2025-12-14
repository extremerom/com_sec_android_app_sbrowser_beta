.class public final LU/g;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Lz0/G;

.field public final synthetic b:Lz0/w;

.field public final synthetic c:LB0/I;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lm0/d;


# direct methods
.method public constructor <init>(Lz0/G;Lz0/w;LB0/I;IILm0/d;)V
    .locals 0

    iput-object p1, p0, LU/g;->a:Lz0/G;

    iput-object p2, p0, LU/g;->b:Lz0/w;

    iput-object p3, p0, LU/g;->c:LB0/I;

    iput p4, p0, LU/g;->d:I

    iput p5, p0, LU/g;->e:I

    iput-object p6, p0, LU/g;->f:Lm0/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lz0/F;

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LU/g;->c:LB0/I;

    invoke-interface {p1}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object v5

    iget-object p1, p0, LU/g;->b:Lz0/w;

    iget-object v6, p0, LU/g;->a:Lz0/G;

    iget-object v0, p0, LU/g;->f:Lm0/d;

    sget-object v1, LU/i;->a:LU/h;

    invoke-interface {p1}, Lz0/w;->e()Ljava/lang/Object;

    iget p1, v6, Lz0/G;->a:I

    iget v1, v6, Lz0/G;->b:I

    invoke-static {p1, v1}, LG5/V2;->a(II)J

    move-result-wide v1

    iget p1, p0, LU/g;->d:I

    iget p0, p0, LU/g;->e:I

    invoke-static {p1, p0}, LG5/V2;->a(II)J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lm0/d;->a(JJLH0/k;)J

    move-result-wide p0

    const/4 v0, 0x0

    invoke-static {v6, p0, p1, v0}, Lz0/F;->d(Lz0/G;JF)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
