.class public final LI1/j;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LNc/B;

.field public b:Lz1/e;

.field public synthetic c:Ljava/lang/Object;

.field public d:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, LI1/j;->c:Ljava/lang/Object;

    iget p1, p0, LI1/j;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LI1/j;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, LI1/l;->f(La0/u;Lc2/j;LNc/C0;La0/p0;LNc/B;Lz1/e;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
