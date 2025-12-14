.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->appendAncestor(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

.field final synthetic val$folderButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$2;->val$folderButton:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$2;->val$folderButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->onPathClick(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
