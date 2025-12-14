.class public final LWb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LWb/f;


# direct methods
.method public synthetic constructor <init>(LWb/f;I)V
    .locals 0

    iput p2, p0, LWb/e;->a:I

    iput-object p1, p0, LWb/e;->b:LWb/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LWb/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LWb/e;->b:LWb/f;

    iget-object v0, p0, LWb/f;->b:LPb/d;

    invoke-virtual {v0}, LPb/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LYb/a;

    move-object v3, v2

    check-cast v3, LPb/e;

    iget-object v3, v3, LPb/e;->a:Lhc/f;

    if-nez v3, :cond_1

    sget-object v3, LSb/x;->b:Lhc/f;

    :cond_1
    invoke-virtual {p0, v2}, LWb/f;->c(LYb/a;)Lmc/g;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v4, Ldb/j;

    invoke-direct {v4, v3, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lfb/B;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LWb/e;->b:LWb/f;

    invoke-virtual {p0}, LWb/f;->b()Lhc/c;

    move-result-object v0

    iget-object v1, p0, LWb/f;->b:LPb/d;

    if-nez v0, :cond_4

    sget-object p0, LAc/k;->NOT_FOUND_FQNAME_FOR_JAVA_ANNOTATION:LAc/k;

    invoke-virtual {v1}, LPb/d;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    goto :goto_3

    :cond_4
    iget-object p0, p0, LWb/f;->a:Lo3/i;

    iget-object v2, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v2, LVb/a;

    iget-object v2, v2, LVb/a;->o:LMb/B;

    iget-object v2, v2, LMb/B;->e:LGb/i;

    invoke-static {v0, v2}, LIb/e;->c(Lhc/c;LGb/i;)LJb/f;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v2, LPb/n;

    iget-object v1, v1, LPb/d;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v1}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v1

    invoke-static {v1}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v1}, LPb/n;-><init>(Ljava/lang/Class;)V

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object v1, p0, LVb/a;->k:Lo3/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lo3/f;->b:Ljava/lang/Object;

    check-cast v1, LX4/i;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, LX4/i;->m(LPb/n;)LJb/f;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v1, Lhc/b;

    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v2

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    iget-object v0, p0, LVb/a;->d:Lac/f;

    invoke-virtual {v0}, Lac/f;->c()Luc/k;

    move-result-object v0

    iget-object v0, v0, Luc/k;->l:Lcom/google/firebase/messaging/q;

    iget-object p0, p0, LVb/a;->o:LMb/B;

    invoke-static {p0, v1, v0}, LJb/y;->f(LJb/C;Lhc/b;Lcom/google/firebase/messaging/q;)LJb/f;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string p0, "resolver"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_2
    invoke-interface {v2}, LJb/f;->n()Lyc/A;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_1
    iget-object p0, p0, LWb/e;->b:LWb/f;

    iget-object p0, p0, LWb/f;->b:LPb/d;

    iget-object p0, p0, LPb/d;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object p0

    invoke-static {p0}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object p0

    invoke-virtual {p0}, Lhc/b;->a()Lhc/c;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
