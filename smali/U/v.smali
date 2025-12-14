.class public final LU/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/v;
.implements Lk7/e;


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [LU/v;

    iput-object v0, p0, LU/v;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, LU/v;->a:I

    iput v0, p0, LU/v;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LU/v;->c:Ljava/lang/Object;

    iput p1, p0, LU/v;->a:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    :cond_0
    iput p1, p0, LU/v;->b:I

    return-void
.end method

.method public constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LU/v;->a:I

    iput p3, p0, LU/v;->b:I

    iput-object p4, p0, LU/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LU/v;->a:I

    iput-object p3, p0, LU/v;->c:Ljava/lang/Object;

    iput p2, p0, LU/v;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput-object p3, p0, LU/v;->c:Ljava/lang/Object;

    iput p1, p0, LU/v;->a:I

    iput p2, p0, LU/v;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LU/v;->b:I

    iput-object p1, p0, LU/v;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lk7/r;)V
    .locals 0

    return-void
.end method

.method public b(Lk7/q;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized c()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, LU/v;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, LU/v;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, LU/v;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Ll5/b;->a(Landroid/content/Context;)La5/g;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.permission.SEND"

    const-string v3, "com.google.android.gms"

    iget-object v1, v1, La5/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const-string v0, "Metadata"

    const-string v1, "Google Play services missing or without correct permission."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.iid.TOKEN_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    iput v1, p0, LU/v;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_3
    :goto_0
    :try_start_3
    const-string v0, "Metadata"

    const-string v2, "Failed to resolve IID implementation package, falling back"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, LU/v;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public h(Lk7/i;)V
    .locals 0

    return-void
.end method

.method public i(Lk7/h;)V
    .locals 4

    iget-object v0, p1, Lk7/f;->a:Lk7/n;

    iget v0, v0, Lk7/n;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lk7/c;->e:Ll7/a;

    check-cast v0, Ll7/j;

    iget v0, v0, Ll7/l;->a:I

    iget-object v1, p0, LU/v;->c:Ljava/lang/Object;

    check-cast v1, [Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_0

    iget v3, p0, LU/v;->a:I

    iget p0, p0, LU/v;->b:I

    sub-int/2addr v3, p0

    add-int/2addr v3, v0

    iget-object p0, p1, Lk7/f;->c:Lk7/k;

    iget p0, p0, Lk7/k;->a:I

    if-ne v3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    aput-boolean p0, v1, v2

    :cond_1
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 3

    iget-object p1, p2, Lf1/w0;->a:Lf1/u0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lf1/u0;->f(I)LX0/b;

    move-result-object p1

    iget p1, p1, LX0/b;->b:I

    iget-object v0, p0, LU/v;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget v1, p0, LU/v;->a:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/2addr v1, p1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget p0, p0, LU/v;->b:I

    add-int/2addr p0, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
