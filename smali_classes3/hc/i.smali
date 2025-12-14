.class public final Lhc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/c;

.field public static final b:Lhc/c;

.field public static final c:Lhc/c;

.field public static final d:Lhc/c;

.field public static final e:Lhc/c;

.field public static final f:Lhc/c;

.field public static final g:Lhc/c;

.field public static final h:Lhc/b;

.field public static final i:Lhc/b;

.field public static final j:Lhc/b;

.field public static final k:Lhc/b;

.field public static final l:Lhc/b;

.field public static final m:Lhc/b;

.field public static final n:Lhc/b;

.field public static final o:Lhc/b;

.field public static final p:Lhc/b;

.field public static final q:Lhc/b;

.field public static final r:Ljava/util/Set;

.field public static final s:Ljava/util/Set;

.field public static final t:Lhc/b;

.field public static final u:Lhc/b;

.field public static final v:Lhc/b;

.field public static final w:Lhc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lhc/c;

    const-string v1, "kotlin"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhc/i;->a:Lhc/c;

    const-string v1, "reflect"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v4

    sput-object v4, Lhc/i;->b:Lhc/c;

    const-string v1, "collections"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v1

    sput-object v1, Lhc/i;->c:Lhc/c;

    const-string v2, "sequences"

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v2, "ranges"

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v2

    sput-object v2, Lhc/i;->d:Lhc/c;

    const-string v3, "jvm"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v5

    invoke-virtual {v0, v5}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v5

    const-string v6, "annotations"

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v6

    invoke-virtual {v0, v6}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v6

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v6, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v3, "internal"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v6, "functions"

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v5, "annotation"

    invoke-static {v5}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v5

    invoke-virtual {v0, v5}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v5

    sput-object v5, Lhc/i;->e:Lhc/c;

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v6

    const-string v3, "ir"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v6, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v3, "coroutines"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v7

    sput-object v7, Lhc/i;->f:Lhc/c;

    const-string v3, "intrinsics"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v7, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v3, "enums"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v3

    sput-object v3, Lhc/i;->g:Lhc/c;

    const-string v3, "contracts"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v3, "concurrent"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v3

    const-string v8, "atomics"

    invoke-static {v8}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v8

    invoke-virtual {v3, v8}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v8

    const-string v3, "test"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v3, "text"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    filled-new-array {v0, v1, v2, v5}, [Lhc/c;

    move-result-object v3

    invoke-static {v3}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    filled-new-array/range {v0 .. v7}, [Lhc/c;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    const-string v0, "Nothing"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    const-string v0, "Unit"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v0

    sput-object v0, Lhc/i;->h:Lhc/b;

    const-string v0, "Any"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v0

    sput-object v0, Lhc/i;->i:Lhc/b;

    const-string v0, "Enum"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v0

    sput-object v0, Lhc/i;->j:Lhc/b;

    const-string v0, "Annotation"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    const-string v0, "Array"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v0

    sput-object v0, Lhc/i;->k:Lhc/b;

    const-string v0, "Boolean"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v1

    const-string v0, "Char"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v2

    const-string v0, "Byte"

    invoke-static {v0}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v0

    const-string v3, "Short"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v9

    const-string v3, "Int"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v10

    const-string v3, "Long"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v11

    const-string v3, "Float"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v7

    const-string v3, "Double"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v8

    invoke-static {v0}, LG5/E3;->f(Lhc/b;)Lhc/b;

    move-result-object v3

    sput-object v3, Lhc/i;->l:Lhc/b;

    invoke-static {v9}, LG5/E3;->f(Lhc/b;)Lhc/b;

    move-result-object v3

    sput-object v3, Lhc/i;->m:Lhc/b;

    invoke-static {v10}, LG5/E3;->f(Lhc/b;)Lhc/b;

    move-result-object v3

    sput-object v3, Lhc/i;->n:Lhc/b;

    invoke-static {v11}, LG5/E3;->f(Lhc/b;)Lhc/b;

    move-result-object v3

    sput-object v3, Lhc/i;->o:Lhc/b;

    const-string v3, "CharSequence"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    const-string v3, "String"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-result-object v3

    sput-object v3, Lhc/i;->p:Lhc/b;

    const-string v3, "Throwable"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    const-string v3, "Cloneable"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    const-string v3, "KProperty"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KMutableProperty"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KProperty0"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KMutableProperty0"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KProperty1"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KMutableProperty1"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KProperty2"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KMutableProperty2"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KFunction"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    move-result-object v3

    sput-object v3, Lhc/i;->q:Lhc/b;

    const-string v3, "KClass"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KCallable"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "KType"

    invoke-static {v3}, LG5/E3;->e(Ljava/lang/String;)Lhc/b;

    const-string v3, "Comparable"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    const-string v3, "Number"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    const-string v3, "Function"

    invoke-static {v3}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    move-object v3, v0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    filled-new-array/range {v1 .. v8}, [Lhc/b;

    move-result-object v1

    invoke-static {v1}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lhc/i;->r:Ljava/util/Set;

    filled-new-array {v0, v9, v10, v11}, [Lhc/b;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lfb/C;->g(I)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lhc/b;

    invoke-virtual {v5}, Lhc/b;->f()Lhc/f;

    move-result-object v5

    invoke-static {v5}, LG5/E3;->d(Lhc/f;)Lhc/b;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v0}, LG5/E3;->c(Ljava/util/LinkedHashMap;)V

    sget-object v0, Lhc/i;->l:Lhc/b;

    sget-object v1, Lhc/i;->m:Lhc/b;

    sget-object v3, Lhc/i;->n:Lhc/b;

    sget-object v5, Lhc/i;->o:Lhc/b;

    filled-new-array {v0, v1, v3, v5}, [Lhc/b;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lhc/i;->s:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lfb/C;->g(I)I

    move-result v2

    if-ge v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lhc/b;

    invoke-virtual {v3}, Lhc/b;->f()Lhc/f;

    move-result-object v3

    invoke-static {v3}, LG5/E3;->d(Lhc/f;)Lhc/b;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v1}, LG5/E3;->c(Ljava/util/LinkedHashMap;)V

    sget-object v0, Lhc/i;->r:Ljava/util/Set;

    sget-object v1, Lhc/i;->s:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v2

    sget-object v3, Lhc/i;->p:Lhc/b;

    invoke-static {v2, v3}, Lfb/F;->f(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    sget-object v2, Lhc/i;->f:Lhc/c;

    const-string v4, "Continuation"

    invoke-static {v4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    const-string v5, "packageFqName"

    invoke-static {v2, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lhc/c;->c:Lhc/c;

    invoke-static {v4}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object v2

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->c()Z

    const-string v2, "Iterator"

    invoke-static {v2}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v2, "Iterable"

    invoke-static {v2}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v2, "Collection"

    invoke-static {v2}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v2, "List"

    invoke-static {v2}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v2, "ListIterator"

    invoke-static {v2}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v2, "Set"

    invoke-static {v2}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v2, "Map"

    invoke-static {v2}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    move-result-object v2

    const-string v4, "AbstractMap"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v4, "MutableIterator"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v4, "CharIterator"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v4, "MutableIterable"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v4, "MutableCollection"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v4, "MutableList"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    move-result-object v4

    sput-object v4, Lhc/i;->t:Lhc/b;

    const-string v4, "MutableListIterator"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    const-string v4, "MutableSet"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    move-result-object v4

    sput-object v4, Lhc/i;->u:Lhc/b;

    const-string v4, "MutableMap"

    invoke-static {v4}, LG5/E3;->b(Ljava/lang/String;)Lhc/b;

    move-result-object v4

    sput-object v4, Lhc/i;->v:Lhc/b;

    const-string v6, "Entry"

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v6

    invoke-virtual {v2, v6}, Lhc/b;->d(Lhc/f;)Lhc/b;

    const-string v2, "MutableEntry"

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-virtual {v4, v2}, Lhc/b;->d(Lhc/f;)Lhc/b;

    const-string v2, "Result"

    invoke-static {v2}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    sget-object v2, Lhc/i;->d:Lhc/c;

    const-string v4, "IntRange"

    invoke-static {v4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    invoke-static {v2, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object v4

    iget-object v4, v4, Lhc/c;->a:Lhc/d;

    invoke-virtual {v4}, Lhc/d;->c()Z

    const-string v4, "LongRange"

    invoke-static {v4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    invoke-static {v2, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object v4

    iget-object v4, v4, Lhc/c;->a:Lhc/d;

    invoke-virtual {v4}, Lhc/d;->c()Z

    const-string v4, "CharRange"

    invoke-static {v4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    invoke-static {v2, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object v2

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->c()Z

    sget-object v2, Lhc/i;->e:Lhc/c;

    const-string v4, "AnnotationRetention"

    invoke-static {v4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    invoke-static {v2, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object v4

    iget-object v4, v4, Lhc/c;->a:Lhc/d;

    invoke-virtual {v4}, Lhc/d;->c()Z

    const-string v4, "AnnotationTarget"

    invoke-static {v4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    invoke-static {v2, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object v2

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->c()Z

    const-string v2, "DeprecationLevel"

    invoke-static {v2}, LG5/E3;->a(Ljava/lang/String;)Lhc/b;

    new-instance v2, Lhc/b;

    sget-object v4, Lhc/i;->g:Lhc/c;

    const-string v5, "EnumEntries"

    invoke-static {v5}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    sput-object v2, Lhc/i;->w:Lhc/b;

    invoke-static {v0, v1}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, v3}, Lfb/F;->f(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sget-object v1, Lhc/i;->h:Lhc/b;

    invoke-static {v0, v1}, Lfb/F;->f(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sget-object v1, Lhc/i;->i:Lhc/b;

    invoke-static {v0, v1}, Lfb/F;->f(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    sget-object v1, Lhc/i;->j:Lhc/b;

    invoke-static {v0, v1}, Lfb/F;->f(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    return-void
.end method
