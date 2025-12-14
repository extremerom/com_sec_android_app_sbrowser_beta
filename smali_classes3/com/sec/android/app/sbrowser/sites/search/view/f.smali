.class public final synthetic Lcom/sec/android/app/sbrowser/sites/search/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/f;->a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/f;->b:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/f;->a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/f;->b:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
