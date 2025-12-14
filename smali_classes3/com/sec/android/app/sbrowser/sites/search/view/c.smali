.class public final synthetic Lcom/sec/android/app/sbrowser/sites/search/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/c;->a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/c;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/c;->a:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->f(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Ljava/lang/String;)V

    return-void
.end method
