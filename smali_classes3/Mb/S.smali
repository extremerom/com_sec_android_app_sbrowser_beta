.class public final LMb/S;
.super LMb/T;
.source "SourceFile"


# instance fields
.field public final m:Ldb/o;


# direct methods
.method public constructor <init>(LJb/v;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;Lsb/a;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, LMb/T;-><init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V

    invoke-static {p12}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, LMb/S;->m:Ldb/o;

    return-void
.end method


# virtual methods
.method public final U0(LHb/g;Lhc/f;I)LMb/T;
    .locals 14

    move-object v0, p0

    new-instance v13, LMb/S;

    invoke-virtual {p0}, LF3/f;->u()LKb/h;

    move-result-object v4

    const-string v1, "<get-annotations>(...)"

    invoke-static {v4, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/U;->getType()Lyc/w;

    move-result-object v6

    const-string v1, "getType(...)"

    invoke-static {v6, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/T;->V0()Z

    move-result v7

    sget-object v11, LJb/S;->L:LJb/T;

    new-instance v12, LDb/E;

    const/16 v1, 0xd

    invoke-direct {v12, v1, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    iget-boolean v9, v0, LMb/T;->j:Z

    iget-object v10, v0, LMb/T;->k:Lyc/w;

    const/4 v2, 0x0

    iget-boolean v8, v0, LMb/T;->i:Z

    move-object v0, v13

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v12}, LMb/S;-><init>(LJb/v;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;Lsb/a;)V

    return-object v13
.end method
