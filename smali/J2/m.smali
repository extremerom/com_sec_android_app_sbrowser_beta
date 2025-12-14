.class public final synthetic LJ2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LJ2/s;


# direct methods
.method public synthetic constructor <init>(LJ2/s;I)V
    .locals 0

    iput p2, p0, LJ2/m;->a:I

    iput-object p1, p0, LJ2/m;->b:LJ2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LJ2/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LJ2/m;->b:LJ2/s;

    iget-object v0, p0, LJ2/s;->a:LJ2/U;

    invoke-virtual {v0}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LJ2/s;->a:LJ2/U;

    invoke-virtual {p0}, LJ2/U;->isOpenInternal()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LJ2/m;->b:LJ2/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    iget-object p0, p0, LJ2/m;->b:LJ2/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
