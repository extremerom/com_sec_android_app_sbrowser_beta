.class public final Landroidx/activity/v;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/activity/A;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/A;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/v;->a:I

    iput-object p1, p0, Landroidx/activity/v;->b:Landroidx/activity/A;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/activity/v;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/activity/b;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/v;->b:Landroidx/activity/A;

    iget-object v0, p0, Landroidx/activity/A;->c:Landroidx/activity/u;

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/activity/A;->b:Lfb/k;

    invoke-virtual {p0}, Lfb/k;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/activity/u;

    invoke-virtual {v1}, Landroidx/activity/u;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/activity/u;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/activity/u;->handleOnBackProgressed(Landroidx/activity/b;)V

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/activity/b;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/v;->b:Landroidx/activity/A;

    iget-object v0, p0, Landroidx/activity/A;->b:Lfb/k;

    invoke-virtual {v0}, Lfb/k;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/activity/u;

    invoke-virtual {v2}, Landroidx/activity/u;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Landroidx/activity/u;

    iget-object v0, p0, Landroidx/activity/A;->c:Landroidx/activity/u;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/activity/A;->c()V

    :cond_6
    iput-object v1, p0, Landroidx/activity/A;->c:Landroidx/activity/u;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Landroidx/activity/u;->handleOnBackStarted(Landroidx/activity/b;)V

    :cond_7
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
