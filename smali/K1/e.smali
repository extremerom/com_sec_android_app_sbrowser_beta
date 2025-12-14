.class public final LK1/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:LK1/e;

.field public static final c:LK1/e;

.field public static final d:LK1/e;

.field public static final e:LK1/e;

.field public static final f:LK1/e;

.field public static final g:LK1/e;

.field public static final h:LK1/e;

.field public static final i:LK1/e;

.field public static final j:LK1/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->b:LK1/e;

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->c:LK1/e;

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->d:LK1/e;

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->e:LK1/e;

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->f:LK1/e;

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->g:LK1/e;

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->h:LK1/e;

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->i:LK1/e;

    new-instance v0, LK1/e;

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LK1/e;-><init>(II)V

    sput-object v0, LK1/e;->j:LK1/e;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LK1/e;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LK1/e;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LK1/o;

    check-cast p2, Lx1/r;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, LK1/o;->a:Lx1/r;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, LK1/n;

    check-cast p2, LK1/a;

    iget p0, p2, LK1/a;->a:I

    const-string p2, "$this$set"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput p0, p1, LK1/n;->e:I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, LK1/n;

    check-cast p2, LK1/b;

    iget p0, p2, LK1/b;->a:I

    const-string p2, "$this$set"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput p0, p1, LK1/n;->f:I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, LK1/n;

    check-cast p2, Lx1/r;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, LK1/n;->d:Lx1/r;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    check-cast p1, LK1/m;

    check-cast p2, LK1/b;

    iget p0, p2, LK1/b;->a:I

    const-string p2, "$this$set"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput p0, p1, LK1/m;->e:I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    check-cast p1, LK1/m;

    check-cast p2, LK1/a;

    iget p0, p2, LK1/a;->a:I

    const-string p2, "$this$set"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput p0, p1, LK1/m;->f:I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_5
    check-cast p1, LK1/m;

    check-cast p2, Lx1/r;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, LK1/m;->d:Lx1/r;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_6
    check-cast p1, LK1/l;

    check-cast p2, LK1/c;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, LK1/l;->e:LK1/c;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_7
    check-cast p1, LK1/l;

    check-cast p2, Lx1/r;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, LK1/l;->d:Lx1/r;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
