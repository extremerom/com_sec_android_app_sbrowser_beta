.class public final synthetic Lcom/sec/android/app/sbrowser/sites/search/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->b:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->c:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->b:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->c:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->e(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->b:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->c:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->b(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->b:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/e;->c:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->d(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
