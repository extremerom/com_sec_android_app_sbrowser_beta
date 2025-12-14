.class public final LJb/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lhc/c;


# direct methods
.method public synthetic constructor <init>(Lhc/c;I)V
    .locals 0

    iput p2, p0, LJb/J;->a:I

    iput-object p1, p0, LJb/J;->b:Lhc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LJb/J;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LKb/h;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJb/J;->b:Lhc/c;

    invoke-interface {p1, p0}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lhc/c;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lhc/c;->b()Lhc/c;

    move-result-object p1

    iget-object p0, p0, LJb/J;->b:Lhc/c;

    invoke-virtual {p1, p0}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
