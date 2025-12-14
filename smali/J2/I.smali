.class public final LJ2/I;
.super LT2/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:LJ2/K;


# direct methods
.method public constructor <init>(LJ2/K;I)V
    .locals 0

    iput-object p1, p0, LJ2/I;->b:LJ2/K;

    invoke-direct {p0, p2}, LT2/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(LU2/c;)V
    .locals 1

    new-instance v0, LM2/a;

    invoke-direct {v0, p1}, LM2/a;-><init>(LT2/a;)V

    iget-object p0, p0, LJ2/I;->b:LJ2/K;

    invoke-virtual {p0, v0}, LJ2/K;->d(LS2/a;)V

    return-void
.end method

.method public final i(LU2/c;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LJ2/I;->k(LU2/c;II)V

    return-void
.end method

.method public final j(LU2/c;)V
    .locals 1

    new-instance v0, LM2/a;

    invoke-direct {v0, p1}, LM2/a;-><init>(LT2/a;)V

    iget-object p0, p0, LJ2/I;->b:LJ2/K;

    invoke-virtual {p0, v0}, LJ2/K;->f(LS2/a;)V

    iput-object p1, p0, LJ2/K;->g:LT2/a;

    return-void
.end method

.method public final k(LU2/c;II)V
    .locals 1

    new-instance v0, LM2/a;

    invoke-direct {v0, p1}, LM2/a;-><init>(LT2/a;)V

    iget-object p0, p0, LJ2/I;->b:LJ2/K;

    invoke-virtual {p0, p2, p3, v0}, LJ2/K;->e(IILS2/a;)V

    return-void
.end method
