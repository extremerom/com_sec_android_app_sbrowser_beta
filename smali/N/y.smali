.class public final LN/y;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LN/v;


# direct methods
.method public synthetic constructor <init>(LN/v;I)V
    .locals 0

    iput p2, p0, LN/y;->a:I

    iput-object p1, p0, LN/y;->b:LN/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LN/y;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lk0/s;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lk0/s;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lk0/s;->b(I)V

    :cond_0
    iget-object p0, p0, LN/y;->b:LN/v;

    invoke-virtual {p0, p1}, LN/v;->a(Ljava/lang/Object;)Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LN/y;->b:LN/v;

    if-ne p1, p0, :cond_1

    const-string p0, "(this)"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
