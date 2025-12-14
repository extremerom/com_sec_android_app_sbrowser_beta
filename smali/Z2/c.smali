.class public abstract LZ2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;


# virtual methods
.method public getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object v0, p0, LZ2/c;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    if-nez v0, :cond_0

    new-instance v0, LZ2/b;

    invoke-direct {v0, p0}, LZ2/b;-><init>(LZ2/c;)V

    iput-object v0, p0, LZ2/c;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    :cond_0
    iget-object p0, p0, LZ2/c;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    return-object p0
.end method

.method public abstract onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
