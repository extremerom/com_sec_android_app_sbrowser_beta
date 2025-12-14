.class public final LJ0/m;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:LJ0/m;

.field public static final c:LJ0/m;

.field public static final d:LJ0/m;

.field public static final e:LJ0/m;

.field public static final f:LJ0/m;

.field public static final g:LJ0/m;

.field public static final h:LJ0/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LJ0/m;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJ0/m;-><init>(II)V

    sput-object v0, LJ0/m;->b:LJ0/m;

    new-instance v0, LJ0/m;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJ0/m;-><init>(II)V

    sput-object v0, LJ0/m;->c:LJ0/m;

    new-instance v0, LJ0/m;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJ0/m;-><init>(II)V

    sput-object v0, LJ0/m;->d:LJ0/m;

    new-instance v0, LJ0/m;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJ0/m;-><init>(II)V

    sput-object v0, LJ0/m;->e:LJ0/m;

    new-instance v0, LJ0/m;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJ0/m;-><init>(II)V

    sput-object v0, LJ0/m;->f:LJ0/m;

    new-instance v0, LJ0/m;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJ0/m;-><init>(II)V

    sput-object v0, LJ0/m;->g:LJ0/m;

    new-instance v0, LJ0/m;

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LJ0/m;-><init>(II)V

    sput-object v0, LJ0/m;->h:LJ0/m;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LJ0/m;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, LJ0/m;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, LH0/k;

    invoke-static {p1}, LJ0/k;->d(Landroidx/compose/ui/node/a;)LJ0/q;

    move-result-object p0

    sget-object p1, LJ0/p;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, LQ2/f;

    invoke-static {p1}, LJ0/k;->d(Landroidx/compose/ui/node/a;)LJ0/q;

    move-result-object p0

    invoke-virtual {p0, p2}, LJ0/i;->setSavedStateRegistryOwner(LQ2/f;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, Landroidx/lifecycle/J;

    invoke-static {p1}, LJ0/k;->d(Landroidx/compose/ui/node/a;)LJ0/q;

    move-result-object p0

    invoke-virtual {p0, p2}, LJ0/i;->setLifecycleOwner(Landroidx/lifecycle/J;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, LH0/b;

    invoke-static {p1}, LJ0/k;->d(Landroidx/compose/ui/node/a;)LJ0/q;

    move-result-object p0

    invoke-virtual {p0, p2}, LJ0/i;->setDensity(LH0/b;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, Lm0/m;

    invoke-static {p1}, LJ0/k;->d(Landroidx/compose/ui/node/a;)LJ0/q;

    move-result-object p0

    invoke-virtual {p0, p2}, LJ0/i;->setModifier(Lm0/m;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, Lsb/k;

    invoke-static {p1}, LJ0/k;->d(Landroidx/compose/ui/node/a;)LJ0/q;

    move-result-object p0

    invoke-virtual {p0, p2}, LJ0/q;->setReleaseBlock(Lsb/k;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, Lsb/k;

    invoke-static {p1}, LJ0/k;->d(Landroidx/compose/ui/node/a;)LJ0/q;

    move-result-object p0

    invoke-virtual {p0, p2}, LJ0/q;->setUpdateBlock(Lsb/k;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

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
