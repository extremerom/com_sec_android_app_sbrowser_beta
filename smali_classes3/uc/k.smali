.class public final Luc/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxc/o;

.field public final b:LJb/C;

.field public final c:Luc/l;

.field public final d:Luc/g;

.field public final e:Luc/c;

.field public final f:LJb/L;

.field public final g:Luc/l;

.field public final h:Luc/o;

.field public final i:LRb/b;

.field public final j:Luc/p;

.field public final k:Ljava/lang/Iterable;

.field public final l:Lcom/google/firebase/messaging/q;

.field public final m:Luc/l;

.field public final n:LLb/b;

.field public final o:LLb/d;

.field public final p:Lic/g;

.field public final q:Lzc/k;

.field public final r:Ljava/util/List;

.field public final s:Luc/n;

.field public final t:Luc/i;


# direct methods
.method public constructor <init>(Lxc/o;LJb/C;LP7/c;LL8/a;LJb/L;Ljava/lang/Iterable;Lcom/google/firebase/messaging/q;LLb/b;LLb/d;Lic/g;Lzc/l;LR7/a;Luc/l;I)V
    .locals 17

    sget-object v6, Luc/o;->a:Luc/l;

    sget-object v7, Luc/l;->e:Luc/l;

    const/high16 v0, 0x10000

    and-int v0, p14, v0

    if-eqz v0, :cond_0

    sget-object v0, Lzc/k;->b:Lzc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lzc/j;->b:Lzc/l;

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p11

    :goto_0
    sget-object v0, Lyc/m;->a:Lyc/m;

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/high16 v0, 0x80000

    and-int v0, p14, v0

    if-eqz v0, :cond_1

    sget-object v0, Luc/l;->d:Luc/l;

    move-object/from16 v16, v0

    goto :goto_1

    :cond_1
    move-object/from16 v16, p13

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v16}, Luc/k;-><init>(Lxc/o;LJb/C;Luc/g;Luc/c;LJb/L;Luc/o;Luc/p;Ljava/lang/Iterable;Lcom/google/firebase/messaging/q;LLb/b;LLb/d;Lic/g;Lzc/k;LR7/a;Ljava/util/List;Luc/n;)V

    return-void
.end method

.method public constructor <init>(Lxc/o;LJb/C;Luc/g;Luc/c;LJb/L;Luc/o;Luc/p;Ljava/lang/Iterable;Lcom/google/firebase/messaging/q;LLb/b;LLb/d;Lic/g;Lzc/k;LR7/a;Ljava/util/List;Luc/n;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    sget-object v10, Luc/l;->c:Luc/l;

    sget-object v11, Luc/l;->g:Luc/l;

    sget-object v12, LRb/b;->a:LRb/b;

    sget-object v13, Luc/j;->a:Luc/l;

    const-string v14, "storageManager"

    invoke-static {v1, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "moduleDescriptor"

    invoke-static {v2, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "fictitiousClassDescriptorFactories"

    invoke-static {v3, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "additionalClassPartsProvider"

    invoke-static {v4, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "platformDependentDeclarationFilter"

    invoke-static {v5, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "extensionRegistryLite"

    invoke-static {v6, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "kotlinTypeChecker"

    invoke-static {v7, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "typeAttributeTranslators"

    invoke-static {v8, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "enumEntriesDeserializationSupport"

    invoke-static {v9, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Luc/k;->a:Lxc/o;

    iput-object v2, v0, Luc/k;->b:LJb/C;

    iput-object v10, v0, Luc/k;->c:Luc/l;

    move-object/from16 v1, p3

    iput-object v1, v0, Luc/k;->d:Luc/g;

    move-object/from16 v1, p4

    iput-object v1, v0, Luc/k;->e:Luc/c;

    move-object/from16 v1, p5

    iput-object v1, v0, Luc/k;->f:LJb/L;

    iput-object v11, v0, Luc/k;->g:Luc/l;

    move-object/from16 v1, p6

    iput-object v1, v0, Luc/k;->h:Luc/o;

    iput-object v12, v0, Luc/k;->i:LRb/b;

    move-object/from16 v1, p7

    iput-object v1, v0, Luc/k;->j:Luc/p;

    iput-object v3, v0, Luc/k;->k:Ljava/lang/Iterable;

    move-object/from16 v1, p9

    iput-object v1, v0, Luc/k;->l:Lcom/google/firebase/messaging/q;

    iput-object v13, v0, Luc/k;->m:Luc/l;

    iput-object v4, v0, Luc/k;->n:LLb/b;

    iput-object v5, v0, Luc/k;->o:LLb/d;

    iput-object v6, v0, Luc/k;->p:Lic/g;

    iput-object v7, v0, Luc/k;->q:Lzc/k;

    iput-object v8, v0, Luc/k;->r:Ljava/util/List;

    iput-object v9, v0, Luc/k;->s:Luc/n;

    new-instance v1, Luc/i;

    invoke-direct {v1, p0}, Luc/i;-><init>(Luc/k;)V

    iput-object v1, v0, Luc/k;->t:Luc/i;

    return-void
.end method


# virtual methods
.method public final a(LJb/H;Lec/g;LX4/i;Lec/i;Lec/a;Lac/h;)Luc/m;
    .locals 11

    const-string v0, "descriptor"

    move-object v4, p1

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Luc/m;

    sget-object v10, Lfb/v;->a:Lfb/v;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Luc/m;-><init>(Luc/k;Lec/g;LJb/l;LX4/i;Lec/i;Lec/a;Lac/h;Luc/E;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Lhc/b;)LJb/f;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Luc/i;->c:Ljava/util/Set;

    const/4 v0, 0x0

    iget-object p0, p0, Luc/k;->t:Luc/i;

    invoke-virtual {p0, p1, v0}, Luc/i;->a(Lhc/b;Luc/f;)LJb/f;

    move-result-object p0

    return-object p0
.end method
