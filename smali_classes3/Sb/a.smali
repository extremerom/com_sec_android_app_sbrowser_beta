.class public final LSb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:LSb/a;

.field public static final c:LSb/a;

.field public static final d:LSb/a;

.field public static final e:LSb/a;

.field public static final f:LSb/a;

.field public static final g:LSb/a;

.field public static final h:LSb/a;

.field public static final i:LSb/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LSb/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LSb/a;-><init>(I)V

    sput-object v0, LSb/a;->b:LSb/a;

    new-instance v0, LSb/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LSb/a;-><init>(I)V

    sput-object v0, LSb/a;->c:LSb/a;

    new-instance v0, LSb/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LSb/a;-><init>(I)V

    sput-object v0, LSb/a;->d:LSb/a;

    new-instance v0, LSb/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LSb/a;-><init>(I)V

    sput-object v0, LSb/a;->e:LSb/a;

    new-instance v0, LSb/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LSb/a;-><init>(I)V

    sput-object v0, LSb/a;->f:LSb/a;

    new-instance v0, LSb/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LSb/a;-><init>(I)V

    sput-object v0, LSb/a;->g:LSb/a;

    new-instance v0, LSb/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LSb/a;-><init>(I)V

    sput-object v0, LSb/a;->h:LSb/a;

    new-instance v0, LSb/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LSb/a;-><init>(I)V

    sput-object v0, LSb/a;->i:LSb/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LSb/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "it"

    iget p0, p0, LSb/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LJb/d;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LGb/i;->A(LJb/l;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, LSb/e;->l:I

    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    sget-object v2, LSb/H;->e:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, LSb/a;->d:LSb/a;

    invoke-static {p1, p0}, Loc/d;->b(LJb/d;Lsb/k;)LJb/d;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, LG5/W3;->c(LJb/b;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, LSb/H;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, LSb/E;->ONE_COLLECTION_PARAMETER:LSb/E;

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_2
    sget-object p1, LSb/H;->d:Ljava/util/LinkedHashMap;

    invoke-static {p0, p1}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LSb/G;

    sget-object p1, LSb/G;->NULL:LSb/G;

    if-ne p0, p1, :cond_3

    sget-object p0, LSb/E;->OBJECT_PARAMETER_GENERIC:LSb/E;

    goto :goto_0

    :cond_3
    sget-object p0, LSb/E;->OBJECT_PARAMETER_NON_GENERIC:LSb/E;

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LJb/d;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, LSb/d;->l:I

    check-cast p1, LMb/M;

    invoke-static {p1}, LGb/i;->A(LJb/l;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, LMb/a;

    const/4 v2, 0x4

    invoke-direct {p0, v2, p1}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p0}, Loc/d;->b(LJb/d;Lsb/k;)LJb/d;

    move-result-object p0

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LJb/d;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Loc/d;->k(LJb/d;)LJb/d;

    move-result-object p0

    invoke-static {p0}, LG5/m2;->d(LJb/d;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LMb/T;

    check-cast p1, LMb/U;

    invoke-virtual {p1}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, LJb/d;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LG5/m2;->d(LJb/d;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, LJb/d;

    sget p0, LSb/e;->l:I

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LJb/v;

    if-eqz p0, :cond_7

    sget-object p0, LSb/H;->f:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1}, LG5/W3;->c(LJb/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, LJb/d;

    sget p0, LSb/e;->l:I

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LSb/H;->f:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1}, LG5/W3;->c(LJb/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, LSb/c;->c:Ljava/util/LinkedHashMap;

    const-string p0, "$this$extractNullability"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
