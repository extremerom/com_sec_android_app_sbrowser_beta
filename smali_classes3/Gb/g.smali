.class public final LGb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:LGb/i;


# direct methods
.method public synthetic constructor <init>(LGb/i;I)V
    .locals 0

    iput p2, p0, LGb/g;->a:I

    iput-object p1, p0, LGb/g;->b:LGb/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LGb/g;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LJb/C;

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/C;->j()LGb/i;

    move-result-object p1

    sget-object v0, Lyc/e0;->INVARIANT:Lyc/e0;

    iget-object p0, p0, LGb/g;->b:LGb/i;

    invoke-virtual {p0}, LGb/i;->v()Lyc/A;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, LGb/i;->i(Lyc/e0;Lyc/d0;)Lyc/A;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lhc/f;

    iget-object p0, p0, LGb/g;->b:LGb/i;

    invoke-virtual {p0}, LGb/i;->l()LMb/B;

    move-result-object p0

    sget-object v0, LGb/q;->l:Lhc/c;

    invoke-virtual {p0, v0}, LMb/B;->q0(Lhc/c;)LJb/M;

    move-result-object p0

    check-cast p0, LMb/y;

    iget-object p0, p0, LMb/y;->h:Lrc/k;

    if-eqz p0, :cond_2

    sget-object v1, LRb/c;->FROM_BUILTINS:LRb/c;

    invoke-virtual {p0, p1, v1}, Lrc/k;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, LJb/f;

    if-eqz v0, :cond_0

    check-cast p0, LJb/f;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Must be a class descriptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Built-in class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    const/16 p0, 0xb

    invoke-static {p0}, LGb/i;->a(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
