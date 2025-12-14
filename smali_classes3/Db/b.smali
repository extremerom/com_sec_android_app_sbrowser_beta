.class public final LDb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:LDb/b;

.field public static final c:LDb/b;

.field public static final d:LDb/b;

.field public static final e:LDb/b;

.field public static final f:LDb/b;

.field public static final g:LDb/b;

.field public static final h:LDb/b;

.field public static final i:LDb/b;

.field public static final j:LDb/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LDb/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->b:LDb/b;

    new-instance v0, LDb/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->c:LDb/b;

    new-instance v0, LDb/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->d:LDb/b;

    new-instance v0, LDb/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->e:LDb/b;

    new-instance v0, LDb/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->f:LDb/b;

    new-instance v0, LDb/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->g:LDb/b;

    new-instance v0, LDb/b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->h:LDb/b;

    new-instance v0, LDb/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->i:LDb/b;

    new-instance v0, LDb/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LDb/b;-><init>(I)V

    sput-object v0, LDb/b;->j:LDb/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LDb/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "it"

    const-string v1, " | "

    const-string v2, "descriptor"

    const-string v3, "getType(...)"

    iget p0, p0, LDb/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, LPb/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LMb/T;

    sget-object p0, LDb/F0;->a:Ljc/j;

    check-cast p1, LMb/U;

    invoke-virtual {p1}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    invoke-static {p0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LDb/F0;->d(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LMb/T;

    sget-object p0, LDb/F0;->a:Ljc/j;

    check-cast p1, LMb/U;

    invoke-virtual {p1}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    invoke-static {p0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LDb/F0;->d(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LJb/v;

    sget-object p0, LDb/I;->a:LKc/j;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljc/j;->e:Ljc/j;

    invoke-virtual {v0, p1}, Ljc/j;->w(LJb/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LDb/G0;->c(LJb/v;)LG5/G;

    move-result-object p1

    invoke-virtual {p1}, LG5/G;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, LJb/P;

    sget-object p0, LDb/I;->a:LKc/j;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljc/j;->e:Ljc/j;

    invoke-virtual {v0, p1}, Ljc/j;->w(LJb/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LDb/G0;->b(LJb/P;)LG5/H;

    move-result-object p1

    invoke-virtual {p1}, LG5/H;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, LPb/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "getReturnType(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LPb/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Class;

    sget-object p0, LDb/c;->a:LA7/h;

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LDb/Y;

    invoke-direct {p0, p1}, LDb/Y;-><init>(Ljava/lang/Class;)V

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/Class;

    sget-object p0, LDb/c;->a:LA7/h;

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LDb/C;

    invoke-direct {p0, p1}, LDb/C;-><init>(Ljava/lang/Class;)V

    return-object p0

    nop

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
