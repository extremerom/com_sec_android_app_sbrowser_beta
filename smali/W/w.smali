.class public final LW/w;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj0/k;


# direct methods
.method public synthetic constructor <init>(Lj0/k;I)V
    .locals 0

    iput p2, p0, LW/w;->a:I

    iput-object p1, p0, LW/w;->b:Lj0/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LW/w;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Map;

    const-string v0, "restored"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LW/y;

    iget-object p0, p0, LW/w;->b:Lj0/k;

    invoke-direct {v0, p0, p1}, LW/y;-><init>(Lj0/k;Ljava/util/Map;)V

    return-object v0

    :pswitch_0
    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LW/w;->b:Lj0/k;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lj0/k;->d(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
