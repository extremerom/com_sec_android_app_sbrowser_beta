.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab$TabCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->setTabCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

.field final synthetic val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$tab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabBitmapLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$tab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget v3, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTabId:I

    if-eq v1, v3, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->liteThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->setThumbnailImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;)V

    return-void
.end method

.method public onTabColorLoaded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$tab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTabId:I

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;)V

    return-void
.end method

.method public onTabDataLoaded(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$1300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$1400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->e(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->liteThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->setThumbnailImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;)V

    return-void
.end method

.method public onTabIconLoaded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$tab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTabId:I

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->g(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;)V

    return-void
.end method

.method public onTabTitleLoaded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$tab:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$6;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTabId:I

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
