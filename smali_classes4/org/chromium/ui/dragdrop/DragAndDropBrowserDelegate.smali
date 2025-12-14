.class public interface abstract Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract buildClipData(Lorg/chromium/ui/dragdrop/DropDataAndroid;)Landroid/content/ClipData;
.end method

.method public abstract buildFlags(ILorg/chromium/ui/dragdrop/DropDataAndroid;)I
.end method

.method public abstract createUrlIntent(Ljava/lang/String;I)Landroid/content/Intent;
.end method

.method public abstract getDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
.end method

.method public abstract getSupportAnimatedImageDragShadow()Z
.end method

.method public abstract getSupportDropInChrome()Z
.end method
