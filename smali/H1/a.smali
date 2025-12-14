.class public final LH1/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:LH1/a;

.field public static final c:LH1/a;

.field public static final d:LH1/a;

.field public static final e:LH1/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LH1/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LH1/a;-><init>(II)V

    sput-object v0, LH1/a;->b:LH1/a;

    new-instance v0, LH1/a;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LH1/a;-><init>(II)V

    sput-object v0, LH1/a;->c:LH1/a;

    new-instance v0, LH1/a;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LH1/a;-><init>(II)V

    sput-object v0, LH1/a;->d:LH1/a;

    new-instance v0, LH1/a;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LH1/a;-><init>(II)V

    sput-object v0, LH1/a;->e:LH1/a;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LH1/a;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LH1/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Lx1/q;

    const-string p0, "cur"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, LK1/p;

    if-eqz p0, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1

    :pswitch_0
    check-cast p2, Lx1/q;

    const-string p0, "cur"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, LK1/w;

    if-eqz p0, :cond_1

    move-object p1, p2

    :cond_1
    return-object p1

    :pswitch_1
    check-cast p2, Lx1/q;

    const-string p0, "cur"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, LK1/p;

    if-eqz p0, :cond_2

    move-object p1, p2

    :cond_2
    return-object p1

    :pswitch_2
    check-cast p2, Lx1/q;

    const-string p0, "cur"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, LK1/w;

    if-eqz p0, :cond_3

    move-object p1, p2

    :cond_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
