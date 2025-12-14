.class public interface abstract Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate$ItemClickListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract getDivider()Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;
.end method

.method public abstract getMenuItem(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;ZZZLandroid/view/View$OnClickListener;Landroid/content/Intent;)Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract show(Landroid/content/Context;Landroid/view/View;Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate$ItemClickListener;II)V
    .param p5    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
.end method
