.class Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkBarDragShadow"
.end annotation


# static fields
.field private static sShadow:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkDragShadow;->toDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;->sShadow:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;->sShadow:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    sget-object p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;->sShadow:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;->sShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;->sShadow:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Point;->set(II)V

    const/16 p0, 0x32

    invoke-virtual {p2, p0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
