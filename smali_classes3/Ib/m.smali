.class public final LIb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:LIb/q;


# direct methods
.method public synthetic constructor <init>(LIb/q;I)V
    .locals 0

    iput p2, p0, LIb/m;->a:I

    iput-object p1, p0, LIb/m;->b:LIb/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LIb/m;->b:LIb/q;

    const/4 v1, 0x0

    iget p0, p0, LIb/m;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LJb/d;

    invoke-interface {p1}, LJb/d;->d()LJb/c;

    move-result-object p0

    sget-object v2, LJb/c;->DECLARATION:LJb/c;

    if-ne p0, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LJb/f;

    sget-object p1, LIb/d;->a:Ljava/lang/String;

    invoke-static {p0}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object p0

    sget-object p1, LIb/d;->j:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ldb/j;

    const-string p0, "<destruct>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Ldb/j;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, LIb/q;->a:LMb/B;

    const-string v2, "\'"

    const-string v3, "()\' member of List is redundant in Kotlin and might be removed soon. Please use \'"

    const-string v4, "()\' stdlib extension instead"

    invoke-static {v2, p0, v3, p1, v4}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "()"

    invoke-static {p1, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "HIDDEN"

    iget-object v0, v0, LMb/B;->e:LGb/i;

    invoke-static {v0, p0, p1, v2, v1}, LKb/e;->a(LGb/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)LKb/j;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, LKb/g;->a:LKb/f;

    goto :goto_0

    :cond_1
    new-instance p1, LKb/i;

    invoke-direct {p1, v1, p0}, LKb/i;-><init>(ILjava/util/List;)V

    move-object p0, p1

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
