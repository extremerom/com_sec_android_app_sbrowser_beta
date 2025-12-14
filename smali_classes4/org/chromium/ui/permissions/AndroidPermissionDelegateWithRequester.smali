.class public abstract Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/permissions/AndroidPermissionDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNextRequestCode:I

.field private mOutstandingPermissionRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    return-void
.end method

.method private requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)Z
    .locals 4

    iget v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mNextRequestCode:I

    add-int/lit16 v1, v0, 0x3e8

    const/4 v2, 0x1

    add-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mNextRequestCode:I

    iget-object v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    new-instance v3, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;

    invoke-direct {v3, p0, p1, p2}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;-><init>(Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;[Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->requestPermissionsFromRequester([Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->delete(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2
.end method

.method private shouldPersistDenial(Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;Ljava/lang/String;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;->getInitialShowRationaleStateFor(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    invoke-interface {p0, p2}, Lorg/chromium/ui/permissions/AndroidPermissionDelegate;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public final canRequestPermission(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->isPermissionRevokedByPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0, p1}, Lorg/chromium/ui/permissions/AndroidPermissionDelegate;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lorg/chromium/ui/permissions/PermissionPrefs;->clearPermissionWasDenied(Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {p1}, Lorg/chromium/ui/permissions/PermissionPrefs;->wasPermissionDenied(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final handlePermissionResult(I[Ljava/lang/String;[I)Z
    .locals 5

    iget-object v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;

    iget-object v1, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    aget v4, p3, v3

    if-nez v4, :cond_0

    aget-object v4, p2, v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    aget-object v4, p2, v3

    invoke-direct {p0, v0, v4}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->shouldPersistDenial(Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lorg/chromium/ui/permissions/PermissionPrefs;->editPermissionsPref(Ljava/util/List;Ljava/util/List;)V

    if-eqz v0, :cond_4

    iget-object p0, v0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;->callback:Lorg/chromium/ui/permissions/PermissionCallback;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p0, p2, p3}, Lorg/chromium/ui/permissions/PermissionCallback;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v2
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/chromium/ui/permissions/PermissionPrefs;->clearPermissionWasDenied(Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public final isPermissionRevokedByPolicy(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->isPermissionRevokedByPolicyInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public abstract isPermissionRevokedByPolicyInternal(Ljava/lang/String;)Z
.end method

.method public final requestPermissions([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/chromium/ui/permissions/PermissionPrefs;->onAndroidPermissionRequestUiShown([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;-><init>(Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;[Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract requestPermissionsFromRequester([Ljava/lang/String;I)Z
.end method
