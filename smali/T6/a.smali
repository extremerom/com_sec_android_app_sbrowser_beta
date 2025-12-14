.class public abstract synthetic LT6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/view/Window;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method public static bridge synthetic B(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    return-void
.end method

.method public static bridge synthetic C(Landroid/view/WindowInsetsController;Lc6/l;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    return-void
.end method

.method public static bridge synthetic D(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;
    .locals 0

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Landroid/app/blob/BlobStoreManager;Landroid/app/blob/BlobHandle;)J
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/blob/BlobStoreManager;->createSession(Landroid/app/blob/BlobHandle;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(Ljava/lang/Object;)Landroid/app/blob/BlobHandle;
    .locals 0

    check-cast p0, Landroid/app/blob/BlobHandle;

    return-object p0
.end method

.method public static bridge synthetic c([BLjava/lang/String;JLjava/lang/String;)Landroid/app/blob/BlobHandle;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/blob/BlobHandle;->createWithSha256([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/app/blob/BlobStoreManager;J)Landroid/app/blob/BlobStoreManager$Session;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/blob/BlobStoreManager;->openSession(J)Landroid/app/blob/BlobStoreManager$Session;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Landroid/app/blob/BlobStoreManager$Session;
    .locals 0

    check-cast p0, Landroid/app/blob/BlobStoreManager$Session;

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Landroid/app/blob/BlobStoreManager;
    .locals 0

    check-cast p0, Landroid/app/blob/BlobStoreManager;

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;
    .locals 0

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;
    .locals 0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/app/blob/BlobStoreManager$Session;J)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/blob/BlobStoreManager$Session;->openWrite(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/app/blob/BlobStoreManager;Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/blob/BlobStoreManager;->openBlob(Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/content/Context;)Landroid/view/Display;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/app/blob/BlobStoreManager;

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/app/blob/BlobStoreManager$Session;Ljava/util/concurrent/Executor;Lca/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/blob/BlobStoreManager$Session;->commit(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic n(Landroid/app/blob/BlobStoreManager$Session;[B)V
    .locals 1

    const-string v0, "com.samsung.android.smartsuggestions"

    invoke-virtual {p0, v0, p1}, Landroid/app/blob/BlobStoreManager$Session;->allowPackageAccess(Ljava/lang/String;[B)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/view/View;Lc6/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public static bridge synthetic p(Landroid/view/Window;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method public static bridge synthetic q(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0, p1, v0, v0}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0, p1, v0, p2}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/view/WindowInsetsAnimationController;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/view/WindowInsetsController;)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/view/WindowInsetsController;ILandroid/os/CancellationSignal;Lc6/m;)V
    .locals 7

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/view/WindowInsetsController;Lc6/l;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    return-void
.end method

.method public static bridge synthetic x(Landroid/view/WindowInsetsAnimationController;)Z
    .locals 0

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;
    .locals 0

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Landroid/app/blob/BlobStoreManager$Session;[B)V
    .locals 1

    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0, p1}, Landroid/app/blob/BlobStoreManager$Session;->allowPackageAccess(Ljava/lang/String;[B)V

    return-void
.end method
