.class public final LEc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LEc/e;


# static fields
.field public static final b:LEc/l;

.field public static final c:LEc/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LEc/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LEc/l;-><init>(I)V

    sput-object v0, LEc/l;->b:LEc/l;

    new-instance v0, LEc/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LEc/l;-><init>(I)V

    sput-object v0, LEc/l;->c:LEc/l;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LEc/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LUb/g;)Z
    .locals 4

    iget p0, p0, LEc/l;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, LMb/v;->H()Ljava/util/List;

    move-result-object p0

    const-string p1, "getValueParameters(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LMb/T;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Loc/d;->a(LMb/T;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, LMb/T;->k:Lyc/w;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, LMb/v;->H()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMb/T;

    sget-object p1, LGb/o;->d:LGb/n;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Loc/d;->j(LJb/l;)LJb/C;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LGb/p;->R:Lhc/b;

    invoke-static {v0, p1}, LJb/y;->d(LJb/C;Lhc/b;)LJb/f;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    sget-object v0, Lyc/H;->b:LA7/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyc/H;->c:Lyc/H;

    new-instance v1, Lyc/F;

    invoke-interface {p1}, LJb/i;->w()Lyc/L;

    move-result-object v2

    invoke-interface {v2}, Lyc/L;->a()Ljava/util/List;

    move-result-object v2

    const-string v3, "getParameters(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "single(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LJb/W;

    invoke-direct {v1, v2}, Lyc/F;-><init>(LJb/W;)V

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lyc/c;->t(Lyc/H;LJb/f;Ljava/util/List;)Lyc/A;

    move-result-object p1

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    check-cast p0, LMb/U;

    invoke-virtual {p0}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    const-string v1, "getType(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lyc/b0;->g(Lyc/w;Z)Lyc/d0;

    move-result-object p0

    sget-object v0, Lzc/d;->a:Lzc/l;

    invoke-virtual {v0, p1, p0}, Lzc/l;->b(Lyc/w;Lyc/w;)Z

    move-result v0

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(LUb/g;)Ljava/lang/String;
    .locals 1

    iget v0, p0, LEc/l;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LG5/t2;->d(LEc/e;LUb/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, LG5/t2;->d(LEc/e;LUb/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget p0, p0, LEc/l;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "should not have varargs or parameters with default values"

    return-object p0

    :pswitch_0
    const-string p0, "second parameter must be of type KProperty<*> or its supertype"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
