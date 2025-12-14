.class public final LB0/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:LB0/f;

.field public static final c:LB0/f;

.field public static final d:LB0/f;

.field public static final e:LB0/f;

.field public static final f:LB0/f;

.field public static final g:LB0/f;

.field public static final h:LB0/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LB0/f;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB0/f;-><init>(II)V

    sput-object v0, LB0/f;->b:LB0/f;

    new-instance v0, LB0/f;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LB0/f;-><init>(II)V

    sput-object v0, LB0/f;->c:LB0/f;

    new-instance v0, LB0/f;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LB0/f;-><init>(II)V

    sput-object v0, LB0/f;->d:LB0/f;

    new-instance v0, LB0/f;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LB0/f;-><init>(II)V

    sput-object v0, LB0/f;->e:LB0/f;

    new-instance v0, LB0/f;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LB0/f;-><init>(II)V

    sput-object v0, LB0/f;->f:LB0/f;

    new-instance v0, LB0/f;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LB0/f;-><init>(II)V

    sput-object v0, LB0/f;->g:LB0/f;

    new-instance v0, LB0/f;

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LB0/f;-><init>(II)V

    sput-object v0, LB0/f;->h:LB0/f;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LB0/f;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LB0/f;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LB0/h;

    check-cast p2, Landroidx/compose/ui/platform/q;

    check-cast p1, Landroidx/compose/ui/node/a;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/a;->C(Landroidx/compose/ui/platform/q;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, LB0/h;

    check-cast p2, La0/w;

    check-cast p1, Landroidx/compose/ui/node/a;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/a;->y(La0/w;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, LB0/h;

    check-cast p2, Lm0/m;

    check-cast p1, Landroidx/compose/ui/node/a;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/a;->B(Lm0/m;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, LB0/h;

    check-cast p2, Lz0/x;

    check-cast p1, Landroidx/compose/ui/node/a;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/a;->A(Lz0/x;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    check-cast p1, LB0/h;

    check-cast p2, LH0/k;

    check-cast p1, Landroidx/compose/ui/node/a;

    iget-object p0, p1, Landroidx/compose/ui/node/a;->m:LH0/k;

    if-eq p0, p2, :cond_2

    iput-object p2, p1, Landroidx/compose/ui/node/a;->m:LH0/k;

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->o()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->n()V

    :cond_0
    iget-object p0, p1, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p1, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast p1, LB0/O;

    :goto_0
    iget-object p2, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast p2, LB0/m;

    if-eq p1, p2, :cond_1

    const-string p2, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {p1, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LB0/q;

    iget-object p1, p1, LB0/O;->j:LB0/O;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    check-cast p1, LB0/h;

    check-cast p2, LH0/b;

    check-cast p1, Landroidx/compose/ui/node/a;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/a;->z(LH0/b;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_5
    check-cast p1, LB0/h;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
