.class public Lcom/sec/android/app/sbrowser/common/BaseActivity;
.super Lm/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm/n;-><init>()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/BaseActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->isSoftInputAdjustResize()Z

    move-result p0

    return p0
.end method

.method private isSoftInputAdjustResize()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x24

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/common/BaseActivity$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity$1;-><init>(Lcom/sec/android/app/sbrowser/common/BaseActivity;)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    return-void
.end method
