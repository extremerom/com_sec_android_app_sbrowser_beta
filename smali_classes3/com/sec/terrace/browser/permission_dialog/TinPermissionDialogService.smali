.class public Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;

.field private mDialogModel:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

.field private mRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

    invoke-direct {v0}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mDialogModel:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mRequestQueue:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;

    invoke-direct {v0}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;-><init>()V

    return-object v0
.end method

.method private scheduleDisplay()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mDialogModel:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;->getState()Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$State;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$State;->NOT_SHOWING:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->showDialog()V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mRequestQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;

    iput-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mDelegate:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;

    iget-object v1, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mDialogModel:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

    invoke-virtual {v1, p0, v0}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;->addDialog(Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;)Z

    return-void
.end method


# virtual methods
.method public addDialog(Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mDialogModel:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mRequestQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->scheduleDisplay()V

    const/4 p0, 0x1

    return p0
.end method

.method public removeDialog(Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;)Z
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mDialogModel:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mDelegate:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;

    if-ne v2, p1, :cond_1

    invoke-virtual {v0, p0, v2}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;->removeDialog(Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mRequestQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->mRequestQueue:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public stateUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;->scheduleDisplay()V

    return-void
.end method
