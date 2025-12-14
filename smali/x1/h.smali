.class public final Lx1/h;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:Lx1/h;

.field public static final c:Lx1/h;

.field public static final d:Lx1/h;

.field public static final e:Lx1/h;

.field public static final f:Lx1/h;

.field public static final g:Lx1/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lx1/h;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx1/h;-><init>(II)V

    sput-object v0, Lx1/h;->b:Lx1/h;

    new-instance v0, Lx1/h;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lx1/h;-><init>(II)V

    sput-object v0, Lx1/h;->c:Lx1/h;

    new-instance v0, Lx1/h;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lx1/h;-><init>(II)V

    sput-object v0, Lx1/h;->d:Lx1/h;

    new-instance v0, Lx1/h;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lx1/h;-><init>(II)V

    sput-object v0, Lx1/h;->e:Lx1/h;

    new-instance v0, Lx1/h;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lx1/h;-><init>(II)V

    sput-object v0, Lx1/h;->f:Lx1/h;

    new-instance v0, Lx1/h;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lx1/h;-><init>(II)V

    sput-object v0, Lx1/h;->g:Lx1/h;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lx1/h;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lx1/h;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Lx1/q;

    const-string p0, "cur"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lb2/b;

    if-eqz p0, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1

    :pswitch_0
    check-cast p1, Lx1/m;

    check-cast p2, Lx1/g;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p0, p2, Lx1/g;->a:Lx1/v;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-object p0, p1, Lx1/m;->c:Lx1/v;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Lx1/m;

    check-cast p2, LK1/k;

    iget p0, p2, LK1/k;->a:I

    const-string p2, "$this$set"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput p0, p1, Lx1/m;->d:I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Lx1/m;

    check-cast p2, Lx1/r;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lx1/m;->a(Lx1/r;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    check-cast p1, Lx1/m;

    check-cast p2, Lx1/u;

    const-string p0, "$this$set"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Lx1/m;->b:Lx1/u;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lx1/q;

    const-string p0, "acc"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
