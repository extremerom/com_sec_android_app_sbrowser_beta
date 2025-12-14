.class public final Ljc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljc/j;


# direct methods
.method public synthetic constructor <init>(Ljc/j;I)V
    .locals 0

    iput p2, p0, Ljc/g;->a:I

    iput-object p1, p0, Ljc/g;->b:Ljc/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ljc/g;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lyc/w;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Ljc/g;->b:Ljc/j;

    invoke-virtual {p0, p1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lyc/Q;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lyc/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "*"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lyc/Q;->b()Lyc/w;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ljc/g;->b:Ljc/j;

    invoke-virtual {p0, v0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v0

    sget-object v1, Lyc/e0;->INVARIANT:Lyc/e0;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
