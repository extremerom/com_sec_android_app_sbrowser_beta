.class public final LH/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p4, p0, LH/e;->a:I

    iput p1, p0, LH/e;->b:I

    iput-object p2, p0, LH/e;->c:Ljava/lang/Object;

    iput-object p3, p0, LH/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, LH/e;->a:I

    iput-object p1, p0, LH/e;->d:Ljava/lang/Object;

    iput p2, p0, LH/e;->b:I

    iput-object p3, p0, LH/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, LH/e;->a:I

    iput-object p1, p0, LH/e;->d:Ljava/lang/Object;

    iput-object p2, p0, LH/e;->c:Ljava/lang/Object;

    iput p3, p0, LH/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LH/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LH/e;->b:I

    iput-object p1, p0, LH/e;->d:Ljava/lang/Object;

    iput-object p2, p0, LH/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, LH/e;->b:I

    iget-object v3, p0, LH/e;->d:Ljava/lang/Object;

    iget-object v4, p0, LH/e;->c:Ljava/lang/Object;

    iget v5, p0, LH/e;->a:I

    packed-switch v5, :pswitch_data_0

    check-cast v4, Landroid/widget/TextView;

    sget-object p0, Lt/O;->a:LN/m;

    invoke-virtual {v4}, Landroid/widget/TextView;->getFontVariationSettings()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4, v1}, Lt/O;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    check-cast v3, Landroid/graphics/Typeface;

    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4, p0}, Lt/O;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    check-cast v3, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object p0, v3, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    check-cast v4, Landroid/app/Notification;

    invoke-virtual {p0, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_1
    check-cast v3, Landroid/content/Intent;

    check-cast v4, Li3/i;

    invoke-virtual {v4, v2, v3}, Li3/i;->a(ILandroid/content/Intent;)V

    return-void

    :pswitch_2
    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G(Landroid/view/View;IZ)V

    return-void

    :pswitch_3
    sget p0, Lcom/google/ar/core/i;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraDevice;

    check-cast v4, Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v4, v3, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void

    :pswitch_4
    packed-switch v2, :pswitch_data_1

    sget p0, Lcom/google/ar/core/j;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v4, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :pswitch_5
    sget p0, Lcom/google/ar/core/j;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v4, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :pswitch_6
    sget p0, Lcom/google/ar/core/j;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v4, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :pswitch_7
    sget p0, Lcom/google/ar/core/j;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v4, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :pswitch_8
    sget p0, Lcom/google/ar/core/j;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v4, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :pswitch_9
    sget p0, Lcom/google/ar/core/i;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraDevice;

    check-cast v4, Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    goto :goto_0

    :pswitch_a
    sget p0, Lcom/google/ar/core/i;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraDevice;

    check-cast v4, Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    goto :goto_0

    :pswitch_b
    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    sget p0, Lcom/google/ar/core/i;->d:I

    check-cast v3, Landroid/hardware/camera2/CameraDevice;

    check-cast v4, Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    :goto_0
    return-void

    :pswitch_d
    check-cast v3, Landroidx/recyclerview/widget/X;

    iget-object v5, v3, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    const-string v6, "ItemTouchHelper"

    check-cast v4, Landroidx/recyclerview/widget/S;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, v4, Landroidx/recyclerview/widget/S;->k:Z

    if-nez v5, :cond_6

    iget-object v5, v4, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/h1;->getAbsoluteAdapterPosition()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "postDispatchSwipe$run: mRecyclerView = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isAttachedToWindow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", !anim.mOverridden = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/S;->k:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", anim.mViewHolder.getAdapterPosition() = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/D0;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/D0;->isRunning(Landroidx/recyclerview/widget/A0;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, v3, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v0

    :goto_1
    if-ge v7, v4, :cond_5

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/S;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/S;->l:Z

    if-nez v8, :cond_4

    :cond_3
    iget-object v0, v3, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "postDispatchSwipe$run: mCallback.onSwiped anim.mViewHolder = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anim.mViewHolder.itemView = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " swipeDir="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v3, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    invoke-virtual {p0, v5, v2}, Landroidx/recyclerview/widget/U;->onSwiped(Landroidx/recyclerview/widget/h1;I)V

    invoke-virtual {v3, v5, v0}, Landroidx/recyclerview/widget/X;->g(Landroidx/recyclerview/widget/h1;Z)V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call mCallback.onSwiped()!, call seslOnSwipeFailed, flag = 0x"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/h1;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v3, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    iget-object v1, v4, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/U;->seslOnSwipeFailed(Landroidx/recyclerview/widget/h1;I)V

    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/X;->g(Landroidx/recyclerview/widget/h1;Z)V

    :goto_2
    return-void

    :pswitch_e
    check-cast v3, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    invoke-static {v3}, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zza(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;)Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    move-result-object p0

    check-cast v4, Lcom/google/android/gms/internal/vision/I;

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza(ILcom/google/android/gms/internal/vision/I;)V

    return-void

    :pswitch_f
    check-cast v3, LH/j;

    iget-object p0, v3, LH/j;->b:LH/c;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p0, v2, v4}, LH/c;->onNavigationEvent(ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
