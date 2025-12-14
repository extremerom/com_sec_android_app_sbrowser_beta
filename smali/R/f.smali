.class public final LR/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# static fields
.field public static final b:LR/f;

.field public static final c:LR/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LR/f;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LR/f;-><init>(II)V

    sput-object v0, LR/f;->b:LR/f;

    new-instance v0, LR/f;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LR/f;-><init>(II)V

    sput-object v0, LR/f;->c:LR/f;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LR/f;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, LR/f;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lz0/z;

    check-cast p2, Lz0/w;

    check-cast p3, LH0/a;

    iget-wide v0, p3, LH0/a;->a:J

    const-string p0, "$this$layout"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lz0/w;->o(J)Lz0/G;

    move-result-object p0

    sget p2, LR/k;->a:F

    const/4 p3, 0x2

    int-to-float p3, p3

    mul-float/2addr p2, p3

    invoke-interface {p1, p2}, LH0/b;->j(F)I

    move-result p2

    iget p3, p0, Lz0/G;->a:I

    add-int/2addr p3, p2

    iget v0, p0, Lz0/G;->b:I

    add-int/2addr v0, p2

    new-instance v1, LR/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, LR/e;-><init>(Lz0/G;II)V

    sget-object p0, Lfb/w;->a:Lfb/w;

    invoke-interface {p1, p3, v0, p0, v1}, Lz0/z;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lz0/z;

    check-cast p2, Lz0/w;

    check-cast p3, LH0/a;

    iget-wide v0, p3, LH0/a;->a:J

    const-string p0, "$this$layout"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lz0/w;->o(J)Lz0/G;

    move-result-object p0

    sget p2, LR/k;->a:F

    const/4 p3, 0x2

    int-to-float p3, p3

    mul-float/2addr p2, p3

    invoke-interface {p1, p2}, LH0/b;->j(F)I

    move-result p2

    invoke-virtual {p0}, Lz0/G;->s()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p0}, Lz0/G;->r()I

    move-result v0

    sub-int/2addr v0, p2

    new-instance v1, LR/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, LR/e;-><init>(Lz0/G;II)V

    sget-object p0, Lfb/w;->a:Lfb/w;

    invoke-interface {p1, p3, v0, p0, v1}, Lz0/z;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
