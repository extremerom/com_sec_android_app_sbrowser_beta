.class public final synthetic LQd/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LRd/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 0

    iput p2, p0, LQd/l;->a:I

    iput-object p1, p0, LQd/l;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(LQd/u;I)V
    .locals 0

    iget p2, p0, LQd/l;->a:I

    packed-switch p2, :pswitch_data_0

    instance-of p2, p1, LQd/w;

    iget-object p0, p0, LQd/l;->b:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    check-cast p1, LQd/w;

    invoke-virtual {p1}, LQd/t;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p2, "br"

    invoke-virtual {p1}, LQd/u;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    instance-of p2, p1, LQd/f;

    iget-object p0, p0, LQd/l;->b:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    check-cast p1, LQd/f;

    invoke-virtual {p1}, LQd/t;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of p2, p1, LQd/e;

    if-eqz p2, :cond_3

    check-cast p1, LQd/e;

    invoke-virtual {p1}, LQd/t;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    instance-of p2, p1, LQd/d;

    if-eqz p2, :cond_4

    check-cast p1, LQd/d;

    invoke-virtual {p1}, LQd/t;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
