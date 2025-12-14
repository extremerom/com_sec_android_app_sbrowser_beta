.class public LZ3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/y;
.implements LR5/c;
.implements Lb7/a;
.implements Le4/a;
.implements Lj0/j;
.implements Le1/c;
.implements Lt3/k;
.implements Lw6/a;


# static fields
.field public static e:LZ3/x;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, LZ3/x;->a:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Li0/b;->b:Li0/f;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lv2/M;->c:Lv2/M;

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object p1

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    new-instance v0, LQc/h0;

    invoke-direct {v0, p1}, LQc/h0;-><init>(LQc/A0;)V

    iput-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    new-instance p1, LK6/l;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p0}, LK6/l;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void

    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    return-void

    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0xd -> :sswitch_3
        0x16 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, LZ3/x;->a:I

    iput-object p2, p0, LZ3/x;->d:Ljava/lang/Object;

    iput-object p3, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p4, p0, LZ3/x;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LG5/J2;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, LZ3/x;->a:I

    const/16 v0, 0x15

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    new-instance p1, Landroidx/databinding/i;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Landroidx/databinding/i;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ3/x;)V
    .locals 7

    const/16 v0, 0xe

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LZ3/x;->b:Ljava/lang/Object;

    check-cast p1, Lk7/b;

    invoke-virtual {p1}, Lk7/b;->h()I

    move-result v0

    new-array v1, v0, [Lg7/e;

    iput-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    new-array v1, v0, [Lg7/e;

    iput-object v1, p0, LZ3/x;->c:Ljava/lang/Object;

    new-array v0, v0, [Lg7/e;

    iput-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    iget-object v0, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk7/a;

    iget-object v4, v3, Lk7/a;->b:Lk7/g;

    invoke-virtual {v4, v1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk7/f;

    new-instance v6, Lg7/e;

    iget-object v5, v5, Lk7/f;->b:Lk7/p;

    invoke-direct {v6, v5}, Lg7/k;-><init>(Lk7/p;)V

    iget-object v5, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v5, [Lg7/e;

    iget v3, v3, Lk7/a;->a:I

    aput-object v6, v5, v3

    invoke-virtual {v4}, Lk7/g;->h()Lk7/f;

    move-result-object v4

    new-instance v5, Lg7/e;

    iget-object v4, v4, Lk7/f;->b:Lk7/p;

    invoke-direct {v5, v4}, Lg7/k;-><init>(Lk7/p;)V

    iget-object v6, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v6, [Lg7/e;

    aput-object v5, v6, v3

    new-instance v5, Lg7/e;

    invoke-direct {v5, v4}, Lg7/k;-><init>(Lk7/p;)V

    iget-object v4, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v4, [Lg7/e;

    aput-object v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(LZ3/x;[ILZ3/x;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p2, p0, LZ3/x;->c:Ljava/lang/Object;

    iput-object p3, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "addresses == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "order == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p2, p0, LZ3/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 2

    const/16 v0, 0x12

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/base/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/base/y;-><init>(I)V

    iput-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p2, p0, LZ3/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;LT3/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, LZ3/x;->b:Ljava/lang/Object;

    invoke-static {p2, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LZ3/x;->c:Ljava/lang/Object;

    new-instance p2, Lcom/bumptech/glide/load/data/h;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/h;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/M;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/L;

    invoke-direct {v0, p1}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LZ3/x;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li2/a;->b:Li2/a;

    invoke-direct {p0, p1, p2, v0}, LZ3/x;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0;Li2/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0;Li2/b;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LZ3/x;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p2, p0, LZ3/x;->c:Ljava/lang/Object;

    iput-object p3, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y0;)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, LZ3/x;->a:I

    const-string v0, "owner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v0

    instance-of v1, p1, Landroidx/lifecycle/w;

    if-eqz v1, :cond_0

    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/w;

    invoke-interface {v2}, Landroidx/lifecycle/w;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/w0;->a:Landroidx/lifecycle/w0;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/lifecycle/w0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Landroidx/lifecycle/w0;->a:Landroidx/lifecycle/w0;

    :cond_1
    sget-object v2, Landroidx/lifecycle/w0;->a:Landroidx/lifecycle/w0;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    if-eqz v1, :cond_2

    check-cast p1, Landroidx/lifecycle/w;

    invoke-interface {p1}, Landroidx/lifecycle/w;->getDefaultViewModelCreationExtras()Li2/b;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object p1, Li2/a;->b:Li2/a;

    :goto_1
    invoke-direct {p0, v0, v2, p1}, LZ3/x;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0;Li2/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, LZ3/x;->a:I

    const-string v0, "owner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v0

    instance-of v1, p1, Landroidx/lifecycle/w;

    if-eqz v1, :cond_0

    check-cast p1, Landroidx/lifecycle/w;

    invoke-interface {p1}, Landroidx/lifecycle/w;->getDefaultViewModelCreationExtras()Li2/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Li2/a;->b:Li2/a;

    :goto_0
    invoke-direct {p0, v0, p2, p1}, LZ3/x;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0;Li2/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessagingService;LJ7/c;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    iput-object p2, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/q;Lu5/d;Landroidx/emoji2/text/b;Ljava/util/Set;)V
    .locals 7

    const/4 v0, 0x3

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    iput-object p3, p0, LZ3/x;->d:Ljava/lang/Object;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    new-instance v1, Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    invoke-direct {v1, p2, p4, p3}, Ljava/lang/String;-><init>([III)V

    new-instance v6, LR2/i;

    invoke-direct {v6, v1}, LR2/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, LZ3/x;->E(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/l;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Lj0/l;Ljava/lang/String;Lsb/a;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p2, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p3, Ltb/m;

    iput-object p3, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    const/16 v0, 0xc

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    new-instance v0, Lo3/q;

    iget-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id.toString()"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo3/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Lfb/C;->g(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {p1, v0}, Lfb/l;->A([Ljava/lang/Object;Ljava/util/LinkedHashSet;)V

    iput-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LZ3/x;->a:I

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    iput-object p3, p0, LZ3/x;->c:Ljava/lang/Object;

    iput-object p4, p0, LZ3/x;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZ3/x;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LZ3/x;-><init>(I)V

    iput-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    iput-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    const/16 v0, 0x18

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/c;

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v3, [J

    iget-wide v4, v1, Lt2/c;->b:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Lt2/c;->c:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p1, [J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method public constructor <init>(Lk7/b;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/b;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    sget-object p1, Lorg/jsoup/parser/E;->c:Lorg/jsoup/parser/E;

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    new-instance p1, Lorg/jsoup/parser/D;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw6/q;)V
    .locals 7

    const/16 v0, 0x1c

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr1/f;

    new-instance v1, Lx6/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lx6/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lr1/f;-><init>(Ljava/lang/Object;LG5/C;)V

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    new-instance v3, Lr1/g;

    invoke-direct {v3, v1}, Lr1/g;-><init>(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1}, Lr1/g;->a(F)V

    const v4, 0x44bb8000    # 1500.0f

    invoke-virtual {v3, v4}, Lr1/g;->b(F)V

    iput-object v3, v0, Lr1/f;->u:Lr1/g;

    iput-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    new-instance v3, Lr1/f;

    new-instance v5, Lx6/a;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p0}, Lx6/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v3, p1, v5}, Lr1/f;-><init>(Ljava/lang/Object;LG5/C;)V

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float/2addr p1, v2

    new-instance v2, Lr1/g;

    invoke-direct {v2, p1}, Lr1/g;-><init>(F)V

    invoke-virtual {v2, v1}, Lr1/g;->a(F)V

    invoke-virtual {v2, v4}, Lr1/g;->b(F)V

    iput-object v2, v3, Lr1/f;->u:Lr1/g;

    iput-object v3, p0, LZ3/x;->c:Ljava/lang/Object;

    filled-new-array {v0, v3}, [Lr1/f;

    move-result-object p1

    invoke-static {p1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, LZ3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Ld7/q;->a(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    sget-object p1, Ld7/k;->e:Ld7/k;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {p1, v1}, Ld7/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, LG5/s2;->d([B)[B

    move-result-object p1

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    invoke-static {p1}, LG5/s2;->d([B)[B

    move-result-object p1

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public static C(Landroid/content/Context;Landroid/util/AttributeSet;[II)LZ3/x;
    .locals 2

    new-instance v0, LZ3/x;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LZ3/x;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static final j(LZ3/x;Lv2/s;Lv2/O;Lv2/O;)Lv2/s;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lv2/M;->c:Lv2/M;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lv2/s;->a:LEc/g;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iget-object v1, p2, Lv2/O;->a:LEc/g;

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget-object v3, p3, Lv2/O;->a:LEc/g;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-static {v0, v1, v1, v3}, LZ3/x;->n(LEc/g;LEc/g;LEc/g;LEc/g;)LEc/g;

    move-result-object v5

    if-eqz p1, :cond_3

    iget-object v0, p1, Lv2/s;->b:LEc/g;

    if-nez v0, :cond_4

    :cond_3
    move-object v0, p0

    :cond_4
    if-eqz p3, :cond_5

    iget-object v1, p3, Lv2/O;->b:LEc/g;

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    iget-object v3, p2, Lv2/O;->b:LEc/g;

    iget-object v4, p2, Lv2/O;->a:LEc/g;

    invoke-static {v0, v4, v3, v1}, LZ3/x;->n(LEc/g;LEc/g;LEc/g;LEc/g;)LEc/g;

    move-result-object v6

    if-eqz p1, :cond_7

    iget-object p1, p1, Lv2/s;->c:LEc/g;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move-object p0, p1

    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    iget-object v2, p3, Lv2/O;->c:LEc/g;

    :cond_8
    iget-object p1, p2, Lv2/O;->c:LEc/g;

    invoke-static {p0, v4, p1, v2}, LZ3/x;->n(LEc/g;LEc/g;LEc/g;LEc/g;)LEc/g;

    move-result-object v7

    new-instance p0, Lv2/s;

    move-object v4, p0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lv2/s;-><init>(LEc/g;LEc/g;LEc/g;Lv2/O;Lv2/O;)V

    return-object p0
.end method

.method public static n(LEc/g;LEc/g;LEc/g;LEc/g;)LEc/g;
    .locals 0

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    instance-of p2, p0, Lv2/L;

    if-eqz p2, :cond_2

    instance-of p1, p1, Lv2/M;

    if-eqz p1, :cond_1

    instance-of p1, p3, Lv2/M;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p1, p3, Lv2/K;

    if-eqz p1, :cond_3

    :cond_2
    :goto_0
    move-object p0, p3

    :cond_3
    return-object p0
.end method

.method public static o(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    if-eq v1, v2, :cond_6

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Landroidx/emoji2/text/s;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/s;

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 17

    move-object/from16 v1, p0

    const/4 v3, 0x2

    iget-object v0, v1, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, LJ7/c;

    const-string v4, "gcm.n.noui"

    invoke-virtual {v0, v4}, LJ7/c;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    return v4

    :cond_0
    iget-object v0, v1, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessagingService;

    const-string v5, "keyguard"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v7, "activity"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v5, :cond_2

    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v0, v5, :cond_3

    return v6

    :cond_3
    :goto_0
    iget-object v0, v1, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, LJ7/c;

    const-string v5, "gcm.n.image"

    invoke-virtual {v0, v5}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v8, "FirebaseMessaging"

    if-eqz v5, :cond_4

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :try_start_0
    new-instance v5, Lcom/google/firebase/messaging/n;

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Lcom/google/firebase/messaging/n;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Not downloading image, bad URL: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_5

    iget-object v0, v1, LZ3/x;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    new-instance v9, LR5/i;

    invoke-direct {v9}, LR5/i;-><init>()V

    new-instance v10, LGa/d;

    const/16 v11, 0xc

    invoke-direct {v10, v11, v5, v9}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v5, Lcom/google/firebase/messaging/n;->b:Ljava/util/concurrent/Future;

    iget-object v0, v9, LR5/i;->a:LR5/p;

    iput-object v0, v5, Lcom/google/firebase/messaging/n;->c:LR5/p;

    :cond_5
    iget-object v0, v1, LZ3/x;->c:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/google/firebase/messaging/FirebaseMessagingService;

    iget-object v0, v1, LZ3/x;->d:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, LJ7/c;

    sget-object v0, Lcom/google/firebase/messaging/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v11, "Couldn\'t get own application info: "

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x80

    :try_start_1
    invoke-virtual {v0, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_6

    :goto_3
    move-object v12, v0

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_3

    :goto_4
    const-string v0, "gcm.n.android_channel_id"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x3

    :try_start_2
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v15, 0x1a

    if-ge v14, v15, :cond_7

    :catch_2
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_7
    const-class v14, Landroid/app/NotificationManager;

    invoke-virtual {v9, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v14, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v15

    if-eqz v15, :cond_8

    goto :goto_7

    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "Notification Channel requested ("

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") has not been created by the app. Manifest configuration, or default, value will be used."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v0, "com.google.firebase.messaging.default_notification_channel_id"

    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v14, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    const-string v0, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const-string v0, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const-string v0, "fcm_fallback_notification_channel"

    invoke-virtual {v14, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-nez v7, :cond_d

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v4, "fcm_fallback_notification_channel_label"

    const-string v2, "string"

    invoke-virtual {v7, v4, v2, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name."

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Misc"

    goto :goto_6

    :cond_c
    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, v0, v2, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v14, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_d
    :goto_7
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v14, LU0/o;

    invoke-direct {v14, v9, v0}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "gcm.n.title"

    invoke-virtual {v10, v4, v2, v0}, LJ7/c;->s(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-static {v0}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v14, LU0/o;->e:Ljava/lang/CharSequence;

    :cond_e
    const-string v0, "gcm.n.body"

    invoke-virtual {v10, v4, v2, v0}, LJ7/c;->s(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual {v14, v0}, LU0/o;->d(Ljava/lang/CharSequence;)V

    new-instance v15, LU0/m;

    invoke-direct {v15, v3}, LJ8/i;-><init>(I)V

    invoke-static {v0}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v15, LU0/m;->d:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, LU0/o;->h(LJ8/i;)V

    :cond_f
    const-string v0, "gcm.n.icon"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_12

    const-string v15, "drawable"

    invoke-virtual {v4, v0, v15, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_10

    goto :goto_9

    :cond_10
    const-string v15, "mipmap"

    invoke-virtual {v4, v0, v15, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_11

    goto :goto_9

    :cond_11
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v13, "Icon resource "

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Notification will use default icon."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v0, "com.google.firebase.messaging.default_notification_icon"

    invoke-virtual {v12, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_13

    goto :goto_8

    :cond_13
    :try_start_3
    invoke-virtual {v7, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    if-eqz v13, :cond_14

    move v15, v13

    goto :goto_9

    :cond_14
    const v0, 0x1080093

    move v15, v0

    :goto_9
    iget-object v0, v14, LU0/o;->z:Landroid/app/Notification;

    iput v15, v0, Landroid/app/Notification;->icon:I

    const-string v0, "gcm.n.sound2"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v0, "gcm.n.sound"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v0, 0x0

    goto :goto_a

    :cond_16
    const-string v11, "default"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    const-string v11, "raw"

    invoke-virtual {v4, v0, v11, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "android.resource://"

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/raw/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a

    :cond_17
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :goto_a
    const/4 v4, -0x1

    if-eqz v0, :cond_18

    iget-object v11, v14, LU0/o;->z:Landroid/app/Notification;

    iput-object v0, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput v4, v11, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, LU0/n;->b()Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v13, 0x4

    invoke-static {v0, v13}, LU0/n;->c(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v13, 0x5

    invoke-static {v0, v13}, LU0/n;->d(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0}, LU0/n;->a(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, v11, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_18
    const-string v0, "gcm.n.click_action"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_c

    :cond_19
    const-string v0, "gcm.n.link_android"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const-string v0, "gcm.n.link"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1b

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1c

    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_c

    :cond_1c
    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_1d

    const-string v0, "No activity found to launch app"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_c
    sget-object v0, Lcom/google/firebase/messaging/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v2, 0x44000000    # 512.0f

    const-string v11, "google.c.a.e"

    if-nez v7, :cond_1e

    const/4 v3, 0x0

    goto :goto_e

    :cond_1e
    const/high16 v13, 0x4000000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v13, Landroid/os/Bundle;

    iget-object v15, v10, LJ7/c;->b:Ljava/lang/Object;

    check-cast v15, Landroid/os/Bundle;

    invoke-direct {v13, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v15}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_21

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    const-string v3, "google.c."

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "gcm.n."

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "gcm.notification."

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1f
    invoke-virtual {v13, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_20
    const/4 v3, 0x2

    const/4 v4, -0x1

    goto :goto_d

    :cond_21
    invoke-virtual {v7, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v10, v11}, LJ7/c;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v10}, LJ7/c;->v()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "gcm.n.analytics_data"

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v9, v3, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_e
    iput-object v3, v14, LU0/o;->g:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, LJ7/c;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    const/4 v0, 0x0

    goto :goto_f

    :cond_23
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, LJ7/c;->v()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/content/ComponentName;

    const-string v11, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    invoke-direct {v7, v9, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const-string v7, "wrapped_intent"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v9, v0, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_24

    iget-object v2, v14, LU0/o;->z:Landroid/app/Notification;

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_24
    const-string v0, "gcm.n.color"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    :try_start_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_10

    :catch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Color is invalid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Notification will use default color."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const-string v0, "com.google.firebase.messaging.default_notification_color"

    invoke-virtual {v12, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    :try_start_5
    invoke-virtual {v9, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_10

    :catch_5
    const-string v0, "Cannot find the color resource referenced in AndroidManifest."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, LU0/o;->u:I

    :cond_27
    const-string v0, "gcm.n.sticky"

    invoke-virtual {v10, v0}, LJ7/c;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const/16 v2, 0x10

    invoke-virtual {v14, v2, v0}, LU0/o;->f(IZ)V

    const-string v0, "gcm.n.local_only"

    invoke-virtual {v10, v0}, LJ7/c;->h(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v14, LU0/o;->s:Z

    const-string v0, "gcm.n.ticker"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v2, v14, LU0/o;->z:Landroid/app/Notification;

    invoke-static {v0}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_28
    const-string v0, "gcm.n.notification_priority"

    invoke-virtual {v10, v0}, LJ7/c;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, -0x2

    if-nez v0, :cond_29

    :goto_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v2, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_2b

    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notificationPriority is invalid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting notificationPriority."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_2b
    :goto_12
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, LU0/o;->j:I

    :cond_2c
    const-string v0, "gcm.n.visibility"

    invoke-virtual {v10, v0}, LJ7/c;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "NotificationParams"

    if-nez v0, :cond_2d

    :goto_13
    const/4 v0, 0x0

    goto :goto_14

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, -0x1

    if-lt v4, v7, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_2f

    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "visibility is invalid: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting visibility."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_2f
    :goto_14
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, LU0/o;->v:I

    :cond_30
    const-string v0, "gcm.n.notification_count"

    invoke-virtual {v10, v0}, LJ7/c;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_31

    :goto_15
    const/4 v0, 0x0

    goto :goto_16

    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "notificationCount is invalid: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting notificationCount."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_32
    :goto_16
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, LU0/o;->i:I

    :cond_33
    const-string v0, "gcm.n.event_time"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    :try_start_6
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_17

    :catch_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Couldn\'t parse value of "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LJ7/c;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") into a long"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_35

    const/4 v4, 0x1

    iput-boolean v4, v14, LU0/o;->k:Z

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v0, v14, LU0/o;->z:Landroid/app/Notification;

    iput-wide v11, v0, Landroid/app/Notification;->when:J

    :cond_35
    const-string v0, "gcm.n.vibrate_timings"

    invoke-virtual {v10, v0}, LJ7/c;->r(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_36

    :goto_18
    const/4 v9, 0x0

    goto :goto_1a

    :cond_36
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_37

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v9, v4, [J

    move v11, v6

    :goto_19
    if-ge v11, v4, :cond_38

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v12

    aput-wide v12, v9, v11

    add-int/2addr v11, v7

    goto :goto_19

    :cond_37
    new-instance v4, Lorg/json/JSONException;

    const-string v7, "vibrateTimings have invalid length"

    invoke-direct {v4, v7}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "User defined vibrateTimings is invalid: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting vibrateTimings."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_38
    :goto_1a
    if-eqz v9, :cond_39

    iget-object v0, v14, LU0/o;->z:Landroid/app/Notification;

    iput-object v9, v0, Landroid/app/Notification;->vibrate:[J

    :cond_39
    const-string v4, ". Skipping setting LightSettings"

    const-string v7, "LightSettings is invalid: "

    const-string v0, "gcm.n.light_settings"

    invoke-virtual {v10, v0}, LJ7/c;->r(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v9, :cond_3a

    :goto_1b
    const/4 v0, 0x0

    goto :goto_1d

    :cond_3a
    const/4 v11, 0x3

    new-array v0, v11, [I

    :try_start_8
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ne v12, v11, :cond_3c

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const/high16 v12, -0x1000000

    if-eq v11, v12, :cond_3b

    aput v11, v0, v6

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v0, v11

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v0, v11

    goto :goto_1d

    :catch_8
    move-exception v0

    goto :goto_1c

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v11, "Transparent color is invalid"

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-instance v0, Lorg/json/JSONException;

    const-string v11, "lightSettings don\'t have all three fields"

    invoke-direct {v0, v11}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_1c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ". "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :goto_1d
    if-eqz v0, :cond_3e

    aget v3, v0, v6

    const/4 v4, 0x1

    aget v7, v0, v4

    const/4 v4, 0x2

    aget v0, v0, v4

    iget-object v4, v14, LU0/o;->z:Landroid/app/Notification;

    iput v3, v4, Landroid/app/Notification;->ledARGB:I

    iput v7, v4, Landroid/app/Notification;->ledOnMS:I

    iput v0, v4, Landroid/app/Notification;->ledOffMS:I

    if-eqz v7, :cond_3d

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_3d
    move v0, v6

    :goto_1e
    iget v3, v4, Landroid/app/Notification;->flags:I

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    iput v0, v4, Landroid/app/Notification;->flags:I

    :cond_3e
    const-string v0, "gcm.n.default_sound"

    invoke-virtual {v10, v0}, LJ7/c;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "gcm.n.default_vibrate_timings"

    invoke-virtual {v10, v2}, LJ7/c;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x2

    or-int/2addr v0, v2

    :cond_3f
    const-string v2, "gcm.n.default_light_settings"

    invoke-virtual {v10, v2}, LJ7/c;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x4

    or-int/2addr v0, v2

    :cond_40
    invoke-virtual {v14, v0}, LU0/o;->e(I)V

    const-string v0, "gcm.n.tag"

    invoke-virtual {v10, v0}, LJ7/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    :goto_1f
    move-object v2, v0

    goto :goto_20

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FCM-Notification:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :goto_20
    if-nez v5, :cond_42

    :goto_21
    const/4 v3, 0x3

    goto :goto_25

    :cond_42
    :try_start_9
    iget-object v0, v5, Lcom/google/firebase/messaging/n;->c:LR5/p;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x5

    invoke-static {v0, v9, v10, v3}, LG5/G;->c(LR5/p;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_43

    const/4 v3, 0x0

    goto :goto_22

    :cond_43
    new-instance v3, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object v0, v3, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_22
    iput-object v3, v14, LU0/o;->h:Landroidx/core/graphics/drawable/IconCompat;

    new-instance v3, LU0/l;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, LJ8/i;-><init>(I)V

    if-nez v0, :cond_44

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_23

    :cond_44
    new-instance v4, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object v0, v4, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_23
    iput-object v4, v3, LU0/l;->d:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v4, 0x0

    iput-object v4, v3, LU0/l;->e:Landroidx/core/graphics/drawable/IconCompat;

    iput-boolean v7, v3, LU0/l;->f:Z

    invoke-virtual {v14, v3}, LU0/o;->h(LJ8/i;)V
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_21

    :catch_a
    move-exception v0

    goto :goto_24

    :catch_b
    const-string v0, "Failed to download image in time, showing notification without it"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/google/firebase/messaging/n;->close()V

    goto :goto_21

    :catch_c
    const-string v0, "Interrupted while downloading image, showing notification without it"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/google/firebase/messaging/n;->close()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_21

    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to download image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :goto_25
    invoke-static {v8, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "Showing notification"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iget-object v0, v1, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessagingService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v14}, LU0/o;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 v1, 0x1

    return v1
.end method

.method public B(Ljava/lang/CharSequence;IILandroidx/emoji2/text/r;)Z
    .locals 6

    const/4 v0, 0x1

    iget v1, p4, Landroidx/emoji2/text/r;->c:I

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/b;

    invoke-virtual {p4}, Landroidx/emoji2/text/r;->c()Ls1/a;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lf1/L;->b(I)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, v1, Lf1/L;->d:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    iget v1, v1, Lf1/L;->a:I

    add-int/2addr v4, v1

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/emoji2/text/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/emoji2/text/b;->a:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, LX0/c;->a:I

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result p0

    iget p1, p4, Landroidx/emoji2/text/r;->c:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p0, :cond_3

    or-int/lit8 p0, p1, 0x2

    goto :goto_1

    :cond_3
    or-int/lit8 p0, p1, 0x1

    :goto_1
    iput p0, p4, Landroidx/emoji2/text/r;->c:I

    :cond_4
    iget p0, p4, Landroidx/emoji2/text/r;->c:I

    and-int/lit8 p0, p0, 0x3

    if-ne p0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0
.end method

.method public D(Landroidx/lifecycle/B;)V
    .locals 2

    iget-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/q0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/q0;->run()V

    :cond_0
    new-instance v0, Landroidx/lifecycle/q0;

    iget-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/L;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/q0;-><init>(Landroidx/lifecycle/L;Landroidx/lifecycle/B;)V

    iput-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public E(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/l;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    new-instance v5, LD0/b;

    iget-object v6, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/firebase/messaging/q;

    iget-object v6, v6, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/emoji2/text/o;

    invoke-direct {v5, v6}, LD0/b;-><init>(Landroidx/emoji2/text/o;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v9, v6

    move v11, v7

    move v10, v8

    move/from16 v6, p2

    :cond_0
    :goto_0
    move v8, v6

    :goto_1
    const/4 v12, 0x2

    if-ge v6, v2, :cond_f

    if-ge v10, v3, :cond_f

    if-eqz v11, :cond_f

    iget-object v13, v5, LD0/b;->f:Ljava/lang/Object;

    check-cast v13, Landroidx/emoji2/text/o;

    iget-object v13, v13, Landroidx/emoji2/text/o;->a:Landroid/util/SparseArray;

    if-nez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/emoji2/text/o;

    :goto_2
    iget v14, v5, LD0/b;->b:I

    const/4 v15, 0x3

    if-eq v14, v12, :cond_3

    if-nez v13, :cond_2

    invoke-virtual {v5}, LD0/b;->d()V

    :goto_3
    move v13, v7

    goto :goto_6

    :cond_2
    iput v12, v5, LD0/b;->b:I

    iput-object v13, v5, LD0/b;->f:Ljava/lang/Object;

    iput v7, v5, LD0/b;->d:I

    :goto_4
    move v13, v12

    goto :goto_6

    :cond_3
    if-eqz v13, :cond_4

    iput-object v13, v5, LD0/b;->f:Ljava/lang/Object;

    iget v13, v5, LD0/b;->d:I

    add-int/2addr v13, v7

    iput v13, v5, LD0/b;->d:I

    goto :goto_4

    :cond_4
    const v13, 0xfe0e

    if-ne v9, v13, :cond_5

    invoke-virtual {v5}, LD0/b;->d()V

    goto :goto_3

    :cond_5
    const v13, 0xfe0f

    if-ne v9, v13, :cond_6

    goto :goto_4

    :cond_6
    iget-object v13, v5, LD0/b;->f:Ljava/lang/Object;

    check-cast v13, Landroidx/emoji2/text/o;

    iget-object v14, v13, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/r;

    if-eqz v14, :cond_9

    iget v14, v5, LD0/b;->d:I

    if-ne v14, v7, :cond_8

    invoke-virtual {v5}, LD0/b;->e()Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v5, LD0/b;->f:Ljava/lang/Object;

    check-cast v13, Landroidx/emoji2/text/o;

    iput-object v13, v5, LD0/b;->g:Ljava/lang/Object;

    invoke-virtual {v5}, LD0/b;->d()V

    :goto_5
    move v13, v15

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, LD0/b;->d()V

    goto :goto_3

    :cond_8
    iput-object v13, v5, LD0/b;->g:Ljava/lang/Object;

    invoke-virtual {v5}, LD0/b;->d()V

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, LD0/b;->d()V

    goto :goto_3

    :goto_6
    iput v9, v5, LD0/b;->c:I

    if-eq v13, v7, :cond_e

    if-eq v13, v12, :cond_c

    if-eq v13, v15, :cond_a

    goto :goto_1

    :cond_a
    if-nez p5, :cond_b

    iget-object v12, v5, LD0/b;->g:Ljava/lang/Object;

    check-cast v12, Landroidx/emoji2/text/o;

    iget-object v12, v12, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/r;

    invoke-virtual {v0, v1, v8, v6, v12}, LZ3/x;->B(Ljava/lang/CharSequence;IILandroidx/emoji2/text/r;)Z

    move-result v12

    if-nez v12, :cond_0

    :cond_b
    iget-object v11, v5, LD0/b;->g:Ljava/lang/Object;

    check-cast v11, Landroidx/emoji2/text/o;

    iget-object v11, v11, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/r;

    invoke-interface {v4, v1, v8, v6, v11}, Landroidx/emoji2/text/l;->n0(Ljava/lang/CharSequence;IILandroidx/emoji2/text/r;)Z

    move-result v11

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v12, v6

    if-ge v12, v2, :cond_d

    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    move v9, v6

    :cond_d
    move v6, v12

    goto/16 :goto_1

    :cond_e
    invoke-static {v1, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v8

    if-ge v6, v2, :cond_0

    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    move v9, v8

    goto/16 :goto_0

    :cond_f
    iget v2, v5, LD0/b;->b:I

    if-ne v2, v12, :cond_12

    iget-object v2, v5, LD0/b;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/o;

    iget-object v2, v2, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/r;

    if-eqz v2, :cond_12

    iget v2, v5, LD0/b;->d:I

    if-gt v2, v7, :cond_10

    invoke-virtual {v5}, LD0/b;->e()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    if-ge v10, v3, :cond_12

    if-eqz v11, :cond_12

    if-nez p5, :cond_11

    iget-object v2, v5, LD0/b;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/o;

    iget-object v2, v2, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/r;

    invoke-virtual {v0, v1, v8, v6, v2}, LZ3/x;->B(Ljava/lang/CharSequence;IILandroidx/emoji2/text/r;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, v5, LD0/b;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/o;

    iget-object v0, v0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/r;

    invoke-interface {v4, v1, v8, v6, v0}, Landroidx/emoji2/text/l;->n0(Ljava/lang/CharSequence;IILandroidx/emoji2/text/r;)Z

    :cond_12
    invoke-interface/range {p6 .. p6}, Landroidx/emoji2/text/l;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public F()V
    .locals 0

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public G(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, La0/b;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iput-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, LZ3/x;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/f;

    invoke-virtual {v3, v0, v1}, Li0/f;->a(J)I

    move-result v4

    if-gez v4, :cond_1

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1, p1}, Li0/f;->b(JLjava/lang/Object;)Li0/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p0, v3, Li0/f;->c:[Ljava/lang/Object;

    aput-object p1, p0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public H(Lv2/O;)V
    .locals 1

    const-string v0, "states"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lv2/O;->a:LEc/g;

    iput-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    iget-object v0, p1, Lv2/O;->c:LEc/g;

    iput-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    iget-object p1, p1, Lv2/O;->b:LEc/g;

    iput-object p1, p0, LZ3/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public I(Lv2/P;LEc/g;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv2/U;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput-object p2, p0, LZ3/x;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iput-object p2, p0, LZ3/x;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object p2, p0, LZ3/x;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public J()Lv2/O;
    .locals 3

    new-instance v0, Lv2/O;

    iget-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, LEc/g;

    iget-object v2, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v2, LEc/g;

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, LEc/g;

    invoke-direct {v0, v1, v2, p0}, Lv2/O;-><init>(LEc/g;LEc/g;LEc/g;)V

    return-object v0
.end method

.method public K()V
    .locals 3

    iget-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v0, Lj0/l;

    iget-object v1, v0, Lj0/l;->c:Ljava/util/LinkedHashMap;

    iget-object v2, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Ltb/m;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_1

    move-object p0, v1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lj0/l;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lm4/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm4/b;

    invoke-interface {v0}, Lm4/b;->d()Lm4/e;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm4/e;->a:Z

    :cond_0
    iget-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Lm4/c;

    invoke-interface {v0, p1}, Lm4/c;->a(Ljava/lang/Object;)V

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Le1/d;

    invoke-virtual {p0, p1}, Le1/d;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b(LS3/C;LQ3/k;)LS3/C;
    .locals 2

    invoke-interface {p1}, LS3/C;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v0, LT3/a;

    invoke-static {v0, p1}, LZ3/d;->d(LT3/a;Landroid/graphics/Bitmap;)LZ3/d;

    move-result-object p1

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, LMd/c;

    invoke-virtual {p0, p1, p2}, LMd/c;->b(LS3/C;LQ3/k;)LS3/C;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v0, Ld4/b;

    if-eqz v0, :cond_1

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Le4/c;

    invoke-virtual {p0, p1, p2}, Le4/c;->b(LS3/C;LQ3/k;)LS3/C;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(I[B)[B
    .locals 8

    const/16 v0, 0x10

    if-gt p1, v0, :cond_3

    sget-object v1, Ld7/k;->e:Ld7/k;

    const-string v2, "AES/ECB/NoPadding"

    invoke-virtual {v1, v2}, Ld7/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    iget-object v2, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v2, p2

    int-to-double v4, v2

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v4, v2, 0x10

    array-length v5, p2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v0

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {v4, v6, v0, p2, p0}, LG5/u2;->k(III[B[B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v0

    array-length v5, p2

    invoke-static {p2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    array-length v5, v4

    if-ge v5, v0, :cond_2

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    array-length v4, v4

    const/16 v7, -0x80

    aput-byte v7, v5, v4

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {v5, p0}, LG5/u2;->l([B[B)[B

    move-result-object p0

    :goto_0
    new-array v4, v0, [B

    move v5, v6

    :goto_1
    add-int/lit8 v7, v2, -0x1

    if-ge v5, v7, :cond_1

    mul-int/lit8 v7, v5, 0x10

    invoke-static {v6, v7, v0, v4, p2}, LG5/u2;->k(III[B[B)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v4}, LG5/u2;->l([B[B)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x must be smaller than a block."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "outputLength too large, max is 16 bytes"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, Le1/d;

    invoke-virtual {v0}, Le1/d;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Lm4/a;

    invoke-interface {p0}, Lm4/a;->create()Ljava/lang/Object;

    move-result-object v0

    const-string p0, "FactoryPools"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created new "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of p0, v0, Lm4/b;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Lm4/b;

    invoke-interface {p0}, Lm4/b;->d()Lm4/e;

    move-result-object p0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lm4/e;->a:Z

    :cond_1
    return-object v0
.end method

.method public e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/data/h;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()I
    .locals 10

    iget-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/h;

    iget-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, LT3/f;

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQ3/f;

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, LZ3/z;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v7, v8, v1}, LZ3/z;-><init>(Ljava/io/InputStream;LT3/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v5, v7, v1}, LQ3/f;->d(Ljava/io/InputStream;LT3/f;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, LZ3/z;->b()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    if-eq v5, v4, :cond_0

    move v4, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v6, v7

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, LZ3/z;->b()V

    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    throw p0

    :cond_2
    :goto_2
    return v4
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScaleSpringAnimation"

    return-object p0
.end method

.method public h(Ljava/lang/Object;Lt3/f;)V
    .locals 2

    check-cast p1, Lt3/c;

    iget-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v0, Lg3/n;

    iget-object v0, v0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v0

    iget-object v1, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v0

    iget-object v1, v0, Lo3/q;->c:Ljava/lang/String;

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteListenableWorker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    iget-object v0, v0, Lo3/q;->c:Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->e:Landroidx/work/WorkerParameters;

    invoke-direct {v1, v0, p0}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;)V

    invoke-static {v1}, LG5/k2;->k(Landroid/os/Parcelable;)[B

    move-result-object p0

    check-cast p1, Lt3/a;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    sget-object v1, Lt3/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p1, Lt3/a;->a:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public i()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 9

    iget-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/h;

    iget-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, LT3/f;

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ3/f;

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, LZ3/z;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v7, v1}, LZ3/z;-><init>(Ljava/io/InputStream;LT3/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v4, v6}, LQ3/f;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, LZ3/z;->b()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, LZ3/z;->b()V

    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    throw p0

    :cond_2
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_2
    return-object v4
.end method

.method public k([ILandroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, LO7/a;

    invoke-direct {v0, p1, p2}, LO7/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p1, LK6/l;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l(FF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "animateToFinalPosition scaleX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    iget-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Lr1/f;

    invoke-virtual {v1, p1}, Lr1/f;->f(F)V

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, Lr1/f;

    mul-float/2addr p2, v0

    invoke-virtual {p0, p2}, Lr1/f;->f(F)V

    return-void
.end method

.method public m()Lf3/x;
    .locals 37

    move-object/from16 v0, p0

    new-instance v1, Lf3/x;

    iget-object v2, v0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    iget-object v3, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v3, Lo3/q;

    iget-object v4, v0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-direct {v1, v2, v3, v4}, Lf3/G;-><init>(Ljava/util/UUID;Lo3/q;Ljava/util/Set;)V

    iget-object v2, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v2, Lo3/q;

    iget-object v2, v2, Lo3/q;->j:Lf3/f;

    invoke-virtual {v2}, Lf3/f;->a()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lf3/f;->d:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lf3/f;->b:Z

    if-nez v3, :cond_1

    iget-boolean v2, v2, Lf3/f;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget-object v3, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v3, Lo3/q;

    iget-boolean v4, v3, Lo3/q;->q:Z

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    iget-wide v2, v3, Lo3/q;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "randomUUID()"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, LZ3/x;->b:Ljava/lang/Object;

    new-instance v3, Lo3/q;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "id.toString()"

    invoke-static {v5, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v2, Lo3/q;

    const-string v4, "other"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v2, Lo3/q;->b:Lf3/E;

    iget-object v8, v2, Lo3/q;->d:Ljava/lang/String;

    new-instance v4, Lf3/i;

    move-object v9, v4

    iget-object v7, v2, Lo3/q;->e:Lf3/i;

    invoke-direct {v4, v7}, Lf3/i;-><init>(Lf3/i;)V

    new-instance v4, Lf3/i;

    move-object v10, v4

    iget-object v7, v2, Lo3/q;->f:Lf3/i;

    invoke-direct {v4, v7}, Lf3/i;-><init>(Lf3/i;)V

    iget-wide v11, v2, Lo3/q;->g:J

    iget-wide v13, v2, Lo3/q;->h:J

    move-object/from16 v36, v1

    iget-wide v0, v2, Lo3/q;->i:J

    move-wide v15, v0

    new-instance v0, Lf3/f;

    move-object/from16 v17, v0

    iget-object v1, v2, Lo3/q;->j:Lf3/f;

    invoke-direct {v0, v1}, Lf3/f;-><init>(Lf3/f;)V

    iget v0, v2, Lo3/q;->k:I

    move/from16 v18, v0

    iget-object v0, v2, Lo3/q;->l:Lf3/a;

    move-object/from16 v19, v0

    iget-wide v0, v2, Lo3/q;->m:J

    move-wide/from16 v20, v0

    iget-wide v0, v2, Lo3/q;->n:J

    move-wide/from16 v22, v0

    iget-wide v0, v2, Lo3/q;->o:J

    move-wide/from16 v24, v0

    iget-wide v0, v2, Lo3/q;->p:J

    move-wide/from16 v26, v0

    iget-boolean v0, v2, Lo3/q;->q:Z

    move/from16 v28, v0

    iget-object v0, v2, Lo3/q;->r:Lf3/C;

    move-object/from16 v29, v0

    iget-wide v0, v2, Lo3/q;->u:J

    move-wide/from16 v31, v0

    iget v0, v2, Lo3/q;->v:I

    move/from16 v33, v0

    iget-object v7, v2, Lo3/q;->c:Ljava/lang/String;

    iget v0, v2, Lo3/q;->s:I

    move/from16 v30, v0

    iget v0, v2, Lo3/q;->w:I

    move/from16 v34, v0

    const/high16 v35, 0x80000

    move-object v4, v3

    invoke-direct/range {v4 .. v35}, Lo3/q;-><init>(Ljava/lang/String;Lf3/E;Ljava/lang/String;Ljava/lang/String;Lf3/i;Lf3/i;JJJLf3/f;ILf3/a;JJJJZLf3/C;IJIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, LZ3/x;->c:Ljava/lang/Object;

    return-object v36
.end method

.method public onComplete(LR5/h;)V
    .locals 2

    iget-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p1, LZ4/a;

    iget-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p1, LZ4/a;->a:LN/A;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, LZ4/a;->a:LN/A;

    invoke-virtual {p1, v0}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public p(Lsb/k;)V
    .locals 4

    :cond_0
    iget-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lv2/s;

    invoke-interface {p1, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/s;

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1, v3}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb/k;

    invoke-interface {p1, v3}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    new-instance v0, Lx7/e;

    iget-object v1, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Lw7/a;

    invoke-direct {v0, p2, v2, v1, p0}, Lx7/e;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lw7/a;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu7/d;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, v0}, Lu7/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lu7/b;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No encoder for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r(Lv2/P;)LEc/g;
    .locals 1

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv2/U;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, LEc/g;

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, LEc/g;

    goto :goto_0

    :cond_2
    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, LEc/g;

    :goto_0
    return-object p0
.end method

.method public s(Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LZ3/x;->t(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public t(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;
    .locals 4

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/x0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/lifecycle/x0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/s0;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/v0;

    if-eqz v2, :cond_2

    instance-of p0, v3, Landroidx/lifecycle/o0;

    if-eqz p0, :cond_0

    check-cast v3, Landroidx/lifecycle/o0;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, v3, Landroidx/lifecycle/o0;->d:Landroidx/lifecycle/D;

    if-eqz p0, :cond_1

    iget-object p1, v3, Landroidx/lifecycle/o0;->e:LQ2/d;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v1, p1, p0}, Landroidx/lifecycle/l0;->c(Landroidx/lifecycle/s0;LQ2/d;Landroidx/lifecycle/D;)V

    :cond_1
    const-string p0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, Li2/d;

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, Li2/b;

    invoke-direct {v1, p0}, Li2/d;-><init>(Li2/b;)V

    sget-object p0, Landroidx/lifecycle/t0;->b:Landroidx/lifecycle/t0;

    iget-object v2, v1, Li2/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v3, p1, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;Li2/d;)Landroidx/lifecycle/s0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v3, p1}, Landroidx/lifecycle/v0;->create(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    :goto_1
    const-string p1, "viewModel"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/s0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/lifecycle/s0;->onCleared()V

    :cond_3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, LZ3/x;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    const-string v1, ""

    :goto_0
    if-eqz p0, :cond_2

    iget-object v2, p0, LZ3/x;->c:Ljava/lang/Object;

    instance-of v3, p0, Lcom/google/common/base/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    const-string v1, ", "

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public u()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, La0/b;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li0/f;

    invoke-virtual {p0, v0, v1}, Li0/f;->a(J)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Li0/f;->c:[Ljava/lang/Object;

    aget-object p0, p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public v(I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v1, p0}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public w(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v1, p0}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public x(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lt/w;->a()Lt/w;

    move-result-object v0

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lt/w;->a:Lt/z0;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lt/z0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public y(I)J
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lr2/c;->a(Z)V

    iget-object p0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast p0, [J

    array-length v2, p0

    if-ge p1, v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lr2/c;->a(Z)V

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public z(IILt/N;)Landroid/graphics/Typeface;
    .locals 9

    iget-object v0, p0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 p1, 0x0

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, LZ3/x;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/TypedValue;

    sget-object v0, LW0/j;->a:Ljava/lang/ThreadLocal;

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, LW0/j;->d(Landroid/content/Context;ILandroid/util/TypedValue;ILW0/b;ZZ)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method
