.class public final LAc/a;
.super LMb/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhc/f;)V
    .locals 18

    sget-object v0, LAc/l;->a:LAc/l;

    sget-object v2, LAc/l;->b:LAc/e;

    sget-object v4, LJb/B;->OPEN:LJb/B;

    sget-object v5, LJb/g;->CLASS:LJb/g;

    sget-object v10, Lfb/v;->a:Lfb/v;

    sget-object v17, LJb/S;->L:LJb/T;

    sget-object v7, Lxc/l;->e:Lxc/b;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, LMb/l;-><init>(LJb/l;Lhc/f;LJb/B;LJb/g;Ljava/util/Collection;Lxc/o;)V

    sget-object v14, LKb/g;->a:LKb/f;

    new-instance v0, LMb/j;

    sget-object v16, LJb/c;->DECLARATION:LJb/c;

    const/4 v15, 0x1

    const/4 v13, 0x0

    move-object v11, v0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v17}, LMb/j;-><init>(LJb/f;LJb/k;LKb/h;ZLJb/c;LJb/S;)V

    sget-object v1, LJb/q;->d:LJb/p;

    invoke-virtual {v0, v10, v1}, LMb/j;->i1(Ljava/util/List;LJb/p;)V

    sget-object v1, LAc/h;->SCOPE_FOR_ERROR_CLASS:LAc/h;

    invoke-virtual {v0}, LMb/n;->getName()Lhc/f;

    move-result-object v2

    iget-object v2, v2, Lhc/f;->a:Ljava/lang/String;

    const-string v3, ""

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LAc/l;->b(LAc/h;[Ljava/lang/String;)LAc/g;

    move-result-object v1

    new-instance v2, LAc/i;

    sget-object v9, LAc/k;->ERROR_CLASS:LAc/k;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v9, v4}, LAc/l;->d(LAc/k;[Ljava/lang/String;)LAc/j;

    move-result-object v7

    new-array v12, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object v6, v2

    move-object v8, v1

    invoke-direct/range {v6 .. v12}, LAc/i;-><init>(Lyc/L;LAc/g;LAc/k;Ljava/util/List;Z[Ljava/lang/String;)V

    iput-object v2, v0, LMb/v;->h:Lyc/w;

    invoke-static {v0}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v2, v0}, LMb/l;->D0(Lrc/o;Ljava/util/Set;LMb/j;)V

    return-void
.end method


# virtual methods
.method public final f(Lyc/Y;)LJb/m;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LMb/c;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "asString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final y(Lyc/U;Lzc/f;)Lrc/o;
    .locals 0

    sget-object p2, LAc/h;->SCOPE_FOR_ERROR_CLASS:LAc/h;

    invoke-virtual {p0}, LMb/c;->getName()Lhc/f;

    move-result-object p0

    iget-object p0, p0, Lhc/f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, LAc/l;->b(LAc/h;[Ljava/lang/String;)LAc/g;

    move-result-object p0

    return-object p0
.end method

.method public final z0(Lyc/Y;)LJb/f;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
