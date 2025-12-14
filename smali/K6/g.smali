.class public final LK6/g;
.super LF6/f;
.source "SourceFile"


# instance fields
.field public final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(LF6/k;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, LF6/f;-><init>(LF6/k;)V

    iput-object p2, p0, LK6/g;->r:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(LK6/g;)V
    .locals 0

    invoke-direct {p0, p1}, LF6/f;-><init>(LF6/f;)V

    iget-object p1, p1, LK6/g;->r:Landroid/graphics/RectF;

    iput-object p1, p0, LK6/g;->r:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, LK6/h;

    invoke-direct {v0, p0}, LF6/g;-><init>(LF6/f;)V

    iput-object p0, v0, LK6/h;->w:LK6/g;

    invoke-virtual {v0}, LF6/g;->invalidateSelf()V

    return-object v0
.end method
