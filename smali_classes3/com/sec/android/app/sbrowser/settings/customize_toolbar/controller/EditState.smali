.class public interface abstract Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
    }
.end annotation


# virtual methods
.method public abstract addMenuItem(ILandroid/view/MenuItem;)V
.end method

.method public abstract addMenuItem(Landroid/view/MenuItem;)V
.end method

.method public abstract canRemoveMenuItem()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
.end method

.method public abstract getAddEventId()I
.end method

.method public abstract getDeleteEventId()I
.end method

.method public abstract getReferenceView()Landroid/view/View;
.end method

.method public abstract getSelectedMenuItem()Landroid/view/MenuItem;
.end method

.method public abstract getStatusDetailId()I
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isDragIn(II)Z
.end method

.method public abstract moveMenuItem(I)V
.end method

.method public abstract onDrag(II)V
.end method

.method public abstract onDragIn(Landroid/view/MenuItem;II)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState$DragInResult;
.end method

.method public abstract onFinishedEdit()V
.end method

.method public abstract onStartEdit(I)V
.end method

.method public abstract removeMenuItem()V
.end method
