.class public final Luc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Luc/v;

.field public final c:Lic/m;

.field public final d:Luc/b;


# direct methods
.method public synthetic constructor <init>(Luc/v;Lic/m;Luc/b;I)V
    .locals 0

    iput p4, p0, Luc/s;->a:I

    iput-object p1, p0, Luc/s;->b:Luc/v;

    iput-object p2, p0, Luc/s;->c:Lic/m;

    iput-object p3, p0, Luc/s;->d:Luc/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Luc/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Luc/s;->b:Luc/v;

    iget-object v1, v0, Luc/v;->a:Luc/m;

    iget-object v1, v1, Luc/m;->c:Ljava/lang/Object;

    check-cast v1, LJb/l;

    invoke-virtual {v0, v1}, Luc/v;->a(LJb/l;)LJ2/i0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Luc/v;->a:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->e:Luc/c;

    iget-object v2, p0, Luc/s;->c:Lic/m;

    iget-object p0, p0, Luc/s;->d:Luc/b;

    invoke-interface {v0, v1, v2, p0}, Luc/e;->b(LJ2/i0;Lic/m;Luc/b;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_1
    return-object p0

    :pswitch_0
    iget-object v0, p0, Luc/s;->b:Luc/v;

    iget-object v1, v0, Luc/v;->a:Luc/m;

    iget-object v1, v1, Luc/m;->c:Ljava/lang/Object;

    check-cast v1, LJb/l;

    invoke-virtual {v0, v1}, Luc/v;->a(LJb/l;)LJ2/i0;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Luc/v;->a:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->e:Luc/c;

    iget-object v2, p0, Luc/s;->c:Lic/m;

    iget-object p0, p0, Luc/s;->d:Luc/b;

    invoke-interface {v0, v1, v2, p0}, Luc/e;->e(LJ2/i0;Lic/m;Luc/b;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
