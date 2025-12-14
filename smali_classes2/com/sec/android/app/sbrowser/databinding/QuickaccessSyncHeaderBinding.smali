.class public final Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final deviceExpandImageButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final deviceItemsCheckbox:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final deviceName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncHeader:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;->rootView:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;->deviceExpandImageButton:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;->deviceItemsCheckbox:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;->deviceName:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;->syncHeader:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b03fe

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0b03ff

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;

    if-eqz v5, :cond_0

    const v0, 0x7f0b0401

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v7, p0

    check-cast v7, Landroid/widget/RelativeLayout;

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckbox;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e05a8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncHeaderBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
