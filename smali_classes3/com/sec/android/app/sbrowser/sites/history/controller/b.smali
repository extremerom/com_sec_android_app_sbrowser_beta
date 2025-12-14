.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/controller/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/b;->a:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/b;->b:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/b;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/b;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/b;->b:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/b;->a:Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/b;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/b;->d:J

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->b(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Ljava/lang/String;J)V

    return-void
.end method
