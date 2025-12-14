.class public final synthetic Lcom/sec/android/app/sbrowser/sites/savedpage/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/c;->a:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/c;->b:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/c;->a:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/c;->b:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->g(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
