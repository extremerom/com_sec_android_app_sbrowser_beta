.class public final LXb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:LJb/f;


# direct methods
.method public constructor <init>(LJb/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LXb/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXb/g;->b:LJb/f;

    return-void
.end method

.method public constructor <init>(LJb/f;LXb/h;Lyc/A;LXb/a;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, LXb/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXb/g;->b:LJb/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LXb/g;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LJb/d;

    invoke-interface {p1}, LJb/z;->getVisibility()LJb/p;

    move-result-object v0

    invoke-static {v0}, LJb/q;->e(LJb/p;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, LXb/g;->b:LJb/f;

    if-eqz p0, :cond_0

    sget-object v0, LJb/q;->l:LJb/T;

    invoke-static {v0, p1, p0}, LJb/q;->c(LJb/T;LJb/d;LJb/l;)LJb/o;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, LJb/q;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lzc/f;

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LXb/g;->b:LJb/f;

    invoke-static {p0}, Loc/d;->f(LJb/i;)Lhc/b;

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
