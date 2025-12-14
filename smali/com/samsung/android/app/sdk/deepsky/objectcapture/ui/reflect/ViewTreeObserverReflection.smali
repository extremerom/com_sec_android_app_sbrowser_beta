.class public Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;
.super Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;
.source "SourceFile"


# instance fields
.field private mListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;->mListener:Ljava/lang/Object;

    const-string v1, "addOnComputeInternalInsetsListener"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.view.ViewTreeObserver"

    return-object p0
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V
    .locals 2

    const-string p2, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;->mListener:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "removeOnComputeInternalInsetsListener"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
