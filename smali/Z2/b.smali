.class public final LZ2/b;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:LZ2/c;


# direct methods
.method public constructor <init>(LZ2/c;)V
    .locals 0

    iput-object p1, p0, LZ2/b;->a:LZ2/c;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, LZ2/b;->a:LZ2/c;

    invoke-virtual {p0, p1}, LZ2/c;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, LZ2/b;->a:LZ2/c;

    invoke-virtual {p0, p1}, LZ2/c;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
