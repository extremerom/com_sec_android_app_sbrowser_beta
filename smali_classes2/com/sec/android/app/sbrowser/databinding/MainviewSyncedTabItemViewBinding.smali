.class public final Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final background:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dominantChar:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncedTabItemCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncedTabItemDeviceName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncedTabItemIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncedTabItemTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->rootView:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->background:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->dominantChar:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemDeviceName:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemIcon:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b014c

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0b041a

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0b0c4e

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;

    if-eqz v6, :cond_0

    const v0, 0x7f0b0c4f

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0b0c50

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0b0c51

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;
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

    const v0, 0x7f0e04a1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
