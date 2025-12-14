.class public interface abstract Lorg/chromium/ui/listmenu/ListMenuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract getListMenu()Lorg/chromium/ui/listmenu/ListMenu;
.end method

.method public getRectProvider(Landroid/view/View;)Lorg/chromium/ui/widget/RectProvider;
    .locals 0

    new-instance p0, Lorg/chromium/ui/widget/ViewRectProvider;

    invoke-direct {p0, p1}, Lorg/chromium/ui/widget/ViewRectProvider;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/widget/ViewRectProvider;->setIncludePadding(Z)V

    return-object p0
.end method
