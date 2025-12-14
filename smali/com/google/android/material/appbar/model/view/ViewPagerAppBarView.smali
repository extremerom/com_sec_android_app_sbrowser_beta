.class public Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
.super Ld6/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0017\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R$\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010#\u001a\u0004\u0018\u00010\"8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;",
        "Ld6/a;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/content/res/ColorStateList;",
        "getViewPagerBackgroundColorStateList",
        "(Landroid/content/Context;)Landroid/content/res/ColorStateList;",
        "",
        "getViewPagerIndicatorOffColor",
        "(Landroid/content/Context;)I",
        "getViewPagerIndicatorOnColor",
        "Ldb/r;",
        "inflate",
        "()V",
        "updateResource",
        "(Landroid/content/Context;)V",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewpager",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "getViewpager",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "setViewpager",
        "(Landroidx/viewpager2/widget/ViewPager2;)V",
        "Landroid/view/ViewGroup;",
        "bottomLayout",
        "Landroid/view/ViewGroup;",
        "getBottomLayout",
        "()Landroid/view/ViewGroup;",
        "setBottomLayout",
        "(Landroid/view/ViewGroup;)V",
        "Lt/O0;",
        "indicator",
        "Lt/O0;",
        "getIndicator",
        "()Lt/O0;",
        "setIndicator",
        "(Lt/O0;)V",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private bottomLayout:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private indicator:Lt/O0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private viewpager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->inflate()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILtb/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getViewPagerBackgroundColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LG5/t;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, LG5/t;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060b9e

    goto :goto_0

    :cond_0
    const p0, 0x7f060b9f

    goto :goto_0

    :cond_1
    invoke-static {p1}, LG5/t;->d(Landroid/content/Context;)Z

    const p0, 0x7f060ba0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string p1, "valueOf(\n            Ses\u2026)\n            )\n        )"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getViewPagerIndicatorOffColor(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LG5/t;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, LG5/t;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0609eb

    goto :goto_0

    :cond_0
    const p0, 0x7f0609ec

    goto :goto_0

    :cond_1
    invoke-static {p1}, LG5/t;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0609ee

    goto :goto_0

    :cond_2
    const p0, 0x7f0609ed

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private final getViewPagerIndicatorOnColor(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LG5/t;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, LG5/t;->d(Landroid/content/Context;)Z

    const p0, 0x7f0609f1

    goto :goto_0

    :cond_0
    invoke-static {p1}, LG5/t;->d(Landroid/content/Context;)Z

    const p0, 0x7f0609f2

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getBottomLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getIndicator()Lt/O0;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Lt/O0;

    return-object p0
.end method

.method public final getViewpager()Landroidx/viewpager2/widget/ViewPager2;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public inflate()V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0842

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const v3, 0x7f0b00ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    const v3, 0x7f0b01c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    new-instance v3, Lt/O0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, Lt/O0;->a:Ljava/util/ArrayList;

    const v8, 0x7f0806d7

    invoke-virtual {v6, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {v6}, LG5/t;->c(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v6}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    const v10, 0x7f0609eb

    goto :goto_1

    :cond_2
    const v10, 0x7f0609ec

    goto :goto_1

    :cond_3
    invoke-static {v6}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    const v10, 0x7f0609ee

    goto :goto_1

    :cond_4
    const v10, 0x7f0609ed

    :goto_1
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_5
    move-object v9, v5

    :goto_2
    iput-object v9, v3, Lt/O0;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-static {v6}, LG5/t;->c(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v6}, LG5/t;->d(Landroid/content/Context;)Z

    const v9, 0x7f0609f1

    goto :goto_3

    :cond_6
    invoke-static {v6}, LG5/t;->d(Landroid/content/Context;)Z

    const v9, 0x7f0609f2

    :goto_3
    invoke-virtual {v6, v9}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_4

    :cond_7
    move-object v8, v5

    :goto_4
    iput-object v8, v3, Lt/O0;->d:Landroid/graphics/drawable/Drawable;

    const/4 v6, -0x1

    iput v6, v3, Lt/O0;->e:I

    new-instance v6, LB3/c;

    invoke-direct {v6, p0}, LB3/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lt/O0;->setOnItemClickListener(Lt/L0;)V

    iput-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Lt/O0;

    iget-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v3, :cond_a

    iput-boolean v1, v3, Landroidx/viewpager2/widget/ViewPager2;->x:Z

    iget-object v6, v3, Landroidx/viewpager2/widget/ViewPager2;->j:Le3/m;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectEnabled(Z)V

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v3, Landroidx/viewpager2/widget/ViewPager2;->u:Landroid/animation/ValueAnimator;

    sget-object v10, Landroidx/viewpager2/widget/ViewPager2;->A:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v3, Landroidx/viewpager2/widget/ViewPager2;->u:Landroid/animation/ValueAnimator;

    new-instance v11, Le3/h;

    invoke-direct {v11, v3, v4}, Le3/h;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v3, Landroidx/viewpager2/widget/ViewPager2;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v3, Landroidx/viewpager2/widget/ViewPager2;->v:Landroid/animation/ValueAnimator;

    new-instance v6, Le3/h;

    invoke-direct {v6, v3, v1}, Le3/h;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v3, Landroidx/viewpager2/widget/ViewPager2;->j:Le3/m;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v3, Landroidx/viewpager2/widget/ViewPager2;->j:Le3/m;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0806d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_9
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Lt/O0;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->updateResource(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setBottomLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setIndicator(Lt/O0;)V
    .locals 0
    .param p1    # Lt/O0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Lt/O0;

    return-void
.end method

.method public final setViewpager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public updateResource(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewPagerBackgroundColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->indicator:Lt/O0;

    if-eqz v0, :cond_3

    const v1, 0x7f0806d7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewPagerIndicatorOffColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lt/O0;->setDefaultCircle(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewPagerIndicatorOnColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Lt/O0;->setSelectCircle(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
