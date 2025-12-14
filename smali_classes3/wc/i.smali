.class public final Lwc/i;
.super LMb/c;
.source "SourceFile"

# interfaces
.implements LJb/l;


# instance fields
.field public final e:Lcc/k;

.field public final f:Lec/a;

.field public final g:LJb/S;

.field public final h:Lhc/b;

.field public final i:LJb/B;

.field public final j:LJb/p;

.field public final k:LJb/g;

.field public final l:Luc/m;

.field public final m:Lrc/p;

.field public final n:LWb/h;

.field public final o:LJb/Q;

.field public final p:Lcom/google/firebase/messaging/q;

.field public final q:LJb/l;

.field public final r:Lxc/h;

.field public final s:Lxc/i;

.field public final t:Lxc/i;

.field public final u:Lxc/h;

.field public final v:Luc/w;

.field public final w:LKb/h;


# direct methods
.method public constructor <init>(Luc/m;Lcc/k;Lec/g;Lec/a;LJb/S;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v3, p3

    move-object/from16 v11, p5

    const-string v0, "outerContext"

    invoke-static {v9, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classProto"

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElement"

    invoke-static {v11, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v9, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->a:Lxc/o;

    iget v1, v10, Lcc/k;->e:I

    invoke-static {v3, v1}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object v1

    invoke-virtual {v1}, Lhc/b;->f()Lhc/f;

    move-result-object v1

    invoke-direct {v8, v0, v1}, LMb/c;-><init>(Lxc/o;Lhc/f;)V

    iput-object v10, v8, Lwc/i;->e:Lcc/k;

    move-object/from16 v6, p4

    iput-object v6, v8, Lwc/i;->f:Lec/a;

    iput-object v11, v8, Lwc/i;->g:LJb/S;

    iget v0, v10, Lcc/k;->e:I

    invoke-static {v3, v0}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object v0

    iput-object v0, v8, Lwc/i;->h:Lhc/b;

    sget-object v0, Lec/e;->e:Lec/c;

    iget v1, v10, Lcc/k;->d:I

    invoke-virtual {v0, v1}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/C;

    invoke-static {v0}, Luc/l;->f(Lcc/C;)LJb/B;

    move-result-object v0

    iput-object v0, v8, Lwc/i;->i:LJb/B;

    sget-object v0, Lec/e;->d:Lec/c;

    iget v1, v10, Lcc/k;->d:I

    invoke-virtual {v0, v1}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/h0;

    invoke-static {v0}, LG5/n2;->b(Lcc/h0;)LJb/p;

    move-result-object v0

    iput-object v0, v8, Lwc/i;->j:LJb/p;

    sget-object v0, Lec/e;->f:Lec/c;

    iget v1, v10, Lcc/k;->d:I

    invoke-virtual {v0, v1}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/j;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Luc/y;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, LJb/g;->CLASS:LJb/g;

    :goto_1
    move-object v14, v0

    goto :goto_2

    :pswitch_0
    sget-object v0, LJb/g;->OBJECT:LJb/g;

    goto :goto_1

    :pswitch_1
    sget-object v0, LJb/g;->ANNOTATION_CLASS:LJb/g;

    goto :goto_1

    :pswitch_2
    sget-object v0, LJb/g;->ENUM_ENTRY:LJb/g;

    goto :goto_1

    :pswitch_3
    sget-object v0, LJb/g;->ENUM_CLASS:LJb/g;

    goto :goto_1

    :pswitch_4
    sget-object v0, LJb/g;->INTERFACE:LJb/g;

    goto :goto_1

    :pswitch_5
    sget-object v0, LJb/g;->CLASS:LJb/g;

    goto :goto_1

    :goto_2
    iput-object v14, v8, Lwc/i;->k:LJb/g;

    iget-object v2, v10, Lcc/k;->g:Ljava/util/List;

    const-string v0, "getTypeParameterList(...)"

    invoke-static {v2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LX4/i;

    iget-object v0, v10, Lcc/k;->E:Lcc/Z;

    const-string v1, "getTypeTable(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, LX4/i;-><init>(Lcc/Z;)V

    sget-object v0, Lec/i;->b:Lec/i;

    iget-object v0, v10, Lcc/k;->G:Lcc/g0;

    const-string v1, "getVersionRequirementTable(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LG5/R2;->c(Lcc/g0;)Lec/i;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Luc/m;->a(LJb/l;Ljava/util/List;Lec/g;LX4/i;Lec/i;Lec/a;)Luc/m;

    move-result-object v15

    iput-object v15, v8, Lwc/i;->l:Luc/m;

    sget-object v0, Lec/e;->m:Lec/b;

    iget v1, v10, Lcc/k;->d:I

    invoke-virtual {v0, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v7, LJb/g;->ENUM_CLASS:LJb/g;

    iget-object v1, v15, Luc/m;->a:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Luc/k;

    if-ne v14, v7, :cond_3

    if-nez v0, :cond_2

    iget-object v0, v6, Luc/k;->s:Luc/n;

    invoke-interface {v0}, Luc/n;->d()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v0, 0x1

    :goto_4
    new-instance v1, Lrc/s;

    iget-object v2, v6, Luc/k;->a:Lxc/o;

    invoke-direct {v1, v2, v8, v0}, Lrc/s;-><init>(Lxc/o;Lwc/i;Z)V

    goto :goto_5

    :cond_3
    sget-object v1, Lrc/n;->b:Lrc/n;

    :goto_5
    iput-object v1, v8, Lwc/i;->m:Lrc/p;

    new-instance v0, LWb/h;

    invoke-direct {v0, v8}, LWb/h;-><init>(Lwc/i;)V

    iput-object v0, v8, Lwc/i;->n:LWb/h;

    sget-object v16, LJb/Q;->d:LJb/T;

    iget-object v5, v6, Luc/k;->a:Lxc/o;

    iget-object v0, v6, Luc/k;->q:Lzc/k;

    check-cast v0, Lzc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LJ2/p;

    const-class v3, Lwc/g;

    const-string v17, "<init>"

    const/4 v1, 0x1

    const-string v18, "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V"

    const/16 v19, 0x0

    const/16 v20, 0x6

    move-object v0, v4

    move-object/from16 v2, p0

    move-object v12, v4

    move-object/from16 v4, v17

    move-object v13, v5

    move-object/from16 v5, v18

    move-object/from16 v21, v6

    move/from16 v6, v19

    move-object v11, v7

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, LJ2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "storageManager"

    invoke-static {v13, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJb/Q;

    invoke-direct {v0, v8, v13, v12}, LJb/Q;-><init>(LMb/c;Lxc/o;Lsb/k;)V

    iput-object v0, v8, Lwc/i;->o:LJb/Q;

    const/4 v0, 0x0

    if-ne v14, v11, :cond_6

    new-instance v1, Lcom/google/firebase/messaging/q;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v8, v1, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    iget-object v2, v8, Lwc/i;->e:Lcc/k;

    iget-object v2, v2, Lcc/k;->t:Ljava/util/List;

    const-string v3, "getEnumEntryList(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lfb/C;->g(I)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_4

    move v3, v4

    :cond_4
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcc/v;

    iget-object v6, v8, Lwc/i;->l:Luc/m;

    iget-object v6, v6, Luc/m;->b:Ljava/lang/Object;

    check-cast v6, Lec/g;

    iget v5, v5, Lcc/v;->d:I

    invoke-static {v6, v5}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    iput-object v4, v1, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v2, Lwc/i;

    iget-object v3, v2, Lwc/i;->l:Luc/m;

    iget-object v3, v3, Luc/m;->a:Ljava/lang/Object;

    check-cast v3, Luc/k;

    iget-object v3, v3, Luc/k;->a:Lxc/o;

    new-instance v4, LWb/m;

    const/4 v5, 0x6

    invoke-direct {v4, v5, v1, v2}, LWb/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v3, Lxc/l;

    invoke-virtual {v3, v4}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v2, Lwc/i;

    iget-object v2, v2, Lwc/i;->l:Luc/m;

    iget-object v2, v2, Luc/m;->a:Ljava/lang/Object;

    check-cast v2, Luc/k;

    iget-object v2, v2, Luc/k;->a:Lxc/o;

    new-instance v3, LDb/E;

    const/16 v4, 0x19

    invoke-direct {v3, v4, v1}, LDb/E;-><init>(ILjava/lang/Object;)V

    check-cast v2, Lxc/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxc/i;

    invoke-direct {v4, v2, v3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v4, v1, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    goto :goto_7

    :cond_6
    move-object v1, v0

    :goto_7
    iput-object v1, v8, Lwc/i;->p:Lcom/google/firebase/messaging/q;

    iget-object v1, v9, Luc/m;->c:Ljava/lang/Object;

    check-cast v1, LJb/l;

    iput-object v1, v8, Lwc/i;->q:LJb/l;

    new-instance v2, Lwc/d;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, Lwc/d;-><init>(Lwc/i;I)V

    move-object/from16 v3, v21

    iget-object v6, v3, Luc/k;->a:Lxc/o;

    move-object v3, v6

    check-cast v3, Lxc/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxc/h;

    invoke-direct {v4, v3, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v4, v8, Lwc/i;->r:Lxc/h;

    new-instance v2, Lwc/d;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3}, Lwc/d;-><init>(Lwc/i;I)V

    move-object v3, v6

    check-cast v3, Lxc/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxc/i;

    invoke-direct {v4, v3, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v4, v8, Lwc/i;->s:Lxc/i;

    new-instance v2, Lwc/d;

    const/4 v3, 0x2

    invoke-direct {v2, v8, v3}, Lwc/d;-><init>(Lwc/i;I)V

    move-object v3, v6

    check-cast v3, Lxc/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxc/h;

    invoke-direct {v4, v3, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    new-instance v2, Lwc/d;

    const/4 v3, 0x3

    invoke-direct {v2, v8, v3}, Lwc/d;-><init>(Lwc/i;I)V

    move-object v3, v6

    check-cast v3, Lxc/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxc/i;

    invoke-direct {v4, v3, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v4, v8, Lwc/i;->t:Lxc/i;

    new-instance v2, Lwc/d;

    const/4 v3, 0x4

    invoke-direct {v2, v8, v3}, Lwc/d;-><init>(Lwc/i;I)V

    move-object v3, v6

    check-cast v3, Lxc/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxc/h;

    invoke-direct {v4, v3, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v4, v8, Lwc/i;->u:Lxc/h;

    new-instance v7, Luc/w;

    instance-of v2, v1, Lwc/i;

    if-eqz v2, :cond_7

    check-cast v1, Lwc/i;

    goto :goto_8

    :cond_7
    move-object v1, v0

    :goto_8
    if-eqz v1, :cond_8

    iget-object v0, v1, Lwc/i;->v:Luc/w;

    :cond_8
    move-object v5, v0

    iget-object v0, v15, Luc/m;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lec/g;

    iget-object v0, v15, Luc/m;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LX4/i;

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Luc/w;-><init>(Lcc/k;Lec/g;LX4/i;LJb/S;Luc/w;)V

    iput-object v7, v8, Lwc/i;->v:Luc/w;

    sget-object v0, Lec/e;->c:Lec/b;

    iget v1, v10, Lcc/k;->d:I

    invoke-virtual {v0, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, LKb/g;->a:LKb/f;

    goto :goto_9

    :cond_9
    new-instance v0, Lwc/v;

    new-instance v1, Lwc/d;

    const/4 v2, 0x5

    invoke-direct {v1, v8, v2}, Lwc/d;-><init>(Lwc/i;I)V

    invoke-direct {v0, v6, v1}, Lwc/v;-><init>(Lxc/o;Lsb/a;)V

    :goto_9
    iput-object v0, v8, Lwc/i;->w:LKb/h;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B0()Z
    .locals 1

    sget-object v0, Lec/e;->h:Lec/b;

    iget-object p0, p0, Lwc/i;->e:Lcc/k;

    iget p0, p0, Lcc/k;->d:I

    invoke-virtual {v0, p0}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final D0()Lwc/g;
    .locals 2

    iget-object v0, p0, Lwc/i;->l:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->q:Lzc/k;

    check-cast v0, Lzc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lwc/i;->o:LJb/Q;

    iget-object v0, p0, LJb/Q;->a:LMb/c;

    invoke-static {v0}, Loc/d;->j(LJb/l;)LJb/C;

    iget-object p0, p0, LJb/Q;->c:Lxc/i;

    sget-object v0, LJb/Q;->e:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrc/o;

    check-cast p0, Lwc/g;

    return-object p0
.end method

.method public final E()LMb/j;
    .locals 0

    iget-object p0, p0, Lwc/i;->r:Lxc/h;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMb/j;

    return-object p0
.end method

.method public final E0(Lhc/f;)Lyc/A;
    .locals 4

    invoke-virtual {p0}, Lwc/i;->D0()Lwc/g;

    move-result-object p0

    sget-object v0, LRb/c;->FROM_DESERIALIZATION:LRb/c;

    invoke-virtual {p0, p1, v0}, Lwc/g;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LJb/P;

    invoke-interface {v3}, LJb/b;->N()LMb/w;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    check-cast v1, LJb/P;

    if-eqz v1, :cond_4

    invoke-interface {v1}, LJb/Y;->getType()Lyc/w;

    move-result-object p1

    :cond_4
    check-cast p1, Lyc/A;

    return-object p1
.end method

.method public final R()LJb/X;
    .locals 0

    iget-object p0, p0, Lwc/i;->u:Lxc/h;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/X;

    return-object p0
.end method

.method public final U()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final V()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lwc/i;->l:Luc/m;

    iget-object v1, v0, Luc/m;->d:Ljava/lang/Object;

    check-cast v1, LX4/i;

    iget-object v2, p0, Lwc/i;->e:Lcc/k;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typeTable"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcc/k;->m:Ljava/util/List;

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const/16 v4, 0xa

    if-nez v3, :cond_1

    iget-object v2, v2, Lcc/k;->n:Ljava/util/List;

    const-string v3, "getContextReceiverTypeIdList(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, LX4/i;->f(I)Lcc/T;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    check-cast v3, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/T;

    iget-object v4, v0, Luc/m;->h:Ljava/lang/Object;

    check-cast v4, Luc/E;

    invoke-virtual {v4, v3}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v3

    new-instance v4, LMb/w;

    invoke-virtual {p0}, LMb/c;->C0()LMb/w;

    move-result-object v6

    new-instance v7, Lsc/a;

    invoke-direct {v7, p0, v3, v5}, Lsc/a;-><init>(LJb/f;Lyc/w;Lhc/f;)V

    sget-object v3, LKb/g;->a:LKb/f;

    invoke-direct {v4, v6, v7, v3}, LMb/w;-><init>(LJb/l;LF3/f;LKb/h;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public final W()Z
    .locals 1

    sget-object v0, Lec/e;->i:Lec/b;

    iget-object p0, p0, Lwc/i;->e:Lcc/k;

    iget p0, p0, Lcc/k;->d:I

    invoke-virtual {v0, p0}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final X()Z
    .locals 1

    sget-object v0, Lec/e;->f:Lec/c;

    iget-object p0, p0, Lwc/i;->e:Lcc/k;

    iget p0, p0, Lcc/k;->d:I

    invoke-virtual {v0, p0}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcc/j;->COMPANION_OBJECT:Lcc/j;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c0()Z
    .locals 1

    sget-object v0, Lec/e;->l:Lec/b;

    iget-object p0, p0, Lwc/i;->e:Lcc/k;

    iget p0, p0, Lcc/k;->d:I

    invoke-virtual {v0, p0}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d()LJb/g;
    .locals 0

    iget-object p0, p0, Lwc/i;->k:LJb/g;

    return-object p0
.end method

.method public final e()LJb/S;
    .locals 0

    iget-object p0, p0, Lwc/i;->g:LJb/S;

    return-object p0
.end method

.method public final f0(Lzc/f;)Lrc/o;
    .locals 1

    iget-object p0, p0, Lwc/i;->o:LJb/Q;

    iget-object p1, p0, LJb/Q;->a:LMb/c;

    invoke-static {p1}, Loc/d;->j(LJb/l;)LJb/C;

    iget-object p0, p0, LJb/Q;->c:Lxc/i;

    sget-object p1, LJb/Q;->e:[LAb/u;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrc/o;

    return-object p0
.end method

.method public final g()Z
    .locals 3

    sget-object v0, Lec/e;->k:Lec/b;

    iget-object v1, p0, Lwc/i;->e:Lcc/k;

    iget v1, v1, Lcc/k;->d:I

    invoke-virtual {v0, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lwc/i;->f:Lec/a;

    iget v0, p0, Lec/a;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    iget v2, p0, Lec/a;->c:I

    if-ge v2, v0, :cond_2

    goto :goto_1

    :cond_2
    if-le v2, v0, :cond_3

    goto :goto_0

    :cond_3
    iget p0, p0, Lec/a;->d:I

    if-gt p0, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final g0()Z
    .locals 1

    sget-object v0, Lec/e;->j:Lec/b;

    iget-object p0, p0, Lwc/i;->e:Lcc/k;

    iget p0, p0, Lcc/k;->d:I

    invoke-virtual {v0, p0}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getVisibility()LJb/p;
    .locals 0

    iget-object p0, p0, Lwc/i;->j:LJb/p;

    return-object p0
.end method

.method public final h()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lwc/i;->s:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final i()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lwc/i;->t:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final j0()Lrc/o;
    .locals 0

    iget-object p0, p0, Lwc/i;->m:Lrc/p;

    return-object p0
.end method

.method public final k()LJb/l;
    .locals 0

    iget-object p0, p0, Lwc/i;->q:LJb/l;

    return-object p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lwc/i;->l:Luc/m;

    iget-object p0, p0, Luc/m;->h:Ljava/lang/Object;

    check-cast p0, Luc/E;

    invoke-virtual {p0}, Luc/E;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final r()LJb/B;
    .locals 0

    iget-object p0, p0, Lwc/i;->i:LJb/B;

    return-object p0
.end method

.method public final s()Z
    .locals 3

    sget-object v0, Lec/e;->k:Lec/b;

    iget-object v1, p0, Lwc/i;->e:Lcc/k;

    iget v1, v1, Lcc/k;->d:I

    invoke-virtual {v0, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x2

    iget-object p0, p0, Lwc/i;->f:Lec/a;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lec/a;->a(III)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deserialized "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc/i;->g0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expect "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LMb/c;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()LKb/h;
    .locals 0

    iget-object p0, p0, Lwc/i;->w:LKb/h;

    return-object p0
.end method

.method public final w()Lyc/L;
    .locals 0

    iget-object p0, p0, Lwc/i;->n:LWb/h;

    return-object p0
.end method

.method public final z()Z
    .locals 1

    sget-object v0, Lec/e;->g:Lec/b;

    iget-object p0, p0, Lwc/i;->e:Lcc/k;

    iget p0, p0, Lcc/k;->d:I

    invoke-virtual {v0, p0}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
