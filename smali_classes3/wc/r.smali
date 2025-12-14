.class public final Lwc/r;
.super LMb/J;
.source "SourceFile"

# interfaces
.implements Lwc/b;


# instance fields
.field public final B:Lcc/I;

.field public final C:Lec/g;

.field public final D:LX4/i;

.field public final E:Lec/i;

.field public final F:Lac/h;


# direct methods
.method public constructor <init>(LJb/l;LJb/P;LKb/h;LJb/B;LJb/p;ZLhc/f;LJb/c;ZZZZZLcc/I;Lec/g;LX4/i;Lec/i;Lac/h;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v14, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v13, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v12, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, LJb/S;->L:LJb/T;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LMb/J;-><init>(LJb/l;LJb/P;LKb/h;LJb/B;LJb/p;ZLhc/f;LJb/c;LJb/S;ZZZZZ)V

    move-object/from16 v0, p14

    iput-object v0, v15, Lwc/r;->B:Lcc/I;

    move-object/from16 v0, p15

    iput-object v0, v15, Lwc/r;->C:Lec/g;

    move-object/from16 v0, p16

    iput-object v0, v15, Lwc/r;->D:LX4/i;

    move-object/from16 v0, p17

    iput-object v0, v15, Lwc/r;->E:Lec/i;

    move-object/from16 v0, p18

    iput-object v0, v15, Lwc/r;->F:Lac/h;

    return-void
.end method


# virtual methods
.method public final F()LX4/i;
    .locals 0

    iget-object p0, p0, Lwc/r;->D:LX4/i;

    return-object p0
.end method

.method public final I()Lec/g;
    .locals 0

    iget-object p0, p0, Lwc/r;->C:Lec/g;

    return-object p0
.end method

.method public final J()Lwc/k;
    .locals 0

    iget-object p0, p0, Lwc/r;->F:Lac/h;

    return-object p0
.end method

.method public final W()Z
    .locals 1

    sget-object v0, Lec/e;->E:Lec/b;

    iget-object p0, p0, Lwc/r;->B:Lcc/I;

    iget p0, p0, Lcc/I;->d:I

    invoke-virtual {v0, p0}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final W0(LJb/l;LJb/B;LJb/p;LJb/P;LJb/c;Lhc/f;)LMb/J;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newModality"

    move-object/from16 v6, p2

    invoke-static {v6, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newVisibility"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v10, p5

    invoke-static {v10, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lwc/r;

    invoke-virtual/range {p0 .. p0}, LF3/f;->u()LKb/h;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lwc/r;->W()Z

    move-result v13

    iget-object v2, v0, Lwc/r;->E:Lec/i;

    move-object/from16 v19, v2

    iget-object v2, v0, Lwc/r;->F:Lac/h;

    move-object/from16 v20, v2

    iget-boolean v8, v0, LMb/J;->g:Z

    iget-boolean v11, v0, LMb/J;->o:Z

    iget-boolean v12, v0, LMb/J;->p:Z

    iget-boolean v14, v0, LMb/J;->s:Z

    iget-boolean v15, v0, LMb/J;->q:Z

    iget-object v2, v0, Lwc/r;->B:Lcc/I;

    move-object/from16 v16, v2

    iget-object v2, v0, Lwc/r;->C:Lec/g;

    move-object/from16 v17, v2

    iget-object v0, v0, Lwc/r;->D:LX4/i;

    move-object/from16 v18, v0

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v20}, Lwc/r;-><init>(LJb/l;LJb/P;LKb/h;LJb/B;LJb/p;ZLhc/f;LJb/c;ZZZZZLcc/I;Lec/g;LX4/i;Lec/i;Lac/h;)V

    return-object v1
.end method

.method public final d0()Lic/b;
    .locals 0

    iget-object p0, p0, Lwc/r;->B:Lcc/I;

    return-object p0
.end method
