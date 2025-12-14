.class public final LV/r;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:LW/i;


# direct methods
.method public synthetic constructor <init>(LW/i;III)V
    .locals 0

    iput p4, p0, LV/r;->a:I

    iput-object p1, p0, LV/r;->d:LW/i;

    iput p2, p0, LV/r;->b:I

    iput p3, p0, LV/r;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LV/r;->a:I

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, LV/r;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LV/r;->d:LW/i;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/b;

    iget p0, p0, LV/r;->b:I

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/b;->a(ILa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget p2, p0, LV/r;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LV/r;->d:LW/i;

    check-cast v0, LW/a;

    iget p0, p0, LV/r;->b:I

    invoke-virtual {v0, p0, p1, p2}, LW/a;->a(ILa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    iget p2, p0, LV/r;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LV/r;->d:LW/i;

    check-cast v0, LV/s;

    iget p0, p0, LV/r;->b:I

    invoke-virtual {v0, p0, p1, p2}, LV/s;->a(ILa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
