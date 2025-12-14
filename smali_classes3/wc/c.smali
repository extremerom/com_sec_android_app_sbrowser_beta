.class public final Lwc/c;
.super LMb/j;
.source "SourceFile"

# interfaces
.implements Lwc/b;


# instance fields
.field public final F:Lcc/n;

.field public final G:Lec/g;

.field public final H:LX4/i;

.field public final I:Lec/i;

.field public final J:Lac/h;


# direct methods
.method public constructor <init>(LJb/f;LJb/k;LKb/h;ZLJb/c;Lcc/n;Lec/g;LX4/i;Lec/i;Lac/h;LJb/S;)V
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

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, LMb/j;-><init>(LJb/f;LJb/k;LKb/h;ZLJb/c;LJb/S;)V

    iput-object v8, v7, Lwc/c;->F:Lcc/n;

    iput-object v9, v7, Lwc/c;->G:Lec/g;

    iput-object v10, v7, Lwc/c;->H:LX4/i;

    iput-object v11, v7, Lwc/c;->I:Lec/i;

    move-object/from16 v0, p10

    iput-object v0, v7, Lwc/c;->J:Lac/h;

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final F()LX4/i;
    .locals 0

    iget-object p0, p0, Lwc/c;->H:LX4/i;

    return-object p0
.end method

.method public final I()Lec/g;
    .locals 0

    iget-object p0, p0, Lwc/c;->G:Lec/g;

    return-object p0
.end method

.method public final J()Lwc/k;
    .locals 0

    iget-object p0, p0, Lwc/c;->J:Lac/h;

    return-object p0
.end method

.method public final W()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic W0(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)LMb/v;
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lwc/c;->l1(LJb/l;LJb/v;LJb/c;LKb/h;LJb/S;)Lwc/c;

    move-result-object p0

    return-object p0
.end method

.method public final d0()Lic/b;
    .locals 0

    iget-object p0, p0, Lwc/c;->F:Lcc/n;

    return-object p0
.end method

.method public final bridge synthetic f1(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)LMb/j;
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lwc/c;->l1(LJb/l;LJb/v;LJb/c;LKb/h;LJb/S;)Lwc/c;

    move-result-object p0

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l1(LJb/l;LJb/v;LJb/c;LKb/h;LJb/S;)Lwc/c;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "newOwner"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    move-object/from16 v8, p3

    invoke-static {v8, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "annotations"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lwc/c;

    move-object v4, v1

    check-cast v4, LJb/f;

    move-object/from16 v5, p2

    check-cast v5, LJb/k;

    iget-object v12, v0, Lwc/c;->I:Lec/i;

    iget-object v13, v0, Lwc/c;->J:Lac/h;

    iget-boolean v7, v0, LMb/j;->E:Z

    iget-object v9, v0, Lwc/c;->F:Lcc/n;

    iget-object v10, v0, Lwc/c;->G:Lec/g;

    iget-object v11, v0, Lwc/c;->H:LX4/i;

    move-object v3, v2

    move-object/from16 v6, p4

    move-object/from16 v8, p3

    move-object/from16 v14, p5

    invoke-direct/range {v3 .. v14}, Lwc/c;-><init>(LJb/f;LJb/k;LKb/h;ZLJb/c;Lcc/n;Lec/g;LX4/i;Lec/i;Lac/h;LJb/S;)V

    iget-boolean v0, v0, LMb/v;->w:Z

    iput-boolean v0, v2, LMb/v;->w:Z

    return-object v2
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
