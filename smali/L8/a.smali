.class public final LL8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/a;
.implements LJ4/b;
.implements LR5/c;
.implements Lf1/v;
.implements Luc/c;
.implements Luc/e;


# static fields
.field public static d:LL8/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LT3/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT3/c;-><init>(LT3/h;)V

    iput-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LL8/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, LL8/a;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, LL8/a;->c:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, LL8/a;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, LL8/a;->c:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LL8/a;->a:I

    iput-object p2, p0, LL8/a;->b:Ljava/lang/Object;

    iput-object p3, p0, LL8/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LJ2/U;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL8/a;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "newSetFromMap(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LL8/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJb/C;Lcom/google/firebase/messaging/q;Lvc/a;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, LL8/a;->a:I

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LL8/a;->b:Ljava/lang/Object;

    new-instance p3, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/auth/j;-><init>(LJb/C;Lcom/google/firebase/messaging/q;)V

    iput-object p3, p0, LL8/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LXb/f;)V
    .locals 2

    const/16 p1, 0xf

    iput p1, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lxc/l;

    const-string v0, "Type parameter upper bound erasure results"

    invoke-direct {p1, v0}, Lxc/l;-><init>(Ljava/lang/String;)V

    new-instance v0, Lyc/O;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lyc/O;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    new-instance v0, LMb/a;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p1

    iput-object p1, p0, LL8/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL8/a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LL8/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LL8/a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "sqlcipher_key"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, LL8/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL8/a;->c:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LL8/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x7

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, LL8/a;->b:Ljava/lang/Object;

    new-array v1, v0, [F

    iput-object v1, p0, LL8/a;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LL8/a;->b:Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LL8/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz7/d;III)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, LL8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LP0/j;

    invoke-direct {v0, p1, p2, p4}, LP0/j;-><init>(Lz7/d;II)V

    iput-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, LL8/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized q(Landroid/content/Context;)LL8/a;
    .locals 4

    const-class v0, LL8/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LL8/a;->d:LL8/a;

    if-nez v1, :cond_0

    new-instance v1, LL8/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LL8/a;-><init>(I)V

    const/4 v2, 0x0

    iput-object v2, v1, LL8/a;->b:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, LL8/a;->c:Ljava/lang/Object;

    const-string v2, "BackupMeta"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v1, LL8/a;->b:Ljava/lang/Object;

    sput-object v1, LL8/a;->d:LL8/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, LL8/a;->d:LL8/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lcc/T;Lec/g;)Ljava/util/ArrayList;
    .locals 2

    const-string v0, "proto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, Lvc/a;

    iget-object v0, v0, Ltc/a;->k:Lic/o;

    invoke-virtual {p1, v0}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lfb/v;->a:Lfb/v;

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h;

    invoke-virtual {p0, v1, p2}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b(LJ2/i0;Lic/m;Luc/b;)Ljava/util/List;
    .locals 2

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcc/A;

    iget-object v1, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v1, Lvc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lcc/I;

    if-eqz v0, :cond_4

    sget-object p2, Luc/a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported callable kind with property proto for receiver annotations: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    sget-object p2, Lfb/v;->a:Lfb/v;

    check-cast p2, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/h;

    iget-object v1, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    invoke-virtual {p0, v0, v1}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown message: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(LJ2/i0;Lcc/v;)Ljava/util/List;
    .locals 3

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, Lvc/a;

    iget-object v0, v0, Ltc/a;->h:Lic/o;

    invoke-virtual {p2, v0}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    sget-object p2, Lfb/v;->a:Lfb/v;

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h;

    iget-object v2, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v2, Lec/g;

    invoke-virtual {p0, v1, v2}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(LJ2/i0;Lcc/I;Lyc/w;)Ljava/lang/Object;
    .locals 0

    const-string p0, "proto"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(LJ2/i0;Lic/m;Luc/b;)Ljava/util/List;
    .locals 2

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcc/n;

    iget-object v1, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v1, Lvc/a;

    if-eqz v0, :cond_0

    check-cast p2, Lcc/n;

    iget-object p3, v1, Ltc/a;->b:Lic/o;

    invoke-virtual {p2, p3}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcc/A;

    if-eqz v0, :cond_1

    check-cast p2, Lcc/A;

    iget-object p3, v1, Ltc/a;->d:Lic/o;

    invoke-virtual {p2, p3}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcc/I;

    if-eqz v0, :cond_7

    sget-object v0, Luc/a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    check-cast p2, Lcc/I;

    iget-object p3, v1, Ltc/a;->g:Lic/o;

    invoke-virtual {p2, p3}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported callable kind with property proto"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast p2, Lcc/I;

    iget-object p3, v1, Ltc/a;->f:Lic/o;

    invoke-virtual {p2, p3}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_4
    check-cast p2, Lcc/I;

    iget-object p3, v1, Ltc/a;->e:Lic/o;

    invoke-virtual {p2, p3}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    if-nez p2, :cond_5

    sget-object p2, Lfb/v;->a:Lfb/v;

    :cond_5
    check-cast p2, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/h;

    iget-object v1, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    invoke-virtual {p0, v0, v1}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object p3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown message: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(LJ2/i0;Lic/m;Luc/b;ILcc/b0;)Ljava/util/List;
    .locals 0

    const-string p4, "callableProto"

    invoke-static {p2, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p2, Lvc/a;

    iget-object p2, p2, Ltc/a;->j:Lic/o;

    invoke-virtual {p5, p2}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    sget-object p2, Lfb/v;->a:Lfb/v;

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcc/h;

    iget-object p5, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast p5, Lec/g;

    invoke-virtual {p0, p4, p5}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public g(Luc/w;)Ljava/util/ArrayList;
    .locals 4

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, Lvc/a;

    iget-object v0, v0, Ltc/a;->c:Lic/o;

    iget-object v1, p1, Luc/w;->e:Lcc/k;

    invoke-virtual {v1, v0}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lfb/v;->a:Lfb/v;

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/h;

    iget-object v3, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v3, Lec/g;

    invoke-virtual {p0, v2, v3}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public get()Ljava/lang/Object;
    .locals 7

    new-instance v1, LO7/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LF6/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v3, LO4/a;->f:LO4/a;

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, LX4/i;

    invoke-virtual {v0}, LX4/i;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v6, LO4/h;

    move-object v4, v0

    check-cast v4, LO4/j;

    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lcb/a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LO4/h;-><init>(LQ4/a;LQ4/a;LO4/a;LO4/j;Lcb/a;)V

    return-object v6
.end method

.method public h(LJ2/i0;Lcc/I;)Ljava/util/List;
    .locals 3

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p2, Lvc/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lfb/v;->a:Lfb/v;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h;

    iget-object v2, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v2, Lec/g;

    invoke-virtual {p0, v1, v2}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public i(Lcc/Y;Lec/g;)Ljava/util/ArrayList;
    .locals 2

    const-string v0, "proto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, Lvc/a;

    iget-object v0, v0, Ltc/a;->l:Lic/o;

    invoke-virtual {p1, v0}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lfb/v;->a:Lfb/v;

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h;

    invoke-virtual {p0, v1, p2}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j(LJ2/i0;Lcc/I;Lyc/w;)Ljava/lang/Object;
    .locals 1

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, Lvc/a;

    iget-object v0, v0, Ltc/a;->i:Lic/o;

    invoke-static {p2, v0}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcc/e;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/auth/j;

    iget-object p1, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast p1, Lec/g;

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/auth/j;->o(Lyc/w;Lcc/e;Lec/g;)Lmc/g;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public k(LJ2/i0;Lcc/I;)Ljava/util/List;
    .locals 3

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p2, Lvc/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lfb/v;->a:Lfb/v;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h;

    iget-object v2, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v2, Lec/g;

    invoke-virtual {p0, v1, v2}, LL8/a;->r(Lcc/h;Lec/g;)LKb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public l()Ljava/io/File;
    .locals 3

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public m(LR5/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/auth/j;

    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v1, LN/f;

    invoke-virtual {v1, p0}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public n(LT3/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT3/c;

    if-nez v1, :cond_0

    new-instance v1, LT3/c;

    invoke-direct {v1, p1}, LT3/c;-><init>(LT3/h;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LT3/h;->a()V

    :goto_0
    iget-object p1, v1, LT3/c;->d:LT3/c;

    iget-object v0, v1, LT3/c;->c:LT3/c;

    iput-object v0, p1, LT3/c;->c:LT3/c;

    iget-object v0, v1, LT3/c;->c:LT3/c;

    iput-object p1, v0, LT3/c;->d:LT3/c;

    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, LT3/c;

    iput-object p0, v1, LT3/c;->d:LT3/c;

    iget-object p0, p0, LT3/c;->c:LT3/c;

    iput-object p0, v1, LT3/c;->c:LT3/c;

    iput-object v1, p0, LT3/c;->d:LT3/c;

    iget-object p0, v1, LT3/c;->d:LT3/c;

    iput-object v1, p0, LT3/c;->c:LT3/c;

    iget-object p0, v1, LT3/c;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-lez p0, :cond_2

    iget-object p1, v1, LT3/c;->b:Ljava/util/ArrayList;

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public o(LXb/a;)Lyc/d0;
    .locals 0

    iget-object p1, p1, LXb/a;->f:Lyc/A;

    if-eqz p1, :cond_0

    invoke-static {p1}, LG5/B;->l(Lyc/w;)Lyc/d0;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, LAc/i;

    :cond_1
    return-object p1
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 5

    invoke-static {p1, p2}, Lf1/W;->f(Landroid/view/View;Lf1/w0;)Lf1/w0;

    move-result-object p1

    iget-object p2, p1, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p2}, Lf1/u0;->m()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lf1/w0;->b()I

    move-result p2

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lf1/w0;->d()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lf1/w0;->c()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lf1/w0;->a()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lf1/W;->b(Landroid/view/View;Lf1/w0;)Lf1/w0;

    move-result-object v2

    invoke-virtual {v2}, Lf1/w0;->b()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lf1/w0;->d()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lf1/w0;->c()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lf1/w0;->a()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p0, p2, :cond_2

    new-instance p0, Lf1/n0;

    invoke-direct {p0, p1}, Lf1/n0;-><init>(Lf1/w0;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lf1/m0;

    invoke-direct {p0, p1}, Lf1/m0;-><init>(Lf1/w0;)V

    :goto_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2, v1, v0}, LX0/b;->b(IIII)LX0/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf1/m0;->f(LX0/b;)V

    invoke-virtual {p0}, Lf1/m0;->b()Lf1/w0;

    move-result-object p0

    return-object p0
.end method

.method public onComplete(LR5/h;)V
    .locals 1

    iget-object p1, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p1, LQ6/n;

    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast p0, LR5/i;

    iget-object v0, p1, LQ6/n;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, LQ6/n;->e:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public p(LJb/W;LXb/a;)Lyc/w;
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttr"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyc/P;

    invoke-direct {v0, p1, p2}, Lyc/P;-><init>(LJb/W;LXb/a;)V

    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast p0, Lxc/e;

    invoke-virtual {p0, v0}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/w;

    return-object p0
.end method

.method public r(Lcc/h;Lec/g;)LKb/c;
    .locals 1

    const-string v0, "proto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/auth/j;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/j;->i(Lcc/h;Lec/g;)LKb/c;

    move-result-object p0

    return-object p0
.end method

.method public s(LT3/h;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT3/c;

    if-nez v1, :cond_0

    new-instance v1, LT3/c;

    invoke-direct {v1, p1}, LT3/c;-><init>(LT3/h;)V

    iput-object v1, v1, LT3/c;->d:LT3/c;

    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, LT3/c;

    iget-object v2, p0, LT3/c;->d:LT3/c;

    iput-object v2, v1, LT3/c;->d:LT3/c;

    iput-object p0, v1, LT3/c;->c:LT3/c;

    iput-object v1, p0, LT3/c;->d:LT3/c;

    iget-object p0, v1, LT3/c;->d:LT3/c;

    iput-object v1, p0, LT3/c;->c:LT3/c;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LT3/h;->a()V

    :goto_0
    iget-object p0, v1, LT3/c;->b:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, LT3/c;->b:Ljava/util/ArrayList;

    :cond_1
    iget-object p0, v1, LT3/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t()[B
    .locals 4

    iget-object v0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "can\'t read keyset; the pref value "

    :try_start_0
    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, LG5/v2;->c(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/io/CharConversionException;

    const-string v2, " is not a valid hex string"

    invoke-static {v1, v0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, LL8/a;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, LT3/c;

    iget-object v1, p0, LT3/c;->c:LT3/c;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, LT3/c;->a:LT3/h;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, LT3/c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, LT3/c;->c:LT3/c;

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public u()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v0, LT3/c;

    iget-object v1, v0, LT3/c;->d:LT3/c;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, v1, LT3/c;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-lez v2, :cond_1

    iget-object v3, v1, LT3/c;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    iget-object v2, v1, LT3/c;->d:LT3/c;

    iget-object v3, v1, LT3/c;->c:LT3/c;

    iput-object v3, v2, LT3/c;->c:LT3/c;

    iget-object v3, v1, LT3/c;->c:LT3/c;

    iput-object v2, v3, LT3/c;->d:LT3/c;

    iget-object v2, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, v1, LT3/c;->a:LT3/h;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, LT3/h;->a()V

    iget-object v1, v1, LT3/c;->d:LT3/c;

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public v(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, LL8/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public w(Lyc/Y;Ljava/util/List;LXb/a;)Lgb/h;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Lgb/h;

    invoke-direct {v3}, Lgb/h;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/w;

    invoke-virtual {v4}, Lyc/w;->F0()Lyc/L;

    move-result-object v5

    invoke-interface {v5}, Lyc/L;->c()LJb/i;

    move-result-object v5

    instance-of v6, v5, LJb/f;

    if-eqz v6, :cond_14

    iget-object v0, v2, LXb/a;->e:Ljava/util/Set;

    invoke-virtual {v4}, Lyc/w;->I0()Lyc/d0;

    move-result-object v2

    instance-of v5, v2, Lyc/r;

    const-string v8, "getType(...)"

    const/16 v10, 0xa

    const-string v11, "getParameters(...)"

    const/4 v12, 0x0

    if-eqz v5, :cond_c

    move-object v5, v2

    check-cast v5, Lyc/r;

    iget-object v13, v5, Lyc/r;->b:Lyc/A;

    invoke-virtual {v13}, Lyc/w;->F0()Lyc/L;

    move-result-object v14

    invoke-interface {v14}, Lyc/L;->a()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v13}, Lyc/w;->F0()Lyc/L;

    move-result-object v14

    invoke-interface {v14}, Lyc/L;->c()LJb/i;

    move-result-object v14

    if-nez v14, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v13}, Lyc/w;->F0()Lyc/L;

    move-result-object v14

    invoke-interface {v14}, Lyc/L;->a()Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v14, v10}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LJb/W;

    invoke-virtual {v4}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v14}, LJb/W;->getIndex()I

    move-result v10

    invoke-static {v10, v7}, Lfb/n;->F(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/Q;

    if-eqz v0, :cond_1

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v7, :cond_2

    if-nez v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Lyc/Y;->f()Lyc/U;

    move-result-object v10

    invoke-virtual {v7}, Lyc/Q;->b()Lyc/w;

    move-result-object v6

    invoke-static {v6, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Lyc/U;->d(Lyc/w;)Lyc/Q;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    new-instance v7, Lyc/F;

    invoke-direct {v7, v14}, Lyc/F;-><init>(LJb/W;)V

    :cond_3
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0xa

    goto :goto_0

    :cond_4
    const/4 v6, 0x2

    invoke-static {v13, v15, v12, v6}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object v13

    :cond_5
    :goto_2
    iget-object v5, v5, Lyc/r;->c:Lyc/A;

    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->c()LJb/i;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LJb/W;

    invoke-virtual {v4}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9}, LJb/W;->getIndex()I

    move-result v11

    invoke-static {v11, v10}, Lfb/n;->F(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyc/Q;

    if-eqz v0, :cond_7

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    if-eqz v10, :cond_8

    if-nez v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Lyc/Y;->f()Lyc/U;

    move-result-object v11

    invoke-virtual {v10}, Lyc/Q;->b()Lyc/w;

    move-result-object v14

    invoke-static {v14, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lyc/U;->d(Lyc/w;)Lyc/Q;

    move-result-object v11

    if-nez v11, :cond_9

    :cond_8
    new-instance v10, Lyc/F;

    invoke-direct {v10, v9}, Lyc/F;-><init>(LJb/W;)V

    :cond_9
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const/4 v9, 0x2

    invoke-static {v5, v7, v12, v9}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object v5

    :cond_b
    :goto_5
    invoke-static {v13, v5}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object v0

    goto/16 :goto_9

    :cond_c
    instance-of v5, v2, Lyc/A;

    if-eqz v5, :cond_13

    move-object v5, v2

    check-cast v5, Lyc/A;

    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->c()LJb/i;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v5}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LJb/W;

    invoke-virtual {v4}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9}, LJb/W;->getIndex()I

    move-result v11

    invoke-static {v11, v10}, Lfb/n;->F(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyc/Q;

    if-eqz v0, :cond_e

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    :goto_7
    if-eqz v10, :cond_f

    if-nez v11, :cond_f

    invoke-virtual/range {p1 .. p1}, Lyc/Y;->f()Lyc/U;

    move-result-object v11

    invoke-virtual {v10}, Lyc/Q;->b()Lyc/w;

    move-result-object v13

    invoke-static {v13, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lyc/U;->d(Lyc/w;)Lyc/Q;

    move-result-object v11

    if-nez v11, :cond_10

    :cond_f
    new-instance v10, Lyc/F;

    invoke-direct {v10, v9}, Lyc/F;-><init>(LJb/W;)V

    :cond_10
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    const/4 v9, 0x2

    invoke-static {v5, v7, v12, v9}, Lyc/c;->r(Lyc/A;Ljava/util/List;Lyc/H;I)Lyc/A;

    move-result-object v0

    goto :goto_9

    :cond_12
    :goto_8
    move-object v0, v5

    :goto_9
    invoke-static {v0, v2}, Lyc/c;->i(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object v0

    sget-object v2, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-virtual {v1, v0, v2}, Lyc/Y;->g(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgb/h;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_14
    instance-of v4, v5, LJb/W;

    if-eqz v4, :cond_16

    iget-object v4, v2, LXb/a;->e:Ljava/util/Set;

    if-eqz v4, :cond_15

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_15

    invoke-virtual {v0, v2}, LL8/a;->o(LXb/a;)Lyc/d0;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgb/h;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    check-cast v5, LJb/W;

    invoke-interface {v5}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    const-string v5, "getUpperBounds(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v2}, LL8/a;->w(Lyc/Y;Ljava/util/List;LXb/a;)Lgb/h;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgb/h;->addAll(Ljava/util/Collection;)Z

    :cond_16
    :goto_a
    invoke-static {v3}, Lfb/F;->a(Lgb/h;)Lgb/h;

    move-result-object v0

    return-object v0
.end method
