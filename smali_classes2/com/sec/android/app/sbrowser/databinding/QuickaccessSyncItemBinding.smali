.class public final Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncItem:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncItemCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncItemDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncItemDominantChar:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncItemIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncItemTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncItemUrl:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/appcompat/widget/AppCompatCheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
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
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItem:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemDivider:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemDominantChar:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemIcon:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemTitle:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->syncItemUrl:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b0c3b

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0b0c3c

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v5, :cond_0

    const v0, 0x7f0b0c3d

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const v0, 0x7f0b0c3e

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0b0c3f

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0b0c40

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0b0c41

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;
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

    const v0, 0x7f0e05a9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
