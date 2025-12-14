.class Lcom/sec/android/app/sbrowser/sites/SitesSearch$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/SitesSearch;->showSearchView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$4;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "313"

    const-string v0, "3123"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$4;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->q(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    return-void
.end method
