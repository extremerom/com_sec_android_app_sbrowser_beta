.class public final LZb/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:LZb/n;

.field public static final c:LZb/n;

.field public static final d:LZb/n;

.field public static final e:LZb/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LZb/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LZb/n;-><init>(I)V

    sput-object v0, LZb/n;->b:LZb/n;

    new-instance v0, LZb/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LZb/n;-><init>(I)V

    sput-object v0, LZb/n;->c:LZb/n;

    new-instance v0, LZb/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LZb/n;-><init>(I)V

    sput-object v0, LZb/n;->d:LZb/n;

    new-instance v0, LZb/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LZb/n;-><init>(I)V

    sput-object v0, LZb/n;->e:LZb/n;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LZb/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, LZb/n;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LZb/o;

    const-string p0, "$this$function"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Spliterator"

    const-string v0, "java/util/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, LZb/l;->b:LZb/d;

    filled-new-array {v0, v0}, [LZb/d;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LZb/o;->b(Ljava/lang/String;[LZb/d;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Lyc/d0;

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p1

    sget-object v0, LIb/d;->f:Lhc/c;

    iget-object v1, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->f()Lhc/f;

    move-result-object v1

    invoke-static {p1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Loc/d;->c(LJb/m;)Lhc/c;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    check-cast p1, Lyc/d0;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LXb/j;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LJb/d;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/b;->p()Lyc/w;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0

    :pswitch_3
    check-cast p1, LJb/d;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/b;->N()LMb/w;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, LMb/w;->getType()Lyc/w;

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
