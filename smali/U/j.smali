.class public final LU/j;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/q;


# static fields
.field public static final b:LU/j;

.field public static final c:LU/j;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LU/j;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU/j;-><init>(II)V

    sput-object v0, LU/j;->b:LU/j;

    new-instance v0, LU/j;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LU/j;-><init>(II)V

    sput-object v0, LU/j;->c:LU/j;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LU/j;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, LU/j;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object v3, p2

    check-cast v3, [I

    move-object v4, p3

    check-cast v4, LH0/k;

    move-object v1, p4

    check-cast v1, LH0/b;

    move-object v5, p5

    check-cast v5, [I

    const-string p0, "size"

    invoke-static {v3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layoutDirection"

    invoke-static {v4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "density"

    invoke-static {v1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU/e;->a:LU/a;

    invoke-virtual/range {v0 .. v5}, LU/a;->c(LH0/b;I[ILH0/k;[I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast p2, [I

    check-cast p3, LH0/k;

    check-cast p4, LH0/b;

    check-cast p5, [I

    const-string p1, "size"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "density"

    invoke-static {p4, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LU/e;->b:LU/a;

    invoke-virtual {p1, p4, p0, p2, p5}, LU/a;->a(LH0/b;I[I[I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object v3, p2

    check-cast v3, [I

    move-object v4, p3

    check-cast v4, LH0/k;

    move-object v1, p4

    check-cast v1, LH0/b;

    move-object v5, p5

    check-cast v5, [I

    const-string p0, "size"

    invoke-static {v3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layoutDirection"

    invoke-static {v4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "density"

    invoke-static {v1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU/e;->a:LU/a;

    invoke-virtual/range {v0 .. v5}, LU/a;->c(LH0/b;I[ILH0/k;[I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast p2, [I

    check-cast p3, LH0/k;

    check-cast p4, LH0/b;

    check-cast p5, [I

    const-string p1, "size"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "density"

    invoke-static {p4, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LU/e;->b:LU/a;

    invoke-virtual {p1, p4, p0, p2, p5}, LU/a;->a(LH0/b;I[I[I)V

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
