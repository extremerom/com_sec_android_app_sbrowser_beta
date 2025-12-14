.class public final Lwc/s;
.super LMb/M;
.source "SourceFile"

# interfaces
.implements Lwc/b;


# instance fields
.field public final E:Lcc/A;

.field public final F:Lec/g;

.field public final G:LX4/i;

.field public final H:Lec/i;

.field public final I:Lac/h;


# direct methods
.method public constructor <init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;Lcc/A;Lec/g;LX4/i;Lec/i;Lac/h;LJb/S;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p11, :cond_0

    sget-object v0, LJb/S;->L:LJb/T;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p11

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, LMb/M;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;)V

    iput-object v8, v7, Lwc/s;->E:Lcc/A;

    iput-object v9, v7, Lwc/s;->F:Lec/g;

    iput-object v10, v7, Lwc/s;->G:LX4/i;

    iput-object v11, v7, Lwc/s;->H:Lec/i;

    move-object/from16 v0, p10

    iput-object v0, v7, Lwc/s;->I:Lac/h;

    return-void
.end method


# virtual methods
.method public final F()LX4/i;
    .locals 0

    iget-object p0, p0, Lwc/s;->G:LX4/i;

    return-object p0
.end method

.method public final I()Lec/g;
    .locals 0

    iget-object p0, p0, Lwc/s;->F:Lec/g;

    return-object p0
.end method

.method public final J()Lwc/k;
    .locals 0

    iget-object p0, p0, Lwc/s;->I:Lac/h;

    return-object p0
.end method

.method public final W0(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)LMb/v;
    .locals 14

    move-object v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object v7, p1

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "annotations"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lwc/s;

    move-object/from16 v4, p3

    check-cast v4, LMb/M;

    if-nez p6, :cond_0

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object v2

    const-string v6, "getName(...)"

    invoke-static {v2, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p6

    :goto_0
    iget-object v11, v0, Lwc/s;->H:Lec/i;

    iget-object v12, v0, Lwc/s;->I:Lac/h;

    iget-object v8, v0, Lwc/s;->E:Lcc/A;

    iget-object v9, v0, Lwc/s;->F:Lec/g;

    iget-object v10, v0, Lwc/s;->G:LX4/i;

    move-object v2, v1

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move-object v7, p1

    move-object/from16 v13, p4

    invoke-direct/range {v2 .. v13}, Lwc/s;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;Lcc/A;Lec/g;LX4/i;Lec/i;Lac/h;LJb/S;)V

    iget-boolean v0, v0, LMb/v;->w:Z

    iput-boolean v0, v1, LMb/v;->w:Z

    return-object v1
.end method

.method public final d0()Lic/b;
    .locals 0

    iget-object p0, p0, Lwc/s;->E:Lcc/A;

    return-object p0
.end method
