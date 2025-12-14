.class public final LB0/p;
.super LB0/J;
.source "SourceFile"


# instance fields
.field public final synthetic n:LB0/q;


# direct methods
.method public constructor <init>(LB0/q;)V
    .locals 0

    iput-object p1, p0, LB0/p;->n:LB0/q;

    invoke-direct {p0, p1}, LB0/J;-><init>(LB0/O;)V

    return-void
.end method


# virtual methods
.method public final o(J)Lz0/G;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lz0/G;->v(J)V

    iget-object v0, p0, LB0/p;->n:LB0/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LB0/q;->v:LB0/o;

    iget-object v0, v0, LB0/O;->j:LB0/O;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, LB0/O;->G()LB0/J;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v0, p1, p2}, LB0/o;->d(LB0/I;Lz0/w;J)Lz0/y;

    move-result-object p1

    invoke-static {p0, p1}, LB0/J;->E(LB0/J;Lz0/y;)V

    return-object p0
.end method

.method public final w(Lz0/i;)I
    .locals 2

    invoke-static {p0, p1}, LB0/d;->b(LB0/I;Lz0/i;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, LB0/J;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
