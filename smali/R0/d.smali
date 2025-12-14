.class public final LR0/d;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:LR0/c;

.field public b:Z

.field public c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Z

.field public n:Z

.field public o:Z

.field public final p:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LR0/d;->b:Z

    iput p1, p0, LR0/d;->c:I

    iput p1, p0, LR0/d;->d:I

    const/4 v0, -0x1

    iput v0, p0, LR0/d;->e:I

    iput v0, p0, LR0/d;->f:I

    iput p1, p0, LR0/d;->g:I

    iput p1, p0, LR0/d;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LR0/d;->p:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(LR0/d;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LR0/d;->b:Z

    iput p1, p0, LR0/d;->c:I

    iput p1, p0, LR0/d;->d:I

    const/4 v0, -0x1

    iput v0, p0, LR0/d;->e:I

    iput v0, p0, LR0/d;->f:I

    iput p1, p0, LR0/d;->g:I

    iput p1, p0, LR0/d;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LR0/d;->p:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LR0/d;->b:Z

    iput v0, p0, LR0/d;->c:I

    iput v0, p0, LR0/d;->d:I

    const/4 v1, -0x1

    iput v1, p0, LR0/d;->e:I

    iput v1, p0, LR0/d;->f:I

    iput v0, p0, LR0/d;->g:I

    iput v0, p0, LR0/d;->h:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, LR0/d;->p:Landroid/graphics/Rect;

    sget-object v2, LQ0/a;->b:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, LR0/d;->c:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, LR0/d;->f:I

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, LR0/d;->d:I

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, LR0/d;->e:I

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, LR0/d;->g:I

    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, LR0/d;->h:I

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, LR0/d;->b:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "com.google.android.material.appbar.SeslImmersiveScrollBehavior"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v0, p0, LR0/d;->b:Z

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)LR0/c;

    move-result-object p1

    iput-object p1, p0, LR0/d;->a:LR0/c;

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, LR0/d;->a:LR0/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, LR0/c;->d(LR0/d;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LR0/d;->b:Z

    iput p1, p0, LR0/d;->c:I

    iput p1, p0, LR0/d;->d:I

    const/4 v0, -0x1

    iput v0, p0, LR0/d;->e:I

    iput v0, p0, LR0/d;->f:I

    iput p1, p0, LR0/d;->g:I

    iput p1, p0, LR0/d;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LR0/d;->p:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LR0/d;->b:Z

    iput p1, p0, LR0/d;->c:I

    iput p1, p0, LR0/d;->d:I

    const/4 v0, -0x1

    iput v0, p0, LR0/d;->e:I

    iput v0, p0, LR0/d;->f:I

    iput p1, p0, LR0/d;->g:I

    iput p1, p0, LR0/d;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LR0/d;->p:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, LR0/d;->n:Z

    return p0

    :cond_1
    iget-boolean p0, p0, LR0/d;->m:Z

    return p0
.end method

.method public final b(LR0/c;)V
    .locals 1

    iget-object v0, p0, LR0/d;->a:LR0/c;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR0/c;->g()V

    :cond_0
    iput-object p1, p0, LR0/d;->a:LR0/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, LR0/d;->b:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, LR0/c;->d(LR0/d;)V

    :cond_1
    return-void
.end method
