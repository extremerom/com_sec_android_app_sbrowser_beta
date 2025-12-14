.class Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$margin:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;->val$margin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;->val$child:Landroid/view/View;

    const v2, 0x7f0b065c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;->val$margin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;->val$child:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    invoke-direct {v2, v0, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
