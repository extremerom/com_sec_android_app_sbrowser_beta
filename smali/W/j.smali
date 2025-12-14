.class public final LW/j;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:LG5/J2;

.field public final synthetic b:Lm0/m;

.field public final synthetic c:Lsb/n;

.field public final synthetic d:I

.field public final synthetic e:La0/a0;


# direct methods
.method public constructor <init>(LG5/J2;Lm0/m;Lsb/n;ILa0/a0;)V
    .locals 0

    iput-object p1, p0, LW/j;->a:LG5/J2;

    iput-object p2, p0, LW/j;->b:Lm0/m;

    iput-object p3, p0, LW/j;->c:Lsb/n;

    iput p4, p0, LW/j;->d:I

    iput-object p5, p0, LW/j;->e:La0/a0;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lj0/c;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "saveableStateHolder"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, La0/q;

    const p3, -0x1d58f75c

    invoke-virtual {p2, p3}, La0/q;->R(I)V

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La0/l;->a:La0/V;

    if-ne v0, v1, :cond_0

    new-instance v0, LW/h;

    new-instance v2, LS/W;

    iget-object v3, p0, LW/j;->e:La0/a0;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LS/W;-><init>(La0/a0;I)V

    invoke-direct {v0, p1, v2}, LW/h;-><init>(Lj0/c;LS/W;)V

    invoke-virtual {p2, v0}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, La0/q;->p(Z)V

    check-cast v0, LW/h;

    invoke-virtual {p2, p3}, La0/q;->R(I)V

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    new-instance p3, Lz0/L;

    new-instance v2, LA7/h;

    const-string v3, "factory"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, LA7/h;->a:Ljava/lang/Object;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, LA7/h;->b:Ljava/lang/Object;

    invoke-direct {p3, v2}, Lz0/L;-><init>(LA7/h;)V

    invoke-virtual {p2, p3}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2, p1}, La0/q;->p(Z)V

    check-cast p3, Lz0/L;

    const v2, -0x5ad37920

    invoke-virtual {p2, v2}, La0/q;->R(I)V

    iget v2, p0, LW/j;->d:I

    iget-object v3, p0, LW/j;->a:LG5/J2;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0xe

    or-int/lit16 v4, v4, 0x240

    invoke-static {v3, v0, p3, p2, v4}, LG5/c3;->a(LG5/J2;LW/h;Lz0/L;La0/m;I)V

    :goto_0
    invoke-virtual {p2, p1}, La0/q;->p(Z)V

    const v3, 0x1e7b2b64

    invoke-virtual {p2, v3}, La0/q;->R(I)V

    invoke-virtual {p2, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, LW/j;->c:Lsb/n;

    invoke-virtual {p2, v4}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_3

    if-ne v5, v1, :cond_4

    :cond_3
    new-instance v5, LB1/i;

    const/4 v1, 0x3

    invoke-direct {v5, v1, v0, v4}, LB1/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p2, p1}, La0/q;->p(Z)V

    check-cast v5, Lsb/n;

    and-int/lit8 p1, v2, 0x70

    const/16 v0, 0x8

    or-int/2addr p1, v0

    iget-object p0, p0, LW/j;->b:Lm0/m;

    invoke-static {p3, p0, v5, p2, p1}, Lz0/J;->a(Lz0/L;Lm0/m;Lsb/n;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
