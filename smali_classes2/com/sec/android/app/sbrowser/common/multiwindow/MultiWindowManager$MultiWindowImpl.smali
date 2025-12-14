.class Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiWindowImpl"
.end annotation


# instance fields
.field private final mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->this$0:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;-><init>(Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;)V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->clear()V

    return-void
.end method

.method public getMultiWindowHeight(Landroid/app/Activity;I)I
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr p0, p2

    :goto_0
    return p0
.end method

.method public getMultiWindowWidth(Landroid/app/Activity;)I
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return p0
.end method

.method public hasObserver()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isMultiWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScaleWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager$MultiWindowImpl;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method
