.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private final mItem:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;->mItem:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;->mAnchorView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public getItem()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;->mItem:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    return-object p0
.end method
