.class public final synthetic Lcom/sec/android/app/sbrowser/sites/search/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/g;->a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/g;->a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->c(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Landroid/content/DialogInterface;)V

    return-void
.end method
