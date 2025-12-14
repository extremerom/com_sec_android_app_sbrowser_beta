.class public Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;,
        Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;
    }
.end annotation


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;


# instance fields
.field mAddToDialog:Lm/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->lambda$show$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->lambda$show$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;Lm/l;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->lambda$show$2(Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;Lm/l;I)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->sInstance:Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->sInstance:Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->sInstance:Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$show$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$show$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->mAddToDialog:Lm/l;

    return-void
.end method

.method private static synthetic lambda$show$2(Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;Lm/l;I)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;->onItemClicked(I)V

    invoke-virtual {p1}, Lm/y;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->mAddToDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->mAddToDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "si__AddToHelper"

    const-string v1, "AddToDialog dismiss IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->mAddToDialog:Lm/l;

    :cond_0
    :goto_0
    return-void
.end method

.method public show(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            "Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;",
            ")V"
        }
    .end annotation

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b02ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    const v1, 0x7f0b0653

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v3, p0, v5, v6}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Divider;-><init>(Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;II)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    new-instance v3, Lm/k;

    const v5, 0x7f1501c5

    invoke-direct {v3, p1, v5}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v3

    const v5, 0x7f140064

    invoke-virtual {v3, v5}, Lm/k;->e(I)V

    new-instance v5, Lcom/sec/android/app/sbrowser/toolbar/a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const v6, 0x7f1402c1

    invoke-virtual {v3, v6, v5}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v3

    invoke-virtual {v3}, Lm/k;->create()Lm/l;

    move-result-object v3

    new-instance v5, Lcom/sec/android/app/sbrowser/toolbar/b;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/sec/android/app/sbrowser/toolbar/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, v3, Lm/l;->f:Lm/j;

    :try_start_1
    iput-boolean v4, v5, Lm/j;->i:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->mAddToDialog:Lm/l;

    new-instance p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;

    new-instance v4, Lcom/sec/android/app/sbrowser/toolbar/c;

    const/4 v6, 0x0

    invoke-direct {v4, p4, v3, v6}, Lcom/sec/android/app/sbrowser/toolbar/c;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V

    invoke-direct {p0, p2, v4}, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;-><init>(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;)V

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iput-object v0, v5, Lm/j;->g:Landroid/view/View;

    iput v2, v5, Lm/j;->h:I

    iput-boolean v2, v5, Lm/j;->j:Z

    invoke-static {p1, v3, p3}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "show IllegalStateException : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si__AddToHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
