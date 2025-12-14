.class Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

.field final synthetic val$rowView:Landroid/view/View;

.field final synthetic val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->val$rowView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->val$rowView:Landroid/view/View;

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->d(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->val$rowView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-static {p1, v0, p2, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->c(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Landroid/view/View;ZLcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    return-void
.end method
