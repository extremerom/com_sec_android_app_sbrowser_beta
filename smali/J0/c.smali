.class public final LJ0/c;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:LJ0/c;

.field public static final c:LJ0/c;

.field public static final d:LJ0/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LJ0/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJ0/c;-><init>(II)V

    sput-object v0, LJ0/c;->b:LJ0/c;

    new-instance v0, LJ0/c;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJ0/c;-><init>(II)V

    sput-object v0, LJ0/c;->c:LJ0/c;

    new-instance v0, LJ0/c;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJ0/c;-><init>(II)V

    sput-object v0, LJ0/c;->d:LJ0/c;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LJ0/c;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LJ0/q;Landroidx/compose/ui/node/a;LJ0/q;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, LJ0/c;->a:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LJ0/c;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, LC0/e;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Lz0/F;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
