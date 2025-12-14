.class public final LJb/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:LJb/s;

.field public static final c:LJb/s;

.field public static final d:LJb/s;

.field public static final e:LJb/s;

.field public static final f:LJb/s;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LJb/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJb/s;-><init>(I)V

    sput-object v0, LJb/s;->b:LJb/s;

    new-instance v0, LJb/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJb/s;-><init>(I)V

    sput-object v0, LJb/s;->c:LJb/s;

    new-instance v0, LJb/s;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LJb/s;-><init>(I)V

    sput-object v0, LJb/s;->d:LJb/s;

    new-instance v0, LJb/s;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LJb/s;-><init>(I)V

    sput-object v0, LJb/s;->e:LJb/s;

    new-instance v0, LJb/s;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LJb/s;-><init>(I)V

    sput-object v0, LJb/s;->f:LJb/s;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LJb/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LJb/s;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LJb/l;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LJb/b;

    invoke-interface {p1}, LJb/b;->m()Ljava/util/List;

    move-result-object p0

    const-string p1, "getTypeParameters(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LJb/l;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LJb/k;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LJb/l;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LJb/b;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LJb/H;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LMb/D;

    iget-object p0, p1, LMb/D;->f:Lhc/c;

    return-object p0

    :pswitch_3
    check-cast p1, Lhc/b;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
