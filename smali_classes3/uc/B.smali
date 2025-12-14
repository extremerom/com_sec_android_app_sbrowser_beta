.class public final Luc/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Luc/E;


# direct methods
.method public synthetic constructor <init>(Luc/E;I)V
    .locals 0

    iput p2, p0, Luc/B;->a:I

    iput-object p1, p0, Luc/B;->b:Luc/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Luc/B;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcc/T;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Luc/B;->b:Luc/E;

    iget-object p0, p0, Luc/E;->a:Luc/m;

    iget-object p0, p0, Luc/m;->d:Ljava/lang/Object;

    check-cast p0, LX4/i;

    invoke-static {p1, p0}, LG5/Q2;->e(Lcc/T;LX4/i;)Lcc/T;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Luc/B;->b:Luc/E;

    iget-object p0, p0, Luc/E;->a:Luc/m;

    iget-object v0, p0, Luc/m;->b:Ljava/lang/Object;

    check-cast v0, Lec/g;

    invoke-static {v0, p1}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object p1

    iget-boolean v0, p1, Lhc/b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Luc/m;->a:Ljava/lang/Object;

    check-cast p0, Luc/k;

    iget-object p0, p0, Luc/k;->b:LJb/C;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LJb/y;->e(LJb/C;Lhc/b;)LJb/i;

    move-result-object p0

    instance-of p1, p0, LJb/V;

    if-eqz p1, :cond_1

    move-object v1, p0

    check-cast v1, LJb/V;

    :cond_1
    :goto_0
    return-object v1

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Luc/B;->b:Luc/E;

    iget-object p0, p0, Luc/E;->a:Luc/m;

    iget-object v0, p0, Luc/m;->b:Ljava/lang/Object;

    check-cast v0, Lec/g;

    invoke-static {v0, p1}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object p1

    iget-boolean v0, p1, Lhc/b;->c:Z

    iget-object p0, p0, Luc/m;->a:Ljava/lang/Object;

    check-cast p0, Luc/k;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Luc/k;->b(Lhc/b;)LJb/f;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Luc/k;->b:LJb/C;

    invoke-static {p0, p1}, LJb/y;->e(LJb/C;Lhc/b;)LJb/i;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
