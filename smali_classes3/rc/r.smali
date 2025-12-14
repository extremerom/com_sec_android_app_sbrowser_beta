.class public final Lrc/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lrc/s;


# direct methods
.method public synthetic constructor <init>(Lrc/s;I)V
    .locals 0

    iput p2, p0, Lrc/r;->a:I

    iput-object p1, p0, Lrc/r;->b:Lrc/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrc/r;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lrc/r;->b:Lrc/s;

    iget-boolean v0, p0, Lrc/s;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lrc/s;->b:Lwc/i;

    invoke-static {p0}, Lkc/p;->h(LMb/c;)LMb/J;

    move-result-object p0

    invoke-static {p0}, Lfb/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lfb/v;->a:Lfb/v;

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lrc/r;->b:Lrc/s;

    iget-object v0, p0, Lrc/s;->b:Lwc/i;

    invoke-static {v0}, Lkc/p;->i(LMb/c;)LMb/M;

    move-result-object v0

    iget-object p0, p0, Lrc/s;->b:Lwc/i;

    invoke-static {p0}, Lkc/p;->j(LMb/c;)LMb/M;

    move-result-object p0

    filled-new-array {v0, p0}, [LMb/M;

    move-result-object p0

    invoke-static {p0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
