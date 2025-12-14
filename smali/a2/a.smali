.class public final La2/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, La2/a;->a:I

    iput-object p1, p0, La2/a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ldb/r;->a:Ldb/r;

    iget-object v1, p0, La2/a;->b:Ljava/lang/String;

    const-string v2, "$this$semantics"

    iget p0, p0, La2/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lb2/a;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lb2/c;->b(Lb2/a;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    check-cast p1, Lb2/a;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lb2/c;->b(Lb2/a;Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    check-cast p1, LC0/e;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LC0/j;->a:[LAb/u;

    sget-object p0, LC0/i;->a:LC0/k;

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, LC0/e;->g(LC0/k;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
