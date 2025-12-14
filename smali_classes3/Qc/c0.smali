.class public final LQc/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[LQc/h;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([LQc/h;Ldb/b;I)V
    .locals 0

    iput p3, p0, LQc/c0;->a:I

    iput-object p1, p0, LQc/c0;->b:[LQc/h;

    iput-object p2, p0, LQc/c0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LQc/c0;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LQc/d0;->a:LQc/d0;

    new-instance v1, LQc/b0;

    iget-object v2, p0, LQc/c0;->c:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, LQc/b0;-><init>(Lib/c;Ldb/b;I)V

    iget-object p0, p0, LQc/c0;->b:[LQc/h;

    invoke-static {p1, p2, v0, v1, p0}, LRc/c;->a(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0

    :pswitch_0
    sget-object v0, LQc/d0;->a:LQc/d0;

    new-instance v1, LQc/b0;

    iget-object v2, p0, LQc/c0;->c:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, LQc/b0;-><init>(Lib/c;Ldb/b;I)V

    iget-object p0, p0, LQc/c0;->b:[LQc/h;

    invoke-static {p1, p2, v0, v1, p0}, LRc/c;->a(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
