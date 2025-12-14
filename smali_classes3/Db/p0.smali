.class public final LDb/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/q0;


# direct methods
.method public synthetic constructor <init>(LDb/q0;I)V
    .locals 0

    iput p2, p0, LDb/p0;->a:I

    iput-object p1, p0, LDb/p0;->b:LDb/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LDb/p0;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, LDb/p0;->b:LDb/q0;

    invoke-static {p0, v0}, LG5/I;->a(LDb/m0;Z)LEb/g;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LDb/p0;->b:LDb/q0;

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v0

    invoke-virtual {v0}, LDb/r0;->l()LJb/P;

    move-result-object v0

    invoke-interface {v0}, LJb/P;->c()LMb/L;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {p0}, LDb/r0;->l()LJb/P;

    move-result-object p0

    sget-object v0, LKb/g;->a:LKb/f;

    invoke-static {p0, v0}, Lkc/p;->g(LJb/P;LKb/h;)LMb/L;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
