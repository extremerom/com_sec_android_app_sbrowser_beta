.class public interface abstract Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;


# virtual methods
.method public abstract getChildAt(I)Landroid/view/View;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getGlobalVisibleRect(Landroid/graphics/Rect;)Z
.end method

.method public getUrlBarMarginHorizontal()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUrlbarPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUrlbarView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract setOnItemLongClickListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;)V
.end method
