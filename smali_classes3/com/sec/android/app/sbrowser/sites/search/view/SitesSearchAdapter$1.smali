.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$1;->val$itemView:Landroid/view/View;

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->b(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;Landroid/view/View;Z)V

    return-void
.end method
