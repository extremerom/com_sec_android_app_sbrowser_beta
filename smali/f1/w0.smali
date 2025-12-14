.class public final Lf1/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lf1/w0;


# instance fields
.field public final a:Lf1/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lf1/t0;->q:Lf1/w0;

    sput-object v0, Lf1/w0;->b:Lf1/w0;

    goto :goto_0

    :cond_0
    sget-object v0, Lf1/u0;->b:Lf1/w0;

    sput-object v0, Lf1/w0;->b:Lf1/w0;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf1/u0;

    invoke-direct {v0, p0}, Lf1/u0;-><init>(Lf1/w0;)V

    iput-object v0, p0, Lf1/w0;->a:Lf1/u0;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lf1/t0;

    invoke-direct {v0, p0, p1}, Lf1/t0;-><init>(Lf1/w0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lf1/w0;->a:Lf1/u0;

    goto :goto_0

    :cond_0
    new-instance v0, Lf1/s0;

    invoke-direct {v0, p0, p1}, Lf1/s0;-><init>(Lf1/w0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lf1/w0;->a:Lf1/u0;

    :goto_0
    return-void
.end method

.method public static f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;
    .locals 2

    new-instance v0, Lf1/w0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lf1/w0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object p1

    iget-object v1, v0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v1, p1}, Lf1/u0;->q(Lf1/w0;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Lf1/u0;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object p0

    iget p0, p0, LX0/b;->d:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object p0

    iget p0, p0, LX0/b;->a:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object p0

    iget p0, p0, LX0/b;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object p0

    iget p0, p0, LX0/b;->b:I

    return p0
.end method

.method public final e()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, Lf1/w0;->a:Lf1/u0;

    instance-of v0, p0, Lf1/p0;

    if-eqz v0, :cond_0

    check-cast p0, Lf1/p0;

    iget-object p0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lf1/w0;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lf1/w0;

    iget-object p1, p1, Lf1/w0;->a:Lf1/u0;

    iget-object p0, p0, Lf1/w0;->a:Lf1/u0;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lf1/w0;->a:Lf1/u0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf1/u0;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
