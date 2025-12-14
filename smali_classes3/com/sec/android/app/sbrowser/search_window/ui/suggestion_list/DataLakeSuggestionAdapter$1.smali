.class Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;
.super Li4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->updateIcon(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

.field final synthetic val$convertView:Landroid/view/View;

.field final synthetic val$dominantCharTextView:Landroid/widget/TextView;

.field final synthetic val$iconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->val$dominantCharTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->val$iconView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->val$convertView:Landroid/view/View;

    invoke-direct {p0}, Li4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->val$convertView:Landroid/view/View;

    invoke-static {p1}, Lcom/bumptech/glide/b;->e(Landroid/view/View;)Lcom/bumptech/glide/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/l;->b(Li4/d;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lj4/c;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawableFactory;->create(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->val$dominantCharTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->val$iconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lj4/c;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;->onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V

    return-void
.end method
