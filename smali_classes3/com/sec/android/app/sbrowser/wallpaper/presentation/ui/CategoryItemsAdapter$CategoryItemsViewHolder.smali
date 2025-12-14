.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CategoryItemsViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;",
        "binding",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;)V",
        "Landroid/widget/ImageView;",
        "categoryItemThumbnail",
        "Landroid/widget/ImageView;",
        "getCategoryItemThumbnail",
        "()Landroid/widget/ImageView;",
        "Landroidx/cardview/widget/CardView;",
        "categoryItemCardView",
        "Landroidx/cardview/widget/CardView;",
        "getCategoryItemCardView",
        "()Landroidx/cardview/widget/CardView;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final categoryItemCardView:Landroidx/cardview/widget/CardView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final categoryItemThumbnail:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;->categoryItemThumbnail:Landroid/widget/ImageView;

    const-string v0, "categoryItemThumbnail"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->categoryItemThumbnail:Landroid/widget/ImageView;

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;->categoryItemCardview:Landroidx/cardview/widget/CardView;

    const-string p2, "categoryItemCardview"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->categoryItemCardView:Landroidx/cardview/widget/CardView;

    return-void
.end method


# virtual methods
.method public final getCategoryItemCardView()Landroidx/cardview/widget/CardView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->categoryItemCardView:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method public final getCategoryItemThumbnail()Landroid/widget/ImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->categoryItemThumbnail:Landroid/widget/ImageView;

    return-object p0
.end method
