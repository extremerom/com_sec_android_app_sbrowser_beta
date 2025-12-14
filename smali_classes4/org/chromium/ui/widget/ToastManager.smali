.class public Lorg/chromium/ui/widget/ToastManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/widget/ToastManager$ToastEventPreR;,
        Lorg/chromium/ui/widget/ToastManager$ToastEvent;,
        Lorg/chromium/ui/widget/ToastManager$ToastEventR;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/ui/widget/ToastManager;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mToast:Lorg/chromium/ui/widget/Toast;

.field private final mToastEvent:Lorg/chromium/ui/widget/ToastManager$ToastEvent;

.field private final mToastQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lorg/chromium/ui/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, LB0/r;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LB0/r;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mToastQueue:Ljava/util/PriorityQueue;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mHandler:Landroid/os/Handler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/chromium/ui/widget/ToastManager$ToastEventPreR;

    new-instance v1, Lorg/chromium/ui/widget/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/ui/widget/a;-><init>(Lorg/chromium/ui/widget/ToastManager;I)V

    invoke-direct {v0, v1}, Lorg/chromium/ui/widget/ToastManager$ToastEventPreR;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mToastEvent:Lorg/chromium/ui/widget/ToastManager$ToastEvent;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/ui/widget/ToastManager$ToastEventR;

    new-instance v1, Lorg/chromium/ui/widget/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/ui/widget/a;-><init>(Lorg/chromium/ui/widget/ToastManager;I)V

    invoke-direct {v0, v1}, Lorg/chromium/ui/widget/ToastManager$ToastEventR;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mToastEvent:Lorg/chromium/ui/widget/ToastManager$ToastEvent;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lorg/chromium/ui/widget/ToastManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/widget/ToastManager;->toastHidden()V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/ui/widget/Toast;Lorg/chromium/ui/widget/Toast;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/ui/widget/ToastManager;->lambda$new$0(Lorg/chromium/ui/widget/Toast;Lorg/chromium/ui/widget/Toast;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/chromium/ui/widget/ToastManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/widget/ToastManager;->lambda$toastHidden$1()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/ui/widget/ToastManager;
    .locals 1

    sget-object v0, Lorg/chromium/ui/widget/ToastManager;->sInstance:Lorg/chromium/ui/widget/ToastManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/ui/widget/ToastManager;

    invoke-direct {v0}, Lorg/chromium/ui/widget/ToastManager;-><init>()V

    sput-object v0, Lorg/chromium/ui/widget/ToastManager;->sInstance:Lorg/chromium/ui/widget/ToastManager;

    :cond_0
    sget-object v0, Lorg/chromium/ui/widget/ToastManager;->sInstance:Lorg/chromium/ui/widget/ToastManager;

    return-object v0
.end method

.method private isDuplicatedToast(Lorg/chromium/ui/widget/Toast;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/ui/widget/ToastManager;->getCurrentToast()Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/ui/widget/Toast;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lorg/chromium/ui/widget/ToastManager;->mToastQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/Toast;

    if-eq v0, p1, :cond_3

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/ui/widget/Toast;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$0(Lorg/chromium/ui/widget/Toast;Lorg/chromium/ui/widget/Toast;)I
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/Toast;->getPriority()I

    move-result p0

    invoke-virtual {p1}, Lorg/chromium/ui/widget/Toast;->getPriority()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$toastHidden$1()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/widget/ToastManager;->showNextToast()V

    return-void
.end method

.method private showNextToast()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mToastQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/Toast;

    iput-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mToast:Lorg/chromium/ui/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->getAndroidToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mToastEvent:Lorg/chromium/ui/widget/ToastManager$ToastEvent;

    iget-object p0, p0, Lorg/chromium/ui/widget/ToastManager;->mToast:Lorg/chromium/ui/widget/Toast;

    invoke-interface {v0, p0}, Lorg/chromium/ui/widget/ToastManager$ToastEvent;->onShow(Lorg/chromium/ui/widget/Toast;)V

    :cond_0
    return-void
.end method

.method private toastHidden()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/ui/widget/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/chromium/ui/widget/a;-><init>(Lorg/chromium/ui/widget/ToastManager;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getCurrentToast()Lorg/chromium/ui/widget/Toast;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/widget/ToastManager;->mToast:Lorg/chromium/ui/widget/Toast;

    return-object p0
.end method

.method public requestShow(Lorg/chromium/ui/widget/Toast;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lorg/chromium/ui/widget/ToastManager;->isDuplicatedToast(Lorg/chromium/ui/widget/Toast;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/widget/ToastManager;->mToastQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/chromium/ui/widget/ToastManager;->getCurrentToast()Lorg/chromium/ui/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/ui/widget/ToastManager;->showNextToast()V

    :cond_1
    :goto_0
    return-void
.end method
