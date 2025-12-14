.class public abstract LGb/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LMb/C;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LMb/C;

    new-instance v1, LIb/p;

    sget-object v2, LAc/l;->a:LAc/l;

    sget-object v2, LAc/l;->b:LAc/e;

    sget-object v3, LGb/q;->f:Lhc/c;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, LIb/p;-><init>(LJb/C;Lhc/c;I)V

    sget-object v2, LJb/g;->INTERFACE:LJb/g;

    sget-object v3, LGb/q;->g:Lhc/c;

    iget-object v3, v3, Lhc/c;->a:Lhc/d;

    invoke-virtual {v3}, Lhc/d;->f()Lhc/f;

    move-result-object v3

    sget-object v4, Lxc/l;->e:Lxc/b;

    invoke-direct {v0, v1, v2, v3, v4}, LMb/C;-><init>(LIb/p;LJb/g;Lhc/f;Lxc/b;)V

    sget-object v1, LJb/B;->ABSTRACT:LJb/B;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iput-object v1, v0, LMb/C;->h:LJb/B;

    sget-object v1, LJb/q;->e:LJb/p;

    if-eqz v1, :cond_3

    iput-object v1, v0, LMb/C;->i:LJb/p;

    sget-object v1, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    const-string v3, "T"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v5, v4}, LMb/Q;->X0(LMb/c;Lyc/e0;Lhc/f;ILxc/o;)LMb/Q;

    move-result-object v1

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, LMb/C;->k:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, LMb/C;->k:Ljava/util/ArrayList;

    new-instance v1, Lyc/k;

    iget-object v4, v0, LMb/C;->l:Ljava/util/ArrayList;

    iget-object v5, v0, LMb/C;->m:Lxc/b;

    invoke-direct {v1, v0, v3, v4, v5}, Lyc/k;-><init>(LMb/A;Ljava/util/List;Ljava/util/Collection;Lxc/o;)V

    iput-object v1, v0, LMb/C;->j:Lyc/k;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJb/v;

    check-cast v2, LMb/j;

    invoke-virtual {v0}, LMb/c;->n()Lyc/A;

    move-result-object v3

    iput-object v3, v2, LMb/v;->h:Lyc/w;

    goto :goto_0

    :cond_0
    sput-object v0, LGb/r;->a:LMb/C;

    return-void

    :cond_1
    const/16 v0, 0xd

    invoke-static {v0}, LMb/C;->w0(I)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type parameters are already set for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LMb/c;->getName()Lhc/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/16 v0, 0x9

    invoke-static {v0}, LMb/C;->w0(I)V

    throw v2

    :cond_4
    const/4 v0, 0x6

    invoke-static {v0}, LMb/C;->w0(I)V

    throw v2
.end method
