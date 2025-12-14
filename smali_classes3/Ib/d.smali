.class public final LIb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Lhc/b;

.field public static final f:Lhc/c;

.field public static final g:Lhc/b;

.field public static final h:Ljava/util/HashMap;

.field public static final i:Ljava/util/HashMap;

.field public static final j:Ljava/util/HashMap;

.field public static final k:Ljava/util/HashMap;

.field public static final l:Ljava/util/HashMap;

.field public static final m:Ljava/util/HashMap;

.field public static final n:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LHb/h;->c:LHb/h;

    iget-object v2, v1, LHb/l;->a:Lhc/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LHb/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LIb/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LHb/i;->c:LHb/i;

    iget-object v3, v1, LHb/l;->a:Lhc/c;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LHb/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LIb/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LHb/k;->c:LHb/k;

    iget-object v3, v1, LHb/l;->a:Lhc/c;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LHb/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LIb/d;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LHb/j;->c:LHb/j;

    iget-object v3, v1, LHb/l;->a:Lhc/c;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, LHb/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LIb/d;->d:Ljava/lang/String;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.jvm.functions.FunctionN"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v0

    sput-object v0, LIb/d;->e:Lhc/b;

    invoke-virtual {v0}, Lhc/b;->a()Lhc/c;

    move-result-object v0

    sput-object v0, LIb/d;->f:Lhc/c;

    sget-object v0, Lhc/i;->q:Lhc/b;

    sput-object v0, LIb/d;->g:Lhc/b;

    const-class v0, Ljava/lang/Class;

    invoke-static {v0}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIb/d;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIb/d;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIb/d;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIb/d;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIb/d;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIb/d;->m:Ljava/util/HashMap;

    sget-object v0, LGb/p;->B:Lhc/c;

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v0

    sget-object v1, LGb/p;->J:Lhc/c;

    new-instance v3, Lhc/b;

    iget-object v4, v0, Lhc/b;->a:Lhc/c;

    invoke-static {v1, v4}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    new-instance v6, LIb/c;

    const-class v1, Ljava/lang/Iterable;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    invoke-direct {v6, v1, v0, v3}, LIb/c;-><init>(Lhc/b;Lhc/b;Lhc/b;)V

    sget-object v0, LGb/p;->A:Lhc/c;

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v0

    sget-object v1, LGb/p;->I:Lhc/c;

    new-instance v3, Lhc/b;

    iget-object v4, v0, Lhc/b;->a:Lhc/c;

    invoke-static {v1, v4}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    new-instance v7, LIb/c;

    const-class v1, Ljava/util/Iterator;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    invoke-direct {v7, v1, v0, v3}, LIb/c;-><init>(Lhc/b;Lhc/b;Lhc/b;)V

    sget-object v0, LGb/p;->C:Lhc/c;

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v0

    sget-object v1, LGb/p;->K:Lhc/c;

    new-instance v3, Lhc/b;

    iget-object v4, v0, Lhc/b;->a:Lhc/c;

    invoke-static {v1, v4}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    new-instance v8, LIb/c;

    const-class v1, Ljava/util/Collection;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    invoke-direct {v8, v1, v0, v3}, LIb/c;-><init>(Lhc/b;Lhc/b;Lhc/b;)V

    sget-object v0, LGb/p;->D:Lhc/c;

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v0

    sget-object v1, LGb/p;->L:Lhc/c;

    new-instance v3, Lhc/b;

    iget-object v4, v0, Lhc/b;->a:Lhc/c;

    invoke-static {v1, v4}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    new-instance v9, LIb/c;

    const-class v1, Ljava/util/List;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    invoke-direct {v9, v1, v0, v3}, LIb/c;-><init>(Lhc/b;Lhc/b;Lhc/b;)V

    sget-object v0, LGb/p;->F:Lhc/c;

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v0

    sget-object v1, LGb/p;->N:Lhc/c;

    new-instance v3, Lhc/b;

    iget-object v4, v0, Lhc/b;->a:Lhc/c;

    invoke-static {v1, v4}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    new-instance v10, LIb/c;

    const-class v1, Ljava/util/Set;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    invoke-direct {v10, v1, v0, v3}, LIb/c;-><init>(Lhc/b;Lhc/b;Lhc/b;)V

    sget-object v0, LGb/p;->E:Lhc/c;

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v0

    sget-object v1, LGb/p;->M:Lhc/c;

    new-instance v3, Lhc/b;

    iget-object v4, v0, Lhc/b;->a:Lhc/c;

    invoke-static {v1, v4}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    new-instance v11, LIb/c;

    const-class v1, Ljava/util/ListIterator;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    invoke-direct {v11, v1, v0, v3}, LIb/c;-><init>(Lhc/b;Lhc/b;Lhc/b;)V

    sget-object v0, LGb/p;->G:Lhc/c;

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v1

    sget-object v3, LGb/p;->O:Lhc/c;

    new-instance v4, Lhc/b;

    iget-object v12, v1, Lhc/b;->a:Lhc/c;

    invoke-static {v3, v12}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v3

    invoke-direct {v4, v12, v3, v5}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    new-instance v12, LIb/c;

    const-class v3, Ljava/util/Map;

    invoke-static {v3}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v3

    invoke-direct {v12, v3, v1, v4}, LIb/c;-><init>(Lhc/b;Lhc/b;Lhc/b;)V

    invoke-static {v0}, LG5/B3;->i(Lhc/c;)Lhc/b;

    move-result-object v0

    sget-object v1, LGb/p;->H:Lhc/c;

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->f()Lhc/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/b;->d(Lhc/f;)Lhc/b;

    move-result-object v0

    sget-object v1, LGb/p;->P:Lhc/c;

    new-instance v3, Lhc/b;

    iget-object v4, v0, Lhc/b;->a:Lhc/c;

    invoke-static {v1, v4}, LG5/D3;->a(Lhc/c;Lhc/c;)Lhc/c;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    new-instance v13, LIb/c;

    const-class v1, Ljava/util/Map$Entry;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    invoke-direct {v13, v1, v0, v3}, LIb/c;-><init>(Lhc/b;Lhc/b;Lhc/b;)V

    filled-new-array/range {v6 .. v13}, [LIb/c;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LIb/d;->n:Ljava/util/List;

    const-class v1, Ljava/lang/Object;

    sget-object v3, LGb/p;->a:Lhc/d;

    invoke-static {v1, v3}, LIb/d;->c(Ljava/lang/Class;Lhc/d;)V

    const-class v1, Ljava/lang/String;

    sget-object v3, LGb/p;->f:Lhc/d;

    invoke-static {v1, v3}, LIb/d;->c(Ljava/lang/Class;Lhc/d;)V

    const-class v1, Ljava/lang/CharSequence;

    sget-object v3, LGb/p;->e:Lhc/d;

    invoke-static {v1, v3}, LIb/d;->c(Ljava/lang/Class;Lhc/d;)V

    const-class v1, Ljava/lang/Throwable;

    sget-object v3, LGb/p;->k:Lhc/c;

    invoke-static {v1, v3}, LIb/d;->b(Ljava/lang/Class;Lhc/c;)V

    const-class v1, Ljava/lang/Cloneable;

    sget-object v3, LGb/p;->c:Lhc/d;

    invoke-static {v1, v3}, LIb/d;->c(Ljava/lang/Class;Lhc/d;)V

    const-class v1, Ljava/lang/Number;

    sget-object v3, LGb/p;->i:Lhc/d;

    invoke-static {v1, v3}, LIb/d;->c(Ljava/lang/Class;Lhc/d;)V

    const-class v1, Ljava/lang/Comparable;

    sget-object v3, LGb/p;->l:Lhc/c;

    invoke-static {v1, v3}, LIb/d;->b(Ljava/lang/Class;Lhc/c;)V

    const-class v1, Ljava/lang/Enum;

    sget-object v3, LGb/p;->j:Lhc/d;

    invoke-static {v1, v3}, LIb/d;->c(Ljava/lang/Class;Lhc/d;)V

    const-class v1, Ljava/lang/annotation/Annotation;

    sget-object v3, LGb/p;->s:Lhc/c;

    invoke-static {v1, v3}, LIb/d;->b(Ljava/lang/Class;Lhc/c;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIb/c;

    iget-object v3, v1, LIb/c;->a:Lhc/b;

    iget-object v4, v1, LIb/c;->b:Lhc/b;

    invoke-static {v3, v4}, LIb/d;->a(Lhc/b;Lhc/b;)V

    iget-object v1, v1, LIb/c;->c:Lhc/b;

    invoke-virtual {v1}, Lhc/b;->a()Lhc/c;

    move-result-object v6

    iget-object v6, v6, Lhc/c;->a:Lhc/d;

    sget-object v7, LIb/d;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LIb/d;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LIb/d;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lhc/b;->a()Lhc/c;

    move-result-object v3

    invoke-virtual {v1}, Lhc/b;->a()Lhc/c;

    move-result-object v4

    invoke-virtual {v1}, Lhc/b;->a()Lhc/c;

    move-result-object v1

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    sget-object v6, LIb/d;->j:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lhc/c;->a:Lhc/d;

    sget-object v3, LIb/d;->k:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lpc/c;->values()[Lpc/c;

    move-result-object v0

    array-length v1, v0

    move v3, v5

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lpc/c;->h()Lhc/c;

    move-result-object v6

    const-string v7, "getWrapperFqName(...)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lhc/b;

    invoke-virtual {v6}, Lhc/c;->b()Lhc/c;

    move-result-object v8

    iget-object v6, v6, Lhc/c;->a:Lhc/d;

    invoke-virtual {v6}, Lhc/d;->f()Lhc/f;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-virtual {v4}, Lpc/c;->g()LGb/l;

    move-result-object v4

    const-string v6, "getPrimitiveType(...)"

    invoke-static {v4, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, LGb/q;->l:Lhc/c;

    invoke-virtual {v4}, LGb/l;->g()Lhc/f;

    move-result-object v4

    invoke-virtual {v6, v4}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v4

    new-instance v6, Lhc/b;

    invoke-virtual {v4}, Lhc/c;->b()Lhc/c;

    move-result-object v8

    iget-object v4, v4, Lhc/c;->a:Lhc/d;

    invoke-virtual {v4}, Lhc/d;->f()Lhc/f;

    move-result-object v4

    invoke-direct {v6, v8, v4}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-static {v7, v6}, LIb/d;->a(Lhc/b;Lhc/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, LGb/d;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhc/b;

    new-instance v3, Lhc/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "kotlin.jvm.internal."

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lhc/b;->f()Lhc/f;

    move-result-object v6

    invoke-virtual {v6}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CompanionObject"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v4, Lhc/b;

    invoke-virtual {v3}, Lhc/c;->b()Lhc/c;

    move-result-object v6

    iget-object v3, v3, Lhc/c;->a:Lhc/d;

    invoke-virtual {v3}, Lhc/d;->f()Lhc/f;

    move-result-object v3

    invoke-direct {v4, v6, v3}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    sget-object v3, Lhc/h;->b:Lhc/f;

    invoke-virtual {v1, v3}, Lhc/b;->d(Lhc/f;)Lhc/b;

    move-result-object v1

    invoke-static {v4, v1}, LIb/d;->a(Lhc/b;Lhc/b;)V

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_3
    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    new-instance v1, Lhc/c;

    const-string v3, "kotlin.jvm.functions.Function"

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Lhc/b;

    invoke-virtual {v1}, Lhc/c;->b()Lhc/c;

    move-result-object v4

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->f()Lhc/f;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    new-instance v1, Lhc/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Function"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    sget-object v6, LGb/q;->l:Lhc/c;

    invoke-direct {v1, v6, v4}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-static {v3, v1}, LIb/d;->a(Lhc/b;Lhc/b;)V

    new-instance v1, Lhc/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LIb/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lhc/c;-><init>(Ljava/lang/String;)V

    sget-object v3, LIb/d;->g:Lhc/b;

    sget-object v4, LIb/d;->i:Ljava/util/HashMap;

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    const/16 v0, 0x16

    if-ge v5, v0, :cond_4

    sget-object v0, LHb/j;->c:LHb/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, LHb/l;->a:Lhc/c;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, LHb/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhc/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lhc/c;-><init>(Ljava/lang/String;)V

    sget-object v0, LIb/d;->g:Lhc/b;

    sget-object v3, LIb/d;->i:Ljava/util/HashMap;

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Lhc/c;

    const-string v1, "kotlin.concurrent.atomics.AtomicInt"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    sget-object v2, LIb/d;->i:Ljava/util/HashMap;

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.concurrent.atomics.AtomicLong"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.concurrent.atomics.AtomicBoolean"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.concurrent.atomics.AtomicReference"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.concurrent.atomics.AtomicIntArray"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.concurrent.atomics.AtomicLongArray"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.concurrent.atomics.AtomicArray"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGb/p;->b:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->g()Lhc/c;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    invoke-static {v1}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lhc/b;Lhc/b;)V
    .locals 2

    invoke-virtual {p0}, Lhc/b;->a()Lhc/c;

    move-result-object v0

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    sget-object v1, LIb/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lhc/b;->a()Lhc/c;

    move-result-object p1

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    sget-object v0, LIb/d;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Class;Lhc/c;)V
    .locals 2

    invoke-static {p0}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object p0

    const-string v0, "topLevelFqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhc/b;

    invoke-virtual {p1}, Lhc/c;->b()Lhc/c;

    move-result-object v1

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    invoke-virtual {p1}, Lhc/d;->f()Lhc/f;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-static {p0, v0}, LIb/d;->a(Lhc/b;Lhc/b;)V

    return-void
.end method

.method public static c(Ljava/lang/Class;Lhc/d;)V
    .locals 0

    invoke-virtual {p1}, Lhc/d;->g()Lhc/c;

    move-result-object p1

    invoke-static {p0, p1}, LIb/d;->b(Ljava/lang/Class;Lhc/c;)V

    return-void
.end method

.method public static d(Ljava/lang/Class;)Lhc/b;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lhc/c;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getCanonicalName(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance p0, Lhc/b;

    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v1

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, LIb/d;->d(Ljava/lang/Class;)Lhc/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lhc/b;->d(Lhc/f;)Lhc/b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Lhc/d;Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1, v2}, LG5/W3;->d(CCZ)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    invoke-static {p0}, LKc/r;->o(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x17

    if-lt p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static f(Lhc/d;)Lhc/b;
    .locals 2

    const-string v0, "kotlinFqName"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LIb/d;->a:Ljava/lang/String;

    invoke-static {p0, v0}, LIb/d;->e(Lhc/d;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, LIb/d;->e:Lhc/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LIb/d;->c:Ljava/lang/String;

    invoke-static {p0, v0}, LIb/d;->e(Lhc/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, LIb/d;->b:Ljava/lang/String;

    invoke-static {p0, v0}, LIb/d;->e(Lhc/d;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, LIb/d;->g:Lhc/b;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, LIb/d;->d:Ljava/lang/String;

    invoke-static {p0, v0}, LIb/d;->e(Lhc/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, LIb/d;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lhc/b;

    :goto_0
    return-object v1
.end method
