.class public final synthetic LU7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/d;


# static fields
.field public static final synthetic b:LU7/b;

.field public static final synthetic c:LU7/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LU7/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LU7/b;-><init>(I)V

    sput-object v0, LU7/b;->b:LU7/b;

    new-instance v0, LU7/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LU7/b;-><init>(I)V

    sput-object v0, LU7/b;->c:LU7/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LU7/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(LA7/c;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, LU7/b;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LU7/a;

    const-class v0, LU7/e;

    invoke-virtual {p1, v0}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU7/e;

    const-class v1, LQ7/d;

    invoke-virtual {p1, v1}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ7/d;

    invoke-direct {p0, v0, p1}, LU7/a;-><init>(LU7/e;LQ7/d;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    const-class v0, LT7/b;

    invoke-static {v0}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v0

    invoke-virtual {p1, v0}, LA7/c;->d(Lcom/google/firebase/components/r;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "No delegate creator registered."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    sget-object v0, LU7/c;->a:LU7/c;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, LU7/e;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LT7/b;

    invoke-direct {v0, p1, p0}, LU7/e;-><init>(Landroid/content/Context;LT7/b;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
