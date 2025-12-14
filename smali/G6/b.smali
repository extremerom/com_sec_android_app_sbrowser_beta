.class public final synthetic LG6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/q;
.implements Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;
.implements Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;
.implements Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;
.implements Lt3/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput-object p2, p0, LG6/b;->b:Ljava/lang/Object;

    iput p1, p0, LG6/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, LG6/b;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iget p0, p0, LG6/b;->a:I

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, LG6/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, LG6/c;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, LG6/c;->run()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t(I)V

    :goto_1
    return v0

    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p0, v0, :cond_5

    const-string p0, "DRAGGING"

    goto :goto_3

    :cond_5
    const-string p0, "SETTLING"

    :goto_3
    const-string v0, " should not be set externally."

    invoke-static {v1, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/Object;Lt3/f;)V
    .locals 2

    check-cast p1, Lt3/c;

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    iget-object v1, p0, LG6/b;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/work/multiprocess/RemoteListenableWorker;

    iget-object v1, v1, Landroidx/work/multiprocess/RemoteListenableWorker;->e:Landroidx/work/WorkerParameters;

    iget-object v1, v1, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, LG6/b;->a:I

    invoke-direct {v0, v1, p0}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LG5/k2;->k(Landroid/os/Parcelable;)[B

    move-result-object p0

    check-cast p1, Lt3/a;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    sget-object v1, Lt3/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p1, Lt3/a;->a:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onItemClicked(I)V
    .locals 1

    iget-object v0, p0, LG6/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;

    iget p0, p0, LG6/b;->a:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->a(Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;II)V

    return-void
.end method

.method public onPositiveButtonClicked(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, LG6/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    iget p0, p0, LG6/b;->a:I

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->a(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;ILjava/lang/String;I)V

    return-void
.end method

.method public onResult(Z)V
    .locals 1

    iget v0, p0, LG6/b;->a:I

    iget-object p0, p0, LG6/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;->a(Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager;IZ)V

    return-void
.end method
