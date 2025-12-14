.class public interface abstract Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditMenuCustomAction"
.end annotation


# virtual methods
.method public abstract addMenuItemForCustomAction(ILandroid/view/MenuItem;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
.end method

.method public abstract finishedCustomAction()V
.end method

.method public abstract getSelectedMenuItem()Landroid/view/MenuItem;
.end method

.method public abstract moveMenuItemForCustomAction(I)V
.end method

.method public abstract removeMenuItemForCustomAction()V
.end method

.method public abstract startCustomAction(I)V
.end method
