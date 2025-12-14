.class public final LS/W;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La0/a0;


# direct methods
.method public synthetic constructor <init>(La0/a0;I)V
    .locals 0

    iput p2, p0, LS/W;->a:I

    iput-object p1, p0, LS/W;->b:La0/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LS/W;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LS/W;->b:La0/a0;

    invoke-interface {p0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/i;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LS/W;->b:La0/a0;

    invoke-interface {p0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS/k0;

    iget-object v0, p0, LS/k0;->d:LV/J;

    iget-object v0, v0, LV/J;->f:Lo3/i;

    invoke-virtual {v0}, Lo3/i;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LS/k0;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, LS/k0;->f:LR/z;

    invoke-interface {p0}, LR/z;->c()Z

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
