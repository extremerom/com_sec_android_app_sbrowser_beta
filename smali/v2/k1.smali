.class public final Lv2/k1;
.super Landroidx/recyclerview/widget/x;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv2/j1;

.field public final synthetic b:Lv2/J0;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lv2/j1;Lv2/J0;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/k1;->a:Lv2/j1;

    iput-object p2, p0, Lv2/k1;->b:Lv2/J0;

    iput-object p3, p0, Lv2/k1;->c:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;

    iput p4, p0, Lv2/k1;->d:I

    iput p5, p0, Lv2/k1;->e:I

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lv2/k1;->a:Lv2/j1;

    check-cast v0, Lv2/J0;

    invoke-virtual {v0, p1}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lv2/k1;->b:Lv2/J0;

    invoke-virtual {v0, p2}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv2/k1;->c:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lv2/k1;->a:Lv2/j1;

    check-cast v0, Lv2/J0;

    invoke-virtual {v0, p1}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lv2/k1;->b:Lv2/J0;

    invoke-virtual {v0, p2}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv2/k1;->c:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final getChangePayload(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv2/k1;->a:Lv2/j1;

    check-cast v0, Lv2/J0;

    invoke-virtual {v0, p1}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lv2/k1;->b:Lv2/J0;

    invoke-virtual {v0, p2}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv2/k1;->c:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/A;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getNewListSize()I
    .locals 0

    iget p0, p0, Lv2/k1;->e:I

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget p0, p0, Lv2/k1;->d:I

    return p0
.end method
