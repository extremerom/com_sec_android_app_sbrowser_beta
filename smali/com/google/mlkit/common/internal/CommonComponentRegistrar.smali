.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 12

    const/4 p0, 0x1

    sget-object v0, LQ7/h;->b:Lcom/google/firebase/components/b;

    const-class v1, LR7/a;

    invoke-static {v1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v1

    const-class v2, LQ7/f;

    invoke-static {v2}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object v3, LN7/a;->b:LN7/a;

    iput-object v3, v1, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v1}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v1

    const-class v3, LQ7/g;

    invoke-static {v3}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v4

    sget-object v5, LN7/a;->c:LN7/a;

    iput-object v5, v4, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v4}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v4

    const-class v5, LP7/c;

    invoke-static {v5}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/components/k;

    const/4 v7, 0x2

    const-class v8, LP7/b;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, v8}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object v6, LN7/a;->d:LN7/a;

    iput-object v6, v5, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v5}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v5

    const-class v6, LQ7/d;

    invoke-static {v6}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/components/k;

    invoke-direct {v7, p0, p0, v3}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object v3, LN7/a;->e:LN7/a;

    iput-object v3, v6, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v6}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v6

    const-class v3, LQ7/a;

    invoke-static {v3}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v7

    sget-object v10, LN7/a;->f:LN7/a;

    iput-object v10, v7, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v7}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v7

    const-class v10, LQ7/b;

    invoke-static {v10}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v10

    invoke-static {v3}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object v3, LN7/a;->g:LN7/a;

    iput-object v3, v10, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v10}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v10

    const-class v3, LO7/a;

    invoke-static {v3}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v11

    invoke-static {v2}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object v2, LN7/a;->h:LN7/a;

    iput-object v2, v11, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v11}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v11

    invoke-static {v8}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v2

    iput p0, v2, Lcom/google/firebase/components/a;->e:I

    new-instance v8, Lcom/google/firebase/components/k;

    invoke-direct {v8, p0, p0, v3}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v2, v8}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    sget-object v3, LN7/a;->i:LN7/a;

    iput-object v3, v2, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v2}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v8

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/16 v1, 0x9

    if-ge v9, v1, :cond_1

    sget-object v1, LE5/d;->b:LE5/b;

    aget-object v1, v0, v9

    if-eqz v1, :cond_0

    add-int/2addr v9, p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "at index "

    invoke-static {v9, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, LE5/d;->b:LE5/b;

    new-instance p0, LE5/f;

    invoke-direct {p0, v1, v0}, LE5/f;-><init>(I[Ljava/lang/Object;)V

    return-object p0
.end method
