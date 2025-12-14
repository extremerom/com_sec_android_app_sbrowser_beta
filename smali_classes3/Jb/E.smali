.class public final LJb/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/firebase/messaging/q;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/q;I)V
    .locals 0

    iput p2, p0, LJb/E;->a:I

    iput-object p1, p0, LJb/E;->b:Lcom/google/firebase/messaging/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LJb/E;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LJb/F;

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LJb/F;->a:Lhc/b;

    iget-boolean v1, v0, Lhc/b;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lhc/b;->e()Lhc/b;

    move-result-object v1

    iget-object p1, p1, LJb/F;->b:Ljava/util/List;

    iget-object p0, p0, LJb/E;->b:Lcom/google/firebase/messaging/q;

    if-eqz v1, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lfb/n;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/messaging/q;->d(Lhc/b;Ljava/util/List;)LJb/f;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v1, Lxc/e;

    iget-object v2, v0, Lhc/b;->a:Lhc/c;

    invoke-virtual {v1, v2}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/h;

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lhc/b;->g()Z

    move-result v6

    new-instance v1, LJb/G;

    iget-object p0, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lxc/o;

    invoke-virtual {v0}, Lhc/b;->f()Lhc/f;

    move-result-object v5

    invoke-static {p1}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_2
    move v7, p0

    goto :goto_3

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :goto_3
    move-object v2, v1

    invoke-direct/range {v2 .. v7}, LJb/G;-><init>(Lxc/o;LJb/h;Lhc/f;ZI)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unresolved local class: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lhc/c;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LIb/p;

    iget-object p0, p0, LJb/E;->b:Lcom/google/firebase/messaging/q;

    iget-object p0, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast p0, LJb/C;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LIb/p;-><init>(LJb/C;Lhc/c;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
