.class public final LWb/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:LWb/n;

.field public static final c:LWb/n;

.field public static final d:LWb/n;

.field public static final e:LWb/n;

.field public static final f:LWb/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LWb/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LWb/n;-><init>(I)V

    sput-object v0, LWb/n;->b:LWb/n;

    new-instance v0, LWb/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LWb/n;-><init>(I)V

    sput-object v0, LWb/n;->c:LWb/n;

    new-instance v0, LWb/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LWb/n;-><init>(I)V

    sput-object v0, LWb/n;->d:LWb/n;

    new-instance v0, LWb/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LWb/n;-><init>(I)V

    sput-object v0, LWb/n;->e:LWb/n;

    new-instance v0, LWb/n;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LWb/n;-><init>(I)V

    sput-object v0, LWb/n;->f:LWb/n;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LWb/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    iget p0, p0, LWb/n;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lyc/w;

    sget p0, LWb/E;->p:I

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    instance-of p1, p0, LJb/f;

    if-eqz p1, :cond_0

    check-cast p0, LJb/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Lrc/o;

    sget p0, LWb/E;->p:I

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lrc/o;->f()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :pswitch_1
    check-cast p1, LPb/v;

    sget p0, LWb/E;->p:I

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LPb/v;->b()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LMb/M;

    sget-object p0, LWb/B;->m:[LAb/u;

    const-string p0, "$this$selectMostSpecificInEachOverridableGroup"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_3
    check-cast p1, LPb/v;

    sget p0, LWb/p;->v:I

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LPb/v;->b()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
