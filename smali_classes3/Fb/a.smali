.class public abstract LFb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;

.field public static final b:Lhc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, LSb/x;->a:Lhc/c;

    sget-object v1, LSb/x;->h:Lhc/c;

    sget-object v2, LSb/x;->i:Lhc/c;

    sget-object v3, LSb/x;->c:Lhc/c;

    sget-object v4, LSb/x;->d:Lhc/c;

    sget-object v5, LSb/x;->f:Lhc/c;

    filled-new-array/range {v0 .. v5}, [Lhc/c;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhc/c;

    const-string v3, "topLevelFqName"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lhc/b;

    invoke-virtual {v2}, Lhc/c;->b()Lhc/c;

    move-result-object v4

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->f()Lhc/f;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, LFb/a;->a:Ljava/util/LinkedHashSet;

    sget-object v0, LSb/x;->g:Lhc/c;

    const-string v1, "REPEATABLE_ANNOTATION"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lhc/b;

    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v2

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    sput-object v1, LFb/a;->b:Lhc/b;

    return-void
.end method
