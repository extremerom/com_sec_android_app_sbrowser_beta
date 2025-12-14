.class public final LMb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LMb/c;


# direct methods
.method public synthetic constructor <init>(LMb/c;I)V
    .locals 0

    iput p2, p0, LMb/b;->a:I

    iput-object p1, p0, LMb/b;->b:LMb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LMb/b;->b:LMb/c;

    iget v1, p0, LMb/b;->a:I

    packed-switch v1, :pswitch_data_0

    new-instance p0, LMb/w;

    invoke-direct {p0, v0}, LMb/w;-><init>(LJb/f;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lrc/i;

    invoke-virtual {v0}, LMb/c;->S()Lrc/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lrc/i;-><init>(Lrc/o;)V

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, LMb/c;->S()Lrc/o;

    move-result-object v5

    new-instance v6, LMb/a;

    const/4 v1, 0x0

    invoke-direct {v6, v1, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    sget-object p0, Lyc/b0;->a:LAc/i;

    invoke-static {v0}, LAc/l;->f(LJb/l;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LAc/k;->UNABLE_TO_SUBSTITUTE_TYPE:LAc/k;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, LJb/i;->w()Lyc/L;

    move-result-object v2

    const/4 p0, 0x0

    if-eqz v2, :cond_2

    if-eqz v5, :cond_1

    invoke-interface {v2}, Lyc/L;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lyc/b0;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sget-object p0, Lyc/H;->b:LA7/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyc/H;->c:Lyc/H;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lyc/c;->w(Lyc/H;Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)Lyc/A;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0xd

    invoke-static {v0}, Lyc/b0;->a(I)V

    throw p0

    :cond_2
    const/16 v0, 0xc

    invoke-static {v0}, Lyc/b0;->a(I)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
