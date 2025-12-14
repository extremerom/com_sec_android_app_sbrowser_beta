.class public Lj2/e;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# static fields
.field public static final c:Lj2/d;


# instance fields
.field public final a:LN/B;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj2/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj2/e;->c:Lj2/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v0, LN/B;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/B;-><init>(I)V

    iput-object v0, p0, Lj2/e;->a:LN/B;

    iput-boolean v1, p0, Lj2/e;->b:Z

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 9

    invoke-super {p0}, Landroidx/lifecycle/s0;->onCleared()V

    iget-object p0, p0, Lj2/e;->a:LN/B;

    iget v0, p0, LN/B;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_4

    iget-object v4, p0, LN/B;->b:[Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v4, Lj2/b;

    iget-object v5, v4, Lj2/b;->a:LX4/c;

    invoke-virtual {v5}, LX4/c;->a()V

    const/4 v6, 0x1

    iput-boolean v6, v5, LX4/c;->c:Z

    iget-object v7, v4, Lj2/b;->c:Lj2/c;

    if-eqz v7, :cond_0

    invoke-virtual {v4, v7}, Lj2/b;->removeObserver(Landroidx/lifecycle/Y;)V

    :cond_0
    iget-object v8, v5, LX4/c;->a:Lj2/b;

    if-eqz v8, :cond_3

    if-ne v8, v4, :cond_2

    iput-object v3, v5, LX4/c;->a:Lj2/b;

    if-eqz v7, :cond_1

    iget-boolean v3, v7, Lj2/c;->b:Z

    :cond_1
    iput-boolean v6, v5, LX4/c;->d:Z

    iput-boolean v1, v5, LX4/c;->b:Z

    iput-boolean v1, v5, LX4/c;->c:Z

    iput-boolean v1, v5, LX4/c;->e:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget v0, p0, LN/B;->c:I

    iget-object v2, p0, LN/B;->b:[Ljava/lang/Object;

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_5

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iput v1, p0, LN/B;->c:I

    return-void
.end method
