.class public final Le2/i;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:Le2/i;

.field public static final c:Le2/i;

.field public static final d:Le2/i;

.field public static final e:Le2/i;

.field public static final f:Le2/i;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Le2/i;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/i;-><init>(II)V

    sput-object v0, Le2/i;->b:Le2/i;

    new-instance v0, Le2/i;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le2/i;-><init>(II)V

    sput-object v0, Le2/i;->c:Le2/i;

    new-instance v0, Le2/i;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Le2/i;-><init>(II)V

    sput-object v0, Le2/i;->d:Le2/i;

    new-instance v0, Le2/i;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Le2/i;-><init>(II)V

    sput-object v0, Le2/i;->e:Le2/i;

    new-instance v0, Le2/i;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Le2/i;-><init>(II)V

    sput-object v0, Le2/i;->f:Le2/i;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Le2/i;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Le2/i;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Le2/b;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const-string p2, "$this$set"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput p0, p1, Le2/b;->d:F

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Le2/b;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string p2, "$this$set"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput p0, p1, Le2/b;->c:I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Le2/b;

    check-cast p2, Le2/l;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Le2/b;->b:Le2/l;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Le2/b;

    check-cast p2, Lx1/r;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Le2/b;->f:Lx1/r;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    check-cast p1, Le2/b;

    check-cast p2, Ljava/lang/String;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Le2/b;->a:Ljava/lang/String;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
