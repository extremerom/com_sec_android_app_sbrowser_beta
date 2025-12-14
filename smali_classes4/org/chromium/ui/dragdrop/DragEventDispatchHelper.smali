.class public Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final ALL_DRAG_ACTIONS:[I


# instance fields
.field private final mDestinationView:Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;

.field private final mSourceView:Landroid/view/View;

.field private final mSupportedActionsMask:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;->ALL_DRAG_ACTIONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method


# virtual methods
.method public isActionSupported(I)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;->mSupportedActionsMask:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public markActionSupported(IZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;->mSupportedActionsMask:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;->mDestinationView:Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;

    invoke-interface {v2}, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;->view()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;->isActionSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, p0, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;->mSourceView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v4, v0

    aget v5, v3, v0

    sub-int/2addr v2, v5

    aget v4, v4, v1

    aget v3, v3, v1

    sub-int/2addr v4, v3

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;->mDestinationView:Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;

    invoke-interface {p0, p2, v2, v4}, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;->onDragEventWithOffset(Landroid/view/DragEvent;II)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper;->mDestinationView:Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;

    invoke-interface {p0, p2, v0, v0}, Lorg/chromium/ui/dragdrop/DragEventDispatchHelper$DragEventDispatchDestination;->onDragEventWithOffset(Landroid/view/DragEvent;II)Z

    move-result p0

    if-nez p0, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    return v0

    :cond_8
    :goto_2
    return p1
.end method
