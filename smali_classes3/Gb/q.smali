.class public abstract LGb/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/f;

.field public static final b:Lhc/f;

.field public static final c:Lhc/f;

.field public static final d:Lhc/f;

.field public static final e:Lhc/f;

.field public static final f:Lhc/c;

.field public static final g:Lhc/c;

.field public static final h:Lhc/c;

.field public static final i:Lhc/c;

.field public static final j:Ljava/util/List;

.field public static final k:Lhc/f;

.field public static final l:Lhc/c;

.field public static final m:Lhc/c;

.field public static final n:Lhc/c;

.field public static final o:Lhc/c;

.field public static final p:Lhc/c;

.field public static final q:Lhc/c;

.field public static final r:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "field"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "value"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "values"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LGb/q;->a:Lhc/f;

    const-string v0, "entries"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LGb/q;->b:Lhc/f;

    const-string v0, "valueOf"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LGb/q;->c:Lhc/f;

    const-string v0, "copy"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "hashCode"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "toString"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "equals"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "code"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "name"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LGb/q;->d:Lhc/f;

    const-string v0, "main"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "nextChar"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "it"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    const-string v0, "count"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LGb/q;->e:Lhc/f;

    new-instance v0, Lhc/c;

    const-string v1, "<dynamic>"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Lhc/c;

    const-string v0, "kotlin.coroutines"

    invoke-direct {v8, v0}, Lhc/c;-><init>(Ljava/lang/String;)V

    sput-object v8, LGb/q;->f:Lhc/c;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.coroutines.jvm.internal"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.coroutines.intrinsics"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    const-string v0, "Continuation"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v0

    sput-object v0, LGb/q;->g:Lhc/c;

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.Result"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LGb/q;->h:Lhc/c;

    new-instance v6, Lhc/c;

    const-string v0, "kotlin.reflect"

    invoke-direct {v6, v0}, Lhc/c;-><init>(Ljava/lang/String;)V

    sput-object v6, LGb/q;->i:Lhc/c;

    const-string v0, "KProperty"

    const-string v1, "KMutableProperty"

    const-string v2, "KFunction"

    const-string v3, "KSuspendFunction"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LGb/q;->j:Ljava/util/List;

    const-string v0, "kotlin"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LGb/q;->k:Lhc/f;

    invoke-static {v0}, LG5/C3;->c(Lhc/f;)Lhc/c;

    move-result-object v2

    sput-object v2, LGb/q;->l:Lhc/c;

    const-string v0, "annotation"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v5

    sput-object v5, LGb/q;->m:Lhc/c;

    const-string v0, "collections"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v3

    sput-object v3, LGb/q;->n:Lhc/c;

    const-string v0, "ranges"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v4

    sput-object v4, LGb/q;->o:Lhc/c;

    const-string v0, "text"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    const-string v0, "internal"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v7

    sput-object v7, LGb/q;->p:Lhc/c;

    const-string v0, "concurrent"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v0

    const-string v1, "atomics"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v9

    sput-object v9, LGb/q;->q:Lhc/c;

    new-instance v0, Lhc/c;

    const-string v1, "error.NonExistentClass"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    filled-new-array/range {v2 .. v9}, [Lhc/c;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LGb/q;->r:Ljava/util/Set;

    return-void
.end method
